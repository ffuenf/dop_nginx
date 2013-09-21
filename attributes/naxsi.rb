# # # # #
# naxsi #
# # # # #
default['nginx']['naxsi']['version'] = "0.52"
default['nginx']['naxsi']['url'] = "https://github.com/nbs-system/naxsi/archive/#{node['nginx']['naxsi']['version']}.tar.gz"
default['nginx']['naxsi']['checksum'] = "381cd5937c265ddcbabf55516028f4b0d1f67222f576c987afb2f676248f8be2"

default['nginx']['naxsi']['enabled'] = false
default['nginx']['naxsi']['LearningMode'] = false
default['nginx']['naxsi']['SecRulesEnabled'] = false
default['nginx']['naxsi']['DeniedUrl'] = "/RequestDenied"
default['nginx']['naxsi']['tmp_file'] = "/tmp/nginx.naxsi.rules.tmp"