SELECT distinct
       Q.ID_QUARTERS       C_SEDE_ID             ,
       Q.TX_CODE           C_SEDE_CODE_ID        ,
	   '(' || NVL(UO.C_UNI_ORG_NEG, 'JDA') || ') ' || Q.TX_NAME           C_SEDE_DESC           ,
       C.ID_CENTRE         C_CENTRO_ID           ,
       C.TX_CODE           C_CENTRO_CODE_ID      ,
       C.TX_NAME           C_CENTRO_DESC         ,
       O.ID_ORGANIZATION   C_ORGANIZACION_ID     ,
       O.TX_CODE           C_ORGANIZATION_CODE_ID,
       O.TX_NAME           C_ORGANIZACION_DESC,
       NVL(UO.C_UNI_ORG_NEG, 'JDA')                C_UNIDAD_ORGANICA_ID,
       NVL(UO.S_UNI_ORG_NEG, 'JUNTA DE ANDALUCIA') C_UNIDAD_ORGANICA_DESC,
       NULL                C_SDC_FEC_INI,
       NULL                C_SDC_FEC_FIN,
       NULL                C_SDC_VERSION,
       NULL                C_SDC_ACTIVO ,
       NULL                C_INSERT_DATE,
       NULL                C_INSERT_PROC,
       NULL                C_UPDATE_DATE,
       NULL                C_UPDATE_PROC,
        NVL(UO.C_TIPO_UNI_ORG, 'JUNTA DE ANDALUCIA')   C_TIPO_UNI_ORG
  FROM SDK_QUARTERS_TMP Q,
       SDK_CENTRE_TMP C,
       SDK_ORGANIZATION_TMP O,
       D_UNIDAD_ORG UO
 WHERE Q.NU_FKCENTRE = C.ID_CENTRE
   AND C.NU_FKORGANIZATION = O.ID_ORGANIZATION
   AND O.TX_NAME  = UO.C_UNI_ORG (+) 
   AND 'NAOS' = UO.C_BBDD (+)
   AND UO.C_UNI_ORG
  ORDER BY Q.ID_QUARTERS
