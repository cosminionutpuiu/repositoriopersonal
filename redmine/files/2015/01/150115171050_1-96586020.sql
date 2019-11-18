--QRTZ_JOB_DETAILS

Insert into QRTZ_JOB_DETAILS
   (SCHED_NAME, JOB_NAME, JOB_GROUP, DESCRIPTION, JOB_CLASS_NAME, 
    IS_DURABLE, IS_NONCONCURRENT, IS_UPDATE_DATA, REQUESTS_RECOVERY, JOB_DATA)
 Values
   ('pdc_srv_Scheduler', 'pfirmaCheck', 'DEFAULT', NULL, 'es.juntadeandalucia.pdc.scheduler.jobs.PortaFirmaListenerJob', 
    '0', '0', '0', '0', null);
Insert into QRTZ_JOB_DETAILS
   (SCHED_NAME, JOB_NAME, JOB_GROUP, DESCRIPTION, JOB_CLASS_NAME, 
    IS_DURABLE, IS_NONCONCURRENT, IS_UPDATE_DATA, REQUESTS_RECOVERY, JOB_DATA)
 Values
   ('pdc_srv_Scheduler', 'DateCleaner', 'DEFAULT', NULL, 'es.juntadeandalucia.pdc.scheduler.jobs.DateCCCleanerJob', 
    '0', '0', '0', '0', null);
Insert into QRTZ_JOB_DETAILS
   (SCHED_NAME, JOB_NAME, JOB_GROUP, DESCRIPTION, JOB_CLASS_NAME, 
    IS_DURABLE, IS_NONCONCURRENT, IS_UPDATE_DATA, REQUESTS_RECOVERY, JOB_DATA)
 Values
   ('pdc_srv_Scheduler', 'EnvioAvisos', 'DEFAULT', NULL, 'es.juntadeandalucia.pdc.scheduler.jobs.SenderMessagesJob', 
    '0', '0', '0', '0', null);
Insert into QRTZ_JOB_DETAILS
   (SCHED_NAME, JOB_NAME, JOB_GROUP, DESCRIPTION, JOB_CLASS_NAME, 
    IS_DURABLE, IS_NONCONCURRENT, IS_UPDATE_DATA, REQUESTS_RECOVERY, JOB_DATA)
 Values
   ('pdc_srv_Scheduler', 'publication', 'DEFAULT', NULL, 'es.juntadeandalucia.pdc.scheduler.jobs.PublicationJob', 
    '0', '0', '0', '0', null);
Insert into QRTZ_JOB_DETAILS
   (SCHED_NAME, JOB_NAME, JOB_GROUP, DESCRIPTION, JOB_CLASS_NAME, 
    IS_DURABLE, IS_NONCONCURRENT, IS_UPDATE_DATA, REQUESTS_RECOVERY, JOB_DATA)
 Values
   ('pdc_srv_Scheduler', 'CambioEstado', 'DEFAULT', NULL, 'es.juntadeandalucia.pdc.scheduler.jobs.StateChangeJob', 
    '0', '0', '0', '0', null);
Insert into QRTZ_JOB_DETAILS
   (SCHED_NAME, JOB_NAME, JOB_GROUP, DESCRIPTION, JOB_CLASS_NAME, 
    IS_DURABLE, IS_NONCONCURRENT, IS_UPDATE_DATA, REQUESTS_RECOVERY, JOB_DATA)
 Values
   ('pdc_srv_Scheduler', 'SendToHistorical', 'DEFAULT', NULL, 'es.juntadeandalucia.pdc.scheduler.jobs.SendToHistoricalJob', 
    '0', '0', '0', '0', null);
Insert into QRTZ_JOB_DETAILS
   (SCHED_NAME, JOB_NAME, JOB_GROUP, DESCRIPTION, JOB_CLASS_NAME, 
    IS_DURABLE, IS_NONCONCURRENT, IS_UPDATE_DATA, REQUESTS_RECOVERY, JOB_DATA)
 Values
   ('pdc_srv_Scheduler', 'ActualizacionAvisos', 'DEFAULT', NULL, 'es.juntadeandalucia.pdc.scheduler.jobs.UpdateMessagesJob', 
    '0', '0', '0', '0', null);
