--------------------------------------------------------
-- Archivo creado  - viernes-septiembre-14-2012   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence INCREMENTO_ID_EMP
--------------------------------------------------------

   CREATE SEQUENCE  "MASIVO"."INCREMENTO_ID_EMP"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 17 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence INCREMENTO_ID_ESTADO
--------------------------------------------------------

   CREATE SEQUENCE  "MASIVO"."INCREMENTO_ID_ESTADO"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 10 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence INCREMENTO_ID_PERMISO
--------------------------------------------------------

   CREATE SEQUENCE  "MASIVO"."INCREMENTO_ID_PERMISO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 9 NOCACHE  NOORDER  NOCYCLE ;
  GRANT ALTER, SELECT ON "MASIVO"."INCREMENTO_ID_PERMISO" TO "MASIVO";
 

--------------------------------------------------------
--  DDL for Sequence INCREMENTO_ID_ROL
--------------------------------------------------------

   CREATE SEQUENCE  "MASIVO"."INCREMENTO_ID_ROL"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 5 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence INCREMENTO_ID_SOLICITUD
--------------------------------------------------------

   CREATE SEQUENCE  "MASIVO"."INCREMENTO_ID_SOLICITUD"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 44 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence INCREMENTO_ID_USUARIO
--------------------------------------------------------

   CREATE SEQUENCE  "MASIVO"."INCREMENTO_ID_USUARIO"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 12 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence INCREMENTO_ROL_PERMISO
--------------------------------------------------------

   CREATE SEQUENCE  "MASIVO"."INCREMENTO_ROL_PERMISO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table EMPLEADOS
