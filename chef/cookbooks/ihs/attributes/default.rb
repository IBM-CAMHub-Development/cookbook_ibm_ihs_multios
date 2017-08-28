# Cookbook Name:: ihs
# Recipe:: attributes/default
#
# Copyright IBM Corp. 2016, 2017
#

#-------------------------------------------------------------------------------
# Installer Configuration
#-------------------------------------------------------------------------------

# <> Software repo that contains binaries. Passed from environment/role.
default['ibm']['sw_repo'] = ''

# <> User for secure SW repo
default['ibm']['sw_repo_user'] = ''

# <> Vault password for SW repo user
default['ibm']['sw_repo_password'] = ''

# <> IM repository location
default['ibm']['im_repo'] = node['ibm']['sw_repo'] + '/IMRepo'

# <> User for secure IM repo
default['ibm']['im_repo_user'] = ''

# <> Vault password for IM repo user
default['ibm']['im_repo_password'] = ''


#-------------------------------------------------------------------------------
# Installation Options
#-------------------------------------------------------------------------------

# <> Product version to install
# <md>attribute 'ihs/version',
# <md>          :displayname =>  'IHS install version',
# <md>          :description => 'The version of IHS to install.',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['ihs']['version'] = '9.0.0.2' # ~ip_checker

# <> Installation location for IBM HTTP Server
# <md>attribute 'ihs/install_dir',
# <md>          :displayname =>  'IHS installation directory',
# <md>          :description => 'The directory to install IBM HTTP Server.',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '/opt/IBM/HTTPServer',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['ihs']['install_dir'] = '/opt/IBM/HTTPServer'

# <> Installation mode for IBM HTTP Server
# <md>attribute 'ihs/install_mode',
# <md>          :displayname =>  'IHS installation mode',
# <md>          :description => 'The mode of installation for IBM HTTP Server.',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'nonAdmin',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['ihs']['install_mode'] = 'nonAdmin'

# <> The filesystem permissions to be set for product directories
# <md>attribute 'ihs/os_perms',
# <md>          :displayname =>  'IHS file permissions',
# <md>          :description => 'Operating System permissions on IBM HTTP Server files.',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '755',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['os_perms'] = '755'

# <> Configure product to run automatically
# <md>attribute 'ihs/config_os_service',
# <md>          :displayname =>  'IHS config service',
# <md>          :description => 'Specifies whether to configure IBM HTTP Server as a service.',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'true',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['config_os_service'] = 'true'

# NOTE: for a managed IHS the OS user settings need to match the WAS user settings.
# <> IHS OS user
# <md>attribute 'ihs/os_users/ihs/name',
# <md>          :displayname =>  'IHS username',
# <md>          :description => 'The username for IBM HTTP Server',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'ihssrv',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['ihs']['os_users']['ihs']['name'] = 'ihssrv'

# <> IHS OS user group
# <md>attribute 'ihs/os_users/ihs/gid',
# <md>          :displayname =>  'IHS user group name',
# <md>          :description => 'The group name for the IBM HTTP Server user.',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'ihsgrp',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['ihs']['os_users']['ihs']['gid'] = 'ihsgrp'

# <> IHS OS user defined in LDAP
# <md>attribute 'ihs/os_users/ihs/ldap_user',
# <md>          :displayname =>  'IHS user LDAP',
# <md>          :description => 'Specifies if the IHS user is in LDAP.',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'false',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['ihs']['os_users']['ihs']['ldap_user'] = 'false'

# <> IHS OS user home directory
# <md>attribute 'ihs/os_users/ihs/home',
# <md>          :displayname =>  'IHS user home directory',
# <md>          :description => 'The IHS user home directory.',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'default',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['ihs']['os_users']['ihs']['home'] = 'default'

# <> IHS OS user comment
# <md>attribute 'ihs/os_users/ihs/shell',
# <md>          :displayname =>  'IHS OS user comment',
# <md>          :description => 'A comment associated with the IBM HTTP Server.',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'IBM HTTP Server OS user',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['ihs']['os_users']['ihs']['comment'] = 'IBM HTTP Server OS user'

