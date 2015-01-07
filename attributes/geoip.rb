# # # # #
# geoip #
# # # # #
default['nginx']['geoip']['path'] = '/var/geoip'
default['nginx']['geoip']['enable_city'] = true
default['nginx']['geoip']['country_dat_url'] = 'http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz'
default['nginx']['geoip']['country_dat_checksum'] = '7fd7e4829aaaae2677a7975eeecd170134195e5b7e6fc7d30bf3caf34db41bcd'
default['nginx']['geoip']['city_dat_url'] = 'http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz'
default['nginx']['geoip']['city_dat_checksum'] = '5ec02a6d39d545c77ec12cc30c6a8856883d8f55522fc5cd4f25af80163c6b3c'
default['nginx']['geoip']['lib_version'] = '1.6.3'
default['nginx']['geoip']['lib_url'] = "https://github.com/maxmind/geoip-api-c/releases/download/v#{node['nginx']['geoip']['lib_version']}/GeoIP-#{node['nginx']['geoip']['lib_version']}.tar.gz"
default['nginx']['geoip']['lib_checksum'] = 'e483839a81a91c3c85df89ef409fc7b526c489e0355d537861cfd1ea9534a8f2'
