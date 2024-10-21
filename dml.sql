-- inserciones

use hocus_pocus;

insert into categorias_productos(nombre, descripcion) values
("disfraces", "Trajes completos que siguen una tematica especifica"),
("maquillajes", "Productos de maquillaje especializados para disfraces"),
("accesorios", "Complementos para los disfraces y el maquillaje"),
("decoraciones", "Elementos para decorar fiestas o eventos");

insert into subcategorias_disfraces_accesorios (nombre, descripcion) values
("superheroes", "Disfraces y accesorios dedicados a los superhores de marvel y DC"),
("princesas", "Disfraces y accesorios de princesas de disney o en general"),
("peliculas de terror", "Disfraces y accesorios alucivos a peliculas de horror"),
("series", "Disfraces y accesorios alucivos a famosas series de la television"),
("disfraces historicos", "Disfraces y accesorios alucivos a personaje y figuras historicas"),
("monstruos", "Disfraces y accesorios de monstruos tipicos del folclore"),
("peliculas", "Disfraces y accesorios de personajes de peliculas populares"),
("animales", "Disfraces y accesorios de animales reales o ficticios"),
("fantasía", "Disfraces y accesorios relacionados con personajes de fantasía como magos, hadas y dragones"),
("artistas", "Disfraces y accesorios alucivos a artistas de la cultura pop"),
("piratas", "Disfraces y accesorios alusivos a piratas y corsarios"),
("futuristas", "Disfraces y accesorios relacionados con personajes del futuro o ciencia ficción"),
("mitologicos", "Disfraces y accesorios alucivos a seres de la mitologia en general"),
("videojuegos", "Disfraces y accesorios inspirados en personajes de videojuegos populares"),
("payasos", "Disfraces y accesorios de disfraces clasicos, tales como los mimos o los payasos"),
("profesiones", "Disfraces alucivos a profesiones");

INSERT INTO productos(nombre, descripcion, precio, id_categoria) VALUES
("Disfraz de Batman", "Disfraz de Batman completo con capa y máscara", 50.00, 1), -- 1
("Disfraz de princesa", "Disfraz de princesa con vestido y tiara", 45.00, 1), -- 2
("Disfraz de Darth Vader", "Disfraz completo de Darth Vader, incluye casco", 60.00, 1), -- 3
("Disfraz de Frankenstein", "Disfraz de Frankenstein con maquillaje incluido", 55.00, 1), -- 4
("Disfraz de pirata", "Disfraz completo de pirata con camiseta y pantalones", 55.00, 1), -- 5
("Disfraz de superhéroe", "Disfraz de superhéroe personalizado", 65.00, 1), -- 6
("Disfraz de mujer maravilla", "Disfraz de mujer maravilla con falda y tiara", 70.00, 1), -- 7
("Disfraz de hombre lobo", "Disfraz de hombre lobo con pelaje y colmillos", 58.00, 1), -- 8
("Disfraz de robot", "Disfraz de robot metálico con luces LED", 75.00, 1), -- 9
("Disfraz de diablillo", "Disfraz de diablillo con cuernos y tridente", 50.00, 1), -- 10
("Disfraz de gladiador", "Disfraz de gladiador con armadura y espada", 80.00, 1), -- 11
("Disfraz de muñeca", "Disfraz de muñeca con vestido y peluca", 65.00, 1), -- 12
("Disfraz de angelito", "Disfraz de angelito con alas y halo", 55.00, 1), -- 13
("Disfraz de león", "Disfraz de león con pelaje y cola", 60.00, 1), -- 14
("Disfraz de astronauta", "Disfraz de astronauta con casco y traje", 70.00, 1), -- 15
("Disfraz de robot de combate", "Disfraz de robot de combate con luces", 85.00, 1), -- 16
("Disfraz de sirena", "Disfraz de sirena con cola brillante", 75.00, 1), -- 17
("Disfraz de Zeus", "Disfraz del dios mitologico Zeus", "85.00", 1), -- 18
("Disfraz de cordero", "Simple disfraz de animal", "45.00", 1), -- 19
("Disfraz de iron-man", "Disfraz de ironman el superheroe de Marvel", "25.00", 1), -- 20
("Disfraz de la reina Elsa", "Disfraz de Elsa de Frozen con vestido azul", 75.00, 1), -- 21
("Disfraz de gladiador romano", "Disfraz de gladiador con casco y armadura", 80.00, 1), -- 22
("Disfraz de naruto", "Disfraz de naruto en shippuden", 55.00, 1), -- 23
("Disfraz de conejo mágico", "Disfraz de conejo con chaqueta y sombrero de copa", 50.00, 1), -- 24
("Disfraz de anuel", "Disfraz de anuel AA", 70.00, 1), -- 25
("Disfraz de búho sabio", "Disfraz de búho con alas y capucha", 60.00, 1), -- 26
("Disfraz de feid", "Disfraz del artista feid", 65.00, 1), -- 27
("Disfraz de loba", "Disfraz de loba con melena y cola", 70.00, 1), -- 28
("Disfraz de rick sanchez", "Disfraz con bata blanca y gafas", 50.00, 1), -- 29
("Disfraz de vampira elegante", "Disfraz de vampira con vestido largo y capa", 60.00, 1), -- 30
("Disfraz de marty mcfly", "Disfraz de marty de volver al futuro", 75.00, 1), -- 31
("Disfraz de dragón feroz", "Disfraz de dragón con alas y escamas", 85.00, 1), -- 32
("Disfraz de chef southpark", "Disfraz con gorro y delantal de chef", 50.00, 1), -- 33
("Disfraz de micky mouse", "Disfraz de micky mouse", 70.00, 1), -- 34
("Disfraz de ursula", "Disfraz de la villana ursula de la sirenita", 75.00, 1), -- 35
("Disfraz de astronauta", "Disfraz de astronauta con traje espacial", 80.00, 1), -- 36
("Disfraz de walter white", "Disfraz de walter white de breaking bad", 65.00, 1), -- 37
("Disfraz de tony soprano", "Disfraz de mafioso de the sopranos", 55.00, 1), -- 38
("Disfraz de link", "Disfraz del personaje link", 60.00, 1), -- 39
("Disfraz de ángel oscuro", "Disfraz de ángel con alas negras y halo", 70.00, 1), -- 40
("Disfraz de mario bros", "Disfraz inspirado en mario bros", 65.00, 1), -- 41
("Disfraz de mimo", "Disfraz clásico de mimo con rayas y cara pintada", 50.00, 1), -- 42
("Disfraz de hada oscura", "Disfraz de hada con alas y vestido negro", 65.00, 1), -- 43
("Disfraz de rayo mcqueen", "Disfraz del rayo mcqueen de pixar", 70.00, 1), -- 44
("Disfraz de samurái", "Disfraz de samurái con armadura tradicional", 80.00, 1), -- 45
("Disfraz de cleopatra", "Disfraz de la antigua reina de egipto", 60.00, 1), -- 46
("Disfraz de detective privado", "Disfraz de detective con sombrero y lupa", 55.00, 1), -- 47
("Disfraz de fénix", "Disfraz del personaje de valorant", 80.00, 1), -- 48
("Disfraz de napoleon", "Disfraz inspirado en el antiguo general napoleon", 85.00, 1), -- 49
("Disfraz de hombre de negro", "Disfraz inspirado en la pelicula hombres de negro", 92.00, 1), -- 50

