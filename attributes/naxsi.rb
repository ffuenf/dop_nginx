# # # # #
# naxsi #
# # # # #
default['nginx']['naxsi']['version'] = '0.53-2'
default['nginx']['naxsi']['url'] = "https://github.com/nbs-system/naxsi/archive/#{node['nginx']['naxsi']['version']}.tar.gz"
default['nginx']['naxsi']['checksum'] = '3eadff1d91995beae41b92733ade28091c2075a24ae37058f4d6aa90b0f4b660'

default['nginx']['naxsi']['enabled'] = false
default['nginx']['naxsi']['LearningMode'] = false
default['nginx']['naxsi']['SecRulesEnabled'] = false
default['nginx']['naxsi']['DeniedUrl'] = '/RequestDenied'
default['nginx']['naxsi']['tmp_file'] = '/tmp/nginx.naxsi.rules.tmp'
