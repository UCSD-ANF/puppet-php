class php::debian inherits php::common {

  package { "php5-cli":
    ensure => installed,
    alias  => 'php-cli',
  }

}
