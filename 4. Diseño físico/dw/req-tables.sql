postgres://gonzalomelo:password@localhost:5432/dwcalidadaire-final


DROP TABLE dw.mediciones;
DROP TABLE dw.mediciones2;
DROP TABLE dw.mediciones3;

DROP TABLE dw.diasImportantes;
DROP TABLE dw.industrias;
DROP TABLE dw.camaras;
DROP TABLE dw.contaminantescategorias;
DROP TABLE dw.vientoVelocidad;
DROP TABLE dw.vientoDireccion;
DROP TABLE dw.temperaturaExterna;
DROP TABLE dw.humedadRelativa;
DROP TABLE dw.radiacionSolarGlobal;
DROP TABLE dw.contaminantes;
DROP TABLE dw.metodos;
DROP TABLE dw.estacionesDeLaRed;
DROP TABLE dw.fechas;
DROP TABLE dw.diasSemana;
DROP TABLE dw.estacionesDelAnio;
DROP TABLE dw.horas;

DELETE FROM dw.mediciones;
DELETE FROM dw.mediciones2;
DELETE FROM dw.mediciones3;

DELETE FROM dw.diasImportantes;
DELETE FROM dw.industrias;
DELETE FROM dw.camaras;
DELETE FROM dw.contaminantescategorias;
DELETE FROM dw.vientoVelocidad;
DELETE FROM dw.vientoDireccion;
DELETE FROM dw.temperaturaExterna;
DELETE FROM dw.humedadRelativa;
DELETE FROM dw.radiacionSolarGlobal;
DELETE FROM dw.contaminantes;
DELETE FROM dw.metodos;
DELETE FROM dw.estacionesDeLaRed;
DELETE FROM dw.fechas;
DELETE FROM dw.diasSemana;
DELETE FROM dw.estacionesDelAnio;
DELETE FROM dw.horas;

-- Dimensiones

CREATE TABLE dw.horas
(
  idHora INT
, hora VARCHAR(2)
, idRangoHoras INT
, descRangoHoras VARCHAR(10)
, PRIMARY KEY (idHora)
)
;CREATE INDEX idx_horas_idHora ON dw.horas(idHora)
;

CREATE TABLE dw.estacionesDelAnio
(
  idEstacionDelAnio INT
, nomEstacionDelAnio VARCHAR(10)
, PRIMARY KEY (idEstacionDelAnio)
)
;CREATE INDEX idx_estacionesDelAnio_idEstacionDelAnio ON dw.estacionesDelAnio(idEstacionDelAnio)
;

CREATE TABLE dw.diasSemana
(
  idDiaSemana INT
, nomDiaSemana VARCHAR(10)
, PRIMARY KEY (idDiaSemana)
)
;CREATE INDEX idx_diasSemana_idDiaSemana ON dw.diasSemana(idDiaSemana)
;

CREATE TABLE dw.fechas
(
  idFecha INT
, fecha VARCHAR(10)
, idMes INT
, mes VARCHAR(10)
, trimestre INT
, semestre INT
, anio INT
, PRIMARY KEY (idFecha)
)
;CREATE INDEX idx_fechas_idFecha ON dw.fechas(idFecha)
;

CREATE TABLE dw.estacionesDeLaRed
(
  idEstacionDeLaRed INT
, nomEstacionDeLaRed VARCHAR(22)
, ubicEstacionDeLaRed geometry(Geometry,32721)
, idBarrio INT
, nomBarrio VARCHAR(25)
, idCCZ INT
, nomCCZ VARCHAR(5)
, PRIMARY KEY (idEstacionDeLaRed)
)
;CREATE INDEX idx_estacionesDeLaRed_idEstacionDeLaRed ON dw.estacionesDeLaRed(idEstacionDeLaRed)
;

CREATE TABLE dw.metodos
(
  idMetodo INT
, nomMetodo VARCHAR(12)
, PRIMARY KEY (idMetodo)
)
;CREATE INDEX idx_metodos_idMetodo ON dw.metodos(idMetodo)
;

