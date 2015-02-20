
class profiles::rkhunter {

  $root_email = hiera('root_email')

  class { '::rkhunter':
    rootEmail => "${root_email}",
  }

}