# # # # #
# geoip #
# # # # #
default['nginx']['geoip']['path'] = '/var/geoip'
default['nginx']['geoip']['enable_city'] = true
default['nginx']['geoip']['country_dat_url'] = 'http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz'
default['nginx']['geoip']['country_dat_checksum'] = 'c03b4b8e10d67626fb3cd67cb338d186ce49273be60519dc4ad2ff073437bb87'
default['nginx']['geoip']['city_dat_url'] = 'http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz'
default['nginx']['geoip']['city_dat_checksum'] = '2a997dc1043f3872b756af2276b0910ff460bd97803224fa6cdbda4882d131ce'
default['nginx']['geoip']['lib_version'] = '1.6.6'
default['nginx']['geoip']['lib_url'] = "https://github.com/maxmind/geoip-api-c/releases/download/v#{node['nginx']['geoip']['lib_version']}/GeoIP-#{node['nginx']['geoip']['lib_version']}.tar.gz"
default['nginx']['geoip']['lib_checksum'] = '790e6e2c0708803f971fd3a99033736060cd5132aa3750c8e44d0955430a5182'
