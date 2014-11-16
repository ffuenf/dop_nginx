require 'serverspec'
set :backend, :exec
set :path, '/sbin:/usr/sbin:/usr/local/sbin:$PATH'

pkgs = ['build-essential', 'zlib1g-dev', 'libpcre3', 'libpcre3-dev']

pkgs.each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

describe file('/var/ngx_pagespeed_cache') do
  it do
    should be_mounted.with(
      device: 'tmpfs',
      type: 'tmpfs',
      options: {
        mode: 1733,
        noatime: true,
        noexec: true,
        nosuid: true,
        nodev: true
      }
    )
  end
end

describe file('/etc/nginx/conf.d/ngx_pagespeed.conf') do
  it { should be_file }
  it { should be_mode 644 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end