CREATE TABLE dw.contaminantes
(
  idContaminante INT
, nomContaminante VARCHAR(4)
, idSubTipo INT
, nomSubTipo VARCHAR(59)
, idTipo INT
, nomTipo VARCHAR(23)
, muybuena INT
, buena INT
, aceptable INT
, inadecuada INT
, mala INT
, PRIMARY KEY (idContaminante)
)
;CREATE INDEX idx_contaminantes_idContaminante ON dw.contaminantes(idContaminante)
;

CREATE TABLE dw.contaminantescategorias
(
  surrogate_key SERIAL
, valor INT
, idContaminante INT REFERENCES dw.contaminantes
, idRangoContaminantesCategorias INT
, descRangoContaminantesCategorias VARCHAR(10)
, PRIMARY KEY (surrogate_key)
)
;CREATE INDEX idx_contaminantescategorias_surrogate_key ON dw.contaminantescategorias(surrogate_key)
;

CREATE TABLE dw.radiacionSolarGlobal
(
  valorEnW_m2 REAL
, idRangoRadiacionSolarGlobal INT
, descRangoRadiacionSolarGlobal VARCHAR(10)
, PRIMARY KEY (valorEnW_m2)
)
;CREATE INDEX idx_radiacionSolarGlobal_valorEnW_m2 ON dw.radiacionSolarGlobal(valorEnW_m2)
;

CREATE TABLE dw.humedadRelativa
(
  valorEnPorcentaje REAL
, idRangoHumedadRelativa INT
, descRangoHumedadRelativa VARCHAR(10)
, PRIMARY KEY (valorEnPorcentaje)
)
;CREATE INDEX idx_humedadRelativa_valorEnPorcentaje ON dw.humedadRelativa(valorEnPorcentaje)
;

CREATE TABLE dw.temperaturaExterna
(
  valorEnC REAL
, idRangoTemperaturaExterna INT
, descRangoTemperaturaExterna VARCHAR(10)
, PRIMARY KEY (valorEnC)
)
;CREATE INDEX idx_temperaturaExterna_valorEnC ON dw.temperaturaExterna(valorEnC)
;

CREATE TABLE dw.vientoDireccion
(
  valorEnGrados REAL
, idRangoVientoDireccion INT
, descRangoVientoDireccion VARCHAR(10)
, PRIMARY KEY (valorEnGrados)
)
;CREATE INDEX idx_vientoDireccion_valorEnGrados ON dw.vientoDireccion(valorEnGrados)
;

CREATE TABLE dw.vientoVelocidad
(
  valorEnM_s REAL
, idRangoVientoVelocidad INT
, descRangoVientoVelocidad VARCHAR(10)
, PRIMARY KEY (valorEnM_s)
)
;CREATE INDEX idx_vientoVelocidad_valorEnM_s ON dw.vientoVelocidad(valorEnM_s)
;

CREATE TABLE dw.camaras
(
  idDetector INT
, idCarril INT
, dscAvenida VARCHAR(20)
, dscIntAnterior VARCHAR(20)
, dscIntSiguiente VARCHAR(20)
, dscubicacion VARCHAR(100)
, ubicCamara geometry(Geometry,32721)
, PRIMARY KEY (idDetector)
)
;CREATE INDEX idx_camaras_idDetector ON dw.camaras(idDetector)
;

CREATE TABLE dw.industrias
(
  idIndustria INT
, nomIndustria VARCHAR(20)
, ubicIndustria geometry(Geometry,32721)
, PRIMARY KEY (idIndustria)
)
;CREATE INDEX idx_industrias_idIndustria ON dw.industrias(idIndustria)
;

CREATE TABLE dw.diasImportantes
(
  idDiaImportante INT
, nomDiaImportante VARCHAR(20)
, idTipoDiaImportante INT
, nomTipoDiaImportante VARCHAR(20)
, idFecha INT
, idHora INT
, PRIMARY KEY (idDiaImportante)
)
;CREATE INDEX idx_diasImportantes_idDiaImportante ON dw.diasImportantes(idDiaImportante)
;

-- Medidas

