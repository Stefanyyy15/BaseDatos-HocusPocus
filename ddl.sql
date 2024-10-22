create database if not exists hocus_pocus;

use hocus_pocus;

create table if not exists categorias_productos(
	id_categoria int primary key auto_increment,
    nombre varchar(100) not null,
    descripcion text
);

create table if not exists subcategorias_disfraces_accesorios(
	id_subcategoria int primary key auto_increment,
    nombre varchar(100) not null,
    descripcion text
);

create table if not exists productos(
	id_producto int primary key auto_increment,
    nombre varchar(100) not null,
    descripcion text,
    precio decimal (10, 2) not null,
    id_categoria int,
    foreign key (id_categoria) references categorias_productos (id_categoria)
);

create table if not exists disfraces(
	id_disfraz int primary key auto_increment,
    id_producto int,
    id_subcategoria int,
    talla enum("xs", "s", "m", "l", "xl") not null,
    genero enum("hombre", "mujer", "unisex"),
    precio_alquiler decimal(10, 2),
    foreign key (id_producto) references productos (id_producto),
    foreign key (id_subcategoria) references subcategorias_disfraces_accesorios (id_subcategoria)
);

create table if not exists tipos_decoracion(
	id_tipos_decoracion int primary key auto_increment,
    nombre varchar(100) not null
);

create table if not exists decoraciones(
	id_decoracion int primary key auto_increment,
    tamaño decimal(10, 2) not null,
    medida enum("m", "cm", "mm") not null,
    id_producto int,
    id_tipos_decoracion int,
    foreign key (id_producto) references productos (id_producto),
    foreign key (id_tipos_decoracion) references tipos_decoracion (id_tipos_decoracion)
);

create table if not exists tipos_accesorios(
	id_tipo_accesorio int primary key auto_increment,
    nombre varchar(100) not null
);

create table if not exists accesorios(
	id_accesorio int primary key auto_increment,
	id_tipo_accesorio int,
    id_producto int,
    foreign key (id_tipo_accesorio) references tipos_accesorios (id_tipo_accesorio),
    foreign key (id_producto) references productos (id_producto)
);

create table if not exists tipos_maquillaje(
	id_tipo_maquillaje int primary key auto_increment,
    nombre varchar(100)
);

create table if not exists maquillajes(
	id_maquillaje int primary key auto_increment,
    marca varchar(100) not null,
    medida enum("ml", "l", "gr", "kg"),
    id_producto int,
    id_tipo_maquillaje int,
    foreign key (id_producto) references productos (id_producto),
    foreign key (id_tipo_maquillaje) references tipos_maquillaje (id_tipo_maquillaje)
);

create table if not exists inventario(
	id_inventario int primary key auto_increment,
    stock int not null,
    id_producto int,
    foreign key (id_producto) references productos (id_producto)
);

create table if not exists empleados(
	id_empleado int primary key auto_increment,
    cedula varchar(10) not null unique,
    nombres varchar(100) not null,
    apellidos varchar(100) not null,
    fecha_nacimiento date not null,
    email varchar(100) not null unique,
    telefono varchar(100) not null unique,
    fecha_contratacion date not null,
    rol enum("vendedor", "cajero", "bodega", "oficios varios"),
    salario decimal(10, 2) not null
);

create table if not exists clientes(
	id_cliente int primary key auto_increment,
    cedula varchar(10) not null unique,
    nombres varchar(100) not null,
    apellidos varchar(100) not null,
    email varchar(100) not null unique,
    telefono varchar(100) not null unique,
    fecha_nacimiento date not null
);

create table if not exists usuarios(
	id_usuario int primary key auto_increment,
    correo varchar(100) unique not null,
    contraseña varchar(100) not null
);

create table if not exists ciudades(
	id_ciudad int primary key auto_increment,
    nombre varchar(100) not null
);

create table if not exists barrios(
	id_barrio int primary key auto_increment,
    nombre varchar(100) not null,
    id_ciudad int,
    foreign key (id_ciudad) references ciudades (id_ciudad)
);

create table if not exists direcciones( -- d
    id_direccion int primary key auto_increment,
    id_cliente int not null unique,
    tipo_via enum("carrera", "calle", "diagonal", "transversal", "circular"),
    direccion varchar(100) not null,
    indicaciones text,
    codigo_postal varchar(100) not null,
    id_barrio int,
    foreign key (id_barrio) references barrios (id_barrio),
    foreign key (id_cliente) references clientes (id_cliente)
);

create table if not exists ventas( -- d
	id_venta int primary key auto_increment,
    id_cliente int,
    id_empleado int,
    fecha_venta date not null,
    descuento decimal(10, 2) not null,
    total decimal(10,2) not null,
    foreign key (id_cliente) references clientes (id_cliente),
    foreign key (id_empleado) references empleados (id_empleado)
);

create table if not exists ventas_online( -- s
	id_venta_online int primary key auto_increment,
    id_usuario int,
    id_empleado int,
    fecha_venta date not null,
    descuento decimal(10, 2) not null,
    total decimal(10,2) not null,
    foreign key (id_usuario) references usuarios (id_usuario),
    foreign key (id_empleado) references empleados (id_empleado)
);

