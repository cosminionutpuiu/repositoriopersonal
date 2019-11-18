create or replace
FUNCTION fn_tiemporesolucion(
      pid_history sdk_history.id_history%TYPE,
      pnu_fkincident sdk_history.nu_fkincident%TYPE,
      pfh_creationdate sdk_history.fh_creationdate%TYPE,
      ptx_action sdk_history.tx_action%TYPE,
      ptx_value sdk_history.tx_value%TYPE,
      pnu_calendar sdk_calendar_def.id_calendardef%TYPE )
    RETURN NUMBER
    /*Función encargada de los cálculos para el indicador de tiempo de resolución,
    que es el tiempo que transcurre desde qe se asigna por primera vez el tique hasta el último cierre
    temporal, menos el tiempo que en el que el tique se encuentra en la metafase de delegación.
    Para calcular el tiempo de evaluación, se calcula por tramos, considerando un tramo como el
    tiempo que va desde la última vez que se calculó el indicador hasta que llega a la metafase
    de delegación o al cierre temporal. Para ello se necesita un campo que sirva de puntero que
    nos indique cuando fue la última vez que se calculó el tiempo, para lo que se utiliza
    el campo de fecha de cierre del indicador.
    */
  AS
    RESULT NUMBER;
    PRAGMA AUTONOMOUS_TRANSACTION;
    vcountassigned NUMBER;
    videvalstate sdk_indicatorevalstate.id_indicatorevalstate%TYPE;
    vevalvalue    NUMBER;
    vevalvalueold NUMBER;
    vdateclose sdk_history.fh_creationdate%TYPE;
    vforecastminold sdk_indicator_incident.fh_forecastminthreshold%TYPE;
    vforecastmaxold sdk_indicator_incident.fh_forecastmaxthreshold%TYPE;
    vminthreshold sdk_indicator_incident.nu_min_threshold%TYPE;
    vmaxthreshold sdk_indicator_incident.nu_max_threshold%TYPE;
    vindvalidstate sdk_indicator_incident.nu_fkindvalidstate%TYPE;
    visindicreached sdk_indicator_incident.lg_is_indic_reached%TYPE;
    vexisteregistro NUMBER;
    videvalstateold sdk_indicatorevalstate.id_indicatorevalstate%TYPE;
    videvalstatedetenido sdk_indicatorevalstate.id_indicatorevalstate%TYPE;
    vidindicator NUMBER;
    vdatehistoryold sdk_history.fh_creationdate%TYPE;
    vdatecloseold sdk_indicator_incident.FH_CLOSEDATEINDICATOR%TYPE;
    estado sdk_indicatorevalstate.TX_NAME%type;
  BEGIN
    SELECT id_indicator
    INTO vidindicator
    FROM sdk_indicator_defs ide
    WHERE ide.tx_name = 'TRESOLUCION';
    -- lo primero de todo es mirar que el registro de sdk_indicator_incident exista
    SELECT COUNT (*)
    INTO vexisteregistro
    FROM sdk_indicator_incident
    WHERE nu_fkincident    = pnu_fkincident
    AND nu_fkindicatordefs = vidindicator;
    IF vexisteregistro     = 1 THEN
      SELECT tx_name
      INTO estado
      FROM sdk_indicator_incident,
        sdk_indicatorevalstate ies
      WHERE nu_fkincident           = pnu_fkincident
      AND ies.ID_INDICATOREVALSTATE = NU_FKEVALUATIONSTATE
      AND nu_fkindicatordefs        = vidindicator;
      IF estado                    <>'EVA' THEN
        SELECT COUNT (*)
        INTO vcountassigned
        FROM sdk_history his
        WHERE his.nu_fkincident = pnu_fkincident
        AND his.tx_action       = 'SDK_HIST_ASSIGNED';
        -- si es asginado
        IF ptx_action = 'SDK_HIST_ASSIGNED' THEN
          -- si es la primera asignacion
          IF (vcountassigned = 0) THEN
            SELECT ies.id_indicatorevalstate
            INTO videvalstate
            FROM sdk_indicatorevalstate ies
            WHERE ies.tx_name = 'CUR';
            SELECT nu_min_threshold,
              nu_max_threshold
            INTO vminthreshold,
              vmaxthreshold
            FROM sdk_indicator_incident
            WHERE nu_fkincident    = pnu_fkincident
            AND nu_fkindicatordefs = vidindicator;
            visindicreached       := 1;
            IF (vminthreshold     IS NOT NULL OR vmaxthreshold IS NOT NULL) THEN
              SELECT fn_fechamashoras (pfh_creationdate, vminthreshold, pnu_calendar,pnu_fkincident ),
                fn_fechamashoras (pfh_creationdate, vmaxthreshold, pnu_calendar,pnu_fkincident )
              INTO vforecastminold,
                vforecastmaxold
              FROM DUAL;
              --si la fecha actual es mayor que la fecha de umbral maximo
              IF (SYSDATE        > vforecastmaxold) THEN
                visindicreached := 0;
              END IF;
            END IF;
            UPDATE sdk_indicator_incident
            SET nu_fkhistory          = pid_history,
              fh_initdateindicator    = pfh_creationdate,
              nu_fkevaluationstate    = videvalstate,
              fh_forecastminthreshold = vforecastminold,
              fh_forecastmaxthreshold = vforecastmaxold,
              lg_is_indic_reached     = visindicreached,
              FH_CLOSEDATEINDICATOR   = pfh_creationdate
            WHERE nu_fkincident       = pnu_fkincident
            AND nu_fkindicatordefs    = vidindicator;
            COMMIT;
            -- para las demas asignaciones despues de la primera
          ELSE
            IF vcountassigned > 0 THEN
              SELECT nu_evaluationvalue,
                fh_forecastminthreshold,
                NU_MIN_THRESHOLD,
                NU_MAX_THRESHOLD,
                fh_forecastmaxthreshold,
                nu_fkevaluationstate,
                FH_CLOSEDATEINDICATOR
              INTO vevalvalueold,
                vforecastminold,
                vminthreshold,
                vmaxthreshold,
                vforecastmaxold,
                videvalstateold,
                vdatecloseold
              FROM sdk_indicator_incident
              WHERE nu_fkincident    = pnu_fkincident
              AND nu_fkindicatordefs = vidindicator;
              SELECT fn_horascontadasporfecha (vdatecloseold, pfh_creationdate, pnu_calendar,pnu_fkincident )
              INTO vevalvalue
              FROM DUAL;
              -- miramos si viene de un estado DETENIDO
              SELECT ies.id_indicatorevalstate
              INTO videvalstatedetenido
              FROM sdk_indicatorevalstate ies
              WHERE ies.tx_name = 'DET';
              --si es detenido
              IF videvalstatedetenido = videvalstateold THEN
                SELECT ies.id_indicatorevalstate
                INTO videvalstate
                FROM sdk_indicatorevalstate ies
                WHERE ies.tx_name = 'CUR';
                IF vmaxthreshold  > vevalvalue THEN
                  SELECT fn_fechamashoras (vforecastminold, vevalvalue, pnu_calendar, pnu_fkincident ),
                    fn_fechamashoras (vforecastmaxold, vevalvalue, pnu_calendar, pnu_fkincident )
                  INTO vforecastminold,
                    vforecastmaxold
                  FROM DUAL;
                END IF;
                UPDATE sdk_indicator_incident
                SET nu_fkhistory          = pid_history,
                  fh_forecastminthreshold = vforecastminold,
                  fh_forecastmaxthreshold = vforecastmaxold,
                  lg_is_indic_reached     = visindicreached,
                  nu_fkevaluationstate    = videvalstate,
                  FH_CLOSEDATEINDICATOR   = pfh_creationdate
                WHERE nu_fkincident       = pnu_fkincident
                AND nu_fkindicatordefs    = vidindicator;
                COMMIT;
                --si no es detenido
              ELSE
                visindicreached      := 1;
                IF ( vforecastminold IS NOT NULL OR vforecastmaxold IS NOT NULL ) THEN
                  --si la fecha actual es mayor que la fecha de umbral maximo
                  IF (SYSDATE        > vforecastmaxold) THEN
                    visindicreached := 0;
                  END IF;
                END IF;
                vevalvalue := vevalvalue + vevalvalueold;
                SELECT ies.id_indicatorevalstate
                INTO videvalstate
                FROM sdk_indicatorevalstate ies
                WHERE ies.tx_name = 'CUR';
                UPDATE sdk_indicator_incident
                SET nu_fkhistory        = pid_history,
                  nu_evaluationvalue    = vevalvalue,
                  lg_is_indic_reached   = visindicreached,
                  nu_fkevaluationstate  = videvalstate,
                  FH_CLOSEDATEINDICATOR = pfh_creationdate
                WHERE nu_fkincident     = pnu_fkincident
                AND nu_fkindicatordefs  = vidindicator;
                COMMIT;
              END IF;
            END IF;
          END IF;
        ELSE
          IF vcountassigned > 0 THEN
            --no es cierre definitivo ni asignado
            IF ptx_action <> 'SDK_HIST_ASSIGNED' AND (ptx_action <> 'SDK_HIST_ACCEPT_CLOSE') 
              AND NOT (ptx_action = 'SDK_HIST_TRANS_PHASE' AND ptx_value = 'Cierre definitivo') THEN 
              SELECT nu_evaluationvalue,
                fh_forecastminthreshold,
                fh_forecastmaxthreshold,
                nu_fkevaluationstate,
                FH_CLOSEDATEINDICATOR,
                NU_MIN_THRESHOLD,
                NU_MAX_THRESHOLD
              INTO vevalvalueold,
                vforecastminold,
                vforecastmaxold,
                videvalstateold,
                vdatecloseold,
                vminthreshold,
                vmaxthreshold
              FROM sdk_indicator_incident
              WHERE nu_fkincident    = pnu_fkincident
              AND nu_fkindicatordefs = vidindicator;
              SELECT fn_horascontadasporfecha (vdatecloseold, pfh_creationdate, pnu_calendar, pnu_fkincident )
              INTO vevalvalue
              FROM DUAL;
              -- miramos si viene de un estado DETENIDO
              SELECT ies.id_indicatorevalstate
              INTO videvalstatedetenido
              FROM sdk_indicatorevalstate ies
              WHERE ies.tx_name = 'DET';
              --si es detenido
              IF videvalstatedetenido = videvalstateold THEN
                IF vmaxthreshold      > vevalvalue THEN
                  SELECT fn_fechamashoras (vforecastminold, vevalvalue, pnu_calendar, pnu_fkincident ),
                    fn_fechamashoras (vforecastmaxold, vevalvalue, pnu_calendar, pnu_fkincident )
                  INTO vforecastminold,
                    vforecastmaxold
                  FROM DUAL;
                END IF;
                vevalvalue := vevalvalueold;
                --si no es detenido
              ELSE
                vevalvalue := vevalvalue + vevalvalueold;
              END IF;
              visindicreached     := 1;
              IF (vforecastminold IS NOT NULL OR vforecastmaxold IS NOT NULL ) THEN
                --si la fecha actual es mayor que la fecha de umbral maximo
                IF (SYSDATE        > vforecastmaxold) THEN
                  visindicreached := 0;
                END IF;
              END IF;
              IF ptx_action = 'SDK_HIST_TRANS_PHASE' AND ptx_value = 'Anulación' THEN
                SELECT ies.id_indicatorevalstate
                INTO videvalstate
                FROM sdk_indicatorevalstate ies
                WHERE ies.tx_name = 'ANU';
                UPDATE sdk_indicator_incident
                SET nu_fkhistory          = pid_history,
                  nu_evaluationvalue      = vevalvalue,
                  nu_fkevaluationstate    = videvalstate,
                  lg_is_indic_reached     = visindicreached,
                  fh_forecastminthreshold = vforecastminold,
                  fh_forecastmaxthreshold = vforecastmaxold,
                  FH_CLOSEDATEINDICATOR   = pfh_creationdate
                WHERE nu_fkincident       = pnu_fkincident
                AND nu_fkindicatordefs    = vidindicator;
                COMMIT;
              ELSE
                -- si es un cierre temporal
                IF ptx_action = 'SDK_HIST_TRANS_PHASE' AND ptx_value LIKE 'Cierre temporal%' THEN
                  UPDATE sdk_indicator_incident
                  SET nu_fkhistory          = pid_history,
                    nu_evaluationvalue      = vevalvalue,
                    fh_closedateindicator   = pfh_creationdate,
                    fh_forecastminthreshold = vforecastminold,
                    fh_forecastmaxthreshold = vforecastmaxold,
                    lg_is_indic_reached     = visindicreached
                  WHERE nu_fkincident       = pnu_fkincident
                  AND nu_fkindicatordefs    = vidindicator;
                  COMMIT;
                ELSE
                  -- si es una delegacion
                  IF ptx_action = 'SDK_HIST_TRANS_METAPHASE' AND ptx_value LIKE 'DELEGACION%' THEN
                    SELECT ies.id_indicatorevalstate
                    INTO videvalstate
                    FROM sdk_indicatorevalstate ies
                    WHERE ies.tx_name = 'DET';
                    UPDATE sdk_indicator_incident
                    SET nu_fkhistory          = pid_history,
                      nu_evaluationvalue      = vevalvalue,
                      nu_fkevaluationstate    = videvalstate,
                      fh_forecastminthreshold = vforecastminold,
                      fh_forecastmaxthreshold = vforecastmaxold,
                      lg_is_indic_reached     = visindicreached,
                      FH_CLOSEDATEINDICATOR   = pfh_creationdate
                    WHERE nu_fkincident       = pnu_fkincident
                    AND nu_fkindicatordefs    = vidindicator;
                    COMMIT;
                  ELSE
                    -- si es una metaphase distinta de delegacion se pone a "en curso"
                    IF ptx_action = 'SDK_HIST_TRANS_METAPHASE' AND ( ptx_value <> 'DELEGACION' OR ptx_value <> 'DELEGACION EXTERNA' ) THEN
                      SELECT ies.id_indicatorevalstate
                      INTO videvalstate
                      FROM sdk_indicatorevalstate ies
                      WHERE ies.tx_name = 'CUR';
                      UPDATE sdk_indicator_incident
                      SET nu_fkhistory          = pid_history,
                        nu_evaluationvalue      = vevalvalue,
                        nu_fkevaluationstate    = videvalstate,
                        fh_forecastminthreshold = vforecastminold,
                        fh_forecastmaxthreshold = vforecastmaxold,
                        lg_is_indic_reached     = visindicreached,
                        FH_CLOSEDATEINDICATOR   = pfh_creationdate
                      WHERE nu_fkincident       = pnu_fkincident
                      AND nu_fkindicatordefs    = vidindicator;
                      COMMIT;
                    END IF;
                  END IF;
                END IF;
              END IF;
            ELSE
              -- si es cierre definitivo
              SELECT ies.id_indicatorevalstate
              INTO videvalstate
              FROM sdk_indicatorevalstate ies
              WHERE ies.tx_name = 'EVA';
              SELECT fh_closedateindicator,
                nu_evaluationvalue,
                fh_forecastminthreshold,
                fh_forecastmaxthreshold
              INTO vdatecloseold,
                vevalvalueold,
                vforecastminold,
                vforecastmaxold
              FROM sdk_indicator_incident
              WHERE nu_fkincident    = pnu_fkincident
              AND nu_fkindicatordefs = vidindicator;
              visindicreached       := 1;
              IF (vforecastminold   IS NOT NULL OR vforecastmaxold IS NOT NULL ) THEN
                --si la fecha actual es mayor que la fecha de umbral maximo
                IF (SYSDATE        > vforecastmaxold) THEN
                  visindicreached := 0;
                END IF;
              END IF;
              UPDATE sdk_indicator_incident
              SET nu_fkevaluationstate = videvalstate,
                lg_is_indic_reached    = visindicreached
              WHERE nu_fkincident      = pnu_fkincident
              AND nu_fkindicatordefs   = vidindicator;
              COMMIT;
            END IF;
          END IF;
        END IF;
      END IF;
    END IF; --fin del if general de si hay un registro
    COMMIT;
    RETURN 1;
  EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RETURN 0;
  END fn_tiemporesolucion;