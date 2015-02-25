#rkhunter.pp
#
#
class roles::rkhunter {

  include profiles::rkhunter
  include profiles::rkhunter_cron

}
