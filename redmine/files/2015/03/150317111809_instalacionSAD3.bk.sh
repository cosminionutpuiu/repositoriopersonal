#!/bin/bash
# NAOS 98866	SAD 2.10.1 - SAD
# Se define la linea donde se anexa el tar.gz (una más que las lineas del script)
LINEAS=148

# Se define el directorio temporal de trabajo
TMP=/tmp/instalacion.tmp
BACKUP=/tmp/backup

# Cadenas que se presentaran para que se rellenen e indiquen los valores
declare -a MEN_IMPLANTACION=('Directorio destino del war (ej: /opt/jboss-as-4.2/server/sad/deploy): ' 'Directorio de despliegue de Funambol: ' 'Path de instalación de Funambol: ' 'Directorio de Funambol: ' 'Directorio de Backup de Usuarios (ver propiedad: sad.backup.directory): ') ;

# Variables que se utilizaran para almacenar los valores, las primeras deben coincidir con CAD_IMPLANTACION
declare -a VAR_IMPLANTACION=('PATH_WAR' 'PATH_DEPLOY_FUNAMBOL' 'PATH_INSTALL_FUNAMBOL' 'DIR_FUNAMBOL' 'BACKUP_USUARIOS');

# Cadenas que se buscaran y sustituiran en los ficheros
#declare -a CAD_IMPLANTACION=('XXX_CONEXION_BBDD_XXX' 'XXX_USUARIO_BBDD_XXX' 'XXX_PASSWORD_XXX' 'XXX_uid_sad_organismo_XXX' 'XXX_SAD_XXX' 'XXX_ORG_XXX' 'XXX_URL_CSA_XXX' 'XXX_URL_SW_CSA_XXX' 'XXX_USU_SW_CSA_XXX' 'XXX_PASS_SW_CSA_XXX' 'XXX_USU_FUNAMBOL_XXX' 'XXX_PASS_FUNAMBOL_XXX' 'XXX_URL_FUNAMBOL_XXX');
declare -a CAD_IMPLANTACION=();

# Ficheros de configuracion
declare -a FIL_IMPLANTACION=("/jboss-web.deployer/server.xml" "/sad-service.xml" "${TMP}/sad-checker-2.10.1-bin/sad-checker-2.10.1/sad-checker.properties");

# Patch a aplicar a los ficheros anteriores
declare -a PAT_IMPLANTACION=(  "${TMP}/patch00" "${TMP}/patch01" "${TMP}/patch02");


# Variables que se utilizaran para almacenar los valores de parte de las variables, las primeras deben coincidir con CAD_IMPLANTACION
#declare -a VAR_TEMP=('CONEX_BBDD' 'USUARIO_BBDD' ' PASSWORD' 'UID_SAD' 'SAD' 'ORG_SAD' 'URL_CSA' 'URL_SW_CSA' 'USU_SW_CSA' 'PASS_SW_CSA' 'USU_FUNAMBOL' 'PASS_FUNAMBOL' 'URL_FUNAMBOL');

# Se limpia cualquier resto de instalaciones anteriores

rm -rf $TMP

# Se crea el directorio temporal si no existe
mkdir -p $TMP
mkdir -p $BACKUP

