class nginx::params {
  $package_ensure = 'present'
  $service_ensure = 'running'
  $www_root_path  = '/var/www/noodoo'
}
