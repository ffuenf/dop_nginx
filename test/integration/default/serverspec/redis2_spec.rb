require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

RSpec.configure do |c|
  c.before :all do
    c.path = '/sbin:/usr/sbin'
  end
end

describe command("/opt/nginx/sbin/nginx -V 2>&1 | grep 'configure arguments:' | grep -c 'nginx_redis2_module'") do
  it { should return_stdout '1' }
end
