-- consultas

use hocus_pocus;

-- 1. Consulta el stock actual de cada producto en el inventario.

select productos.nombre, inventario.stock
from
	productos
join
	inventario on inventario.id_producto = productos.id_producto;
    
-- 3. Listar los cinco productos más vendidos en un mes específico y su cantidad vendida.    
    
select 
	productos.nombre, 
    SUM(detalles_ventas.cantidad) AS total_vendido
from
	detalles_ventas
join
	productos on productos.id_producto = detalles_ventas.id_producto
join
	ventas on ventas.id_venta = detalles_ventas.id_venta
where
	month(ventas.fecha_venta) = 5 and year(ventas.fecha_venta) = 2024
group by nombre
order by total_vendido
desc;

-- 5. Consultar el promedio de salario de los empleados agrupados por rol y ordenados de mayor a menor.

select 
	empleados.rol as rol,
    avg(empleados.salario) as salario_empleados
from
	empleados
group by rol;

-- 7.  Listar todos los productos que tienen un precio de alquiler mayor al promedio.

select
	productos.nombre as nombre,
    disfraces.precio_alquiler
from
	disfraces
join
	productos on productos.id_producto = disfraces.id_producto
where
	disfraces.precio_alquiler > (select avg(disfraces.precio_alquiler) from disfraces);
    
-- 9. Consultar el inventario de disfraces, mostrando el nombre y la cantidad disponible, agrupados por subcategoría.

select
	subcategorias_disfraces_accesorios.nombre,
	productos.nombre,
    inventario.stock
from
	productos
join
	inventario on inventario.id_producto = productos.id_producto
join
	categorias_productos on categorias_productos.id_categoria = productos.id_categoria
join
	disfraces on disfraces.id_producto = productos.id_producto
join
	subcategorias_disfraces_accesorios on subcategorias_disfraces_accesorios.id_subcategoria = disfraces.id_subcategoria;
    
-- 11. Listar todos los clientes que han realizado al menos dos compras y el total gastado.

select
	clientes.nombres,
    count(ventas.id_venta) as total_compras,
    sum(ventas.total) as total_gastado
from
	ventas
join
	clientes on clientes.id_cliente = ventas.id_cliente
group by 
	clientes.nombres
having
	count(ventas.id_venta) >= 2;
    
-- 13. Obtener el total de alquileres realizados por cada cliente y su promedio de gasto.

select 
	clientes.nombres,
    count(alquileres.id_alquiler) as total_alquileres,
    avg(alquileres.total) as promedio_gastado
from
	clientes
join
	alquileres on alquileres.id_cliente = clientes.id_cliente
group by
	clientes.nombres;

-- 15. Calcular el total de ingresos por método de pago, desglosado por mes.

SELECT
    metodos_pago.nombre as metodo_pago,
    month(transacciones.fecha_transaccion) as mes,
    year(transacciones.fecha_transaccion) as año,
    sum(transacciones.monto) as total_ingresos
from
    transacciones
join
    ventas on ventas.id_venta = transacciones.id_venta
join
    metodos_pago on metodos_pago.id_metodo_pago = transacciones.id_metodo_pago
group by
    metodo_pago, mes, año
order by
    año, mes, metodo_pago;
    
-- 17. Obtener el detalle de ventas de un producto específico en un rango de fechas.

SELECT
    productos.nombre AS producto,
    productos.precio AS precio_producto,
    detalles_ventas.precio_unitario,
    detalles_ventas.cantidad,
    ventas.total,
    ventas.descuento,
    empleados.nombres AS nombre_empleado,
    ventas.fecha_venta
FROM
    detalles_ventas
JOIN
    productos ON productos.id_producto = detalles_ventas.id_producto
JOIN
    ventas ON ventas.id_venta = detalles_ventas.id_venta
JOIN
    empleados ON empleados.id_empleado = ventas.id_empleado
