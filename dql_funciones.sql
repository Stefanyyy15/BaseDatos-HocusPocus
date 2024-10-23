-- funciones

use hocus_pocus;

-- 1 Crear una función que calcule el total de ingresos por alquiler de disfraces en un período específico, considerando tanto el precio de alquiler como los depósitos.
DELIMITER //
create function calcular_ingresos_alquiler(
    fecha_inicio date,
    fecha_fin date
)
returns decimal(10,2)
deterministic
begin
    declare total_ingresos decimal(10,2);
    
    select coalesce(sum(a.total + a.deposito), 0) into total_ingresos
    from alquileres a
    where a.fecha_inicio between fecha_inicio and fecha_fin;
    
    return total_ingresos;
end //
DELIMITER ;

select calcular_ingresos_alquiler('2024-01-01', '2024-01-31') as ingresos_enero;

-- 3. Crear una función que calcule la rentabilidad de un producto específico, considerando costos de compra (desde detalles_ordenes_compra) y precios de venta.

DELIMITER //
create function precio_promedio_categoria(
    id_categoria_param int
)
returns decimal(10,2)
deterministic
begin
    declare promedio decimal(10,2);
    
    select coalesce(avg(precio), 0) into promedio
    from productos
    where id_categoria = id_categoria_param;
    
    return round(promedio, 2);
end //
DELIMITER ;

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

SELECT contar_clientes_registrados('2020-01-01', '2020-12-31') AS total_clientes;


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
    
    select coalesce(sum(descuento), 0) into total_descuento
    from ventas
    where fecha_venta between fecha_inicio and fecha_fin;
    
    return total_descuento;
end //
DELIMITER ;

SELECT calcular_descuento_total('2024-01-01', '2024-01-31') AS total_descuento_enero;


-- 9 Calcular el ingreso total por ventas online en un período determinado.

DELIMITER //
create function calcular_ingreso_ventas_online(
    fecha_inicio date,
    fecha_fin date
) 
returns decimal(10, 2)
deterministic
begin
    declare total_ingreso decimal(10, 2);
    
    select coalesce(sum(total), 0) into total_ingreso
    from ventas_online
    where fecha_venta between fecha_inicio and fecha_fin;
    
    return total_ingreso;
end //
DELIMITER ;

SELECT calcular_ingreso_ventas_online('2024-01-01', '2024-01-31') AS total_ingreso_enero;

-- 11. Calcular la rentabilidad total de un empleado basado en las ventas realizadas.

DELIMITER //
create function calcular_rentabilidad_empleado(
    id_empleado_param int
) 
returns decimal(10, 2)
deterministic
begin
    declare rentabilidad_total decimal(10, 2);
    
    select coalesce(sum(v.total - v.descuento), 0) into rentabilidad_total
    from ventas v
    where v.id_empleado = id_empleado_param;
    
    return rentabilidad_total;
end //
DELIMITER ;

select calcular_rentabilidad_empleado(1) as rentabilidad_empleado_1;

-- 13 Calcular el ingreso total por alquiler de disfraces en un período específico, considerando depósitos.

DELIMITER //
create function calcular_ingresos_alquiler_sin_depositos(
    fecha_inicio date,
    fecha_fin date
) 
returns decimal(10, 2)
deterministic
begin
    declare total_ingresos decimal(10, 2);
    
    select coalesce(sum(a.total), 0) into total_ingresos
    from alquileres a
    where a.fecha_inicio between fecha_inicio and fecha_fin;
    
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
    
    select coalesce(sum(da.cantidad), 0) into total_disfraces
    from detalles_alquileres da
    join alquileres a on da.id_alquiler = a.id_alquiler
    where a.id_cliente = id_cliente_param;
    
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

    select coalesce(sum(alquileres.total), 0) into total_ingresos
    from alquileres
    where alquileres.fecha_inicio between fecha_inicio and fecha_fin;

    select count(distinct date_format(a.fecha_inicio, '%Y-%m')) into total_meses
    from alquileres
    where alquileres.fecha_inicio between fecha_inicio and fecha_fin;

    set promedio_ingresos = if(total_meses > 0, total_ingresos / total_meses, 0);

    return promedio_ingresos;
end //
DELIMITER ;

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

    select coalesce(sum(ventas.descuento), 0) into total_descuentos
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