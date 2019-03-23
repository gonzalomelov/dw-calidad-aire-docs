SET CLIENT_ENCODING TO UTF8;
SET STANDARD_CONFORMING_STRINGS TO ON;
BEGIN;
CREATE TABLE "barrios" (gid serial,
"nrobarrio" int2,
"barrio" varchar(25),
"codba" varchar(2));
ALTER TABLE "barrios" ADD PRIMARY KEY (gid);
SELECT AddGeometryColumn('','barrios','geom','31981','MULTIPOLYGON',2);
CREATE INDEX ON "barrios" USING GIST ("geom");
COMMIT;
ANALYZE "barrios";
