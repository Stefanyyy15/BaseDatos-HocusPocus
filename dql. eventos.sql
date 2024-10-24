-- eventos

use hocus_pocus;

-- 1. Actualizar el total de las ventas diariamente sumando los detalles_ventas (tabla ventas y detalles_ventas).

DELIMITER //

create event if not exists actualizar_totales_ventas_diario
on schedule every 1 day
do
begin
    update ventas
    join (
        select id_venta, sum(cantidad * precio_unitario) as total
        from detalles_ventas
        group by id_venta
    ) detalles_ventas on ventas.id_venta = detalles_ventas.id_venta
    set ventas.total = detalles_ventas.total;
end //

DELIMITER ;

-- 2. 

DELIMITER //

create event if not exists actualizar_totales_ventas_online_diario
on schedule every 1 day
do
begin
    update ventas_online
    set total = (
        select sum(detalles_venta_online.cantidad * detalles_venta_online.precio_unitario)
        from detalles_venta_online
        where detalles_venta_online.id_venta_online = ventas_online.id_venta_online
    );
end //

DELIMITER ;

-- 3. Cambiar estado de los envíos a "entregado" cuando se cumpla la fecha_entrega_estimada (tabla envios)

DELIMITER //

create event if not exists actualizar_estado_envios_entregados
on schedule every 1 day
do
begin
    update envios
    set estado = 'entregado'
    where fecha_entrega_estimada <= curdate() and estado <> 'entregado';
end //

DELIMITER ;

-- 5. Actualizar el estado de las órdenes de compra a "entregado" cuando se cumpla la fecha_entrega (tabla ordenes_compra).

DELIMITER //

create event if not exists actualizar_estado_ordenes_entrega
on schedule every 1 day
do
begin
    update ordenes_compra
    set estado = 'entregado'
    where fecha_entrega <= curdate() and estado <> 'entregado';
end //

DELIMITER ;

-- 7. Marcar las devoluciones pendientes después de 48 horas de la venta (tabla devoluciones).

DELIMITER //

create event if not exists marcar_devoluciones_pendientes
on schedule every 1 day
do
begin
    update devoluciones
    set estado = 'pendiente'
    where fecha_venta <= now() - interval 48 hour and estado <> 'pendiente';
end //

DELIMITER ;

-- 9. Verificar y actualizar tarjetas vencidas según fecha_expiracion (tabla cliente_tarjeta).

DELIMITER //

create event if not exists verificar_actualizar_tarjetas_vencidas
on schedule every 1 day
do
begin
    update cliente_tarjeta
    set estado = 'vencida'
    where fecha_expiracion < now() and estado <> 'vencida';
end //

DELIMITER ;

-- 11. Calcular el total de ventas por empleado mensualmente (tabla ventas).

DELIMITER //

create event if not exists calcular_total_ventas_por_empleado
on schedule every 1 month
do
begin
    insert into total_ventas_empleado (id_empleado, total_ventas, mes, anio)
    select 
        id_empleado, 
        sum(total_venta) as total_ventas,
        month(fecha_venta) as mes,
        year(fecha_venta) as anio
    from 
        ventas
    where 
        fecha_venta >= date_sub(curdate(), interval 1 month)
    group by 
        id_empleado;
end //

DELIMITER ;


-- 13. Marcar las promociones como finalizadas al llegar a su fecha_fin (tabla promociones).

DELIMITER //

create event if not exists marcar_promociones_finalizadas
on schedule every 1 day
do
begin
    if not exists (
        select * 
        from information_schema.COLUMNS 
        where TABLE_NAME = 'promociones' 
        and COLUMN_NAME = 'estado'
    ) then
        alter table promociones add column estado varchar(20) default 'activa';
    end if;
    update promociones
    set estado = 'finalizada'
    where fecha_fin <= curdate() and estado <> 'finalizada';
end //

DELIMITER ;

-- 15. Verificar alquileres que vencen en los próximos 3 días (tabla alquileres).

DELIMITER //

create event if not exists verificar_alquileres_vencidos
on schedule every 1 day
do
begin
    select *
    from alquileres
    where fecha_vencimiento between curdate() and date_add(curdate(), interval 3 day);
end //

DELIMITER ;

-- 17. Verificar órdenes de compra pendientes con más de 30 días (tabla ordenes_compra).

DELIMITER //

create event if not exists verificar_ordenes_compra_pendientes
on schedule every 1 day
do
begin
    select *
    from ordenes_compra
    where estado = 'pendiente' and fecha_creacion <= date_sub(curdate(), interval 30 day);
end //

DELIMITER ;

-- 19. Identificar productos sin movimiento en el último mes (tabla detalles_ventas).

DELIMITER //

create event if not exists identificar_productos_sin_movimiento
on schedule every 1 day
do
begin
    -- Identificar productos sin movimiento en el último mes
    select productos.id_producto, productos.nombre_producto
    from productos
    left join detalles_ventas on productos.id_producto = detalles_ventas.id_producto 
    where detalles_ventas.fecha_venta < Date_sub(curdate(), interval 1 month) or detalles_ventas.fecha_venta is null
    group by productos.id_producto, productos.nombre_producto;
end //

DELIMITER ;

-- Verificar y actualizar el estado de las promociones que han vencido según fecha_fin (tabla promociones).

DELIMITER //

CREATE EVENT ActualizarPromocionesVencidas
ON SCHEDULE EVERY 1 DAY 
DO
BEGIN
    UPDATE promociones
    SET nombre = 'vencida'
    WHERE fecha_fin < CURDATE() AND nombre != 'vencida';
