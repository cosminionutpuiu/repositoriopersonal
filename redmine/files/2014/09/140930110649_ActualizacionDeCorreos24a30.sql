--1 Se lanza la consulta en el entorno NAOS 3.0 migrado que tenga los datos de usuarios vacíos:
select 'SELECT PRIMERA_COMILLA UPDATE SDK_USER SET TX_EMAIL= PRIMERA_COMILLA ||CHR(39)|| usuario.tx_email ||CHR(39)||PRIMERA_COMILLA WHERE CD_USERID= PRIMERA_COMILLA||CHR(39)|| usuario.cd_userid ||CHR(39)||PRIMERA_COMILLA;PRIMERA_COMILLA FROM SDK.SDK_USER usuario WHERE usuario.cd_userid='||CHR(39)||cd_userid||CHR(39)||';'
from sdk_user where tx_email is null;


--2 El resultado de esta consulta se hace un sustituir PRIMERA_COMILLA por ' y se lanza en NAOS 2.4

--3 El resultado de esta consulta se lanza sobre NAOS 3.0, la cual se encargara de actualizar los usuarios 
--  que tienen el correo vacio por el correo que tengan relleno en la instancia 2.4
