# Cookbook Name:: ihs
# Recipe:: attributes/default
#
# Copyright IBM Corp. 2016, 2017
#

#-------------------------------------------------------------------------------
# Installer Configuration
#-------------------------------------------------------------------------------

# <> Software repo that contains binaries. Passed from environment/role.
default['ibm']['sw_repo_root'] = ''

# <> User for secure SW repo
default['ibm']['repo_user'] = ''

# <> Vault password for SW repo user
default['ibm']['repo_password'] = ''

# <> IM repository location
default['ibm']['im_repo'] = node['ibm']['sw_repo_root'] + '/IMRepo'

# <> User for secure IM repo
default['ibm']['im_repo_user'] = ''

# <> Vault password for IM repo user
default['ibm']['im_repo_password'] = ''


#-------------------------------------------------------------------------------
# Installation Options
#-------------------------------------------------------------------------------

# <> Product version to install
# <md>attribute 'ihs/version',
# <md>          :displayname =>  'IHS_Install_Version',
# <md>          :description => 'IHS Installation Version',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['ihs']['version'] = '9.0.0.2' # ~ip_checker

# <> Installation location for IBM HTTP Server
# <md>attribute 'ihs/install_dir',
# <md>          :displayname =>  'IHS_Install_Directory',
# <md>          :description => 'IHS Installation Directory',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '/opt/IBM/HTTPServer',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['install_dir'] = '/opt/IBM/HTTPServer'

# <> Installation mode for IBM HTTP Server
# <md>attribute 'ihs/install_mode',
# <md>          :displayname =>  'IHS_Install_mode',
# <md>          :description => 'IHS Installation Mode',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'nonAdmin',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['install_mode'] = 'nonAdmin'

# <> The filesystem permissions to be set for product directories
# <md>attribute 'ihs/os_perms',
# <md>          :displayname =>  'IHS_File_Permissions',
# <md>          :description => 'IHS File Permissions',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '755',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['os_perms'] = '755'

# <> Configure product to run automatically
# <md>attribute 'ihs/config_os_service',
# <md>          :displayname =>  'IHS_Config_service',
# <md>          :description => 'IHS Server Config Service',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'true',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['config_os_service'] = 'true'

# NOTE: for a managed IHS the OS user settings need to match the WAS user settings.
# <> IHS OS user
# <md>attribute 'ihs/os_users/ihs/name',
# <md>          :displayname =>  'IHS_Server_OS_User',
# <md>          :description => 'IHS Server OS User Name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'ihssrv',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['os_users']['ihs']['name'] = 'ihssrv'

# <> IHS OS user group
# <md>attribute 'ihs/os_users/ihs/gid',
# <md>          :displayname =>  'IHS_Server_OS_User_GROUP',
# <md>          :description => 'IHS Server OS User GROUP Name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'ihsgrp',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['os_users']['ihs']['gid'] = 'ihsgrp'

# <> IHS OS user defined in LDAP
# <md>attribute 'ihs/os_users/ihs/ldap_user',
# <md>          :displayname =>  'IHS_Server_OS_User_LDAP',
# <md>          :description => 'IHS Server OS User LDAP Enabled',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'false',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['os_users']['ihs']['ldap_user'] = 'false'

# <> IHS OS user home directory
# <md>attribute 'ihs/os_users/ihs/home',
# <md>          :displayname =>  'IHS_Server_OS_User_HomeDir',
# <md>          :description => 'IHS Server OS User Home Direcrtory',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '/home/ihssrv',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['os_users']['ihs']['home'] = '/home/ihssrv'

# <> IHS OS user comment
# <md>attribute 'ihs/os_users/ihs/shell',
# <md>          :displayname =>  'IHS_Server_OS_User_Comment',
# <md>          :description => 'IHS Server OS User Comment',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'IBM HTTP Server OS user',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['os_users']['ihs']['comment'] = 'IBM HTTP Server OS user'