create table if not exists detalles_ventas( -- d
	id_detalles_ventas int primary key auto_increment,
    id_venta int,
    id_producto int,
    cantidad int not null,
    precio_unitario decimal(10,2) not null,
    foreign key (id_venta) references ventas (id_venta),
    foreign key (id_producto) references productos (id_producto)
);

create table if not exists detalles_ventas_online( -- s
	id_detalle_venta_online int primary key auto_increment,
    id_venta_online int,
    id_direccion int,
    foreign key(id_venta_online) references ventas_online(id_venta_online),
    foreign key(id_direccion) references direcciones(id_direccion)
);

create table if not exists tarjetas( -- s
	id_tarjeta int primary key auto_increment,
    tipo_tarjeta enum("credito", "debito", "virtual") not null,
    red_tarjeta enum("visa", "mastercad", "american express")
);

create table if not exists cliente_tarjeta( -- s
	id_cliente_tarjet int primary key auto_increment,
    numero_tarjeta varchar(16) not null,
    csv varchar(3) not null,
    fecha_expiracion date not null,
    id_cliente int,
    id_tarjeta int,
    foreign key (id_cliente) references clientes (id_cliente),
    foreign key (id_tarjeta) references tarjetas (id_tarjeta)
);


create table if not exists metodos_pago( -- s
	id_metodo_pago int primary key auto_increment,
    nombre enum ("efectivo", "tarjeta")
);

create table transacciones ( -- s
    id_transaccion int primary key auto_increment,
    id_venta int,
    id_metodo_pago int,
    monto decimal(10, 2) not null,
    fecha_transaccion date not null,
    foreign key (id_venta) references ventas(id_venta),
    foreign key (id_metodo_pago) references metodos_pago(id_metodo_pago)
);

create table proveedores ( -- d
    id_proveedor int primary key auto_increment,
    nombre_empresa varchar(100) not null,
    contacto varchar(100) not null,
    email varchar(100) not null unique,
    telefono varchar(20) not null unique
);

create table ordenes_compra ( -- d
    id_orden_compra int primary key auto_increment,
    id_proveedor int,
    fecha_orden date not null,
    estado enum("entregado", "pendiente") not null,
    foreign key (id_proveedor) references proveedores(id_proveedor)
);

create table detalles_ordenes_compra ( -- d
    id_detalle_orden_compra int primary key auto_increment,
    id_orden_compra int,
    id_producto int,
    fecha_entrega date not null,
    cantidad int not null,
    precio_unitario decimal(10, 2) not null,
    foreign key (id_orden_compra) references ordenes_compra(id_orden_compra),
    foreign key (id_producto) references productos(id_producto)
);

create table if not exists alquileres ( -- s
    id_alquiler int primary key auto_increment,
    id_cliente int,
    id_disfraz int,
    fecha_inicio date not null,
    fecha_fin date not null,
    total decimal(10, 2) not null,
    deposito decimal(10, 2) not null,
    foreign key (id_cliente) references clientes (id_cliente),
    foreign key (id_disfraz) references disfraces (id_disfraz)
);

create table if not exists detalles_alquileres ( -- s
    id_detalle_alquiler int primary key auto_increment,
    id_alquiler int,
    id_disfraz int,
    cantidad int not null,
    precio_unitario decimal(10, 2) not null,
    foreign key (id_alquiler) references alquileres (id_alquiler),
    foreign key (id_disfraz) references disfraces (id_disfraz)
);

create table if not exists facturacion ( -- d
    id_factura int primary key auto_increment,
    id_venta int,
    fecha_factura datetime not null,
    total decimal(10, 2) not null,
    foreign key (id_venta) references ventas(id_venta)
);

create table if not exists envios( -- d
    id_envio int primary key auto_increment,
    id_venta int,
    fecha_envio date,
    fecha_entrega_estimada date,
    estado_envio enum("pendiente", "en tránsito", "entregado", "devuelto"),
    id_direccion int,
    foreign key (id_venta) references ventas(id_venta),
    foreign key (id_direccion) references direcciones(id_direccion)
);

create table promociones ( -- d
    id_promocion int primary key auto_increment,
    nombre varchar(100) not null,
    descripcion text,
    fecha_inicio date,
    fecha_fin date,
    descuento decimal(5,2) not null
);

create table productos_promocion ( -- d
    id_producto_promocion int primary key auto_increment,
    id_producto int,
    id_promocion int,
    foreign key (id_producto) references productos(id_producto),
    foreign key (id_promocion) references promociones(id_promocion)
);

create table if not exists devoluciones( -- s
	id_devolucion int primary key auto_increment,
    id_venta int,
    fecha_devolucion date not null,
    motivo text,
    foreign key (id_venta) references ventas(id_venta)
);

create table if not exists detalles_devoluciones( -- s
	id_detalles_devoluciones int primary key auto_increment,
    id_devolucion int,
    id_producto int,
    cantidad int not null,
    foreign key (id_devolucion) references devoluciones (id_devolucion),
    foreign key (id_producto) references productos (id_producto)
);