WHERE
    productos.id_producto = 168
    AND ventas.fecha_venta BETWEEN '2023-01-01' AND '2023-12-31';
    
-- 19. Listar las decoraciones disponibles por tipo y su cantidad en inventario.

select 
	productos.nombre,
    tipos_decoracion.nombre,
    inventario.stock
from
	productos
join
	decoraciones on decoraciones.id_producto = productos.id_producto
join
	tipos_decoracion on tipos_decoracion.id_tipos_decoracion = decoraciones.id_tipos_decoracion
join 
	inventario on inventario.id_producto = productos.id_producto;
    
-- 21. Consultar los clientes que han alquilado disfraces en más de una ocasión.

select 
	clientes.nombres,
    count(alquileres.id_alquiler) as veces_alquiladas
from
	alquileres
join
	clientes on clientes.id_cliente = alquileres.id_cliente
group by
	clientes.id_cliente, clientes.nombres
having
	count(alquileres.id_alquiler) > 1;
    
-- 23. Listar las transacciones realizadas por cada método de pago en un rango de fechas.

select
    metodos_pago.nombre as metodo_pago,
    count(transacciones.id_transaccion) as transacciones,
    sum(transacciones.monto) as total_monto
from
    transacciones
join
    metodos_pago on metodos_pago.id_metodo_pago = transacciones.id_metodo_pago
where
    transacciones.fecha_transaccion between '2023-01-01' and '2023-12-31'
group by
    metodos_pago.id_metodo_pago, metodos_pago.nombre
order by
    transacciones desc;
    
-- 25. Obtener la cantidad de productos en inventario por subcategoría y su precio promedio.

select
    subcategorias_disfraces_accesorios.nombre as subcategoria,
    avg(productos.precio) as precio_promedio,
    sum(inventario.stock) as total_stock
from
    productos
join
	disfraces on disfraces.id_producto = productos.id_producto
join
    subcategorias_disfraces_accesorios on subcategorias_disfraces_accesorios.id_subcategoria = disfraces.id_subcategoria
join
    inventario on inventario.id_producto = productos.id_producto
group by
    subcategorias_disfraces_accesorios.nombre
order by
    subcategorias_disfraces_accesorios.nombre;
    
-- 27. Calcular el total de descuentos aplicados en las ventas online por mes.

select
    year(fecha_venta) as año,
    month(fecha_venta) as mes,
    Sum(descuento) as total_descuentos
from
    ventas_online
group by
    año, mes
order by
    año, mes;

-- 29. Obtener la suma total de los depósitos de alquileres realizados por mes.

select
	sum(alquileres.deposito) as total_depositos
from
	alquileres
where
	month(alquileres.fecha_inicio) = 5 and year(alquileres.fecha_fin) = 2024;
	
-- 31. Consultar los productos más rentables en términos de margen de beneficio.

select
    productos.nombre,
    sum(detalles_ventas.cantidad * (detalles_ventas.precio_unitario - productos.precio)) as margen_beneficio
from
    detalles_ventas
join
    productos on productos.id_producto = detalles_ventas.id_producto
join
    ventas on ventas.id_venta = detalles_ventas.id_venta
group by
    productos.nombre
order by
    margen_beneficio desc
limit 10;

-- 33. Listar los disfraces disponibles para alquiler, organizados por tamaño y género.

select
    disfraces.talla,
    disfraces.genero,
    productos.nombre as nombre_disfraz,
    productos.precio as precio_alquiler
from
    disfraces
join
    productos on productos.id_producto = disfraces.id_producto
where
    productos.id_producto is not null
order by
    disfraces.talla,
    disfraces.genero;
    
-- 35. Consultar las órdenes de compra entregadas y su fecha de entrega real.

select
    ordenes_compra.id_orden_compra,
    ordenes_compra.fecha_orden,
    ordenes_compra.estado,
    detalles_ordenes_compra.fecha_entrega,
    proveedores.nombre_empresa as proveedor