Insert into QRTZ_JOB_DETAILS
   (SCHED_NAME, JOB_NAME, JOB_GROUP, DESCRIPTION, JOB_CLASS_NAME, 
    IS_DURABLE, IS_NONCONCURRENT, IS_UPDATE_DATA, REQUESTS_RECOVERY, JOB_DATA)
 Values
   ('PDC_Scheduler', 'EnvioAvisos', 'DEFAULT', NULL, 'ute.g3.pdc.scheduler.jobs.SenderMessagesJob', 
    '0', '0', '0', '0', null);
Insert into QRTZ_JOB_DETAILS
   (SCHED_NAME, JOB_NAME, JOB_GROUP, DESCRIPTION, JOB_CLASS_NAME, 
    IS_DURABLE, IS_NONCONCURRENT, IS_UPDATE_DATA, REQUESTS_RECOVERY, JOB_DATA)
 Values
   ('PDC_Scheduler', 'EnvioAvisosDocument', 'DEFAULT', NULL, 'ute.g3.pdc.scheduler.jobs.SenderMessagesDocumentJobs', 
    '0', '0', '0', '0', null);
COMMIT;

--QRTZ_TRIGGERS

Insert into QRTZ_TRIGGERS
   (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, JOB_NAME, JOB_GROUP, 
    DESCRIPTION, NEXT_FIRE_TIME, PREV_FIRE_TIME, PRIORITY, TRIGGER_STATE, 
    TRIGGER_TYPE, START_TIME, END_TIME, CALENDAR_NAME, MISFIRE_INSTR, 
    JOB_DATA)
 Values
   ('PDC_Scheduler', 'SenderMessagesTrigger', 'DEFAULT', 'EnvioAvisos', 'DEFAULT', 
    NULL, 1421323200000, -1, 5, 'WAITING', 
    'CRON', 1421321937000, 0, NULL, 0, 
    NULL);
Insert into QRTZ_TRIGGERS
   (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, JOB_NAME, JOB_GROUP, 
    DESCRIPTION, NEXT_FIRE_TIME, PREV_FIRE_TIME, PRIORITY, TRIGGER_STATE, 
    TRIGGER_TYPE, START_TIME, END_TIME, CALENDAR_NAME, MISFIRE_INSTR, 
    JOB_DATA)
 Values
   ('PDC_Scheduler', 'SenderMessagesDocumentTrigger', 'DEFAULT', 'EnvioAvisosDocument', 'DEFAULT', 
    NULL, 1421323200000, -1, 5, 'WAITING', 
    'CRON', 1421321937000, 0, NULL, 0, 
    NULL);
Insert into QRTZ_TRIGGERS
   (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, JOB_NAME, JOB_GROUP, 
    DESCRIPTION, NEXT_FIRE_TIME, PREV_FIRE_TIME, PRIORITY, TRIGGER_STATE, 
    TRIGGER_TYPE, START_TIME, END_TIME, CALENDAR_NAME, MISFIRE_INSTR, 
    JOB_DATA)
 Values
   ('pdc_srv_Scheduler', 'UpdateMessagesTrigger', 'DEFAULT', 'ActualizacionAvisos', 'DEFAULT', 
    NULL, 1421362800000, -1, 5, 'WAITING', 
    'CRON', 1421321949000, 0, NULL, 0, 
    NULL);
Insert into QRTZ_TRIGGERS
   (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, JOB_NAME, JOB_GROUP, 
    DESCRIPTION, NEXT_FIRE_TIME, PREV_FIRE_TIME, PRIORITY, TRIGGER_STATE, 
    TRIGGER_TYPE, START_TIME, END_TIME, CALENDAR_NAME, MISFIRE_INSTR, 
    JOB_DATA)
 Values
   ('pdc_srv_Scheduler', 'SenderMessagesTrigger', 'DEFAULT', 'EnvioAvisos', 'DEFAULT', 
    NULL, 1421373600000, -1, 5, 'WAITING', 
    'CRON', 1421321949000, 0, NULL, 0, 
    NULL);
