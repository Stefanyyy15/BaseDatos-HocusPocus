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
("Disfraz de Zeus", "Disfraz del dios mitologico Zeus", 85.00, 1), -- 18
("Disfraz de cordero", "Simple disfraz de animal", 45.00, 1), -- 19
("Disfraz de iron-man", "Disfraz de ironman el superheroe de Marvel", 25.00, 1), -- 20
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

("Antifaz de carnaval", "Antifaz colorido para festivales y carnavales", 10.00, 3), -- 51
("Sombrero de pirata", "Sombrero negro clásico de pirata con detalles dorados", 15.00, 3), -- 52
("Sombrero de vaquero", "Sombrero de vaquero clásico con cinta", 12.00, 3), -- 53
("Capa de vampiro", "Capa negra con forro rojo, ideal para vampiros", 30.00, 3), -- 54
("Capa roja de superhéroe", "Capa roja brillante para superhéroes", 28.00, 3), -- 55
("Diadema de unicornio", "Diadema con cuerno de unicornio", 11.00, 3), -- 56
("Capa de mago", "Capa negra de mago con estrellas doradas", 32.00, 3), -- 57
("Diadema de flores", "Diadema decorada con flores coloridas", 15.00, 3), -- 58
("Cinturón de guerrero", "Cinturón de cuero para guerreros", 20.00, 3), -- 59
("Sombrero de doctor", "Sombrero de doctor clásico", 10.00, 3), -- 60
("Capa de superhéroe", "Capa brillante de superhéroe", 25.00, 3), -- 61
("Gorro de elfo", "Gorro verde de elfo con orejas", 9.00, 3), -- 62
("Máscara de dragón", "Máscara detallada de dragón para fiestas", 25.00, 3), -- 63
("Capa de princesa", "Capa brillante de princesa en tonos rosados", 27.00, 3), -- 64
("Sombrero de chef", "Sombrero blanco clásico de chef", 12.00, 3), -- 65
("Diadema de mariposa", "Diadema con alas de mariposa en colores vibrantes", 13.00, 3), -- 66
("Gafas de aviador", "Gafas clásicas de aviador con lentes oscuros", 18.00, 3), -- 67
("Cinturón de superhéroe", "Cinturón con emblema dorado de superhéroe", 22.00, 3), -- 68
("Máscara de zorro", "Máscara de zorro con detalles realistas", 19.00, 3), -- 69
("Varita mágica de estrella", "Varita mágica con estrella dorada en la punta", 10.00, 3), -- 70
("Peluca de sirena", "Peluca larga en tonos azules y verdes", 35.00, 3), -- 71
("Pañuelo pirata", "Pañuelo rojo con diseño de calavera", 8.00, 3), -- 72
("Faja de luchador", "Faja dorada para atuendos de luchador", 20.00, 3), -- 73
("Espada de juguete", "Espada de plástico con empuñadura dorada", 15.00, 3), -- 74
("Tatuajes temporales de calavera", "Tatuajes temporales con diseños de calaveras", 5.00, 3), -- 75
("Bolso de unicornio", "Bolso con diseño de unicornio", 22.00, 3), -- 76
("Collar de perlas falsas", "Collar largo de perlas falsas blancas", 14.00, 3), -- 77
("Casco de vikingo", "Casco con cuernos estilo vikingo", 20.00, 3), -- 78
("Orejas de gato", "Diadema con orejas de gato negras y rosas", 10.00, 3), -- 79
("Botas de vaquero", "Botas marrones de vaquero con detalles", 40.00, 3), -- 80
("Camisa de superhéroe", "Camisa con emblema de superhéroe en el pecho", 25.00, 3), -- 81
("Chaleco de cazador", "Chaleco camuflado estilo cazador", 30.00, 3), -- 82
("Guantes de esqueleto", "Guantes negros con diseño de esqueleto blanco", 12.00, 3), -- 83
("Falda de bailarina", "Falda de tul rosada para disfraces de bailarina", 18.00, 3), -- 84
("Gorro de mago", "Gorro cónico negro con estrellas doradas", 14.00, 3), -- 85
("Collar de bruja", "Collar con colgante de bruja y cadena negra", 9.00, 3), -- 86
("Brazalete de guerrero", "Brazalete de cuero con detalles metálicos", 16.00, 3), -- 87
("Mochila de superhéroe", "Mochila roja con diseño de superhéroe", 20.00, 3), -- 88
("Ropa interior temática de superhéroe", "Conjunto de ropa interior temática de superhéroe", 15.00, 3), -- 89
("Cascos de astronauta", "Casco blanco con visera transparente estilo astronauta", 30.00, 3), -- 90
("Diadema con orejas de conejo", "Diadema con orejas de conejo rosadas", 8.00, 3), -- 91
("Sombrero de vaquero para niños", "Sombrero de vaquero marrón para niños", 10.00, 3), -- 92
("Capa de ninja", "Capa negra estilo ninja con capucha", 24.00, 3), -- 93
("Faja de superhéroe", "Faja de tela brillante estilo superhéroe", 12.00, 3), -- 94
("Gafas de sol estilo retro", "Gafas de sol con marco grande estilo retro", 18.00, 3), -- 95
("Varita mágica con luz", "Varita mágica con luz brillante en la punta", 15.00, 3), -- 96
("Sombrero de bruja", "Sombrero negro puntiagudo estilo bruja", 14.00, 3), -- 97
("Botas de pirata", "Botas negras de pirata con detalles dorados", 35.00, 3), -- 98
("Pañuelo de vaquero", "Pañuelo rojo con diseño clásico de vaquero", 6.00, 3), -- 99
("Bata de científico", "Bata blanca estilo científico con bolsillos", 25.00, 3), -- 100

("Sombra de ojos brillante", "Paleta de sombras de ojos en tonos vibrantes", 22.00, 2), -- 101
("Sombra de ojos mate", "Paleta de sombras mate en tonos neutros", 20.00, 2), -- 102
("Sombra de ojos metálica", "Sombra de ojos metálica para un look glamuroso", 27.00, 2), -- 103
("Sombra de ojos en crema", "Sombra de ojos en crema para una aplicación fácil", 25.00, 2), -- 104
("Delineador líquido", "Delineador líquido de larga duración", 15.00, 2), -- 105
("Delineador en gel", "Delineador en gel para un acabado suave", 18.00, 2), -- 106
("Labial mate", "Labial mate en varios colores", 18.00, 2), -- 107
("Labial brillante", "Labial brillante para un acabado luminoso", 17.00, 2), -- 108
("Labial de larga duración", "Labial de larga duración en tonos intensos", 20.00, 2), -- 109
("Pintura facial", "Pintura facial para crear diseños y personajes", 20.00, 2), -- 110
("Glitter facial", "Glitter para decorar el rostro y cuerpo", 12.00, 2), -- 111
("Maquillaje en crema", "Maquillaje en crema de alta cobertura", 25.00, 2), -- 112
("Pintura de cuerpo", "Pintura para crear diseños en el cuerpo", 30.00, 2), -- 113
("Rímel waterproof", "Rímel resistente al agua para mayor duración", 20.00, 2), -- 114
("Gloss labial", "Gloss labial para un brillo adicional", 14.00, 2), -- 115
("Lápiz de cejas", "Lápiz para definir las cejas con precisión", 16.00, 2), -- 116
("Lápiz labial retractable", "Lápiz labial retractable en colores vibrantes", 19.00, 2), -- 117
("Blush en crema", "Blush en crema para un acabado natural", 19.00, 2), -- 118
("Spray fijador de maquillaje", "Spray fijador para mantener el maquillaje en su lugar", 21.00, 2), -- 119
("Paleta de contorno", "Paleta de contorno para definir el rostro", 28.00, 2), -- 120
("Brochas de maquillaje", "Set de brochas para aplicar maquillaje", 35.00, 2), -- 121
("Sombra de ojos en tonos pastel", "Sombra de ojos en tonos suaves y delicados", 23.00, 2), -- 122
("Sombra de ojos holográfica", "Sombra de ojos con acabado holográfico brillante", 30.00, 2), -- 123
("Delineador resistente al agua", "Delineador de ojos resistente al agua para larga duración", 19.00, 2), -- 124
("Labial en barra", "Labial en barra para una aplicación fácil", 17.00, 2), -- 125
("Labial líquido", "Labial líquido con acabado mate", 20.00, 2), -- 126
("Glitter en gel", "Glitter en gel fácil de aplicar y de larga duración", 14.00, 2), -- 127
("Maquillaje en polvo", "Maquillaje compacto en polvo de cobertura media", 22.00, 2), -- 128
("Pintura facial metálica", "Pintura facial con acabado metálico", 25.00, 2), -- 129
("Rímel voluminoso", "Rímel para dar volumen extra a las pestañas", 21.00, 2), -- 130
("Gloss labial volumizador", "Gloss labial que da volumen y brillo", 15.00, 2), -- 131
("Lápiz de cejas waterproof", "Lápiz para cejas resistente al agua", 18.00, 2), -- 132
("Blush en polvo", "Blush en polvo para un acabado mate", 19.00, 2), -- 133
("Spray fijador mate", "Spray fijador de maquillaje con acabado mate", 22.00, 2), -- 134
("Corrector líquido", "Corrector de alta cobertura en formato líquido", 17.00, 2), -- 135
("Base de maquillaje líquida", "Base de maquillaje líquida de larga duración", 28.00, 2), -- 136
("Iluminador en polvo", "Iluminador en polvo para un brillo sutil", 24.00, 2), -- 137
("Iluminador en crema", "Iluminador en crema para un acabado radiante", 26.00, 2), -- 138
("Esponjas para aplicar base", "Esponjas suaves para aplicar base de maquillaje", 10.00, 2), -- 139
("Paleta de rubor", "Paleta de rubores en tonos cálidos", 29.00, 2), -- 140
("Tinte para labios", "Tinte para labios de larga duración", 16.00, 2), -- 141
("Pestañas postizas naturales", "Pestañas postizas con un look natural", 12.00, 2), -- 142
("Pestañas postizas dramáticas", "Pestañas postizas para un look dramático", 14.00, 2), -- 143
("Pegamento para pestañas", "Pegamento transparente para pestañas postizas", 8.00, 2), -- 144
("Uñas postizas decoradas", "Uñas postizas decoradas con diseño elegante", 15.00, 2), -- 145
("Polvo compacto translúcido", "Polvo compacto translúcido para fijar el maquillaje", 18.00, 2), -- 146
("Polvo bronceador", "Polvo bronceador para dar color al rostro", 22.00, 2), -- 147
("Brochas para ojos", "Set de brochas de precisión para sombras y delineado", 20.00, 2), -- 148
("Lápiz labial hidratante", "Lápiz labial con propiedades hidratantes", 17.00, 2), -- 149
("Base de maquillaje en polvo", "Base de maquillaje en polvo para cobertura ligera", 24.00, 2), -- 150