# Bucle que lee del entorno o pide por consola los valores necesarios
for ((i=0; i<${#VAR_IMPLANTACION[@]}; i++)) do
  bash -c "echo \$${VAR_IMPLANTACION[i]}"> ${TMP}/install.tmp
  ENT=`cat ${TMP}/install.tmp`
  if [ -z "$ENT" ]; then
    read -p "${MEN_IMPLANTACION[i]}" ${VAR_IMPLANTACION[i]}
    export ${VAR_IMPLANTACION[i]}
  fi
  bash -c "echo ${VAR_IMPLANTACION[i]}=\$${VAR_IMPLANTACION[i]}"
done

echo "Instalando patch por si no se encuentra el paquete..."
yum install patch
echo "Realizando copias de seguridad..."
cp ${PATH_WAR}/sad-service.xml ${BACKUP}
cp ${PATH_WAR}/sad-comm.war ${BACKUP}
cp ${PATH_WAR}/sad-dav.war ${BACKUP}
cp ${PATH_WAR}/sad-web.war ${BACKUP}
cp ${PATH_WAR}/sad-web-admin.war ${BACKUP}
cp ${PATH_WAR}/jboss-web.deployer/server.xml ${BACKUP}
cp ${PATH_DEPLOY_FUNAMBOL}/sad-sync-connector.s4j ${BACKUP}
cp ${PATH_DEPLOY_FUNAMBOL}/sad-sync-security.s4j ${BACKUP}
cp ${PATH_INSTALL_FUNAMBOL}/config/Funambol.xml ${BACKUP}
cp ${DIR_FUNAMBOL}/config/sad-sync/sad-sync-connector/mailConfig.xml ${BACKUP}
cp ${DIR_FUNAMBOL}/config/sad-sync/sad-sync-connector/springContextConfig.xml ${BACKUP}
cp ${DIR_FUNAMBOL}/config/sad-sync/sad-sync-security/LDAPConfig.xml ${BACKUP}
cp ${DIR_FUNAMBOL}/config/sad-sync/sad-sync-security/springContextConfig.xml ${BACKUP}
cp -r ${BACKUP_USUARIOS}/ ${BACKUP}
#cp ${PATH_WAR}/sad-web-admin/WEB-INF/classes/context/sad-context-batch.xml ${BACKUP}
cp /opt/jboss/server/sad/tmp/deploy/*sad-web-admin*/WEB-INF/classes/context/sad-context-batch.xml ${BACKUP}
cp /opt/jboss/server/sad/tmp/deploy/*sad-web-admin*/WEB-INF/jboss-web.xml ${BACKUP}
cp /opt/jboss/server/sad/tmp/deploy/*sad-web*/WEB-INF/jboss-web.xml ${BACKUP}
cp /opt/jboss/server/sad/tmp/deploy/*sad-dav*/WEB-INF/jboss-web.xml ${BACKUP}
cp /opt/jboss/server/sad/tmp/deploy/*sad-comm*/WEB-INF/jboss-web.xml ${BACKUP}

# Se descomprimen los archivos necesarios
echo "Descomprimiendo..."
tail -n+${LINEAS} $0 | tar zxv --overwrite -C ${TMP}
echo "Fichero creado..."
sleep 2

echo "Descomprimiendo sad-checker y ayuda..."
cd ${TMP}
tar zxf ${TMP}/sad-checker-2.10.1-bin.tar.gz
tar zxf ${TMP}/agata-sad-doc.tgz -C /var/www/html

  cd ${TMP}
# continuamos adelante
#  echo "Requisitos previos OK, seguimos con la instalación..."
  
  mkdir -p ${TMP}/war
  unzip ${TMP}/sad-web-admin.war -d ${TMP}/war/ >/dev/null
 # cp ${PATH_WAR}/sad-web-admin/WEB-INF/classes/context/sad-context-batch.xml ${TMP}/war/
  cp -R /opt/jboss/server/sad/tmp/deploy/*sad-web-admin*/WEB-INF/classes/context/sad-context-batch.xml ${TMP}/war/WEB-INF/classes/context/sad-context-batch.xml
  mv ${TMP}/sad-web-admin.war ${TMP}/sad-web-admin.war.bk
 # /usr/java/jdk1.5.0_22/jre/bin/jar cvf ${TMP}/sad-web-admin.war ${TMP}/war/META-INF/MANIFEST.MF -C ${TMP}/war/ .
  cd ${TMP}/war/
  zip -r ${TMP}/sad-web-admin.war *
  cd ${TMP}
  cp sad-comm.war ${PATH_WAR}
  cp sad-dav.war ${PATH_WAR}
  cp sad-web.war ${PATH_WAR}
  cp sad-web-admin.war ${PATH_WAR}
  cp sad-sync-connector.s4j ${PATH_DEPLOY_FUNAMBOL}
  cp sad-sync-security.s4j ${PATH_DEPLOY_FUNAMBOL}

  echo "Indicar en todos los casos que NO se recreen las tablas..."
  cd ${PATH_INSTALL_FUNAMBOL}/
  /opt/Funambol/bin/install-modules
  cd ${TMP}

# Restaurando los ficheros de configuracion de los backups.
  cp ${BACKUP}/mailConfig.xml ${DIR_FUNAMBOL}/config/sad-sync/sad-sync-connector/mailConfig.xml
  cp ${BACKUP}/springContextConfig.xml ${DIR_FUNAMBOL}/config/sad-sync/sad-sync-connector/springContextConfig.xml 
  cp ${BACKUP}/LDAPConfig.xml ${DIR_FUNAMBOL}/config/sad-sync/sad-sync-security/LDAPConfig.xml
  cp ${BACKUP}/springContextConfig.xml ${DIR_FUNAMBOL}/config/sad-sync/sad-sync-security/springContextConfig.xml
  FIL_IMPLANTACION[0]=${PATH_WAR}${FIL_IMPLANTACION[0]}
  FIL_IMPLANTACION[1]=${PATH_WAR}${FIL_IMPLANTACION[1]}
# Se sustituyen los valores necesarios
  for ((i=0; i<${#PAT_IMPLANTACION[@]}; i++)) do
    for ((j=0; j<${#CAD_IMPLANTACION[@]}; j++)) do
      bash -c "echo \$${VAR_IMPLANTACION[j]}"| sed 's/\//\\\//g' > ${TMP}/install.tmp
      ENT=`cat ${TMP}/install.tmp`
      cat ${PAT_IMPLANTACION[i]} | sed "s/${CAD_IMPLANTACION[j]}/${ENT}/g" > ${PAT_IMPLANTACION[i]}.tmp
      cp ${PAT_IMPLANTACION[i]}.tmp ${PAT_IMPLANTACION[i]}
    done
    patch ${FIL_IMPLANTACION[i]} ${PAT_IMPLANTACION[i]}
  done
  echo "Bucle finalizado..."
  
  
# Se lanzan los comandos necesarios
#  cp ${TMP}/sad-service.xml ${PATH_WAR}/sad-service.xml
  cp ${TMP}/sad-comm.war ${PATH_WAR}/sad-comm.war
  cp ${TMP}/sad-dav.war ${PATH_WAR}/sad-dav.war
  cp ${TMP}/sad-web.war ${PATH_WAR}/sad-web.war
  cp ${TMP}/sad-web-admin.war ${PATH_WAR}/sad-web-admin.war
  chown jboss. /opt/jboss/server/sad/deploy/*
  echo "Reiniciando Funambol..."
  /etc/init.d/Funambol restart
  echo "Reiniciando jboss..."
  /etc/init.d/jboss stop
  sleep 5
  /etc/init.d/jboss start
  sleep 5
  cd ${TMP}

echo "Finalizado."
# Se termina el script
exit 0
