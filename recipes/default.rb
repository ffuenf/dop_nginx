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

logrotate_app "nginx" do
  cookbook "logrotate"
  path "#{node["nginx"]["log_dir"]}/*.log"
  frequency "daily"
  rotate 2
  options ["missingok", "compress", "delaycompress", "notifempty", "sharedscripts"]
  postrotate "[ -f #{node["nginx"]["pid"]} ] && kill -USR1 `cat #{node["nginx"]["pid"]}`"
  create "640 nginx adm"
end