("Mantel de fantasma", "Mantel tematico de fantasma", 15.00, 4), -- 151
("Mantel del extraño mundo de jack", "Mantel basado en la pelicula del extraño mundo de jack", 10.00, 4), -- 152
("Luces led naranjas", "Luces led naranjas para decoracion", 12.00, 4), -- 153
("Poster de los cazafantasmas", "Poster de la pelicula de los cazafantasmas", 5.00, 4), -- 154
("Poster de bettlejuice", "Poster de la pelicula bettlejuice", 2.00, 4), -- 155
("Estanteria de murcielagos", "Estanteria en madera de murcielagos", 15.00, 4), -- 156
("Mural de castillo antiguo", "Mural de plastico para casas", 20.00, 4), -- 157
("Mesa de comidas de calabazas", "Mesa para comida con calabazas impresas", 60.00, 4), -- 158
("Globos de calaveras", "Globos con calaveras impresas", 5.00, 4), -- 159
("Alfombra roja", "Alfombra de aladin", 15.00, 4), -- 160
("Mantel de telarañas", "Mantel con diseño de telarañas para cenas temáticas", 12.00, 4), -- 161
("Letrero luminoso de neón", "Letrero de neón con mensaje 'Happy Halloween'", 20.00, 4), -- 162
("Cortinas de sangre falsa", "Cortinas decoradas con salpicaduras de sangre", 15.00, 4), -- 163
("Luces led en forma de calabaza", "Luces led en forma de pequeñas calabazas", 18.00, 4), -- 164
("Caldero de bruja", "Caldero decorativo para usar como centro de mesa", 22.00, 4), -- 165
("Pared temática de castillo encantado", "Panel decorativo para transformar paredes en castillos", 25.00, 4), -- 166
("Estantería de lápidas", "Estantería en forma de lápidas para libros o decoraciones", 30.00, 4), -- 167
("Mesa con patas de araña", "Mesa de centro con patas que simulan arañas", 45.00, 4), -- 168
("Mural de mansión embrujada", "Mural gigante que muestra una mansión embrujada", 50.00, 4), -- 169
("Adornos colgantes de calaveras", "Conjunto de calaveras colgantes fosforescentes", 12.00, 4), -- 170
("Caja decorativa con esqueletos", "Caja para almacenar dulces con diseño de esqueletos", 8.00, 4), -- 171
("Ramas con luces led", "Ramas decorativas con pequeñas luces led integradas", 15.00, 4), -- 172
("Poster de la luna llena", "Poster con una ilustración de luna llena en noche oscura", 7.00, 4), -- 173
("Cartel de bienvenida espeluznante", "Cartel con la frase 'Cuidado, entrada prohibida'", 5.00, 4), -- 174
("Globos con forma de fantasmas", "Globos con forma tridimensional de fantasmas", 9.00, 4), -- 175
("Alfombra de cráneos", "Alfombra pequeña con impresión de cráneos y huesos", 25.00, 4), -- 176
("Candelabro antiguo oxidado", "Candelabro decorativo con aspecto de óxido envejecido", 40.00, 4), -- 177
("Decoración de ventanas de telarañas", "Redes de telarañas para colocar en ventanas", 10.00, 4), -- 178
("Frascos de pócimas mágicas", "Frascos decorativos con etiquetas de pócimas mágicas", 12.00, 4), -- 179
("Mantel de gatos negros", "Mantel con diseño de gatos negros en diversas posiciones", 14.00, 4), -- 180
("Letrero de calaveras cruzadas", "Letrero metálico con calaveras cruzadas", 18.00, 4), -- 181
("Cortinas de hojas otoñales", "Cortinas con impresión de hojas otoñales en tonos oscuros", 16.00, 4), -- 182
("Luces led en forma de huesos", "Cadena de luces led con pequeñas figuras de huesos", 20.00, 4), -- 183
("Búho decorativo de cerámica", "Figura decorativa de búho para mesas o estanterías", 25.00, 4), -- 184
("Pared de castillo medieval", "Panel de pared decorativo con ladrillos estilo medieval", 35.00, 4), -- 185
("Estantería de ataúd", "Estantería en forma de ataúd vertical para libros o decoraciones", 50.00, 4), -- 186
("Mesa en forma de lápida", "Mesa pequeña con tapa en forma de lápida", 65.00, 4), -- 187
("Mural de noche de luna llena", "Mural gigante con una escena nocturna de luna llena", 55.00, 4), -- 188
("Adornos colgantes de ojos", "Ojos colgantes de plástico para una decoración terrorífica", 15.00, 4), -- 189
("Caja decorativa con vampiros", "Caja decorativa con ilustraciones de vampiros", 10.00, 4), -- 190
("Hojas secas artificiales", "Hojas artificiales con aspecto seco para decoraciones", 8.00, 4), -- 191
("Poster de Frankenstein", "Poster clásico de la película Frankenstein", 5.00, 4), -- 192
("Cartel de advertencia No pasar", "Cartel decorativo que advierte No pasar", 7.00, 4), -- 193
("Globos en forma de araña", "Globos decorados con figuras de arañas", 8.00, 4),  -- 194
("Alfombra en forma de murciélago", "Alfombra decorativa con diseño de murciélago", 22.00, 4), -- 195
("Espejo con marco de cráneos", "Espejo decorativo con marco de cráneos en relieve", 35.00, 4), -- 196
("Decoración de ventanas con fantasmas", "Ventanas decorativas con fantasmas translúcidos", 12.00, 4), -- 197
("Candelabro en forma de manos esqueléticas", "Candelabro con diseño de manos esqueléticas sosteniendo las velas", 28.00, 4), -- 198
("Señalizacion casa embrujada", "Cartel de señalización que indica una Casa embrujada", 6.00, 4), -- 199
("Tarro con calabazas en miniatura", "Tarro decorativo con mini calabazas para mesa", 10.00, 4); -- 200

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
(15.2, "m", 151, 1), -- 1
(10.2, "m", 152, 1), -- 2
(10, "m", 153, 4), -- 3
(25.3, "cm", 154, 13), -- 4
(25.4, "cm", 155, 13), -- 5
(5.2, "m", 156, 7), -- 6
(2.1, "m", 157, 9), -- 7
(7.2, "m", 158, 8), -- 8
(2.1, "cm", 159, 15), -- 9
(4.6, "m", 160, 16), -- 10
(15.2, "m", 161, 1), -- 11
(25.1, "cm", 162, 2), -- 12
(1.1, "m", 163, 3), -- 13
(1.2, "m", 164, 4), -- 14
(4.2, "m", 165, 5), -- 15
(2, "m", 166, 6), -- 16
(1.5, "m", 167, 7), -- 17
(5.2, "m", 168, 8), -- 18
(12.1, "m", 169, 9), -- 19
(5.3, "cm", 170, 10), -- 20
(12.1, "cm", 171, 11), -- 21
(5, "m", 172, 12), -- 22
(2.5, "m", 173, 13), -- 23
(3.8, "cm", 174, 14), -- 24
(4.2, "m", 175, 15), -- 25
(3.3, "cm", 176, 16), -- 26
(3.8, "m", 177, 17), -- 27
(4.5, "m", 178, 18), -- 28
(8.2, "cm", 179, 5), -- 29
(12.3, "cm", 180, 1), -- 30
(25.4, "cm", 181, 2), -- 31
(15.2, "cm", 182, 3), -- 32
(8.2, "m", 183, 4), -- 33
(2.5, "m", 184, 5), -- 34
(24.5, "cm", 185, 6), -- 35
(35.2, "cm", 186, 7), -- 36
(5.6, "m", 187, 8), -- 37
(3.7, "m", 188, 9), -- 38
(5.4, "m", 189, 10), -- 39
(15.7, "cm", 190, 11), -- 40
(21.5, "cm", 191, 12), -- 41
(23,"m", 192, 13), -- 42
(2.8, "m", 193, 14), -- 43
(3.8, "m", 194, 15), -- 44
(5.7, "cm", 195, 16), -- 45
(24.3, "cm", 196, 17), -- 46
(12.5, "cm", 197, 18), -- 47
(12.9, "cm", 198, 19), -- 48
(24.2, "cm", 199, 20), -- 49
(8.5, "m", 200, 21); -- 50

INSERT INTO disfraces(id_producto, id_subcategoria, talla, genero, precio_alquiler) VALUES
(1, 1, "s", "hombre", 30.00), -- 1
(2, 2, "xs", "mujer", 30.00), -- 2
(3, 7, "m", "hombre", 30.00), -- 3
(4, 6, "l", "unisex", 30.00), -- 4
(5, 11, "xl", "unisex", 30.00), -- 5
(6, 1, "s", "unisex", 30.00), -- 6
(7, 1, "s", "mujer", 30.00), -- 7
(8, 6, "l", "hombre", 30.00), -- 8
(9, 12, "m", "hombre", 30.00), -- 9
(10, 13, "m", "unisex", 30.00), -- 10
(11, 5, "s", "hombre", 30.00), -- 11
(12, 9, "m", "mujer", 30.00), -- 12
(13, 13, "xl", "mujer", 30.00), -- 13
(14, 8, "xl", "unisex", 30.00), -- 14
(15, 16, "s", "unisex", 30.00), -- 15
(16, 12, "xs", "hombre", 30.00), -- 16
(17, 13, "l", "mujer", 30.00), -- 17
(18, 13, "l", "hombre", 30.00), -- 18
(19, 8, "s", "unisex", 30.00), -- 19
(20, 1, "m", "unisex", 30.00), -- 20
(21, 2, "xs", "mujer", 30.00), -- 21
(22, 5, "l", "hombre", 30.00), -- 22
(23, 4, "l", "hombre", 30.00), -- 23
(24, 8, "s", "unisex", 30.00), -- 24
(25, 10, "l", "hombre", 30.00), -- 25
(26, 8, "l", "unisex", 30.00), -- 26
(27, 10, "m", "hombre", 30.00), -- 27
(28, 8, "l", "mujer", 30.00), -- 28
(29, 4, "xl", "hombre", 40.00), -- 29
(30, 6, "s", "mujer", 30.00), -- 30
(31, 7, "m", "hombre", 40.00), -- 31
(32, 9, "xl", "unisex", 30.00), -- 32
(33, 4, "xl", "hombre", 30.00), -- 33
(34, 4, "s", "hombre", 30.00), -- 34
(35, 7, "xl", "mujer", 30.00), -- 35
(36, 16, "m", "unisex", 30.00), -- 36
(37, 4, "xl", "hombre", 40.00), -- 37
(38, 4, "xl", "hombre", 40.00), -- 38
(39, 14, "l", "hombre", 40.00), -- 39
(40, 13, "l", "unisex", 30.00), -- 40
(41, 14, "s", "hombre", 30.00), -- 41
(42, 15, "m", "unisex", 30.00), -- 42
(43, 9, "xs", "mujer", 30.00), -- 43
(44, 7, "s", "hombre", 30.00), -- 44
(45, 5, "l", "unisex", 30.00), -- 45
(46, 5, "s", "mujer", 30.00), -- 46
(47, 7, "l", "hombre", 30.00), -- 47
(48, 14, "s", "hombre", 30.00), -- 48
(49, 5, "s", "hombre", 30.00), -- 49
(50, 7, "m", "hombre", 30.00); -- 50

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

INSERT INTO accesorios (id_tipo_accesorio, id_producto) VALUES
(7, 51), -- 1
(3, 52), -- 2
(3, 53), -- 3
(2, 54), -- 4
(2, 55), -- 5
(4, 56), -- 6
(2, 57), -- 7
(4, 58), -- 8
(6, 59), -- 9
(3, 60), -- 10
(2, 61), -- 12
(27, 62), -- 12
(1, 63), -- 13
(2, 64), -- 14
(3, 65), -- 15
(4, 66), -- 16
(5, 67), -- 17
(6, 68), -- 18
(1, 69), -- 19
(8, 70), -- 20
(9, 71), -- 21
(10, 72), -- 22
(11, 73), -- 23
(12, 74), -- 24
(13, 75), -- 25
(14, 76), -- 26
(15, 77), -- 27
(16, 78), -- 28
(17, 79), -- 29
(18, 80), -- 30
(19, 81), -- 31
(21, 82), -- 32
(23, 83), -- 33
(26, 84), -- 34
(27, 85), -- 35
(24, 86), -- 36
(26, 87), -- 37
(20, 88), -- 38
(21, 89), -- 39
(16, 90), -- 40
(4, 91), -- 41
(3, 92), -- 42
(2, 93), -- 43
(11, 94), -- 44
(5, 95), -- 45
(8, 96), -- 46
(3, 97), -- 47
(18, 98), -- 48
(10, 99), -- 49
(22, 100); -- 50

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

INSERT INTO maquillajes (marca, medida ,id_producto, id_tipo_maquillaje) VALUES 
("Maybelline", "gr", 101, 1), -- 1
("L'Oreal", "ml", 102, 1), -- 2
("Urban Decay", "kg", 103, 1), -- 3
("NYX", "gr", 104, 1), -- 4
("Maybelline", "ml", 105, 2), -- 5
("L'Oreal", "kg", 106, 2), -- 6
("MAC", "gr", 107, 3), -- 7
("Revlon", "ml", 108, 3), -- 8
("Urban Decay", "kg", 109, 3), -- 9
("Kryolan", "gr", 110, 4), -- 10
("Too Faced", "ml", 111, 5), -- 11
("MAC", "kg", 112, 13), -- 12
("Kryolan", "gr", 113, 4), -- 13
("L'Oreal", "ml", 114, 6), -- 14
("Fenty Beauty", "kg", 115, 7), -- 15
("Benefit", "gr", 116, 8), -- 16
("MAC", "ml", 117, 3), -- 17
("Nars", "kg", 118, 9), -- 18
("Urban Decay", "gr", 119, 10), -- 19
("Too Faced", "ml", 120, 11), -- 20
("Real Techniques", "kg", 121, 12), -- 21
("Maybelline", "gr", 122, 1), -- 22
("L'Oreal", "ml", 123, 1), -- 23
("Urban Decay", "kg", 124, 2), -- 24
("NYX", "gr", 125, 3), -- 25
("Maybelline", "ml", 126, 3), -- 26
("L'Oreal", "kg", 127, 5), -- 27
("MAC", "gr", 128, 13), -- 28
("Revlon", "ml", 129, 4), -- 29
("Urban Decay", "kg", 130, 6), -- 30
("Kryolan", "gr", 131, 7), -- 31
("Too Faced", "ml", 132, 8), -- 32
("MAC", "kg", 133, 9), -- 33
("Kryolan", "gr", 134, 10), -- 34
("L'Oreal", "ml", 135, 14), -- 35
("Fenty Beauty", "kg", 136, 13), -- 36
("Benefit", "gr", 137, 16), -- 37
("MAC", "ml", 138, 16), -- 38
("Nars", "kg", 139, 17), -- 39
("Urban Decay", "gr", 140, 11), -- 40
("Too Faced", "ml", 141, 3), -- 41
("Real Techniques", "kg", 142, 19), -- 42
("Maybelline", "gr", 143, 19), -- 43
("L'Oreal", "ml", 144, 20), -- 44
("Urban Decay", "kg", 145, 21), -- 45
("NYX", "gr", 146, 15), -- 46
("Maybelline", "ml", 147, 15), -- 47
("L'Oreal", "kg", 148, 12), -- 48
("MAC", "gr", 149, 3), -- 49
("Revlon", "ml", 150, 13); -- 50

select * from accesorios;

