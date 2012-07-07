class php::common {
  file { $php::phpinidir :
    ensure  => directory,
    require => Package['php-cli'],
  }
}
