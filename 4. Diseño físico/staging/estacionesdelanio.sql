-- Sequence: data.estacionesdelanio_id_seq

-- DROP SEQUENCE data.estacionesdelanio_id_seq;

CREATE SEQUENCE data.estacionesdelanio_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 7
  CACHE 1;
ALTER TABLE data.estacionesdelanio_id_seq
  OWNER TO superuser;
GRANT ALL ON SEQUENCE data.estacionesdelanio_id_seq TO superuser;
GRANT USAGE ON SEQUENCE data.estacionesdelanio_id_seq TO webuser;


-- Table: data.estacionesdelanio

-- DROP TABLE data.estacionesdelanio;

CREATE TABLE data.estacionesdelanio
(
  id integer NOT NULL DEFAULT nextval('estacionesdelanio_id_seq'::regclass),

  idestaciondelanio int,
  nomestaciondelanio varchar(10),

  private boolean DEFAULT false,
  owner_id integer DEFAULT request.user_id(),
  CONSTRAINT estacionesdelanio_pkey PRIMARY KEY (id),
  CONSTRAINT estacionesdelanio_owner_id_fkey FOREIGN KEY (owner_id)
      REFERENCES data."user" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE data.estacionesdelanio
  OWNER TO superuser;
GRANT ALL ON TABLE data.estacionesdelanio TO superuser;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE data.estacionesdelanio TO api;

-- Trigger: send_change_event on data.estacionesdelanio

-- DROP TRIGGER send_change_event ON data.estacionesdelanio;

CREATE TRIGGER send_change_event
  AFTER INSERT OR UPDATE OR DELETE
  ON data.estacionesdelanio
  FOR EACH ROW
  EXECUTE PROCEDURE rabbitmq.on_row_change('{"include":["id","nomestaciondelanio"]}');

-- View: api.estacionesdelanio

-- DROP VIEW api.estacionesdelanio;

CREATE OR REPLACE VIEW api.estacionesdelanio AS 
 SELECT estacionesdelanio.id,

    estacionesdelanio.idestaciondelanio,
    estacionesdelanio.nomestaciondelanio,

    estacionesdelanio.private,
    estacionesdelanio.owner_id = request.user_id() AS mine
   FROM estacionesdelanio;

ALTER TABLE api.estacionesdelanio
  OWNER TO api;
GRANT ALL ON TABLE api.estacionesdelanio TO api;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE api.estacionesdelanio TO webuser;