INSERT INTO inventario(stock, id_producto) VALUES
(78, 1),
(65, 2),
(45, 3),
(88, 4),
(32, 5),
(55, 6),
(92, 7),
(71, 8),
(54, 9),
(63, 10),
(49, 11),
(35, 12),
(47, 13),
(39, 14),
(82, 15),
(94, 16),
(30, 17),
(74, 18),
(61, 19),
(80, 20),
(38, 21),
(56, 22),
(68, 23),
(91, 24),
(73, 25),
(87, 26),
(50, 27),
(96, 28),
(67, 29),
(59, 30),
(88, 31),
(49, 32),
(75, 33),
(43, 34),
(62, 35),
(84, 36),
(70, 37),
(30, 38),
(33, 39),
(90, 40),
(66, 41),
(38, 42),
(81, 43),
(92, 44),
(64, 45),
(77, 46),
(39, 47),
(57, 48),
(85, 49),
(46, 50),
(61, 51),
(78, 52),
(83, 53),
(88, 54),
(72, 55),
(95, 56),
(53, 57),
(49, 58),
(80, 59),
(38, 60),
(68, 61),
(74, 62),
(63, 63),
(82, 64),
(36, 65),
(77, 66),
(31, 67),
(90, 68),
(40, 69),
(54, 70),
(80, 71),
(65, 72),
(57, 73),
(73, 74),
(86, 75),
(48, 76),
(92, 77),
(75, 78),
(60, 79),
(33, 80),
(84, 81),
(70, 82),
(78, 83),
(61, 84),
(30, 85),
(64, 86),
(52, 87),
(43, 88),
(79, 89),
(91, 90),
(34, 91),
(67, 92),
(49, 93),
(96, 94),
(72, 95),
(88, 96),
(54, 97),
(66, 98),
(39, 99),
(58, 100),
(76, 101),
(84, 102),
(42, 103),
(30, 104),
(72, 105),
(61, 106),
(66, 107),
(48, 108),
(30, 109),
(90, 110),
(39, 111),
(32, 112),
(81, 113),
(46, 114),
(38, 115),
(50, 116),
(70, 117),
(78, 118),
(54, 119),
(60, 120),
(68, 121),
(45, 122),
(71, 123),
(99, 124),
(37, 125),
(48, 126),
(55, 127),
(62, 128),
(89, 129),
(30, 130),
(91, 131),
(70, 132),
(42, 133),
(67, 134),
(80, 135),
(55, 136),
(72, 137),
(69, 138),
(43, 139),
(59, 140),
(84, 141),
(92, 142),
(36, 143),
(30, 144),
(80, 145),
(69, 146),
(90, 147),
(38, 148),
(76, 149),
(50, 150),
(66, 151),
(35, 152),
(47, 153),
(61, 154),
(79, 155),
(31, 156),
(52, 157),
(88, 158),
(41, 159),
(74, 160),
(48, 161),
(56, 162),
(63, 163),
(70, 164),
(39, 165),
(59, 166),
(37, 167),
(82, 168),
(75, 169),
(40, 170),
(93, 171),
(66, 172),
(81, 173),
(54, 174),
(64, 175),
(38, 176),
(72, 177),
(96, 178),
(53, 179),
(30, 180),
(78, 181),
(67, 182),
(55, 183),
(46, 184),
(87, 185),
(73, 186),
(41, 187),
(39, 188),
(90, 189),
(84, 190),
(92, 191),
(61, 192),
(47, 193),
(37, 194),
(75, 195),
(68, 196),
(58, 197),
(50, 198),
(65, 199),
(32, 200);

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
('1012345706', 'Angélica', 'García', '1994-12-22', 'angelica.garcia@example.com', '3000123461', '2023-11-09', 'vendedor', 1550.00), -- 29 vendedor
('1012345707', 'Ricardo', 'Salinas', '1993-06-30', 'ricardo.salinas@example.com', '3001234562', '2023-11-10', 'cajero', 1200.00), -- 30
('1012345708', 'Felipe', 'López', '1986-04-05', 'felipe.lopez@example.com', '3002345674', '2023-11-11', 'bodega', 1350.00), -- 31
('1012345709', 'Paola', 'Gómez', '1995-03-14', 'paola.gomez@example.com', '3003456785', '2023-11-12', 'oficios varios', 1150.00), -- 32
('1012345710', 'Andrés', 'Castillo', '1982-08-24', 'andres.castillo@example.com', '3004567896', '2023-11-13', 'vendedor', 1600.00), -- 33 vendedor
('1012345711', 'Liliana', 'Cruz', '1990-11-09', 'liliana.cruz@example.com', '3005678907', '2023-11-14', 'cajero', 1250.00), -- 34
('1012345712', 'Hernando', 'Rojas', '1989-05-11', 'hernando.rojas@example.com', '3006789018', '2023-11-15', 'bodega', 1300.00), -- 35
('1012345713', 'Jessica', 'Córdoba', '1991-02-19', 'jessica.cordoba@example.com', '3007890129', '2023-11-16', 'oficios varios', 1150.00), -- 36
('1012345714', 'Eduardo', 'Salazar', '1985-07-28', 'eduardo.salazar@example.com', '3008901230', '2023-11-17', 'vendedor', 1500.00), -- 37 vendedor
('1012345715', 'Natalia', 'Valenzuela', '1996-03-07', 'natalia.valenzuela@example.com', '3009012351', '2023-11-18', 'cajero', 1200.00), -- 38
('1012345716', 'Julián', 'Salcedo', '1994-06-21', 'julian.salcedo@example.com', '3000123463', '2023-11-19', 'bodega', 1300.00), -- 39
('1012345717', 'Cecilia', 'Quintero', '1990-01-29', 'cecilia.quintero@example.com', '3001234564', '2023-11-20', 'oficios varios', 1150.00), -- 40
('1012345718', 'Gabriel', 'Agudelo', '1988-09-03', 'gabriel.agudelo@example.com', '3002345675', '2023-11-21', 'vendedor', 1550.00), -- 41 vendedor
('1012345719', 'Lucía', 'Morrison', '1992-02-15', 'lucia.morrison@example.com', '3003456786', '2023-11-22', 'cajero', 1200.00), -- 42
('1012345720', 'Oscar', 'Téllez', '1986-11-10', 'oscar.tellez@example.com', '3004567897', '2023-11-23', 'bodega', 1350.00), -- 43
('1012345721', 'Santiago', 'López', '1993-04-16', 'santiago.lopez@example.com', '3006789019', '2023-11-24', 'cajero', 1200.00), -- 44
('1012345722', 'Manuela', 'Ríos', '1995-07-22', 'manuela.rios@example.com', '3007890120', '2023-11-25', 'bodega', 1300.00), -- 45
('1012345723', 'Diego', 'Pérez', '1987-08-10', 'diego.perez@example.com', '3008901231', '2023-11-26', 'oficios varios', 1150.00), -- 46
('1012345724', 'Nadia', 'Castañeda', '1994-05-05', 'nadia.castaneda@example.com', '3009012342', '2023-11-27', 'vendedor', 1600.00), -- 47 vendedor
('1012345725', 'Rafael', 'Salas', '1989-12-19', 'rafael.salas@example.com', '3000123464', '2023-11-28', 'cajero', 1250.00), -- 48
('1012345726', 'Ariana', 'Serrano', '1991-10-30', 'ariana.serrano@example.com', '3001234565', '2023-11-29', 'bodega', 1300.00), -- 49
('1012345727', 'Samuel', 'López', '1990-09-13', 'samuel.lopez@example.com', '3002345676', '2023-11-30', 'oficios varios', 1150.00); -- 50


INSERT INTO clientes (cedula, nombres, apellidos, email, telefono, fecha_nacimiento) VALUES
('1023456789', 'Laura', 'Santos', 'laura.santos@example.com', '3111234567', '1995-05-20'), -- 1
('1023456790', 'Jorge', 'Cárdenas', 'jorge.cardenas@example.com', '3112345678', '1992-08-15'), -- 2
('1023456791', 'Camila', 'Naranjo', 'camila.naranjo@example.com', '3113456789', '1994-02-28'), -- 3
('1023456792', 'Sebastián', 'Ocampo', 'sebastian.ocampo@example.com', '3114567890', '1988-07-10'), -- 4
('1023456793', 'Sofía', 'Rodríguez', 'sofia.rodriguez@example.com', '3115678901', '1993-11-05'), -- 5
('1023456794', 'Diana', 'Melo', 'diana.melo@example.com', '3116789012', '1991-01-20'), -- 6
('1023456795', 'Andrés', 'Ceballos', 'andres.ceballos@example.com', '3117890123', '1989-06-30'), -- 7
('1023456796', 'Natalia', 'Paz', 'natalia.paz@example.com', '3118901234', '1996-04-13'), -- 8
('1023456797', 'Diego', 'Hernández', 'diego.hernandez@example.com', '3119012345', '1987-10-18'), -- 9
('1023456798', 'Valentina', 'González', 'valentina.gonzalez@example.com', '3110123456', '1992-09-25'), -- 10
('1023456799', 'Mauricio', 'Velez', 'mauricio.velez@example.com', '3111234560', '1990-12-03'), -- 11
('1023456800', 'Lina', 'Márquez', 'lina.marquez@example.com', '3112345671', '1994-03-14'), -- 12
('1023456801', 'Fernando', 'Castro', 'fernando.castro@example.com', '3113456782', '1985-05-05'), -- 13
('1023456802', 'Melisa', 'Vargas', 'melisa.vargas@example.com', '3114567893', '1988-08-30'), -- 14
('1023456803', 'César', 'Salas', 'cesar.salas@example.com', '3115678904', '1993-07-17'), -- 15
('1023456804', 'Claudia', 'Rivas', 'claudia.rivas@example.com', '3116789015', '1995-06-12'), -- 16
('1023456805', 'Gabriel', 'Alvarez', 'gabriel.alvarez@example.com', '3117890126', '1990-11-04'), -- 17
('1023456806', 'Sara', 'Tobón', 'sara.tobon@example.com', '3118901237', '1991-03-30'), -- 18
('1023456807', 'Esteban', 'Jaramillo', 'esteban.jaramillo@example.com', '3119012348', '1988-09-15'), -- 19
('1023456808', 'Paola', 'Pérez', 'paola.perez@example.com', '3110123459', '1994-01-09'), -- 20
('1023456809', 'Martín', 'Díaz', 'martin.diaz@example.com', '3112345673', '1995-02-15'), -- 21
('1023456810', 'Camilo', 'Torres', 'camilo.torres@example.com', '3113456784', '1987-06-25'), -- 22
('1023456811', 'Angela', 'Mora', 'angela.mora@example.com', '3114567895', '1992-12-05'), -- 23
('1023456812', 'Felipe', 'Gutiérrez', 'felipe.gutierrez@example.com', '3115678906', '1991-03-10'), -- 24
('1023456813', 'Verónica', 'Cruz', 'veronica.cruz@example.com', '3116789017', '1989-07-21'), -- 25
('1023456814', 'Alejandro', 'Rincón', 'alejandro.rincon@example.com', '3117890128', '1994-09-16'), -- 26
('1023456815', 'María', 'Serrano', 'maria.serrano@example.com', '3118901239', '1988-04-30'), -- 27
('1023456816', 'Juliana', 'Paniagua', 'juliana.paniagua@example.com', '3119012340', '1993-05-15'), -- 28
('1023456817', 'Diego', 'Cardona', 'diego.cardona@example.com', '3110123451', '1990-08-24'), -- 29
('1023456818', 'Luisa', 'Montoya', 'luisa.montoya@example.com', '3111234598', '1985-01-05'), -- 30
('1023456819', 'Fernando', 'Salazar', 'fernando.salazar@example.com', '3112345687', '1992-10-10'), -- 31
('1023456820', 'Estefanía', 'Gómez', 'estefania.gomez@example.com', '3113456786', '1996-02-20'), -- 32
('1023456821', 'Cristian', 'Vasquez', 'cristian.vasquez@example.com', '3114567894', '1989-11-11'), -- 33
('1023456822', 'Tatiana', 'Palacios', 'tatiana.palacios@example.com', '3115678908', '1994-12-12'), -- 34
('1023456823', 'Andrés', 'García', 'andres.garcia@example.com', '3116789019', '1995-03-18'), -- 35
('1023456824', 'Martha', 'Ceballos', 'martha.ceballos@example.com', '3117890120', '1990-08-21'), -- 36
('1023456825', 'Julio', 'Castro', 'julio.castro@example.com', '3118901231', '1991-05-30'), -- 37
('1023456826', 'Luz', 'Vélez', 'luz.velez@example.com', '3119012342', '1986-06-15'), -- 38
('1023456827', 'Berta', 'Ríos', 'berta.rios@example.com', '3110123453', '1988-10-05'), -- 39
('1023456828', 'Carlos', 'Mendoza', 'carlos.mendoza@example.com', '3111234562', '1992-09-19'), -- 40
('1023456829', 'Santiago', 'Marín', 'santiago.marin@example.com', '3112345675', '1987-01-11'), -- 41
('1023456830', 'Claudia', 'Figueroa', 'claudia.figueroa@example.com', '3113456783', '1993-04-25'), -- 42
('1005327319', 'Adrian', "Ustariz", 'dxniel7328@gmail.com', '3173109599', '2002-03-18'), -- 43
('1005327320', 'Sofia', 'Torres', 'sofia.torres@example.com', '3173109600', '1994-05-22'), -- 44
('1005327321', 'Felipe', 'Ramirez', 'felipe.ramirez@example.com', '3173109601', '1990-07-15'), -- 45
('1005327322', 'Camila', 'López', 'camila.lopez@example.com', '3173109602', '1995-09-08'), -- 46
('1005327323', 'Luis', 'Hernandez', 'luis.hernandez@example.com', '3173109603', '1988-12-12'), -- 47
('1005327324', 'Valentina', 'Pérez', 'valentina.perez@example.com', '3173109604', '1992-02-20'), -- 48
('1005327325', 'Diego', 'Mendoza', 'diego.mendoza@example.com', '3173109605', '1985-11-30'), -- 49
('1005327326', 'Natalia', 'Cordero', 'natalia.cordero@example.com', '3173109606', '1993-04-25'); -- 50

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
('El Oasis', 23), -- 49
('La Paz', 17 ); -- 50

