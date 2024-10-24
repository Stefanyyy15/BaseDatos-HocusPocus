use hocus_pocus;

-- 1 Crear una función que calcule el total de ingresos por alquiler de disfraces en un período específico.
DELIMITER //
create function calcular_ingresos_alquiler(
    fecha_inicio date,
    fecha_fin date
)
returns decimal(10,2)
deterministic
begin
    declare total_ingresos decimal(10,2);
    
    select sum(a.total + a.deposito) into total_ingresos
    from alquileres a
    where a.fecha_inicio between fecha_inicio and fecha_fin;
    
    return total_ingresos;
end //
DELIMITER ;

select calcular_ingresos_alquiler('2024-01-01', '2024-01-31') as ingresos_enero;

-- 3. Crear una función que calcule la rentabilidad de un producto específico.
DELIMITER //
create function precio_promedio_categoria(
    id_categoria_param int
)
returns decimal(10,2)
deterministic
begin
    declare promedio decimal(10,2);
    
    select avg(precio) into promedio
    from productos
    where id_categoria = id_categoria_param;
    
    return round(promedio, 2);
end //
dELIMITER ;

select 
    nombre, 
    precio_promedio_categoria(id_categoria) as precio_promedio
from categorias_productos;

-- 5. Contar el número de clientes registrados en un período específico.
DELIMITER //
create function contar_clientes_registrados(
    fecha_inicio date,
    fecha_fin date
) 
returns int
deterministic
begin
    declare total_clientes int;
    
    select count(*) into total_clientes
    from clientes
    where fecha_nacimiento between fecha_inicio and fecha_fin;
    
    return total_clientes;
end //
DELIMITER ;

select contar_clientes_registrados('2020-01-01', '2020-12-31') as total_clientes;

-- 7. Calcular el descuento total aplicado en un período específico.
DELIMITER //
create function calcular_descuento_total(
    fecha_inicio date,
    fecha_fin date
) 
returns decimal(10, 2)
deterministic
begin
    declare total_descuento decimal(10, 2);
    
    select sum(descuento) into total_descuento
    from ventas
    where fecha_venta between fecha_inicio and fecha_fin;
    
    return total_descuento;
end //
DELIMITER ;

select calcular_descuento_total('2024-01-01', '2024-01-31') as total_descuento_enero;

-- 9. Calcular el ingreso total por ventas online en un período determinado.
DELIMITER //
create function calcular_ingreso_ventas_online(
    fecha_inicio date,
    fecha_fin date
) 
returns decimal(10, 2)
deterministic
begin
    declare total_ingreso decimal(10, 2);
    
    select sum(total) into total_ingreso
    from ventas_online
    where fecha_venta between fecha_inicio and fecha_fin;
    
    return total_ingreso;
end //
DELIMITER ;

select calcular_ingreso_ventas_online('2024-01-01', '2024-01-31') as total_ingreso_enero;

-- 11. Calcular la rentabilidad total de un empleado basado en las ventas realizadas.
DELIMITER //
create function calcular_rentabilidad_empleado(
    id_empleado_param int
) 
returns decimal(10, 2)
deterministic
begin
    declare rentabilidad_total decimal(10, 2);
    
    select sum(ventas.total - ventas.descuento) into rentabilidad_total
    from ventas
    where ventas.id_empleado = id_empleado_param;
    
    return rentabilidad_total;
end //
DELIMITER ;

select calcular_rentabilidad_empleado(1) as rentabilidad_empleado_1;

-- 13. Calcular el ingreso total por alquiler de disfraces en un período específico.
DELIMITER //
create function calcular_ingresos_alquiler_sin_depositos(
    fecha_inicio date,
    fecha_fin date
) 
returns decimal(10, 2)
deterministic
begin
    declare total_ingresos decimal(10, 2);
    
    select sum(alquileres.total) into total_ingresos
    from alquileres
    where alquileres.fecha_inicio between fecha_inicio and fecha_fin;
    
    return total_ingresos;
end //
DELIMITER ;

select calcular_ingresos_alquiler_sin_depositos('2024-01-01', '2024-01-31') as ingresos_alquiler_enero;

-- 15. Contar la cantidad de disfraces alquilados por un cliente específico.
DELIMITER //
create function contar_disfraces_alquilados_por_cliente(
    id_cliente_param int
) 
returns int
deterministic
begin
    declare total_disfraces int;
    
    select sum(detalles_alquileres.cantidad) into total_disfraces
    from detalles_alquileres
    join alquileres on detalles_alquileres.id_alquiler = alquileres.id_alquiler
    where alquileres.id_cliente = id_cliente_param;
    
    return total_disfraces;