from
    ordenes_compra
join
    proveedores on ordenes_compra.id_proveedor = proveedores.id_proveedor
join
    detalles_ordenes_compra on ordenes_compra.id_orden_compra = detalles_ordenes_compra.id_orden_compra
where
    ordenes_compra.estado = 'entregado';

-- 37. Obtener el total de alquileres realizados en el último año, desglosados por mes.

select
    month(alquileres.fecha_inicio) as mes,
    count(alquileres.id_alquiler) as total_alquileres
from
    alquileres
where
    year(alquileres.fecha_inicio) = 2024
group by
    month(alquileres.fecha_inicio)
order by
    mes;

-- 39. Obtener la lista de clientes que han realizado compras en línea y su monto total.

select
    usuarios.correo as usuario,
    count(ventas_online.id_venta_online) as total_compras,
    sum(ventas_online.total) as total_gastado
from
    usuarios
join
    ventas_online on ventas_online.id_usuario = usuarios.id_usuario
group by
    usuarios.correo;

-- 41. Obtener un informe de las ventas por barrio y su total en un mes específico.

select
    barrios.nombre as barrio,
    count(ventas.id_venta) as total_ventas,
    sum(ventas.total) as total_ingresos
from
    ventas
join
    clientes on clientes.id_cliente = ventas.id_cliente
join
    direcciones on direcciones.id_cliente = clientes.id_cliente
join
    barrios on barrios.id_barrio = direcciones.id_barrio
where
    month(ventas.fecha_venta) = 4 and year(ventas.fecha_venta) = 2024
group by
    barrios.nombre;
    
-- 43. Obtener la cantidad de productos vendidos en un rango de fechas, agrupados por categoría.

select
    count(detalles_ventas.id_detalles_ventas) as total_productos_vendidos,
    categorias_productos.nombre as categoria
from
    detalles_ventas
join
    ventas on ventas.id_venta = detalles_ventas.id_venta
join
    productos on productos.id_producto = detalles_ventas.id_producto
join
    categorias_productos on categorias_productos.id_categoria = productos.id_categoria
where
    ventas.fecha_venta between '2023-01-01' and '2023-12-31'
group by
    categorias_productos.nombre;
    
-- 45. Obtener el número ventas totales por cada empleado.

select
	empleados.nombres,
    count(ventas.id_venta) as total_ventas
from
	empleados
join
	ventas on ventas.id_empleado = empleados.id_empleado
group by empleados.nombres;

-- 47. Consultar los productos mas populares basado en la cantidad de ventas.

select
    productos.nombre,
    sum(detalles_ventas.cantidad) as total_vendido
from
    detalles_ventas
join
    ventas on detalles_ventas.id_venta = ventas.id_venta
join
    productos on detalles_ventas.id_producto = productos.id_producto
where
    ventas.fecha_venta between '2023-01-01' and '2023-12-31'
Group By
    productos.nombre
Order By
    total_vendido Desc
Limit 1000;

-- 49. Listar los productos que han tenido el mayor incremento en ventas respecto al año anterior.

select
    productos.nombre,
    sum(detalles_ventas.cantidad) as total_vendido,
    year(ventas.fecha_venta) as año
from
    productos
join
    detalles_ventas on productos.id_producto = detalles_ventas.id_producto
join
    ventas on detalles_ventas.id_venta = ventas.id_venta
where
    year(ventas.fecha_venta) in (2023, 2024)
group by
    productos.nombre, año
order by
    año, total_vendido desc;
    
-- 51. Listar los clientes que han alquilado disfraces en el último mes.

select
    clientes.nombres,
    clientes.apellidos
from
    clientes
join
    alquileres on clientes.id_cliente = alquileres.id_cliente
where
    alquileres.fecha_inicio >= date_sub(curdate(), interval 1 month);
    
