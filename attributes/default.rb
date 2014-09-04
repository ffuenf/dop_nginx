# # # # # #
# default #
# # # # # #
default['nginx']['unsecure_port'] = 80
default['nginx']['secure_port'] = 443

default['nginx']['version'] = '1.6.1'
default['nginx']['checksum'] = '07762a7b25b7624142e9d8633eb952e7627501a183c82de7f31b20336f3f997171b366124a41c0fbc8c2a73ed6c68db1a084ca89cf8c5ad4f2bc5e8e7c7be105'
default['nginx']['install_method'] = 'source'
default['nginx']['default_site_enabled'] = false
default['nginx']['init_style'] = 'init'
default['nginx']['webdir'] = '/home/www'
default['nginx']['server_tokens'] = 'off'

default['nginx']['source']['version'] = node['nginx']['version']
default['nginx']['source']['prefix'] = "/opt/nginx"
default['nginx']['source']['conf_path'] = "#{node['nginx']['dir']}/nginx.conf"
default['nginx']['source']['sbin_path'] = "#{node['nginx']['source']['prefix']}/sbin/nginx"
default['nginx']['source']['default_configure_flags'] = %W(
  --prefix=#{node['nginx']['source']['prefix']}
  --conf-path=#{node['nginx']['dir']}/nginx.conf
  --sbin-path=#{node['nginx']['source']['sbin_path']}
)

default['nginx']['source']['modules'] = [
  'nginx::http_ssl_module',
  'nginx::http_gzip_static_module',
  'nginx::ipv6',
  'nginx::http_realip_module',
  'nginx::http_stub_status_module',
  'nginx::http_spdy_module',
  'nginx::upload_progress_module',
  'nginx::http_geoip_module',
  'nginx::naxsi_module',
  'dop_nginx::ngx_pagespeed',
  'dop_nginx::redis2'
]

default['nginx']['geoip']['path'] = '/var/geoip'

include_attribute 'dop_nginx::naxsi'
include_attribute 'dop_nginx::ngx_pagespeed'
include_attribute 'dop_nginx::redis2'
