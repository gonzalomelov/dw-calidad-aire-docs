create view v_ubicaciongeog_1 as
select *
FROM dblink('dbname=dwcalidadaire', 'select idestacion, nomestacion, idbarrio, nombarrio, idccz, nomccz from ubicaciongeog_1')
AS ubicaciongeog_1(idestacion integer, nomestacion character varying(22), idbarrio integer, nombarrio character varying(25), idccz integer, nomccz character varying(5));

create view v_ubicaciongeog_1_Geom as
select *
FROM dblink('dbname=dwcalidadaire', 'select idestacion, nomestacion, idbarrio, nombarrio, idccz, nomccz, geom from ubicaciongeog_1_Geom')
AS ubicaciongeog_1_Geom(idestacion integer, nomestacion character varying(22), idbarrio integer, nombarrio character varying(25), idccz integer, nomccz character varying(5), geom geometry(Geometry,32721));