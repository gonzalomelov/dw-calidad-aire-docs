postgres://gonzalomelo:password@localhost:5432/dwcalidadaire-final

--DATAWAREHOUSE
DROP TABLE mediciones;

DROP TABLE camaras;
DROP TABLE vientoVelocidad;
DROP TABLE vientoDireccion;
DROP TABLE temperaturaInterna;
DROP TABLE temperaturaExterna;
DROP TABLE humedadRelativa;
DROP TABLE radiacionSolarGlobal;
DROP TABLE contaminantes;
DROP TABLE metodos;
DROP TABLE estacionesDeLaRed;
DROP TABLE fechas;
DROP TABLE diasSemana;
DROP TABLE estacionesDelAnio;
DROP TABLE horas;

DELETE FROM mediciones;

DELETE FROM camaras;
DELETE FROM vientoVelocidad;
DELETE FROM vientoDireccion;
DELETE FROM temperaturaInterna;
DELETE FROM temperaturaExterna;
DELETE FROM humedadRelativa;
DELETE FROM radiacionSolarGlobal;
DELETE FROM contaminantes;
DELETE FROM metodos;
DELETE FROM estacionesDeLaRed;
DELETE FROM fechas;
DELETE FROM diasSemana;
DELETE FROM estacionesDelAnio;
DELETE FROM horas;

CREATE TABLE horas
(
  idHora INT
, hora VARCHAR(2)
, idRangoHoras INT
, descRangoHoras VARCHAR(10)
, PRIMARY KEY (idHora)
)
;CREATE INDEX idx_horas_idHora ON horas(idHora)
;

CREATE TABLE estacionesDelAnio
(
  idEstacionDelAnio INT
, nomEstacionDelAnio VARCHAR(10)
, PRIMARY KEY (idEstacionDelAnio)
)
;CREATE INDEX idx_estacionesDelAnio_idEstacionDelAnio ON estacionesDelAnio(idEstacionDelAnio)
;

CREATE TABLE diasSemana
(
  idDiaSemana INT
, nomDiaSemana VARCHAR(10)
, PRIMARY KEY (idDiaSemana)
)
;CREATE INDEX idx_diasSemana_idDiaSemana ON diasSemana(idDiaSemana)
;

CREATE TABLE fechas
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
;CREATE INDEX idx_fechas_idFecha ON fechas(idFecha)
;

CREATE TABLE estacionesDeLaRed
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
;CREATE INDEX idx_estacionesDeLaRed_idEstacionDeLaRed ON estacionesDeLaRed(idEstacionDeLaRed)
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

CREATE TABLE radiacionSolarGlobal
(
  valorEnW_m2 REAL
, idRangoRadiacionSolarGlobal INT
, descRangoRadiacionSolarGlobal VARCHAR(10)
, PRIMARY KEY (valorEnW_m2)
)
;CREATE INDEX idx_radiacionSolarGlobal_valorEnW_m2 ON radiacionSolarGlobal(valorEnW_m2)
;

CREATE TABLE humedadRelativa
(
  valorEnPorcentaje REAL
, idRangoHumedadRelativa INT
, descRangoHumedadRelativa VARCHAR(10)
, PRIMARY KEY (valorEnPorcentaje)
)
;CREATE INDEX idx_humedadRelativa_valorEnPorcentaje ON humedadRelativa(valorEnPorcentaje)
;

CREATE TABLE temperaturaExterna
(
  valorEnC REAL
, idRangoTemperaturaExterna INT
, descRangoTemperaturaExterna VARCHAR(10)
, PRIMARY KEY (valorEnC)
)
;CREATE INDEX idx_temperaturaExterna_valorEnC ON temperaturaExterna(valorEnC)
;

CREATE TABLE temperaturaInterna
(
  valorEnC REAL
, idRangoTemperaturaInterna INT
, descRangoTemperaturaInterna VARCHAR(10)
, PRIMARY KEY (valorEnC)
)
;CREATE INDEX idx_temperaturaInterna_valorEnC ON temperaturaInterna(valorEnC)
;

CREATE TABLE vientoDireccion
(
  valorEnGrados REAL
, idRangoVientoDireccion INT
, descRangoVientoDireccion VARCHAR(10)
, PRIMARY KEY (valorEnGrados)
)
;CREATE INDEX idx_vientoDireccion_valorEnGrados ON vientoDireccion(valorEnGrados)
;

CREATE TABLE vientoVelocidad
(
  valorEnM_s REAL
, idRangoVientoVelocidad INT
, descRangoVientoVelocidad VARCHAR(10)
, PRIMARY KEY (valorEnGrados)
)
;CREATE INDEX idx_vientoVelocidad_valorEnGrados ON vientoVelocidad(valorEnGrados)
;

CREATE TABLE camaras
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
;CREATE INDEX idx_camaras_idDetector ON camaras(idDetector)
;

CREATE TABLE mediciones
(
  idHora INT REFERENCES horas
, idEstacionDelAnio INT REFERENCES estacionesDelAnio
, idDiaSemana INT REFERENCES diasSemana
, idFecha INT REFERENCES fechas
, idEstacionDeLaRed INT REFERENCES estacionesDeLaRed
, idMetodo INT REFERENCES metodos
, idContaminante INT REFERENCES contaminantes
--, valorEnW_m2 INT REFERENCES radiacionSolarGlobal
--, valorEnPorcentaje INT REFERENCES humedadRelativa
, valorEnCTemperaturaExterna REAL REFERENCES temperaturaExterna
--, valorEnCTemperaturaInterna INT REFERENCES temperaturaInterna
--, valorEnGrados INT REFERENCES vientoDireccion
--, valorEnM_s INT REFERENCES vientoVelocidad
, idDetector INT REFERENCES camaras
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
    --, valorEnCTemperaturaInterna
    --, valorEnGrados
    --, valorEnM_s
    , idDetector
  )
)
;CREATE INDEX idx_mediciones_pk ON mediciones(
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
    -- , valorEnCTemperaturaInterna
    -- , valorEnGrados
    -- , valorEnM_s
    , idDetector
  )
;CREATE INDEX idx_mediciones_idHora ON mediciones(idHora)
;CREATE INDEX idx_mediciones_idEstacionDelAnio ON mediciones(idEstacionDelAnio)
;CREATE INDEX idx_mediciones_idDiaSemana ON mediciones(idDiaSemana)
;CREATE INDEX idx_mediciones_idFecha ON mediciones(idFecha)
;CREATE INDEX idx_mediciones_idEstacionDeLaRed ON mediciones(idEstacionDeLaRed)
;CREATE INDEX idx_mediciones_idMetodo ON mediciones(idMetodo)
;CREATE INDEX idx_mediciones_idContaminante ON mediciones(idContaminante)
--;CREATE INDEX idx_mediciones_valorEnW_m2 ON mediciones(valorEnW_m2)
--;CREATE INDEX idx_mediciones_valorEnPorcentaje ON mediciones(valorEnPorcentaje)
;CREATE INDEX idx_mediciones_valorEnCTemperaturaExterna ON mediciones(valorEnCTemperaturaExterna)
--;CREATE INDEX idx_mediciones_valorEnCTemperaturaInterna ON mediciones(valorEnCTemperaturaInterna)
--;CREATE INDEX idx_mediciones_valorEnGrados ON mediciones(valorEnGrados)
--;CREATE INDEX idx_mediciones_valorEnM_s ON mediciones(valorEnM_s)
;CREATE INDEX idx_mediciones_idDetector ON mediciones(idDetector)
;