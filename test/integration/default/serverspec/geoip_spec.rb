require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

RSpec.configure do |c|
  c.before :all do
    c.path = '/sbin:/usr/sbin'
  end
end

describe cron do
  it { should have_entry('0 1 * * 2     [ `date +%d` -le 7 ] && wget "http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz" -O "/var/geoip/GeoIP.dat" > /dev/null 2>&1').with_user('root') }
end
