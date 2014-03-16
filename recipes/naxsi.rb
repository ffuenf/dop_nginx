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