("Antifaz de carnaval", "Antifaz colorido para festivales y carnavales", 10.00, 3), -- 18
("Sombrero de pirata", "Sombrero negro clásico de pirata con detalles dorados", 15.00, 3), -- 19
("Sombrero de vaquero", "Sombrero de vaquero clásico con cinta", 12.00, 3), -- 20
("Capa de vampiro", "Capa negra con forro rojo, ideal para vampiros", 30.00, 3), -- 21
("Capa roja de superhéroe", "Capa roja brillante para superhéroes", 28.00, 3), -- 22
("Diadema de unicornio", "Diadema con cuerno de unicornio", 11.00, 3), -- 23
("Capa de mago", "Capa negra de mago con estrellas doradas", 32.00, 3), -- 24
("Diadema de flores", "Diadema decorada con flores coloridas", 15.00, 3), -- 25
("Cinturón de guerrero", "Cinturón de cuero para guerreros", 20.00, 3), -- 26
("Sombrero de doctor", "Sombrero de doctor clásico", 10.00, 3), -- 27
("Capa de superhéroe", "Capa brillante de superhéroe", 25.00, 3), -- 28
("Gorro de elfo", "Gorro verde de elfo con orejas", 9.00, 3), -- 29

("Sombra de ojos brillante", "Paleta de sombras de ojos en tonos vibrantes", 22.00, 2), -- 30
("Sombra de ojos mate", "Paleta de sombras mate en tonos neutros", 20.00, 2), -- 31
("Sombra de ojos metálica", "Sombra de ojos metálica para un look glamuroso", 27.00, 2), -- 32
("Sombra de ojos en crema", "Sombra de ojos en crema para una aplicación fácil", 25.00, 2), -- 33
("Delineador líquido", "Delineador líquido de larga duración", 15.00, 2), -- 34
("Delineador en gel", "Delineador en gel para un acabado suave", 18.00, 2), -- 35
("Labial mate", "Labial mate en varios colores", 18.00, 2), -- 36
("Labial brillante", "Labial brillante para un acabado luminoso", 17.00, 2), -- 37
("Labial de larga duración", "Labial de larga duración en tonos intensos", 20.00, 2), -- 38
("Pintura facial", "Pintura facial para crear diseños y personajes", 20.00, 2), -- 39
("Glitter facial", "Glitter para decorar el rostro y cuerpo", 12.00, 2), -- 40
("Maquillaje en crema", "Maquillaje en crema de alta cobertura", 25.00, 2), -- 41
("Pintura de cuerpo", "Pintura para crear diseños en el cuerpo", 30.00, 2), -- 42
("Rímel waterproof", "Rímel resistente al agua para mayor duración", 20.00, 2), -- 43
("Gloss labial", "Gloss labial para un brillo adicional", 14.00, 2), -- 44
("Lápiz de cejas", "Lápiz para definir las cejas con precisión", 16.00, 2), -- 45
("Lápiz labial retractable", "Lápiz labial retractable en colores vibrantes", 19.00, 2), -- 46
("Blush en crema", "Blush en crema para un acabado natural", 19.00, 2), -- 47
("Spray fijador de maquillaje", "Spray fijador para mantener el maquillaje en su lugar", 21.00, 2), -- 48
("Paleta de contorno", "Paleta de contorno para definir el rostro", 28.00, 2), -- 49
("Brochas de maquillaje", "Set de brochas para aplicar maquillaje", 35.00, 2), -- 50

