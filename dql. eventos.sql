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