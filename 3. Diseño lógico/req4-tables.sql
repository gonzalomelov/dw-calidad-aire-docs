postgres://gonzalomelo:password@localhost:5432/dwcalidadaire-req4

DROP TABLE mediciones;
DROP TABLE ubicacionGeog_1;
DROP TABLE contaminantes;
DROP TABLE tiempo;
DROP TABLE metodos;
DROP TABLE generadores;
DROP TABLE generaciontermica_mwh;

DELETE FROM mediciones;
DELETE FROM ubicacionGeog_1;
DELETE FROM contaminantes;
DELETE FROM tiempo;
DELETE FROM metodos;
DELETE FROM generadores;
DELETE FROM generaciontermica_mwh;

-- CREATE TABLE tiempo 20170401;"20170401";03;"miercoles";4;"abril";2017

-- ##########################
-- Ver tablas.sql
-- ##########################

-- CREATE TABLE ubicacionGeog_1

-- ##########################
-- Ver tablas.sql
-- ##########################

-- CREATE TABLE contaminantes

-- ##########################
-- Ver tablas.sql
-- ##########################

-- CREATE TABLE metodos

-- ##########################
-- Ver tablas.sql
-- ##########################

-- 1;"Central Batlle"

CREATE TABLE generadores
(
  idGenerador INT
, nomGenerador VARCHAR(60)
, PRIMARY KEY (idGenerador)
)
;CREATE INDEX idx_generadores_idGenerador ON generadores(idGenerador)
;

-- 11;PM2;194;20170401;50;500,34

CREATE TABLE mediciones
(
  idEstacion INT REFERENCES ubicacionGeog_1
, idContaminante INT REFERENCES contaminantes
, idMetodo INT REFERENCES metodos
, idGenerador INT REFERENCES generadores
, idFecha BIGINT REFERENCES tiempo
, polucion INT
, energiagenerada REAL
, PRIMARY KEY (idEstacion, idContaminante, idGenerador, idFecha)
)
;CREATE INDEX idx_mediciones_pk ON mediciones(idEstacion, idContaminante, idGenerador, idFecha)
;CREATE INDEX idx_mediciones_idEstacion ON mediciones(idEstacion)
;CREATE INDEX idx_mediciones_idContaminante ON mediciones(idContaminante)
;CREATE INDEX idx_mediciones_idMetodo ON mediciones(idMetodo)
;CREATE INDEX idx_mediciones_idGenerador ON mediciones(idGenerador)
;CREATE INDEX idx_mediciones_idFecha ON mediciones(idFecha)
;
