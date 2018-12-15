postgres://gonzalomelo:password@localhost:5432/dwcalidadaire

DROP TABLE "lineas-barrios-estaciones";
DROP TABLE "lineas-barrios-estaciones-aux";
DROP TABLE barrios;

DROP TABLE mediciones;
DROP TABLE afectados;
DROP TABLE ubicacionGeog_1;
DROP TABLE ubicacionGeog_1_Geom;
DROP TABLE contaminantes;
DROP TABLE lineas;
DROP TABLE metodos;
DROP TABLE tiempo;
DROP TABLE paradas;
DROP TABLE hogares;
DROP TABLE problemasEnHogares;
DROP TABLE bridgeHogaresProblemas;
DROP TABLE camaras;

DELETE FROM "lineas-barrios-estaciones";
DELETE FROM "lineas-barrios-estaciones-aux";
DELETE FROM barrios;

DELETE FROM mediciones;
DELETE FROM afectados;
DELETE FROM ubicacionGeog_1;
DELETE FROM ubicacionGeog_1_Geom;
DELETE FROM contaminantes;
DELETE FROM lineas;
DELETE FROM metodos;
DELETE FROM tiempo;
DELETE FROM paradas;
DELETE FROM hogares;
DELETE FROM problemasEnHogares;
DELETE FROM bridgeHogaresProblemas;
DELETE FROM camaras;

CREATE TABLE tiempo
(
  idFecha INT
, fecha VARCHAR(10)
, idEstacionDelAnio INT
, nomEstacionDelAnio VARCHAR(10)
, idDiaSemana INT
, nomDiaSemana VARCHAR(10)
, idMes INT
, mes VARCHAR(10)
, trimestre INT
, semestre INT
, anio INT
, PRIMARY KEY (idFecha)
)
;CREATE INDEX idx_tiempo_idFecha ON tiempo(idFecha)
;

CREATE TABLE ubicacionGeog_1
(
  idEstacion INT
, nomEstacion VARCHAR(22)
, idBarrio INT
, nomBarrio VARCHAR(25)
, idCCZ INT
, nomCCZ VARCHAR(5)
, PRIMARY KEY (idEstacion)
)
;CREATE INDEX idx_ubicacionGeog_1_idEstacion ON ubicacionGeog_1(idEstacion)
;

CREATE TABLE ubicacionGeog_1_Geom
(
  idEstacion INT
, nomEstacion VARCHAR(22)
, idBarrio INT
, nomBarrio VARCHAR(25)
, idCCZ INT
, nomCCZ VARCHAR(5)
, geom geometry(Geometry,32721)
, PRIMARY KEY (idEstacion)
)
;CREATE INDEX idx_ubicacionGeog_1_Geom_idEstacion ON ubicacionGeog_1_Geom(idEstacion)
;


CREATE TABLE ubicacionGeog_2
(
  idBarrio INT
, nomBarrio VARCHAR(250)
, idCCZ INT
, nomCCZ VARCHAR(250)
, PRIMARY KEY (idBarrio)
)
;CREATE INDEX idx_ubicacionGeog_2_idBarrio ON ubicacionGeog_2(idBarrio)
;

CREATE TABLE lineas
(
  idLinea INT
, nomLinea VARCHAR(50)
, PRIMARY KEY (idLinea)
)
;CREATE INDEX idx_lineas_idLinea ON lineas(idLinea)
;

CREATE TABLE metodos
(
  idMetodo INT
, nomMetodo VARCHAR(12)
, PRIMARY KEY (idMetodo)
)
;CREATE INDEX idx_metodos_idMetodo ON metodos(idMetodo)
;

CREATE TABLE contaminantes
(
  idContaminante INT
, nomContaminante VARCHAR(4)
, idSubTipo INT
, nomSubTipo VARCHAR(59)
, idTipo INT
, nomTipo VARCHAR(23)
, PRIMARY KEY (idContaminante)
)
;CREATE INDEX idx_contaminantes_idContaminante ON contaminantes(idContaminante)
;

