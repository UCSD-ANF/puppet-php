class php::apache::common inherits php {

  if $::augeasversion {
    augeas { "default php.ini settings":
      context => "/files/${phpini}",
      changes => [
        "set PHP/allow_url_fopen Off",
        "set PHP/expose_php Off",
        "set PHP/enable_dl Off",
      ],
      notify => Service["apache"],
    }

    $manage_require = Augeas["default php.ini settings"]
  }

  apache::module { "php5":
    ensure  => present,
    require => $manage_require,
  }
}
