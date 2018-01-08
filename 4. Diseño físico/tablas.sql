postgres://gonzalomelo:password@localhost:5432/dwcalidadaire

DROP TABLE mediciones;
DROP TABLE afectados;
DROP TABLE ubicacionGeog_1;
DROP TABLE contaminantes;
DROP TABLE lineas;
DROP TABLE metodos;
DROP TABLE tiempo;
DROP TABLE "lineas-barrios-estaciones";
DROP TABLE "lineas-barrios-estaciones-aux";
DROP TABLE barrios;
DROP TABLE paradas;
DROP TABLE hogares;
DROP TABLE problemasEnHogares;
DROP TABLE bridgeHogaresProblemas;

DELETE FROM mediciones;
DELETE FROM afectados;
DELETE FROM ubicacionGeog_1;
DELETE FROM contaminantes;
DELETE FROM lineas;
DELETE FROM metodos;
DELETE FROM tiempo;
DELETE FROM "lineas-barrios-estaciones";
DELETE FROM "lineas-barrios-estaciones-aux";
DELETE FROM barrios;
DELETE FROM paradas;
DELETE FROM hogares;
DELETE FROM problemasEnHogares;
DELETE FROM bridgeHogaresProblemas;

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
  idEstacion VARCHAR(50)
, nomEstacion VARCHAR(250)
, idBarrio INT
, nomBarrio VARCHAR(250)
, idCCZ INT
, nomCCZ VARCHAR(250)
, PRIMARY KEY (idEstacion)
)
;CREATE INDEX idx_ubicacionGeog_1_idEstacion ON ubicacionGeog_1(idEstacion)
;

CREATE TABLE ubicacionGeog_2
(
, idBarrio INT
, nomBarrio VARCHAR(250)
, idCCZ INT
, nomCCZ VARCHAR(250)
, PRIMARY KEY (idBarrio)
)
;CREATE INDEX idx_ubicacionGeog_2_idBarrio ON ubicacionGeog_2(idBarrio)
;

CREATE TABLE lineas
(
  idLinea BIGINT
, nomLinea VARCHAR(50)
, PRIMARY KEY (idLinea)
)
;CREATE INDEX idx_lineas_idLinea ON lineas(idLinea)
;

CREATE TABLE metodos
(
  idMetodo VARCHAR(50)
, nomMetodo VARCHAR(250)
, PRIMARY KEY (idMetodo)
)
;CREATE INDEX idx_metodos_idMetodo ON metodos(idMetodo)
;

CREATE TABLE contaminantes
(
  idContaminante VARCHAR(10)
, nomContaminante VARCHAR(250)
, idSubTipo VARCHAR(10)
, nomSubTipo VARCHAR(250)
, idTipo INT
, nomTipo VARCHAR(250)
, PRIMARY KEY (idContaminante)
)
;CREATE INDEX idx_contaminantes_idContaminante ON contaminantes(idContaminante)
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

CREATE TABLE mediciones
(
  idEstacion VARCHAR(50) REFERENCES ubicacionGeog_1
, idMetodo VARCHAR(50) REFERENCES metodos
, idContaminante VARCHAR(10) REFERENCES contaminantes
, idLinea BIGINT REFERENCES lineas
, idFecha INT REFERENCES tiempo
, polucion INT
, PRIMARY KEY (idEstacion, idMetodo, idContaminante, idLinea, idFecha)
)
;CREATE INDEX idx_mediciones_idEstacion ON mediciones(idEstacion)
;CREATE INDEX idx_mediciones_idMetodo ON mediciones(idMetodo)
;CREATE INDEX idx_mediciones_idContaminante ON mediciones(idContaminante)
;CREATE INDEX idx_mediciones_idLinea ON mediciones(idLinea)
;CREATE INDEX idx_mediciones_idFecha ON mediciones(idFecha)
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
, polucion INT
, PRIMARY KEY (idHogar, idBarrio, idContaminante, idFecha)
)
;CREATE INDEX idx_afectados_idHogar ON afectados(idHogar)
;CREATE INDEX idx_afectados_idBarrio ON afectados(idBarrio)
;CREATE INDEX idx_afectados_idContaminante ON afectados(idContaminante)
;CREATE INDEX idx_afectados_idFecha ON afectados(idFecha)
;