CREATE TABLE dw.mediciones
(
  idHora INT REFERENCES dw.horas
, idEstacionDelAnio INT REFERENCES dw.estacionesDelAnio
, idDiaSemana INT REFERENCES dw.diasSemana
, idFecha INT REFERENCES dw.fechas
, idEstacionDeLaRed INT REFERENCES dw.estacionesDeLaRed
, idMetodo INT REFERENCES dw.metodos
, idContaminante INT REFERENCES dw.contaminantes
--, valorEnW_m2 INT REFERENCES dw.radiacionSolarGlobal
--, valorEnPorcentaje INT REFERENCES dw.humedadRelativa
, valorEnCTemperaturaExterna REAL REFERENCES dw.temperaturaExterna
--, valorEnGrados INT REFERENCES dw.vientoDireccion
--, valorEnM_s INT REFERENCES dw.vientoVelocidad
, idDetector INT REFERENCES dw.camaras
, contaminacion REAL
, volumenVehiculos INT
, PRIMARY KEY (
    idHora
    , idEstacionDelAnio
    , idDiaSemana
    , idFecha
    , idEstacionDeLaRed
    , idMetodo
    , idContaminante
    --, valorEnW_m2
    --, valorEnPorcentaje
    , valorEnCTemperaturaExterna
    --, valorEnGrados
    --, valorEnM_s
    , idDetector
  )
)
;CREATE INDEX idx_mediciones_pk ON dw.mediciones(
    idHora
    , idEstacionDelAnio
    , idDiaSemana
    , idFecha
    , idEstacionDeLaRed
    , idMetodo
    , idContaminante
    -- , valorEnW_m2
    -- , valorEnPorcentaje
    , valorEnCTemperaturaExterna
    -- , valorEnGrados
    -- , valorEnM_s
    , idDetector
  )
;CREATE INDEX idx_mediciones_idHora ON dw.mediciones(idHora)
;CREATE INDEX idx_mediciones_idEstacionDelAnio ON dw.mediciones(idEstacionDelAnio)
;CREATE INDEX idx_mediciones_idDiaSemana ON dw.mediciones(idDiaSemana)
;CREATE INDEX idx_mediciones_idFecha ON dw.mediciones(idFecha)
;CREATE INDEX idx_mediciones_idEstacionDeLaRed ON dw.mediciones(idEstacionDeLaRed)
;CREATE INDEX idx_mediciones_idMetodo ON dw.mediciones(idMetodo)
;CREATE INDEX idx_mediciones_idContaminante ON dw.mediciones(idContaminante)
--;CREATE INDEX idx_mediciones_valorEnW_m2 ON dw.mediciones(valorEnW_m2)
--;CREATE INDEX idx_mediciones_valorEnPorcentaje ON dw.mediciones(valorEnPorcentaje)
;CREATE INDEX idx_mediciones_valorEnCTemperaturaExterna ON dw.mediciones(valorEnCTemperaturaExterna)
--;CREATE INDEX idx_mediciones_valorEnGrados ON dw.mediciones(valorEnGrados)
--;CREATE INDEX idx_mediciones_valorEnM_s ON dw.mediciones(valorEnM_s)
;CREATE INDEX idx_mediciones_idDetector ON dw.mediciones(idDetector)
;

CREATE TABLE dw.mediciones2
(
  idHora INT REFERENCES dw.horas
, idEstacionDelAnio INT REFERENCES dw.estacionesDelAnio
, idDiaSemana INT REFERENCES dw.diasSemana
, idFecha INT REFERENCES dw.fechas
, idEstacionDeLaRed INT REFERENCES dw.estacionesDeLaRed
, idMetodo INT REFERENCES dw.metodos
, idContaminante INT REFERENCES dw.contaminantes
, surrogate_key INT REFERENCES dw.contaminantescategorias
--, valorEnW_m2 INT REFERENCES dw.radiacionSolarGlobal
--, valorEnPorcentaje INT REFERENCES dw.humedadRelativa
, valorEnCTemperaturaExterna REAL REFERENCES dw.temperaturaExterna
--, valorEnGrados INT REFERENCES dw.vientoDireccion
--, valorEnM_s INT REFERENCES dw.vientoVelocidad
, idDiaImportante INT REFERENCES dw.diasImportantes
, contaminacion REAL
, PRIMARY KEY (
    idHora
    , idEstacionDelAnio
    , idDiaSemana
    , idFecha
    , idEstacionDeLaRed
    , idMetodo
    , idContaminante
    , surrogate_key
    --, valorEnW_m2
    --, valorEnPorcentaje
    , valorEnCTemperaturaExterna
    --, valorEnGrados
    --, valorEnM_s
    , idDiaImportante
  )
)
;CREATE INDEX idx_mediciones2_pk ON dw.mediciones2(
    idHora
    , idEstacionDelAnio
    , idDiaSemana
    , idFecha
    , idEstacionDeLaRed
    , idMetodo
    , idContaminante
    , surrogate_key
    -- , valorEnW_m2
    -- , valorEnPorcentaje
    , valorEnCTemperaturaExterna
    -- , valorEnGrados
    -- , valorEnM_s
    , idDiaImportante
  )