end //
DELIMITER ;

select contar_disfraces_alquilados_por_cliente(1) as total_disfraces_cliente_1;

-- 17. Obtener el promedio de ingresos por alquiler de disfraces por mes en un período específico.
DELIMITER //
create function promedio_ingresos_alquiler_por_mes(
    fecha_inicio date,
    fecha_fin date
) 
returns decimal(10, 2)
deterministic
begin
    declare promedio_ingresos decimal(10, 2);
    declare total_ingresos decimal(10, 2);
    declare total_meses int;

    select sum(alquileres.total) into total_ingresos
    from alquileres
    where alquileres.fecha_inicio between fecha_inicio and fecha_fin;

    select count(distinct date_format(alquileres.fecha_inicio, '%Y-%m')) into total_meses
    from alquileres
    where alquileres.fecha_inicio between fecha_inicio and fecha_fin;

    set promedio_ingresos = if(total_meses > 0, total_ingresos / total_meses, 0);

    return promedio_ingresos;
end //
DELIMITER;

select promedio_ingresos_alquiler_por_mes('2024-01-01', '2024-12-31') as promedio_ingresos_anual;

-- 19. Calcular el promedio de descuentos aplicados en las ventas durante un período específico.
DELIMITER //
create function promedio_descuentos_ventas(
    fecha_inicio date,
    fecha_fin date
) 
returns decimal(10, 2)
deterministic
begin
    declare promedio_descuento decimal(10, 2);
    declare total_descuentos decimal(10, 2);
    declare total_ventas int;

    select sum(ventas.descuento) into total_descuentos
    from ventas
    where ventas.fecha_venta between fecha_inicio and fecha_fin;

    select count(*) into total_ventas
    from ventas
    where ventas.fecha_venta between fecha_inicio and fecha_fin;

    set promedio_descuento = if(total_ventas > 0, total_descuentos / total_ventas, 0);

    return promedio_descuento;
end //
DELIMITER ;

select promedio_descuentos_ventas('2024-01-01', '2024-01-31') as promedio_descuento_enero;

use hocus_pocus;

-- Crear una función que determine el stock mínimo requerido para cada producto

DELIMITER //