# <> IHS OS user shell
# <md>attribute 'ihs/os_users/ihs/shell',
# <md>          :displayname =>  'IHS_Server_OS_User_Shell',
# <md>          :description => 'IHS Server OS User Shell',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '/sbin/nologin',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['os_users']['ihs']['shell'] = '/sbin/nologin'

# <> IHS Features: Can be 32 or 64; not valid for v9 and up
# <md>attribute 'ihs/features/bitness',
# <md>          :displayname =>  'IHS_Server_64_bit',
# <md>          :description => 'IHS Server BIT 64',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '64',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['features']['bitness'] = '64'

#-------------------------------------------------------------------------------
# Product configuration
#-------------------------------------------------------------------------------

# <> Service name for IHS
# <md>attribute 'ihs/service_name',
# <md>          :displayname => 'IHS_Server_ServiceName',
# <md>          :description => 'IHS Server Service Name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'ihssrv',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['service_name'] = 'ihs' + node['ihs']['version'].split('.').first(2).join

# <> Webserver port
# <md>attribute 'ihs/port',
# <md>          :displayname =>  'IHS_Server_Port',
# <md>          :description => 'IHS Server Port Number',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '80',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['ihs']['port'] = '80'

# <> Document root of main server
# <md>attribute 'ihs/document_root',
# <md>          :displayname =>  'IHS_Server_DocRoot',
# <md>          :description => 'IHS Server DocumentRoot',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '/opt/IBM/HTTPServer/htdocs',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['document_root'] = node['ihs']['install_dir'] + '/htdocs'

# <> Server name for webservice
# <md>attribute 'ihs/server_name',
# <md>          :displayname =>  'IHS_Server_Name',
# <md>          :description => 'IHS Server Admin ServerName',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['server_name'] = node['fqdn']

# <> Webserver admin email
# <md>attribute 'ihs/server_admin',
# <md>          :displayname =>  'IHS_Server_Email',
# <md>          :description => 'IHS Server Admin Email Address',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['server_admin'] = 'you@your.address'

#-------------------------------------------------------------------------------
# WAS plugin options
#-------------------------------------------------------------------------------

# <> WAS plugin enable
# <md>attribute 'ihs/plugin/enabled',
# <md>          :displayname =>  'IHS_Plugin_Enabled',
# <md>          :description => 'IHS Plugin Enabled',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'remote',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['plugin']['enabled'] = 'false'

# <> WAS plugin install type - 'remote', 'local_standalone' or 'local_distributed'
# <md>attribute 'ihs/plugin/plugin_install_type',
# <md>          :displayname =>  'IHS_Plugin_Install_type',
# <md>          :description => 'IHS Plugin INstallation Type',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'remote',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['plugin']['plugin_install_type'] = 'remote'

# <> WAS connection: webserver name+
# <md>attribute 'ihs/plugin/was_webserver_name',
# <md>          :displayname =>  'IHS_Plugin_WEBSRV_Hostname',
# <md>          :description => 'IHS Plugin WEBSRV_Hostname',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['plugin']['was_webserver_name'] = node['fqdn']

# <> WAS connection: hostname
# <md>attribute 'ihs/plugin/was_hostname',
# <md>          :displayname =>  'IHS_Plugin_DMGR_Hostanme',
# <md>          :description => 'IHS Plugin DMGR_Hostname',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['plugin']['was_hostname'] = node['hostname']

# <> Tag string identifying the DMGR host
# <md>attribute 'ihs/plugin/dmgr_tag',
# <md>          :displayname =>  'IHS_Plugin_DMGR_TAG',
# <md>          :description => 'IHS Plugin DMGR Tag',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'DMGR',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['plugin']['dmgr_tag'] = 'DMGR'

# <> Installation location for WAS Plugin for IBM HTTP Server
# <md>attribute 'ihs/plugin/install_dir',
# <md>          :displayname =>  'IHS_Plugin_InstallDir',
# <md>          :description => 'IHS Plugin Installation Direcrtory',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '/opt/IBM/WebSphere/Plugins',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['plugin']['install_dir'] = File.dirname(node['ihs']['install_dir']) + '/WebSphere/Plugins'

