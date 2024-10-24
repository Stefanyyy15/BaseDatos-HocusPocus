# Hocus Pocus Tienda

Esta es una base de datos diseñada de manera eficiente y optimizada para la gestión de la tienda de disfraces Hocus Pocus. Su estructura incluye relaciones bien definidas entre tablas y operaciones de inserción cuidadas, lo que garantiza un funcionamiento fluido y preciso en todas las transacciones. Además, cuenta con consultas optimizadas para facilitar la búsqueda y procesos, junto con funciones específicas que mejoran la eficiencia en la gestión de datos.

## Tabla de contenido 

| Indice | Titulo          |
| ------ | --------------- |
| 1      | Requisitos del Sistema      |
| 2      | Instalación     |
| 3      | Estructura de la Base de Datos  |
| 4      | Diagrama UML    |
| 5      | Normalizacion   |
| 6      | FAQs            |
| 7      | Licencia        |
| 8      | Grupo           |


## Requisitos del Sistema

Lista de tecnologías utilizadas en el proyecto:
- **MySQL** (versión 5.7 o superior): Sistema de gestión de bases de datos relacional de código abierto, utilizado para la creación, administración y consulta de la base de datos. Es necesario instalar MySQL en el sistema para ejecutar los scripts SQL y gestionar la estructura de la base de datos de manera eficiente.

- **MySQL Workbench** (versión 8.0 o superior): Herramienta gráfica de administración y desarrollo para MySQL, que permite diseñar, administrar y ejecutar consultas SQL, así como visualizar la base de datos de manera más interactiva.

## Instalación 

Clona el proyecto

```bash
  git clone https://github.com/Stefanyyy15/Adrian_Ustariz_Yuli_Sanchez_HocusPocus.git
```

Ve al directorio del proyecto

```bash
  cd Adrian_Ustariz_Yuli_Sanchez_HocusPocus.git
```

Ir al archivo

```bash
  code .
```
#### En cada uno de los archivos .sql encontraras diferentes funciones
- ddl.sql (Creación de base de datos con tablas y relaciones)
- dml.sql (inserciones de datos)
- dql_select.sql (Consultas)
- dql_procedimientos.sql (procedimientos almacenados)
- dql_funciones.sql (funciones)
- dql. triggers.sql (triggers)
- dql. eventos.sql (eventos)

> **Nota:** Primero debes ejecutar el DDL para crear las tablas y, posteriormente, el DML para realizar las inserciones. Una vez completados estos pasos, podrás ejecutar consultas individuales, procedimientos o funciones según sea necesario.

## Estructura de la Base de Datos:

### 1. Categorías y Subcategorías de Productos
- categorias_productos: Almacena las categorías generales de los productos (ej. disfraces, accesorios).

- subcategorias_disfraces_accesorios: Define las subcategorías de productos (ej. disfraces, accesorios).

- productos: Contiene los detalles de los productos (disfraces, accesorios, decoraciones, maquillajes), relacionados con una categoría específica.

**Relaciones:**

Los productos están vinculados a una categoría a través del campo id_categoria.
Los disfraces están asociados a una subcategoría mediante id_subcategoria.

### 2. Productos Específicos
- disfraces: Registra los disfraces, con información adicional sobre talla, género y precio de alquiler.

- decoraciones: Almacena las decoraciones disponibles, junto con su tipo y tamaño.

- accesorios: Contiene los accesorios disponibles, vinculados a un tipo específico de accesorio.

- maquillajes: Gestiona los productos de maquillaje, asociados a un tipo específico de maquillaje.

**Relaciones:**

Las tablas disfraces, decoraciones, accesorios y maquillajes están relacionadas con productos mediante id_producto.
decoraciones y maquillajes están vinculadas a tipos específicos (tipos_decoracion y tipos_maquillaje respectivamente).

### 3. Inventario y Proveedores
- inventario: Gestiona la cantidad disponible de cada producto en el inventario.

- proveedores: Registra a los proveedores que suministran los productos.

- ordenes_compra: Almacena las órdenes de compra a proveedores.

