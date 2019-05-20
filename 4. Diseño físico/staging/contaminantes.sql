-- Sequence: data.contaminantes_id_seq

-- DROP SEQUENCE data.contaminantes_id_seq;

CREATE SEQUENCE data.contaminantes_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 7
  CACHE 1;
ALTER TABLE data.contaminantes_id_seq
  OWNER TO superuser;
GRANT ALL ON SEQUENCE data.contaminantes_id_seq TO superuser;
GRANT USAGE ON SEQUENCE data.contaminantes_id_seq TO webuser;


-- Table: data.contaminantes

-- DROP TABLE data.contaminantes;

CREATE TABLE data.contaminantes
(
  id integer NOT NULL DEFAULT nextval('contaminantes_id_seq'::regclass),

  idcontaminante int NOT NULL,
  nomcontaminante varchar(4),
  idsubtipo int,
  nomsubtipo varchar(59),
  idtipo int,
  nomtipo varchar(23),
  muybuena INT,
  buena INT,
  aceptable INT,
  inadecuada INT,
  mala INT,

  private boolean DEFAULT false,
  owner_id integer DEFAULT request.user_id(),
  CONSTRAINT contaminantes_pkey PRIMARY KEY (id),
  CONSTRAINT contaminantes_owner_id_fkey FOREIGN KEY (owner_id)
      REFERENCES data."user" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE data.contaminantes
  OWNER TO superuser;
GRANT ALL ON TABLE data.contaminantes TO superuser;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE data.contaminantes TO api;

-- Trigger: send_change_event on data.contaminantes

-- DROP TRIGGER send_change_event ON data.contaminantes;

CREATE TRIGGER send_change_event
  AFTER INSERT OR UPDATE OR DELETE
  ON data.contaminantes
  FOR EACH ROW
  EXECUTE PROCEDURE rabbitmq.on_row_change('{"include":["id","nomcontaminante"]}');

-- View: api.contaminantes

-- DROP VIEW api.contaminantes;

CREATE OR REPLACE VIEW api.contaminantes AS 
 SELECT contaminantes.id,

    contaminantes.idcontaminante,
    contaminantes.nomcontaminante,
    contaminantes.idsubtipo,
    contaminantes.nomsubtipo,
    contaminantes.idtipo,
    contaminantes.nomtipo,
    contaminantes.muybuena,
    contaminantes.buena,
    contaminantes.aceptable,
    contaminantes.inadecuada,
    contaminantes.mala,

    contaminantes.private,
    contaminantes.owner_id = request.user_id() AS mine
   FROM contaminantes;

ALTER TABLE api.contaminantes
  OWNER TO api;
GRANT ALL ON TABLE api.contaminantes TO api;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE api.contaminantes TO webuser;
