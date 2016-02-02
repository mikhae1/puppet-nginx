class nginx::install inherits nginx {
  package { 'nginx':
    ensure => $package_ensure,
    before => Class['nginx::config'],
  }
}