- detalles_ordenes_compra: Detalla los productos de cada orden de compra.

**Relaciones:**

Los productos en el inventario se identifican mediante id_producto.
Las órdenes de compra están vinculadas a proveedores y a productos específicos.

### 4. Clientes y Empleados
- clientes: Almacena información sobre los clientes, incluidos sus datos personales.

- empleados: Contiene los datos de los empleados de la tienda, como nombres, cargos y salarios.

- direcciones: Gestiona las direcciones de los clientes, relacionadas con los barrios y ciudades.

**Relaciones:**

Las ventas y alquileres están asociadas a clientes y empleados mediante id_cliente e id_empleado.

### 5. Ventas y Alquileres
- ventas: Registra las ventas realizadas a clientes en la tienda física.

- ventas_online: Gestiona las ventas realizadas a través de la tienda online.

- alquileres: Registra los alquileres de disfraces por parte de los clientes.

- detalles_ventas: Almacena los detalles de los productos vendidos, como cantidad y precio unitario.

- detalles_alquileres: Almacena los detalles de los disfraces alquilados, incluyendo la cantidad y el precio.

**Relaciones:**

Las ventas y alquileres están vinculadas a los clientes y productos a través de claves foráneas.
detalles_ventas y detalles_alquileres se relacionan con sus respectivas ventas y alquileres.

### 6. Métodos de Pago y Transacciones
- metodos_pago: Define los métodos de pago utilizados por los clientes (efectivo o tarjeta).

- transacciones: Registra las transacciones de pago realizadas por los clientes en la tienda física.

**Relaciones:**

Las transacciones están asociadas a las ventas y métodos de pago mediante claves foráneas.

### 7. Envíos y Facturación
- facturacion: Almacena los detalles de las facturas generadas para cada venta.

- envios: Registra la información de los envíos de productos a clientes, incluyendo estado y fechas de entrega.

**Relaciones:**

Las facturas y envíos están vinculados a las ventas mediante id_venta.

### 8. Promociones y Devoluciones
- promociones: Contiene las promociones activas en la tienda.

- productos_promocion: Relaciona productos con las promociones actuales.

- devoluciones: Registra las devoluciones de productos por parte de los clientes.

- detalles_devoluciones: Detalla los productos que han sido devueltos en cada transacción.

**Relaciones:**

Los productos en promoción se vinculan a través de la tabla productos_promocion.
Las devoluciones están relacionadas con las ventas y productos a través de claves foráneas.

### 9. Alquileres y Tarjetas
- alquileres: Gestiona los alquileres de disfraces por parte de los clientes.

- cliente_tarjeta: Almacena los datos de las tarjetas asociadas a los clientes para las transacciones online.

- tarjetas: Define los tipos de tarjetas utilizadas en las transacciones.

**Relaciones:**

Los alquileres se vinculan a los clientes y disfraces.
Las tarjetas de los clientes se gestionan a través de cliente_tarjeta.

## Ejemplos de Consultas SQL

A continuación se presentan algunos ejemplos de consultas SQL que se pueden ejecutar en la base de datos, junto con una breve explicación de la información que generan.

### 1. Total de Ventas por Empleado
Calcula el total de ventas realizadas por cada empleado y las ordena de mayor a menor.

```sql
SELECT em.nombres,
       COUNT(v.id_venta) AS TotalVentas
FROM ventas v
JOIN empleados em ON em.id_empleado = v.id_empleado
GROUP BY em.nombres
ORDER BY TotalVentas DESC;
```

### 2. Total de Ventas y Descuentos Aplicados por Empleado
Obtiene el total de ventas y descuentos aplicados por cada empleado en un año específico.

```sql
SELECT e.nombres AS Empleado,
       COUNT(v.id_venta) AS TotalVentas,
       SUM(v.descuento) AS TotalDescuentos
FROM empleados e
JOIN ventas v ON v.id_empleado = e.id_empleado
WHERE YEAR(v.fecha_venta) = 2023
GROUP BY e.nombres
ORDER BY COUNT(v.id_venta) ASC;
```

