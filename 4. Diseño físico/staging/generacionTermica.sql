-- public.generaciontermica_mwh
-- 1;20170401;4.08

CREATE TABLE generaciontermica_mwh
(
  idIndustria INT REFERENCES industrias
, idFecha BIGINT
, energiagenerada REAL
, PRIMARY KEY (idIndustria, idFecha)
)
;CREATE INDEX idx_generaciontermica_mwh ON generaciontermica_mwh(idIndustria, idFecha)
;