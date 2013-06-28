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
    before  => File[ $php::phpinidir ],
    require => Package ['php5'],
  }

  File [ $php::phpinidir ] {
    owner   => 'root',
    group   => 'bin',
    mode    => '0755',
  }


}
