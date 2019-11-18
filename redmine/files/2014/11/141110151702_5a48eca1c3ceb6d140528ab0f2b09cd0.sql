/**
HAY QUE TENER EN CUENTA QUE LAS PK Y LOS TEXTOS HAY QUE ADAPTARLOS AL ENTORNO
*/




-- CENTROS SIN CI ASOCIADO
SELECT c.id_centre, c.tx_name, c.nu_fkci, org.id_organization, org.tx_name, org.nu_fkci
FROM sdk_centre c inner join sdk_organization org on org.id_organization=c.nu_fkorganization
WHERE c.nu_fkci IS NULL;


-- SE COMPRUEBA QUE EL BOOT INICIAL NO HA CREADO LOS CIS DE LOS CENTROS POR EL NOMBRE QUE TIENEN DADOS (SERVICIOS CENTRALES)
-- EXISTE UNA LIMITACION

SELECT * FROM SDK_centre 
WHERE nu_fkorganization=5000050;


-- SDK_CENTRE MODIFICADOS EN EL CAMPO TX_NAME PONIENDO EL APELLIDO DEL ORGANISMO
--304 SERVICIOS CENTRALES EGMASA
--307 SERVICIOS CENTRALES IEA
--2975 SERVICIOS CENTRALES CERT
--7124 GENERAL
--11122 EASP
--301 CAP
--91	CCUL
--109	CED
--302	CCA
--303	CPRE
--117	CEM
--322	IAAP
--305	IAJ
--321	IAM
--309	PAG
--193	SADESI
--308	IFAPA
--3404	CTAS
--306	AIDEA
--311	SANDETEL
--310	SAE

UPDATE sdk_centre
set tx_name='SERVICIOS CENTRALES EGMASA'
WHERE id_centre=304;

UPDATE sdk_centre
set tx_name='SERVICIOS CENTRALES IEA'
WHERE id_centre=307;

UPDATE sdk_centre
set tx_name='SERVICIOS CENTRALES CERT'
WHERE id_centre=2975;

UPDATE sdk_centre
set tx_name='SERVICIOS CENTRALES GENERAL'
WHERE id_centre=7124;

UPDATE sdk_centre
set tx_name='SERVICIOS CENTRALES EASP'
WHERE id_centre=11122;

UPDATE sdk_centre
set tx_name='SERVICIOS CENTRALES CAP'
WHERE id_centre=301;

UPDATE sdk_centre
set tx_name='SERVICIOS CENTRALES CCUL'
WHERE id_centre=91;

UPDATE sdk_centre
set tx_name='SERVICIOS CENTRALES CED'
WHERE id_centre=109;

UPDATE sdk_centre
set tx_name='SERVICIOS CENTRALES CCA'
WHERE id_centre=302;

UPDATE sdk_centre
set tx_name='SERVICIOS CENTRALES CPRE'
WHERE id_centre=303;

UPDATE sdk_centre
set tx_name='SERVICIOS CENTRALES CEM'
WHERE id_centre=117;

UPDATE sdk_centre
set tx_name='SERVICIOS CENTRALES IAAP'
WHERE id_centre=322;

UPDATE sdk_centre
set tx_name='SERVICIOS CENTRALES IAJ'
WHERE id_centre=305;

UPDATE sdk_centre
set tx_name='SERVICIOS CENTRALES IAM'
WHERE id_centre=321;

UPDATE sdk_centre
set tx_name='SERVICIOS CENTRALES PAG'
WHERE id_centre=309;

UPDATE sdk_centre
set tx_name='SERVICIOS CENTRALES SADESI'
WHERE id_centre=193;

UPDATE sdk_centre
set tx_name='SERVICIOS CENTRALES IFAPA'
WHERE id_centre=308;

UPDATE sdk_centre
set tx_name='SERVICIOS CENTRALES CTAS'
WHERE id_centre=3404;

UPDATE sdk_centre
set tx_name='SERVICIOS CENTRALES AIDEA'
WHERE id_centre=306;

UPDATE sdk_centre
set tx_name='SERVICIOS CENTRALES SANDETEL'
WHERE id_centre=311;

UPDATE sdk_centre
set tx_name='SERVICIOS CENTRALES SAE'
WHERE id_centre=310;

COMMIT;


-- SEDES SIN CI ASOCIADO
SELECT q.id_quarters, q.tx_name, q.nu_fkci, c.id_centre, c.tx_name, c.nu_fkci
FROM sdk_quarters  q inner join sdk_centre c on c.id_centre=q.nu_fkcentre
WHERE q.nu_fkci IS NULL;



--Para las sedes parece que además hace falta:

UPDATE sdk_quarters
set tx_name='D.P. CÓRDOBA '
WHERE id_centre=161;

UPDATE sdk_quarters
set tx_name='DELEGACIÓN PROVINCIAL DE ALMERÍA  DE EMPLEO '
WHERE id_centre=928;

UPDATE sdk_quarters
set tx_name='D.P. SEVILLA '
WHERE id_centre=170;

UPDATE sdk_quarters
set tx_name='D.P. ALMERIA - SEDE PASEO ALMERIA '
WHERE id_centre=3925;

UPDATE sdk_quarters
set tx_name='CENTRO DE PREVENCIÓN DE RIESGOS LABORALES '
WHERE id_centre=980;

UPDATE sdk_quarters
set tx_name='CONSEJERIA DE ECONOMIA INNOVACION CIENCIA Y EMPLEO '
WHERE id_centre=5108;

commit;