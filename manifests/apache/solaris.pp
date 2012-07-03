class php::apache::solaris inherits php::apache::common {
  package { 'ap2_modphp5':
    ensure   => 'installed',
    provider => 'pkgutil',
  }
}
