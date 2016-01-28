class nginx::service inherits nginx {
  service { 'nginx': 
    enable => true, 
    ensure => $service_ensure, 
    require => Class['nginx::config'], 
    subscribe => File['/etc/nginx/conf.d/noodoo.conf'] 
  }
}
