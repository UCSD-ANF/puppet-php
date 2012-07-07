class php::apache::solaris inherits php::apache::common {
  package { 'ap2_modphp5':
    ensure   => 'installed',
    provider => 'pkgutil',
  }

  file { '/opt/csw/apache2/etc/mods-available/php5.load':
    ensure => present,
    source => "puppet:///modules/${module_name}/httpd/php.load",
  }
}
