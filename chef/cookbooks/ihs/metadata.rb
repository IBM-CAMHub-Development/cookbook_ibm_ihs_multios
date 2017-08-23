name             'ihs'
maintainer       'IBM Corp'
maintainer_email ''
license 'Copyright IBM Corp. 2012, 2017'
description      'Installs/Configures IBM HTTP server'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.37'
depends          'ibm_cloud_utils'
depends          'im'
description <<-EOH
## DESCRIPTION
This cookbook installs and configures IBM HTTP Server.

## Versions
* IBM IHS V8.5.x, IBM IHS v9.0.x

## Platforms Support
* RHEL 6.5+
* RHEL 7.1+
* Ubuntu Server 14.04+

## Use Cases
* IHS installation via IM LWRP, admin mode
* IHS installation via IM LWRP, nonAdmin mode

## Platform Pre-Requisites
* Linux YUM Repository - An onsite linux YUM Repsoitory is required.

## IM Package Repository
IM_REPO -> Stored in the ['ibm']['im_repo'] attribute.
EOH



supports "RHEL6", ">= 6.5"
supports "RHEL7"
supports "ubuntu", ">= 14.04"



attribute 'ihs/admin_server/document_root',
          :default => '/opt/IBM/HTTPServer/docroot',
          :description => 'IHS Admin Server Docuement Root',
          :displayname => 'IHS_Admin_Server_DocRoot',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/admin_server/enabled',
          :default => 'false',
          :description => 'IHS Admin Server Enable(true/false)',
          :displayname => 'IHS_Admin_Server_Enable',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/admin_server/password',
          :default => '',
          :description => 'IHS Admin Server Password',
          :displayname => 'IHS_Admin_Server_Password',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'true',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/admin_server/port',
          :default => '8008',
          :description => 'IHS Admin Server  Port Number',
          :displayname => 'IHS_Admin_Server_port_number',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/admin_server/server_name',
          :default => '',
          :description => 'IHS Admin Server Docuement Hostname',
          :displayname => 'IHS_Admin_Server_hostname',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/admin_server/service_name',
          :default => 'ihsadm',
          :description => 'IHS Admin Server ServiceName',
          :displayname => 'IHS_Admin_Server_Servicename',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/admin_server/username',
          :default => 'ihsadmin',
          :description => 'IHS Admin Server userName',
          :displayname => 'IHS_Admin_Server_UserName',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/config_os_service',
          :default => 'true',
          :description => 'IHS Server Config Service',
          :displayname => 'IHS_Config_service',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/document_root',
          :default => '/opt/IBM/HTTPServer/htdocs',
          :description => 'IHS Server DocumentRoot',
          :displayname => 'IHS_Server_DocRoot',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/features/bitness',
          :default => '64',
          :description => 'IHS Server BIT 64',
          :displayname => 'IHS_Server_64_bit',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/install_dir',
          :default => '/opt/IBM/HTTPServer',
          :description => 'IHS Installation Directory',
          :displayname => 'IHS_Install_Directory',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/install_mode',
          :default => 'nonAdmin',
          :description => 'IHS Installation Mode',
          :displayname => 'IHS_Install_mode',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/java/legacy',
          :choice => ['java6', 'java8'],
          :default => 'java8',
          :description => 'IHS v85 Java Version',
          :displayname => 'IHS v85 Java Version',
          :options => ['java6', 'java8'],
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/java/version',
          :default => '8.0.4.1',
          :description => 'IHS v9 Java version',
          :displayname => 'IHS v9 Java version',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/os_perms',
          :default => '755',
          :description => 'IHS File Permissions',
          :displayname => 'IHS_File_Permissions',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/os_users/ihs/gid',
          :default => 'ihsgrp',
          :description => 'IHS Server OS User GROUP Name',
          :displayname => 'IHS_Server_OS_User_GROUP',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/os_users/ihs/home',
          :default => 'default',
          :description => 'IHS Server OS User Home Directory',
          :displayname => 'IHS_Server_OS_User_HomeDir',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/os_users/ihs/ldap_user',
          :default => 'false',
          :description => 'IHS Server OS User is defined in LDAP',
          :displayname => 'IHS_Server_OS_User_LDAP',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/os_users/ihs/name',
          :default => 'ihssrv',
          :description => 'IHS Server OS User Name',
          :displayname => 'IHS_Server_OS_User',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/os_users/ihs/shell',
          :default => '/sbin/nologin',
          :description => 'IHS Server OS User Shell',
          :displayname => 'IHS_Server_OS_User_Shell',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/plugin/dmgr_tag',
          :default => 'DMGR',
          :description => 'IHS Plugin DMGR Tag',
          :displayname => 'IHS_Plugin_DMGR_TAG',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/plugin/enabled',
          :default => 'remote',
          :description => 'IHS Plugin Enabled',
          :displayname => 'IHS_Plugin_Enabled',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/plugin/install_dir',
          :default => '/opt/IBM/WebSphere/Plugins',
          :description => 'IHS Plugin Installation Direcrtory',
          :displayname => 'IHS_Plugin_InstallDir',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/plugin/plugin_install_type',
          :default => 'remote',
          :description => 'IHS Plugin INstallation Type',
          :displayname => 'IHS_Plugin_Install_type',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/plugin/was_hostname',
          :default => '',
          :description => 'IHS Plugin DMGR_Hostname',
          :displayname => 'IHS_Plugin_DMGR_Hostanme',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/plugin/was_webserver_name',
          :default => 'webserver1',
          :description => 'IHS Plugin WEBSRV_Hostname',
          :displayname => 'IHS_Plugin_WEBSRV_Hostname',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/port',
          :default => '80',
          :description => 'IHS Server Port Number',
          :displayname => 'IHS_Server_Port',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/server_admin',
          :default => '',
          :description => 'IHS Server Admin Email Address',
          :displayname => 'IHS_Server_Email',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/server_name',
          :default => '',
          :description => 'IHS Server Admin ServerName',
          :displayname => 'IHS_Server_Name',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/service_name',
          :default => 'ihssrv',
          :description => 'IHS Server Service Name',
          :displayname => 'IHS_Server_ServiceName',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/ssl/cert_label',
          :default => '',
          :description => 'IHS Keystore Label Name',
          :displayname => 'IHS_Keystore_Label_Name',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/ssl/enabled',
          :default => 'false',
          :description => 'IHS Enable SSL Port',
          :displayname => 'IHS_Enable_SSL',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/ssl/keystore',
          :default => '/opt/IBM/HTTPServer/conf/key.kdb',
          :description => 'IHS Keystore Location',
          :displayname => 'IHS_Keystore_Location',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/ssl/keystore_password',
          :default => '',
          :description => 'IHS Keystore Password',
          :displayname => 'IHS_Keystore_Password',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'true',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/ssl/port',
          :default => '443',
          :description => 'IHS SSL Port Number',
          :displayname => 'IHS_SSL_Port_Number',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'ihs/version',
          :default => '',
          :description => 'IHS Installation Version',
          :displayname => 'IHS_Install_Version',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
