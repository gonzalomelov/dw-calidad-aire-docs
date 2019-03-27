-- Sequence: data.fechas_id_seq

-- DROP SEQUENCE data.fechas_id_seq;

CREATE SEQUENCE data.fechas_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 7
  CACHE 1;
ALTER TABLE data.fechas_id_seq
  OWNER TO superuser;
GRANT ALL ON SEQUENCE data.fechas_id_seq TO superuser;
GRANT USAGE ON SEQUENCE data.fechas_id_seq TO webuser;


-- Table: data.fechas

-- DROP TABLE data.fechas;

CREATE TABLE data.fechas
(
  id integer NOT NULL DEFAULT nextval('fechas_id_seq'::regclass),

  idfecha int,
  fecha varchar(10),
  idmes int,
  mes varchar(10),
  trimestre int,
  semestre int,
  anio int,

  private boolean DEFAULT false,
  owner_id integer DEFAULT request.user_id(),
  CONSTRAINT fechas_pkey PRIMARY KEY (id),
  CONSTRAINT fechas_owner_id_fkey FOREIGN KEY (owner_id)
      REFERENCES data."user" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE data.fechas
  OWNER TO superuser;
GRANT ALL ON TABLE data.fechas TO superuser;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE data.fechas TO api;

-- Trigger: send_change_event on data.fechas

-- DROP TRIGGER send_change_event ON data.fechas;

CREATE TRIGGER send_change_event
  AFTER INSERT OR UPDATE OR DELETE
  ON data.fechas
  FOR EACH ROW
  EXECUTE PROCEDURE rabbitmq.on_row_change('{"include":["id","fecha"]}');

-- View: api.fechas

-- DROP VIEW api.fechas;

CREATE OR REPLACE VIEW api.fechas AS 
 SELECT fechas.id,

    fechas.idfecha,
    fechas.fecha,
    fechas.idmes,
    fechas.mes,
    fechas.trimestre,
    fechas.semestre,
    fechas.anio,

    fechas.private,
    fechas.owner_id = request.user_id() AS mine
   FROM fechas;

ALTER TABLE api.fechas
  OWNER TO api;
GRANT ALL ON TABLE api.fechas TO api;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE api.fechas TO webuser;
