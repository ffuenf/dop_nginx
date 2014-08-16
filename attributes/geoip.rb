# # # # #
# geoip #
# # # # #
default['nginx']['geoip']['path'] = '/var/geoip'
default['nginx']['geoip']['enable_city'] = true
default['nginx']['geoip']['country_dat_url'] = 'http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz'
default['nginx']['geoip']['country_dat_checksum'] = '730f2cb2692a0e641a41974aa6af6cf5c28ed9ab7f214382da6631bac22014e6'
default['nginx']['geoip']['city_dat_url'] = 'http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz'
default['nginx']['geoip']['city_dat_checksum'] = '7fcb8f8cf254bc7581e05b8f2cef46822f8970af1e9784b6f78ecff5b1cd280b'
default['nginx']['geoip']['lib_version'] = '1.6.0'
default['nginx']['geoip']['lib_url'] = "http://geolite.maxmind.com/download/geoip/api/c/GeoIP-#{node['nginx']['geoip']['lib_version']}.tar.gz"
default['nginx']['geoip']['lib_checksum'] = '075a0c2815cd099e9ec35c9569db716a3fefcdbb6a10dbfa1ce7c6cd48d4a635'