("Mantel de fantasma", "Mantel tematico de fantasma", 15.00, 4), -- 51
("Mantel del extraño mundo de jack", "Mantel basado en la pelicula del extraño mundo de jack", 10.00, 4), -- 52
("Luces led naranjas", "Luces led naranjas para decoracion", 12.00, 4), -- 53
("Poster de los cazafantasmas", "Poster de la pelicula de los cazafantasmas", 5.00, 4), -- 54
("Poster de bettlejuice", "Poster de la pelicula bettlejuice", 2.00, 4), -- 55
("Estanteria de murcielagos", "Estanteria en madera de murcielagos", "15.00", 4), -- 56
("Mural de castillo antiguo", "Mural de plastico para casas", 20.00, 4), -- 57
("Mesa de comidas de calabazas", "Mesa para comida con calabazas impresas", 60.00, 4), -- 58
("Globos de calaveras", "Globos con calaveras impresas", 5.00, 4), -- 59
("Alfombra roja", "Alfombra de aladin", 15.00, 4); -- 60

insert into tipos_decoracion(nombre) values
("manteles"), -- 1
("letreros"), -- 2
("cortinas"), -- 3
("iluminacion"), -- 4
("accesorios decorativos"), -- 5
("paredes tematicas"), -- 6
("estanterias"), -- 7
("mesas"), -- 8
("murales"), -- 9
("adornos colgantes"), -- 10
("cajas decorativas"), -- 11
("elementos naturales"), -- 12
("posters"), -- 13
("carteles"), -- 14
("globos"), -- 15
("alfombras"), -- 16
("objetos vintage"), -- 17
("decoracion de ventanas"), -- 18
("candelabros"), -- 19
("señalizacion"), -- 20
("tarros y frascos"); -- 21

insert into decoraciones(tamaño, medida, id_producto, id_tipos_decoracion) values
(15.2, "m", 51, 1), -- 1
(10.2, "m", 52, 1), -- 2
(10, "m", 53, 4), -- 3
(25.3, "cm", 54, 13), -- 4
(25.4, "cm", 55, 13), -- 5
(5.2, "m", 56, 7), -- 6
(2.1, "m", 57, 9), -- 7
(7.2, "m", 58, 8), -- 8
(2.1, "cm", 59, 15), -- 9
(4.6, "m", 60, 16); -- 10

INSERT INTO disfraces(id_producto, id_subcategoria, talla, genero, precio_alquiler) VALUES
(1, 1, "s", "hombre", "30.00"),
(2, 2, "xs", "mujer", "30.00"),
(3, 7, "m", "hombre", "30.00"),
(4, 6, "l", "unisex", "30.00"),
(5, 11, "xl", "unisex", "30.00"),
(6, 1, "s", "unisex", "30.00"),
(7, 1, "s", "mujer", "30.00"),
(8, 6, "l", "hombre", "30.00"),
(9, 12, "m", "hombre", "30.00"),
(10, 13, "m", "unisex", "30.00"),
(11, 5, "s", "hombre", "30.00"),
(12, 9, "m", "mujer", "30.00"),
(13, 13, "xl", "mujer", "30.00"),
(14, 8, "xl", "unisex", "30.00"),
(15, 16, "s", "unisex", "30.00"),
(16, 12, "xs", "hombre", "30.00"),
(17, 13, "l", "mujer", "30.00");

INSERT INTO tipos_accesorios (nombre) VALUES
("mascaras"), -- 1
("capas"), -- 2
("sombreros"), -- 3
("diademas"), -- 4
("gafas"), -- 5
("cinturones"), -- 6
("antifaces"), -- 7
("varitas magicas"), -- 8
("pelucas"), -- 9
("pañuelos"), -- 10
("fajas"), -- 11
("armas de juguete"), -- 12
("tatuajes temporales"), -- 13
("bolsos"), -- 14
("joyas"), -- 15
("cascos"), -- 16
("orejas de animal"), -- 17
("botas"), -- 18
("camisetas"), -- 19
("mochilas"), -- 20
("ropa interior tematica"), -- 21
("chalecos"), -- 21
("batas"), -- 22
("guantes"), -- 23
("collares"), -- 24
("brazaletes"), -- 25
("faldas"), -- 26
("gorros"); -- 27

