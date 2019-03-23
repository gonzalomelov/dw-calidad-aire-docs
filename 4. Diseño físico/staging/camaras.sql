-- Sequence: data.camaras_id_seq

-- DROP SEQUENCE data.camaras_id_seq;

CREATE SEQUENCE data.camaras_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 7
  CACHE 1;
ALTER TABLE data.camaras_id_seq
  OWNER TO superuser;
GRANT ALL ON SEQUENCE data.camaras_id_seq TO superuser;
GRANT USAGE ON SEQUENCE data.camaras_id_seq TO webuser;


-- Table: data.camaras

-- DROP TABLE data.camaras;

CREATE TABLE data.camaras
(
  id integer NOT NULL DEFAULT nextval('camaras_id_seq'::regclass),

  iddetector int,
  idcarril int,
  dscavenida varchar(20),
  dscintanterior varchar(20),
  dscintsiguiente varchar(20),
  dscubicacion varchar(100),
  ubiccamara geometry(geometry,32721),

  private boolean DEFAULT false,
  owner_id integer DEFAULT request.user_id(),
  CONSTRAINT camaras_pkey PRIMARY KEY (id),
  CONSTRAINT camaras_owner_id_fkey FOREIGN KEY (owner_id)
      REFERENCES data."user" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE data.camaras
  OWNER TO superuser;
GRANT ALL ON TABLE data.camaras TO superuser;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE data.camaras TO api;

-- Trigger: send_change_event on data.camaras

-- DROP TRIGGER send_change_event ON data.camaras;

CREATE TRIGGER send_change_event
  AFTER INSERT OR UPDATE OR DELETE
  ON data.camaras
  FOR EACH ROW
  EXECUTE PROCEDURE rabbitmq.on_row_change('{"include":["id","nomcamara"]}');

-- View: api.camaras

-- DROP VIEW api.camaras;

CREATE OR REPLACE VIEW api.camaras AS 
 SELECT camaras.id,

    camaras.iddetector,
    camaras.idcarril,
    camaras.dscavenida,
    camaras.dscintanterior,
    camaras.dscintsiguiente,
    camaras.dscubicacion,
    camaras.ubiccamara,

    camaras.private,
    camaras.owner_id = request.user_id() AS mine
   FROM camaras;

ALTER TABLE api.camaras
  OWNER TO api;
GRANT ALL ON TABLE api.camaras TO api;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE api.camaras TO webuser;
