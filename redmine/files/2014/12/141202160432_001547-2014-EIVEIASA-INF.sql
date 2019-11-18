-- ======= 1. SELECT_EXPEDIENTES =================
-- Select que devuelve la información de la fase en la que se encuentra actualmente un expediente pasado como parámetro.
-- ==================================================
SELECT EXP.T_NUM_EXP "NUM.SOL.", EXP.X_EXPE "REF. EXP", F.X_FASE "REF. FASE", F.C_NOMBRE "FASE"
FROM TR_EXPEDIENTES EXP, TR_EXPEDIENTES_EN_FASE EEF, TR_FASES F
WHERE EXP.T_NUM_EXP LIKE '001547/2014/EIVEIASA/INF'
	  AND EEF.EXPE_X_EXPE = EXP.X_EXPE
	  AND EEF.F_SALIDA IS NULL						
	  AND F.X_FASE = EEF.FASE_X_FASE						
ORDER BY EXP.T_NUM_EXP ; 
-- ==================================================





-- ======= 2. UPDATE_FASE ========================
-- Actualización del expediente pasado como parámetro, que se encuentra en la fase PTE.ANULACIÓN, a la fase REVISIÓN.
-- ==================================================

UPDATE TR_EXPEDIENTES_EN_FASE
SET    FASE_X_FASE = (SELECT F.X_FASE
                      FROM TR_FASES F
                      WHERE F.C_NOMBRE = 'REVISIÓN' AND F.STMA_X_STMA = (SELECT STMA.X_STMA
						 	   			  		  			 	 		                FROM GN_SISTEMAS STMA
																		                      WHERE STMA.C_SISTEMA LIKE 'INFOCOR')
                      )
WHERE EXPE_X_EXPE = (SELECT EXP.X_EXPE
	  				  	     FROM TR_EXPEDIENTES EXP
						         WHERE EXP.T_NUM_EXP LIKE'001547/2014/EIVEIASA/INF'
	                   AND FASE_X_FASE = (SELECT F.X_FASE
	   			   	  	                      FROM TR_FASES F
                                        WHERE F.C_NOMBRE = 'PTE. ANULACIÓN' AND F.STMA_X_STMA = (SELECT STMA.X_STMA
						 	   			  		  			 	 			   	                                                 FROM GN_SISTEMAS STMA
																				                                                         WHERE STMA.C_SISTEMA LIKE 'INFOCOR')
						                          )
                     )                 
AND F_SALIDA IS NULL;					
-- ==================================================
COMMIT;
