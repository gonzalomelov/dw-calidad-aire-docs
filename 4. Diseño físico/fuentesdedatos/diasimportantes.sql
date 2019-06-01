-- Sequence: data.diasimportantes_id_seq

-- DROP SEQUENCE data.diasimportantes_id_seq;

CREATE SEQUENCE data.diasimportantes_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 7
  CACHE 1;
ALTER TABLE data.diasimportantes_id_seq
  OWNER TO superuser;
GRANT ALL ON SEQUENCE data.diasimportantes_id_seq TO superuser;
GRANT USAGE ON SEQUENCE data.diasimportantes_id_seq TO webuser;


-- Table: data.diasimportantes

-- DROP TABLE data.diasimportantes;

CREATE TABLE data.diasimportantes
(
  id integer NOT NULL DEFAULT nextval('diasimportantes_id_seq'::regclass),

  iddiaimportante integer NOT NULL,
  nomdiaimportante character varying(20),
  idtipodiaimportante integer,
  nomtipodiaimportante character varying(20),
  idfecha integer,
  idhora integer,

  private boolean DEFAULT false,
  owner_id integer DEFAULT request.user_id(),
  CONSTRAINT diasimportantes_pkey PRIMARY KEY (id),
  CONSTRAINT diasimportantes_owner_id_fkey FOREIGN KEY (owner_id)
      REFERENCES data."user" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE data.diasimportantes
  OWNER TO superuser;
GRANT ALL ON TABLE data.diasimportantes TO superuser;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE data.diasimportantes TO api;

-- Trigger: send_change_event on data.diasimportantes

-- DROP TRIGGER send_change_event ON data.diasimportantes;

CREATE TRIGGER send_change_event
  AFTER INSERT OR UPDATE OR DELETE
  ON data.diasimportantes
  FOR EACH ROW
  EXECUTE PROCEDURE rabbitmq.on_row_change('{"include":["id","nomdiaimportante"]}');

-- View: api.diasImportantes

-- DROP VIEW api.diasImportantes;

CREATE OR REPLACE VIEW api.diasImportantes AS 
 SELECT diasImportantes.id,

    diasImportantes.iddiaimportante,
    diasImportantes.nomdiaimportante,
    diasImportantes.idtipodiaimportante,
    diasImportantes.nomtipodiaimportante,
    diasImportantes.idfecha,
    diasImportantes.idhora,

    diasImportantes.private,
    diasImportantes.owner_id = request.user_id() AS mine
   FROM diasImportantes;

ALTER TABLE api.diasImportantes
  OWNER TO api;
GRANT ALL ON TABLE api.diasImportantes TO api;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE api.diasImportantes TO webuser;
