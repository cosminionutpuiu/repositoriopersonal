# $1 ruta al WAR que hay que descomprimir (ejemplo: /path/to/WAR/nombrePaquete.war)
# $2 directorio en el que se descomprimirá el WAR, el directorio se borrará si existe y se creará (ejemplo: /path/to/unpackaged/WAR)
function unpackageWAR() {
  if [ -d $2 ];
  then
    rm -rf $2
  fi
  mkdir $2;
  unzip $1 -d $2 >/dev/null
}



# $1 directorio que hay que comprimir en formato WAR (ejemplo: /path/to/unpackaged/WAR)
# $2 path y nombre del fichero WAR que se generará. (ejemplo: /path/to/WAR/nombrePaquete.war)
function packageWAR() {
  pushd $1
  zip -r $2 ./* >/dev/null
  popd
  mv $1/$2 ./
}