insert into accesorios (id_tipo_accesorio, id_producto) values
(7, 18), -- antifaz carnaval
(3, 19), -- sombrero pirata
(3, 20), -- sombrero vaquero
(2, 21), -- capa vampiro
(2, 22), -- capa roja superheroe
(4, 23), -- diadema unicornio
(2, 24), -- capa de mago
(4, 25), -- diadema de flores
(6, 26), -- cinturon de guerrero
(3, 27), -- sombrero de doctor
(2, 28), -- capa roja
(27, 29); -- gorro de elfo

INSERT INTO tipos_maquillaje (nombre) VALUES
("sombras de ojos"), -- 1
("delineadores"), -- 2
("labiales"), -- 3
("pintura facial"), -- 4
("glitter facial"), -- 5
("rimel"), -- 6
("gloss labial"), -- 7
("lápiz de cejas"), -- 8
("blush"), -- 9
("spray fijador de maquillaje"), -- 10
("paleta de contorno"), -- 11
("brochas de maquillaje"), -- 12
("base de maquillaje"), -- 13
("corrector"), -- 14
("polvo compacto"), -- 15
("iluminador"), -- 16
("esponjas de maquillaje"), -- 17
("tintes para labios"), -- 18
("pestañas postizas"), -- 19
("pegamento para pestañas postizas"), -- 20
("uñas postizas"); -- 21

INSERT INTO maquillajes (marca, id_producto, id_tipo_maquillaje) VALUES 
("Maybelline", 30, 1), -- Sombra de ojos brillante
("L'Oreal", 31, 1), -- Sombra de ojos mate
("Urban Decay", 32, 1), -- Sombra de ojos metálica
("NYX", 33, 1), -- Sombra de ojos en crema
("Maybelline", 34, 2), -- Delineador líquido
("L'Oreal", 35, 2), -- Delineador en gel
("MAC", 36, 3), -- Labial mate
("Revlon", 37, 3), -- Labial brillante
("Urban Decay", 38, 3), -- Labial de larga duración
("Kryolan", 39, 4), -- Pintura facial
("Too Faced", 40, 5), -- Glitter facial
("MAC", 41, 13), -- Maquillaje en crema
("Kryolan", 42, 4), -- Pintura de cuerpo
("L'Oreal", 43, 6), -- Rímel waterproof
("Fenty Beauty", 44, 7), -- Gloss labial
("Benefit", 45, 8), -- Lápiz de cejas
("MAC", 46, 3), -- Lápiz labial retractable
("Nars", 47, 9), -- Blush en crema
("Urban Decay", 48, 10), -- Spray fijador de maquillaje
("Too Faced", 49, 11), -- Paleta de contorno
("Real Techniques", 50, 12); -- Brochas de maquillaje

INSERT INTO inventario(stock, id_producto) VALUES
(15, 1),  -- Disfraz de Batman
(20, 2),  -- Disfraz de princesa
(10, 3),  -- Disfraz de Darth Vader
(8, 4),   -- Disfraz de Frankenstein
(12, 5),  -- Disfraz de pirata
(18, 6),  -- Disfraz de superhéroe
(10, 7),  -- Disfraz de mujer maravilla
(14, 8),  -- Disfraz de hombre lobo
(9, 9),   -- Disfraz de robot
(17, 10), -- Disfraz de diablillo
(6, 11),  -- Disfraz de gladiador
(13, 12), -- Disfraz de muñeca
(16, 13), -- Disfraz de angelito
(11, 14), -- Disfraz de león
(9, 15),  -- Disfraz de astronauta
(7, 16),  -- Disfraz de robot de combate
(8, 17),  -- Disfraz de sirena

(25, 18), -- Antifaz de carnaval
(20, 19), -- Sombrero de pirata
(30, 20), -- Sombrero de vaquero
(22, 21), -- Capa de vampiro
(18, 22), -- Capa roja de superhéroe
(28, 23), -- Diadema de unicornio
(15, 24), -- Capa de mago
(26, 25), -- Diadema de flores
(12, 26), -- Cinturón de guerrero
(32, 27), -- Sombrero de doctor
(19, 28), -- Capa de superhéroe
(35, 29), -- Gorro de elfo

(40, 30), -- Sombra de ojos brillante
(37, 31), -- Sombra de ojos mate
(34, 32), -- Sombra de ojos metálica
(33, 33), -- Sombra de ojos en crema
(25, 34), -- Delineador líquido
(22, 35), -- Delineador en gel
(27, 36), -- Labial mate
(29, 37), -- Labial brillante
(24, 38), -- Labial de larga duración
(31, 39), -- Pintura facial
(35, 40), -- Glitter facial
(26, 41), -- Maquillaje en crema
(18, 42), -- Pintura de cuerpo
(21, 43), -- Rímel waterproof
(32, 44), -- Gloss labial
(28, 45), -- Lápiz de cejas
(23, 46), -- Lápiz labial retractable
(30, 47), -- Blush en crema
(15, 48), -- Spray fijador de maquillaje
(10, 49), -- Paleta de contorno
(25, 50); -- Brochas de maquillaje

