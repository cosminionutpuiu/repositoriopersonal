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
-- Function: public.get_geojson(text, text, integer)

-- DROP FUNCTION public.get_geojson(text, text, integer);

CREATE OR REPLACE FUNCTION public.get_geojson(tablageo text, campoid_geo text, uniqueid integer)
  RETURNS text AS
$BODY$
DECLARE esquema text = 'datos_municipios';
DECLARE esquematmp text = 'temporales';
DECLARE tablatmp text;
DECLARE geolayer text;
DECLARE camposprop text;
DECLARE indicadores text;
DECLARE result text;
DECLARE sql text;
BEGIN

	--Necesito pasarle la tabla geo, ya que en BD no se guarda la relación, si no en el xml de conf

	IF (uniqueid<0) THEN
	    
		sql := 'SELECT array_to_string(ARRAY(SELECT ''''||c.column_name FROM information_schema.columns As c	WHERE table_name IN ('''||tablageo||''') AND c.column_name NOT IN(''the_geom'',''gid'')),'','')';
		EXECUTE sql INTO camposprop;

		sql := 'SELECT array_to_string(ARRAY(SELECT ''''||column_name FROM (SELECT table_name, column_name, isnumeric(table_schema, table_name, column_name) FROM information_schema.columns WHERE column_name NOT IN(''the_geom'',''gid'')) AS z	WHERE z.table_name ='''||tablageo||''' AND z.isnumeric=true),'','')';
		EXECUTE sql INTO indicadores;

		sql := 'SELECT row_to_json(fc) FROM (SELECT array_to_json(''{'||indicadores||'}''::text[]) AS indicadores,''FeatureCollection'' AS TYPE, array_to_json(array_agg(f)) AS features FROM (SELECT ''Feature'' AS TYPE, st_asgeojson(tabla.the_geom,4,0)::json AS geometry, st_asgeojson(st_centroid(tabla.the_geom),4,0)::json AS centroid, row_to_json((SELECT p FROM (SELECT '||camposprop||' )AS p)) AS properties FROM '||esquema||'.'||tablageo||' AS tabla) AS f) AS fc';
	ELSE
	
		sql := 'SELECT "uniqueID"||''_''||"originalName" FROM temporales."dynamicTables" WHERE "uniqueID"='||uniqueid;
		EXECUTE sql INTO tablatmp;

		sql := 'SELECT "cartographicLayerName" FROM temporales."dynamicSemiologies" WHERE "tableUniqueID"='||uniqueid;
		EXECUTE sql INTO geolayer;
		
		sql := 'SELECT array_to_string(ARRAY(SELECT ''''||c.column_name FROM information_schema.columns As c  WHERE table_name IN ('''||tablageo||''','''||tablatmp||''') AND c.column_name NOT IN(''the_geom'',''gid'',''idelemento'')),'','')';
		EXECUTE sql INTO camposprop;

		sql := 'SELECT array_to_string(ARRAY(SELECT ''''||c.column_name FROM information_schema.columns As c  WHERE table_name ='''||tablatmp||''' AND c.column_name NOT IN(''idelemento'')),'','')';
		EXECUTE sql INTO indicadores;


		sql := 'SELECT row_to_json(fc) FROM (SELECT '''||geolayer||''' AS layer,     array_to_json(''{'||indicadores||'}''::text[]) AS indicadores, ''FeatureCollection'' AS TYPE, array_to_json(array_agg(f)) AS features	FROM (SELECT ''Feature'' AS TYPE, st_asgeojson(tabla.the_geom,4,0)::json AS geometry, st_asgeojson(st_centroid(tabla.the_geom),4,0)::json AS centroid, row_to_json((SELECT p FROM (SELECT '||camposprop||' )AS p)) AS properties FROM '||esquema||'.'||tablageo||' AS tabla INNER JOIN '||esquematmp||'."'||tablatmp ||'" AS tablatemp ON tabla.'||campoid_geo||'=tablatemp.idelemento) AS f) AS fc';
	END IF;

        

	EXECUTE sql INTO result;

 
	RETURN result;
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

create or replace function isnumeric(p_schema in text, p_table in text, p_column in text)
                returns boolean language plpgsql as $$
declare 
  data text;
  b boolean;
begin
  execute 'select '||p_column||' from '||p_schema||'.'||p_table||' LIMIT 1' into data;
  execute 'select ('''||data||''' ~ ''^[0-9]+$'')' into b;
  return b;
end $$;


SELECT * FROM get_geojson('municipios_datos','cod_mun',883949);
SELECT * FROM get_geojson('municipios_datos','cod_mun',-1);
