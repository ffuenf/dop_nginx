# # # # # # # # #
# ngx_pagespeed #
# # # # # # # # #
default['nginx']['ngx_pagespeed']['version'] = "1.8.31.2-beta"
default['nginx']['ngx_pagespeed']['url'] = "https://codeload.github.com/pagespeed/ngx_pagespeed/tar.gz/v#{node['nginx']['ngx_pagespeed']['version']}"
default['nginx']['ngx_pagespeed']['checksum'] = "8cd1bca463b4810cf2e7aa738e7a9fe4c40075ca9bf9a8e14e1a470a9e0540c589a7ee0a0a12cda1e479c7fbe9ea2f6e080ec4333ccabef6dd335691c88188e2"

default['nginx']['ngx_pagespeed']['psol']['version'] = "1.8.31.2"
default['nginx']['ngx_pagespeed']['psol']['url'] = "https://dl.google.com/dl/page-speed/psol/#{node['nginx']['ngx_pagespeed']['psol']['version']}.tar.gz"
default['nginx']['ngx_pagespeed']['checksum'] = "e68c7bc8f5306f249ca7bbaad3d8f15bdcbda5e010821dce21ca0059e128fe83f3d8bd6f8a7e606169e51d65ef29f549c81636f84783b9c721092a16c7afac38"

default['nginx']['ngx_pagespeed']['cache-url'] = "/var/ngx_pagespeed_cache"
default['nginx']['ngx_pagespeed']['cache-size'] = "512M"
default['nginx']['ngx_pagespeed']['enabled'] = "on"
default['nginx']['ngx_pagespeed']['canonicalize_javascript_libraries'] = false
default['nginx']['ngx_pagespeed']['FileCachePath'] = node['nginx']['ngx_pagespeed']['cache-url']
default['nginx']['ngx_pagespeed']['CacheFlushFilename'] = "cache.flush"
default['nginx']['ngx_pagespeed']['EnableFilters'] = "collapse_whitespace,combine_css,combine_javascript,remove_comments,sprite_images,extend_cache"
default['nginx']['ngx_pagespeed']['DisableFilters'] = "defer_javascript"

default['nginx']['ngx_pagespeed']['Statistics'] = "on"
default['nginx']['ngx_pagespeed']['StatisticsLogging'] = "on"
default['nginx']['ngx_pagespeed']['LogDir'] = "/var/log/nginx/pagespeed"
default['nginx']['ngx_pagespeed']['StatisticsLoggingIntervalMs'] = 60000
default['nginx']['ngx_pagespeed']['StatisticsLoggingMaxFileSizeKb'] = 1024
default['nginx']['ngx_pagespeed']['MessageBufferSize'] = 100000

default['nginx']['ngx_pagespeed']['AdminPath'] = "/ngx_pagespeed_admin"
default['nginx']['ngx_pagespeed']['GlobalAdminPath'] = "/ngx_pagespeed_global_admin"
default['nginx']['ngx_pagespeed']['StatisticsPath'] = "/ngx_pagespeed_statistics"
default['nginx']['ngx_pagespeed']['GlobalStatisticsPath'] = "/ngx_pagespeed_global_statistics"
default['nginx']['ngx_pagespeed']['MessagesPath'] = "/ngx_pagespeed_message"
default['nginx']['ngx_pagespeed']['ConsolePath'] = "/ngx_pagespeed_console"

default['nginx']['ngx_pagespeed']['FileCacheSizeKb'] = 102400
default['nginx']['ngx_pagespeed']['FileCacheCleanIntervalMs'] = 600000
default['nginx']['ngx_pagespeed']['FileCacheInodeLimit'] = 500000
default['nginx']['ngx_pagespeed']['LRUCacheKbPerProcess'] = 8192
default['nginx']['ngx_pagespeed']['LRUCacheByteLimit'] = 16384
default['nginx']['ngx_pagespeed']['CacheFlushPollIntervalSec'] = 600000
default['nginx']['ngx_pagespeed']['DownstreamCacheRewrittenPercentageThreshold'] = 95
default['nginx']['ngx_pagespeed']['RetainComment'] = "esi*"