INSERT INTO empleados (cedula, nombres, apellidos, fecha_nacimiento, email, telefono, fecha_contratacion, rol, salario) VALUES
('1012345678', 'Juan', 'Pérez', '1985-04-12', 'juan.perez@example.com', '3001234567', '2023-01-15', 'vendedor', 1500.00), -- 1 vendedor
('1012345679', 'María', 'Gómez', '1990-07-19', 'maria.gomez@example.com', '3002345678', '2023-02-10', 'cajero', 1200.00), -- 2
('1012345680', 'Carlos', 'Martínez', '1988-01-25', 'carlos.martinez@example.com', '3003456789', '2023-03-05', 'bodega', 1300.00), -- 3
('1012345681', 'Ana', 'López', '1995-06-30', 'ana.lopez@example.com', '3004567890', '2023-04-20', 'oficios varios', 1100.00), -- 4
('1012345682', 'Luis', 'Fernández', '1982-11-15', 'luis.fernandez@example.com', '3005678901', '2023-05-12', 'vendedor', 1600.00), -- 5 vendedor
('1012345683', 'Sofía', 'Ramírez', '1993-09-22', 'sofia.ramirez@example.com', '3006789012', '2023-06-01', 'cajero', 1250.00), -- 6
('1012345684', 'Diego', 'Hernández', '1991-05-10', 'diego.hernandez@example.com', '3007890123', '2023-07-08', 'bodega', 1400.00), -- 7
('1012345685', 'Isabella', 'Castillo', '1994-03-18', 'isabella.castillo@example.com', '3008901234', '2023-08-16', 'oficios varios', 1150.00), -- 8
('1012345686', 'Felipe', 'Torres', '1989-02-14', 'felipe.torres@example.com', '3009012345', '2023-09-30', 'vendedor', 1550.00), -- 9 vendedor
('1012345687', 'Valentina', 'Mendoza', '1992-08-29', 'valentina.mendoza@example.com', '3000123456', '2023-10-05', 'cajero', 1200.00), -- 10
('1012345688', 'Andrés', 'Morales', '1987-12-04', 'andres.morales@example.com', '3002345671', '2023-01-20', 'bodega', 1350.00), -- 11
('1012345689', 'Camila', 'Vargas', '1996-07-11', 'camila.vargas@example.com', '3003456782', '2023-02-15', 'oficios varios', 1150.00), -- 12
('1012345690', 'Javier', 'Cruz', '1983-03-27', 'javier.cruz@example.com', '3004567893', '2023-03-25', 'vendedor', 1600.00), -- 13 vendedor
('1012345691', 'Laura', 'Sánchez', '1990-10-02', 'laura.sanchez@example.com', '3005678904', '2023-04-10', 'cajero', 1250.00), -- 14
('1012345692', 'Sebastián', 'Rojas', '1994-01-08', 'sebastian.rojas@example.com', '3006789015', '2023-05-20', 'bodega', 1300.00), -- 15
('1012345693', 'Diana', 'Córdoba', '1991-05-19', 'diana.cordoba@example.com', '3007890126', '2023-06-30', 'oficios varios', 1150.00), -- 16
('1012345694', 'Natalia', 'Bermúdez', '1988-11-14', 'natalia.bermudez@example.com', '3008901237', '2023-07-10', 'vendedor', 1500.00), -- 17 vendedor
('1012345695', 'Ricardo', 'Salazar', '1985-12-31', 'ricardo.salazar@example.com', '3009012348', '2023-08-05', 'cajero', 1200.00), -- 18
('1012345696', 'Gabriela', 'Cáceres', '1995-09-20', 'gabriela.caceres@example.com', '3000123459', '2023-09-18', 'bodega', 1300.00), -- 19
('1012345697', 'Cristian', 'Cordero', '1992-06-06', 'cristian.cordero@example.com', '3001234560', '2023-10-02', 'oficios varios', 1150.00), -- 20
('1012345698', 'Juliana', 'Pineda', '1990-04-22', 'juliana.pineda@example.com', '3002345673', '2023-11-01', 'vendedor', 1500.00), -- 21 vendedor
('1012345699', 'Mateo', 'Palacios', '1987-08-15', 'mateo.palacios@example.com', '3003456784', '2023-11-02', 'cajero', 1200.00), -- 22
('1012345700', 'Valeria', 'Torres', '1995-03-05', 'valeria.torres@example.com', '3004567895', '2023-11-03', 'bodega', 1300.00), -- 23
('1012345701', 'Tomas', 'Reyes', '1984-11-30', 'tomas.reyes@example.com', '3005678906', '2023-11-04', 'oficios varios', 1100.00), -- 24
('1012345702', 'Isabella', 'Pérez', '1992-09-10', 'isabella.perez@example.com', '3006789017', '2023-11-05', 'vendedor', 1600.00), -- 25 vendedor
('1012345703', 'Nicolas', 'Mendoza', '1989-07-12', 'nicolas.mendoza@example.com', '3007890128', '2023-11-06', 'cajero', 1250.00), -- 26
('1012345704', 'Santiago', 'Hernández', '1991-10-18', 'santiago.hernandez@example.com', '3008901239', '2023-11-07', 'bodega', 1400.00), -- 27
('1012345705', 'Camilo', 'Vargas', '1988-05-25', 'camilo.vargas@example.com', '3009012350', '2023-11-08', 'oficios varios', 1150.00), -- 28
('1012345706', 'Angélica', 'García', '1994-12-22', 'angelica.garcia@example.com', '3000123461', '2023-11-09', 'vendedor', 1550.00), -- 29
('1012345707', 'Ricardo', 'Salinas', '1993-06-30', 'ricardo.salinas@example.com', '3001234562', '2023-11-10', 'cajero', 1200.00), -- 30
('1012345708', 'Felipe', 'López', '1986-04-05', 'felipe.lopez@example.com', '3002345674', '2023-11-11', 'bodega', 1350.00), -- 31
('1012345709', 'Paola', 'Gómez', '1995-03-14', 'paola.gomez@example.com', '3003456785', '2023-11-12', 'oficios varios', 1150.00), -- 32
('1012345710', 'Andrés', 'Castillo', '1982-08-24', 'andres.castillo@example.com', '3004567896', '2023-11-13', 'vendedor', 1600.00), -- 33
('1012345711', 'Liliana', 'Cruz', '1990-11-09', 'liliana.cruz@example.com', '3005678907', '2023-11-14', 'cajero', 1250.00), -- 34
('1012345712', 'Hernando', 'Rojas', '1989-05-11', 'hernando.rojas@example.com', '3006789018', '2023-11-15', 'bodega', 1300.00), -- 35
('1012345713', 'Jessica', 'Córdoba', '1991-02-19', 'jessica.cordoba@example.com', '3007890129', '2023-11-16', 'oficios varios', 1150.00), -- 36
('1012345714', 'Eduardo', 'Salazar', '1985-07-28', 'eduardo.salazar@example.com', '3008901230', '2023-11-17', 'vendedor', 1500.00), -- 37
('1012345715', 'Natalia', 'Valenzuela', '1996-03-07', 'natalia.valenzuela@example.com', '3009012351', '2023-11-18', 'cajero', 1200.00), -- 38
('1012345716', 'Julián', 'Salcedo', '1994-06-21', 'julian.salcedo@example.com', '3000123463', '2023-11-19', 'bodega', 1300.00), -- 39
('1012345717', 'Cecilia', 'Quintero', '1990-01-29', 'cecilia.quintero@example.com', '3001234564', '2023-11-20', 'oficios varios', 1150.00), -- 40
('1012345718', 'Gabriel', 'Agudelo', '1988-09-03', 'gabriel.agudelo@example.com', '3002345675', '2023-11-21', 'vendedor', 1550.00), -- 41
('1012345719', 'Lucía', 'Morrison', '1992-02-15', 'lucia.morrison@example.com', '3003456786', '2023-11-22', 'cajero', 1200.00), -- 42
('1012345720', 'Oscar', 'Téllez', '1986-11-10', 'oscar.tellez@example.com', '3004567897', '2023-11-23', 'bodega', 1350.00); -- 43


