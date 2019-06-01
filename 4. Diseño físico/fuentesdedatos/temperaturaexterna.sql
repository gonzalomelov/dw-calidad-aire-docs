-- Sequence: data.temperaturaexterna_id_seq

-- DROP SEQUENCE data.temperaturaexterna_id_seq;

CREATE SEQUENCE data.temperaturaexterna_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 7
  CACHE 1;
ALTER TABLE data.temperaturaexterna_id_seq
  OWNER TO superuser;
GRANT ALL ON SEQUENCE data.temperaturaexterna_id_seq TO superuser;
GRANT USAGE ON SEQUENCE data.temperaturaexterna_id_seq TO webuser;


-- Table: data.temperaturaexterna

-- DROP TABLE data.temperaturaexterna;

CREATE TABLE data.temperaturaexterna
(
  id integer NOT NULL DEFAULT nextval('temperaturaexterna_id_seq'::regclass),

  valorenc real,
  idrangotemperaturaexterna int,
  descrangotemperaturaexterna varchar(10),

  private boolean DEFAULT false,
  owner_id integer DEFAULT request.user_id(),
  CONSTRAINT temperaturaexterna_pkey PRIMARY KEY (id),
  CONSTRAINT temperaturaexterna_owner_id_fkey FOREIGN KEY (owner_id)
      REFERENCES data."user" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE data.temperaturaexterna
  OWNER TO superuser;
GRANT ALL ON TABLE data.temperaturaexterna TO superuser;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE data.temperaturaexterna TO api;

-- Trigger: send_change_event on data.temperaturaexterna

-- DROP TRIGGER send_change_event ON data.temperaturaexterna;

CREATE TRIGGER send_change_event
  AFTER INSERT OR UPDATE OR DELETE
  ON data.temperaturaexterna
  FOR EACH ROW
  EXECUTE PROCEDURE rabbitmq.on_row_change('{"include":["id","valorenc"]}');

-- View: api.temperaturaexterna

-- DROP VIEW api.temperaturaexterna;

CREATE OR REPLACE VIEW api.temperaturaexterna AS 
 SELECT temperaturaexterna.id,

    temperaturaexterna.valorenc,
    temperaturaexterna.idrangotemperaturaexterna,
    temperaturaexterna.descrangotemperaturaexterna,

    temperaturaexterna.private,
    temperaturaexterna.owner_id = request.user_id() AS mine
   FROM temperaturaexterna;

ALTER TABLE api.temperaturaexterna
  OWNER TO api;
GRANT ALL ON TABLE api.temperaturaexterna TO api;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE api.temperaturaexterna TO webuser;
