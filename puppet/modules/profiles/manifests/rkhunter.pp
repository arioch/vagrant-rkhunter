#
class profiles::rkhunter {

  include ::rkhunter

$rkhunter_cron_propupd = hiera('rkhunter::cron_propupd')
$rkhunter_cron_rpm = hiera('rkhunter::cron_rpm')
$rkhunter_cron_check = hiera('rkhunter::cron_check')

 if $rkhunter_cron_propupd {

  cron { 'rkhunter propupd':
    command => 'rkhunter --propupd | logger -t RKHUNTER_PROPUPD',
    user    => root,
    hour    => '2',
    minute  => '10',
  }

  }

  if $rkhunter_cron_rpm {
  
  cron { 'rkhunter pkgmgr RPM':
    command => 'rkhunter --propupd --pkgmgr RPM | logger -t RKHUNTER_RPM',
    user    => root,
    hour    => '2',
    minute  => '15',
  }

  }

  if $rkhunter_cron_check {
  
  cron { 'rkhunter check':
    command => 'rkhunter --check --sk | logger -t RKHUNTER_CHECK',
    user    => root,
    hour    => '2',
    minute  => '20',
  }

  }

}