insert into direcciones(id_cliente, tipo_via, direccion, indicaciones, codigo_postal, id_barrio) values
(1, 'carrera', '20#110-69', 'Torre 2 apto 206', '6840004', 50), -- 1
(2, 'calle', '45#23-56', 'Edificio Las Palmas', '110011', 1), -- 2
(3, 'diagonal', '12#56-89', 'Frente al parque', '500001', 2), -- 3
(4, 'transversal', '67#15-42', 'Casa esquinera', '760032', 3), -- 4
(5, 'carrera', '32#9-21', 'Piso 4, Apto 302', '080002', 4), -- 5
(6, 'calle', '23#56-78', 'Al lado del colegio', '130015', 5), -- 6
(7, 'diagonal', '45#67-23', 'Casa blanca', '540001', 6), -- 7
(8, 'transversal', '56#12-98', 'Edificio La Torre', '680003', 7), -- 8
(9, 'carrera', '89#21-36', 'Apto 301', '660004', 8), -- 9
(10, 'calle', '12#45-89', 'Conjunto Residencial san lorenzo', '470004', 9), -- 10
(11, 'diagonal', '98#76-32', 'Torre B Apto 403', '730005', 10), -- 11
(12, 'transversal', '67#21-87', 'Barrio San José', '170001', 11), -- 12
(13, 'carrera', '45#32-56', 'Finca El Paraiso', '410002', 12), -- 13
(14, 'calle', '23#56-43', 'Casa roja', '200003', 13), -- 14
(15, 'diagonal', '67#98-45', 'Frente a la plaza', '190001', 14), -- 15
(16, 'transversal', '12#34-67', 'Casa grande', '700001', 15), -- 16
(17, 'carrera', '56#78-90', 'Edificio Oasis', '230004', 16), -- 17
(18, 'calle', '21#56-78', 'Apto 502', '630001', 17), -- 18
(19, 'diagonal', '34#89-12', 'Apto 403', '661002', 18), -- 19
(20, 'transversal', '89#67-45', 'Torre 10', '150001', 19), -- 20
(21, 'carrera', '21#34-65', 'Casa color azul', '051051', 20), -- 21
(22, 'calle', '43#21-87', 'Apto 704', '880001', 21), -- 22
(23, 'diagonal', '12#34-56', 'Barrio El Centro', '440001', 22), -- 23
(24, 'transversal', '67#89-12', 'Casa blanca', '850001', 23), -- 24
(25, 'carrera', '45#32-78', 'Conjunto residencial mardel', '270002', 24), -- 25
(26, 'calle', '56#12-34', 'Apto 301', '880001', 25), -- 26
(27, 'diagonal', '89#21-34', 'Casa amarilla quemada', '910001', 26), -- 27
(28, 'transversal', '34#56-78', 'Finca Los Pinos', '500004', 27), -- 28
(29, 'carrera', '12#45-67', 'Torre 2 Apto 101', '520001', 28), -- 29
(30, 'calle', '67#21-89', 'Casa con jardín de girasoles', '763022', 29), -- 30
(31, 'diagonal', '43#56-21', 'Frente al parque', '763040', 30), -- 31
(32, 'transversal', '32#78-45', 'Edificio Las Brisas', '154001', 31), -- 32
(33, 'carrera', '45#12-67', 'Conjunto La Arboleda', '152001', 32), -- 33
(34, 'calle', '23#78-90', 'Apto 202', '687001', 33), -- 34
(35, 'diagonal', '67#32-54', 'Casa en esquina', '205010', 34), -- 35
(36, 'transversal', '12#89-34', 'Barrio El Centro', '470001', 35), -- 36
(37, 'carrera', '89#34-12', 'Casa color verde', '470010', 36), -- 37
(38, 'calle', '56#21-43', 'Edificio Las Torres', '860001', 37), -- 38
(39, 'diagonal', '32#45-67', 'Casa amarilla', '684041', 38), -- 39
(40, 'transversal', '23#78-90', 'Finca La Esperanza', '706010', 39), -- 40
(41, 'carrera', '56#12-34', 'Casa color rojo', '813010', 40), -- 41
(42, 'calle', '78#32-56', 'Torre 3 Apto 401', '540001', 41), -- 42
(43, 'diagonal', '45#12-89', 'Edificio Santa María', '111121', 42), -- 43
(44, 'transversal', '32#67-12', 'Casa frente a la plaza', '053840', 43), -- 44
(45, 'carrera', '12#45-98', 'Apto 101', '250251', 44), -- 45
(46, 'calle', '67#21-34', 'Edificio Panorama', '760003', 45), -- 46
(47, 'diagonal', '21#43-87', 'Casa con piscina', '170013', 46), -- 47
(48, 'transversal', '43#56-12', 'Apto 504', '250051', 47), -- 48
(49, 'carrera', '45#12-78', 'Torre 1 Apto 201', '6840001', 48), -- 49
(50, 'calle', '32#21-56', 'Casa blanca al lado de tienda', '762022', 49); -- 50

INSERT INTO usuarios(correo, contraseña, id_direccion) VALUES
('juanito12@gmail.com', 'cucarachasunidas', 1), -- 1
('beatrizOrtiz@gmail.com', 'contraseña123', 5), -- 2
('dxniel7328@gmail.com', 'Yosoyslerdenman2', 8), -- 3
('joseTinieblo@gmail.com', 'pepe331', 19), -- 4
('maicolmaluma@gmail.com', 'pritiboy45', 25), -- 5
('jessejoy@gmail.com', 'ladelamalasuerte22', 41), -- 6
('juanobanano@gmail.com', 'amoelfulvo', 15), -- 7
('juanito13@gmail.com', 'jamasvencidas', 9), -- 8
('julianbellaco@gmail.com', 'taylor1313', 1), -- 9
('arjona@gmail.com', 'fuistetudaniel', 20), -- 10
('marianapelirroja@gmail.com', 'amohombrescasados', 14), -- 11
('adrian2873@gmail.com', 'amoastefa15', 13), -- 12
('alberto@gmail.com', 'contraseña111', 14), -- 13
('rosamelano@gmail.com', 'qpongoaki', 17), -- 14
('luiscalvo@gmail.com', 'Yosoybatman3', 41), -- 15
('anagabriel@gmail.com', 'noqroqseamosamigos', 21), -- 16
('stefanyyy15@gmail.com', 'losodioatodos', 20), -- 17
('sofiachar@gmail.com', 'descendientestamo', 13), -- 18
('andreagomela@gmail.com', 'lokitajeje', 12), -- 19 
('jesus@gmail.com', "losamo", 11), -- 20
('michelleDayana@gmail.com', "3amamuerte", 11), -- 21
('esteban22@gmail.com', 'contraseñadificil', 40), -- 22
('camilacabello@gmail.com', 'solocriticasybesos', 12), -- 23
('lorettamartinez@gmail.com', 'vivaelamor', 3), -- 24
('pablitoperez@gmail.com', 'todoslosdias', 1), -- 25
('anita_nieves@gmail.com', 'risasydiversion', 27), -- 26
('juliancito99@gmail.com', 'felicidadplena', 30), -- 27
('catalinapinto@gmail.com', 'fiestasytacos', 46), -- 28
('ricardo_heroico@gmail.com', 'avengersforever', 26), -- 29
('marisol_2023@gmail.com', 'almaslibres', 16), -- 30
('fabiola_luna@gmail.com', 'entretenimientotal', 18), -- 31
('davidrodriguez@gmail.com', 'amordelbueno', 19), -- 32
('elena_gonzalez@gmail.com', 'pasionporlavida', 19), -- 33
('albertogarcia@gmail.com', 'chicosinromanticos', 27), -- 34
('vanessahart@gmail.com', 'sueñosyrealidad', 20), -- 35
('santiagocruz@gmail.com', 'risastotal', 24), -- 36
('diana_baez@gmail.com', 'momentosmagicos', 17), -- 37
('josephina2023@gmail.com', 'dameunabrazo', 4), -- 38
('nicolasalvador@gmail.com', 'caminosabiertos', 39), -- 39
('marcelafernandez@gmail.com', 'superalegria', 40), -- 40
('antonioquintero@gmail.com', 'somosfamilia', 41), -- 41
('claracabrera@gmail.com', 'luzdelmundo', 42), -- 42
('ricardoherrera@gmail.com', 'juntosporlavida', 43), -- 43
('patricia_diaz@gmail.com', 'sueñoscolorados', 44), -- 44
('sergioalonso@gmail.com', 'miaventura2023', 1), -- 45
('valentinajimenez@gmail.com', 'mimundomagico', 2), -- 46
('jaime_perez@gmail.com', 'felizcomounaava', 47), -- 47
('martinrojas@gmail.com', 'luzdetranquilidad', 48), -- 48
('adriana_morales@gmail.com', 'unavidaentera', 17), -- 49
('luisarmando@gmail.com', 'elcaminodelrey', 20); -- 50

insert into ventas (id_cliente, id_empleado, fecha_venta, descuento, total) values
(1, 1, '2022-02-18', 15, 100.00), -- 1 *
(4, 5, '2023-05-28', 10, 280.00), -- 2 *
(6, 9, '2024-04-15', 20, 43.00), -- 3 *
(2, 13, '2022-07-12', 20, 150.00), -- 4 *
(5, 17, '2023-08-23', 20, 330.00), -- 5 *
(8, 21, '2024-01-30', 20, 75.00), -- 6 *
(10, 25, '2022-03-01', 20, 220.00), -- 7 *
(12, 29, '2023-09-18', 10, 190.00), -- 8 *
(15, 33, '2022-06-24', 20, 120.00), -- 9 *
(18, 37, '2023-04-08', 25, 110.00), -- 10 *
(21, 41, '2024-02-14', 20, 65.00), -- 11 *
(23, 47, '2022-08-09', 20, 180.00), -- 12 *
(25, 1, '2023-11-21', 20, 300.00), -- 13 *
(27, 5, '2022-12-13', 25, 210.00), -- 14 *
(30, 9, '2024-01-05', 25, 95.00), -- 15 *
(33, 13, '2022-10-26', 20, 140.00), -- 16 *
(35, 17, '2023-02-28', 20, 330.00), -- 17 *
(38, 21, '2024-03-19', 20, 175.00), -- 18 *
(40, 25, '2022-05-03', 20, 200.00), -- 19 *
(42, 29, '2023-07-18', 20, 85.00), -- 20 *
(44, 33, '2024-04-23', 15, 160.00), -- 21 *
(46, 37, '2022-11-30', 4, 270.00), -- 22 *
(48, 41, '2023-09-10', 20, 120.00), -- 23 *
(50, 47, '2024-05-12', 10, 215.00), -- 24 *
(3, 1, '2022-06-22', 20, 250.00), -- 25 *
(9, 5, '2023-10-25', 15, 145.00), -- 26 *
(11, 9, '2024-03-28', 15, 90.00), -- 27 *
(14, 13, '2022-04-09', 30, 160.00), -- 28 *
(17, 17, '2023-01-14', 15, 110.00), -- 29 *
(20, 1, '2024-05-30', 20, 75.00), -- 30 *
(22, 1, '2022-11-11', 30, 100.00), -- 31 *
(24, 1, '2023-08-17', 20, 180.00), -- 32 *
(26, 5, '2024-02-24', 20, 135.00), -- 33 *
(28, 9, '2022-12-02', 20, 240.00), -- 34 *
(31, 9, '2023-06-27', 20, 280.00), -- 35 *
(34, 47, '2024-04-05', 25, 150.00), -- 36 *
(36, 29, '2022-05-15', 15, 75.00), -- 37 *
(39, 9, '2023-09-06', 30, 200.00), -- 38 *
(41, 1, '2024-03-30', 15, 125.00), -- 39 *
(43, 21, '2022-07-19', 25, 180.00), -- 40 *
(45, 21, '2023-02-23', 10, 10.00), -- 41 *
(47, 21, '2024-01-17', 25, 32.00), -- 42 *
(49, 5, '2022-08-31', 15, 15.00), -- 43 *
(50, 13, '2023-10-12', 15, 12.00), -- 44 *
(7, 1, '2024-05-22', 15, 18.00), -- 45 *
(13, 1, '2022-03-16', 15, 24.00), -- 46 *
(19, 3, '2023-04-19', 15, 10.00), -- 47 *
(16, 1, '2024-02-05', 30, 9.00), -- 48 *
(22, 1, '2023-02-05', 15, 85.00), -- 49 *
(2, 1, '2022-02-05', 15, 14.00); -- 50 *
INSERT INTO ventas_online(id_usuario, id_empleado, fecha_venta, descuento, total) VALUES
(15, 9, '2024-03-18', 20, 150.000), -- 1
(23, 1, '2023-10-24', 40, 300.000), -- 2
(33, 25, '2024-07-07', 10, 30.000), -- 3
(5, 13, '2023-11-21', 50, 400.000), -- 4
(22, 41, '2023-11-22', 5, 25.000), -- 5
(3, 21, '2024-05-16', 45, 145.000), -- 6
(23, 37, '2024-03-15', 13, 89.000), -- 7
(23, 41, '2024-06-29', 30, 77.000), -- 8
(44, 41, '2024-06-30', 22, 96.000), -- 9 
(37, 29, '2024-02-06', 10, 120.000), -- 10 
(18, 5, '2024-01-12', 25, 200.000),  -- 11
(27, 9, '2024-04-18', 15, 80.000),   -- 12
(36, 17, '2023-12-05', 40, 350.000), -- 13
(42, 25, '2024-07-15', 10, 125.000), -- 14
(12, 1, '2024-03-22', 35, 220.000),  -- 15
(7, 33, '2023-11-30', 50, 500.000),  -- 16
(9, 29, '2024-06-07', 30, 150.000),  -- 17
(14, 37, '2024-02-21', 5, 30.000),   -- 18
(3, 41, '2023-10-25', 20, 75.000),   -- 19
(19, 13, '2024-05-03', 45, 180.000), -- 20
(5, 17, '2024-04-12', 20, 95.000),   -- 21
(28, 9, '2024-02-28', 30, 140.000),  -- 22
(30, 25, '2023-12-19', 50, 400.000), -- 23
(11, 1, '2023-11-10', 35, 290.000),  -- 24
(6, 21, '2024-06-01', 10, 110.000),  -- 25
(48, 41, '2023-10-20', 15, 60.000),  -- 26
(10, 33, '2024-02-17', 5, 25.000),   -- 27
(35, 29, '2024-03-13', 25, 125.000), -- 28
(43, 5, '2024-06-14', 30, 145.000),  -- 29
(17, 9, '2023-10-11', 40, 320.000),  -- 30
(25, 37, '2024-05-21', 50, 450.000), -- 31
(39, 13, '2024-04-09', 35, 260.000), -- 32
(47, 17, '2023-12-23', 10, 100.000), -- 33
(26, 9, '2023-11-07', 20, 120.000),  -- 34
(13, 41, '2024-06-25', 15, 90.000),  -- 35
(20, 25, '2024-03-04', 50, 470.000), -- 36
(4, 21, '2023-12-18', 5, 40.000),    -- 37
(50, 5, '2024-05-10', 45, 280.000),  -- 38
(40, 9, '2024-06-16', 25, 190.000),  -- 39
(29, 17, '2023-11-26', 35, 310.000), -- 40
(8, 9, '2024-05-14', 10, 100.000),   -- 41
(15, 5, '2024-03-28', 20, 150.000),  -- 42
(46, 13, '2023-10-15', 25, 180.000), -- 43
(24, 25, '2024-04-05', 30, 200.000), -- 44
(2, 17, '2024-06-20', 50, 500.000),  -- 45
(38, 21, '2024-01-19', 35, 300.000), -- 46
(31, 37, '2023-12-07', 15, 125.000), -- 47
(32, 29, '2024-02-24', 5, 50.000),   -- 48
(21, 41, '2024-05-08', 40, 240.000), -- 49
(16, 33, '2024-06-11', 45, 275.000); -- 50

