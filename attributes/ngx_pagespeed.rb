# # # # # # # # #
# ngx_pagespeed #
# # # # # # # # #
default['nginx']['ngx_pagespeed']['version'] = "1.8.31.4-beta"
default['nginx']['ngx_pagespeed']['url'] = "https://codeload.github.com/pagespeed/ngx_pagespeed/tar.gz/v#{node['nginx']['ngx_pagespeed']['version']}"
default['nginx']['ngx_pagespeed']['checksum'] = "41417cf54321f3fd80e9529808b58cbefb2b51977fc41ef1ed048fe4993fe44f5d3bbf60cfc4c44bd19935019829012681ee272e5d48ead3f6953c1a222a69c7"

default['nginx']['ngx_pagespeed']['psol']['version'] = "1.8.31.4"
default['nginx']['ngx_pagespeed']['psol']['url'] = "https://dl.google.com/dl/page-speed/psol/#{node['nginx']['ngx_pagespeed']['psol']['version']}.tar.gz"
default['nginx']['ngx_pagespeed']['checksum'] = "90866d2b7c0397ea6b216ca1b44b43a80a6d5045b9cc9f7eca1c03d42418e8d143ee1396de7da7fa61b86845947112ba9183ad864f33cfe5523e7ea43b3aa932"

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
default['nginx']['ngx_pagespeed']['DownstreamCachePurgeMethod'] = "PURGE"
default['nginx']['ngx_pagespeed']['DownstreamCacheRewrittenPercentageThreshold'] = 95
default['nginx']['ngx_pagespeed']['RetainComment'] = "esi*"