--------------------------------------------------------

  CREATE TABLE "MASIVO"."EMPLEADOS" 
   (	"ID_EMPLEADO" VARCHAR2(1 BYTE), 
	"DESCRIPCION" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO" ;
--------------------------------------------------------
--  DDL for Table ESTADOS
--------------------------------------------------------

  CREATE TABLE "MASIVO"."ESTADOS" 
   (	"ID_ESTADO" NUMBER, 
	"ESTADO" VARCHAR2(30 BYTE), 
	"DESCRIPCION" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO" ;
--------------------------------------------------------
--  DDL for Table ORGANISMOS
--------------------------------------------------------

  CREATE TABLE "MASIVO"."ORGANISMOS" 
   (	"ORGANISMO" VARCHAR2(30 BYTE), 
	"DESCRIPCION" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO" ;
--------------------------------------------------------
--  DDL for Table PERMISOS
--------------------------------------------------------

  CREATE TABLE "MASIVO"."PERMISOS" 
   (	"ID_PERMISO" NUMBER, 
	"PERMISO" VARCHAR2(30 BYTE), 
	"DESCRIPCION" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO" ;
  GRANT ALTER, DELETE, INDEX, INSERT, SELECT, UPDATE, REFERENCES ON "MASIVO"."PERMISOS" TO "MASIVO";
 

--------------------------------------------------------
--  DDL for Table ROLES
--------------------------------------------------------

  CREATE TABLE "MASIVO"."ROLES" 
   (	"ID_ROL" NUMBER, 
	"ROL" VARCHAR2(30 BYTE), 
	"DESCRIPCION" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO" ;
  GRANT ALTER, DELETE, INDEX, INSERT, SELECT, UPDATE, REFERENCES ON "MASIVO"."ROLES" TO "MASIVO";
 

--------------------------------------------------------
--  DDL for Table ROL_PERMISO
--------------------------------------------------------

  CREATE TABLE "MASIVO"."ROL_PERMISO" 
   (	"ID_ROL_PERMISO" NUMBER, 
	"ROL" NUMBER, 
	"PERMISO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO" ;
--------------------------------------------------------
--  DDL for Table SOLICITUD_EMPLEADO
--------------------------------------------------------

  CREATE TABLE "MASIVO"."SOLICITUD_EMPLEADO" 
   (	"SOLICITUD" NUMBER, 
	"EMPLEADO" VARCHAR2(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO" ;
--------------------------------------------------------
--  DDL for Table SOLICITUDES
--------------------------------------------------------

  CREATE TABLE "MASIVO"."SOLICITUDES" 
   (	"ID_SOLICITUD" NUMBER, 
	"REMITENTE" VARCHAR2(100 BYTE), 
	"ASUNTO" VARCHAR2(100 BYTE), 
	"RESPUESTA" NUMBER(1,0), 
	"FECHA_SOLICITUD" DATE, 
	"FECHA_LANZAMIENTO" DATE, 
	"SOLICITANTE" NUMBER, 
	"ESTADO" NUMBER, 
	"MENSAJE" CLOB
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO" 
 LOB ("MENSAJE") STORE AS BASICFILE (
  TABLESPACE "EMASIVO" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table SOLICITUD_ORGANISMO
--------------------------------------------------------

  CREATE TABLE "MASIVO"."SOLICITUD_ORGANISMO" 
   (	"SOLICITUD" NUMBER, 
	"ORGANISMO" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO" ;
--------------------------------------------------------
--  DDL for Table USUARIOS
--------------------------------------------------------

  CREATE TABLE "MASIVO"."USUARIOS" 
   (	"ID_USUARIO" NUMBER, 
	"IDENTIFICADOR" VARCHAR2(80 BYTE), 
	"IP" VARCHAR2(16 BYTE) DEFAULT '0.0.0.0', 
	"ROL" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO" ;
REM INSERTING into MASIVO.EMPLEADOS
SET DEFINE OFF;
Insert into MASIVO.EMPLEADOS (ID_EMPLEADO,DESCRIPCION) values ('G','Generico');
Insert into MASIVO.EMPLEADOS (ID_EMPLEADO,DESCRIPCION) values ('E','Externo');
Insert into MASIVO.EMPLEADOS (ID_EMPLEADO,DESCRIPCION) values ('I','Interno');
Insert into MASIVO.EMPLEADOS (ID_EMPLEADO,DESCRIPCION) values ('A','Activo');
Insert into MASIVO.EMPLEADOS (ID_EMPLEADO,DESCRIPCION) values ('N','No activo');
REM INSERTING into MASIVO.ESTADOS
SET DEFINE OFF;
Insert into MASIVO.ESTADOS (ID_ESTADO,ESTADO,DESCRIPCION) values ('1','nueva','Nueva solicitud');
Insert into MASIVO.ESTADOS (ID_ESTADO,ESTADO,DESCRIPCION) values ('2','creada','Nueva solicitud creada');
Insert into MASIVO.ESTADOS (ID_ESTADO,ESTADO,DESCRIPCION) values ('3','cancelada','Solicitud cancelada');
Insert into MASIVO.ESTADOS (ID_ESTADO,ESTADO,DESCRIPCION) values ('4','pdte_validar','Solicitud pendiente de validar por CEICE');
Insert into MASIVO.ESTADOS (ID_ESTADO,ESTADO,DESCRIPCION) values ('5','validada','Solicitud validada por CEICE');
Insert into MASIVO.ESTADOS (ID_ESTADO,ESTADO,DESCRIPCION) values ('6','pdte_ejecutar','Solicitud pendiende de ejecucion por parte de SFC');
Insert into MASIVO.ESTADOS (ID_ESTADO,ESTADO,DESCRIPCION) values ('7','probada','Solicitud con pruebas de envio realizadas');
Insert into MASIVO.ESTADOS (ID_ESTADO,ESTADO,DESCRIPCION) values ('8','ejecutada','Solicitud con envio masivo realizado');
Insert into MASIVO.ESTADOS (ID_ESTADO,ESTADO,DESCRIPCION) values ('9','finalizada','Solicitud finalizada');
REM INSERTING into MASIVO.ORGANISMOS
SET DEFINE OFF;
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('todos','Todos');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('auto','Autoenvio');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ccul','Consejería de Cultura');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ius','Juzgados');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('pag','Patronato de la Alhambra y Generalife');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('cibs','Consejeria para la Igualdad y Bienestar Social');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ceh','Consejeria economia y hacienda');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('utedlt','Unidades Territoriales de Desarrollo Local y Tecnológico');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ced-ma','Consejeria de Educacion Malaga');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('sae','Servicio Andaluz de Empleo');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('aidea','Agencia de Innovación y Desarrollo de Andalucía');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('iavante','Fundación para el Avance Tecnológico y Entrenamiento Profesional');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ced-co','Consejeria de Educacion Cordoba');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('fbar','Fundación Barenboim-Said');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('centia','Centro de Turismo Interior de Andalucía ');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ced-se','Consejeria de Educacion Sevilla');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('cjap','Consejería de Justicia y Administración Pública');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('egmasa','Empresa de Gestión Medioambiental (EGMASA)');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('iaj','Instituto Andaluz de la Juventud');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ced-gr','Consejeria de Educacion Granada');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('rtva','Radio Televisión Andaluza');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('iea','Instituto de Estadistica de Andalucia');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('cma','Consejería de Medio Ambiente');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('cpre','Consejería de la Presidencia');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('acsa','Agencia de Calidad Sanitaria de Andalucía');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('caa','Consejo Audiovisual de Andalucía');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('sspa','Sistema Sanitario Público Andaluz');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('averroes','Averroes');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ced-ja','Consejeria de Educacion Jaen');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('pol','Unidad del Cuerpo Nacional de Policia');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ced','Consejeria de Educacion');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ise','Ente Público Andaluz de Infraestructuras y Servicios Educativos');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('csalud','Consejería de Salud');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ced-hu','Consejeria de Educacion Huelva');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('sadesi','Sadesi, S.A.U');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('veia','VEIASA');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ctagr','Consorcio de Transportes del Área de Granada');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ctas','Consorcio de Transportes del Área de Sevilla');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('deportes','Deporte Andaluz, S.A.');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ephag','Empresa pública Hospital Alto Guadalquivir');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ephcs','Agencia Publica Empresarial Sanitaria Costa del Sol');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('agua','Agencia Andaluza del Agua');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('mir','Médicos Internos Residentes (MIR)');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('itan','Infraestructuras Turísticas Andalucía, S.A.');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('epsbg','Empresa Publica Sanitaria Bajo Guadalquivir');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ctcd','Consejería de Turismo, Comercio y Deporte');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ctbc','Consorcio de Transportes Bahía de Cádiz');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ctcg','Consorcio de Transportes Campo de Gibraltar');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('fcea','Fundación Centro de Estudios Andaluces');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('jus','Justicia - Tramitadores');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('giasa','GIASA');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ctam','Corporativo del Consorcio de Transportes del Área de Málaga');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('citandalucia','Citandalucia');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('fdana','fdana');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('cfr','Consorcio Fernando de los Rios');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('iaph','Instituto Andaluz del Patrimonio Historico (IAPH)');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('aeropolis','Aeropolis. Parque tecnologico y aeronautico de Andalucia');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('agaeve','Agencia Andaluza de Evaluación Educativa');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('aaci','Agencia Andaluza de Cooperación Internacional para el Desarrollo');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ata','Agencia Tributaria de Andalucía');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ceic','Consejería Economía, Innovación y Ciencia');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('chap','Consejería de Hacienda y Administración Pública');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('cgj','Consejería de Gobernación y Justicia');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('copv','Consejería de Obras Públicas y Vivienda');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('iaal','Instituto Andaluz de las Artes y las Letras');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('unircja','Universidades de Andalucia');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('adca','Agencia de Defensa de la Competencia de Andalucía');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('edu','Edu');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('fmaa','Fundación Pública Andaluza Centro para la Mediación y el Arbitraje de Andalucía');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('igra','Inversión y Gestión de Capital Riesgo de Andalucía');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('eptda','Empresa Pública para la Gestión del Turismo y del Deporte de Andalucía, S.A.');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('saludresponde','SaludResponde-EPES');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('extenda','Agencia Andaluza de Promoción Exterior');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ctja','Consorcio de Transportes del Área de Jaén');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('aopja','Agencia de Obra Pública de la Junta de Andalucía');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('aaiicc','Agencia Andaluza de Instituciones Culturales');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('agapa','Agencia de Gestion Agraria y Pesquera de Andalucia');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ascs','Agencia Sanitaria Costa del Sol');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('atrian','Agencia Tributaria de Andalucía');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('assda','Agencia de Servicios Sociales y Dependencia de Andalucía');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ieca','Instituto de Estadística y Cartografía de Andalucía');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('aac','Agencia Andaluza del Conocimiento');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('calri','Consejería de Administración Local y Relaciones Institucionales');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('cji','Consejería de Justicia e Interior');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ceice','Consejería de Economía, Innovación, Ciencia y Empleo');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('cfv','Consejería de Fomento y Vivienda');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('capma','Consejería de Agricultura, Pesca y Medio Ambiente');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('csbs','Consejería de Salud y Bienestar Social');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ctc','Consejería de Turismo y Comercio');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ccd','Consejería de Cultura y Deporte');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('cprei','Consejería de la Presidencia e Igualdad');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('aacid','Agencia Andaluza de Cooperación Internacional para el Desarrollo ');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('rla','Red Logistica de Andalucia');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('cert','AndaluciaCERT');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ifapa','Instituto Andaluz de Investigación y Formación Agraria, Pesquera, Alimentaria y Producción Ecológica');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('cem','Consejería de Empleo');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('epes','Empresa pública de emergencias sanitarias');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('car93','Cartuja 93, S.A.');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('sandetel','Sandetel');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('epgpc','Instituto Andaluz de las Artes y las Letras');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('andared','AndaRed');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ced-al','Consejeria de Educacion Almeria');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('sas','Servicio Andaluz de Salud');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('egob','Egobierno (SADESI)');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('iuse','Juzgados (Personal externo)');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('faee','Andalucía Emprende, Fundación Publica Andaluza');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('iam','Instituto Andaluz de la Mujer');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('cgob','Consejería de Gobernación');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('fada','Fundación Andaluza para la Atención a la Drogodependencia');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('aae','Agencia Andaluza de la Energía');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('caac','Centro Andaluz de Arte Contemporaneo');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('cap','Consejería de Agricultura y Pesca');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('faisem','Fundación Pública Andaluza para la Integración Social de Personas con Enfermedad Mental. FAISEM');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('cice','Consejeria de Innovacion,Ciencia y Empresas');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ceis','SaludResponde-EPES');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('iaap','Instituto Andaluz de Administración Pública');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('itj','Instalaciones y Turismo Joven');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('fps','Fundación Progreso y Salud');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('fass','Fundación Andaluza Servicios Sociales');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('tasa','Turismo Andaluz S.A.');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('epsa','Empresa Publica de Suelo de Andalucia');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('agae','Agencia Andaluza de Evaluación');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('eppa','Empresa Pública de Puertos de Andalucía');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('redees','Fundación Red Andaluza de Economía Social');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('cca','Consejo Consultivo de Andalucía');
Insert into MASIVO.ORGANISMOS (ORGANISMO,DESCRIPCION) values ('ced-ca','Consejeria de Educacion Cadiz');
REM INSERTING into MASIVO.PERMISOS
SET DEFINE OFF;
Insert into MASIVO.PERMISOS (ID_PERMISO,PERMISO,DESCRIPCION) values ('1','crear','Crear una nueva solicitud');
Insert into MASIVO.PERMISOS (ID_PERMISO,PERMISO,DESCRIPCION) values ('2','editar','Editar una solicitud existente');
Insert into MASIVO.PERMISOS (ID_PERMISO,PERMISO,DESCRIPCION) values ('3','cancelar','Cancelar una solicitud existente');
Insert into MASIVO.PERMISOS (ID_PERMISO,PERMISO,DESCRIPCION) values ('4','validar','Validar una nueva solicitud');
Insert into MASIVO.PERMISOS (ID_PERMISO,PERMISO,DESCRIPCION) values ('5','denegar','Denegar una nueva solicitud');
Insert into MASIVO.PERMISOS (ID_PERMISO,PERMISO,DESCRIPCION) values ('6','ejecutar','Ejecutar envio de una solicitud validada');
Insert into MASIVO.PERMISOS (ID_PERMISO,PERMISO,DESCRIPCION) values ('7','probar','Probar el envio de una solicitud validada');
Insert into MASIVO.PERMISOS (ID_PERMISO,PERMISO,DESCRIPCION) values ('8','finalizar','Finalizar la solicitud');
REM INSERTING into MASIVO.ROLES
SET DEFINE OFF;
Insert into MASIVO.ROLES (ID_ROL,ROL,DESCRIPCION) values ('1','superadmin','Administrador de la aplicacion');
Insert into MASIVO.ROLES (ID_ROL,ROL,DESCRIPCION) values ('2','solicitante','Administradores de organismos y/o gestores de cuentas ');
Insert into MASIVO.ROLES (ID_ROL,ROL,DESCRIPCION) values ('3','validador','Responsable de CEICE para validar el envio');
Insert into MASIVO.ROLES (ID_ROL,ROL,DESCRIPCION) values ('4','ejecutor','Tecnico Soporte Funcional de Correo que realiza las pruebas y el envio');
REM INSERTING into MASIVO.ROL_PERMISO
SET DEFINE OFF;
Insert into MASIVO.ROL_PERMISO (ID_ROL_PERMISO,ROL,PERMISO) values ('1','1','1');
Insert into MASIVO.ROL_PERMISO (ID_ROL_PERMISO,ROL,PERMISO) values ('2','1','2');
Insert into MASIVO.ROL_PERMISO (ID_ROL_PERMISO,ROL,PERMISO) values ('3','1','3');
Insert into MASIVO.ROL_PERMISO (ID_ROL_PERMISO,ROL,PERMISO) values ('4','1','4');
Insert into MASIVO.ROL_PERMISO (ID_ROL_PERMISO,ROL,PERMISO) values ('5','1','5');
Insert into MASIVO.ROL_PERMISO (ID_ROL_PERMISO,ROL,PERMISO) values ('6','1','6');
Insert into MASIVO.ROL_PERMISO (ID_ROL_PERMISO,ROL,PERMISO) values ('7','1','7');
Insert into MASIVO.ROL_PERMISO (ID_ROL_PERMISO,ROL,PERMISO) values ('8','1','8');
Insert into MASIVO.ROL_PERMISO (ID_ROL_PERMISO,ROL,PERMISO) values ('9','2','1');
Insert into MASIVO.ROL_PERMISO (ID_ROL_PERMISO,ROL,PERMISO) values ('10','2','2');
Insert into MASIVO.ROL_PERMISO (ID_ROL_PERMISO,ROL,PERMISO) values ('11','2','3');
Insert into MASIVO.ROL_PERMISO (ID_ROL_PERMISO,ROL,PERMISO) values ('12','3','2');
Insert into MASIVO.ROL_PERMISO (ID_ROL_PERMISO,ROL,PERMISO) values ('13','3','3');
Insert into MASIVO.ROL_PERMISO (ID_ROL_PERMISO,ROL,PERMISO) values ('14','3','4');
Insert into MASIVO.ROL_PERMISO (ID_ROL_PERMISO,ROL,PERMISO) values ('15','3','5');
Insert into MASIVO.ROL_PERMISO (ID_ROL_PERMISO,ROL,PERMISO) values ('16','4','2');
Insert into MASIVO.ROL_PERMISO (ID_ROL_PERMISO,ROL,PERMISO) values ('17','4','3');
Insert into MASIVO.ROL_PERMISO (ID_ROL_PERMISO,ROL,PERMISO) values ('18','4','6');
Insert into MASIVO.ROL_PERMISO (ID_ROL_PERMISO,ROL,PERMISO) values ('19','4','7');
Insert into MASIVO.ROL_PERMISO (ID_ROL_PERMISO,ROL,PERMISO) values ('20','4','8');
REM INSERTING into MASIVO.SOLICITUD_EMPLEADO
SET DEFINE OFF;
Insert into MASIVO.SOLICITUD_EMPLEADO (SOLICITUD,EMPLEADO) values ('42','A');
Insert into MASIVO.SOLICITUD_EMPLEADO (SOLICITUD,EMPLEADO) values ('42','G');
Insert into MASIVO.SOLICITUD_EMPLEADO (SOLICITUD,EMPLEADO) values ('42','I');
Insert into MASIVO.SOLICITUD_EMPLEADO (SOLICITUD,EMPLEADO) values ('43','A');
Insert into MASIVO.SOLICITUD_EMPLEADO (SOLICITUD,EMPLEADO) values ('43','I');
REM INSERTING into MASIVO.SOLICITUDES
SET DEFINE OFF;
Insert into MASIVO.SOLICITUDES (ID_SOLICITUD,REMITENTE,ASUNTO,RESPUESTA,FECHA_SOLICITUD,FECHA_LANZAMIENTO,SOLICITANTE,ESTADO) values ('42','soporte.funcional.correo.sadesi@juntadeandalucia.es','Notificacion webmail','0',to_date('14/09/12','DD/MM/RR'),to_date('28/09/12','DD/MM/RR'),'3','1');
Insert into MASIVO.SOLICITUDES (ID_SOLICITUD,REMITENTE,ASUNTO,RESPUESTA,FECHA_SOLICITUD,FECHA_LANZAMIENTO,SOLICITANTE,ESTADO) values ('43','prueba.sadesi@juntadeandalucai.es','Correo ticket','0',to_date('14/09/12','DD/MM/RR'),to_date('20/09/12','DD/MM/RR'),'3','1');
REM INSERTING into MASIVO.SOLICITUD_ORGANISMO
SET DEFINE OFF;
Insert into MASIVO.SOLICITUD_ORGANISMO (SOLICITUD,ORGANISMO) values ('42','saludresponde');
Insert into MASIVO.SOLICITUD_ORGANISMO (SOLICITUD,ORGANISMO) values ('43','aeropolis');
REM INSERTING into MASIVO.USUARIOS
SET DEFINE OFF;
Insert into MASIVO.USUARIOS (ID_USUARIO,IDENTIFICADOR,IP,ROL) values ('10','andres.oyola','10.240.11.12','3');
Insert into MASIVO.USUARIOS (ID_USUARIO,IDENTIFICADOR,IP,ROL) values ('11','andres.oyola','10.10.10.10','4');
Insert into MASIVO.USUARIOS (ID_USUARIO,IDENTIFICADOR,IP,ROL) values ('1','josem.rodriguez.caro.ext','10.240.192.214','1');
Insert into MASIVO.USUARIOS (ID_USUARIO,IDENTIFICADOR,IP,ROL) values ('2','josel.castano','10.240.234.11','1');
Insert into MASIVO.USUARIOS (ID_USUARIO,IDENTIFICADOR,IP,ROL) values ('3','fernandito.cabeza','10.240.224.12','2');
Insert into MASIVO.USUARIOS (ID_USUARIO,IDENTIFICADOR,IP,ROL) values ('4','albertito.tocino','10.240.224.11','3');
--------------------------------------------------------
--  DDL for Index SOLICITUD_ORGANISMO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MASIVO"."SOLICITUD_ORGANISMO_PK" ON "MASIVO"."SOLICITUD_ORGANISMO" ("SOLICITUD", "ORGANISMO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO" ;
--------------------------------------------------------
--  DDL for Index ESTADOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MASIVO"."ESTADOS_PK" ON "MASIVO"."ESTADOS" ("ID_ESTADO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO" ;
--------------------------------------------------------
--  DDL for Index ROLES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MASIVO"."ROLES_PK" ON "MASIVO"."ROLES" ("ID_ROL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO" ;
--------------------------------------------------------
--  DDL for Index ORGANISMOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MASIVO"."ORGANISMOS_PK" ON "MASIVO"."ORGANISMOS" ("ORGANISMO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO" ;
--------------------------------------------------------
--  DDL for Index PERMISOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MASIVO"."PERMISOS_PK" ON "MASIVO"."PERMISOS" ("ID_PERMISO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO" ;
--------------------------------------------------------
--  DDL for Index SOLICITUD_EMPLEADO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MASIVO"."SOLICITUD_EMPLEADO_PK" ON "MASIVO"."SOLICITUD_EMPLEADO" ("SOLICITUD", "EMPLEADO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO" ;
--------------------------------------------------------
--  DDL for Index EMPLEADOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MASIVO"."EMPLEADOS_PK" ON "MASIVO"."EMPLEADOS" ("ID_EMPLEADO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO" ;
--------------------------------------------------------
--  DDL for Index SOLICITUDES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MASIVO"."SOLICITUDES_PK" ON "MASIVO"."SOLICITUDES" ("ID_SOLICITUD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO" ;
--------------------------------------------------------
--  DDL for Index ROL_PERMISO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MASIVO"."ROL_PERMISO_PK" ON "MASIVO"."ROL_PERMISO" ("ID_ROL_PERMISO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO" ;
--------------------------------------------------------
--  DDL for Index USUARIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MASIVO"."USUARIO_PK" ON "MASIVO"."USUARIOS" ("ID_USUARIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO" ;
--------------------------------------------------------
--  Constraints for Table EMPLEADOS
--------------------------------------------------------

  ALTER TABLE "MASIVO"."EMPLEADOS" ADD CONSTRAINT "EMPLEADOS_PK" PRIMARY KEY ("ID_EMPLEADO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO"  ENABLE;
 
  ALTER TABLE "MASIVO"."EMPLEADOS" MODIFY ("ID_EMPLEADO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ORGANISMOS
--------------------------------------------------------

  ALTER TABLE "MASIVO"."ORGANISMOS" ADD CONSTRAINT "ORGANISMOS_PK" PRIMARY KEY ("ORGANISMO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USUARIOS
--------------------------------------------------------

  ALTER TABLE "MASIVO"."USUARIOS" MODIFY ("ID_USUARIO" NOT NULL ENABLE);
 
  ALTER TABLE "MASIVO"."USUARIOS" MODIFY ("IDENTIFICADOR" NOT NULL ENABLE);
 
  ALTER TABLE "MASIVO"."USUARIOS" MODIFY ("IP" NOT NULL ENABLE);
 
  ALTER TABLE "MASIVO"."USUARIOS" MODIFY ("ROL" NOT NULL ENABLE);
 
  ALTER TABLE "MASIVO"."USUARIOS" ADD CONSTRAINT "USUARIO_PK" PRIMARY KEY ("ID_USUARIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ROL_PERMISO
--------------------------------------------------------

  ALTER TABLE "MASIVO"."ROL_PERMISO" ADD CONSTRAINT "ROL_PERMISO_PK" PRIMARY KEY ("ID_ROL_PERMISO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO"  ENABLE;
 
  ALTER TABLE "MASIVO"."ROL_PERMISO" MODIFY ("ID_ROL_PERMISO" NOT NULL ENABLE);
 
  ALTER TABLE "MASIVO"."ROL_PERMISO" MODIFY ("ROL" NOT NULL ENABLE);
 
  ALTER TABLE "MASIVO"."ROL_PERMISO" MODIFY ("PERMISO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ESTADOS
--------------------------------------------------------

  ALTER TABLE "MASIVO"."ESTADOS" ADD CONSTRAINT "ESTADOS_PK" PRIMARY KEY ("ID_ESTADO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO"  ENABLE;
 
  ALTER TABLE "MASIVO"."ESTADOS" MODIFY ("ID_ESTADO" NOT NULL ENABLE);
 
  ALTER TABLE "MASIVO"."ESTADOS" MODIFY ("ESTADO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SOLICITUD_EMPLEADO
--------------------------------------------------------

  ALTER TABLE "MASIVO"."SOLICITUD_EMPLEADO" ADD CONSTRAINT "SOLICITUD_EMPLEADO_PK" PRIMARY KEY ("SOLICITUD", "EMPLEADO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO"  ENABLE;
 
  ALTER TABLE "MASIVO"."SOLICITUD_EMPLEADO" MODIFY ("SOLICITUD" NOT NULL ENABLE);
 
  ALTER TABLE "MASIVO"."SOLICITUD_EMPLEADO" MODIFY ("EMPLEADO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ROLES
--------------------------------------------------------

  ALTER TABLE "MASIVO"."ROLES" ADD CONSTRAINT "ROLES_PK" PRIMARY KEY ("ID_ROL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO"  ENABLE;
 
  ALTER TABLE "MASIVO"."ROLES" MODIFY ("ID_ROL" NOT NULL ENABLE);
 
  ALTER TABLE "MASIVO"."ROLES" MODIFY ("ROL" NOT NULL ENABLE);
  GRANT ALTER, DELETE, INDEX, INSERT, SELECT, UPDATE, REFERENCES ON "MASIVO"."ROLES" TO "MASIVO";
 

--------------------------------------------------------
--  Constraints for Table PERMISOS
--------------------------------------------------------

  ALTER TABLE "MASIVO"."PERMISOS" ADD CONSTRAINT "PERMISOS_PK" PRIMARY KEY ("ID_PERMISO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO"  ENABLE;
 
  ALTER TABLE "MASIVO"."PERMISOS" MODIFY ("ID_PERMISO" NOT NULL ENABLE);
 
  ALTER TABLE "MASIVO"."PERMISOS" MODIFY ("PERMISO" NOT NULL ENABLE);
  GRANT ALTER, DELETE, INDEX, INSERT, SELECT, UPDATE, REFERENCES ON "MASIVO"."PERMISOS" TO "MASIVO";
 

--------------------------------------------------------
--  Constraints for Table SOLICITUD_ORGANISMO
--------------------------------------------------------

  ALTER TABLE "MASIVO"."SOLICITUD_ORGANISMO" ADD CONSTRAINT "SOLICITUD_ORGANISMO_PK" PRIMARY KEY ("SOLICITUD", "ORGANISMO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO"  ENABLE;
 
  ALTER TABLE "MASIVO"."SOLICITUD_ORGANISMO" MODIFY ("SOLICITUD" NOT NULL ENABLE);
 
  ALTER TABLE "MASIVO"."SOLICITUD_ORGANISMO" MODIFY ("ORGANISMO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SOLICITUDES
--------------------------------------------------------

  ALTER TABLE "MASIVO"."SOLICITUDES" ADD CONSTRAINT "CHECK_RESPUESTA" CHECK ("RESPUESTA" IN (0,1)) ENABLE;
 
  ALTER TABLE "MASIVO"."SOLICITUDES" ADD CONSTRAINT "SOLICITUDES_PK" PRIMARY KEY ("ID_SOLICITUD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "EMASIVO"  ENABLE;
 
  ALTER TABLE "MASIVO"."SOLICITUDES" MODIFY ("ID_SOLICITUD" NOT NULL ENABLE);
 
  ALTER TABLE "MASIVO"."SOLICITUDES" MODIFY ("REMITENTE" NOT NULL ENABLE);
 
  ALTER TABLE "MASIVO"."SOLICITUDES" MODIFY ("ASUNTO" NOT NULL ENABLE);
 
  ALTER TABLE "MASIVO"."SOLICITUDES" MODIFY ("RESPUESTA" NOT NULL ENABLE);
 
  ALTER TABLE "MASIVO"."SOLICITUDES" MODIFY ("FECHA_SOLICITUD" NOT NULL ENABLE);
 
  ALTER TABLE "MASIVO"."SOLICITUDES" MODIFY ("FECHA_LANZAMIENTO" NOT NULL ENABLE);
 
  ALTER TABLE "MASIVO"."SOLICITUDES" MODIFY ("SOLICITANTE" NOT NULL ENABLE);
 
  ALTER TABLE "MASIVO"."SOLICITUDES" MODIFY ("ESTADO" NOT NULL ENABLE);
 
  ALTER TABLE "MASIVO"."SOLICITUDES" MODIFY ("MENSAJE" NOT NULL ENABLE);




  GRANT ALTER, DELETE, INDEX, INSERT, SELECT, UPDATE, REFERENCES ON "MASIVO"."PERMISOS" TO "MASIVO";
 


  GRANT ALTER, DELETE, INDEX, INSERT, SELECT, UPDATE, REFERENCES ON "MASIVO"."ROLES" TO "MASIVO";
 

--------------------------------------------------------
--  Ref Constraints for Table ROL_PERMISO
--------------------------------------------------------

  ALTER TABLE "MASIVO"."ROL_PERMISO" ADD CONSTRAINT "ROL_PERMISO_FK1" FOREIGN KEY ("ROL")
	  REFERENCES "MASIVO"."ROLES" ("ID_ROL") ON DELETE CASCADE ENABLE;
 
  ALTER TABLE "MASIVO"."ROL_PERMISO" ADD CONSTRAINT "ROL_PERMISO_FK2" FOREIGN KEY ("PERMISO")
	  REFERENCES "MASIVO"."PERMISOS" ("ID_PERMISO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SOLICITUD_EMPLEADO
--------------------------------------------------------

  ALTER TABLE "MASIVO"."SOLICITUD_EMPLEADO" ADD CONSTRAINT "FKBA72AC06A838C3F5" FOREIGN KEY ("SOLICITUD")
	  REFERENCES "MASIVO"."SOLICITUDES" ("ID_SOLICITUD") DISABLE;
 
  ALTER TABLE "MASIVO"."SOLICITUD_EMPLEADO" ADD CONSTRAINT "FKBA72AC06C98C2CF7" FOREIGN KEY ("EMPLEADO")
	  REFERENCES "MASIVO"."EMPLEADOS" ("ID_EMPLEADO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SOLICITUDES
--------------------------------------------------------

  ALTER TABLE "MASIVO"."SOLICITUDES" ADD CONSTRAINT "SOLICITUDES_ESTADOS_FK1" FOREIGN KEY ("ESTADO")
	  REFERENCES "MASIVO"."ESTADOS" ("ID_ESTADO") ON DELETE SET NULL ENABLE;
 
  ALTER TABLE "MASIVO"."SOLICITUDES" ADD CONSTRAINT "SOLICITUDES_USUARIOS_FK1" FOREIGN KEY ("SOLICITANTE")
	  REFERENCES "MASIVO"."USUARIOS" ("ID_USUARIO") ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SOLICITUD_ORGANISMO
--------------------------------------------------------

  ALTER TABLE "MASIVO"."SOLICITUD_ORGANISMO" ADD CONSTRAINT "FK779A5602A1B602D" FOREIGN KEY ("ORGANISMO")
	  REFERENCES "MASIVO"."ORGANISMOS" ("ORGANISMO") ENABLE;
 
  ALTER TABLE "MASIVO"."SOLICITUD_ORGANISMO" ADD CONSTRAINT "FK779A5602A838C3F5" FOREIGN KEY ("SOLICITUD")
	  REFERENCES "MASIVO"."SOLICITUDES" ("ID_SOLICITUD") DISABLE;
--------------------------------------------------------
--  Ref Constraints for Table USUARIOS
--------------------------------------------------------

  ALTER TABLE "MASIVO"."USUARIOS" ADD CONSTRAINT "USUARIO_FK1" FOREIGN KEY ("ROL")
	  REFERENCES "MASIVO"."ROLES" ("ID_ROL") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  DDL for Procedure RESET_SEQ
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "MASIVO"."RESET_SEQ" (    
  p_seq in varchar2    
)    
as    
    l_value number;    
begin    
     execute immediate 'select ' || p_seq || 
                        '.nextval from dual' INTO l_value; 
     execute immediate 'alter sequence ' || p_seq || 
                       ' increment by -' || l_value || 
                       ' minvalue 0'; 
     execute immediate 'select ' || p_seq || 
                       '.nextval from dual' INTO l_value; 
     execute immediate 'alter sequence ' || p_seq || 
                       ' increment by 1 '; 
end;

/

  GRANT EXECUTE ON "MASIVO"."RESET_SEQ" TO "MASIVO";
 

