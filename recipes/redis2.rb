#
# Cookbook Name:: dop_nginx
# Recipe:: redis2
#

redis2_src_filename = "redis2-nginx-module-v#{node['nginx']['redis2']['version']}.tar.gz"
redis2_src_filepath = "#{Chef::Config['file_cache_path']}/#{redis2_src_filename}"
redis2_extract_path = "#{Chef::Config['file_cache_path']}/nginx_redis2_module/#{node['nginx']['redis2']['checksum']}"

remote_file redis2_src_filepath do
  source node['nginx']['redis2']['url']
  checksum node['nginx']['redis2']['checksum']
  owner 'root'
  group 'root'
  mode 0644
end

bash 'extract_redis2_module' do
  cwd ::File.dirname(redis2_src_filepath)
  code <<-EOH
    mkdir -p #{redis2_extract_path}
    tar xzf #{redis2_src_filename} -C #{redis2_extract_path}
    mv #{redis2_extract_path}/*/* #{redis2_extract_path}/
  EOH
  not_if { ::File.exist?(redis2_extract_path) }
end

node.run_state['nginx_configure_flags'] =
  node.run_state['nginx_configure_flags'] | ["--add-module=#{redis2_extract_path}"]
