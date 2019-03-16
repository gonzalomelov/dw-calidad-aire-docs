pg_dump --host localhost --port 5432 --username "gonzalomelo" --no-password  --format plain --verbose --file "/Users/gonzalomelo/Kona/proy-grad/Proyecto Calidad del Aire/dwcalidadaire-final-plain" --schema "public" "dwcalidadaire-final"

CREATE EXTENSION postgis; CREATE EXTENSION postgis_topology;

UPDATE pg_extension 
  SET extrelocatable = TRUE 
    WHERE extname = 'postgis';

ALTER EXTENSION postgis 
  SET SCHEMA data;

Foreach table
  GRANT ALL ON TABLE data.estacionesdelared TO superuser;
  GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE data.estacionesdelared TO api;

  CREATE OR REPLACE VIEW

psql data < dwcalidadaire-final-plain