INSERT INTO clientes (cedula, nombres, apellidos, email, telefono, fecha_nacimiento) VALUES
('1023456789', 'Laura', 'Santos', 'laura.santos@example.com', '3111234567', '1995-05-20'),
('1023456790', 'Jorge', 'Cárdenas', 'jorge.cardenas@example.com', '3112345678', '1992-08-15'),
('1023456791', 'Camila', 'Naranjo', 'camila.naranjo@example.com', '3113456789', '1994-02-28'),
('1023456792', 'Sebastián', 'Ocampo', 'sebastian.ocampo@example.com', '3114567890', '1988-07-10'),
('1023456793', 'Sofía', 'Rodríguez', 'sofia.rodriguez@example.com', '3115678901', '1993-11-05'),
('1023456794', 'Diana', 'Melo', 'diana.melo@example.com', '3116789012', '1991-01-20'),
('1023456795', 'Andrés', 'Ceballos', 'andres.ceballos@example.com', '3117890123', '1989-06-30'),
('1023456796', 'Natalia', 'Paz', 'natalia.paz@example.com', '3118901234', '1996-04-13'),
('1023456797', 'Diego', 'Hernández', 'diego.hernandez@example.com', '3119012345', '1987-10-18'),
('1023456798', 'Valentina', 'González', 'valentina.gonzalez@example.com', '3110123456', '1992-09-25'),
('1023456799', 'Mauricio', 'Velez', 'mauricio.velez@example.com', '3111234560', '1990-12-03'),
('1023456800', 'Lina', 'Márquez', 'lina.marquez@example.com', '3112345671', '1994-03-14'),
('1023456801', 'Fernando', 'Castro', 'fernando.castro@example.com', '3113456782', '1985-05-05'),
('1023456802', 'Melisa', 'Vargas', 'melisa.vargas@example.com', '3114567893', '1988-08-30'),
('1023456803', 'César', 'Salas', 'cesar.salas@example.com', '3115678904', '1993-07-17'),
('1023456804', 'Claudia', 'Rivas', 'claudia.rivas@example.com', '3116789015', '1995-06-12'),
('1023456805', 'Gabriel', 'Alvarez', 'gabriel.alvarez@example.com', '3117890126', '1990-11-04'),
('1023456806', 'Sara', 'Tobón', 'sara.tobon@example.com', '3118901237', '1991-03-30'),
('1023456807', 'Esteban', 'Jaramillo', 'esteban.jaramillo@example.com', '3119012348', '1988-09-15'),
('1023456808', 'Paola', 'Pérez', 'paola.perez@example.com', '3110123459', '1994-01-09'),
('1023456809', 'Martín', 'Díaz', 'martin.diaz@example.com', '3112345673', '1995-02-15'),
('1023456810', 'Camilo', 'Torres', 'camilo.torres@example.com', '3113456784', '1987-06-25'),
('1023456811', 'Angela', 'Mora', 'angela.mora@example.com', '3114567895', '1992-12-05'),
('1023456812', 'Felipe', 'Gutiérrez', 'felipe.gutierrez@example.com', '3115678906', '1991-03-10'),
('1023456813', 'Verónica', 'Cruz', 'veronica.cruz@example.com', '3116789017', '1989-07-21'),
('1023456814', 'Alejandro', 'Rincón', 'alejandro.rincon@example.com', '3117890128', '1994-09-16'),
('1023456815', 'María', 'Serrano', 'maria.serrano@example.com', '3118901239', '1988-04-30'),
('1023456816', 'Juliana', 'Paniagua', 'juliana.paniagua@example.com', '3119012340', '1993-05-15'),
('1023456817', 'Diego', 'Cardona', 'diego.cardona@example.com', '3110123451', '1990-08-24'),
('1023456818', 'Luisa', 'Montoya', 'luisa.montoya@example.com', '3111234598', '1985-01-05'),
('1023456819', 'Fernando', 'Salazar', 'fernando.salazar@example.com', '3112345687', '1992-10-10'),
('1023456820', 'Estefanía', 'Gómez', 'estefania.gomez@example.com', '3113456786', '1996-02-20'),
('1023456821', 'Cristian', 'Vasquez', 'cristian.vasquez@example.com', '3114567894', '1989-11-11'),
('1023456822', 'Tatiana', 'Palacios', 'tatiana.palacios@example.com', '3115678908', '1994-12-12'),
('1023456823', 'Andrés', 'García', 'andres.garcia@example.com', '3116789019', '1995-03-18'),
('1023456824', 'Martha', 'Ceballos', 'martha.ceballos@example.com', '3117890120', '1990-08-21'),
('1023456825', 'Julio', 'Castro', 'julio.castro@example.com', '3118901231', '1991-05-30'),
('1023456826', 'Luz', 'Vélez', 'luz.velez@example.com', '3119012342', '1986-06-15'),
('1023456827', 'Berta', 'Ríos', 'berta.rios@example.com', '3110123453', '1988-10-05'),
('1023456828', 'Carlos', 'Mendoza', 'carlos.mendoza@example.com', '3111234562', '1992-09-19'),
('1023456829', 'Santiago', 'Marín', 'santiago.marin@example.com', '3112345675', '1987-01-11'),
('1023456830', 'Claudia', 'Figueroa', 'claudia.figueroa@example.com', '3113456783', '1993-04-25');