-- 53. Consultar los empleados que han manejado el mayor número de transacciones.

select 
	empleados.nombres,
	count(transacciones.id_transaccion) as total_transacciones
from
	empleados
join
	ventas on ventas.id_empleado = empleados.id_empleado
join
	transacciones on transacciones.id_venta = ventas.id_venta
group by empleados.nombres;    

-- 55. Listar todos los métodos de pago utilizados en ventas online y su frecuencia.	
	
select
    metodos_pago.nombre as metodo_pago,
    count(*) as frecuencia
from
    transacciones
join
    ventas_online on transacciones.id_venta = ventas_online.id_venta_online
join
    metodos_pago on transacciones.id_metodo_pago = metodos_pago.id_metodo_pago
group by
    metodos_pago.nombre;
    
-- 57. Obtener un informe de los productos que no tienen stock y su categoría.

select
    productos.nombre as producto,
    categorias_productos.nombre as categoria
from
    productos
join
    categorias_productos on productos.id_categoria = categorias_productos.id_categoria
join
    inventario on productos.id_producto = inventario.id_producto
where
    inventario.stock = 0;

-- 59. Listar las decoraciones que se han vendido junto con el nombre de los productos.

select
    productos.nombre,
    decoraciones.id_decoracion,
    decoraciones.tamaño,
    decoraciones.medida
from
    detalles_ventas
join
    productos on detalles_ventas.id_producto = productos.id_producto
join
    decoraciones on decoraciones.id_producto = productos.id_producto;
    
-- 61. Ordenes de compra que han llegado tarde

select
    ordenes_compra.id_orden_compra,
    proveedores.nombre_empresa,
    ordenes_compra.fecha_orden,
    detalles_ordenes_compra.fecha_entrega as fecha_entrega_real,
    datediff(detalles_ordenes_compra.fecha_entrega, ordenes_compra.fecha_orden) as dias_tarde
from
    ordenes_compra
join
    proveedores on ordenes_compra.id_proveedor = proveedores.id_proveedor
join
    detalles_ordenes_compra on ordenes_compra.id_orden_compra = detalles_ordenes_compra.id_orden_compra
where
    detalles_ordenes_compra.fecha_entrega > ordenes_compra.fecha_orden;

-- 63. 	Listar las devoluciones realizadas y su cantidad
    
select
    devoluciones.id_devolucion,
    devoluciones.fecha_devolucion,
    detalles_devoluciones.id_producto,
    productos.nombre,
    detalles_devoluciones.cantidad
from
    devoluciones
join
    detalles_devoluciones on devoluciones.id_devolucion = detalles_devoluciones.id_devolucion
join
    productos on detalles_devoluciones.id_producto = productos.id_producto;
    
-- 65. alquileres devueltos tarde

select
    alquileres.id_alquiler,
    clientes.nombres,
    clientes.apellidos,
    disfraces.id_disfraz,
    disfraces.talla,
    alquileres.fecha_inicio,
    alquileres.fecha_fin,
    alquileres.total,
    alquileres.deposito
from
    alquileres
join
    clientes on alquileres.id_cliente = clientes.id_cliente
join
    disfraces on alquileres.id_disfraz = disfraces.id_disfraz
where
    alquileres.fecha_fin < curdate() and
    alquileres.fecha_fin < alquileres.fecha_inicio;
    
-- 67. Consultar los usuarios que han realizado la mayor cantidad de compras en línea.

select
    usuarios.correo,
    Count(ventas_online.id_venta_online) As total_compras
from
    usuarios
join
    ventas_online On usuarios.id_usuario = ventas_online.id_usuario
group by
    usuarios.id_usuario
order by
    total_compras desc;

-- 69. Listar las promociones que no se han utilizado

select
    promociones.nombre,
    promociones.fecha_fin
from
    promociones
left join
    productos_promocion on promociones.id_promocion = productos_promocion.id_promocion
