data "template_file" "monkey_user_data" {
  template = "${file("${path.module}/monkey-userdata.tpl")}"

  vars {
    recorder_sdb_domain = "${var.recorder_sdb_domain}"
    client_localdb_enabled = "${var.client_localdb_enabled}"
    client_cloudformationmode_enabled = "${var.client_cloudformationmode_enabled}"
    scheduler_frequency = "${var.scheduler_frequency}"
    scheduler_frequencyunit = "${var.scheduler_frequencyunit}"
    scheduler_threads = "${var.scheduler_threads}"
    calendar_openhour = "${var.calendar_openhour}"
    calendar_closehour = "${var.calendar_closehour}"
    calendar_timezone = "${var.calendar_timezone}"
    calendar_ismonkeytime = "${var.calendar_ismonkeytime}"
    chaos_leashed = "${var.chaos_leashed}"
    chaos_burnmoney = "${var.chaos_burnmoney}"
    chaos_terminateondemand_enabled = "${var.chaos_terminateondemand_enabled}"
    chaos_mandatorytermination_enabled = "${var.chaos_mandatorytermination_enabled}"
    chaos_mandatorytermination_windowindays = "${var.chaos_mandatorytermination_windowindays}"
    chaos_mandatorytermination_defaultprobability = "${var.chaos_mandatorytermination_defaultprobability}"
    chaos_asg_enabled = "${var.chaos_asg_enabled}"
    chaos_asg_probability = "${var.chaos_asg_probability}"
    chaos_asg_maxterminationsperday = "${var.chaos_asg_maxterminationsperday}"
    chaos_asgtag_key = "${var.chaos_asgtag_key}"
    chaos_asgtag_value = "${var.chaos_asgtag_value}"
    chaos_shutdowninstance_enabled = "${var.chaos_shutdowninstance_enabled}"
    chaos_blockallnetworktraffic_enabled = "${var.chaos_blockallnetworktraffic_enabled}"
    chaos_detachvolumes_enabled = "${var.chaos_detachvolumes_enabled}"
    chaos_burncpu_enabled = "${var.chaos_burncpu_enabled}"
    chaos_burnio_enabled = "${var.chaos_burnio_enabled}"
    chaos_killprocesses_enabled = "${var.chaos_killprocesses_enabled}"
    chaos_nullroute_enabled = "${var.chaos_nullroute_enabled}"
    chaos_failec2_enabled = "${var.chaos_failec2_enabled}"
    chaos_faildns_enabled = "${var.chaos_faildns_enabled}"
    chaos_faildynamodb_enabled = "${var.chaos_faildynamodb_enabled}"
    chaos_fails3_enabled = "${var.chaos_fails3_enabled}"
    chaos_filldisk_enabled = "${var.chaos_filldisk_enabled}"
    chaos_networkcorruption_enabled = "${var.chaos_networkcorruption_enabled}"
    chaos_networklatency_enabled = "${var.chaos_networklatency_enabled}"
    chaos_networkloss_enabled = "${var.chaos_networkloss_enabled}"
    chaos_notification_global_enabled = "${var.chaos_notification_global_enabled}"
  }
}
