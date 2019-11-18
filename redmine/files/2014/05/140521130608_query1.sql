SELECT codinfocor,    Anio,    columna,    COUNT(*) averias
  FROM
    ( SELECT DISTINCT averias.codinfocor codinfocor,      averias.idorganismo,      2008 Anio,      concat('1/1/',2008) AnioFila,
      to_date(concat('1-1-',2008),'DD-MM-YYYY') fecha,      averias.fechafin fechaFin,
      TRUNC(to_date(concat('1-1-',2008),'DD-MM-YYYY') - averias.fechafin) dias,
      CASE
        WHEN ((TRUNC(TRUNC(to_date(concat('1-1-',2008),'DD-MM-YYYY') - averias.fechafin) / 365) > 5))
        THEN 5
        WHEN ((TRUNC(TRUNC(to_date(concat('1-1-',2008),'DD-MM- YYYY') - averias.fechafin) / 365) <= 5))
        THEN TRUNC(TRUNC(to_date(concat('1-1-',2008),'DD-MM-YYYY')            - averias.fechafin) / 365)
      END columna, averias.numinci
    FROM averias_sede_org averias
    WHERE TRUNC(to_date(concat('1-1-',2008), 'DD-MM-YYYY') - averias.fechafin) >= 0
    ) where columna=0
  GROUP BY codinfocor,    Anio,    Columna
  ORDER BY codinfocor,    Anio,    Columna 