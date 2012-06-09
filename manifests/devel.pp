class php::devel {
  include 'php'

  case $::osfamily {
    Debian: { include php::devel::debian }
    RedHat: { include php::devel::redhat }
    default: { notice "Unsupported osfamily $::osfamily" }
  }
}