-- barrios y paradas desde shape files

shp2pgsql -W LATIN1 -I -s EPSG:31981 barrios.shp barrios | psql -U gonzalomelo -d dwcalidadaire
shp2pgsql -W LATIN1 -I -s EPSG:31981 v_uptu_paradas.shp paradas | psql -U gonzalomelo -d dwcalidadaire

-- lineas que pasar por los barrios de las estaciones

CREATE TABLE "lineas-barrios-estaciones-aux" as
SELECT *
FROM "paradas" AS PO
WHERE ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid = 38)) = TRUE OR ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid = 52)) = TRUE OR ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid = 53)) = TRUE OR ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid = 59)) = TRUE OR ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid = 28)) = TRUE OR ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid = 25)) = TRUE OR ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid = 23)) = TRUE OR ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid = 39)) = TRUE OR ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid = 48)) = TRUE;

ALTER TABLE "lineas-barrios-estaciones-aux"
ADD COLUMN idBarrio INT;

ALTER TABLE "lineas-barrios-estaciones-aux"
ADD COLUMN nomBarrio VARCHAR(250);

-- actualizo cada barrio en lineas-barrios-estaciones-aux

UPDATE "lineas-barrios-estaciones-aux"
SET idBarrio = 5, nombarrio = 'Carrasco' WHERE gid IN (SELECT gid FROM paradas AS PO WHERE ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid=38)) = TRUE);

UPDATE "lineas-barrios-estaciones-aux"
SET idBarrio = 2, nombarrio = 'Centro' WHERE gid IN (SELECT gid FROM paradas AS PO WHERE ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid=52)) = TRUE);

UPDATE "lineas-barrios-estaciones-aux"
SET idBarrio = 1, nombarrio = 'Ciudad Vieja' WHERE gid IN (SELECT gid FROM paradas AS PO WHERE ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid=53)) = TRUE);

UPDATE "lineas-barrios-estaciones-aux"
SET idBarrio = 7, nombarrio = 'Colón' WHERE gid IN (SELECT gid FROM paradas AS PO WHERE ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid=59)) = TRUE);

UPDATE "lineas-barrios-estaciones-aux"
SET idBarrio = 6, nombarrio = 'La Teja' WHERE gid IN (SELECT gid FROM paradas AS PO WHERE ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid=28)) = TRUE);

UPDATE "lineas-barrios-estaciones-aux"
SET idBarrio = 4, nombarrio = 'Maroñas' WHERE gid IN (SELECT gid FROM paradas AS PO WHERE ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid=25)) = TRUE);

UPDATE "lineas-barrios-estaciones-aux"
SET idBarrio = 9, nombarrio = 'Prado' WHERE gid IN (SELECT gid FROM paradas AS PO WHERE ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid=23)) = TRUE);

UPDATE "lineas-barrios-estaciones-aux"
SET idBarrio = 8, nombarrio = 'Goes' WHERE gid IN (SELECT gid FROM paradas AS PO WHERE ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid=39)) = TRUE);

UPDATE "lineas-barrios-estaciones-aux"
SET idBarrio = 3, nombarrio = 'Tres Cruces' WHERE gid IN (SELECT gid FROM paradas AS PO WHERE ST_Within((PO.geom),(SELECT geom FROM barrios WHERE gid=48)) = TRUE);


-- creamos tabla a utilizar

CREATE TABLE "lineas-barrios-estaciones" AS
SELECT desc_linea, idbarrio, nombarrio
FROM "lineas-barrios-estaciones-aux"
GROUP BY desc_linea,idbarrio, nombarrio
ORDER BY desc_linea