# <> IHS OS user shell
# <md>attribute 'ihs/os_users/ihs/shell',
# <md>          :displayname =>  'IHS OS user shell',
# <md>          :description => 'Location of the IBM HTTP Server operating system user shell.',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '/sbin/nologin',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['ihs']['os_users']['ihs']['shell'] = '/sbin/nologin'

# <> IHS Features: Can be 32 or 64; not valid for v9 and up
# <md>attribute 'ihs/features/bitness',
# <md>          :displayname =>  'IHS 64 bit',
# <md>          :description => 'Indicate whether IBM HTTP Server is 64 bit.',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '64',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['features']['bitness'] = '64'

# <> IHS v9 Java version
# <md>attribute 'ihs/java/version',
# <md>          :displayname =>  'IHS v9 Java version',
# <md>          :description => 'The Java version to be used with IBM HTTP Server version 9.',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '8.0.4.1',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['ihs']['java']['version'] = '8.0.3.22'

# <> IHS v85 Java version: starting with IHS v8.5.5.11
# <md>attribute 'ihs/java/legacy',
# <md>          :displayname =>  'IHS v855 Java version',
# <md>          :description => 'The Java version to be used with IBM HTTP Server version 8.5.5',
# <md>          :type => 'string',
# <md>          :choice => [ 'java6', 'java8' ],
# <md>          :required => 'recommended',
# <md>          :default => 'java8',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['ihs']['java']['legacy'] = 'java8'

#-------------------------------------------------------------------------------
# Product configuration
#-------------------------------------------------------------------------------

# <> Service name for IHS
# <md>attribute 'ihs/service_name',
# <md>          :displayname => 'IHS service name',
# <md>          :description => 'IHS service name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'ihssrv',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['service_name'] = 'ihs' + node['ihs']['version'].split('.').first(2).join

# <> Webserver port
# <md>attribute 'ihs/port',
# <md>          :displayname =>  'IHS port',
# <md>          :description => 'The IBM HTTP Server default port for HTTP requests.',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '80',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['ihs']['port'] = '80'

# <> Document root of main server
# <md>attribute 'ihs/document_root',
# <md>          :displayname =>  'IHS document root',
# <md>          :description => 'Designated directory for holding web pages in IBM HTTP Server.',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '/opt/IBM/HTTPServer/htdocs',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['document_root'] = node['ihs']['install_dir'] + '/htdocs'

# <> Server name for webservice
# <md>attribute 'ihs/server_name',
# <md>          :displayname =>  'IHS server name',
# <md>          :description => 'Fully qualified name of the server.',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['server_name'] = node['fqdn']

# <> Webserver admin email
# <md>attribute 'ihs/server_admin',
# <md>          :displayname =>  'IHS admin email',
# <md>          :description => 'The email address of the server admin for IBM HTTP Server.',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['server_admin'] = 'you@your.address'

#-------------------------------------------------------------------------------
# WAS plugin options
#-------------------------------------------------------------------------------

# <> WAS plugin enable
# <md>attribute 'ihs/plugin/enabled',
# <md>          :displayname =>  'IHS plugin enabled',
# <md>          :description => 'IHS Plugin Enabled',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'remote',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['plugin']['enabled'] = 'false'

# <> WAS plugin install type - 'remote', 'local_standalone' or 'local_distributed'
# <md>attribute 'ihs/plugin/plugin_install_type',
# <md>          :displayname =>  'IHS plugin installation type',
# <md>          :description => 'IHS Plugin Installation Type',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'remote',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['plugin']['plugin_install_type'] = 'remote'

# <> WAS connection: webserver name
# <md>attribute 'ihs/plugin/was_webserver_name',
# <md>          :displayname =>  'IHS plugin WEBSRV hostname',
# <md>          :description => 'IHS Plugin WEBSRV_Hostname',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'webserver1',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['ihs']['plugin']['was_webserver_name'] = node['fqdn']

# <> WAS connection: hostname
# <md>attribute 'ihs/plugin/was_hostname',
# <md>          :displayname =>  'IHS plugin DMGR hostanme',
# <md>          :description => 'IHS Plugin DMGR Hostname',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['plugin']['was_hostname'] = node['hostname']

