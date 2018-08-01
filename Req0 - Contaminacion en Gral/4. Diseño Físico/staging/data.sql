-- public.tiempo

-- ##########################
-- Ejecutar ETL
-- ##########################

-- public.ubicaciongeog_1

-- ##########################
-- estaciones.csv -> barrios ine
-- Prado -> Prado, Nueva Savona
-- Maroñas -> Maroñas, Parque Guaraní
-- Colón -> Colón Centro y Noroeste
-- Goes -> Villa Muñoz, Retiro, Goes
-- ##########################

INSERT INTO public.ubicaciongeog_1(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (11, 'Ciudad Vieja 2', 1, 'Ciudad Vieja', 1, 'CCZ1');
INSERT INTO public.ubicaciongeog_1(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (12, 'Ciudad Vieja 3', 1, 'Ciudad Vieja', 1, 'CCZ1');
INSERT INTO public.ubicaciongeog_1(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (13, 'Ciudad Vieja 1', 1, 'Ciudad Vieja', 1, 'CCZ1');
INSERT INTO public.ubicaciongeog_1(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (21, 'Centro', 2, 'Centro', 2, 'CCZ2');
INSERT INTO public.ubicaciongeog_1(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (31, 'La Teja 1', 38, 'La Teja', 14, 'CCZ14');
INSERT INTO public.ubicaciongeog_1(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (32, 'La Teja 2', 38, 'La Teja', 14, 'CCZ14');
INSERT INTO public.ubicaciongeog_1(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (41, 'Prado', 39, 'Prado, Nueva Savona', 15, 'CCZ15');
INSERT INTO public.ubicaciongeog_1(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (51, 'Tres Cruces 2', 50, 'Tres Cruces', 4, 'CCZ4');
INSERT INTO public.ubicaciongeog_1(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (52, 'Tres Cruces', 50, 'Tres Cruces', 4, 'CCZ4');
INSERT INTO public.ubicaciongeog_1(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (61, 'Curva de Maronas', 17, 'Maroñas, Parque Guaraní', 9, 'CCZ9');
INSERT INTO public.ubicaciongeog_1(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (71, 'Portones de Carrasco 2', 14, 'Carrasco', 8, 'CCZ8');
INSERT INTO public.ubicaciongeog_1(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (72, 'Portones de Carrasco', 14, 'Carrasco', 8, 'CCZ8');
INSERT INTO public.ubicaciongeog_1(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (81, 'Colon 1', 59, 'Colón Centro y Noroeste', 12, 'CCZ12');
INSERT INTO public.ubicaciongeog_1(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (91, 'Goes', 48, 'Villa Muñoz, Retiro, Goes', 3, 'CCZ3');
INSERT INTO public.ubicaciongeog_1(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (101, 'ANCAP La Teja', 38, 'La Teja', 14, 'CCZ14');


-- public.ubicaciongeog_1_Geom

INSERT INTO public.ubicaciongeog_1_Geom(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ, geom) VALUES (11, 'Ciudad Vieja 2', 1, 'Ciudad Vieja', 1, 'CCZ1', ST_GeomFromText('POINT (572452 6137044)', 32721));
INSERT INTO public.ubicaciongeog_1_Geom(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ, geom) VALUES (12, 'Ciudad Vieja 3', 1, 'Ciudad Vieja', 1, 'CCZ1', ST_GeomFromText('POINT (572796 6137122)', 32721));
INSERT INTO public.ubicaciongeog_1_Geom(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ, geom) VALUES (13, 'Ciudad Vieja 1', 1, 'Ciudad Vieja', 1, 'CCZ1', ST_GeomFromText('POINT (572832 6136774)', 32721));
INSERT INTO public.ubicaciongeog_1_Geom(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ, geom) VALUES (21, 'Centro', 2, 'Centro', 2, 'CCZ2', ST_GeomFromText('POINT (574385 6137072)', 32721));
INSERT INTO public.ubicaciongeog_1_Geom(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ, geom) VALUES (31, 'La Teja 1', 38, 'La Teja', 14, 'CCZ14', ST_GeomFromText('POINT (569843 6141519)', 32721));
INSERT INTO public.ubicaciongeog_1_Geom(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ, geom) VALUES (32, 'La Teja 2', 38, 'La Teja', 14, 'CCZ14', ST_GeomFromText('POINT (570883 6142541)', 32721));
INSERT INTO public.ubicaciongeog_1_Geom(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ, geom) VALUES (41, 'Prado', 39, 'Prado, Nueva Savona', 15, 'CCZ15', ST_GeomFromText('POINT (573289 6142937)', 32721));
INSERT INTO public.ubicaciongeog_1_Geom(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ, geom) VALUES (51, 'Tres Cruces 2', 50, 'Tres Cruces', 4, 'CCZ4', ST_GeomFromText('POINT (576214 6138373)', 32721));
INSERT INTO public.ubicaciongeog_1_Geom(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ, geom) VALUES (52, 'Tres Cruces', 50, 'Tres Cruces', 4, 'CCZ4', ST_GeomFromText('POINT (576888 6138953)', 32721));
INSERT INTO public.ubicaciongeog_1_Geom(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ, geom) VALUES (61, 'Curva de Maronas', 17, 'Maroñas, Parque Guaraní', 9, 'CCZ9', ST_GeomFromText('POINT (579230 6142255)', 32721));
INSERT INTO public.ubicaciongeog_1_Geom(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ, geom) VALUES (71, 'Portones de Carrasco 2', 14, 'Carrasco', 8, 'CCZ8', ST_GeomFromText('POINT (583737 6139486)', 32721));
INSERT INTO public.ubicaciongeog_1_Geom(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ, geom) VALUES (72, 'Portones de Carrasco', 14, 'Carrasco', 8, 'CCZ8', ST_GeomFromText('POINT (583940 6139695)', 32721));
INSERT INTO public.ubicaciongeog_1_Geom(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ, geom) VALUES (81, 'Colon 1', 59, 'Colón Centro y Noroeste', 12, 'CCZ12', ST_GeomFromText('POINT (570970 6149046)', 32721));
INSERT INTO public.ubicaciongeog_1_Geom(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ, geom) VALUES (91, 'Goes', 48, 'Villa Muñoz, Retiro, Goes', 3, 'CCZ3', ST_GeomFromText('POINT (574668 6139720)', 32721));
INSERT INTO public.ubicaciongeog_1_Geom(idestacion, nomestacion, idbarrio, nombarrio, idCCZ, nomCCZ, geom) VALUES (101, 'ANCAP La Teja', 38, 'La Teja', 14, 'CCZ14', ST_GeomFromText('POINT (571121 6141282)',32721));

-- public.ubicaciongeog_2

INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (1, 'Ciudad Vieja', 1, 'CCZ1');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (2, 'Centro', 1, 'CCZ1');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (3, 'Barrio Sur', 1, 'CCZ1');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (4, 'Cordón', 2, 'CCZ2');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (5, 'Palermo', 2, 'CCZ2');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (6, 'Parque Rodó', 2, 'CCZ2');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (7, 'Punta Carretas', 5, 'CCZ5');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (8, 'Pocitos', 5, 'CCZ5');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (9, 'Buceo', 5, 'CCZ5');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (10, 'Parque Batlle; Villa Dolores', 4, 'CCZ4');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (11, 'Malvín', 7, 'CCZ7');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (12, 'Malvín Norte', 6, 'CCZ6');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (13, 'Punta Gorda', 7, 'CCZ7');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (14, 'Carrasco', 8, 'CCZ8');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (15, 'Carrasco Norte', 8, 'CCZ8');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (16, 'Bañados de Carrasco', 9, 'CCZ9');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (17, 'Maroñas, Parque Guaraní', 9, 'CCZ9');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (18, 'Flor de Maroñas', 9, 'CCZ9');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (19, 'Las Canteras', 8, 'CCZ8');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (20, 'Punta de Rieles; Bella Italia', 9, 'CCZ9');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (21, 'Jardines del Hipódromo', 9, 'CCZ9');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (22, 'Ituzaingó', 9, 'CCZ9');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (23, 'Unión', 6, 'CCZ6');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (24, 'Villa Española', 9, 'CCZ9');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (25, 'Mercado Modelo; Bolívar', 3, 'CCZ3');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (26, 'Castro, Pérez Castellanos', 11, 'CCZ11');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (27, 'Cerrito de la Victoria', 11, 'CCZ11');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (28, 'Las Acacias', 11, 'CCZ11');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (29, 'Aires Puros', 10, 'CCZ10');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (30, 'Casavalle', 11, 'CCZ11');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (31, 'Piedras Blancas', 9, 'CCZ9');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (32, 'Manga; Toledo Chico', 10, 'CCZ10');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (33, 'Paso de las Duranas', 13, 'CCZ13');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (34, 'Peñarol, Lavalleja', 13, 'CCZ13');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (35, 'Villa del Cerro', 17, 'CCZ17');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (36, 'Casabó; Pajas Blancas', 17, 'CCZ17');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (37, 'La Paloma; Tomkinson', 17, 'CCZ17');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (38, 'La Teja', 14, 'CCZ14');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (39, 'Prado, Nueva Savona', 15, 'CCZ15');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (40, 'Capurro, Bella Vista, Arroyo Seco', 16, 'CCZ16');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (41, 'Aguada', 1, 'CCZ1');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (42, 'Reducto', 3, 'CCZ3');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (43, 'Atahualpa', 15, 'CCZ15');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (44, 'Jacinto Vera', 3, 'CCZ3');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (45, 'La Figurita', 3, 'CCZ3');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (46, 'Larrañaga', 4, 'CCZ4');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (47, 'La Blanqueada', 4, 'CCZ4');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (48, 'Villa Muñoz, Retiro, Goes', 3, 'CCZ3');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (49, 'La Comercial', 2, 'CCZ2');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (50, 'Tres Cruces', 4, 'CCZ4');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (51, 'Brazo Oriental', 3, 'CCZ3');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (52, 'Sayago', 13, 'CCZ13');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (53, 'Conciliación', 13, 'CCZ13');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (54, 'Belvedere; Paso Molino', 13, 'CCZ13');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (55, 'Nuevo París', 13, 'CCZ13');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (56, 'Tres Ombúes, Pueblo Victoria', 14, 'CCZ14');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (57, 'Paso de la Arena, Santiago Vázquez', 18, 'CCZ18');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (58, 'Colón Sureste, Abayubá', 12, 'CCZ12');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (59, 'Colón Centro y Noroeste', 12, 'CCZ12');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (60, 'Lezica, Melilla', 12, 'CCZ12');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (61, 'Villa García, Manga Rural', 9, 'CCZ9');
INSERT INTO public.ubicaciongeog_2(idbarrio, nombarrio, idCCZ, nomCCZ) VALUES (62, 'Manga', 9, 'CCZ9');

-- public.lineas

-- ##########################
-- Ejecutar ETL
-- ##########################

-- public.metodos

INSERT INTO public.metodos(idmetodo, nommetodo) VALUES (1, 'UYMVD_PM2_b');
INSERT INTO public.metodos(idmetodo, nommetodo) VALUES (2, 'UYMVD_PM2_D');
INSERT INTO public.metodos(idmetodo, nommetodo) VALUES (3, 'UYMVD_PM10_2');
INSERT INTO public.metodos(idmetodo, nommetodo) VALUES (4, 'UYMVD_PM10_D');
INSERT INTO public.metodos(idmetodo, nommetodo) VALUES (5, 'UYMVD_PM10_H');
INSERT INTO public.metodos(idmetodo, nommetodo) VALUES (6, 'UYMVD_PTS');
INSERT INTO public.metodos(idmetodo, nommetodo) VALUES (7, 'UYMVD_SO2_T');
INSERT INTO public.metodos(idmetodo, nommetodo) VALUES (8, 'UYMVD_NO2_2');
INSERT INTO public.metodos(idmetodo, nommetodo) VALUES (9, 'UYMVD_HN');
INSERT INTO public.metodos(idmetodo, nommetodo) VALUES (10, 'UYMVD_O3');

-- public.contaminantes

INSERT INTO public.contaminantes(idcontaminante, nomcontaminante, idsubtipo, nomsubtipo, idtipo, nomtipo) VALUES (1, 'PM2', 1, 'PM', 2, 'Contaminante secundario');
INSERT INTO public.contaminantes(idcontaminante, nomcontaminante, idsubtipo, nomsubtipo, idtipo, nomtipo) VALUES (2, 'PM10', 1, 'PM', 2, 'Contaminante secundario');
INSERT INTO public.contaminantes(idcontaminante, nomcontaminante, idsubtipo, nomsubtipo, idtipo, nomtipo) VALUES (3, 'HN', 2, 'H', 1, 'Contaminante primario');
INSERT INTO public.contaminantes(idcontaminante, nomcontaminante, idsubtipo, nomsubtipo, idtipo, nomtipo) VALUES (4, 'PTS', 3, 'PTS', 1, 'Contaminante primario');
INSERT INTO public.contaminantes(idcontaminante, nomcontaminante, idsubtipo, nomsubtipo, idtipo, nomtipo) VALUES (5, 'SO2', 4, 'S', 1, 'Contaminante primario');
INSERT INTO public.contaminantes(idcontaminante, nomcontaminante, idsubtipo, nomsubtipo, idtipo, nomtipo) VALUES (6, 'NO2', 5, 'N', 2, 'Contaminante secundario');
INSERT INTO public.contaminantes(idcontaminante, nomcontaminante, idsubtipo, nomsubtipo, idtipo, nomtipo) VALUES (7, 'O3', 6, 'CG', 2, 'Contaminante secundario');

-- public.camaras
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (1, 3, 'Sarmiento', 'Requena', 'Rambla', ST_Transform(ST_GeomFromText('POINT (-56.1683580 -34.9153690)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (2, 2, 'Sarmiento', 'Requena', 'Rambla', ST_Transform(ST_GeomFromText('POINT (-56.1683580 -34.9153690)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (3, 1, 'Sarmiento', 'Requena', 'Rambla', ST_Transform(ST_GeomFromText('POINT (-56.1683580 -34.9153690)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (5, 2, 'Rambla', 'Morales', 'Jackson', ST_Transform(ST_GeomFromText('POINT (-56.1739940 -34.9144940)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (6, 1, 'Rambla', 'Morales', 'Jackson', ST_Transform(ST_GeomFromText('POINT (-56.1739940 -34.9144940)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (7, 3, 'Rambla', 'Morales', 'Jackson', ST_Transform(ST_GeomFromText('POINT (-56.1739940 -34.9144940)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (9, 2, 'Rambla', 'Errazquin', 'Sarmiento', ST_Transform(ST_GeomFromText('POINT (-56.1689890 -34.9165860)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (10, 1, 'Rambla', 'Errazquin', 'Sarmiento', ST_Transform(ST_GeomFromText('POINT (-56.1689890 -34.9165860)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (12, 3, 'Rambla', 'Errazquin', 'Sarmiento', ST_Transform(ST_GeomFromText('POINT (-56.1689890 -34.9165860)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (19, 2, 'Rambla', 'Montero', 'Solano Garcia', ST_Transform(ST_GeomFromText('POINT (-56.1521920 -34.9228610)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (20, 1, 'Rambla', 'Montero', 'Solano Garcia', ST_Transform(ST_GeomFromText('POINT (-56.1521920 -34.9228610)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (22, 2, 'Bv Espana', 'Ellauri', 'Benito Blanco', ST_Transform(ST_GeomFromText('POINT (-56.1504000 -34.9148970)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (23, 1, 'Bv Espana', 'Ellauri', 'Benito Blanco', ST_Transform(ST_GeomFromText('POINT (-56.1504000 -34.9148970)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (25, 2, 'Av Brasil', 'Ellauri', 'Benito Blanco', ST_Transform(ST_GeomFromText('POINT (-56.1500440 -34.9133890)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (26, 1, 'Av Brasil', 'Ellauri', 'Benito Blanco', ST_Transform(ST_GeomFromText('POINT (-56.1500440 -34.9133890)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (28, 2, 'Benito Blanco', '21 de Setiembre', 'Bv Espana', ST_Transform(ST_GeomFromText('POINT (-56.1499000 -34.9158280)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (29, 1, 'Benito Blanco', '21 de Setiembre', 'Bv Espana', ST_Transform(ST_GeomFromText('POINT (-56.1499000 -34.9158280)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (31, 3, 'Bv Espana', 'Rambla', 'Benito Blanco', ST_Transform(ST_GeomFromText('POINT (-56.1490440 -34.9151190)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (32, 2, 'Bv Espana', 'Rambla', 'Benito Blanco', ST_Transform(ST_GeomFromText('POINT (-56.1490440 -34.9151190)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (33, 1, 'Bv Espana', 'Rambla', 'Benito Blanco', ST_Transform(ST_GeomFromText('POINT (-56.1490440 -34.9151190)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (35, 3, 'Rambla', 'Montero', 'Bv Espana', ST_Transform(ST_GeomFromText('POINT (-56.1489420 -34.9164170)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (36, 2, 'Rambla', 'Montero', 'Bv Espana', ST_Transform(ST_GeomFromText('POINT (-56.1489420 -34.9164170)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (37, 1, 'Rambla', 'Montero', 'Bv Espana', ST_Transform(ST_GeomFromText('POINT (-56.1489420 -34.9164170)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (39, 2, 'Rambla', 'L A de Herrera', 'Buxareo', ST_Transform(ST_GeomFromText('POINT (-56.1409440 -34.9096000)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (40, 1, 'Rambla', 'L A de Herrera', 'Buxareo', ST_Transform(ST_GeomFromText('POINT (-56.1409440 -34.9096000)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (42, 2, '26 de Marzo', 'Bonavita', 'Tezanos', ST_Transform(ST_GeomFromText('POINT (-56.1341530 -34.9052580)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (43, 1, '26 de Marzo', 'Bonavita', 'Tezanos', ST_Transform(ST_GeomFromText('POINT (-56.1341530 -34.9052580)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (45, 2, 'Rambla', 'L A de Herrera', '26 de Marzo', ST_Transform(ST_GeomFromText('POINT (-56.1330780 -34.9063330)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (46, 1, 'Rambla', 'L A de Herrera', '26 de Marzo', ST_Transform(ST_GeomFromText('POINT (-56.1330780 -34.9063330)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (47, 3, 'Rambla', 'L A de Herrera', '26 de Marzo', ST_Transform(ST_GeomFromText('POINT (-56.1330780 -34.9063330)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (49, 2, 'Rambla', 'Pereyra', 'Paiva', ST_Transform(ST_GeomFromText('POINT (-56.1284640 -34.9049580)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (50, 1, 'Rambla', 'Pereyra', 'Paiva', ST_Transform(ST_GeomFromText('POINT (-56.1284640 -34.9049580)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (51, 3, 'Rambla', 'Pereyra', 'Paiva', ST_Transform(ST_GeomFromText('POINT (-56.1284640 -34.9049580)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (53, 2, 'Solano Lopez', 'Rivera', 'Rambla', ST_Transform(ST_GeomFromText('POINT (-56.1202890 -34.8974000)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (54, 1, 'Solano Lopez', 'Rivera', 'Rambla', ST_Transform(ST_GeomFromText('POINT (-56.1202890 -34.8974000)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (56, 2, 'Rambla', 'Batlle y Ordonez', 'Solano Lopez', ST_Transform(ST_GeomFromText('POINT (-56.1210190 -34.8988720)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (57, 1, 'Rambla', 'Batlle y Ordonez', 'Solano Lopez', ST_Transform(ST_GeomFromText('POINT (-56.1210190 -34.8988720)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (59, 2, 'Rambla', 'Hipolito Yrigoyen', '9 de Junio', ST_Transform(ST_GeomFromText('POINT (-56.1095220 -34.8959560)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (60, 1, 'Rambla', 'Hipolito Yrigoyen', '9 de Junio', ST_Transform(ST_GeomFromText('POINT (-56.1095220 -34.8959560)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (62, 2, 'Rambla', 'Arrascaeta', 'Hipolito Yrigoyen', ST_Transform(ST_GeomFromText('POINT (-56.1094470 -34.8959190)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (63, 1, 'Rambla', 'Arrascaeta', 'Hipolito Yrigoyen', ST_Transform(ST_GeomFromText('POINT (-56.1094470 -34.8959190)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (64, 3, 'Rambla', 'Arrascaeta', 'Hipolito Yrigoyen', ST_Transform(ST_GeomFromText('POINT (-56.1094470 -34.8959190)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (66, 2, 'Rambla', 'Gral Paz', 'Gallinal', ST_Transform(ST_GeomFromText('POINT (-56.0891580 -34.8951720)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (67, 1, 'Rambla', 'Gral Paz', 'Gallinal', ST_Transform(ST_GeomFromText('POINT (-56.0891580 -34.8951720)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (69, 2, 'L A de Herrera', 'Placido Ellauri', '26 de Marzo', ST_Transform(ST_GeomFromText('POINT (-56.1371270 -34.9051760)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (70, 1, 'L A de Herrera', 'Placido Ellauri', '26 de Marzo', ST_Transform(ST_GeomFromText('POINT (-56.1371270 -34.9051760)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (72, 1, 'Benito Blanco', 'Buxareo', 'Julio Cesar', ST_Transform(ST_GeomFromText('POINT (-56.1402810 -34.9069560)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (73, 1, 'L A de Herrera', 'Rambla', '26 de Marzo', ST_Transform(ST_GeomFromText('POINT (-56.1366980 -34.9061910)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (74, 2, '26 de Marzo', 'Rambla', 'L A de Herrera', ST_Transform(ST_GeomFromText('POINT (-56.1347610 -34.9053250)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (75, 1, '26 de Marzo', 'Rambla', 'L A de Herrera', ST_Transform(ST_GeomFromText('POINT (-56.1347610 -34.9053250)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (77, 2, 'Albo', '8 de Octubre', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1589570 -34.8913670)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (78, 1, 'Albo', '8 de Octubre', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1589570 -34.8913670)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (80, 4, 'Albo', '8 de Octubre', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1589570 -34.8913670)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (81, 3, 'Albo', '8 de Octubre', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1589570 -34.8913670)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (82, 3, 'Centenario', 'Jaime Cibils', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1553650 -34.8906340)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (83, 1, 'Centenario', 'Jaime Cibils', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1553650 -34.8906340)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (85, 2, 'Centenario', 'Jaime Cibils', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1553650 -34.8906340)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (86, 2, 'Ricaldoni', 'Ponce', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1588190 -34.8927990)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (87, 1, 'Ricaldoni', 'Ponce', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1588190 -34.8927990)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (89, 3, 'Ricaldoni', 'Alfredo Navarro', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1546990 -34.8917940)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (90, 1, 'Ricaldoni', 'Alfredo Navarro', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1546990 -34.8917940)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (91, 2, 'Ricaldoni', 'Alfredo Navarro', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1546990 -34.8917940)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (93, 2, 'Av Italia', 'Avelino Miranda', 'Albo', ST_Transform(ST_GeomFromText('POINT (-56.1597330 -34.8925570)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (94, 1, 'Av Italia', 'Avelino Miranda', 'Albo', ST_Transform(ST_GeomFromText('POINT (-56.1597330 -34.8925570)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (96, 3, 'Av Italia', 'Avelino Miranda', 'Albo', ST_Transform(ST_GeomFromText('POINT (-56.1597330 -34.8925570)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (97, 2, 'Av Italia', 'L A de Herrera', 'Las Heras', ST_Transform(ST_GeomFromText('POINT (-56.1496120 -34.8896560)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (98, 1, 'Av Italia', 'L A de Herrera', 'Las Heras', ST_Transform(ST_GeomFromText('POINT (-56.1496120 -34.8896560)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (99, 3, 'Av Italia', 'L A de Herrera', 'Las Heras', ST_Transform(ST_GeomFromText('POINT (-56.1496120 -34.8896560)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (101, 1, 'Batlle y Ordonez', 'Malbajar', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1389180 -34.8858830)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (102, 2, 'Batlle y Ordonez', 'Malbajar', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1389180 -34.8858830)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (104, 1, 'Comercio', '8 de Octubre', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1309660 -34.8861700)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (105, 2, 'L A de Herrera', 'Rep Dominicana', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1478440 -34.8883790)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (106, 1, 'L A de Herrera', 'Rep Dominicana', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1478440 -34.8883790)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (108, 2, 'Batlle y Ordonez', 'Ramon Anador', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1368200 -34.8874730)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (109, 1, 'Batlle y Ordonez', 'Ramon Anador', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1368200 -34.8874730)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (111, 1, 'Solano Lopez', 'Rivera', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1291070 -34.8875120)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (112, 2, 'Av Italia', 'Las Heras', 'L A de Herrera', ST_Transform(ST_GeomFromText('POINT (-56.1484410 -34.8892740)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (113, 1, 'Av Italia', 'Las Heras', 'L A de Herrera', ST_Transform(ST_GeomFromText('POINT (-56.1484410 -34.8892740)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (115, 3, 'Av Italia', 'Las Heras', 'L A de Herrera', ST_Transform(ST_GeomFromText('POINT (-56.1484410 -34.8892740)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (116, 2, 'Av Italia', 'Mataojo', 'Solano Lopez', ST_Transform(ST_GeomFromText('POINT (-56.1290750 -34.8867920)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (117, 1, 'Av Italia', 'Mataojo', 'Solano Lopez', ST_Transform(ST_GeomFromText('POINT (-56.1290750 -34.8867920)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (118, 3, 'Av Italia', 'Mataojo', 'Solano Lopez', ST_Transform(ST_GeomFromText('POINT (-56.1290750 -34.8867920)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (120, 1, 'Hipolito Yrigoyen', 'Igua', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1105760 -34.8859660)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (121, 2, 'Hipolito Yrigoyen', 'Rivera', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1100280 -34.8879270)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (122, 1, 'Hipolito Yrigoyen', 'Rivera', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1100280 -34.8879270)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (124, 2, 'Av Italia', 'Solano Lopez', 'Mataojo', ST_Transform(ST_GeomFromText('POINT (-56.1227750 -34.8871170)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (125, 1, 'Av Italia', 'Solano Lopez', 'Mataojo', ST_Transform(ST_GeomFromText('POINT (-56.1227750 -34.8871170)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (126, 3, 'Av Italia', 'Solano Lopez', 'Mataojo', ST_Transform(ST_GeomFromText('POINT (-56.1227750 -34.8871170)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (128, 2, 'Av Italia', 'Gallinal', 'Hipolito Yrigoyen', ST_Transform(ST_GeomFromText('POINT (-56.1092440 -34.8866960)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (129, 1, 'Av Italia', 'Gallinal', 'Hipolito Yrigoyen', ST_Transform(ST_GeomFromText('POINT (-56.1092440 -34.8866960)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (131, 3, 'Av Italia', 'Gallinal', 'Hipolito Yrigoyen', ST_Transform(ST_GeomFromText('POINT (-56.1092440 -34.8866960)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (132, 2, 'Av Italia', 'Hipolito Yrigoyen', 'Gallinal', ST_Transform(ST_GeomFromText('POINT (-56.1005430 -34.8860280)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (133, 1, 'Av Italia', 'Hipolito Yrigoyen', 'Gallinal', ST_Transform(ST_GeomFromText('POINT (-56.1005430 -34.8860280)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (134, 3, 'Av Italia', 'Hipolito Yrigoyen', 'Gallinal', ST_Transform(ST_GeomFromText('POINT (-56.1005430 -34.8860280)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (136, 2, 'Av Italia', 'Bolivia', 'Zum Felde', ST_Transform(ST_GeomFromText('POINT (-56.0945730 -34.8846750)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (137, 1, 'Av Italia', 'Bolivia', 'Zum Felde', ST_Transform(ST_GeomFromText('POINT (-56.0945730 -34.8846750)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (139, 2, 'Bolivia', 'Cno Carrasco', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.0835770 -34.8823420)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (140, 1, 'Bolivia', 'Cno Carrasco', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.0835770 -34.8823420)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (142, 1, 'Bolivia', 'Rivera', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.0829560 -34.8842180)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (143, 2, 'Bolivia', 'Rivera', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.0829560 -34.8842180)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (145, 2, 'Av Italia', 'Zum Felde', 'Bolivia', ST_Transform(ST_GeomFromText('POINT (-56.0850060 -34.8833630)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (146, 1, 'Av Italia', 'Zum Felde', 'Bolivia', ST_Transform(ST_GeomFromText('POINT (-56.0850060 -34.8833630)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (148, 2, 'Av Italia', 'Cooper', 'Bolonia', ST_Transform(ST_GeomFromText('POINT (-56.0771120 -34.8808270)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (149, 1, 'Av Italia', 'Cooper', 'Bolonia', ST_Transform(ST_GeomFromText('POINT (-56.0771120 -34.8808270)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (151, 1, 'Ponce', 'Rivera', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1628280 -34.9047130)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (152, 2, 'Av Brasil', 'Brito del Pino', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1627180 -34.9060970)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (153, 1, 'Av Brasil', 'Brito del Pino', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1627180 -34.9060970)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (155, 2, 'Rivera', 'Ponce', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1649440 -34.9028290)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (156, 1, 'Rivera', 'Ponce', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1649440 -34.9028290)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (158, 2, 'Bv Espana', 'Libertad', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1620910 -34.9112490)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (159, 1, 'Bv Espana', 'Libertad', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1620910 -34.9112490)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (161, 1, '21 de setiembre', 'Sarmiento', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1623770 -34.9132840)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (162, 2, 'Rodo', 'Requena', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1649440 -34.9028290)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (163, 1, 'Rodo', 'Requena', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1649440 -34.9028290)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (165, 3, 'Rodo', 'Requena', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1649440 -34.9028290)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (166, 2, 'Canelones', 'Acevedo Diaz', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1644270 -34.9067350)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (167, 1, 'Canelones', 'Acevedo Diaz', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1644270 -34.9067350)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (172, 1, '21 de setiembre', 'Bv Espana', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1640990 -34.9123630)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (173, 2, 'Bv Artigas', 'Bv Espana', 'Canelones', ST_Transform(ST_GeomFromText('POINT (-56.1635610 -34.9074430)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (174, 1, 'Bv Artigas', 'Bv Espana', 'Canelones', ST_Transform(ST_GeomFromText('POINT (-56.1635610 -34.9074430)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (176, 2, 'Bv Artigas', 'Sosa', '21 de setiembre', ST_Transform(ST_GeomFromText('POINT (-56.1627150 -34.9138600)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (177, 1, 'Bv Artigas', 'Sosa', '21 de setiembre', ST_Transform(ST_GeomFromText('POINT (-56.1627150 -34.9138600)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (179, 1, 'Bv Artigas', 'Palmar', 'Rivera', ST_Transform(ST_GeomFromText('POINT (-56.1633510 -34.9023930)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (180, 3, 'Bv Artigas', 'Palmar', 'Rivera', ST_Transform(ST_GeomFromText('POINT (-56.1633510 -34.9023930)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (181, 2, 'Bv Artigas', 'Palmar', 'Rivera', ST_Transform(ST_GeomFromText('POINT (-56.1633510 -34.9023930)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (183, 1, 'Bv Artigas', 'Ponce', 'Canelones', ST_Transform(ST_GeomFromText('POINT (-56.1637290 -34.9061210)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (184, 2, 'Bv Artigas', 'Ponce', 'Canelones', ST_Transform(ST_GeomFromText('POINT (-56.1637290 -34.9061210)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (185, 3, 'Bv Artigas', 'Ponce', 'Canelones', ST_Transform(ST_GeomFromText('POINT (-56.1637290 -34.9061210)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (187, 2, 'Avelino Miranda', '8 de Octubre', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1644270 -34.8930830)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (188, 1, 'Avelino Miranda', '8 de Octubre', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1644270 -34.8930830)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (190, 3, 'Avelino Miranda', '8 de Octubre', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1644270 -34.8930830)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (194, 2, 'Acevedo Diaz', 'Garibaldi', 'Ferrer Serra', ST_Transform(ST_GeomFromText('POINT (-56.1674980 -34.8941520)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (195, 3, 'Acevedo Diaz', 'Garibaldi', 'Ferrer Serra', ST_Transform(ST_GeomFromText('POINT (-56.1674980 -34.8941520)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (196, 1, 'Acevedo Diaz', 'Garibaldi', 'Ferrer Serra', ST_Transform(ST_GeomFromText('POINT (-56.1674980 -34.8941520)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (198, 2, 'Miguelete', 'Justicia', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1664020 -34.8918650)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (200, 1, 'Miguelete', 'Justicia', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1664020 -34.8918650)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (205, 1, 'Daniel Munoz', 'Martin C Martinez', 'Acevedo Diaz', ST_Transform(ST_GeomFromText('POINT (-56.1680140 -34.8959460)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (206, 2, 'Daniel Munoz', 'Martin C Martinez', 'Acevedo Diaz', ST_Transform(ST_GeomFromText('POINT (-56.1680140 -34.8959460)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (207, 3, 'Daniel Munoz', 'Martin C Martinez', 'Acevedo Diaz', ST_Transform(ST_GeomFromText('POINT (-56.1680140 -34.8959460)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (209, 2, 'Victor Haedo', 'Paullier', 'Acevedo Diaz', ST_Transform(ST_GeomFromText('POINT (-56.1679130 -34.8961090)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (210, 1, 'Victor Haedo', 'Paullier', 'Acevedo Diaz', ST_Transform(ST_GeomFromText('POINT (-56.1679130 -34.8961090)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (212, 3, 'Victor Haedo', 'Paullier', 'Acevedo Diaz', ST_Transform(ST_GeomFromText('POINT (-56.1679130 -34.8961090)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (213, 2, 'Bv Artigas', 'Canning', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1648180 -34.8959630)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (214, 1, 'Bv Artigas', 'Canning', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1648180 -34.8959630)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (216, 3, 'Bv Artigas', 'Canning', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1648180 -34.8959630)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (217, 1, 'Bv Artigas', 'Palmar', 'Canaro', ST_Transform(ST_GeomFromText('POINT (-56.1644210 -34.8995940)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (218, 2, 'Bv Artigas', 'Palmar', 'Canaro', ST_Transform(ST_GeomFromText('POINT (-56.1644210 -34.8995940)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (219, 3, 'Bv Artigas', 'Palmar', 'Canaro', ST_Transform(ST_GeomFromText('POINT (-56.1644210 -34.8995940)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (225, 2, 'Av Italia', 'Avelino Miranda', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1638570 -34.8944780)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (226, 1, 'Av Italia', 'Avelino Miranda', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1638570 -34.8944780)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (228, 3, 'Av Italia', 'Avelino Miranda', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1638570 -34.8944780)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (229, 2, 'Bv Artigas', 'Hocquart', 'Miguelete', ST_Transform(ST_GeomFromText('POINT (-56.1655600 -34.8909430)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (230, 1, 'Bv Artigas', 'Hocquart', 'Miguelete', ST_Transform(ST_GeomFromText('POINT (-56.1655600 -34.8909430)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (232, 3, 'Bv Artigas', 'Hocquart', 'Miguelete', ST_Transform(ST_GeomFromText('POINT (-56.1655600 -34.8909430)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (233, 1, 'Bv Artigas', 'Goes', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1651440 -34.8932840)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (234, 2, 'Bv Artigas', 'Goes', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1651440 -34.8932840)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (235, 3, 'Bv Artigas', 'Goes', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1651440 -34.8932840)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (236, 4, 'Bv Artigas', 'Goes', 'Av Italia', ST_Transform(ST_GeomFromText('POINT (-56.1651440 -34.8932840)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (238, 2, 'Nueva Palmira', 'Monte Caseros', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1651990 -34.8880090)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (239, 1, 'Nueva Palmira', 'Monte Caseros', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1651990 -34.8880090)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (241, 2, 'Hocquart', 'Justicia', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1667950 -34.8889960)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (242, 1, 'Hocquart', 'Justicia', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1667950 -34.8889960)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (248, 1, 'Bv Artigas', 'Hocquart', 'Nueva Palmira', ST_Transform(ST_GeomFromText('POINT (-56.1655230 -34.8895330)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (249, 2, 'Bv Artigas', 'Hocquart', 'Nueva Palmira', ST_Transform(ST_GeomFromText('POINT (-56.1655230 -34.8895330)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (250, 3, 'Bv Artigas', 'Hocquart', 'Nueva Palmira', ST_Transform(ST_GeomFromText('POINT (-56.1655230 -34.8895330)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (251, 2, 'Garibaldi', 'Monte Caseros', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1647890 -34.8855000)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (252, 1, 'Garibaldi', 'Monte Caseros', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1647890 -34.8855000)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (254, 2, 'Bv Artigas', 'Colorado', 'Caribes', ST_Transform(ST_GeomFromText('POINT (-56.1665110 -34.8809820)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (255, 1, 'Bv Artigas', 'Colorado', 'Caribes', ST_Transform(ST_GeomFromText('POINT (-56.1665110 -34.8809820)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (256, 3, 'Bv Artigas', 'Colorado', 'Caribes', ST_Transform(ST_GeomFromText('POINT (-56.1665110 -34.8809820)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (258, 2, 'Bv Artigas', 'Colorado', 'Caraguata', ST_Transform(ST_GeomFromText('POINT (-56.1667060 -34.8773350)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (259, 1, 'Bv Artigas', 'Colorado', 'Caraguata', ST_Transform(ST_GeomFromText('POINT (-56.1667060 -34.8773350)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (260, 3, 'Bv Artigas', 'Colorado', 'Caraguata', ST_Transform(ST_GeomFromText('POINT (-56.1667060 -34.8773350)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (262, 2, 'Bv Artigas', 'L A de Herrera', 'Gallinal', ST_Transform(ST_GeomFromText('POINT (-56.1674900 -34.8719600)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (263, 1, 'Bv Artigas', 'L A de Herrera', 'Gallinal', ST_Transform(ST_GeomFromText('POINT (-56.1674900 -34.8719600)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (264, 3, 'Bv Artigas', 'L A de Herrera', 'Gallinal', ST_Transform(ST_GeomFromText('POINT (-56.1674900 -34.8719600)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (266, 2, 'Varela', 'Batlle y Ordonez', 'L A de Herrera', ST_Transform(ST_GeomFromText('POINT (-56.1659740 -34.8699930)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (267, 1, 'Varela', 'Batlle y Ordonez', 'L A de Herrera', ST_Transform(ST_GeomFromText('POINT (-56.1659740 -34.8699930)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (269, 2, 'L A de Herrera', 'Setembrino Pereda', 'Varela S', ST_Transform(ST_GeomFromText('POINT (-56.1663180 -34.8691250)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (270, 1, 'L A de Herrera', 'Setembrino Pereda', 'Varela S', ST_Transform(ST_GeomFromText('POINT (-56.1663180 -34.8691250)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (272, 1, 'Bv Artigas', 'Gallinal', 'L A de Herrera', ST_Transform(ST_GeomFromText('POINT (-56.1674480 -34.8704060)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (273, 2, 'Bv Artigas', 'Gallinal', 'L A de Herrera', ST_Transform(ST_GeomFromText('POINT (-56.1674480 -34.8704060)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (274, 3, 'Bv Artigas', 'Gallinal', 'L A de Herrera', ST_Transform(ST_GeomFromText('POINT (-56.1674480 -34.8704060)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (276, 1, 'Aramburu', 'Terra', 'Gral Flores', ST_Transform(ST_GeomFromText('POINT (-56.1818900 -34.8827900)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (278, 2, 'Aramburu', 'Terra', 'Gral Flores', ST_Transform(ST_GeomFromText('POINT (-56.1818900 -34.8827900)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (279, 1, 'Amezaga', 'Arenal Grande', 'Gral Flores', ST_Transform(ST_GeomFromText('POINT (-56.1837200 -34.8862200)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (280, 1, 'Gral Flores', 'Av de las Leyes', 'Yatay', ST_Transform(ST_GeomFromText('POINT (-56.1864400 -34.8893500)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (281, 2, 'Gral Flores', 'Av de las Leyes', 'Yatay', ST_Transform(ST_GeomFromText('POINT (-56.1864400 -34.8893500)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (283, 1, 'Gral Flores', 'Blandengues', 'Aramburu', ST_Transform(ST_GeomFromText('POINT (-56.1828400 -34.8829200)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (284, 2, 'Gral Flores', 'Aramburu', 'Blandengues', ST_Transform(ST_GeomFromText('POINT (-56.1829800 -34.8831800)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (286, 1, 'Gral Flores', 'Aramburu', 'Blandengues', ST_Transform(ST_GeomFromText('POINT (-56.1829800 -34.8831800)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (290, 1, 'Garibaldi', 'Pando', 'Gral Flores', ST_Transform(ST_GeomFromText('POINT (-56.1803900 -34.8760800)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (291, 1, 'Gral Flores', 'Gallinal', 'Garibaldi', ST_Transform(ST_GeomFromText('POINT (-56.1789800 -34.8756700)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (293, 2, 'Gral Flores', 'Gallinal', 'Garibaldi', ST_Transform(ST_GeomFromText('POINT (-56.1789800 -34.8756700)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (294, 2, 'L A de Herrera', 'Gualeguay', 'Gral Flores', ST_Transform(ST_GeomFromText('POINT (-56.1708400 -34.8676300)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (295, 1, 'L A de Herrera', 'Gualeguay', 'Gral Flores', ST_Transform(ST_GeomFromText('POINT (-56.1708400 -34.8676300)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (297, 3, 'L A de Herrera', 'Gualeguay', 'Gral Flores', ST_Transform(ST_GeomFromText('POINT (-56.1708400 -34.8676300)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (301, 1, 'L A de Herrera', 'Gral San Martin', 'Gral Flores', ST_Transform(ST_GeomFromText('POINT (-56.1726200 -34.8664400)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (302, 2, 'Bv Artigas', 'Penco', 'Gral Flores', ST_Transform(ST_GeomFromText('POINT (-56.1753800 -34.8704100)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (303, 1, 'Bv Artigas', 'Penco', 'Gral Flores', ST_Transform(ST_GeomFromText('POINT (-56.1753800 -34.8704100)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (305, 3, 'Bv Artigas', 'Penco', 'Gral Flores', ST_Transform(ST_GeomFromText('POINT (-56.1753800 -34.8704100)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (306, 1, 'Gral Flores', 'Gallinal', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1751800 -34.8711000)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (307, 2, 'Gral Flores', 'Gallinal', 'Bv Artigas', ST_Transform(ST_GeomFromText('POINT (-56.1751800 -34.8711000)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (309, 1, 'Gral Flores', 'Quesada', 'L A de Herrera', ST_Transform(ST_GeomFromText('POINT (-56.1711800 -34.8660700)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (310, 2, 'Gral Flores', 'Quesada', 'L A de Herrera', ST_Transform(ST_GeomFromText('POINT (-56.1711800 -34.8660700)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (312, 1, 'Garibaldi', 'Urquiza', '8 de Octubre', ST_Transform(ST_GeomFromText('POINT (-56.1608500 -34.8888700)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (313, 2, 'Garibaldi', 'Urquiza', '8 de Octubre', ST_Transform(ST_GeomFromText('POINT (-56.1608500 -34.8888700)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (315, 1, 'L A de Herrera', 'Francisco Simon', 'Asilo', ST_Transform(ST_GeomFromText('POINT (-56.1515200 -34.8832100)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (316, 2, 'Garibaldi', 'Centenario', '8 de Octubre', ST_Transform(ST_GeomFromText('POINT (-56.1592800 -34.8898100)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (317, 1, 'Garibaldi', 'Centenario', '8 de Octubre', ST_Transform(ST_GeomFromText('POINT (-56.1592800 -34.8898100)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (319, 1, 'L A de Herrera', 'Monte Caseros', 'Joanico', ST_Transform(ST_GeomFromText('POINT (-56.1540400 -34.8806500)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (321, 2, 'Larranaga', 'Monte Caseros', 'Joanico', ST_Transform(ST_GeomFromText('POINT (-56.1524800 -34.8797600)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (322, 1, 'Larranaga', 'Monte Caseros', 'Joanico', ST_Transform(ST_GeomFromText('POINT (-56.1524800 -34.8797600)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (324, 3, 'Centenario', 'Cibils', 'L A de Herrera', ST_Transform(ST_GeomFromText('POINT (-56.1523200 -34.8834900)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (325, 2, 'Centenario', 'Cibils', 'L A de Herrera', ST_Transform(ST_GeomFromText('POINT (-56.1523200 -34.8834900)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (326, 1, 'Centenario', 'Cibils', 'L A de Herrera', ST_Transform(ST_GeomFromText('POINT (-56.1523200 -34.8834900)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (328, 2, 'Batlle y Ordonez', 'Joanico', '8 de Octubre', ST_Transform(ST_GeomFromText('POINT (-56.1483000 -34.8789600)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (329, 1, 'Batlle y Ordonez', 'Joanico', '8 de Octubre', ST_Transform(ST_GeomFromText('POINT (-56.1483000 -34.8789600)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (331, 3, 'Batlle y Ordonez', 'Joanico', '8 de Octubre', ST_Transform(ST_GeomFromText('POINT (-56.1483000 -34.8789600)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (332, 2, 'Battle y Ordonez', 'Cabrera', '8 de Octubre', ST_Transform(ST_GeomFromText('POINT (-56.1472200 -34.8797700)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (333, 1, 'Battle y Ordonez', 'Cabrera', '8 de Octubre', ST_Transform(ST_GeomFromText('POINT (-56.1472200 -34.8797700)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (335, 3, 'Battle y Ordonez', 'Cabrera', '8 de Octubre', ST_Transform(ST_GeomFromText('POINT (-56.1472200 -34.8797700)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (336, 1, '8 de octubre', 'Cibils', 'Mariano Moreno', ST_Transform(ST_GeomFromText('POINT (-56.1552600 -34.8836500)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (337, 2, '8 de octubre', 'Cibils', 'Mariano Moreno', ST_Transform(ST_GeomFromText('POINT (-56.1552600 -34.8836500)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (338, 3, '8 de octubre', 'Cibils', 'Mariano Moreno', ST_Transform(ST_GeomFromText('POINT (-56.1552600 -34.8836500)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (340, 1, '8 de Octubre', 'Avelino Miranda', 'Presidente Berro', ST_Transform(ST_GeomFromText('POINT (-56.1626900 -34.8924600)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (341, 2, '8 de Octubre', 'Avelino Miranda', 'Presidente Berro', ST_Transform(ST_GeomFromText('POINT (-56.1626900 -34.8924600)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (343, 1, '8 de octubre', 'Mariano Moreno', 'Cibils', ST_Transform(ST_GeomFromText('POINT (-56.1557200 -34.8841100)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (344, 2, '8 de octubre', 'Mariano Moreno', 'Cibils', ST_Transform(ST_GeomFromText('POINT (-56.1557200 -34.8841100)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (346, 1, 'Joanico', 'Bv Batlle y Ordonez', 'Larranaga', ST_Transform(ST_GeomFromText('POINT (-56.1514900 -34.8801500)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (348, 1, '8 de Octubre', 'Sanguinetti', 'Batlle y Ordonez', ST_Transform(ST_GeomFromText('POINT (-56.1471400 -34.8786600)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (349, 2, '8 de Octubre', 'Sanguinetti', 'Batlle y Ordonez', ST_Transform(ST_GeomFromText('POINT (-56.1471400 -34.8786600)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (351, 1, 'Comercio', 'Joanico', '8 de Octubre', ST_Transform(ST_GeomFromText('POINT (-56.1434400 -34.8757500)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (352, 1, 'Larravide', 'Isla de Gaspar', '8 de Octubre', ST_Transform(ST_GeomFromText('POINT (-56.1383800 -34.8744800)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (353, 2, 'Raissignier', 'Cno Carrasco', '8 de Octubre', ST_Transform(ST_GeomFromText('POINT (-56.1343200 -34.8711100)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (354, 1, 'Raissignier', 'Cno Carrasco', '8 de Octubre', ST_Transform(ST_GeomFromText('POINT (-56.1343200 -34.8711100)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (356, 2, '8 de Octubre', 'Battle y Ordonez', 'Sanguinetti', ST_Transform(ST_GeomFromText('POINT (-56.1465800 -34.8786600)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (357, 1, '8 de Octubre', 'Battle y Ordonez', 'Sanguinetti', ST_Transform(ST_GeomFromText('POINT (-56.1465800 -34.8786600)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (358, 3, '8 de Octubre', 'Battle y Ordonez', 'Sanguinetti', ST_Transform(ST_GeomFromText('POINT (-56.1465800 -34.8786600)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (360, 2, '8 de Octubre', 'Serrato', 'Cipriano Miro', ST_Transform(ST_GeomFromText('POINT (-56.1401700 -34.8749100)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (361, 1, '8 de Octubre', 'Serrato', 'Cipriano Miro', ST_Transform(ST_GeomFromText('POINT (-56.1401700 -34.8749100)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (363, 3, '8 de Octubre', 'Serrato', 'Cipriano Miro', ST_Transform(ST_GeomFromText('POINT (-56.1401700 -34.8749100)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (364, 1, '8 de Octubre', 'Gral Villagran', 'Raissignier', ST_Transform(ST_GeomFromText('POINT (-56.1348900 -34.8698800)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (365, 2, '8 de Octubre', 'Gral Villagran', 'Raissignier', ST_Transform(ST_GeomFromText('POINT (-56.1348900 -34.8698800)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (367, 1, '8 de Octubre', 'Cipriano Miro', 'Serrato', ST_Transform(ST_GeomFromText('POINT (-56.1403100 -34.8747900)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (368, 2, '8 de Octubre', 'Cipriano Miro', 'Serrato', ST_Transform(ST_GeomFromText('POINT (-56.1403100 -34.8747900)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (370, 1, 'Soca', 'Brito del Pino', 'Rivera', ST_Transform(ST_GeomFromText('POINT (-56.1563000 -34.9024300)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (371, 2, 'Soca', 'Brito del Pino', 'Rivera', ST_Transform(ST_GeomFromText('POINT (-56.1563000 -34.9024300)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (373, 1, 'Ponce', 'Ricaldoni', 'Rivera', ST_Transform(ST_GeomFromText('POINT (-56.1608300 -34.9021500)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (374, 1, 'Soca', 'Gestido', 'Rivera', ST_Transform(ST_GeomFromText('POINT (-56.1557500 -34.9037600)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (375, 1, 'Ponce', 'Av Brasil', 'Rivera', ST_Transform(ST_GeomFromText('POINT (-56.1619400 -34.9035000)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (376, 1, 'Rivera', 'Bv Artigas', 'Ponce', ST_Transform(ST_GeomFromText('POINT (-56.1623200 -34.9027200)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (377, 2, 'Rivera', 'Bv Artigas', 'Ponce', ST_Transform(ST_GeomFromText('POINT (-56.1623200 -34.9027200)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (379, 1, 'Rivera', 'Rosell y Rius', '14 de Julio', ST_Transform(ST_GeomFromText('POINT (-56.1472400 -34.9027200)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (380, 2, 'Rivera', 'Rosell y Rius', '14 de Julio', ST_Transform(ST_GeomFromText('POINT (-56.1472400 -34.9027200)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (382, 1, 'L A de Herrera', 'Demostenes', 'Rivera', ST_Transform(ST_GeomFromText('POINT (-56.1392150 -34.9002570)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (383, 2, 'L A de Herrera', 'Placido Ellauri', 'Rivera', ST_Transform(ST_GeomFromText('POINT (-56.1381910 -34.9019340)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (384, 1, 'L A de Herrera', 'Placido Ellauri', 'Rivera', ST_Transform(ST_GeomFromText('POINT (-56.1381910 -34.9019340)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (386, 1, 'Rivera', '14 de Julio', 'Rosell y Rius', ST_Transform(ST_GeomFromText('POINT (-56.1474700 -34.9031000)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (387, 2, 'Rivera', '14 de Julio', 'Rosell y Rius', ST_Transform(ST_GeomFromText('POINT (-56.1474700 -34.9031000)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (389, 2, 'Rivera', 'Batlle y Ordonez', 'Tezanos', ST_Transform(ST_GeomFromText('POINT (-56.1308300 -34.8997400)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (390, 1, 'Rivera', 'Batlle y Ordonez', 'Tezanos', ST_Transform(ST_GeomFromText('POINT (-56.1308300 -34.8997400)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (392, 2, 'Batlle y Ordonez', 'Ramon Anador', 'Rivera', ST_Transform(ST_GeomFromText('POINT (-56.1252300 -34.8969400)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (393, 1, 'Batlle y Ordonez', 'Ramon Anador', 'Rivera', ST_Transform(ST_GeomFromText('POINT (-56.1252300 -34.8969400)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (395, 2, 'Solano Lï¿½pez', 'Av Italia', 'Asamblea', ST_Transform(ST_GeomFromText('POINT (-56.1229800 -34.8944300)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (396, 1, 'Solano Lï¿½pez', 'Av Italia', 'Asamblea', ST_Transform(ST_GeomFromText('POINT (-56.1229800 -34.8944300)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (398, 2, 'Batlle y Ordonez', 'Pereyra', 'Rivera', ST_Transform(ST_GeomFromText('POINT (-56.1240300 -34.8980100)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (399, 1, 'Batlle y Ordonez', 'Pereyra', 'Rivera', ST_Transform(ST_GeomFromText('POINT (-56.1240300 -34.8980100)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (401, 1, 'Rivera', 'Tezanos', 'Batlle y Ordonez', ST_Transform(ST_GeomFromText('POINT (-56.1253700 -34.8979000)', 4326), 32721));
INSERT INTO public.camaras(iddetector, idcarril, dscavenida, dscintanterior, dscintsiguiente, geom) VALUES (402, 2, 'Rivera', 'Tezanos', 'Batlle y Ordonez', ST_Transform(ST_GeomFromText('POINT (-56.1253700 -34.8979000)', 4326), 32721));

-- public.mediciones

-- ##########################
-- Ejecutar ETL
-- ##########################