Insert into QRTZ_TRIGGERS
   (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, JOB_NAME, JOB_GROUP, 
    DESCRIPTION, NEXT_FIRE_TIME, PREV_FIRE_TIME, PRIORITY, TRIGGER_STATE, 
    TRIGGER_TYPE, START_TIME, END_TIME, CALENDAR_NAME, MISFIRE_INSTR, 
    JOB_DATA)
 Values
   ('pdc_srv_Scheduler', 'DateCleanerTrigger', 'DEFAULT', 'DateCleaner', 'DEFAULT', 
    NULL, 1421362800000, -1, 5, 'WAITING', 
    'CRON', 1421321949000, 0, NULL, 0, 
    NULL);
Insert into QRTZ_TRIGGERS
   (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, JOB_NAME, JOB_GROUP, 
    DESCRIPTION, NEXT_FIRE_TIME, PREV_FIRE_TIME, PRIORITY, TRIGGER_STATE, 
    TRIGGER_TYPE, START_TIME, END_TIME, CALENDAR_NAME, MISFIRE_INSTR, 
    JOB_DATA)
 Values
   ('pdc_srv_Scheduler', 'publicationtrigger', 'DEFAULT', 'publication', 'DEFAULT', 
    NULL, 1421322840000, 1421322780000, 5, 'WAITING', 
    'CRON', 1421321949000, 0, NULL, 0, 
    NULL);
Insert into QRTZ_TRIGGERS
   (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, JOB_NAME, JOB_GROUP, 
    DESCRIPTION, NEXT_FIRE_TIME, PREV_FIRE_TIME, PRIORITY, TRIGGER_STATE, 
    TRIGGER_TYPE, START_TIME, END_TIME, CALENDAR_NAME, MISFIRE_INSTR, 
    JOB_DATA)
 Values
   ('pdc_srv_Scheduler', 'pfirmaCheckTrigger', 'DEFAULT', 'pfirmaCheck', 'DEFAULT', 
    NULL, 1421322900000, 1421322600000, 5, 'WAITING', 
    'CRON', 1421321949000, 0, NULL, 0, 
    NULL);
Insert into QRTZ_TRIGGERS
   (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, JOB_NAME, JOB_GROUP, 
    DESCRIPTION, NEXT_FIRE_TIME, PREV_FIRE_TIME, PRIORITY, TRIGGER_STATE, 
    TRIGGER_TYPE, START_TIME, END_TIME, CALENDAR_NAME, MISFIRE_INSTR, 
    JOB_DATA)
 Values
   ('pdc_srv_Scheduler', 'StateChangeTrigger', 'DEFAULT', 'CambioEstado', 'DEFAULT', 
    NULL, 1421322900000, 1421322600000, 5, 'WAITING', 
    'CRON', 1421321949000, 0, NULL, 0, 
    NULL);
Insert into QRTZ_TRIGGERS
   (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, JOB_NAME, JOB_GROUP, 
    DESCRIPTION, NEXT_FIRE_TIME, PREV_FIRE_TIME, PRIORITY, TRIGGER_STATE, 
    TRIGGER_TYPE, START_TIME, END_TIME, CALENDAR_NAME, MISFIRE_INSTR, 
    JOB_DATA)
 Values
   ('pdc_srv_Scheduler', 'SendToHistoricalTrigger', 'DEFAULT', 'SendToHistorical', 'DEFAULT', 
    NULL, 1421362800000, -1, 5, 'WAITING', 
    'CRON', 1421321949000, 0, NULL, 0, 
    NULL);
COMMIT;

--QRTZ_CRON_TRIGGERS

