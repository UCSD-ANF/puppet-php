class php::solaris {

  package { 'php5':
    ensure   => installed,
    provider => 'pkgutil',
  }

}
