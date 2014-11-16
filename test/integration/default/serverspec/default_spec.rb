require 'serverspec'
set :backend, :exec
set :path, '/sbin:/usr/sbin:/usr/local/sbin:$PATH'

describe file('/etc/nginx/ssl') do
  it { should be_directory }
  it { should be_mode 755 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end

describe file('/etc/logrotate.d/nginx') do
  it { should be_file }
  it { should be_mode 440 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end

describe service('nginx') do
  it { should be_enabled }
  it { should be_running }
end