#-------------------------------------------------------------------------------
# Admin server settings
#-------------------------------------------------------------------------------

# <> Admin server enable
# <md>attribute 'ihs/admin_server/enabled',
# <md>          :displayname =>  'IHS_Admin_Server_Enable',
# <md>          :description => 'IHS Admin Server Enable(true/false)',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'false',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['admin_server']['enabled'] = 'false'

# <> Service name for Admin server
# <md>attribute 'ihs/admin_server/service_name',
# <md>          :displayname =>  'IHS_Admin_Server_Servicename',
# <md>          :description => 'IHS Admin Server ServiceName',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'ihsadm',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['admin_server']['service_name'] = 'ihsadm' + node['ihs']['version'].split('.').first(2).join

# <> Admin server port
# <md>attribute 'ihs/admin_server/port',
# <md>          :displayname =>  'IHS_Admin_Server_port_number',
# <md>          :description => 'IHS Admin Server  Port Number',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '8008',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['admin_server']['port'] = '8008'

# <> Admin server name
# <md>attribute 'ihs/admin_server/server_name',
# <md>          :displayname =>  'IHS_Admin_Server_hostname',
# <md>          :description => 'IHS Admin Server Docuement Hostname',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['admin_server']['server_name'] = node['fqdn']

# <> Document root of admin server
# <md>attribute 'ihs/admin_server/document_root',
# <md>          :displayname =>  'IHS_Admin_Server_DocRoot',
# <md>          :description => 'IHS Admin Server Docuement Root',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '/opt/IBM/HTTPServer/docroot',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['admin_server']['document_root'] = node['ihs']['document_root']

# <> Admin server authorized users
# <md>attribute 'ihs/admin_server/username',
# <md>          :displayname =>  'IHS_Admin_Server_UserName',
# <md>          :description => 'IHS Admin Server userName',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'ihsadmin',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['ihs']['admin_server']['username'] = 'ihsadmin'

# <> Admin server authorized user password (in vault)
# <md>attribute 'ihs/admin_server/password',
# <md>          :displayname =>  'IHS_Admin_Server_Password',
# <md>          :description => 'IHS Admin Server Password',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'true'
default['ihs']['admin_server']['password'] = ''

#-------------------------------------------------------------------------------
# SSL SETTINGS
#-------------------------------------------------------------------------------

# <> Create an SSL vhost and associated certificates
# <md>attribute 'ihs/ssl/enabled',
# <md>          :displayname =>  'IHS_Enable_SSL',
# <md>          :description => 'IHS Enable SSL Port',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'false',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['ssl']['enabled'] = 'false'

# <> Port of SSL vhost
# <md>attribute 'ihs/ssl/port',
# <md>          :displayname =>  'IHS_SSL_Port_Number',
# <md>          :description => 'IHS SSL Port Number',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '443',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['ssl']['port'] = '443'

# <> GSKIT keystore
# <md>attribute 'ihs/ssl/keystore',
# <md>          :displayname =>  'IHS_Keystore_Location',
# <md>          :description => 'IHS Keystore Location',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '/opt/IBM/HTTPServer/conf/key.kdb',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['ssl']['keystore'] = "#{node['ihs']['install_dir']}/conf/key.kdb"

# <> Certificate label
# <md>attribute 'ihs/ssl/cert_label',
# <md>          :displayname =>  'IHS_Keystore_Label_Name',
# <md>          :description => 'IHS Keystore Label Name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['ssl']['cert_label'] = 'selfSigned'

# <> GSKIT password (in vault)
# <md>attribute 'ihs/ssl/keystore_password',
# <md>          :displayname =>  'IHS_Keystore_Password',
# <md>          :description => 'IHS Keystore Password',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'true'
default['ihs']['ssl']['keystore_password'] = ''