# <> Tag string identifying the DMGR host
# <md>attribute 'ihs/plugin/dmgr_tag',
# <md>          :displayname =>  'IHS plugin DMGR tag',
# <md>          :description => 'Tag string identifying the DMGR host.',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'DMGR',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['plugin']['dmgr_tag'] = 'DMGR'

# <> Installation location for WAS Plugin for IBM HTTP Server
# <md>attribute 'ihs/plugin/install_dir',
# <md>          :displayname =>  'IHS plugin installation directory',
# <md>          :description => 'IHS Plugin Installation Direcrtory',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '/opt/IBM/WebSphere/Plugins',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['ihs']['plugin']['install_dir'] = File.dirname(node['ihs']['install_dir']) + '/WebSphere/Plugins'

#-------------------------------------------------------------------------------
# Admin server settings
#-------------------------------------------------------------------------------

# <> Admin server enable
# <md>attribute 'ihs/admin_server/enabled',
# <md>          :displayname =>  'IHS admin server enabled',
# <md>          :description => 'IHS Admin Server Enable(true/false)',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'false',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['admin_server']['enabled'] = 'false'

# <> Service name for Admin server
# <md>attribute 'ihs/admin_server/service_name',
# <md>          :displayname =>  'IHS admin server service name',
# <md>          :description => 'IHS Admin Server Service Name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'ihsadm',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['admin_server']['service_name'] = 'ihsadm' + node['ihs']['version'].split('.').first(2).join

# <> Admin server port
# <md>attribute 'ihs/admin_server/port',
# <md>          :displayname =>  'IHS admin server port',
# <md>          :description => 'IHS Admin Server Port Number',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '8008',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['ihs']['admin_server']['port'] = '8008'

# <> Admin server name
# <md>attribute 'ihs/admin_server/server_name',
# <md>          :displayname =>  'IHS admin server hostname',
# <md>          :description => 'IHS Admin Server fully qualified hostname.',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['admin_server']['server_name'] = node['fqdn']

# <> Document root of admin server
# <md>attribute 'ihs/admin_server/document_root',
# <md>          :displayname =>  'IHS admin server docuement root',
# <md>          :description => 'IHS Admin Server Docuement Root',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '/opt/IBM/HTTPServer/docroot',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['admin_server']['document_root'] = node['ihs']['document_root']

# <> Admin server authorized users
# <md>attribute 'ihs/admin_server/username',
# <md>          :displayname =>  'IHS admin server username',
# <md>          :description => 'IHS Admin Server username',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'ihsadmin',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['ihs']['admin_server']['username'] = 'ihsadmin'

# <> Admin server authorized user password (in vault)
# <md>attribute 'ihs/admin_server/password',
# <md>          :displayname =>  'IHS admin server password',
# <md>          :description => 'IHS Admin Server Password',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'true'
default['ihs']['admin_server']['password'] = ''

#-------------------------------------------------------------------------------
# SSL SETTINGS
#-------------------------------------------------------------------------------

# <> Create an SSL vhost and associated certificates
# <md>attribute 'ihs/ssl/enabled',
# <md>          :displayname =>  'IHS enable SSL',
# <md>          :description => 'IHS Enable SSL Port',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'false',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['ssl']['enabled'] = 'false'

# <> Port of SSL vhost
# <md>attribute 'ihs/ssl/port',
# <md>          :displayname =>  'IHS secure port',
# <md>          :description => 'IHS SSL Port Number',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '443',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['ssl']['port'] = '443'

# <> GSKIT keystore
# <md>attribute 'ihs/ssl/keystore',
# <md>          :displayname =>  'IHS keystore location',
# <md>          :description => 'IHS Keystore Location',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '/opt/IBM/HTTPServer/conf/key.kdb',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['ssl']['keystore'] = "#{node['ihs']['install_dir']}/conf/key.kdb"

# <> Certificate label
# <md>attribute 'ihs/ssl/cert_label',
# <md>          :displayname =>  'IHS keystore label name',
# <md>          :description => 'IHS Keystore Label Name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['ihs']['ssl']['cert_label'] = 'selfSigned'

# <> GSKIT password (in vault)
# <md>attribute 'ihs/ssl/keystore_password',
# <md>          :displayname =>  'IHS keystore password',
# <md>          :description => 'IHS Keystore Password',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'true'
default['ihs']['ssl']['keystore_password'] = ''