### 3.  Promociones Activas y Productos Asociados
Lista las promociones activas y los productos asociados a cada una.

```sql
SELECT p.nombre AS PromoNombre,
       p.fecha_fin,
       productos.nombre AS Producto
FROM promociones p
JOIN productos_promocion pp ON p.id_promocion = pp.id_promocion
JOIN productos ON productos.id_producto = pp.id_producto
WHERE p.fecha_fin >= CURDATE();
```

## Procedimientos Almacenados

Los procedimientos almacenados son bloques de código SQL que realizan operaciones específicas en la base de datos. A continuación, se presentan algunos ejemplos:

### 1. Insertar un nuevo producto en la tabla productos
```sql
CREATE PROCEDURE InsertarProducto(IN nombre VARCHAR(255), IN precio DECIMAL(10, 2), IN categoria_id INT)
BEGIN
    INSERT INTO productos (nombre, precio, categoria_id) VALUES (nombre, precio, categoria_id);
END;
```
### 2.  Actualizar el stock de un producto en la tabla inventario
```sql
CREATE PROCEDURE ActualizarStock(IN producto_id INT, IN cantidad INT)
BEGIN
    UPDATE inventario SET stock = stock + cantidad WHERE producto_id = producto_id;
END;
```
## Funciones

Las funciones permiten realizar cálculos y devolver valores específicos. A continuación se presentan algunos ejemplos:

### 1. Calcular el total de ingresos por alquiler de disfraces en un período específico
```sql
CREATE FUNCTION TotalIngresosAlquiler(IN inicio DATE, IN fin DATE) RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE total DECIMAL(10, 2);
    SELECT SUM(precio) INTO total FROM alquileres WHERE fecha >= inicio AND fecha <= fin;
    RETURN total;
END;
```
### 2. Calcular la rentabilidad de un producto específico
```sql
CREATE FUNCTION RentabilidadProducto(IN producto_id INT) RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE costo DECIMAL(10, 2);
    DECLARE venta DECIMAL(10, 2);
    SELECT SUM(costo) INTO costo FROM detalles_ordenes_compra WHERE producto_id = producto_id;
    SELECT SUM(precio) INTO venta FROM detalles_ventas WHERE producto_id = producto_id;
    RETURN venta - costo;
END;
```
## Triggers

Los triggers son acciones automáticas que se ejecutan en respuesta a eventos específicos en la base de datos. A continuación se presentan algunos ejemplos:

### 1. Actualizar stock al agregar un producto nuevo
```sql
CREATE TRIGGER AfterInsertProducto
AFTER INSERT ON productos
FOR EACH ROW
BEGIN
    INSERT INTO inventario (producto_id, stock) VALUES (NEW.id, 0);
END;
```
### 2. Mantener el stock al realizar una venta
```sql
CREATE TRIGGER AfterInsertVenta
AFTER INSERT ON detalles_ventas
FOR EACH ROW
BEGIN
    UPDATE inventario SET stock = stock - NEW.cantidad WHERE producto_id = NEW.producto_id;
END;
```
## Eventos

Los eventos son tareas programadas que se ejecutan automáticamente en intervalos regulares. A continuación se presentan algunos ejemplos:

### 1.  Verificar y actualizar el estado de las promociones que han vencido
```sql
CREATE EVENT VerificarPromocionesVencidas
ON SCHEDULE EVERY 1 DAY
DO
BEGIN
    UPDATE promociones SET estado = 'finalizada' WHERE fecha_fin < NOW();
END;
```
## Roles de Usuario y Permisos: 

### 1. Administrador
Permisos:
- Acceso completo a todas las tablas y datos del sistema.
- Puede gestionar usuarios, roles y permisos.
- Puede realizar consultas y actualizaciones en todas las bases de datos.
- Control total sobre la creación y modificación de productos, proveedores, clientes, ventas, inventarios, empleados, etc.
Restricciones:
- Ninguna.
Permisos MySQL:

