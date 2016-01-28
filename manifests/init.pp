class nginx (
  $package_ensure = $nginx::params::package_ensure,
  $service_ensure = $nginx::params::service_ensure,
  $www_root_path  = $nginx::params::www_root_path,
) inherits nginx::params {
  include nginx::install
  include nginx::config
  include nginx::service
}
