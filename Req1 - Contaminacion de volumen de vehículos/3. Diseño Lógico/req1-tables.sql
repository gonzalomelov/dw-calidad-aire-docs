postgres://gonzalomelo:password@localhost:5432/dwcalidadaire-req1

DROP TABLE mediciones;
DROP TABLE ubicacionGeog_1;
DROP TABLE contaminantes;
DROP TABLE tiempo;
DROP TABLE camaras;

DELETE FROM mediciones;
DELETE FROM ubicacionGeog_1;
DELETE FROM contaminantes;
DELETE FROM tiempo;
DELETE FROM camaras;

-- 20170401002500;"20170401002500";00;03;"miercoles";4;"abril";2017

CREATE TABLE tiempo
(
  idFechaHora BIGINT
, fecha VARCHAR(12)
, hora INT
, idDiaSemana INT
, nomDiaSemana VARCHAR(10)
, idMes INT
, mes VARCHAR(10)
, anio INT
, PRIMARY KEY (idFechaHora)
)
;CREATE INDEX idx_tiempo_idFechaHora ON tiempo(idFechaHora)
;

-- CREATE TABLE ubicacionGeog_1

-- ##########################
-- Ver tablas.sql
-- ##########################

-- CREATE TABLE contaminantes

-- ##########################
-- Ver tablas.sql
-- ##########################

-- 1;"Sarmiento entre Requena y Rambla"

CREATE TABLE camaras
(
  idDetector INT
, dscUbicacion VARCHAR(60) -- dscAvenida + dscIntAnterior + dscIntSiguiente
, PRIMARY KEY (idDetector)
)
;CREATE INDEX idx_camaras_idDetector ON camaras(idDetector)
;

-- 11;PM2;20170401002500;194;50;6

CREATE TABLE mediciones
(
  idEstacion INT REFERENCES ubicacionGeog_1
, idContaminante INT REFERENCES contaminantes
, idDetector INT REFERENCES camaras
, idFechaHora BIGINT REFERENCES tiempo
, polucion INT
, volumen INT
-- , volumenHora INT
, PRIMARY KEY (idEstacion, idContaminante, idDetector, idFechaHora)
)
;CREATE INDEX idx_mediciones_pk ON mediciones(idEstacion, idContaminante, idDetector, idFechaHora)
;CREATE INDEX idx_mediciones_idEstacion ON mediciones(idEstacion)
;CREATE INDEX idx_mediciones_idContaminante ON mediciones(idContaminante)
;CREATE INDEX idx_mediciones_idDetector ON mediciones(idDetector)
;CREATE INDEX idx_mediciones_idFechaHora ON mediciones(idFechaHora)
;
