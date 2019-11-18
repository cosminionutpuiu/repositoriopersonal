-- CREACION DE NUEVO TIPO DE RELACION
Insert into CMDB_RELATION (ID_RELATION,TX_DESCRIPTION,TX_NAME,TX_CODE) 
values (CMDB_SQ_RELATION.nextval,'Contiene a','Contiene a','CODE_CONTIENE_A');

commit;



-- CREACION DE NUEVAS RELACIONES

-- Creación de la constraint para el tipo de CI SERVIDOR
insert into CMDB_RELATIONCONSTRAINT 
(ID_RELATIONCONSTRAINT,NU_FKNAMECIORIGIN,NU_FKNAMECIEND,
NU_FKRELATION,TX_MAX,TX_MIN,LG_VISIBILITY)
VALUES 
(CMDB_SQ_RELATIONCONSTRAINT.nextval,(select id_nameci from cmdb_nameci where tx_name = 'SERVIDOR'),
(select id_nameci from cmdb_nameci where tx_name = 'SERVIDOR'),
(select id_relation from CMDB_RELATION where TX_CODE='CODE_CONTIENE_A'),'*','0','1');


-- Creación de relacion entre servidor y organismo del tipo pertenece a con cardinalidad 1 a 1
INSERT INTO CMDB_RELATIONCONSTRAINT 
(ID_RELATIONCONSTRAINT, NU_FKNAMECIORIGIN, NU_FKNAMECIEND, 
NU_FKRELATION, TX_MAX, TX_MIN, LG_VISIBILITY) 
VALUES (CMDB_SQ_RELATIONCONSTRAINT.nextval, (select id_nameci from cmdb_nameci where tx_name = 'SERVIDOR'), 
(select id_nameci from cmdb_nameci where tx_name = 'ORGANISMO_PUBLICO'), 
(select id_relation from CMDB_RELATION where TX_CODE='CODE_ASIGNADO_A'), '1', '1', '1');

-- Creación de una relacion entre instancai_bd y ella misma del tipo respalado con cardinalidad 0..n
insert into CMDB_RELATIONCONSTRAINT 
(ID_RELATIONCONSTRAINT,NU_FKNAMECIORIGIN,NU_FKNAMECIEND,
NU_FKRELATION,TX_MAX,TX_MIN,LG_VISIBILITY)
VALUES 
(CMDB_SQ_RELATIONCONSTRAINT.nextval,(select id_nameci from cmdb_nameci where tx_name = 'INSTANCIA_BD'),
(select id_nameci from cmdb_nameci where tx_name = 'INSTANCIA_BD'),
(select id_relation from CMDB_RELATION where TX_CODE='CODE_RESPALDADO_POR'),'*','0','1');

commit;



-- ACTUALIZACION DE ATRIBUTOS
-- Actualizamos Atributo "Numero de cores por procesador" > Renombrar a "Numero de cores" para SERVIDOR (aunque es global)
update cmdb_defattribute 
set tx_name='Número de cores'
where tx_code='DEF_ATR_NUM_CORES_PROCESADOR';



-- Cambios sobre SERVIDOR
update cmdb_defattributenameci 
set lg_visibility=0
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='SERVIDOR')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_HOSTNAME'));

update cmdb_defattributenameci 
set lg_visibility=0
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='SERVIDOR')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_IP'));

update cmdb_defattributenameci 
set lg_visibility=0
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='SERVIDOR')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_DESCRIPCION'));

update cmdb_defattributenameci 
set lg_visibility=0
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='SERVIDOR')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_F_FIN_GARANTIA'));

update cmdb_defattributenameci 
set lg_visibility=0
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='SERVIDOR')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_ALMACENAMIENTO'));


update cmdb_defattributenameci 
set lg_visibility=0, lg_mandatory=0
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='SERVIDOR')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_MEMORIA_RAM'));


update cmdb_defattributenameci 
set lg_visibility=0
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='SERVIDOR')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_F_FIN_MANTENIMIENTO'));


update cmdb_defattributenameci 
set lg_visibility=0
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='SERVIDOR')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_UNIDAD_ALMACENAMIENTO'));


update cmdb_defattributenameci 
set lg_visibility=0, lg_mandatory=0
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='SERVIDOR')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_UNIDAD_RAM'));


update cmdb_defattributenameci 
set lg_mandatory=1
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='SERVIDOR')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_NUM_CORES_PROCESADOR'));


update cmdb_defattributenameci 
set lg_security=1
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='SERVIDOR')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_COD_CRIHJA'));


update cmdb_defattributenameci 
set lg_security=1
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='SERVIDOR')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_NUM_SERIE'));


update cmdb_defattributenameci 
set lg_security=1
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='SERVIDOR')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_ETIQUETA_RFID'));

-- ACTUALIZACION DE DATOS DEL TIPO DE CI CLUSTER
update cmdb_defattributenameci 
set lg_visibility=0
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='CLUSTER')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_IP'));

update cmdb_defattributenameci 
set lg_visibility=0
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='CLUSTER')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_ENTORNO'));

update cmdb_defattributenameci 
set lg_visibility=0
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='CLUSTER')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_DESCRIPCION'));



