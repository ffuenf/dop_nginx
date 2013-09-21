# # # # # # # # #
# ngx_pagespeed #
# # # # # # # # #
default['nginx']['ngx_pagespeed']['version'] = "release-1.6.29.5-beta"
default['nginx']['ngx_pagespeed']['url'] = "https://github.com/pagespeed/ngx_pagespeed/archive/#{node['nginx']['ngx_pagespeed']['version']}.tar.gz"
default['nginx']['ngx_pagespeed']['src']['cookbook'] = "dop_nginx"
default['nginx']['ngx_pagespeed']['src']['file'] = nil

default['nginx']['ngx_pagespeed']['psol']['version'] = "1.6.29.5"
default['nginx']['ngx_pagespeed']['psol']['url'] = "https://dl.google.com/dl/page-speed/psol/#{node['nginx']['ngx_pagespeed']['psol']['version']}.tar.gz"
default['nginx']['ngx_pagespeed']['psol']['src']['cookbook'] = "dop_nginx"
default['nginx']['ngx_pagespeed']['psol']['src']['file'] = nil

default['nginx']['ngx_pagespeed']['cache-url'] = "/var/ngx_pagespeed_cache"
default['nginx']['ngx_pagespeed']['cache-size'] = "128M"
default['nginx']['ngx_pagespeed']['FileCachePath'] = node['nginx']['ngx_pagespeed']['cache-url']
default['nginx']['ngx_pagespeed']['EnableFilters'] = "collapse_whitespace,combine_css,combine_javascript,remove_comments,sprite_images"