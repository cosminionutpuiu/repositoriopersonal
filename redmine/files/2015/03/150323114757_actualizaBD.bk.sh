#!/bin/bash

# Se define la linea donde se anexa el tar.gz (una más que las lineas del script)
LINEAS=53

# Se define el directorio temporal de trabajo
TMP=/tmp/instalacion.tmp

# Cadenas que se presentaran para que se rellenen e indiquen los valores
declare -a MEN_IMPLANTACION=('Host BD: ' 'Puerto: ' 'Usuario de la BD: ' 'BBDD: ') ;

# Variables que se utilizaran para almacenar los valores, las primeras deben coincidir con CAD_IMPLANTACION
declare -a VAR_IMPLANTACION=('HostBD' 'Puerto' 'USUARIO_BBDD' 'BBDD');

# Ficheros de configuracion
declare -a FIL_IMPLANTACION=( "${TMP}/tematicos_geojson.sql" );


# Se limpia cualquier resto de instalaciones anteriores

rm -rf $TMP

# Se crea el directorio temporal si no existe

mkdir -p $TMP

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


# Se descomprimen los archivos necesarios
echo "Descomprimiendo..."

tail -n+${LINEAS} $0 > ${FIL_IMPLANTACION}
echo "Fichero creado..."

sleep 1
echo "Ejecutando script de BBDD..."
psql -U ${USUARIO_BBDD} -h ${HostBD} -p ${Puerto} -f ${FIL_IMPLANTACION} -d ${BBDD}

echo "Finalizado"

# Se termina el script
exit 0
