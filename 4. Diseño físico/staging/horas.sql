-- Sequence: data.horas_id_seq

-- DROP SEQUENCE data.horas_id_seq;

CREATE SEQUENCE data.horas_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 7
  CACHE 1;
ALTER TABLE data.horas_id_seq
  OWNER TO superuser;
GRANT ALL ON SEQUENCE data.horas_id_seq TO superuser;
GRANT USAGE ON SEQUENCE data.horas_id_seq TO webuser;


-- Table: data.horas

-- DROP TABLE data.horas;

CREATE TABLE data.horas
(
  id integer NOT NULL DEFAULT nextval('horas_id_seq'::regclass),

  idhora int,
  hora varchar(2),
  idrangohoras int,
  descrangohoras varchar(10),

  private boolean DEFAULT false,
  owner_id integer DEFAULT request.user_id(),
  CONSTRAINT horas_pkey PRIMARY KEY (id),
  CONSTRAINT horas_owner_id_fkey FOREIGN KEY (owner_id)
      REFERENCES data."user" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE data.horas
  OWNER TO superuser;
GRANT ALL ON TABLE data.horas TO superuser;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE data.horas TO api;

-- Trigger: send_change_event on data.horas

-- DROP TRIGGER send_change_event ON data.horas;

CREATE TRIGGER send_change_event
  AFTER INSERT OR UPDATE OR DELETE
  ON data.horas
  FOR EACH ROW
  EXECUTE PROCEDURE rabbitmq.on_row_change('{"include":["id","hora"]}');

-- View: api.horas

-- DROP VIEW api.horas;

CREATE OR REPLACE VIEW api.horas AS 
 SELECT horas.id,

    horas.idhora,
    horas.hora,
    horas.idrangohoras,
    horas.descrangohoras,

    horas.private,
    horas.owner_id = request.user_id() AS mine
   FROM horas;

ALTER TABLE api.horas
  OWNER TO api;
GRANT ALL ON TABLE api.horas TO api;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE api.horas TO webuser;
