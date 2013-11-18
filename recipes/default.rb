#
# Cookbook Name:: dop_nginx
# Recipe:: default
#

include_recipe "nginx"

directory "#{node['nginx']['dir']}/ssl" do
  owner "root"
  group "root"
  mode 0755
  action :create
end