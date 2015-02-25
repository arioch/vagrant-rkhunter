#
class profiles::rkhunter {

  $root_email = hiera('root_email')
  $syslog = hiera('syslog')

  class { '::rkhunter':
    rootEmail    => "${root_email}",
    remoteSyslog => "${syslog}",
  }

}