CREATE TABLE camaras
(
  idDetector INT
, idCarril INT
, dscAvenida VARCHAR(20)
, dscIntAnterior VARCHAR(20)
, dscIntSiguiente VARCHAR(20)
, geom geometry(Geometry,32721)
, PRIMARY KEY (idDetector)
)
;CREATE INDEX idx_camaras_idDetector ON camaras(idDetector)
;

CREATE TABLE volumenAutosCamara
(
  idVolumenAutosCamara SERIAL
, idDetector INT
, idFecha TIMESTAMPTZ
, volumen INT
, volumenHora INT
, PRIMARY KEY (idVolumenAutosCamara)
)
;CREATE INDEX idx_volumenAutosCamara_idVolumenAutosCamara ON volumenAutosCamara(idVolumenAutosCamara)
;

CREATE TABLE mediciones
(
  idEstacion INT REFERENCES ubicacionGeog_1
, idMetodo INT REFERENCES metodos
, idContaminante INT REFERENCES contaminantes
, idLinea INT REFERENCES lineas
, idFecha INT REFERENCES tiempo
, contaminacion INT
, PRIMARY KEY (idEstacion, idMetodo, idContaminante, idLinea, idFecha)
)
;CREATE INDEX idx_mediciones_pk ON mediciones(idEstacion, idMetodo, idContaminante, idLinea, idFecha)
;CREATE INDEX idx_mediciones_idEstacion ON mediciones(idEstacion)
;CREATE INDEX idx_mediciones_idMetodo ON mediciones(idMetodo)
;CREATE INDEX idx_mediciones_idContaminante ON mediciones(idContaminante)
;CREATE INDEX idx_mediciones_idLinea ON mediciones(idLinea)
;CREATE INDEX idx_mediciones_idFecha ON mediciones(idFecha)
;

CREATE TABLE hogares
(
  idHogar INT
, nomHogar VARCHAR(250)
, idNivelConfort INT
, nomNivelConfort VARCHAR(250)
, idAsentamiento INT
, nomAsentamiento VARCHAR(250)
, idTenencia INT
, nomTenencia VARCHAR(250)
, idTipoVivienda INT
, nomTipoVivienda VARCHAR(250)
, PRIMARY KEY (idHogar)
)
;CREATE INDEX idx_hogares_idHogar ON hogares(idHogar)
;

CREATE TABLE problemasEnHogares
(
  idProblema INT
, nomProblema VARCHAR(250)
, PRIMARY KEY (idProblema)
)
;CREATE INDEX idx_problemasEnHogares_idProblema ON problemasEnHogares(idProblema)
;

CREATE TABLE bridgeHogaresProblemas
(
  idHogar INT REFERENCES hogares
, idProblema INT REFERENCES problemasEnHogares
, PRIMARY KEY (idHogar, idProblema)
)
;CREATE INDEX idx_bridgeHogaresProblemas_idHogar ON bridgeHogaresProblemas(idHogar, idProblema)
;

CREATE TABLE afectados
(
  idHogar INT REFERENCES hogares
, idBarrio INT REFERENCES ubicacionGeog_2
, idContaminante VARCHAR(10) REFERENCES contaminantes
, idFecha INT REFERENCES tiempo
, cantPersonas INT
, cantPersonas>=14 INT
, cantPersonas<14 INT
, cantMujeres INT
, cantHombres INT
, contaminacion INT
, PRIMARY KEY (idHogar, idBarrio, idContaminante, idFecha)
)
;CREATE INDEX idx_afectados_pk ON afectados(idHogar, idBarrio, idContaminante, idFecha)
;CREATE INDEX idx_afectados_idHogar ON afectados(idHogar)
;CREATE INDEX idx_afectados_idBarrio ON afectados(idBarrio)
;CREATE INDEX idx_afectados_idContaminante ON afectados(idContaminante)
;CREATE INDEX idx_afectados_idFecha ON afectados(idFecha)
;

