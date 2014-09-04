# # # # # #
# redis2  #
# # # # # #
default['nginx']['redis2']['version'] = '0.11'
default['nginx']['redis2']['url'] = "https://codeload.github.com/openresty/redis2-nginx-module/tar.gz/v#{node['nginx']['redis2']['version']}"
default['nginx']['redis2']['checksum'] = '2b6f2ce44d6b8145b7cf96bc881848cb15dce0375359573167f2e32a302aa49b3c94477c136dab226eaa74326244a3822d75e0658e215169a7def5b107c80099'
