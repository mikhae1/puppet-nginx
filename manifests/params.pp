class nginx::params {
  $package_ensure = 'present'
  $service_manage = true
  $service_ensure = 'running'
  $www_root_path  = '/var/www/noodoo/app'
}