-- barrios y paradas desde shape files

shp2pgsql -W UTF8 -I -s EPSG:31981 ine_barrios_mvd.shp barrios | psql -U gonzalomelo -d dwcalidadaire
shp2pgsql -W UTF8 -I -s EPSG:31981 v_uptu_paradas.shp paradas | psql -U gonzalomelo -d dwcalidadaire

-- lineas que pasar por los barrios de las estaciones

CREATE TABLE "lineas-barrios-estaciones-aux" as
SELECT *
FROM "paradas" AS PO
WHERE
  ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid = 13)) = TRUE OR
  ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid = 2)) = TRUE OR
  ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid = 1)) = TRUE OR
  ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid = 56)) = TRUE OR
  ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid = 62)) = TRUE OR
  ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid = 16)) = TRUE OR
  ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid = 37)) = TRUE OR
  ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid = 40)) = TRUE OR
  ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid = 48)) = TRUE;

ALTER TABLE "lineas-barrios-estaciones-aux"
ADD COLUMN idBarrio INT;

ALTER TABLE "lineas-barrios-estaciones-aux"
ADD COLUMN nomBarrio VARCHAR(250);

-- actualizo cada barrio en lineas-barrios-estaciones-aux

UPDATE "lineas-barrios-estaciones-aux"
SET idBarrio = 14, nombarrio = 'Carrasco' WHERE gid IN (SELECT gid FROM paradas AS PO WHERE ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid=13)) = TRUE);

UPDATE "lineas-barrios-estaciones-aux"
SET idBarrio = 2, nombarrio = 'Centro' WHERE gid IN (SELECT gid FROM paradas AS PO WHERE ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid=2)) = TRUE);

UPDATE "lineas-barrios-estaciones-aux"
SET idBarrio = 1, nombarrio = 'Ciudad Vieja' WHERE gid IN (SELECT gid FROM paradas AS PO WHERE ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid=1)) = TRUE);

UPDATE "lineas-barrios-estaciones-aux"
SET idBarrio = 58, nombarrio = 'Colón Centro y Noroeste' WHERE gid IN (SELECT gid FROM paradas AS PO WHERE ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid=56)) = TRUE);

UPDATE "lineas-barrios-estaciones-aux"
SET idBarrio = 38, nombarrio = 'La Teja' WHERE gid IN (SELECT gid FROM paradas AS PO WHERE ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid=62)) = TRUE);

UPDATE "lineas-barrios-estaciones-aux"
SET idBarrio = 17, nombarrio = 'Maroñas, Parque Guaraní' WHERE gid IN (SELECT gid FROM paradas AS PO WHERE ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid=16)) = TRUE);

UPDATE "lineas-barrios-estaciones-aux"
SET idBarrio = 39, nombarrio = 'Prado, Nueva Savona' WHERE gid IN (SELECT gid FROM paradas AS PO WHERE ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid=37)) = TRUE);

UPDATE "lineas-barrios-estaciones-aux"
SET idBarrio = 48, nombarrio = 'Villa Muñoz, Retiro, Goes' WHERE gid IN (SELECT gid FROM paradas AS PO WHERE ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid=40)) = TRUE);

UPDATE "lineas-barrios-estaciones-aux"
SET idBarrio = 50, nombarrio = 'Tres Cruces' WHERE gid IN (SELECT gid FROM paradas AS PO WHERE ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid=48)) = TRUE);

-- creamos tabla a utilizar

CREATE TABLE "lineas-barrios-estaciones" AS
SELECT desc_linea, idbarrio, nombarrio
FROM "lineas-barrios-estaciones-aux"
GROUP BY desc_linea,idbarrio, nombarrio
ORDER BY desc_linea