where
    productos_promocion.id_producto is null
    and promociones.fecha_fin > curdate();
    
-- 71. Consultar los tipos de maquillaje disponibles y su cantidad en inventario.

select
    tipos_maquillaje.nombre as tipo_maquillaje,
    sum(inventario.stock) as cantidad_disponible
from
    maquillajes
join
    tipos_maquillaje on maquillajes.id_tipo_maquillaje = tipos_maquillaje.id_tipo_maquillaje
join
    inventario on maquillajes.id_producto = inventario.id_producto
group by
    tipos_maquillaje.nombre;

-- 73. Listar los productos que han tenido el mayor descuento aplicado.

select
    productos.nombre as producto,
    max(ventas.descuento) as mayor_descuento
from
    detalles_ventas
join
    ventas on detalles_ventas.id_venta = ventas.id_venta
join
    productos on detalles_ventas.id_producto = productos.id_producto
group by
    productos.nombre
order by
    mayor_descuento desc;
    
-- 75. Obtener un resumen de las compras a proveedores por tipo de producto.

select
    proveedores.nombre_empresa,
    categorias_productos.nombre as tipo_producto,
    sum(detalles_ordenes_compra.cantidad) as total_cantidad,
    sum(detalles_ordenes_compra.precio_unitario * detalles_ordenes_compra.cantidad) as total_gasto
from
    detalles_ordenes_compra
join
    ordenes_compra on detalles_ordenes_compra.id_orden_compra = ordenes_compra.id_orden_compra
join
    productos on detalles_ordenes_compra.id_producto = productos.id_producto
join
    categorias_productos on productos.id_categoria = categorias_productos.id_categoria
join
    proveedores on ordenes_compra.id_proveedor = proveedores.id_proveedor
group by
    proveedores.nombre_empresa, categorias_productos.nombre;
    
-- 77. promedio de alquileres por cliente en una fecha determinada

with alquileres_por_cliente as (
    select
        clientes.nombres,
        count(alquileres.id_alquiler) as total_alquileres
    from
        clientes
    left join
        alquileres on clientes.id_cliente = alquileres.id_cliente
    where
        alquileres.fecha_inicio between '2023-01-01' and '2023-12-31'
    group by
        clientes.id_cliente
)

select
    nombres,
    total_alquileres,
    avg(total_alquileres) over () as promedio_alquileres
from
    alquileres_por_cliente;

    
-- 79. Consultar los detalles de las ventas realizadas por un empleado específico.

SELECT
    empleados.nombres AS empleado,
    ventas.id_venta,
    ventas.fecha_venta,
    detalles_ventas.cantidad,
    detalles_ventas.precio_unitario,
    (detalles_ventas.cantidad * detalles_ventas.precio_unitario) AS total_venta
FROM
    ventas
JOIN
    empleados ON ventas.id_empleado = empleados.id_empleado
JOIN
    detalles_ventas ON ventas.id_venta = detalles_ventas.id_venta
WHERE
    empleados.id_empleado = 5;


use hocus_pocus;

-- 81. Listar los empleados con el menor rendimiento en ventas.

select 
	empleados.nombres,
    count(ventas.id_venta) as ventas
from
	empleados
join
	ventas on ventas.id_empleado = empleados.id_empleado
group by
	empleados.nombres
order by 
    ventas asc
limit 5;

-- 83.  Obtener un análisis de las decoraciones más populares según la cantidad vendida, junto con su tipo y el total de ingresos generados.

select
	productos.nombre,
    tipos_decoracion.nombre,
    detalles_ventas.cantidad
from
	productos
join
	categorias_productos on categorias_productos.id_categoria = productos.id_categoria
join
	decoraciones on decoraciones.id_producto = productos.id_producto
join
	tipos_decoracion on tipos_decoracion.id_tipos_decoracion = decoraciones.id_tipos_decoracion
