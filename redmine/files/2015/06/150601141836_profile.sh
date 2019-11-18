declare -a PATRONES_SUSTITUCION=('/var/backups/sad/config' '/var/backups/sad' '0' '24' '5' 'jdbc:oracle:thin:@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=10.240.202.30)(PORT=1521))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=DESICOP))))' 'sad-comm' 'sad-dav' 'sad-web-admin' 'sad-web' '' '' '' '' 'agatav2' 'csa-ws' 'http://10.240.202.23/soap/user_management/' 'http://10.240.202.23' '123456' 'admin' 'FUNAMBOL_OWNER' 'FUNAMBOL_OWNER' 'jdbc:oracle:thin:@(DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)(HOST = 10.240.202.30)(PORT = 1521))(CONNECT_DATA = (SERVER = DEDICATED)(SERVICE_NAME = DESICOP))))' 'http://10.240.202.23:8180/funambol/services/admin' '' '' '' '' '' '' '' '' 'o=juntadeandalucia,c=es' 'dameeldni' 'uid=consultaldap.agata,o=cice,o=empleados,o=juntadeandalucia,c=es' 'ldap://ldap23.juntadeandalucia.es:389' 'o=empleados' '/opt/jboss/server/default/log' 'javier.ruiz.hidalgo.ext@juntadeandalucia.es' 'true' 'SAD_WEB' 'SAD_WEB' 'https://10.240.202.23/soap/proxy/' 'http://10.240.202.23:8080/sad-web/' 'http://agenda-cice.junta-andalucia.es/doc' 'sad.poll.url' 'sac-cci-test' '10.240.202.110' '25' '' '' 'javier.ruiz.hidalgo.ext@juntadeandalucia.es' '/etc/sad/httpstruststore.jks' '123456' 'sad' '123456' 'https://de12.sevilla.sgi.es:8082/sts-web/STSManagerService' '/etc/sad/truststore.jks' '123456' 'sts' 'true');

#declare -a PATRONES_SUSTITUCION=('sad.backup.config.directory' 'sad.backup.directory' 'sad.backup.executionHour' 'sad.backup.interval' 'sad.backup.rotation' 
#'sad.hibernate.connection.url' 'sad.context.sad-comm' 'sad.context.sad-dav' 'sad.context.sad-web-admin' 'sad.context.sad-web' 'csa.ws.admin.user.proxyPass' 
#'csa.ws.admin.user.proxyPort' 'csa.ws.admin.user.proxy' 'csa.ws.admin.user.proxyUser' 'csa.ws.admin.user.password' 'csa.ws.admin.user.username' 
#'csa.ws.admin.user.url' 'csa.base.url' 'funambol.admin.password' 'funambol.admin.user' 'funambol.db.pass' 'funambol.db.user' 'funambol.db.url' 
#'funambol.ws.admin.url' 'guia.ws.password' 'guia.ws.proxyPass' 'guia.ws.proxyPort' 'guia.ws.proxyUser' 'guia.ws.proxy' 'guia.ws.repoLocation' 'guia.ws.username'
#'guia.ws.url' 'ldap.baseDn' 'ldap.bindPw' 'ldap.bindDn' 'ldap.url' 'ldap.search.userDn' 'sad.log.directory' 'sad.notification.sender' 'sad.sac.enabled' 
#'sad.hibernate.connection.password' 'sad.hibernate.connection.username' 'sad.comm.subscription.client.ws.url' 'sad.gui.url' 'sad.support.help.url' 
#'sad.poll.url' 'sad.uid' 'smtp.host' 'smtp.port' 'smtp.password' 'smtp.user' 'sad.support.email' 'sts.httpsTruststore' 'sts.httpsTruststorePassword' 
#'sts.stsClientUsername' 'sts.stsClientPassword' 'sts.stsClientEndpoint' 'sts.stsTruststore' 'sts.stsTruststorePassword' 'sts.stsTruststoreAlias' 
#'sts.remoteValidation');

JBOSS_DIR="/opt/jboss"
FUNAMBOL_DIR="/opt/funambol"
BACKUP_DIR="/opt/backups/sad_2.11.1.0_auto3"
DOC_DIR="/var/www/html"