-- ACTUALIZACION DE DATOS DEL TIPO DE CI INSTANCIA BD
update cmdb_defattributenameci 
set lg_visibility=0
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='INSTANCIA_BD')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_DESCRIPCION'));

update cmdb_defattributenameci 
set lg_visibility=0
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='INSTANCIA_BD')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_NUM_LICENCIAS'));

update cmdb_defattributenameci 
set lg_visibility=0
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='INSTANCIA_BD')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_F_FIN_MANTENIMIENTO'));

update cmdb_defattributenameci 
set lg_visibility=0
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='INSTANCIA_BD')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_F_FIN_GARANTIA'));

update cmdb_defattributenameci 
set lg_visibility=0
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='INSTANCIA_BD')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_ID_LICENCIAS'));

update cmdb_defattributenameci 
set lg_mandatory=1
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='INSTANCIA_BD')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_VERSION_BASE'));


-- ACTUALIZACION DE DATOS DEL TIPO DE CI INSTANCIA SOFTWARE BASE
update cmdb_defattributenameci 
set lg_visibility=0,lg_mandatory=0,lg_uniqueinnameci=0
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='INSTANCIA_SW_BASE')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_NOMBRE'));


update cmdb_defattributenameci 
set lg_visibility=0
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='INSTANCIA_SW_BASE')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_DESCRIPCION'));

update cmdb_defattributenameci 
set lg_visibility=0
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='INSTANCIA_SW_BASE')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_NUM_LICENCIAS'));

update cmdb_defattributenameci 
set lg_visibility=0
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='INSTANCIA_SW_BASE')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_ID_LICENCIAS'));

update cmdb_defattributenameci 
set lg_visibility=0
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='INSTANCIA_SW_BASE')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_F_FIN_GARANTIA'));

update cmdb_defattributenameci 
set lg_visibility=0
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='INSTANCIA_SW_BASE')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_F_FIN_MANTENIMIENTO'));

update cmdb_defattributenameci 
set lg_mandatory=1
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='INSTANCIA_SW_BASE')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_TIPO_INSTANCIA_SW_BASE'));

update cmdb_defattributenameci 
set lg_mandatory=1
where nu_fknameci=(select id_nameci from cmdb_nameci where tx_name='INSTANCIA_SW_BASE')
      AND nu_fkdefattribute in (SELECT nu_fkdefattribute FROM cmdb_defattributenameci
                        WHERE nu_fkdefattribute=(select id_defattribute 
                                                from cmdb_defattribute  where tx_code='DEF_ATR_VERSION_BASE'));



-- ACTUALIZACION DE LA RELACION ASIGNADO A DESDE INSTANCIA_BD DEJANDO ACTIVA SOLO LA DE ORGANISMO_PUBLICO
UPDATE CMDB_RELATIONCONSTRAINT
SET LG_VISIBILITY=0
WHERE nu_fknameciorigin=(select id_nameci from cmdb_nameci where tx_name='INSTANCIA_BD')
and nu_fkrelation=(select id_relation from cmdb_relation where tx_code='CODE_ASIGNADO_A')
AND nu_fknameciend not IN (select id_nameci from cmdb_nameci where tx_name like 'ORGANISMO_PUBLICO');

-- ACTUALIZACION DE LA RELACION ASIGNADO A DESDE INSTANCIA_SW_BASE DEJANDO ACTIVA SOLO LA DE ORGANISMO_PUBLICO
UPDATE CMDB_RELATIONCONSTRAINT
SET LG_VISIBILITY=0
WHERE nu_fknameciorigin=(select id_nameci from cmdb_nameci where tx_name='INSTANCIA_SW_BASE')
and nu_fkrelation=(select id_relation from cmdb_relation where tx_code='CODE_ASIGNADO_A')
AND nu_fknameciend not IN (select id_nameci from cmdb_nameci where tx_name like 'ORGANISMO_PUBLICO');


-- ACTUALIZACION DE LA RELACION GESTIONADO POR DESDE INSTANCIA_BD DEJANDO ACTIVA SOLO LA DE ORGANISMO_PUBLICO
UPDATE CMDB_RELATIONCONSTRAINT
SET LG_VISIBILITY=0
WHERE nu_fknameciorigin=(select id_nameci from cmdb_nameci where tx_name='INSTANCIA_BD')
and nu_fkrelation=(select id_relation from cmdb_relation where tx_code='CODE_GESTIONADO_POR')
AND nu_fknameciend not IN (select id_nameci from cmdb_nameci where tx_name like 'ORGANISMO_PUBLICO');

-- ACTUALIZACION DE LA RELACION GESTIONADO POR DESDE INSTANCIA_SW_BASE DEJANDO ACTIVA SOLO LA DE ORGANISMO_PUBLICO
UPDATE CMDB_RELATIONCONSTRAINT
SET LG_VISIBILITY=0
WHERE nu_fknameciorigin=(select id_nameci from cmdb_nameci where tx_name='INSTANCIA_SW_BASE')
and nu_fkrelation=(select id_relation from cmdb_relation where tx_code='CODE_GESTIONADO_POR')
AND nu_fknameciend not IN (select id_nameci from cmdb_nameci where tx_name like 'ORGANISMO_PUBLICO');

commit;

