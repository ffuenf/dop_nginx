# # # # # #
# default #
# # # # # #
default['nginx']['unsecure_port'] = 80
default['nginx']['secure_port'] = 443

default['nginx']['install_method'] = "source"
default['nginx']['default_site_enabled'] = false
default['nginx']['init_style'] = "init"
default['nginx']['webdir'] = "/home/www"

default['nginx']['version'] = "1.4.3"
default['nginx']['source']['version'] = node['nginx']['version']
default['nginx']['source']['url'] = "http://nginx.org/download/nginx-#{node['nginx']['source']['version']}.tar.gz"
default['nginx']['checksum'] = "8d0c34c84ce6dd8ba4442889e8f2599044c90930"
default['nginx']['source']['modules'] = [
  "nginx::http_ssl_module",
  "nginx::http_gzip_static_module",
  "nginx::ipv6",
  "nginx::http_realip_module",
  "nginx::http_stub_status_module",
  "nginx::upload_progress_module",
  "dop_nginx::geoip",
  "dop_nginx::naxsi",
  "dop_nginx::ngx_pagespeed"
]
default['nginx']['source']['prefix'] = "/opt/nginx"
default['nginx']['source']['conf_path'] = "#{node['nginx']['dir']}/nginx.conf"
default['nginx']['source']['sbin_path'] = "#{node['nginx']['source']['prefix']}/sbin/nginx"
default['nginx']['source']['default_configure_flags'] = [
  "--prefix=#{node['nginx']['source']['prefix']}",
  "--conf-path=#{node['nginx']['dir']}/nginx.conf",
  "--sbin-path=#{node['nginx']['source']['sbin_path']}"
]

include_attribute "dop_nginx::geoip"
include_attribute "dop_nginx::naxsi"
include_attribute "dop_nginx::ngx_pagespeed"