CREATE FUNCTION ObtenerStockMinimo(Ingreso_Id_Producto INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE StockMinimo INT;
    SELECT AVG(dv.cantidad) * 2 INTO StockMinimo
    FROM detalles_ventas dv
    JOIN ventas v ON v.id_venta = dv.id_venta
    WHERE dv.id_producto = Ingreso_Id_Producto;
    IF StockMinimo IS NULL THEN
        SET StockMinimo = 0;
    END IF;
    RETURN StockMinimo;
END //

DELIMITER ;

SELECT ObtenerStockMinimo(55) AS StockMinimoProducto;

-- Calcular el total de ventas realizadas en un período específico.

DELIMITER //

CREATE FUNCTION CalcularTotalVentas(fecha_inicio DATE, fecha_fin DATE)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE total_ventas DECIMAL(10, 2);
    SELECT SUM(total) INTO total_ventas
    FROM ventas
    WHERE fecha_venta BETWEEN fecha_inicio AND fecha_fin;
    IF total_ventas IS NULL THEN
        SET total_ventas = 0;
    END IF;
    RETURN total_ventas;
END //

DELIMITER ;

SELECT CalcularTotalVentas('2024-01-01', '2024-12-31') AS TotalVentas;

-- Obtener el stock total de un producto específico.

DELIMITER //

CREATE FUNCTION ObtenerStockTotal(ingresp_id_producto INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total_stock INT;
    SELECT SUM(stock) INTO total_stock
    FROM inventario
    WHERE id_producto = ingresp_id_producto;
    IF total_stock IS NULL THEN
        SET total_stock = 0;
    END IF;
    RETURN total_stock;
END //

DELIMITER ;

SELECT ObtenerStockTotal(1) AS StockTotal;

-- Obtener el total de alquileres realizados en un período específico.

DELIMITER //

CREATE FUNCTION ObtenerTotalAlquileres(fecha_inicio DATE, fecha_fin DATE)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE total_alquileres DECIMAL(10, 2);
    SELECT SUM(total) INTO total_alquileres
    FROM alquileres
    WHERE fecha_inicio BETWEEN fecha_inicio AND fecha_fin;
    IF total_alquileres IS NULL THEN
        SET total_alquileres = 0;
    END IF;
    RETURN total_alquileres;
END //

DELIMITER ;

SELECT ObtenerTotalAlquileres('2024-01-01', '2024-12-31') AS TotalAlquileres;

-- Contar la cantidad de productos en promoción caducada.

DELIMITER //

CREATE FUNCTION ContarProductosEnPromocionActiva()
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE cantidad_productos INT;
    SELECT COUNT(p.id_producto) INTO cantidad_productos
    FROM productos p
    JOIN productos_promocion pp ON pp.id_producto = p.id_producto
    JOIN promociones pr ON pp.id_promocion = pr.id_promocion
    WHERE CURDATE() NOT BETWEEN pr.fecha_inicio AND pr.fecha_fin;
    RETURN cantidad_productos;
END //

DELIMITER ;

SELECT ContarProductosEnPromocionActiva() AS CantidadProductosEnPromocion;

-- Obtener el total de devoluciones registradas en un período específico.

DELIMITER //

CREATE FUNCTION ObtenerTotalDevoluciones(fecha_inicio DATE, fecha_fin DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total_devoluciones INT;

    SELECT COUNT(id_devolucion) INTO total_devoluciones
    FROM devoluciones
    WHERE fecha_devolucion BETWEEN fecha_inicio AND fecha_fin;

    RETURN total_devoluciones;
END //

DELIMITER ;

SELECT ObtenerTotalDevoluciones('2024-01-01', '2024-10-23') AS TotalDevoluciones;

-- Calcular el total de ingresos por ventas de productos en un período específico.

DELIMITER //

CREATE FUNCTION ObtenerTotalIngresosVentas(fecha_inicio DATE, fecha_fin DATE)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total_ingresos DECIMAL(10,2);
    SELECT SUM(total) INTO total_ingresos
    FROM ventas
    WHERE fecha_venta BETWEEN fecha_inicio AND fecha_fin;
    IF total_ingresos IS NULL THEN
        SET total_ingresos = 0;
    END IF;
    RETURN total_ingresos;
END //

DELIMITER ;

SELECT ObtenerTotalIngresosVentas('2024-01-01', '2024-10-23') AS TotalIngresos;

-- Calcular el monto total de las transacciones realizadas por método de pago específico en un período determinado.

DELIMITER //

CREATE FUNCTION ObtenerTotalTransaccionesPorMetodo(Ingreso_metodo_pago VARCHAR(50), fecha_inicio DATE, fecha_fin DATE)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total_transacciones DECIMAL(10,2);
    SELECT SUM(monto) INTO total_transacciones
    FROM transacciones t
    JOIN metodos_pago m ON m.id_metodo_pago = t.id_metodo_pago
    WHERE m.nombre = Ingreso_metodo_pago
      AND fecha_transaccion BETWEEN fecha_inicio AND fecha_fin;
    IF total_transacciones IS NULL THEN
        SET total_transacciones = 0;
    END IF;
    RETURN total_transacciones;
END //

DELIMITER ;

SELECT ObtenerTotalTransaccionesPorMetodo('tarjeta', '2024-01-01', '2024-10-23') AS TotalTransacciones;

-- Contar la cantidad de empleados de rol 'cajero' en la tienda.

DELIMITER //

CREATE FUNCTION ContarEmpleadosActivos()
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE cantidad_empleados INT;
    SELECT COUNT(*) INTO cantidad_empleados
    FROM empleados
    WHERE rol = 'cajero';
    RETURN cantidad_empleados;
END //

DELIMITER ;

SELECT ContarEmpleadosActivos() AS TotalCajeros;

-- Obtener el total de productos por categoria Escpecifica

DELIMITER //

CREATE FUNCTION TotalProductosPorCategoria(Ingreso_categoria VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total_productos INT;
    SELECT COUNT(p.id_producto) INTO total_productos
    FROM productos p
    JOIN categorias_productos c ON p.id_categoria = c.id_categoria
    WHERE c.nombre = Ingreso_categoria;
    IF total_productos IS NULL THEN
        SET total_productos = 0;
    END IF;
    RETURN total_productos;
END //

DELIMITER ;

SELECT TotalProductosPorCategoria('decoraciones') AS TotalProductosPorCategoria;
