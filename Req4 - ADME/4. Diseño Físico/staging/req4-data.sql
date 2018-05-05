-- public.tiempo

-- ##########################
-- Ver Req0/Cargar Tiempo.ktr
-- ##########################

-- public.ubicacionGeog_1

-- ##########################
-- Ver Req0/data.sql
-- ##########################

-- public.contaminantes

-- ##########################
-- Ver Req0/data.sql
-- ##########################

-- public.metodos

-- ##########################
-- Ver Req0/data.sql
-- ##########################

-- public.generadores

INSERT INTO generadores (idgenerador, nomgenerador, geom) VALUES (1, 'Central Batlle', ST_Transform(ST_GeomFromText('POINT (-56.197745, -34.884245)', 4326), 32721));

-- public.generaciontermica_mwh
-- 1;20170401;4.08

CREATE TABLE generaciontermica_mwh
(
  idGenerador INT REFERENCES generadores
, idFecha BIGINT
, energiagenerada REAL
, PRIMARY KEY (idGenerador, idFecha)
)
;CREATE INDEX idx_generaciontermica_mwh ON generaciontermica_mwh(idGenerador, idFecha)
;

-- public.mediciones

-- ##########################
-- Ver ETL
-- ##########################

