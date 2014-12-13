# # # # # #
# default #
# # # # # #
default['nginx']['unsecure_port'] = 80
default['nginx']['secure_port'] = 443

default['nginx']['source']['version'] = '1.6.2'
default['nginx']['source']['checksum'] = 'b5608c2959d3e7ad09b20fc8f9e5bd4bc87b3bc8ba5936a513c04ed8f1391a18'
default['nginx']['install_method'] = 'source'
default['nginx']['default_site_enabled'] = false
default['nginx']['init_style'] = 'init'
default['nginx']['webdir'] = '/home/www'
default['nginx']['server_tokens'] = 'off'

default['nginx']['source']['version'] = node['nginx']['version']
default['nginx']['source']['prefix'] = '/opt/nginx'
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
  'dop_nginx::ngx_pagespeed'
]

default['nginx']['geoip']['path'] = '/var/geoip'

include_attribute 'dop_nginx::naxsi'
include_attribute 'dop_nginx::ngx_pagespeed'