insert into detalles_ventas(id_venta, id_producto, cantidad, precio_unitario) values
(1, 15, 1, 70.00), -- 1 *
(1, 51, 10, 30.00), -- 2 *
(2, 55, 10, 28.00), -- 3 *
(3, 131, 1, 15.00), -- 4 *
(3, 136, 1, 28.00), -- 5 *
(4, 25, 1, 70.00), -- 6 *
(4, 60, 8, 10.00), -- 7 *
(5, 73, 9, 20.00), -- 8 *
(5, 169, 3, 50.00), -- 9 *
(6, 19, 1, 45.00), -- 10 *
(6, 199, 5, 6.00), -- 11 *
(7, 13, 4, 55.00), -- 12 *
(8, 118, 10, 19.00), -- 13 *
(9, 123, 2, 30.00), -- 14 *
(9, 113, 2, 30.00), -- 15 *
(10, 1, 1, 50.00), -- 16 *
(10, 60, 6, 10.00), -- 17 *
(11, 12, 1, 65.00), -- 18 *
(12, 78, 9, 20.00), -- 19 *
(13, 129, 10, 25.00), -- 20 *
(13, 104, 2, 25.00), -- 21 *
(14, 16, 2, 85.00), -- 22 *
(14, 80, 1, 40.00), -- 23 *
(15, 58, 6, 15.00), -- 24 *
(16, 157, 7, 20.00), -- 25 *
(17, 188, 6, 55.00), -- 26 *
(18, 129, 7, 25.00), -- 27 *
(19, 126, 3, 20.00), -- 28 *
(19, 185, 4, 35.00), -- 39 *
(20, 88, 4, 20.00), -- 30 *
(20, 159, 1, 5.00), -- 31 *
(21, 48, 2, 80.00), -- 32 *
(22, 19, 6, 45.00), -- 33 *
(23, 39, 2, 60.00), -- 34 *
(24, 22, 2, 80.00), -- 35 *
(24, 38, 1, 55.00), -- 36 *
(25, 29, 5, 50.00), -- 37 *
(26, 10, 2, 50.00), -- 38 *
(26, 19, 1, 45.00), -- 39 *
(27, 168, 2, 45.00), -- 40 *
(28, 45, 2, 80.00), -- 41 *
(29, 129, 4, 25.00), -- 42 *
(29, 60, 1, 10.00), -- 43 *
(30, 58, 5, 15.00), -- 44 *
(31, 33, 2, 50.00), -- 45 *
(32, 168, 4, 45.00), -- 46 *
(33, 2, 3, 45.00), -- 47 *
(34, 14, 4, 60.00), -- 48 *
(35, 25, 4, 70.00), -- 49 *
(36, 82, 5, 35.00), -- 50 *
(37, 31, 1, 75.00), -- 51 *
(38, 60, 20, 10.00), -- 52 *
(39, 61, 5, 25.00), -- 53 *
(40, 2, 4, 45.00), -- 54 *
(41, 60, 1, 10.00), -- 55 *
(42, 57, 1, 32.00), -- 56 *
(43, 105, 1, 15.00), -- 57 *
(44, 111, 1, 12.00), -- 58 *
(45, 107, 1, 18.00), -- 59 *
(46, 93, 1, 24.00), -- 60 *
(47, 75, 2, 5.00), -- 61 *
(48, 62, 1, 9.00), -- 62 *
(49, 32, 1, 85.00), -- 63 *
(50, 85, 1, 14.00); -- 64 *

INSERT INTO detalles_ventas_online(id_venta_online,id_producto) VALUES
(15, 15), -- 1
(23, 23), -- 2
(33, 33), -- 3
(5, 5), -- 4
(22, 22), -- 5
(3, 3), -- 6
(23, 23), -- 7
(23, 23), -- 8
(44, 44), -- 9 
(37, 37), -- 10 
(18, 118),  -- 11
(27, 27),   -- 12
(36, 36), -- 13
(42, 42), -- 14
(12, 12),  -- 15
(7, 7),  -- 16
(9, 9),  -- 17
(14, 14),   -- 18
(3, 3),   -- 19
(19, 19), -- 20
(5, 5),   -- 21
(28, 28),  -- 22
(30, 30), -- 23
(11, 11),  -- 24
(6, 6),  -- 25
(48, 48),  -- 26
(10, 10),   -- 27
(35, 35), -- 28
(43, 143),  -- 29
(17, 17),  -- 30
(25, 25), -- 31
(39, 39), -- 32
(47, 47), -- 33
(26, 126),  -- 34
(13, 13),  -- 35
(20, 20), -- 36
(4, 4),    -- 37
(50, 50),  -- 38
(40, 40),  -- 39
(29, 29), -- 40
(8, 8),   -- 41
(15, 115),  -- 42
(46, 46), -- 43
(24, 24), -- 44
(2, 2),  -- 45
(38, 138), -- 46
(31, 31), -- 47
(32, 32),   -- 48
(21, 21), -- 49
(16, 16); -- 50

INSERT INTO tarjetas(tipo_tarjeta, red_tarjeta) VALUES
('credito', 'visa'),             -- 1
('debito', 'mastercad'),          -- 2
('virtual', 'american express'),  -- 3
('credito', 'mastercad'),         -- 4
('debito', 'visa'),               -- 5
('virtual', 'mastercad'),         -- 6
('credito', 'american express'),  -- 7
('debito', 'american express'),   -- 8
('virtual', 'visa');           -- 9 creo q no se pueden mas 

INSERT INTO cliente_tarjeta(numero_tarjeta,csv,fecha_expiracion,id_cliente,id_tarjeta) VALUES
('1354789654135789', '256', '2026-12-15', 4, 3),  -- 1
('8965748951236457', '896', '2025-10-24', 8, 4),  -- 2
('8796541357894531', '456', '2027-08-07', 15, 5), -- 3
('7896541236547896', '845', '2026-11-22', 11, 3), -- 4
('1548963578945632', '234', '2025-02-06', 12, 4), -- 5
('6547891236547895', '987', '2027-06-13', 33, 1), -- 6
('8974512365987452', '345', '2025-09-22', 9, 2),  -- 7
('3578945632147895', '789', '2026-05-11', 22, 6), -- 8
('4125639874512365', '112', '2027-01-18', 40, 7), -- 9
('7896541239876541', '542', '2025-11-28', 19, 8), -- 10
('9564789654123658', '655', '2026-09-15', 37, 9), -- 11
('9876543126547896', '890', '2027-03-09', 11, 1), -- 12
('2459871236547891', '315', '2026-07-25', 25, 3), -- 13
('6547893219876541', '457', '2025-10-10', 6, 4),  -- 14
('8965741236548974', '238', '2027-12-30', 13, 5), -- 15
('7458963216548798', '659', '2025-04-07', 32, 2), -- 16
('8956321459874123', '762', '2026-02-19', 7, 6),  -- 17
('9654789123654789', '859', '2026-08-12', 16, 9), -- 18
('5632147896541235', '439', '2027-10-21', 14, 1), -- 19
('7896541232147896', '654', '2025-05-17', 4, 3),  -- 20
('4789654123654789', '246', '2027-02-09', 23, 7), -- 21
('2147896547896541', '521', '2026-12-23', 8, 2),  -- 22
('8965478912354786', '365', '2027-08-31', 10, 8), -- 23
('3654789121457896', '942', '2025-06-04', 20, 4), -- 24
('7896543217894563', '354', '2027-07-08', 18, 3), -- 25
('1457896547891236', '178', '2025-12-27', 27, 5), -- 26
('8796543126547896', '451', '2026-03-11', 5, 6),  -- 27
('2145632147895632', '695', '2027-01-03', 9, 9),  -- 28
('9654789123658741', '798', '2025-11-15', 41, 2), -- 29
('4578963214578963', '987', '2027-09-19', 35, 4), -- 30
('3654789123654789', '143', '2026-06-24', 40, 7), -- 31
('4589632147895632', '354', '2027-04-18', 33, 5), -- 32
('7458963214589632', '562', '2025-09-08', 25, 6), -- 33
('7896543121457896', '879', '2026-10-11', 28, 1), -- 34
('4789654123654789', '215', '2027-03-25', 22, 8), -- 35
('1457896547894123', '679', '2025-08-20', 6, 2),  -- 36
('8965741236548795', '356', '2027-05-02', 12, 3), -- 37
('2154879632145879', '128', '2026-01-17', 3, 7),  -- 38
('4789632147896321', '794', '2025-06-09', 42, 9), -- 39
('3654789654123657', '237', '2027-12-14', 38, 6), -- 40
('3654789654123985', '652', '2026-03-28', 17, 1), -- 41
('2458963214578962', '893', '2027-02-12', 29, 4), -- 42
('8965741236549789', '514', '2025-07-06', 19, 5), -- 43
('4789654123654789', '732', '2026-04-16', 39, 2), -- 44
('7896543124578963', '369', '2027-11-29', 41, 9), -- 45  
('3654789654785123', '567', '2026-08-30', 11, 5),  -- 46
('4789654123658965', '823', '2027-04-04', 31, 7),  -- 47
('1478963254789631', '459', '2026-02-11', 26, 1),  -- 48
('4789654123658745', '321', '2025-07-13', 14, 9),  -- 49
('2154879632149874', '762', '2027-03-27', 42, 2);  -- 50

INSERT INTO metodos_pago(nombre) VALUES
('efectivo'),
('tarjeta');

INSERT INTO transacciones(id_venta, id_metodo_pago, monto, fecha_transaccion) VALUES 
(1, 1, 100.000, '2022-02-18'), -- 1
(2, 2, 280.000, '2023-05-28'), -- 2
(3, 1, 43.000, '2024-04-15'), -- 3
(4, 2, 150.000, '2022-07-12'), -- 4
(5, 1, 330.000, '2023-08-23'), -- 5
(6, 2, 75.000, '2024-01-30'), -- 6
(7, 1, 220.000, '2022-03-01'), -- 7
(8, 2, 190.000, '2023-09-18'), -- 8
(9, 1, 120.000, '2022-06-24'), -- 9
(10, 2, 110.000, '2023-04-08'), -- 10
(11, 1, 65.000, '2024-02-14'), -- 11
(12, 2, 180.000, '2022-08-09'), -- 12
(13, 1, 300.000, '2023-11-21'), -- 13
(14, 2, 210.000, '2022-12-13'), -- 14
(15, 1, 95.000, '2024-01-05'), -- 15
(16, 2, 140.000, '2022-10-26'), -- 16
(17, 1, 330.000, '2023-02-28'), -- 17
(18, 2, 175.000, '2024-03-19'), -- 18
(19, 1, 200.000, '2022-05-03'), -- 19
(20, 2, 85.000, '2023-07-18'), -- 20
(21, 1, 160.000, '2024-04-23'), -- 21
(22, 2, 270.000, '2022-11-30'), -- 22
(23, 1, 120.000, '2023-09-10'), -- 23
(24, 2, 215.000, '2024-05-12'), -- 24
(25, 1, 250.000, '2022-06-22'), -- 25
(26, 2, 145.000, '2023-10-25'), -- 26
(27, 1, 90.000, '2024-03-28'), -- 27
(28, 2, 160.000, '2022-04-09'), -- 28
(29, 1, 110.000, '2023-01-14'), -- 29
(30, 2, 75.000, '2024-05-30'), -- 30
(31, 1, 100.000, '2022-11-11'), -- 31
(32, 2, 180.000, '2023-08-17'), -- 32
(33, 1, 135.000, '2024-02-24'), -- 33
(34, 2, 240.000, '2022-12-02'), -- 34
(35, 1, 280.000, '2023-06-27'), -- 35
(36, 2, 150.000, '2024-04-05'), -- 36
(37, 1, 75.000, '2022-05-15'), -- 37
(38, 2, 200.000, '2023-09-06'), -- 38
(39, 1, 125.000, '2024-03-30'), -- 39
(40, 2, 180.000, '2022-07-19'), -- 40
(41, 1, 10.000, '2023-02-23'), -- 41
(42, 2, 32.000, '2024-01-17'), -- 42
(43, 1, 15.000, '2022-08-31'), -- 43
(44, 2, 12.000, '2023-10-12'), -- 44
(45, 1, 18.000, '2024-05-22'), -- 45
(46, 2, 24.000, '2022-03-16'), -- 46
(47, 1, 10.000, '2023-04-19'), -- 47
(48, 2, 9.000, '2024-02-05'), -- 48
(49, 1, 85.000, '2023-02-05'), -- 49
(50, 2, 14.000, '2022-02-05'); -- 50

