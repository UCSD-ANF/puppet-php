class php {

  case $::osfamily {

    Debian: {
      $phpini = "/etc/php5/cli/php.ini"
      $phpinidir = "/etc/php5/conf.d/"

      include php::debian
    }
    RedHat: {
      $phpini = "/etc/php.ini"
      $phpinidir = "/etc/php.d/"

      include php::redhat
    }
    Solaris: {
      $phpini = '/etc/opt/csw/php5/php.ini'
      $phpinidir = '/etc/opt/csw/php5/conf.d'
      Package { provider => 'pkgutil' }

      include php::solaris
    }
    default: { notice "Unsupported operatingsystem ${::operatingsystem}" }
  }

}
