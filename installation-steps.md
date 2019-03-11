pg_dump --host localhost --port 5432 --username "gonzalomelo" --role "gonzalomelo" --no-password  --format custom --blobs --verbose --file "/Users/gonzalomelo/Kona/proy-grad/Proyecto Calidad del Aire/dwcalidadaire-final" "dwcalidadaire-final"

docker-compose up -d

create role anon;
create role authenticator noinherit;
grant anon to authenticator;

pg_restore -h localhost -p 5434 -U gonzalomelo -d dwcalidadaire-final -v  "dwcalidadaire-final"