INSERT INTO proveedores (nombre_empresa, contacto, email, telefono) VALUES 
('Textiles del Valle', 'Juan Pérez', 'juan.perez@textilesvalle.com', '555-0101'), -- 1
('Maquillajes Glamour', 'Ana Sánchez', 'ana.sanchez@glamour.com', '555-0102'), -- 2
('Utilería Creativa', 'Carlos Gómez', 'carlos.gomez@uticreativa.com', '555-0103'), -- 3
('Telas y Estampados', 'Laura Ruiz', 'laura.ruiz@telasyestampados.com', '555-0104'), -- 4
('Belleza Natural', 'Sofía Martínez', 'sofia.martinez@bellezanatural.com', '555-0105'), -- 5
('Accesorios Únicos', 'Miguel Torres', 'miguel.torres@accesoriosunicos.com', '555-0106'), -- 6
('Textiles Modernos', 'Patricia López', 'patricia.lopez@textilesmodernos.com', '555-0107'), -- 7
('Estilo de Maquillaje', 'Roberto Díaz', 'roberto.diaz@estilomaquillaje.com', '555-0108'), -- 8
('Utilería y Más', 'María Fernández', 'maria.fernandez@utileriamas.com', '555-0109'), -- 9
('Telas y Colores', 'Javier Hernández', 'javier.hernandez@telasycolores.com', '555-0110'), -- 10
('Maquillaje Esencial', 'Claudia Ortega', 'claudia.ortega@maquillajeesencial.com', '555-0111'), -- 11
('Artículos de Oficina', 'Fernando Jiménez', 'fernando.jimenez@articulosoficina.com', '555-0112'), -- 12
('Fibras Textiles', 'Verónica Castro', 'veronica.castro@fibrastextiles.com', '555-0113'), -- 13
('Maquillaje Radiante', 'Natalia Ramírez', 'natalia.ramirez@maquillajeradiante.com', '555-0114'), -- 14
('Utilería S.A.', 'Diego Peña', 'diego.pena@utileriasa.com', '555-0115'), -- 15
('Telas Elegantes', 'Gabriela Silva', 'gabriela.silva@telaselegantes.com', '555-0116'), -- 16
('Cosméticos de Lujo', 'Elena Mendoza', 'elena.mendoza@cosmeticosdelujo.com', '555-0117'), -- 17
('Proveedores de Utilería', 'Victor Salas', 'victor.salas@proveedoresutileria.com', '555-0118'), -- 18
('Textiles de Calidad', 'Mariana Torres', 'mariana.torres@textilescalidad.com', '555-0119'), -- 19
('Maquillaje Para Todos', 'Pablo Núñez', 'pablo.nunez@maquillajeparatodos.com', '555-0120'), -- 20
('Utilería Artística', 'Cristina Herrera', 'cristina.herrera@utialistic.com', '555-0121'), -- 21
('Telas Innovadoras', 'Samuel Vargas', 'samuel.vargas@telasinnovadoras.com', '555-0122'), -- 22
('Maquillajes Creativos', 'Silvia López', 'silvia.lopez@maquillajescreativos.com', '555-0123'), -- 23
('Artículos para Eventos', 'Rafael García', 'rafael.garcia@articuloseventos.com', '555-0124'), -- 24
('Telas Naturales', 'Bárbara Gómez', 'barbara.gomez@telasnaturales.com', '555-0125'), -- 25
('Cosméticos Innovadores', 'Andrés Torres', 'andres.torres@cosmeticosinnovadores.com', '555-0126'), -- 26
('Utilería Integral', 'Jessica Morales', 'jessica.morales@utileriaintegral.com', '555-0127'), -- 27
('Telas Exóticas', 'Adriana Córdova', 'adriana.cordova@telasexoticas.com', '555-0128'), -- 28
('Maquillaje Único', 'Alfredo Delgado', 'alfredo.delgado@maquillajeunico.com', '555-0129'), -- 29
('Artículos de Papelería', 'Patricia Romero', 'patricia.romero@articulospapeleria.com', '555-0130'), -- 30
('Telas Básicas', 'Nicolás Salas', 'nicolas.salas@telasbasicas.com', '555-0131'), -- 31
('Maquillaje Sutil', 'Lucía Herrera', 'lucia.herrera@maquillajesutil.com', '555-0132'), -- 32
('Utilería Premium', 'Leonardo Álvarez', 'leonardo.alvarez@utileriapremium.com', '555-0133'), -- 33
('Telas y Texturas', 'Sandra Castillo', 'sandra.castillo@telasytexturas.com', '555-0134'), -- 34
('Maquillajes Divinos', 'Esteban Díaz', 'esteban.diaz@maquillajesdivinos.com', '555-0135'), -- 35
('Proveedores de Papelería', 'Marta Ruiz', 'marta.ruiz@proveedorespapeleria.com', '555-0136'), -- 36
('Telas para Moda', 'Hugo Martínez', 'hugo.martinez@telaspamoda.com', '555-0137'), -- 37
('Maquillaje Natural', 'Carmen López', 'carmen.lopez@maquillajenatural.com', '555-0138'), -- 38
('Utilería Express', 'Raúl Pérez', 'raul.perez@utileriaexpress.com', '555-0139'), -- 39
('Telas de Fantasía', 'Luz Rodríguez', 'luz.rodriguez@telasdefantasia.com', '555-0140'), -- 40
('Cosméticos Diversos', 'Ángel Torres', 'angel.torres@cosmeticosdiversos.com', '555-0141'), -- 41
('Utilería Total', 'Rocío Fernández', 'rocio.fernandez@utileriatotal.com', '555-0142'), -- 42
('Telas de Algodón', 'Felipe Salazar', 'felipe.salazar@telasdealgodon.com', '555-0143'), -- 43
('Maquillaje de Fantasía', 'Sonia Vargas', 'sonia.vargas@maquillajefantasia.com', '555-0144'), -- 44
('Artículos de Estudio', 'Eduardo Romero', 'eduardo.romero@articulosestudio.com', '555-0145'), -- 45
('Telas Artesanales', 'Ximena Pérez', 'ximena.perez@telasartesanales.com', '555-0146'), -- 46
('Cosméticos Eco', 'Ricardo Hernández', 'ricardo.hernandez@cosmeticos eco.com', '555-0147'), -- 47
('Utilería Diversificada', 'Gabriela Castro', 'gabriela.castro@utileriadiversificada.com', '555-0148'), -- 48
('Telas para Niños', 'Fernando López', 'fernando.lopez@telasparaninos.com', '555-0149'), -- 49
('Maquillaje Clásico', 'Claudia Díaz', 'claudia.diaz@maquillajeclasico.com', '555-0150'); -- 50

INSERT INTO ordenes_compra (id_proveedor, fecha_orden, estado) VALUES 
(1, '2024-01-15', 'entregado'), -- 1
(4, '2024-02-20', 'pendiente'), -- 2
(12, '2024-03-05', 'entregado'), -- 3
(20, '2024-04-12', 'pendiente'), -- 4
(7, '2024-05-15', 'entregado'), -- 5
(25, '2024-06-10', 'pendiente'), -- 6
(3, '2024-07-08', 'entregado'), -- 7
(19, '2024-08-14', 'pendiente'), -- 8
(15, '2024-09-21', 'entregado'), -- 9
(9, '2024-01-30', 'pendiente'), -- 10
(2, '2024-02-28', 'entregado'), -- 11
(6, '2024-03-22', 'pendiente'), -- 12
(21, '2024-04-05', 'entregado'), -- 13
(14, '2024-05-27', 'pendiente'), -- 14
(11, '2024-06-18', 'entregado'), -- 15
(8, '2024-07-30', 'pendiente'), -- 16
(5, '2024-08-09', 'entregado'), -- 17
(24, '2024-09-17', 'pendiente'), -- 18
(18, '2024-01-11', 'entregado'), -- 19
(10, '2024-02-15', 'pendiente'), -- 20
(23, '2024-03-25', 'entregado'), -- 21
(17, '2024-04-19', 'pendiente'), -- 22
(13, '2024-05-14', 'entregado'), -- 23
(30, '2024-06-29', 'pendiente'), -- 24
(16, '2024-07-23', 'entregado'), -- 25
(29, '2024-08-12', 'pendiente'), -- 26
(27, '2024-09-30', 'entregado'), -- 27
(26, '2024-01-09', 'pendiente'), -- 28
(22, '2024-02-22', 'entregado'), -- 29
(15, '2024-03-10', 'pendiente'), -- 30
(28, '2024-04-15', 'entregado'), -- 31
(31, '2024-05-21', 'pendiente'), -- 32
(32, '2024-06-01', 'entregado'), -- 33
(33, '2024-07-05', 'pendiente'), -- 34
(34, '2024-08-07', 'entregado'), -- 35
(35, '2024-09-11', 'pendiente'), -- 36
(36, '2024-01-28', 'entregado'), -- 37
(37, '2024-02-17', 'pendiente'), -- 38
(38, '2024-03-19', 'entregado'), -- 39
(39, '2024-04-11', 'pendiente'), -- 40
(40, '2024-05-09', 'entregado'), -- 41
(41, '2024-06-21', 'pendiente'), -- 42
(42, '2024-07-13', 'entregado'), -- 43
(43, '2024-08-29', 'pendiente'), -- 44
(44, '2024-09-07', 'entregado'), -- 45
(45, '2024-01-26', 'pendiente'), -- 46
(46, '2024-02-24', 'entregado'), -- 47
(47, '2024-03-31', 'pendiente'), -- 48
(48, '2024-04-29', 'entregado'), -- 49
(49, '2024-05-17', 'pendiente'), -- 50
(50, '2024-06-03', 'entregado'); -- 51

insert into detalles_ordenes_compra(id_orden_compra, id_producto, fecha_entrega, cantidad, precio_unitario) values
(1, 1, '2023-01-15', 42, 2.0), -- 1
(2, 102, '2024-02-10', 30, 1.5), -- 2
(3, 163, '2022-11-05', 20, 3.0), -- 3
(4, 14, '2023-03-22', 25, 2.5), -- 4
(5, 155, '2024-01-12', 15, 4.0), -- 5
(6, 61, '2023-07-30', 10, 5.0), -- 6
(7, 70, '2022-09-18', 5, 2.2), -- 7
(8, 15, '2023-05-23', 12, 1.8), -- 8
(9, 179, '2022-12-01', 18, 3.5), -- 9
(10, 110, '2024-03-17', 22, 2.1), -- 10
(11, 111, '2023-08-11', 7, 4.5), -- 11
(12, 122, '2024-04-04', 40, 1.0), -- 12
(13, 13, '2022-10-09', 8, 2.8), -- 13
(14, 7, '2023-02-14', 15, 3.2), -- 14
(15, 8, '2024-05-01', 20, 2.7), -- 15
(16, 16, '2022-07-19', 35, 1.9), -- 16
(17, 117, '2023-11-28', 50, 2.3), -- 17
(18, 118, '2023-06-20', 28, 2.6), -- 18
(19, 198, '2024-02-25', 33, 3.8), -- 19
(20, 199, '2023-01-30', 29, 1.7), -- 20
(21, 200, '2024-03-10', 12, 2.4), -- 21
(22, 145, '2023-04-06', 10, 3.1), -- 22
(23, 68, '2022-12-12', 40, 1.2), -- 23
(24, 155, '2024-01-20', 5, 4.2), -- 24
(25, 26, '2023-05-15', 14, 3.6), -- 25
(26, 28, '2022-08-29', 27, 1.4), -- 26
(27, 39, '2023-03-13', 22, 2.9), -- 27
(28, 41, '2024-04-18', 9, 5.5), -- 28
(29, 48, '2023-07-14', 19, 2.1), -- 29
(30, 60, '2022-11-30', 26, 1.8), -- 30
(31, 65, '2023-02-22', 16, 2.0), -- 31
(32, 67, '2024-05-03', 13, 3.3), -- 32
(33, 39, '2023-09-09', 11, 4.0), -- 33
(34, 48, '2022-10-16', 6, 2.5), -- 34
(35, 71, '2024-01-25', 15, 3.0), -- 35
(36, 139, '2023-06-08', 21, 2.8), -- 36
(37, 137, '2022-08-12', 8, 2.6), -- 37
(38, 147, '2023-04-29', 23, 1.9), -- 38
(39, 136, '2024-02-07', 18, 4.1), -- 39
(40, 168, '2023-10-19', 14, 3.2), -- 40
(41, 12, '2024-03-05', 29, 2.7), -- 41
(42, 3, '2022-11-23', 37, 1.3), -- 42
(43, 148, '2023-12-02', 32, 5.0), -- 43
(44, 155, '2023-05-26', 22, 2.9), -- 44
(45, 137, '2022-09-15', 4, 3.4), -- 45
(46, 8, '2024-01-18', 26, 1.8), -- 46
(47, 7, '2023-03-01', 19, 4.0), -- 47
(48, 91, '2024-04-12', 11, 2.5), -- 48
(49, 95, '2022-07-22', 27, 3.0), -- 49
(50, 80, '2023-10-11', 9, 4.5); -- 50

