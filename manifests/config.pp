class nginx::config inherits nginx {
  file { '/etc/nginx/conf.d/':
    ensure  => directory,
    owner   => 0,
    group   => 0,
    mode    => '0755',
  }

  file { '/var/log/nginx/':
    ensure  => directory,
    #owner   => 0,
    #group   => 0,
    mode    => '0755',
  }

  file { '/etc/nginx/conf.d/noodoo.conf':
    ensure  => 'present',
    replace => 'no',
    owner   => 0,
    group   => 0,
    mode    => 0644,
    content => template("$module_name/noodoo.conf.erb"),
    require => File['/etc/nginx/conf.d/'],
  }

  exec {'firewall-add-80-tcp':
    command => "/usr/bin/firewall-cmd --permanent --add-port=80/tcp",
    #require => Package["sphinx"],
  }

  exec {'firewall-reload':
    command => '/usr/bin/firewall-cmd --reload',
    require => Exec['firewall-add-80-tcp'],
  }
}
