UPDATE TR_EXPEDIENTES_EN_FASE
SET FASE_X_FASE = (SELECT F.X_FASE
	   			   	     FROM TR_FASES F
					         WHERE F.C_NOMBRE = 'REVISIÓN' AND F.STMA_X_STMA = (SELECT STMA.X_STMA
						 	   			  		  			 	 		                            FROM GN_SISTEMAS STMA
                                                                      WHERE STMA.C_SISTEMA LIKE 'INFOCOR')
					         )
                 WHERE EXPE_X_EXPE = (SELECT EXP.X_EXPE
	  				  	                      FROM TR_EXPEDIENTES EXP
						                          WHERE EXP.T_NUM_EXP LIKE'000714/2014/AMAYA/INF'
	                                    AND FASE_X_FASE = (SELECT F.X_FASE
	   			   	  	                                       FROM TR_FASES F
                                                         WHERE F.C_NOMBRE = 'SOLICITUD ANULADA' 
                                                         AND F.STMA_X_STMA = (SELECT STMA.X_STMA
						 	   			  		  			 	 			   	                              FROM GN_SISTEMAS STMA
																				                                      WHERE STMA.C_SISTEMA LIKE 'INFOCOR')
                                                      	)
                                     )
	               AND F_SALIDA IS NULL ;	
commit;
