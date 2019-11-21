SELECT mediciones2avg.*, cc.surrogatekey, cc.idrangocontaminantescategorias, cc.descrangocontaminantescategorias
    FROM (
      SELECT nomestaciondelared,idmetodo,idcontaminante,f.idfecha,round(avg(contaminacion)) as contaminacion
      FROM dw.fechas f left join dw.mediciones2 m2 on f.idfecha = m2.idfecha
      WHERE f.anio = 2018
      GROUP BY nomestaciondelared,idmetodo,idcontaminante,f.idfecha
      ORDER BY nomestaciondelared,idmetodo,idcontaminante,f.idfecha
      ) as mediciones2avg
      left join "dw"."contaminantescategorias" cc on mediciones2avg.idcontaminante = cc.idcontaminante and mediciones2avg.contaminacion = cc.valor
    ORDER BY nomestaciondelared,idmetodo,idcontaminante,idfecha

SELECT
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
    SELECT mediciones2avg.*, cc.surrogatekey, cc.idrangocontaminantescategorias, cc.descrangocontaminantescategorias
    FROM (
      SELECT nomestaciondelared,idmetodo,idcontaminante,f.idfecha,round(avg(contaminacion)) as contaminacion
      FROM dw.fechas f left join dw.mediciones2 m2 on f.idfecha = m2.idfecha
      WHERE f.anio = 2018
      GROUP BY nomestaciondelared,idmetodo,idcontaminante,f.idfecha
      ORDER BY nomestaciondelared,idmetodo,idcontaminante,f.idfecha
      ) as mediciones2avg
      left join "dw"."contaminantescategorias" cc on mediciones2avg.idcontaminante = cc.idcontaminante and mediciones2avg.contaminacion = cc.valor
    ORDER BY nomestaciondelared,idmetodo,idcontaminante,idfecha
    ) as mediciones2avg
         ON "dw"."fechas"."idfecha" = mediciones2avg."idfecha" 
  left join "dw"."estacionesdelared" 
         ON mediciones2avg."nomestaciondelared" = "dw"."estacionesdelared"."nomestaciondelared" 
  left join "dw"."contaminantes" 
         ON mediciones2avg."idcontaminante" = "dw"."contaminantes"."idcontaminante" 
  left join "dw"."contaminantescategorias" 
         ON mediciones2avg."surrogatekey" = "dw"."contaminantescategorias"."surrogatekey" 
  left join "staging"."mediciones2agrupadas" 
         ON "dw"."estacionesdelared"."idestaciondelared" = "staging"."mediciones2agrupadas"."idestaciondelared" AND mediciones2avg."idcontaminante" = "staging"."mediciones2agrupadas"."idcontaminante" 
WHERE
  "dw"."contaminantes"."nomcontaminante" <> 'O3'
ORDER  BY "dw"."estacionesdelared"."idestaciondelared", 
          "dw"."contaminantes"."idcontaminante", 
          "dw"."fechas"."idfecha"