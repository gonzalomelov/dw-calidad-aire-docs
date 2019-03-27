-- Sequence: data.diassemana_id_seq

-- DROP SEQUENCE data.diassemana_id_seq;

CREATE SEQUENCE data.diassemana_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 7
  CACHE 1;
ALTER TABLE data.diassemana_id_seq
  OWNER TO superuser;
GRANT ALL ON SEQUENCE data.diassemana_id_seq TO superuser;
GRANT USAGE ON SEQUENCE data.diassemana_id_seq TO webuser;


-- Table: data.diassemana

-- DROP TABLE data.diassemana;

CREATE TABLE data.diassemana
(
  id integer NOT NULL DEFAULT nextval('diassemana_id_seq'::regclass),

  iddiasemana int,
  nomdiasemana varchar(10),

  private boolean DEFAULT false,
  owner_id integer DEFAULT request.user_id(),
  CONSTRAINT diassemana_pkey PRIMARY KEY (id),
  CONSTRAINT diassemana_owner_id_fkey FOREIGN KEY (owner_id)
      REFERENCES data."user" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE data.diassemana
  OWNER TO superuser;
GRANT ALL ON TABLE data.diassemana TO superuser;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE data.diassemana TO api;

-- Trigger: send_change_event on data.diassemana

-- DROP TRIGGER send_change_event ON data.diassemana;

CREATE TRIGGER send_change_event
  AFTER INSERT OR UPDATE OR DELETE
  ON data.diassemana
  FOR EACH ROW
  EXECUTE PROCEDURE rabbitmq.on_row_change('{"include":["id","nomdiasemana"]}');

-- View: api.diassemana

-- DROP VIEW api.diassemana;

CREATE OR REPLACE VIEW api.diassemana AS 
 SELECT diassemana.id,

    diassemana.iddiasemana,
    diassemana.nomdiasemana,

    diassemana.private,
    diassemana.owner_id = request.user_id() AS mine
   FROM diassemana;

ALTER TABLE api.diassemana
  OWNER TO api;
GRANT ALL ON TABLE api.diassemana TO api;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE api.diassemana TO webuser;
