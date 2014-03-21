# # # # # # # # #
# ngx_pagespeed #
# # # # # # # # #
default['nginx']['ngx_pagespeed']['version'] = "1.7.30.4-beta"
default['nginx']['ngx_pagespeed']['url'] = "https://codeload.github.com/pagespeed/ngx_pagespeed/tar.gz/v#{node['nginx']['ngx_pagespeed']['version']}"
default['nginx']['ngx_pagespeed']['checksum'] = "79403dac41701652410d1632d76a41bfcd5a6321047abfd0e9b82de6f7f83d84e7236ec99bee39d663fc3ee147048777b7b9ac54dc96d1f14d1391d5f20c5002"

default['nginx']['ngx_pagespeed']['psol']['version'] = "1.7.30.4"
default['nginx']['ngx_pagespeed']['psol']['url'] = "https://dl.google.com/dl/page-speed/psol/#{node['nginx']['ngx_pagespeed']['psol']['version']}.tar.gz"
default['nginx']['ngx_pagespeed']['checksum'] = "122b7ae2d944f3b74f94ed52c27455d81104f150fabef872ce35b605df3bf31115330e85b88fd89928c1b349c7e30980a981d3702f4dadc206fb580cf70f4c3a"

default['nginx']['ngx_pagespeed']['cache-url'] = "/var/ngx_pagespeed_cache"
default['nginx']['ngx_pagespeed']['cache-size'] = "128M"
default['nginx']['ngx_pagespeed']['enabled'] = "on"
default['nginx']['ngx_pagespeed']['FileCachePath'] = node['nginx']['ngx_pagespeed']['cache-url']
default['nginx']['ngx_pagespeed']['CacheFlushFilename'] = "cache.flush"
default['nginx']['ngx_pagespeed']['EnableFilters'] = "collapse_whitespace,combine_css,combine_javascript,remove_comments,sprite_images,extend_cache"
default['nginx']['ngx_pagespeed']['DisableFilters'] = nil