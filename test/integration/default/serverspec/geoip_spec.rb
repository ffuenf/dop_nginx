require 'serverspec'
set :backend, :exec
set :path, '/sbin:/usr/sbin:/usr/local/sbin:$PATH'

describe cron do
  it { should have_entry('0 1 * * 2     [ `date +%d` -le 7 ] && wget "http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz" -O "/var/geoip/GeoIP.dat" > /dev/null 2>&1').with_user('root') }
end