INSERT INTO usuarios(correo, contraseña) VALUES
('juanito12@gmail.com', 'cucarachasunidas'), -- 1
('beatrizOrtiz@gmail.com', 'contraseña123'), -- 2
('dxniel7328@gmail.com', 'Yosoyslerdenman2'), -- 3
('joseTinieblo@gmail.com', 'pepe331'), -- 4
('maicolmaluma@gmail.com', 'pritiboy45'), -- 5
('jessejoy@gmail.com', 'ladelamalasuerte22'), -- 6
('juanobanano@gmail.com', 'amoelfulvo'), -- 7
('juanito13@gmail.com', 'jamasvencidas'), -- 8
('julianbellaco@gmail.com', 'taylor1313'), -- 9
('arjona@gmail.com', 'fuistetudaniel'), -- 10
('marianapelirroja@gmail.com', 'amohombrescasados'), -- 11
('adrian2873@gmail.com', 'amoastefa15'), -- 12
('alberto@gmail.com', 'contraseña111'), -- 13
('rosamelano@gmail.com', 'qpongoaki'), -- 14
('luiscalvo@gmail.com', 'Yosoybatman3'), -- 15
('anagabriel@gmail.com', 'noqroqseamosamigos'), -- 16
('stefanyyy15@gmail.com', 'losodioatodos'), -- 17
('sofiachar@gmail.com', 'descendientestamo'), -- 18
('andreagomela@gmail.com', 'lokitajeje'), -- 19 
('jesus@gmail.com', "losamo"), -- 20
('michelleDayana@gmail.com', "3amamuerte"), -- 21
('esteban22@gmail.com', 'contraseñadificil'), -- 22
('camilacabello@gmail.com', 'solocriticasybesos'), -- 23
('lorettamartinez@gmail.com', 'vivaelamor'), -- 24
('pablitoperez@gmail.com', 'todoslosdias'), -- 25
('anita_nieves@gmail.com', 'risasydiversion'), -- 26
('juliancito99@gmail.com', 'felicidadplena'), -- 27
('catalinapinto@gmail.com', 'fiestasytacos'), -- 28
('ricardo_heroico@gmail.com', 'avengersforever'), -- 29
('marisol_2023@gmail.com', 'almaslibres'), -- 30
('fabiola_luna@gmail.com', 'entretenimientotal'), -- 31
('davidrodriguez@gmail.com', 'amordelbueno'), -- 32
('elena_gonzalez@gmail.com', 'pasionporlavida'), -- 33
('albertogarcia@gmail.com', 'chicosinromanticos'), -- 34
('vanessahart@gmail.com', 'sueñosyrealidad'), -- 35
('santiagocruz@gmail.com', 'risastotal'), -- 36
('diana_baez@gmail.com', 'momentosmagicos'), -- 37
('josephina2023@gmail.com', 'dameunabrazo'), -- 38
('nicolasalvador@gmail.com', 'caminosabiertos'), -- 39
('marcelafernandez@gmail.com', 'superalegria'), -- 40
('antonioquintero@gmail.com', 'somosfamilia'), -- 41
('claracabrera@gmail.com', 'luzdelmundo'), -- 42
('ricardoherrera@gmail.com', 'juntosporlavida'), -- 43
('patricia_diaz@gmail.com', 'sueñoscolorados'), -- 44
('sergioalonso@gmail.com', 'miaventura2023'), -- 45
('valentinajimenez@gmail.com', 'mimundomagico'), -- 46
('jaime_perez@gmail.com', 'felizcomounaava'), -- 47
('martinrojas@gmail.com', 'luzdetranquilidad'), -- 48
('adriana_morales@gmail.com', 'unavidaentera'), -- 49
('luisarmando@gmail.com', 'elcaminodelrey'); -- 50
;

