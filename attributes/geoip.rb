# # # # #
# geoip #
# # # # #
default['nginx']['geoip']['path'] = "/var/geoip"
default['nginx']['geoip']['enable_city'] = true
default['nginx']['geoip']['country_dat_url'] = "http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz"
default['nginx']['geoip']['country_dat_checksum'] = "025e516ec14a8a705fb479880ffce43f9fdb8869666d522c38c791069f4b0acf"
default['nginx']['geoip']['city_dat_url'] = "http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz"
default['nginx']['geoip']['city_dat_checksum'] = "7947c74c0dccdf53500e2df92011916da5f11d46db06952ff457452d97ea7d9c"
default['nginx']['geoip']['lib_version'] = "1.6.0"
default['nginx']['geoip']['lib_url'] = "http://geolite.maxmind.com/download/geoip/api/c/GeoIP-#{node['nginx']['geoip']['lib_version']}.tar.gz"
default['nginx']['geoip']['lib_checksum'] = "075a0c2815cd099e9ec35c9569db716a3fefcdbb6a10dbfa1ce7c6cd48d4a635"