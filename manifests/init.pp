class nginx (
  $package_ensure = $nginx::params::package_ensure,
  $www_root_path  = $nginx::params::www_root_path,
) inherits nginx::params {
  include nginx::config
  include nginx::install
}
