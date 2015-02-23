
class profiles::rkhunter {

  $root_email = hiera('root_email')
  $syslog = hiera('syslog')

  $rkhunter-1 = hiera('rkhunter-1')
  $rkhunter-1-command = hiera('rkhunter-1-command')
  $rkhunter-1-hour = hiera('rkhunter-1-hour')
  $rkhunter-1-minute = hiera('rkhunter-1-minute')

  $rkhunter-2 = hiera('rkhunter-2')
  $rkhunter-2-command = hiera('rkhunter-2-command')
  $rkhunter-2-hour = hiera('rkhunter-2-hour')
  $rkhunter-2-minute = hiera('rkhunter-2-minute')

  $rkhunter-3 = hiera('rkhunter-3')
  $rkhunter-3-command = hiera('rkhunter-3-command')
  $rkhunter-3-hour = hiera('rkhunter-3-hour')
  $rkhunter-3-minute = hiera('rkhunter-3-minute')

  class { '::rkhunter':
    rootEmail    => "${root_email}",
    remoteSyslog => "${syslog}",
  }

  cron { "${rkhunter-1}":
    command => "${rkhunter-1-command}",
    user    => root,
    hour    => "${rkhunter-1-hour}",
    minute  => "${rkhunter-1-minute}",
  }

  cron { "${rkhunter-2}":
    command => "${rkhunter-2-command}",
    user    => root,
    hour    => "${rkhunter-2-hour}",
    minute  => "${rkhunter-2-minute}",
  }

  cron { "${rkhunter-3}":
    command => "${rkhunter-3-command}",
    user    => root,
    hour    => "${rkhunter-3-hour}",
    minute  => "${rkhunter-3-minute}",
  }

}
