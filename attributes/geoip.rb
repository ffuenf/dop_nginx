# # # # #
# geoip #
# # # # #
default['nginx']['geoip']['path'] = '/var/geoip'
default['nginx']['geoip']['enable_city'] = true
default['nginx']['geoip']['country_dat_url'] = 'http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz'
default['nginx']['geoip']['country_dat_checksum'] = 'a423a0c87bf9a78ef8d68153b424987c6bbddec85b5f784ca747706f4df10361'
default['nginx']['geoip']['city_dat_url'] = 'http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz'
default['nginx']['geoip']['city_dat_checksum'] = '2f3f62f171c333cdd4e68534585e51978cb3a12dc7b269786f50daf10071d7d6'
default['nginx']['geoip']['lib_version'] = '1.6.3'
default['nginx']['geoip']['lib_url'] = "https://github.com/maxmind/geoip-api-c/releases/download/v#{node['nginx']['geoip']['lib_version']}/GeoIP-#{node['nginx']['geoip']['lib_version']}.tar.gz"
default['nginx']['geoip']['lib_checksum'] = 'e483839a81a91c3c85df89ef409fc7b526c489e0355d537861cfd1ea9534a8f2'
