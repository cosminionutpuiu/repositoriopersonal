#!/bin/bash

# $1 primer parametro de la cadena es el patrón a buscar
# $2 segundo parametro es el valor a sustituir
# $3 tercer parametro es el fichero en el que se realiza la sustitucion
function sustituirUnaOcurrenciaCadenaEnFichero() {
	if [ $1 = "." ] || [ $1 = "\." ]; then
		echo "No puede utilizarse el caracter '.' para buscar al ser un caracter reservado"
		exit
	fi
	sed -i 's#'$1'#'$2'#' $3
}

# $1 primer parametro de la cadena es el patrón a buscar
# $2 segundo parametro es el valor a sustituir
# $3 tercer parametro es el fichero en el que se realiza la sustitucion
function sustituirTodasOcurrenciasCadenaEnFichero(){
	if [ $1 = "." ] || [ $1 = "\." ]; then
		echo "No puede utilizarse el caracter '.' para buscar al ser un caracter reservado"
		exit
	fi
	cat $3 | sed "s#"$1"#"$2"#g" > $3.bk
	rm $3
	mv $3.bk $3
}

function sustituirTodasOcurrenciasArrayCadenasEnFichero(){
	declare -a argAry1=("${!1}")
	declare -a argAry2=("${!2}")
#	echo "primero: ${argAry1[@]}"
#	echo "segundo: ${argAry2[@]}"
	longitud1=${#argAry1[@]}
	longitud2=${#argAry2[@]}
	if [ $longitud1 != $longitud2 ]; then
		echo "No coinciden las longitudes de los arrays pasados como parámetros a 'sustituirTodasOcurrenciasArrayCadenasEnFichero'"
		exit
	fi
	I=0	
	for V in "${argAry1[@]}"; 
	do
		echo "iteracion $I"		
		echo "valor de V: $V"
		echo "otro valor: ${argAry2[$I]}"
		sustituirTodasOcurrenciasCadenaEnFichero $V ${argAry2[$I]} $3
		((I++))
    done
}

# declaramos las cadenas que es necesario buscar en un determinado fichero
declare -a PATRONES_BUSQUEDA=('XXX_CADENABBDD_XXX' 'XXX_UID_ADMINISTRADOR_XXX' 'XXX_PWD_ADMINISTRADOR_XXX' 'XXX_URL_SAD_XXX');
declare -a PATRONES_SUSTITUCION=('jdbd:odbc://10.240.254.258:152/XE' 'usuario.administrador' '38gn389bgn20v' 'https://agenda.juntadeandalucia.es');
# echo "longitud PATRONES_BUSQUEDA: "${#PATRONES_BUSQUEDA[@]}
# echo "longitud PATRONES_SUSTITUCION: "${#PATRONES_SUSTITUCION[@]}

sustituirTodasOcurrenciasArrayCadenasEnFichero PATRONES_BUSQUEDA[@] PATRONES_SUSTITUCION[@] fichero_arrays

