class nginx::service inherits nginx {
  if $service_manage {
    service { 'nginx': 
      enable => true, 
      ensure => $service_ensure, 
      require => Class['nginx::config'], 
      subscribe => File['/etc/nginx/conf.d/noodoo.conf'] 
    }
  }
}
