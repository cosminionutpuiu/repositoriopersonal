#!/usr/bin/python
#
# Created new required attributes in Chef nodes when cookcook metadata has changed
# Author: Alfonso de Cala <alfonso.cala@juntadeandalucia.es>

import sys
sys.path.insert(0, '/opt/gecosccui-2.1.10/lib/python2.6/site-packages/')
from chef import *

with ChefAPI('https://localhost:443', '/etc/chef-server/admin.pem', 'admin'):
  for row in Search('node', q='*:*'):
    print row.object.name,
    n=Node(row.object.name)
#    print n.attributes['gecos_ws_mgmt']['software_mgmt']['app_config_res']['support_os'][0]
    try:
      print n.automatic["ohai_gecos"]["pclabel"],
      node_modified=False
# Creating libreoffice config data
      if not n.normal.has_dotted("gecos_ws_mgmt.software_mgmt.appconfig_libreoffice_res"):
          n.normal.set_dotted("gecos_ws_mgmt.software_mgmt.appconfig_libreoffice_res.config_libreoffice",{})
          n.normal.set_dotted("gecos_ws_mgmt.software_mgmt.appconfig_libreoffice_res.support_os",["GECOS V2","Gecos V2 Lite"])
          n.normal.set_dotted("gecos_ws_mgmt.software_mgmt.appconfig_libreoffice_res.job_ids",[])
          n.normal.set_dotted("gecos_ws_mgmt.software_mgmt.appconfig_libreoffice_res.updated_by",{})
          node_modified=True
# Creating firefox config data
      if not n.normal.has_dotted("gecos_ws_mgmt.software_mgmt.appconfig_firefox_res"):
          n.normal.set_dotted("gecos_ws_mgmt.software_mgmt.appconfig_firefox_res.config_firefox",{})
          n.normal.set_dotted("gecos_ws_mgmt.software_mgmt.appconfig_firefox_res.support_os",["GECOS V2","Gecos V2 Lite"])
          n.normal.set_dotted("gecos_ws_mgmt.software_mgmt.appconfig_firefox_res.job_ids",[])
          n.normal.set_dotted("gecos_ws_mgmt.software_mgmt.appconfig_firefox_res.updated_by",{})
          node_modified=True
# Creating thunderbird config data
      if not n.normal.has_dotted("gecos_ws_mgmt.software_mgmt.appconfig_thunderbird_res"):
          n.normal.set_dotted("gecos_ws_mgmt.software_mgmt.appconfig_thunderbird_res.config_thunderbird",{})
          n.normal.set_dotted("gecos_ws_mgmt.software_mgmt.appconfig_thunderbird_res.support_os",["GECOS V2","Gecos V2 Lite"])
          n.normal.set_dotted("gecos_ws_mgmt.software_mgmt.appconfig_thunderbird_res.job_ids",[])
          n.normal.set_dotted("gecos_ws_mgmt.software_mgmt.appconfig_thunderbird_res.updated_by",{})
          node_modified=True
# Creating java config data
      if not n.normal.has_dotted("gecos_ws_mgmt.software_mgmt.appconfig_java_res"):
          n.normal.set_dotted("gecos_ws_mgmt.software_mgmt.appconfig_java_res.config_java",{})
          n.normal.set_dotted("gecos_ws_mgmt.software_mgmt.appconfig_java_res.support_os",["GECOS V2","Gecos V2 Lite"])
          n.normal.set_dotted("gecos_ws_mgmt.software_mgmt.appconfig_java_res.job_ids",[])
          n.normal.set_dotted("gecos_ws_mgmt.software_mgmt.appconfig_java_res.updated_by",{})
          node_modified=True
# Creating package profiles config data
      if not n.normal.has_dotted("gecos_ws_mgmt.software_mgmt.package_profile_res"):
          n.normal.set_dotted("gecos_ws_mgmt.software_mgmt.package_profile_res.package_list",[])
          n.normal.set_dotted("gecos_ws_mgmt.software_mgmt.package_profile_res.support_os",["GECOS V2","Gecos V2 Lite","Ubuntu 14.04.1 LTS"])
          n.normal.set_dotted("gecos_ws_mgmt.software_mgmt.package_profile_res.job_ids",[])
          n.normal.set_dotted("gecos_ws_mgmt.software_mgmt.package_profile_res.updated_by",{})
          node_modified=True
