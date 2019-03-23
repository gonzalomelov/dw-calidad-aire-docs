-- Sequence: data.metodos_id_seq

-- DROP SEQUENCE data.metodos_id_seq;

CREATE SEQUENCE data.metodos_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 7
  CACHE 1;
ALTER TABLE data.metodos_id_seq
  OWNER TO superuser;
GRANT ALL ON SEQUENCE data.metodos_id_seq TO superuser;
GRANT USAGE ON SEQUENCE data.metodos_id_seq TO webuser;


-- Table: data.metodos

-- DROP TABLE data.metodos;

CREATE TABLE data.metodos
(
  id integer NOT NULL DEFAULT nextval('metodos_id_seq'::regclass),

  idmetodo int NOT NULL,
  nommetodo varchar(12),

  private boolean DEFAULT false,
  owner_id integer DEFAULT request.user_id(),
  CONSTRAINT metodos_pkey PRIMARY KEY (id),
  CONSTRAINT metodos_owner_id_fkey FOREIGN KEY (owner_id)
      REFERENCES data."user" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE data.metodos
  OWNER TO superuser;
GRANT ALL ON TABLE data.metodos TO superuser;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE data.metodos TO api;

-- Trigger: send_change_event on data.metodos

-- DROP TRIGGER send_change_event ON data.metodos;

CREATE TRIGGER send_change_event
  AFTER INSERT OR UPDATE OR DELETE
  ON data.metodos
  FOR EACH ROW
  EXECUTE PROCEDURE rabbitmq.on_row_change('{"include":["id","nommetodo"]}');

-- View: api.metodos

-- DROP VIEW api.metodos;

CREATE OR REPLACE VIEW api.metodos AS 
 SELECT metodos.id,

    metodos.idmetodo,
    metodos.nommetodo,

    metodos.private,
    metodos.owner_id = request.user_id() AS mine
   FROM metodos;

ALTER TABLE api.metodos
  OWNER TO api;
GRANT ALL ON TABLE api.metodos TO api;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE api.metodos TO webuser;
