# Define a PHP configuration file snippet
#
# This is a basic wrapper around a file resource that keeps the caller
# from having to know much about the internals of the PHP
# implementation on the current host
#
# The contents (specified with either the source or the content variable)
# will go in the directory $php::phpinidir with the filename ${name}.ini
#
define php::config (
  $source  = undef,
  $content = undef,
  $ensure  = 'present'
) {
  include 'php'

  file { "${php::phpinidir}/${name}.ini" :
    source  => $source,
    content => $content,
    ensure  => $ensure,
    require => Package['php'],
    notify  => Service['apache'],
  }
}
