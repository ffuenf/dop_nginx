#
# Cookbook Name:: dop_nginx
# Recipe:: naxsi
#

cookbook_file "#{node['nginx']['dir']}/naxsi_core.rules" do
  source "naxsi_core.rules"
  owner "root"
  group "root"
  mode 00644
  notifies :reload, 'service[nginx]'
end

template "#{node['nginx']['dir']}/naxsi.rules" do
  owner "root"
  group "root"
  mode 0644
  source "naxsi.rules.erb"
  variables({
    :params => node['nginx']
  })
end
execute "touch naxsi tmp file" do
  command "touch #{node['nginx']['naxsi']['tmp_file']}"
  creates "#{node['nginx']['naxsi']['tmp_file']}"
  action :run
end

naxsi_src_filename = ::File.basename(node['nginx']['naxsi']['url'])
naxsi_src_filepath = "#{Chef::Config['file_cache_path']}/#{naxsi_src_filename}"
naxsi_extract_path = "#{Chef::Config['file_cache_path']}/nginx-naxsi-#{node['nginx']['naxsi']['version']}"

remote_file naxsi_src_filepath do
  source node['nginx']['naxsi']['url']
  checksum node['nginx']['naxsi']['checksum']
  owner "root"
  group "root"
  mode 00644
end

bash "extract_naxsi_module" do
  cwd ::File.dirname(naxsi_src_filepath)
  code <<-EOH
    mkdir -p #{naxsi_extract_path}
    tar xzf #{naxsi_src_filename} -C #{naxsi_extract_path}
  EOH

  not_if { ::File.exists?(naxsi_extract_path) }
end

node.run_state['nginx_configure_flags'] =
  node.run_state['nginx_configure_flags'] | ["--add-module=#{naxsi_extract_path}/naxsi-#{node['nginx']['naxsi']['version']}/naxsi_src"]
