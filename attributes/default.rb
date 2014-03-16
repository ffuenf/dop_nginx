# # # # # #
# default #
# # # # # #
default['nginx']['unsecure_port'] = 80
default['nginx']['secure_port'] = 443

default['nginx']['version'] = "1.4.6"
default['nginx']['checksum'] = "1d790fd2b403b0b694a8dbbc28f7e34dbc3ca863"
default['nginx']['install_method'] = "source"
default['nginx']['default_site_enabled'] = false
default['nginx']['init_style'] = "init"
default['nginx']['webdir'] = "/home/www"
default['nginx']['server_tokens'] = "off"

default['nginx']['source']['prefix'] = "/opt/nginx"
default['nginx']['source']['modules'] = [
  "nginx::http_ssl_module",
  "nginx::http_gzip_static_module",
  "nginx::ipv6",
  "nginx::http_realip_module",
  "nginx::http_stub_status_module",
  "nginx::upload_progress_module",
  "nginx::http_geoip_module",
  "nginx::naxsi_module",
  "dop_nginx::ngx_pagespeed"
]

default['nginx']['geoip']['path'] = "/var/geoip"

include_attribute "dop_nginx::naxsi"
include_attribute "dop_nginx::ngx_pagespeed"