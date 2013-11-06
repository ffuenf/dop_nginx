#
# Cookbook Name:: dop_nginx
# Recipe:: default
#

include_recipe "dop_nginx::ngx_pagespeed"
include_recipe "dop_nginx::naxsi"
include_recipe "dop_nginx::geoip"
include_recipe "nginx"

directory "#{node['nginx']['dir']}/ssl" do
  owner "root"
  group "root"
  mode 0755
  action :create
end