join
	detalles_ventas on detalles_ventas.id_producto = productos.id_producto
order by detalles_ventas.cantidad desc;

-- 85. listar ciudades donde se encuentran los clientes y el numero de ellos

select
	ciudades.nombre,
    count(clientes.id_cliente) as numero_clientes
from
	clientes
join
	direcciones on direcciones.id_cliente = clientes.id_cliente
join
	barrios on barrios.id_barrio = direcciones.id_barrio
join
	ciudades on ciudades.id_ciudad = barrios.id_ciudad
group by 
	ciudades.nombre
order by
	numero_clientes;

-- 87. Obtener la suma de todas las devoluciones y su efecto en las ganancias.

select 
    sum(detalles_devoluciones.cantidad) as total_devoluciones,
    sum(detalles_devoluciones.cantidad * detalles_ventas.precio_unitario) as efecto_en_ganancias
from 
    devoluciones
join 
    detalles_devoluciones on devoluciones.id_devolucion = detalles_devoluciones.id_devolucion
join 
    detalles_ventas on detalles_devoluciones.id_producto = detalles_ventas.id_producto
join 
    ventas on devoluciones.id_venta = ventas.id_venta
where 
    detalles_ventas.id_venta = ventas.id_venta;
    
-- 89. Consultar los detalles de las ventas realizadas en un evento especial.

select 
    productos.nombre as nombre_producto,
    detalles_ventas.cantidad as cantidad_vendida,
    detalles_ventas.precio_unitario as precio_unitario,
    ventas.total as total_venta,
    promociones.nombre as nombre_promocion,
    promociones.fecha_inicio as fecha_inicio_promocion,
    promociones.fecha_fin as fecha_fin_promocion
from 
    detalles_ventas
join 
    productos on productos.id_producto = detalles_ventas.id_producto
join 
    ventas on ventas.id_venta = detalles_ventas.id_venta
join 
    detalles_ventas_online on detalles_ventas_online.id_producto = productos.id_producto
join 
    productos_promocion on productos_promocion.id_producto = productos.id_producto
join 
    promociones on promociones.id_promocion = productos_promocion.id_promocion
where 
    year(ventas.fecha_venta) = year(promociones.fecha_inicio);
    
-- 91. Consultar los ingresos generados por los alquileres de disfraces por mes.

select 
    month(alquileres.fecha_inicio) as mes,
    sum(alquileres.total) as ingresos_totales
from 
    alquileres
group by 
    month(alquileres.fecha_inicio)
order by 
    mes;

-- 93. Listar los métodos de pago más comunes y su impacto en las ventas.

select 
    metodos_pago.nombre as metodo_pago,
    count(transacciones.id_venta) as total_transacciones,
    sum(transacciones.monto) as total_ingresos
from 
    metodos_pago
join 
    transacciones on metodos_pago.id_metodo_pago = transacciones.id_metodo_pago
group by 
    metodos_pago.nombre
order by 
    total_transacciones desc;
    
-- 95. Obtener el promedio de precio de los disfraces por género.

select
	avg(productos.precio) as promedio_precios,
    disfraces.genero
from
	disfraces
join
	productos on productos.id_producto = disfraces.id_producto
group by disfraces.genero;

-- 97. Consultar la cantidad de disfraces disponibles por talla y género.

select
	productos.nombre,
    disfraces.talla,
    disfraces.genero,
    sum(inventario.stock) as total_stock
from 
    disfraces
join 
    productos on productos.id_producto = disfraces.id_producto
join 
    inventario on inventario.id_producto = productos.id_producto
group by 
    disfraces.talla, disfraces.genero, productos.nombre;
    
-- 99. Listar las órdenes de compra por estado y su proveedor correspondiente.

select
	proveedores.nombre_empresa,
    ordenes_compra.estado
from
	ordenes_compra
join
	proveedores on proveedores.id_proveedor = ordenes_compra.id_proveedor;