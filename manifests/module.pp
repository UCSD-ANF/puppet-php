define php::module ($ensure="present") {

  case $::osfamily {

    Debian: {
      $phpprefix = "php5-"
    }
    RedHat: {
      $phpprefix = "php-"
    }
    Solaris: {
      $phpprefix = 'php5_'
    }
    default: { notice "Unsupported operatingsystem ${::operatingsystem}" }
  }


  if defined(Package[$apache]) {
    package { "${phpprefix}${name}":
      ensure => $ensure,
      notify => Service["apache"],
    }
  }
  else {
    package { "${phpprefix}${name}":
      ensure => $ensure,
    }
  }

}
