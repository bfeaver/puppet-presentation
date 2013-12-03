class myapp {
	file { '/etc/app/parameters.ini':
    ensure => file,
    source => 'puppet:///modules/myapp/parameters.ini',
  }

  package { 'vim':
    ensure => present,
  }
}