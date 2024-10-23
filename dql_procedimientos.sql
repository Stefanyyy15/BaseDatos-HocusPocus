use hocus_pocus;

-- 1. Insertar un nuevo producto en la tabla productos.

DELIMITER //

create procedure insertar_producto_nuevo(in nuevo_nombre varchar(100), in nueva_descripcion text, in nuevo_precio decimal(10, 2), in id_categoria int)
begin
	insert into productos(nombre, descripcion, precio, id_categoria) values
    (nuevo_nombre, nueva_descripcion, nuevo_precio, id_categoria);
end //

DELIMITER ;

call insertar_producto_nuevo("disfraz de oso", "un disfraz de marihuanoso", 25.00, 1);

select * from productos where productos.id_producto = 201;

-- 3. Eliminar un cliente de la tabla clientes junto con su dirección.

DELIMITER //

create procedure eliminar_cliente (in id_cliente_borrado int)
begin
    delete from direcciones 
    where id_cliente = id_cliente_borrado;

    delete from clientes 
    where id_cliente = id_cliente_borrado;
end //

DELIMITER ;

call eliminar_cliente(47);

-- 5. Calcular el total de ingresos generados por las ventas de un mes específico.

DELIMITER //

create procedure calcular_ingresos_por_mes (in mes int, out total_ventas decimal(10, 2))
begin
    select sum(total) into total_ventas
    from ventas
    where month(fecha_venta) = mes;
end //

DELIMITER ;

set @total = 0;
call calcular_ingresos_por_mes(10, @total);
select @total as total_ingresos;

-- 7. Registrar un nuevo alquiler de disfraz en la tabla alquileres.

DELIMITER //

create procedure insertar_nuevo_alquiler(
    in nuevo_id_cliente int,
    in nuevo_id_disfraz int,
    in fecha_inicial date,
    in fecha_fin date,
    in total decimal(10, 2),
    in deposito decimal(10, 2)
)
begin
    insert into alquileres (id_cliente, id_disfraz, fecha_inicio, fecha_fin, total, deposito)
    values (nuevo_id_cliente, nuevo_id_disfraz, fecha_inicial, fecha_fin, total, deposito);
end //

DELIMITER ;

call insertar_nuevo_alquiler(1, 2, '2024-10-01', '2024-10-05', 50.00, 20.00);

-- 9. Consultar las devoluciones realizadas en un período determinado.

DELIMITER //
create procedure consultar_devoluciones_especificas(in fecha_inicio date, in fecha_fin date, out cantidad_devoluciones int)
begin
	select count(*) into cantidad_devoluciones
    from devoluciones
    where fecha_devolucion between fecha_inicio and fecha_fin;
end //
DELIMITER ;

set @total_devoluciones = 0;
call consultar_devoluciones_especificas("2023-10-01", "2024-02-20", @total_devoluciones);
select @total_devoluciones as total_devoluciones;

-- 11.  Registrar un nuevo proveedor en la tabla proveedores.

DELIMITER //

create procedure registrar_nuevo_proveedor(
    in nuevo_nombre_empresa varchar(100),
    in nuevo_contacto varchar(100),
    in nuevo_email varchar(100),
    in nuevo_telefono varchar(100)
)
begin
    insert into proveedores (nombre_empresa, contacto, email, telefono)
    values (nuevo_nombre_empresa, nuevo_contacto, nuevo_email, nuevo_telefono);
end //

DELIMITER ;

call registrar_nuevo_proveedor("alex marin", "mia marin", "alex@marin.com", "3188524796");

-- 13. Registrar un nuevo cliente y su dirección en las tablas clientes y direcciones.

DELIMITER //

create procedure registrar_nuevo_cliente_con_direccion(
    in nuevo_cedula_cliente varchar(10),
    in nuevo_nombres varchar(100),
    in nuevo_apellidos varchar(100),
    in nuevo_email varchar(100),
    in nuevo_telefono varchar(100),
    in nueva_fecha_nacimiento date,
    in nuevo_tipo_via enum('carrera', 'calle', 'diagonal', 'transversal', 'circular'),
    in nueva_direccion varchar(100),
    in nuevas_indicaciones text,
    in nuevo_codigo_postal varchar(100),
    in nuevo_id_barrio int
)
begin
    declare nuevo_id_cliente int;

    -- Insertar el nuevo cliente
    insert into clientes (cedula, nombres, apellidos, email, telefono, fecha_nacimiento)
    values (nuevo_cedula_cliente, nuevo_nombres, nuevo_apellidos, nuevo_email, nuevo_telefono, nueva_fecha_nacimiento);

    -- Obtener el ID del cliente recién insertado
    set nuevo_id_cliente = Last_insert_id();

    -- Insertar la dirección del nuevo cliente
    insert into direcciones (id_cliente, tipo_via, direccion, indicaciones, codigo_postal, id_barrio)
    values (nuevo_id_cliente, nuevo_tipo_via, nueva_direccion, nuevas_indicaciones, nuevo_codigo_postal, nuevo_id_barrio);
end //

DELIMITER ;

call registrar_nuevo_cliente_con_direccion(
    '1234567890', 
    'Juan', 
    'Pérez', 
    'juan.perez@example.com', 
    '3216549870', 
    '1990-01-01', 
    'calle', 
    '123 Main St', 
    'Cerca del parque', 
    '110111', 
    1
);

-- 15. Consultar la cantidad de maquillajes disponibles por marca.

DELIMITER //

create procedure consultar_maquillaje(in marca varchar(100), out total_maquillaje int)
begin
	select count(*) into total_maquillaje
    from maquillajes
    where maquillajes.marca = marca;
end //
DELIMITER ;

set @total_maquillajes = 0;
call consultar_maquillaje("MAC", @total_maquillajes);
select  @total_maquillajes as total;

-- 17. Eliminar un accesorio de la tabla accesorios sin afectar al producto.

DELIMITER //

create procedure eliminar_accesorio(
    in id_accesorio_borrado int
)
begin
    delete from accesorios
    where id_accesorio = id_accesorio_borrado;
end //

DELIMITER ;

call eliminar_accesorio(10);

-- 19. Registrar una nueva transacción en la tabla transacciones vinculada a una venta.

DELIMITER //

create procedure registrar_transaccion(
    in id_venta int,
    in id_metodo_pago int,
    in monto decimal(10, 2),
    in fecha_transaccion date
)
begin
    insert into transacciones (id_venta, id_metodo_pago, monto, fecha_transaccion)
    values (id_venta, id_metodo_pago, monto, fecha_transaccion);
end //

DELIMITER ;

call registrar_transaccion(1, 2, 100.00, '2024-10-23');

