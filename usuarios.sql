-- usuarios

use hocus_pocus;

CREATE USER 'stefany'@'localhost' IDENTIFIED BY 'Stefanyyy15#';
GRANT ALL PRIVILEGES ON hocus_pocus.* TO 'stefany'@'localhost';

-- empleados

CREATE USER 'vendedor'@'localhost' IDENTIFIED BY 'Vendedor15#';
GRANT SELECT, INSERT, UPDATE ON hocus_pocus.productos TO 'vendedor'@'localhost';
GRANT SELECT ON hocus_pocus.ventas TO 'vendedor'@'localhost';

-- cajero

CREATE USER 'cajero'@'localhost' IDENTIFIED BY 'Cajero15#';
GRANT SELECT, INSERT ON hocus_pocus.transacciones TO 'cajero'@'localhost';


-- bodega

CREATE USER 'bodega'@'localhost' IDENTIFIED BY 'Bodega15#';
GRANT SELECT, INSERT, UPDATE, DELETE ON hocus_pocus.inventario TO 'bodega'@'localhost';

-- cliente

CREATE USER 'cliente_comprador'@'localhost' IDENTIFIED BY 'Cliente15#';
GRANT SELECT, INSERT ON hocus_pocus.ventas TO 'cliente_comprador'@'localhost';
GRANT SELECT, INSERT ON hocus_pocus.alquileres TO 'cliente_comprador'@'localhost';
GRANT SELECT ON hocus_pocus.productos TO 'cliente_comprador'@'localhost';
GRANT SELECT ON hocus_pocus.disfraces TO 'cliente_comprador'@'localhost';