```bash
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' IDENTIFIED BY 'password';
FLUSH PRIVILEGES;
```

### 2. Vendedor
Permisos:
- Acceso a la gestión de ventas y productos.
- Puede consultar y actualizar la información de ventas y productos en inventario.
- Puede generar reportes de ventas.
Restricciones: 
- No puede acceder a la gestión de usuarios, proveedores ni modificar empleados.
Permisos MySQL:
```bash
GRANT SELECT, INSERT, UPDATE ON hocus_pocus.ventas TO 'vendedor'@'localhost' IDENTIFIED BY 'password';
GRANT SELECT ON hocus_pocus.productos TO 'vendedor'@'localhost';
FLUSH PRIVILEGES;
```
### 3. Encargado de Proveedores
Permisos:
- Acceso a la gestión de proveedores y órdenes de compra.
- Puede agregar, editar y eliminar proveedores.
- Puede generar órdenes de compra y consultar detalles de productos en orden.
Restricciones:
- No puede gestionar clientes, empleados ni realizar ventas.
Permisos MySQL:
```bash
GRANT SELECT, INSERT, UPDATE ON hocus_pocus.proveedores TO 'encargado_proveedores'@'localhost' IDENTIFIED BY 'password';
GRANT SELECT, INSERT ON hocus_pocus.ordenes_compra TO 'encargado_proveedores'@'localhost';
FLUSH PRIVILEGES;
```
### 4. Gerente
Permisos:
- Acceso a los reportes financieros y gestión de empleados.
- Puede ver la información de todas las ventas, proveedores y empleados.
- Puede generar reportes de inventario, ventas, y control de salarios.
Restricciones:
- No puede modificar productos, proveedores ni gestionar clientes.
Permisos MySQL:
```bash
GRANT SELECT ON hocus_pocus.ventas TO 'gerente'@'localhost' IDENTIFIED BY 'password';
GRANT SELECT, UPDATE ON hocus_pocus.empleados TO 'gerente'@'localhost';
FLUSH PRIVILEGES;
```

### 5. Encargado de Almacén
Permisos:
- Acceso para ver y actualizar los inventarios de productos.
- Puede consultar el stock disponible, modificar cantidades y actualizar la información de productos.
Restricciones:
- No puede realizar ventas, gestionar proveedores ni modificar empleados.
Permisos MySQL:
```bash
GRANT SELECT, UPDATE ON hocus_pocus.inventario TO 'encargado_almacen'@'localhost' IDENTIFIED BY 'password';
FLUSH PRIVILEGES;
FLUSH PRIVILEGES;
```


## Contribuciones

| Tipo de contribución | Nombre | Comentarios |
|:---------------------|:--------:|------------:|
| Trabajo en equipo  | Ambos       | Nos organizamos y repartimos las tareas de manera eficiente y efectiva.|
| Ayuda | Ambos      | Nos apoyamos mutuamente cuando nos encontramos con obstáculos o bloqueos. |
| Diagrama | Daniel      | Creó el diagrama de manera rápida, clara y congruente con los requisitos.|
| Readme | Stefany      |Redacté el README de acuerdo con las indicaciones, asegurando su claridad. |


## Licencia

Este proyecto está licenciado bajo la Licencia MIT. 

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)


## Contacto

Si tienes alguna pregunta o deseas más información, no dudes en contactarnos:

- **Nombre**: Adrian
- **Correo electrónico**: [dxniel7328@gmail.com](mailto:tu.dxniel7328@gmail.com)
- **GitHub**: [https://github.com/Adrian-ortiz0](https://github.com/Adrian-ortiz0)

---

- **Nombre**: Stefany
- **Correo electrónico**: [yuli.estefani.s15@gmail.com](mailto:tu.yuli.estefani.s15@gmail.com)
- **GitHub**: [https://github.com/Stefanyyy15](https://github.com/Stefanyyy15)
---

También puedes dejar un mensaje en el [Issues](https://github.com/Stefanyyy15/Adrian_Ustariz_Yuli_Sanchez_HocusPocus/issues) del repositorio.
