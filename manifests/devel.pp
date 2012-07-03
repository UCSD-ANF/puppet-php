class php::devel {
  include 'php'

  case $::osfamily {
    Debian: { include php::devel::debian }
    RedHat: { include php::devel::redhat }
    Solaris: { include php::devel::solaris }
    default: { notice "Unsupported osfamily $::osfamily" }
  }
}
