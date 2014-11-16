# # # # #
# geoip #
# # # # #
default['nginx']['geoip']['path'] = '/var/geoip'
default['nginx']['geoip']['enable_city'] = true
default['nginx']['geoip']['country_dat_url'] = 'http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz'
default['nginx']['geoip']['country_dat_checksum'] = '9b2fea3cb76a5eb30cb61c5a393ebd034e7c5869af2fa34368b64791f46cd775'
default['nginx']['geoip']['city_dat_url'] = 'http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz'
default['nginx']['geoip']['city_dat_checksum'] = 'c7ccef1502c7906d98932a6b7c9106ff5e4c650534d74859a19227a6bae08390'
default['nginx']['geoip']['lib_version'] = '1.6.3'
default['nginx']['geoip']['lib_url'] = "https://github.com/maxmind/geoip-api-c/releases/download/v#{node['nginx']['geoip']['lib_version']}/GeoIP-#{node['nginx']['geoip']['lib_version']}.tar.gz"
default['nginx']['geoip']['lib_checksum'] = 'e483839a81a91c3c85df89ef409fc7b526c489e0355d537861cfd1ea9534a8f2'