INSERT INTO facturacion (id_venta, fecha_factura, total) VALUES
(1, '2022-02-19', 100.00),
(2, '2023-05-29', 280.00),
(3, '2024-04-16', 43.00),
(4, '2022-07-13', 150.00),
(5, '2023-08-24', 330.00),
(6, '2024-01-31', 75.00),
(7, '2022-03-02', 220.00),
(8, '2023-09-19', 190.00),
(9, '2022-06-25', 120.00),
(10, '2023-04-09', 110.00),
(11, '2024-02-15', 65.00),
(12, '2022-08-10', 180.00),
(13, '2023-11-22', 300.00),
(14, '2022-12-14', 210.00),
(15, '2024-01-06', 95.00),
(16, '2022-10-27', 140.00),
(17, '2023-02-27', 330.00),
(18, '2024-03-20', 175.00),
(19, '2022-05-04', 200.00),
(20, '2023-07-19', 85.00),
(21, '2024-04-24', 160.00),
(22, '2022-12-01', 270.00),
(23, '2023-09-11', 120.00),
(24, '2024-05-13', 215.00),
(25, '2022-06-23', 250.00),
(26, '2023-10-26', 145.00),
(27, '2024-03-29', 90.00),
(28, '2022-04-10', 160.00),
(29, '2023-01-15', 110.00),
(30, '2024-05-31', 75.00),
(31, '2022-11-12', 100.00),
(32, '2023-08-18', 180.00),
(33, '2024-02-25', 135.00),
(34, '2022-12-03', 240.00),
(35, '2023-06-28', 280.00),
(36, '2024-04-06', 150.00),
(37, '2022-05-16', 75.00),
(38, '2023-09-07', 200.00),
(39, '2024-03-31', 125.00),
(40, '2022-07-20', 180.00),
(41, '2023-02-24', 10.00),
(42, '2024-01-18', 32.00),
(43, '2022-09-01', 15.00),
(44, '2023-10-13', 12.00),
(45, '2024-05-23', 18.00),
(46, '2022-03-17', 24.00),
(47, '2023-04-20', 10.00),
(48, '2024-02-06', 9.00),
(49, '2023-02-06', 85.00),
(50, '2022-02-06', 14.00);

 INSERT INTO alquileres(id_cliente,id_disfraz,fecha_inicio,fecha_fin,total,deposito)VALUES
(2,4,'2024-05-16', '2024-05-19', 30.000, 20.000), -- 1
(4,8,'2024-03-18', '2024-03-20', 30.000, 10.000), -- 2
(9, 32, '2023-11-21', '2023-11-22', 30.000, 30.000), -- 3
(7, 4, '2023-08-14', '2023-08-17', 30.000, 20.000), -- 4
(5, 13, '2023-12-01', '2023-12-03', 60.000, 30.000), -- 5 ***
(2, 19, '2024-02-05', '2024-02-08', 30.000, 20.000), -- 6
(3, 25, '2023-11-01', '2023-11-03', 30.000, 10.000), -- 7
(10, 2, '2024-03-14', '2024-03-16', 30.000, 15.000), -- 8
(8, 1, '2024-06-21', '2024-06-23', 30.000, 25.000), -- 9
(4, 18, '2023-07-30', '2023-08-01', 30.000, 25.000), -- 10
(11, 20, '2024-04-27', '2024-04-29', 30.000, 10.000), -- 11
(9, 17, '2023-09-05', '2023-09-08', 30.000, 20.000), -- 12
(12, 6, '2024-05-12', '2024-05-14', 30.000, 15.000), -- 13
(15, 3, '2023-06-14', '2023-06-17', 60.000, 10.000), -- 14 ***
(6, 4, '2024-07-05', '2024-07-07', 30.000, 20.000), -- 15
(20, 9, '2023-10-03', '2023-10-05', 30.000, 15.000), -- 16
(13, 8, '2024-01-13', '2024-01-15', 30.000, 20.000), -- 17
(1, 29, '2023-04-10', '2023-04-12', 120.000, 10.000), -- 18 *** 40K
(4, 37, '2024-02-22', '2024-02-24', 40.000, 20.000), -- 19
(18, 7, '2023-09-14', '2023-09-16', 30.000, 15.000), -- 20
(14, 3, '2024-05-04', '2024-05-06', 30.000, 10.000), -- 21
(19, 11, '2023-12-07', '2023-12-09', 30.000, 25.000), -- 22
(16, 29, '2024-02-10', '2024-02-12', 40.000, 30.000), -- 23
(17, 16, '2023-11-23', '2023-11-25', 30.000, 10.000), -- 24
(21, 1, '2024-04-21', '2024-04-23', 30.000, 20.000), -- 25
(25, 14, '2023-05-18', '2023-05-20', 30.000, 20.000), -- 26
(22, 13, '2023-10-27', '2023-10-29', 40.000, 30.000), -- 27
(23, 9, '2024-01-22', '2024-01-24', 120.000, 10.000), -- 28 ****
(24, 2, '2024-07-10', '2024-07-12', 30.000, 15.000), -- 29
(26, 8, '2023-03-22', '2023-03-24', 30.000, 20.000), -- 30
(28, 31, '2024-06-05', '2024-06-07', 40.000, 25.000), -- 31
(27, 7, '2024-05-25', '2024-05-27', 60.000, 20.000), -- 32 ***
(29, 39, '2023-02-19', '2023-02-21', 40.000, 30.000), -- 33
(30, 10, '2023-09-17', '2023-09-19', 30.000, 10.000), -- 34
(31, 11, '2024-03-18', '2024-03-20', 30.000, 15.000), -- 35
(32, 16, '2024-05-09', '2024-05-11', 30.000, 10.000), -- 36
(33, 5, '2024-02-12', '2024-02-14', 30.000, 20.000), -- 37
(34, 14, '2023-12-23', '2023-12-25', 30.000, 10.000), -- 38
(35, 8, '2024-03-02', '2024-03-04', 30.000, 15.000), -- 39
(36, 9, '2023-07-06', '2023-07-08', 60.000, 25.000), -- 40 ****
(37, 2, '2024-04-03', '2024-04-05', 30.000, 30.000), -- 41 
(38, 15, '2023-08-01', '2023-08-03', 30.000, 20.000), -- 42
(39, 38, '2023-11-14', '2023-11-16', 40.000, 15.000), -- 43
(40, 18, '2024-01-27', '2024-01-29', 30.000, 10.000), -- 44 
(3, 29, '2023-11-06', '2023-11-08', 80.000, 20.000), -- 45 ***
(11, 2, '2024-03-12', '2024-03-14', 30.000, 15.000), -- 46
(8, 7, '2023-10-17', '2023-10-19', 30.000, 10.000), -- 47
(5, 10, '2023-12-15', '2023-12-17', 30.000, 20.000), -- 48
(2, 39, '2024-01-20', '2024-01-22', 40.000, 25.000), -- 49
(7, 3, '2024-05-03', '2024-05-05', 60.000, 10.000); -- 50 ***

INSERT INTO detalles_alquileres(id_alquiler, id_disfraz, cantidad, precio_unitario) VALUES
(1, 4, 1, 30.000),
(2, 8, 1, 30.000),
(3, 32, 1, 30.000),
(4, 4, 1, 30.000),
(5, 13, 2, 40.000),
(6, 19, 1, 30.000),
(7, 25, 1, 30.000),
(8, 2, 1, 30.000),
(9, 1, 1, 30.000),
(10, 18, 1, 30.000),
(11, 20, 1, 30.000),
(12, 17, 1, 30.000),
(13, 6, 1, 30.000),
(14, 3, 2, 30.000),
(15, 4, 1, 30.000),
(16, 9, 1, 30.000),
(17, 8, 1, 30.000),
(18, 29, 3, 40.000),
(19, 37, 1, 40.000),
(20, 7, 1, 30.000),
(21, 3, 1, 30.000),
(22, 11, 1, 30.000),
(23, 29, 1, 40.000),
(24, 16, 1, 30.000),
(25, 1, 1, 30.000),
(26, 14, 1, 30.000),
(27, 13, 2, 30.000),
(28, 9, 4, 30.000),
(29, 2, 2, 30.000),
(30, 8, 1, 30.000),
(31, 31, 1, 40.000),
(32, 7, 2, 30.000),
(33, 39, 1, 40.000),
(34, 10, 1, 30.000),
(35, 11, 1, 30.000),
(36, 16, 1, 30.000),
(37, 5, 1, 30.000),
(38, 14, 1, 30.000),
(39, 8, 1, 30.000),
(40, 9, 2, 30.000),
(41, 2, 1, 30.000),
(42, 15, 1, 30.000),
(43, 38, 1, 30.000),
(44, 18, 1, 30.000),
(45, 29, 2, 40.000),
(46, 2, 1, 30.000),
(47, 7, 1, 30.000),
(48, 10, 1, 30.000),
(49, 39, 2, 30.000),
(50, 3, 2, 30.000);

INSERT INTO devoluciones(id_venta,fecha_devolucion,motivo) VALUES
(1,'2022-03-10', 'El producto estaba bien incomodo'),
(2,'2023-06-5', 'El color no es que pedi'),
(3, '2024-04-30', 'No me queda igual que a la modelo'),
(4, '2022-03-22', 'Me llegaron dos productos y yo soy honesto'),
(5, '2023-09-11', 'Que producto tan feo, no se parece a la foto'),
(6, '2024-02-15', 'No puedo encontrar el uso adecuado para este artículo'),
(7, '2022-03-28', 'El producto llegó tarde y ya no lo necesito'),
(8, '2023-09-25', 'El artículo tiene un defecto de fabricación'),
(9, '2022-07-10', 'El material no es tan suave como esperaba'),
(10, '2023-05-01', 'Recibí el producto equivocado'),
(11, '2024-03-30', 'El tamaño no es el adecuado, pedí una talla más grande'),
(12, '2022-08-04', 'Me arrepentí de la compra, ya no lo quiero'),
(13, '2023-11-10', 'La calidad del producto no es la que esperaba'),
(14, '2022-12-01', 'Me equivoqué al seleccionar el modelo'),
(15, '2024-02-20', 'El color no es lo que pensé que era'),
(16, '2023-06-03', 'El producto se dañó al usarlo por primera vez'),
(17, '2023-01-25', 'El producto no me gusta, prefiero otro diseño'),
(18, '2024-03-01', 'No era lo que esperaba en cuanto a tamaño y estilo'),
(19, '2022-05-25', 'Ya encontré una opción mejor, no lo necesito más'),
(20, '2023-08-02', 'El producto no me queda bien'),
(21, '2024-03-05', 'No me convence el material del que está hecho'),
(22, '2022-11-22', 'No es el producto que había visto en la tienda online'),
(23, '2023-09-01', 'Me equivoqué de modelo y ya no puedo usarlo'),
(24, '2024-05-02', 'El producto llegó dañado en el envío'),
(25, '2022-06-25', 'El artículo es más pequeño de lo que pensaba'),
(26, '2023-11-08', 'No me gusta cómo combina con mi decoración'),
(27, '2024-03-15', 'El producto no es tan funcional como esperaba'),
(28, '2022-05-09', 'No es lo que pensaba, prefiero algo diferente'),
(29, '2023-01-21', 'Lo compré por error y ya no lo necesito'),
(30, '2024-06-05', 'No encaja con mi estilo personal'),
(31, '2022-11-18', 'Me arrepentí de la compra, no es lo que esperaba'),
(32, '2023-07-25', 'No puedo utilizarlo debido a restricciones en mi espacio'),
(33, '2024-01-16', 'El producto no tiene la calidad que esperaba'),
(34, '2022-12-10', 'Me llegó el producto incorrecto'),
(35, '2023-09-03', 'Que porqueria, no hacen nada bien'),
(36, '2024-02-25', 'No es el color que esperaba'),
(37, '2023-05-18', 'El diseño no es como lo vi en la web'),
(38, '2024-04-07', 'El producto no es adecuado para lo que lo quería usar'),
(39, '2022-04-15', 'Me llegó roto, no quiero que me lo reemplacen'),
(40, '2023-03-12', 'El producto no tiene la calidad que esperaba'),
(41, '2024-04-10', 'No es lo que pensaba, prefiero otro modelo'),
(42, '2023-08-15', 'El producto tiene un pequeño rasguño en la superficie'),
(43, '2022-09-02', 'No me convenció el material'),
(44, '2023-07-11', 'El artículo no se ajusta bien a mi cuerpo'),
(45, '2024-05-30', 'El color no es el que pedí, era más oscuro'),
(46, '2022-04-05', 'No era lo que esperaba, se ve diferente en la foto'),
(47, '2024-02-10', 'No me quedaba bien con mi outfit'),
(48, '2023-09-25', 'El material no es tan duradero como pensaba'),
(49, '2022-09-15', 'Nada que ver con lo que prometen'),
(50, '2023-11-01', 'Ya no me gusto jeje');

