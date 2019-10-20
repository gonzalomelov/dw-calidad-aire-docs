(SELECT
  "dw"."fechas"."idfecha", 
  "dw"."estacionesdelared"."idestaciondelared", 
  "dw"."estacionesdelared"."nomidestaciondelared", 
  "dw"."contaminantes"."idcontaminante", 
  "dw"."contaminantes"."nomcontaminante", 
  "dw"."contaminantescategorias"."idrangocontaminantescategorias", 
  "dw"."contaminantescategorias"."descrangocontaminantescategorias", 
  mediciones2avg."contaminacion",
  "staging"."mediciones2agrupadas"."description",
  round("staging"."mediciones2agrupadas"."mean"::numeric, 0) as mean,
  round("staging"."mediciones2agrupadas"."min"::numeric, 0) as min,
  round("staging"."mediciones2agrupadas"."max"::numeric, 0) as max,
  round("staging"."mediciones2agrupadas"."percentile"::numeric, 0) as percentile
FROM
  "dw"."fechas" 
  inner join (
    SELECT mediciones2avg.*, cc.surrogate_key, cc.idrangocontaminantescategorias, cc.descrangocontaminantescategorias
    FROM (
      SELECT nomestaciondelared,idmetodo,idcontaminante,idfecha,round(avg(contaminacion)) as contaminacion
      FROM dw.mediciones2
      GROUP BY nomestaciondelared,idmetodo,idcontaminante,idfecha
      ORDER BY nomestaciondelared,idmetodo,idcontaminante,idfecha
      ) as mediciones2avg
      inner join "dw"."contaminantescategorias" cc on mediciones2avg.idcontaminante = cc.idcontaminante and mediciones2avg.contaminacion = cc.valor
    ORDER BY nomestaciondelared,idmetodo,idcontaminante,idfecha
    ) as mediciones2avg
         ON "dw"."fechas"."idfecha" = mediciones2avg."idfecha" 
  inner join "dw"."estacionesdelared" 
         ON mediciones2avg."nomestaciondelared" = "dw"."estacionesdelared"."nomestaciondelared" 
  inner join "dw"."contaminantes" 
         ON mediciones2avg."idcontaminante" = "dw"."contaminantes"."idcontaminante" 
  inner join "dw"."contaminantescategorias" 
         ON mediciones2avg."surrogate_key" = "dw"."contaminantescategorias"."surrogate_key" 
  inner join "staging"."mediciones2agrupadas" 
         ON "dw"."estacionesdelared"."idestaciondelared" = "staging"."mediciones2agrupadas"."idestaciondelared" AND mediciones2avg."idcontaminante" = "staging"."mediciones2agrupadas"."idcontaminante" 
WHERE
  "dw"."contaminantes"."nomcontaminante" <> 'O3'
ORDER  BY "dw"."estacionesdelared"."idestaciondelared", 
          "dw"."contaminantes"."idcontaminante", 
          "dw"."fechas"."idfecha")
UNION ALL
(SELECT
  "dw"."fechas"."idfecha", 
  "dw"."estacionesdelared"."idestaciondelared", 
  "dw"."estacionesdelared"."nomidestaciondelared", 
  "dw"."contaminantes"."idcontaminante", 
  "dw"."contaminantes"."nomcontaminante", 
  "dw"."contaminantescategorias"."idrangocontaminantescategorias", 
  "dw"."contaminantescategorias"."descrangocontaminantescategorias", 
  m."contaminacion",
  "staging"."mediciones2agrupadas"."description",
  round("staging"."mediciones2agrupadas"."mean"::numeric, 0) as mean,
  round("staging"."mediciones2agrupadas"."min"::numeric, 0) as min,
  round("staging"."mediciones2agrupadas"."max"::numeric, 0) as max,
  round("staging"."mediciones2agrupadas"."percentile"::numeric, 0) as percentile
FROM
  "dw"."fechas" 
  inner join dw.mediciones2 m
         ON "dw"."fechas"."idfecha" = m."idfecha" 
  inner join "dw"."estacionesdelared" 
         ON m."nomestaciondelared" = "dw"."estacionesdelared"."nomestaciondelared" 
  inner join "dw"."contaminantes" 
         ON m."idcontaminante" = "dw"."contaminantes"."idcontaminante" 
  inner join "dw"."contaminantescategorias" 
         ON m."surrogate_key" = "dw"."contaminantescategorias"."surrogate_key" 
  inner join "staging"."mediciones2agrupadas" 
         ON "dw"."estacionesdelared"."idestaciondelared" = "staging"."mediciones2agrupadas"."idestaciondelared" AND m."idcontaminante" = "staging"."mediciones2agrupadas"."idcontaminante" 
WHERE
  "dw"."contaminantes"."nomcontaminante" = 'O3'
ORDER  BY "dw"."estacionesdelared"."idestaciondelared", 
          "dw"."contaminantes"."idcontaminante", 
          "dw"."fechas"."idfecha")