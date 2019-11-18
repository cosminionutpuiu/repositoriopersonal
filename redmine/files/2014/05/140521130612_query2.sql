SELECT Columna,    Anio,    COUNT(*) averias
  FROM
    (SELECT DISTINCT averias.idorganismo,      2008 Anio,      concat('1/1/',2008) AnioFila,
      to_date(concat('1-1-',2008),'DD-MM-YYYY') fecha,      averias.fechafin fechaFin,
      TRUNC(to_date(concat('1-1-',2008),'DD-MM-YYYY') - averias.fechafin) dias,
      CASE
        WHEN (exped.idexpediente                                                           = 0
        AND (TRUNC(TRUNC(to_date(concat('1-1-',2008),'DD-MM-YYYY') - hardw.fecha_alta) / 365) > 5))
        THEN 5
        WHEN (exped.idexpediente                                                            = 0
        AND (TRUNC(TRUNC(to_date(concat('1-1-',2008),'DD-MM-YYYY') - hardw.fecha_alta) / 365) <= 5))
        THEN TRUNC(TRUNC(to_date(concat('1-1-',2008),'DD-MM-YYYY') - hardw.fecha_alta) / 365)
        WHEN (exped.idexpediente                                                      <> 0
        AND (TRUNC(TRUNC(to_date(concat('1-1-',2008),'DD-MM-YYYY') - fecha_compra) / 365) > 5))
        THEN 5
        WHEN (exped.idexpediente                                                       <> 0
        AND (TRUNC(TRUNC(to_date(concat('1-1-',2008),'DD-MM-YYYY') - fecha_compra) / 365) <= 5))
        THEN TRUNC(TRUNC(to_date(concat('1-1-',2008),'DD-MM-YYYY') - fecha_compra) / 365)
      END columna,      averias.numinci
    FROM averias_sede_org averias,      metacrija2.inv_hardware hardw,
      (SELECT add_months(fecha_garantia,-36) fecha_compra,        exp.*
      FROM metacrija2.inv_expediente_compra exp
      ) exped
    WHERE TRUNC(to_date(concat('1-1-',2008),'DD-MM-YYYY') - averias.fechafin) >= 0
    AND (hardw.idhardware                                                   = averias.idhardware
    OR hardw.num_serie                                                      = averias.numseriehw)
    AND exped.idexpediente                                                  = hardw.idexpediente
    )  where columna=0
  GROUP BY Anio,    Columna
  ORDER BY Anio,    Columna