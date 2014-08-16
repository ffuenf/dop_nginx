# # # # #
# naxsi #
# # # # #
default['nginx']['naxsi']['version'] = '0.53-2'
default['nginx']['naxsi']['url'] = "https://github.com/nbs-system/naxsi/archive/#{node['nginx']['naxsi']['version']}.tar.gz"
default['nginx']['naxsi']['checksum'] = 'ada592f5e7f80a6d549cc435ee8720df01a788dc88cf27a7d55521bb7e4c66fa11b9ec28216aff7e13c70a5faf12cb745bd398b8a782ed4dea1eecd04b07e24c'

default['nginx']['naxsi']['enabled'] = false
default['nginx']['naxsi']['LearningMode'] = false
default['nginx']['naxsi']['SecRulesEnabled'] = false
default['nginx']['naxsi']['DeniedUrl'] = '/RequestDenied'
default['nginx']['naxsi']['tmp_file'] = '/tmp/nginx.naxsi.rules.tmp'
