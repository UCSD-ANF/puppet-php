class php::devel::solaris {
  package { 'php5_dev':
    ensure   => installed,
    provider => 'pkgutil',
  }
}
