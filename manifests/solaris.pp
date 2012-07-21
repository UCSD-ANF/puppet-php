class php::solaris inherits php::common {

  package { 'php5':
    ensure   => installed,
    alias    => 'php-cli',
  }

  file { '/etc/opt/csw/php5' :
    ensure  => directory,
    owner   => 'root',
    group   => 'bin',
    mode    => '0755',
    before  => File[ $phpinidir ],
    require => Package ['php5'],
  }

  File [ $phpinidir ] {
    owner   => 'root',
    group   => 'bin',
    mode    => '0755',
  }


}