recipe 'ihs::cleanup.rb', '
Cleanup recipe (cleanup.rb)
Perform post-install cleanup
'
recipe 'ihs::config_admin_conf.rb', '
Configure admin server recipe (config_admin_conf.rb)
Create admin.conf and service script for the admin server
'
recipe 'ihs::config_httpd_conf.rb', '
Main server configuration recipe (config_httpd_conf.rb)
Configure main server and service file
'
recipe 'ihs::config_ssl_selfsigned.rb', '
SSL configuration recipe (config_ssl_selfsigned.rb)
Configure a SSL vhost and associated self-signed certificates
'
recipe 'ihs::config_wasplugin.rb', '
WAS plugin configuration recipe (config_wasplugin.rb)
Configure the WAS plugin
'
recipe 'ihs::default.rb', '
Default recipe (default.rb)
Perform minimal product installation
'
recipe 'ihs::gather_evidence.rb', '
Gather evidence recipe (gather_evidence.rb)
Gather evidence that installation was successful
'
recipe 'ihs::install.rb', '
Installation recipe (install.rb)
Perform installation of the main asset
'
recipe 'ihs::prereq.rb', '
Prerequisites recipe (prereq.rb)
Perform prerequisite actions
'
recipe 'ihs::prereq_check.rb', '
Prerequisites recipe (prereq_check.rb)
Verify required prerequisites, validate input
'
recipe 'ihs::service_admin.rb', '
Configure admin server recipe (service_admin.rb)
Configure and manage admin server service
'
recipe 'ihs::service_httpd.rb', '
Configure web server recipe (service_httpd.rb)
Configure and manage web service
'
