-- triggers

use hocus_pocus;

-- 1.Trigger para actualizar el stock al agregar un nuevo producto

DELIMITER //
CREATE TRIGGER after_insert_product
AFTER INSERT ON productos
FOR EACH ROW
BEGIN
    INSERT INTO inventario (stock, id_producto) VALUES (0, NEW.id_producto);
END //
DELIMITER ;

-- 2. Trigger para registrar eliminaciones en la tabla log_clientes

CREATE TABLE log_clientes (
    id_log INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    nombres VARCHAR(100),
    apellidos VARCHAR(100),
    email VARCHAR(100),
    accion VARCHAR(10),
    fecha_log DATETIME,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);
DELIMITER //
CREATE TRIGGER after_delete_clientes
AFTER DELETE ON clientes
FOR EACH ROW
BEGIN
    INSERT INTO log_clientes (id_cliente, nombres, apellidos, email, accion, fecha_log)
    VALUES (OLD.id_cliente, OLD.nombres, OLD.apellidos, OLD.email, 'DELETE', NOW());
END //
DELIMITER ;

-- 3. Trigger para registrar inserciones en la tabla log_ventas:

CREATE TABLE log_ventas (
    id_log INT PRIMARY KEY AUTO_INCREMENT,
    id_venta INT,
    id_cliente INT,
    id_empleado INT,
    fecha_venta DATE,
    descuento DECIMAL(10, 2),
    total DECIMAL(10, 2),
    accion VARCHAR(10),
    fecha_log DATETIME,
    FOREIGN KEY (id_venta) REFERENCES ventas(id_venta)
);
DELIMITER //
CREATE TRIGGER after_insert_ventas
AFTER INSERT ON ventas
FOR EACH ROW
BEGIN
    INSERT INTO log_ventas (id_venta, id_cliente, id_empleado, fecha_venta, descuento, total, accion, fecha_log)
    VALUES (NEW.id_venta, NEW.id_cliente, NEW.id_empleado, NEW.fecha_venta, NEW.descuento, NEW.total, 'INSERT', NOW());
END //
DELIMITER ;

-- 5. Trigger para mantener el stock al realizar una venta.

DELIMITER //
CREATE TRIGGER after_insert_detalle_venta
AFTER INSERT ON detalles_ventas
FOR EACH ROW
BEGIN
    UPDATE inventario
    SET stock = stock - NEW.cantidad
    WHERE id_producto = NEW.id_producto;
END //
DELIMITER ;

 -- 7. Trigger para prevenir la inserción de un alquiler si el disfraz no está disponible.
 
 DELIMITER //
 
CREATE TRIGGER before_insert_alquiler
BEFORE INSERT ON alquileres
FOR EACH ROW
BEGIN
    DECLARE available_stock INT;
    SELECT stock INTO available_stock FROM inventario WHERE id_producto = (SELECT id_producto FROM disfraces WHERE id_disfraz = NEW.id_disfraz);
    IF available_stock < 1 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Stock insuficiente para el disfraz';
    END IF;
END //

DELIMITER ;

-- 9. Trigger para crear un registro en la tabla de devoluciones
DELIMITER //
CREATE TRIGGER after_insert_detalle_devolucion
AFTER INSERT ON detalles_devoluciones
FOR EACH ROW
BEGIN
    DECLARE existing_devolucion INT;
    SELECT id_devolucion INTO existing_devolucion FROM devoluciones WHERE id_venta = NEW.id_venta;
    IF existing_devolucion IS NULL THEN
        INSERT INTO devoluciones (id_venta, fecha_devolucion) VALUES (NEW.id_venta, NOW());
    END IF;
END //
DELIMITER ;

-- 11. Trigger para actualizar el estado del envío al crear una venta online

DELIMITER //
create trigger actualizar_estado_envio
after insert on ventas_online
for each row
begin
    insert into envios (id_venta_online, estado_envio) values (NEW.id_venta_online, 'pendiente');
end //

DELIMITER ;

-- 13. Trigger para calcular el descuento aplicado a una venta
DELIMITER //
create trigger calcular_descuento_venta
before insert on ventas
for each row
begin
    set NEW.total = NEW.total - (NEW.total * NEW.descuento / 100);
end //
DELIMITER ;

-- 15. Trigger para registrar cambios en el precio de productos.

DELIMITER //
create trigger registrar_cambio_precio
after update on productos
for each row
begin
    insert into cambios_precios (id_producto, precio_anterior, precio_nuevo, fecha_cambio)
    values (NEW.id_producto, OLD.precio, NEW.precio, now());
end //
DELIMITER ;

-- 17. Trigger para establecer el estado de la orden de compra
DELIMITER //
CREATE TRIGGER establecer_estado_orden_compra
BEFORE INSERT ON ordenes_compra
FOR EACH ROW
BEGIN
    SET NEW.estado = 'pendiente';
END //
DELIMITER ;

-- 19. Trigger para eliminar detalles de la devolución al eliminar una devolución

DELIMITER //
create trigger eliminar_detalles_devolucion
after delete on devoluciones
for each row
begin
    delete from detalles_devoluciones where id_devolucion = OLD.id_devolucion;
end //
DELIMITER ;

-- 20.  Trigger para asegurar que un cliente no tenga más de una dirección

DELIMITER //
create trigger limitar_direccion_cliente
before insert on direcciones
for each row
begin
    if exists (select 1 from direcciones where id_cliente = NEW.id_cliente) then
        signal sqlstate '45000' set message_text = 'Un cliente solo puede tener una dirección';
    end if;
end //
DELIMITER ;