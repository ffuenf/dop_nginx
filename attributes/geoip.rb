# # # # #
# geoip #
# # # # #
node.default['nginx']['geoip']['path'] = "/var/geoip"
node.default['nginx']['geoip']['enable_city'] = false
node.default['nginx']['geoip']['country_dat_url'] = "http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz"
node.default['nginx']['geoip']['country_dat_checksum'] = "40865af8f49b9898957cb9b81548676ecb2efd6073a0a437a7b2afcc594bf8fe"
node.default['nginx']['geoip']['city_dat_url'] = "http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz"
node.default['nginx']['geoip']['city_dat_checksum'] = "2db87dd2ed665833b71b5f330476ad850cf3b34001f101d581c8e470dba50a5f"
node.default['nginx']['geoip']['lib_version'] = "1.5.1"
node.default['nginx']['geoip']['lib_url'] = "http://geolite.maxmind.com/download/geoip/api/c/GeoIP-#{node['nginx']['geoip']['lib_version']}.tar.gz"
node.default['nginx']['geoip']['lib_checksum'] = "ec35ee73fcc54c493f4252565d1c81d022b398dd16de3af1522c8cab016f8731"