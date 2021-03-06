# CHANGELOG for dop_nginx

This file is used to list changes made in each version of dop_nginx.

## 1.2.4 (September 08, 2015)

* fix update of geoip database via cron (mv current db if it exists)
* allow DIsallow setting for ngx_pagespeed
* upgrade geoip
* upgrade ngx_pagespeed
* upgrade nginx

## 1.2.3 (February 16, 2015)

* fix ownership of logrotate/nginx

## 1.2.2 (January 07, 2015)

* update checksums

## 1.2.1 (December 13, 2014)

* update checksums

## 1.2.0 (November 26, 2014)

* [CRITICAL] fix geoip cron-job

## 1.1.3  (November 16, 2014)

* upgrade geoip
* upgrade ngx_pagespeed
* remove openresty/redis2-nginx-module
* serverspec v2 support

## 1.1.2  (September 22, 2014)

* upgrade nginx
* upgrade ngx_pagespeed
* upgrade geoip
* track feature/ngx_pagespeed of nginx cookbook

## 1.1.1  (September 6, 2014)

* add openresty/redis2-nginx-module (disabled by default)

## 1.1.0  (August 17, 2014)

* update/integrate testsuites: test-kitchen, foodcritic, rubocop, travis-ci

## 1.0.9  (July 2, 2014)

* add dependency to python and install [ngxtop](https://github.com/lebinh/ngxtop)
* upgrade ngx_pagespeed
* add ngx_pagespeed configs

## 1.0.8  (May 24, 2014)

* upgrade ngx_pagespeed
* configure ngx_pagespeed statistics paths

## 1.0.7  (April 25, 2014)

* add pagespeed_libraries.conf as it is needed for canonicalize_javascript_libraries
* upgrade nginx to 1.6.0
* add spdy module

## 1.0.6  (March 16, 2014)

* remove dependency to dop_base
* depreciate geoip and make use of http_geoip_module from opscode cookbook
* depreciate naxsi and make use of naxsi_module from opscode cookbook
* upgrade ngx_pagespeed
* upgrade geoip
* upgrade naxsi (see https://github.com/opscode-cookbooks/nginx/pull/200)
* introduce test-kitchen

## 1.0.5  (March 7, 2014)

* upgrade nginx to 1.4.6
* dont show nginx version (server_tokens)

## 1.0.4  (February 17, 2014)

* upgrade nginx to 1.4.5

## 1.0.3  (February 8, 2014)

* add logrotate

## 1.0.2  (January 20, 2014)

* upgrade ngx_pagespeed
* add option to disable ngx_pagespeed module (useful for local environments)

## 1.0.1  (November 18, 2013)

* upgrade & fix ngx_pagespeed

## 1.0.0  (September 21, 2013)

* Initial release of dop_nginx