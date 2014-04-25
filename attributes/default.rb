# # # # # #
# default #
# # # # # #
default['nginx']['unsecure_port'] = 80
default['nginx']['secure_port'] = 443

default['nginx']['version'] = "1.6.0"
default['nginx']['checksum'] = "715b3aa6012e2e29f3b4e6affff4641de0958faa25c0acedb8091b0f4c8506a8912a7e507bcb1f89fc5fe0a1233ab7770dc6ed742698874f43af72b7d08e48f7"
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
  "nginx::http_spdy_module",
  "nginx::upload_progress_module",
  "nginx::http_geoip_module",
  "nginx::naxsi_module",
  "dop_nginx::ngx_pagespeed"
]

default['nginx']['geoip']['path'] = "/var/geoip"

include_attribute "dop_nginx::naxsi"
include_attribute "dop_nginx::ngx_pagespeed"