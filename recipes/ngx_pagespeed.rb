#
# Cookbook Name:: dop_nginx
# Recipe:: ngx_pagespeed
#

package 'build-essential'
package 'zlib1g-dev'
package 'libpcre3'
package 'libpcre3-dev'

directory node['nginx']['ngx_pagespeed']['FileCachePath'] do
  owner node['nginx']['user']
  group node['nginx']['user']
  action :create
end

directory node['nginx']['ngx_pagespeed']['LogDir'] do
  owner node['nginx']['user']
  group node['nginx']['user']
  action :create
end

mount node['nginx']['ngx_pagespeed']['FileCachePath'] do
  device 'tmpfs'
  fstype 'tmpfs'
  options ["size=#{node['nginx']['ngx_pagespeed']['cache-size']}", 'mode=1733', 'noatime', 'noexec', 'nosuid', 'nodev']
  dump 0
  pass 0
  action [:enable, :mount]
  supports [remount: true]
end

ngx_pagespeed_src_filepath = "#{Chef::Config['file_cache_path']}/ngx_pagespeed-#{node['nginx']['ngx_pagespeed']['version']}"
ngx_pagespeed_extract_path = Chef::Config['file_cache_path']

unless ::File.exist?(ngx_pagespeed_src_filepath)
  remote_file ngx_pagespeed_src_filepath do
    source node['nginx']['ngx_pagespeed']['url']
    owner 'root'
    group 'root'
    mode 00644
  end
  bash 'extract_ngx_pagespeed' do
    cwd ::File.dirname(ngx_pagespeed_src_filepath)
    code <<-EOH
      mkdir -p #{ngx_pagespeed_extract_path}
      tar xzf ngx_pagespeed-#{node['nginx']['ngx_pagespeed']['version']} -C #{ngx_pagespeed_extract_path}
    EOH
  end
  bash 'canonicalize_javascript_libraries' do
    cwd ::File.dirname(ngx_pagespeed_src_filepath)
    code <<-EOH
      #{ngx_pagespeed_extract_path}/scripts/pagespeed_libraries_generator.sh > #{node['nginx']['dir']}/pagespeed_libraries.conf
    EOH
    only_if { node['nginx']['ngx_pagespeed']['canonicalize_javascript_libraries'] }
  end
end

ngx_psol_src_filename = ::File.basename(node['nginx']['ngx_pagespeed']['psol']['url'])
ngx_psol_src_filepath = "#{Chef::Config['file_cache_path']}/#{ngx_psol_src_filename}"
ngx_psol_extract_path = "#{ngx_pagespeed_extract_path}/ngx_pagespeed-#{node['nginx']['ngx_pagespeed']['version']}"

unless ::File.exist?(ngx_psol_src_filepath)
  remote_file ngx_psol_src_filepath do
    source node['nginx']['ngx_pagespeed']['psol']['url']
    owner 'root'
    group 'root'
    mode 00644
  end

  bash 'extract_psol' do
    cwd ::File.dirname(ngx_psol_src_filepath)
    code <<-EOH
      tar xzf #{ngx_psol_src_filename} -C #{ngx_psol_extract_path}
    EOH
  end
end

template "#{node['nginx']['dir']}/conf.d/ngx_pagespeed.conf" do
  source 'ngx_pagespeed.conf.erb'
  cookbook 'dop_nginx'
  owner 'root'
  group 'root'
  mode 00644
  variables(
    params: node['nginx']['ngx_pagespeed']
  )
  notifies :reload, 'service[nginx]', :delayed
end

node.run_state['nginx_configure_flags'] =
  node.run_state['nginx_configure_flags'] | ["--add-module=#{Chef::Config['file_cache_path']}/ngx_pagespeed-#{node['nginx']['ngx_pagespeed']['version']}"]
