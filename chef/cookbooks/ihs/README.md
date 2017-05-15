Ihs Cookbook
============

## DESCRIPTION
This cookbook installs and configures IBM HTTP Server.

## Versions
* IBM IHS V8.5.x, IBM IHS v9.0.x

## Platforms Support
* RHEL 6.5+
* RHEL 7.1+

## Use Cases
* IHS installation via IM LWRP, admin mode
* IHS installation via IM LWRP, nonAdmin mode

## Platform Pre-Requisites
* Linux YUM Repository - An onsite linux YUM Repsoitory is required.

## IM Package Repository
IM_REPO -> Stored in the ['ibm']['im_repo'] attribute.


Requirements
------------

### Platform:

* Rhel6 (>= 6.5)
* Rhel7

### Cookbooks:

* ibm_cloud_utils
* im

Attributes
----------

<table>
  <tr>
    <td>Attribute</td>
    <td>Description</td>
    <td>Default</td>
  </tr>
  <tr>
    <td><code>node['ihs']['admin_server']['document_root']</code></td>
    <td>IHS Admin Server Docuement Root</td>
    <td><code>/opt/IBM/HTTPServer/docroot</code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['admin_server']['enabled']</code></td>
    <td>IHS Admin Server Enable(true/false)</td>
    <td><code>false</code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['admin_server']['password']</code></td>
    <td>IHS Admin Server Password</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['admin_server']['port']</code></td>
    <td>IHS Admin Server  Port Number</td>
    <td><code>8008</code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['admin_server']['server_name']</code></td>
    <td>IHS Admin Server Docuement Hostname</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['admin_server']['service_name']</code></td>
    <td>IHS Admin Server ServiceName</td>
    <td><code>ihsadm</code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['admin_server']['username']</code></td>
    <td>IHS Admin Server userName</td>
    <td><code>ihsadmin</code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['config_os_service']</code></td>
    <td>IHS Server Config Service</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['document_root']</code></td>
    <td>IHS Server DocumentRoot</td>
    <td><code>/opt/IBM/HTTPServer/htdocs</code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['features']['bitness']</code></td>
    <td>IHS Server BIT 64</td>
    <td><code>64</code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['install_dir']</code></td>
    <td>IHS Installation Directory</td>
    <td><code>/opt/IBM/HTTPServer</code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['install_mode']</code></td>
    <td>IHS Installation Mode</td>
    <td><code>nonAdmin</code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['os_perms']</code></td>
    <td>IHS File Permissions</td>
    <td><code>755</code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['os_users']['ihs']['gid']</code></td>
    <td>IHS Server OS User GROUP Name</td>
    <td><code>ihsgrp</code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['os_users']['ihs']['home']</code></td>
    <td>IHS Server OS User Home Direcrtory</td>
    <td><code>/home/ihssrv</code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['os_users']['ihs']['ldap_user']</code></td>
    <td>IHS Server OS User LDAP Enabled</td>
    <td><code>false</code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['os_users']['ihs']['name']</code></td>
    <td>IHS Server OS User Name</td>
    <td><code>ihssrv</code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['os_users']['ihs']['shell']</code></td>
    <td>IHS Server OS User Shell</td>
    <td><code>/sbin/nologin</code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['plugin']['dmgr_tag']</code></td>
    <td>IHS Plugin DMGR Tag</td>
    <td><code>DMGR</code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['plugin']['enabled']</code></td>
    <td>IHS Plugin Enabled</td>
    <td><code>remote</code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['plugin']['install_dir']</code></td>
    <td>IHS Plugin Installation Direcrtory</td>
    <td><code>/opt/IBM/WebSphere/Plugins</code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['plugin']['plugin_install_type']</code></td>
    <td>IHS Plugin INstallation Type</td>
    <td><code>remote</code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['plugin']['was_hostname']</code></td>
    <td>IHS Plugin DMGR_Hostname</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['plugin']['was_webserver_name']</code></td>
    <td>IHS Plugin WEBSRV_Hostname</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['port']</code></td>
    <td>IHS Server Port Number</td>
    <td><code>80</code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['server_admin']</code></td>
    <td>IHS Server Admin Email Address</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['server_name']</code></td>
    <td>IHS Server Admin ServerName</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['service_name']</code></td>
    <td>IHS Server Service Name</td>
    <td><code>ihssrv</code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['ssl']['cert_label']</code></td>
    <td>IHS Keystore Label Name</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['ssl']['enabled']</code></td>
    <td>IHS Enable SSL Port</td>
    <td><code>false</code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['ssl']['keystore']</code></td>
    <td>IHS Keystore Location</td>
    <td><code>/opt/IBM/HTTPServer/conf/key.kdb</code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['ssl']['keystore_password']</code></td>
    <td>IHS Keystore Password</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['ssl']['port']</code></td>
    <td>IHS SSL Port Number</td>
    <td><code>443</code></td>
  </tr>
  <tr>
    <td><code>node['ihs']['version']</code></td>
    <td>IHS Installation Version</td>
    <td><code></code></td>
  </tr>
</table>

Recipes
-------

### ihs::cleanup.rb


Cleanup recipe (cleanup.rb)
Perform post-install cleanup


### ihs::config_admin_conf.rb


Configure admin server recipe (config_admin_conf.rb)
Create admin.conf and service script for the admin server


### ihs::config_httpd_conf.rb


Main server configuration recipe (config_httpd_conf.rb)
Configure main server and service file


### ihs::config_ssl_selfsigned.rb


SSL configuration recipe (config_ssl_selfsigned.rb)
Configure a SSL vhost and associated self-signed certificates


### ihs::config_wasplugin.rb


WAS plugin configuration recipe (config_wasplugin.rb)
Configure the WAS plugin


### ihs::default.rb


Default recipe (default.rb)
Perform minimal product installation


### ihs::gather_evidence.rb


Gather evidence recipe (gather_evidence.rb)
Gather evidence that installation was successful


### ihs::install.rb


Installation recipe (install.rb)
Perform installation of the main asset


### ihs::prereq.rb


Prerequisites recipe (prereq.rb)
Perform prerequisite actions


### ihs::prereq_check.rb


Prerequisites recipe (prereq_check.rb)
Verify required prerequisites, validate input


### ihs::service_admin.rb


Configure admin server recipe (service_admin.rb)
Configure and manage admin server service


### ihs::service_httpd.rb


Configure web server recipe (service_httpd.rb)
Configure and manage web service



License and Author
------------------

Author:: IBM Corp (<>)

Copyright:: 2017, IBM Corp

License:: Copyright IBM Corp. 2012, 2017