INSERT INTO ciudades(nombre) VALUES
('Bogotá'),
('Medellín'),
('Cali'),
('Barranquilla'),
('Cartagena'),
('Cúcuta'),
('Bucaramanga'),
('Pereira'),
('Santa Marta'),
('Ibagué'),
('Manizales'),
('Neiva'),
('Cali'),
('Valledupar'),
('Popayán'),
('Sincelejo'),
('Montería'),
('Armenia'),
('Cartago'),
('Tunja'),
('Bello'),
('Soledad'),
('Riohacha'),
('Yopal'),
('Quibdó'),
('San Andrés'),
('Leticia'),
('Cúcuta'),
('Villavicencio'),
('Pasto'),
('Tuluá'),
('Buga'),
('Chiquinquirá'),
('Sogamoso'),
('Rionegro'),
('Barrancabermeja'),
('Aguachica'),
('Ciénaga'),
('El Banco'),
('Mocoa'),
('San Gil'),
('Sampués'),
('Tame'),
('Tibú'),
('Caldas'),
('Guatapé'),
('Zipaquirá'),
('Santiago de Cali');

INSERT INTO barrios(nombre, id_ciudad) VALUES
('La Candelaria', 1), -- 1
('El Poblado', 2), -- 2
('San Fernando', 3), -- 3
('El Prado', 4), -- 4
('Getsemaní', 5), -- 5
('La Playa', 6), -- 6
('Morrorico', 7), -- 7
('Pinares', 8), -- 8
('Rodadero', 9), -- 9
('La Pola', 10), -- 10
('Cable', 11), -- 11
('Las Vegas', 12), -- 12
('Gaira', 13), -- 13
('Centro Histórico', 14), -- 14
('El Morro', 15), -- 15
('Alameda', 16), -- 16
('La Tebaida', 17), -- 17
('El Centro', 18), -- 18
('San Mateo', 19), -- 19
('Tunja Vieja', 20), -- 20
('Niquía', 21), -- 21
('La Ceja', 22), -- 22
('El Malecón', 23), -- 23
('El Bosque', 24), -- 24
('El Jardín', 25), -- 25
('San Andrés', 26), -- 26
('Centro', 27), -- 27
('Los Patios', 28), -- 28
('Hato Grande', 29), -- 29
('La Rosa', 30), -- 30
('El Trapiche', 31), -- 31
('Buga Centro', 32), -- 32
('Santa Teresa', 33), -- 33
('El Libertador', 34), -- 34
('La Esperanza', 35), -- 35
('Centro', 36), -- 36
('San Vicente', 37), -- 37
('Cienaga Centro', 38), -- 38
('El Placer', 39), -- 39
('Centro', 40), -- 40
('Los Alpes', 41), -- 41
('La Pampa', 42), -- 42
('Centro', 43), -- 43
('El Chocó', 44), -- 44
('Sierra Nevada', 45), -- 45
('Los Rosales', 46), -- 46
('Las Brisas', 47), -- 47
('Puente Aranda', 48), -- 48
('El Oasis', 49), -- 49
('La Paz', 50); -- 50
