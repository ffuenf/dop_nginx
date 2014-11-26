#
# Cookbook Name:: dop_nginx
# Recipe:: geoip
#

cron 'run geoip update' do
  minute '0'
  hour '1'
  day '*'
  month '*'
  weekday '2'
  command <<-EOH
    [ `date +\%d` -le 7 ] && wget "#{node['nginx']['geoip']['country_dat_url']}" -O "#{node['nginx']['geoip']['path']}/GeoIP.dat.gz" && gzip -d #{node['nginx']['geoip']['path']}/GeoIP.dat.gz > /dev/null 2>&1
  EOH
end