END //

DELIMITER ;

SELECT * FROM promociones;

-- Calcular el stock restante después de cada venta (tabla inventario).

DELIMITER //

CREATE EVENT ActualizarStockVentas
ON SCHEDULE EVERY 1 DAY
DO
BEGIN
    UPDATE inventario i
    JOIN (
        SELECT id_producto, SUM(cantidad) AS total_vendido
        FROM detalles_ventas
        WHERE fecha_venta >= CURDATE() - INTERVAL 1 DAY
        GROUP BY id_producto
    ) AS ventas ON i.id_producto = ventas.id_producto
    SET i.stock = i.stock - ventas.total_vendido
    WHERE i.stock >= ventas.total_vendido;
END //

DELIMITER ;

--  Actualizar el stock de disfraces en inventario cuando se venzan los alquileres

DELIMITER //

CREATE EVENT ActualizarAlquileresVencidos
ON SCHEDULE EVERY 1 MONTH
DO
BEGIN
    UPDATE inventario
    SET stock = stock + (
        SELECT COUNT(*)
        FROM detalles_alquileres da
        WHERE da.id_alquiler IN (
            SELECT a.id_alquiler
            FROM alquileres a
            WHERE a.fecha_fin < CURDATE()
        ) AND da.id_disfraz = inventario.id_producto
    )
    WHERE id_producto IN (
        SELECT da.id_disfraz
        FROM detalles_alquileres da
        WHERE da.id_alquiler IN (
            SELECT a.id_alquiler
            FROM alquileres a
            WHERE a.fecha_fin < CURDATE()
        )
    );
END //

DELIMITER ;

-- Actualizar los precios de alquiler de disfraces en temporada alta (tabla disfraces).

DELIMITER //

CREATE EVENT ActualizarPreciosTemporadaAlta
ON SCHEDULE EVERY 1 MONTH
DO
BEGIN
    UPDATE disfraces
    SET precio_alquiler = precio_alquiler * 0.20
    WHERE id_disfraz IN (
        SELECT id_disfraz
        FROM disfraces
        WHERE '2024-09-20' <= CURDATE()
        AND '2024-10-31' >= CURDATE()
    );
END //

DELIMITER ;

-- Verificar stock menor a 10 unidades (tabla inventario).

DELIMITER //

CREATE EVENT IF NOT EXISTS verificar_stock_bajo
ON SCHEDULE EVERY 1 DAY
DO
BEGIN
    DECLARE Mensaje VARCHAR(255);
    IF EXISTS (SELECT * FROM inventario WHERE stock < 10) THEN
        SET Mensaje = 'Alerta: Hay productos con stock menor a 10 unidades.';
        SELECT Mensaje AS 'Mensaje de Alerta';
    END IF;
END //

DELIMITER ;

DELIMITER //

CREATE EVENT IF NOT EXISTS verificar_stock_bajo
ON SCHEDULE EVERY 1 MONTH
DO
BEGIN
    DECLARE Mensaje VARCHAR(255);
    IF EXISTS (SELECT * FROM inventario WHERE stock < 10) THEN
        SET Mensaje = 'Alerta: Hay productos con stock menor a 10 unidades.';
        SELECT Mensaje AS 'Mensaje de Alerta';
    END IF;
END //

DELIMITER ;

-- Actualizar el estado de los envíos a "en tránsito" un día después de fecha_envio (tabla envios).

DELIMITER //

CREATE EVENT IF NOT EXISTS actualizar_estado_envios
ON SCHEDULE EVERY 1 DAY
DO
BEGIN
    UPDATE envios
    SET estado_envio = 'en tránsito'
    WHERE estado_envio = 'pendiente'
      AND DATE(fecha_envio) = DATE_SUB(CURDATE(), INTERVAL 1 DAY);
END //

DELIMITER ;

-- Actualizar el total de detalles_ventas_online (tabla detalles_ventas_online).

DELIMITER //

CREATE EVENT IF NOT EXISTS actualizar_total_detalles_ventas_online
ON SCHEDULE EVERY 1 Month
DO
BEGIN
    UPDATE detalles_ventas_online d
    JOIN productos p ON d.id_producto = p.id_producto
    SET d.total = d.cantidad * p.precio;
END //

DELIMITER ;

-- Actualizar estado de ordenes de compra diaria a completado despues de una semana despues de la fecha orden (tabla ordenes_compra).

DELIMITER //

CREATE EVENT IF NOT EXISTS actualizar_estado_ordenes_compra
ON SCHEDULE EVERY 1 DAY
DO
BEGIN
    UPDATE ordenes_compra
    SET estado = 'completado'
    WHERE estado = 'entregado'  
      AND DATE(fecha_orden) = DATE_SUB(CURDATE(), INTERVAL 1 WEEK);
END //

DELIMITER ;

-- Calcular el monto total de transacciones diarias por método de pago (tabla transacciones).

DELIMITER //

CREATE EVENT IF NOT EXISTS calcular_montos_diarios_transacciones
ON SCHEDULE EVERY 1 DAY
DO
BEGIN
    DELETE FROM resumen_transacciones_diarias WHERE fecha = CURDATE() - INTERVAL 1 DAY;
    INSERT INTO resumen_transacciones_diarias (fecha, id_metodo_pago, monto_total)
    SELECT  CURDATE() AS fecha,
			id_metodo_pago,
			SUM(monto) AS monto_total
    FROM transacciones
    WHERE DATE(fecha_transaccion) = CURDATE() - INTERVAL 1 DAY
    GROUP BY id_metodo_pago;
END //

DELIMITER ;