;CREATE INDEX idx_mediciones2_idHora ON dw.mediciones2(idHora)
;CREATE INDEX idx_mediciones2_idEstacionDelAnio ON dw.mediciones2(idEstacionDelAnio)
;CREATE INDEX idx_mediciones2_idDiaSemana ON dw.mediciones2(idDiaSemana)
;CREATE INDEX idx_mediciones2_idFecha ON dw.mediciones2(idFecha)
;CREATE INDEX idx_mediciones2_idEstacionDeLaRed ON dw.mediciones2(idEstacionDeLaRed)
;CREATE INDEX idx_mediciones2_idMetodo ON dw.mediciones2(idMetodo)
;CREATE INDEX idx_mediciones2_idContaminante ON dw.mediciones2(idContaminante)
;CREATE INDEX idx_mediciones2_surrogate_key ON dw.mediciones2(surrogate_key)
--;CREATE INDEX idx_mediciones2_valorEnW_m2 ON dw.mediciones2(valorEnW_m2)
--;CREATE INDEX idx_mediciones2_valorEnPorcentaje ON dw.mediciones2(valorEnPorcentaje)
;CREATE INDEX idx_mediciones2_valorEnCTemperaturaExterna ON dw.mediciones2(valorEnCTemperaturaExterna)
--;CREATE INDEX idx_mediciones2_valorEnGrados ON dw.mediciones2(valorEnGrados)
--;CREATE INDEX idx_mediciones2_valorEnM_s ON dw.mediciones2(valorEnM_s)
;CREATE INDEX idx_mediciones2_idDiaImportante ON dw.mediciones2(idDiaImportante)
;

CREATE TABLE dw.mediciones3
(
  idEstacionDelAnio INT REFERENCES estacionesDelAnio
, idDiaSemana INT REFERENCES diasSemana
, idFecha INT REFERENCES fechas
, idEstacionDeLaRed INT REFERENCES estacionesDeLaRed
, idMetodo INT REFERENCES metodos
, idContaminante INT REFERENCES contaminantes
, idIndustria INT REFERENCES industrias
, contaminacion REAL
, energiaGenerada REAL
, PRIMARY KEY (
    idEstacionDelAnio
    , idDiaSemana
    , idFecha
    , idEstacionDeLaRed
    , idMetodo
    , idContaminante
    , idIndustria
  )
)
;CREATE INDEX idx_mediciones3_pk ON mediciones3(
    idEstacionDelAnio
    , idDiaSemana
    , idFecha
    , idEstacionDeLaRed
    , idMetodo
    , idContaminante
    , idIndustria
  )
;CREATE INDEX idx_mediciones3_idEstacionDelAnio ON mediciones3(idEstacionDelAnio)
;CREATE INDEX idx_mediciones3_idDiaSemana ON mediciones3(idDiaSemana)
;CREATE INDEX idx_mediciones3_idFecha ON mediciones3(idFecha)
;CREATE INDEX idx_mediciones3_idEstacionDeLaRed ON mediciones3(idEstacionDeLaRed)
;CREATE INDEX idx_mediciones3_idMetodo ON mediciones3(idMetodo)
;CREATE INDEX idx_mediciones3_idContaminante ON mediciones3(idContaminante)
;CREATE INDEX idx_mediciones3_idIndustria ON mediciones3(idIndustria)
;