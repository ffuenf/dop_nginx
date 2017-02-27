#
# Cookbook Name:: dop_nginx
# Recipe:: geoip
#

cron 'run geoip update' do
  minute '0'
  hour '1'
  day '1-7'
  month '*'
  weekday '2'
  command <<-EOH
    wget -q "#{node['nginx']['geoip']['country_dat_url']}" -O "#{node['nginx']['geoip']['path']}/GeoIP.dat.gz" && mv #{node['nginx']['geoip']['path']}/GeoIP.dat #{node['nginx']['geoip']['path']}/GeoIP.dat.bak && gzip -d #{node['nginx']['geoip']['path']}/GeoIP.dat.gz
  EOH
end