INSERT INTO detalles_devoluciones(id_devolucion, id_producto, cantidad) VALUES
(1, 15, 1), -- 1
(2, 51, 10), -- 2
(3, 55, 10), -- 3
(4, 131, 1), -- 4
(5, 136, 1), -- 5
(6, 25, 1), -- 6
(7, 60, 8), -- 7
(8, 73, 9), -- 8
(9, 169, 3), -- 9
(10, 19, 1), -- 10
(11, 199, 5), -- 11
(12, 13, 4), -- 12
(13, 118, 10), -- 13
(14, 123, 2), -- 14
(15, 113, 2), -- 15
(16, 1, 1), -- 16
(17, 60, 6), -- 17
(18, 12, 1), -- 18
(19, 78, 9), -- 19
(20, 129, 10), -- 20
(21, 104, 2), -- 21
(22, 16, 2), -- 22
(23, 80, 1), -- 23
(24, 58, 6), -- 24
(25, 157, 7), -- 25
(26, 188, 6), -- 26
(27, 129, 7), -- 27
(28, 126, 3), -- 28
(29, 185, 4), -- 29
(30, 88, 4), -- 30
(31, 159, 1), -- 31
(32, 48, 2), -- 32
(33, 19, 6), -- 33
(34, 39, 2), -- 34
(35, 22, 2), -- 35
(36, 38, 1), -- 36
(37, 29, 5), -- 37
(38, 10, 2), -- 38
(39, 19, 1), -- 39
(40, 168, 2), -- 40
(41, 45, 2), -- 41
(42, 129, 4), -- 42
(43, 60, 1), -- 43
(44, 58, 5), -- 44
(45, 33, 2), -- 45
(46, 168, 4), -- 46
(47, 2, 3), -- 47
(48, 14, 4), -- 48
(49, 25, 4), -- 49
(50, 82, 5); -- 50

INSERT INTO envios (id_venta_online, fecha_envio, fecha_entrega_estimada, estado_envio, id_direccion) VALUES
(1, '2024-03-18', '2024-03-21', 'pendiente', 1),
(2, '2023-10-24', '2023-10-27', 'entregado', 2),
(3, '2024-07-07', '2024-07-10', 'en tránsito', 3),
(4, '2023-11-21', '2023-11-24', 'pendiente', 4),
(5, '2023-11-22', '2023-11-25', 'entregado', 5),
(6, '2024-05-16', '2024-05-19', 'en tránsito', 1),
(7, '2024-03-15', '2024-03-18', 'pendiente', 6),
(8, '2024-06-29', '2024-07-02', 'entregado', 7),
(9, '2024-06-30', '2024-07-03', 'en tránsito', 8),
(10, '2024-02-06', '2024-02-09', 'pendiente', 9),
(11, '2024-01-12', '2024-01-15', 'entregado', 10),
(12, '2024-04-18', '2024-04-21', 'en tránsito', 1),
(13, '2023-12-05', '2023-12-08', 'pendiente', 12),
(14, '2024-07-15', '2024-07-18', 'entregado', 13),
(15, '2024-03-22', '2024-03-25', 'en tránsito', 1),
(16, '2023-11-30', '2023-12-03', 'pendiente', 14),
(17, '2024-06-07', '2024-06-10', 'entregado', 15),
(18, '2024-02-21', '2024-02-24', 'en tránsito', 16),
(19, '2023-10-25', '2023-10-28', 'pendiente', 1),
(20, '2024-05-03', '2024-05-06', 'entregado', 18),
(21, '2024-04-12', '2024-04-15', 'en tránsito', 19),
(22, '2024-02-28', '2024-03-02', 'pendiente', 20),
(23, '2023-12-19', '2023-12-22', 'entregado', 21),
(24, '2023-11-10', '2023-11-13', 'en tránsito', 1),
(25, '2024-06-01', '2024-06-04', 'pendiente', 22),
(26, '2023-10-20', '2023-10-23', 'entregado', 24),
(27, '2024-02-17', '2024-02-20', 'en tránsito', 25),
(28, '2024-03-13', '2024-03-16', 'pendiente', 26),
(29, '2024-06-14', '2024-06-17', 'entregado', 27),
(30, '2023-10-11', '2023-10-14', 'en tránsito', 28),
(31, '2024-05-21', '2024-05-24', 'pendiente', 29),
(32, '2024-04-09', '2024-04-12', 'entregado', 2),
(33, '2023-12-23', '2023-12-26', 'en tránsito', 1),
(34, '2023-11-07', '2023-11-10', 'pendiente', 31),
(35, '2024-06-25', '2024-06-28', 'entregado', 12),
(36, '2024-03-04', '2024-03-07', 'en tránsito', 33),
(37, '2023-12-18', '2023-12-21', 'pendiente', 34),
(38, '2024-05-10', '2024-05-13', 'entregado', 35),
(39, '2024-06-16', '2024-06-19', 'en tránsito', 36),
(40, '2023-11-26', '2023-11-29', 'pendiente', 37),
(41, '2024-05-14', '2024-05-17', 'entregado', 1),
(42, '2024-03-28', '2024-03-31', 'en tránsito', 38),
(43, '2023-10-15', '2023-10-18', 'pendiente', 39),
(44, '2024-04-05', '2024-04-08', 'entregado', 40),
(45, '2024-06-20', '2024-06-23', 'en tránsito', 1),
(46, '2024-01-19', '2024-01-22', 'pendiente', 2),
(47, '2023-12-07', '2023-12-10', 'entregado', 42),
(48, '2024-02-24', '2024-02-27', 'en tránsito', 43),
(49, '2024-05-08', '2024-05-11', 'pendiente', 44),
(50, '2024-06-11', '2024-06-14', 'entregado', 1);

INSERT INTO promociones (nombre, descripcion, fecha_inicio, fecha_fin, descuento) VALUES
("Halloween parejas", "Promoción para parejas en Halloween", "2024-10-25", "2024-11-02", 15), -- 1
("Fiesta de Disfraces Infantil", "Descuentos en disfraces para niños", "2024-11-01", "2024-11-08", 20), -- 2
("Carnaval de Colores", "Disfraces vibrantes con un 25% de descuento", "2025-02-10", "2025-02-17", 25), -- 3
("Regreso a Clases Creativas", "Descuentos en disfraces escolares", "2025-08-01", "2025-08-08", 15), -- 4
("Día de los Muertos", "Celebra con trajes tradicionales al 20% de descuento", "2025-10-25", "2025-11-01", 20), -- 5
("Fiesta de Fin de Año", "Descuentos en disfraces festivos", "2024-12-28", "2025-01-04", 30), -- 6
("Promoción de Carnaval", "Disfraces para el carnaval con 15% de descuento", "2025-02-15", "2025-02-22", 15), -- 7
("Halloween para Mascotas", "Disfraces para tus mascotas al 10% de descuento", "2025-10-10", "2025-10-17", 10), -- 8
("Verano de Disfraces", "Descuentos en disfraces de verano", "2025-06-15", "2025-06-22", 25), -- 9
("Día de la Independencia", "Disfraces patrióticos con 20% de descuento", "2025-09-01", "2025-09-08", 20), -- 10
("Fiesta de Disfraces Retro", "Revive las épocas con un 15% de descuento", "2025-03-01", "2025-03-08", 15), -- 11
("Promoción de Navidad", "Disfraces navideños con 20% de descuento", "2025-12-15", "2025-12-22", 20), -- 12
("Fiesta de Disfraces de Cine", "Descuentos en trajes de tus películas favoritas", "2025-05-01", "2025-05-08", 25), -- 13
("Halloween de Superhéroes", "Disfraces de superhéroes con 20% de descuento", "2025-10-01", "2025-10-08", 20), -- 14
("Día de San Valentín", "Disfraces románticos con 15% de descuento", "2025-02-07", "2025-02-14", 15), -- 15
("Halloween de Fantasmas", "Disfraces espectrales con un 15% de descuento", "2025-10-10", "2025-10-17", 15), -- 16
("Fiesta de Disfraces de Épocas", "Descuentos en trajes históricos", "2025-03-15", "2025-03-22", 25), -- 17
("Navidad de Personajes", "Disfraces de personajes navideños al 20%", "2025-12-20", "2025-12-27", 20), -- 18
("Fiesta de Disfraces de Música", "Descuentos en trajes de íconos musicales", "2025-07-10", "2025-07-17", 30), -- 19
("Halloween de Cuento de Hadas", "Disfraces de cuentos al 20% de descuento", "2025-10-01", "2025-10-08", 20), -- 20
("Descuentos de Otoño", "Descuentos en trajes otoñales", "2025-09-15", "2025-09-22", 15), -- 21
("Día de los Abuelos", "Disfraces vintage para abuelos al 10%", "2025-07-26", "2025-08-02", 10), -- 22
("Fiesta de Disfraces de Deportes", "Descuentos en trajes deportivos", "2025-06-01", "2025-06-08", 15), -- 23
("Halloween de Ciencia Ficción", "Descuentos en disfraces futuristas", "2025-10-15", "2025-10-22", 25), -- 24
("Fiesta de Disfraces Temáticos", "Descuentos en disfraces temáticos", "2025-11-10", "2025-11-17", 20), -- 25
("Día de San Patricio", "Descuentos en disfraces verdes", "2025-03-10", "2025-03-17", 15), -- 26
("Carnaval de Disfraces de Animales", "Disfraces de animales al 20%", "2025-02-15", "2025-02-22", 20), -- 27
("Fiesta de Disfraces de Piratas", "Descuentos en trajes de piratas", "2025-09-20", "2025-09-27", 25), -- 28
("Día de la Tierra", "Disfraces ecológicos con 15% de descuento", "2025-04-22", "2025-04-29", 15), -- 29
("Halloween de Cómics", "Descuentos en trajes de cómics", "2025-10-05", "2025-10-12", 20), -- 30
("Fiesta de Disfraces del Espacio", "Descuentos en trajes espaciales", "2025-08-10", "2025-08-17", 25), -- 31
("Halloween de Estrellas", "Disfraces de celebridades con 20% de descuento", "2025-10-12", "2025-10-19", 20), -- 32
("Promoción de Otoño", "Descuentos en trajes de otoño", "2025-09-01", "2025-09-08", 15), -- 33
("Fiesta de Disfraces de Magia", "Descuentos en trajes de magos y brujas", "2025-03-20", "2025-03-27", 30), -- 34
("Fiesta de Disfraces de Historia", "Descuentos en trajes históricos", "2025-07-01", "2025-07-08", 25), -- 35
("Halloween de Espantos", "Descuentos en trajes de criaturas espeluznantes", "2025-10-15", "2025-10-22", 20), -- 36
("Fiesta de Disfraces de Viaje", "Descuentos en trajes de diferentes culturas", "2025-08-15", "2025-08-22", 15), -- 37
("Fiesta de Disfraces de Juegos", "Descuentos en trajes de personajes de juegos", "2025-05-05", "2025-05-12", 20), -- 38
("Halloween de Ilusión", "Disfraces ópticos con 15% de descuento", "2025-10-05", "2025-10-12", 15), -- 39
("Promoción de Primavera", "Descuentos en trajes primaverales", "2025-04-01", "2025-04-08", 20), -- 40
("Fiesta de Disfraces de Robots", "Descuentos en trajes robóticos", "2025-05-15", "2025-05-22", 25), -- 41
("Halloween de Frío", "Descuentos en disfraces de invierno", "2025-10-20", "2025-10-27", 15), -- 42
("Fiesta de Disfraces de Futuro", "Descuentos en trajes futuristas", "2025-06-05", "2025-06-12", 20), -- 43
("Día del Niño", "Descuentos en trajes infantiles al 10%", "2025-04-15", "2025-04-22", 10), -- 44
("Fiesta de Disfraces de Verano", "Descuentos en trajes de verano", "2025-06-20", "2025-06-27", 20), -- 45
("Promoción de Octubre", "Descuentos en trajes de Halloween anticipados", "2025-10-01", "2025-10-08", 15), -- 46
("Halloween de Fantasía", "Descuentos en trajes de fantasía", "2025-10-05", "2025-10-12", 25), -- 47
("Fiesta de Disfraces de Videojuegos", "Descuentos en trajes de personajes de videojuegos", "2025-05-10", "2025-05-17", 20), -- 48
("Halloween de Terror", "Descuentos en trajes de terror clásico", "2025-10-10", "2025-10-17", 30), -- 49
("Día de los Disfraces Locos", "Descuentos en trajes extravagantes", "2025-04-30", "2025-05-07", 15); -- 50

INSERT INTO productos_promocion (id_producto, id_promocion) VALUES
(1, 1),  -- 1
(2, 44), -- 2
(3, 45), -- 3
(4, 38), -- 4
(5, 14), -- 5
(6, 14),  -- 6
(7, 27), -- 7
(8, 44), -- 8
(9, 45), -- 9
(10, 35), -- 10
(11, 45), -- 11
(12, 45), -- 12
(13, 5),  -- 13
(14, 47), -- 14
(15, 47), -- 15
(16, 45), -- 16
(17, 48), -- 17
(18, 5),  -- 18
(19, 45), -- 19
(20, 5),  -- 20
(21, 3),  -- 21
(22, 4),  -- 22
(23, 2),  -- 23
(24, 8),  -- 24
(25, 10), -- 25
(26, 11), -- 26
(27, 1),  -- 27
(28, 6),  -- 28
(29, 7),  -- 29
(30, 20), -- 30
(31, 19), -- 31
(32, 25), -- 32
(33, 30), -- 33
(34, 12), -- 34
(35, 18), -- 35
(36, 17), -- 36
(37, 16), -- 37
(38, 13), -- 38
(39, 15), -- 39
(40, 24), -- 40
(41, 22), -- 41
(42, 9),  -- 42
(43, 23), -- 43
(44, 21), -- 44
(45, 29), -- 45
(46, 26), -- 46
(47, 33), -- 47
(48, 34), -- 48
(49, 46), -- 49
(50, 50); -- 50