# Creating remote shutdown config data
      if  not n.normal.has_dotted("gecos_ws_mgmt.misc_mgmt.remote_shutdown_res"):
          n.normal.set_dotted("gecos_ws_mgmt.misc_mgmt.remote_shutdown_res.shutdown_mode","")
          n.normal.set_dotted("gecos_ws_mgmt.misc_mgmt.remote_shutdown_res.support_os",["GECOS V2","Gecos V2 Lite"])
          n.normal.set_dotted("gecos_ws_mgmt.misc_mgmt.remote_shutdown_res.job_ids",[])
          n.normal.set_dotted("gecos_ws_mgmt.misc_mgmt.remote_shutdown_res.updated_by",{})
          node_modified=True
# Creating certs config data
      if not n.normal.has_dotted("gecos_ws_mgmt.misc_mgmt.cert_res"):
          n.normal.set_dotted("gecos_ws_mgmt.misc_mgmt.cert_res.java_keystores",[])
          n.normal.set_dotted("gecos_ws_mgmt.misc_mgmt.cert_res.ca_root_certs",[])
          n.normal.set_dotted("gecos_ws_mgmt.misc_mgmt.cert_res.support_os",["GECOS V2","Gecos V2 Lite"])
          n.normal.set_dotted("gecos_ws_mgmt.misc_mgmt.cert_res.job_ids",[])
          node_modified=True
# Creating forticlient vpn config data
      if not n.normal.has_dotted("gecos_ws_mgmt.network_mgmt.forticlientvpn_res"):
          n.normal.set_dotted("gecos_ws_mgmt.network_mgmt.forticlientvpn_res.connections",[])
          n.normal.set_dotted("gecos_ws_mgmt.network_mgmt.forticlientvpn_res.proxyport","")
          n.normal.set_dotted("gecos_ws_mgmt.network_mgmt.forticlientvpn_res.proxyuser","")
          n.normal.set_dotted("gecos_ws_mgmt.network_mgmt.forticlientvpn_res.proxyserver","")
          n.normal.set_dotted("gecos_ws_mgmt.network_mgmt.forticlientvpn_res.proxypasswd","")
          n.normal.set_dotted("gecos_ws_mgmt.network_mgmt.forticlientvpn_res.autostart",False)
          n.normal.set_dotted("gecos_ws_mgmt.network_mgmt.forticlientvpn_res.keepalive",0)
          n.normal.set_dotted("gecos_ws_mgmt.network_mgmt.forticlientvpn_res.support_os",["GECOS V2","Gecos V2 Lite"])
          n.normal.set_dotted("gecos_ws_mgmt.network_mgmt.forticlientvpn_res.job_ids",[])
          node_modified=True
# Creating mobile broadband vpn config data
      if not n.normal.has_dotted("gecos_ws_mgmt.network_mgmt.mobile_broadband_res"):
          n.normal.set_dotted("gecos_ws_mgmt.network_mgmt.mobile_broadband_res.connections",[])
          n.normal.set_dotted("gecos_ws_mgmt.network_mgmt.mobile_broadband_res.support_os",["GECOS V2","Gecos V2 Lite"])
          n.normal.set_dotted("gecos_ws_mgmt.network_mgmt.mobile_broadband_res.job_ids",[])
          node_modified=True
# Creating email client config data
      if not n.normal.has_dotted("gecos_ws_mgmt.users_mgmt.email_client_res"):
          n.normal.set_dotted("gecos_ws_mgmt.users_mgmt.email_client_res.users",{})
          n.normal.set_dotted("gecos_ws_mgmt.users_mgmt.email_client_res.support_os",["GECOS V2","Gecos V2 Lite"])
          n.normal.set_dotted("gecos_ws_mgmt.users_mgmt.email_client_res.job_ids",[])
          node_modified=True
# Creating user alerts config data
      if not n.normal.has_dotted("gecos_ws_mgmt.users_mgmt.user_alerts_res"):
          n.normal.set_dotted("gecos_ws_mgmt.users_mgmt.user_alerts_res.users",{})
          n.normal.set_dotted("gecos_ws_mgmt.users_mgmt.user_alerts_res.support_os",["GECOS V2","Gecos V2 Lite"])
          n.normal.set_dotted("gecos_ws_mgmt.users_mgmt.user_alerts_res.job_ids",[])
          node_modified=True
      if node_modified:
          n.save()
          print "SAVED!"
      else:
          print "Untouched"    
    except KeyError:
      print "Key not found"  
      
      