Insert into QRTZ_CRON_TRIGGERS
   (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, CRON_EXPRESSION, TIME_ZONE_ID)
 Values
   ('PDC_Scheduler', 'SenderMessagesTrigger', 'DEFAULT', '0 0/30 * * * ?', 'Europe/Paris');
Insert into QRTZ_CRON_TRIGGERS
   (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, CRON_EXPRESSION, TIME_ZONE_ID)
 Values
   ('PDC_Scheduler', 'SenderMessagesDocumentTrigger', 'DEFAULT', '0 0/30 * * * ?', 'Europe/Paris');
Insert into QRTZ_CRON_TRIGGERS
   (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, CRON_EXPRESSION, TIME_ZONE_ID)
 Values
   ('pdc_srv_Scheduler', 'UpdateMessagesTrigger', 'DEFAULT', '0 0 0 * * ?', 'Europe/Paris');
Insert into QRTZ_CRON_TRIGGERS
   (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, CRON_EXPRESSION, TIME_ZONE_ID)
 Values
   ('pdc_srv_Scheduler', 'SenderMessagesTrigger', 'DEFAULT', '0 0 3 * * ?', 'Europe/Paris');
Insert into QRTZ_CRON_TRIGGERS
   (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, CRON_EXPRESSION, TIME_ZONE_ID)
 Values
   ('pdc_srv_Scheduler', 'DateCleanerTrigger', 'DEFAULT', '0 0 0 * * ?', 'Europe/Paris');
Insert into QRTZ_CRON_TRIGGERS
   (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, CRON_EXPRESSION, TIME_ZONE_ID)
 Values
   ('pdc_srv_Scheduler', 'publicationtrigger', 'DEFAULT', '0 * * * * ?', 'Europe/Paris');
Insert into QRTZ_CRON_TRIGGERS
   (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, CRON_EXPRESSION, TIME_ZONE_ID)
 Values
   ('pdc_srv_Scheduler', 'pfirmaCheckTrigger', 'DEFAULT', '0 0/5 * * * ?', 'Europe/Paris');
Insert into QRTZ_CRON_TRIGGERS
   (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, CRON_EXPRESSION, TIME_ZONE_ID)
 Values
   ('pdc_srv_Scheduler', 'StateChangeTrigger', 'DEFAULT', '0 0/5 * * * ?', 'Europe/Paris');
Insert into QRTZ_CRON_TRIGGERS
   (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, CRON_EXPRESSION, TIME_ZONE_ID)
 Values
   ('pdc_srv_Scheduler', 'SendToHistoricalTrigger', 'DEFAULT', '0 0 0 * * ?', 'Europe/Paris');
COMMIT;


--QRTZ_SCHEDULER_STATE

Insert into QRTZ_SCHEDULER_STATE
   (SCHED_NAME, INSTANCE_NAME, LAST_CHECKIN_TIME, CHECKIN_INTERVAL)
 Values
   ('pdc_srv_Scheduler', 'pctr7551421321441656', 1421322832639, 7500);
Insert into QRTZ_SCHEDULER_STATE
   (SCHED_NAME, INSTANCE_NAME, LAST_CHECKIN_TIME, CHECKIN_INTERVAL)
 Values
   ('PDC_Scheduler', 'pctr7551421321429015', 1421322833686, 7500);
COMMIT;

--QRTZ_LOCKS

Insert into QRTZ_LOCKS
   (SCHED_NAME, LOCK_NAME)
 Values
   ('PDC_Scheduler', 'STATE_ACCESS');
Insert into QRTZ_LOCKS
   (SCHED_NAME, LOCK_NAME)
 Values
   ('PDC_Scheduler', 'TRIGGER_ACCESS');
Insert into QRTZ_LOCKS
   (SCHED_NAME, LOCK_NAME)
 Values
   ('pdc_srv_Scheduler', 'STATE_ACCESS');
Insert into QRTZ_LOCKS
   (SCHED_NAME, LOCK_NAME)
 Values
   ('pdc_srv_Scheduler', 'TRIGGER_ACCESS');
COMMIT;



 

 


