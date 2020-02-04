tables = {
  ["qrtz_calendars"] = {
    ["calendar"] = {
      data_type = {"lob", "blob", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["sched_name"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["calendar_name"] = {
      data_type = {"string_like", "varchar", 200, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["t_user_role"] = {
    ["USER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ROLE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["t_role"] = {
    ["ROLE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
    ["ROLE_NAME"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CREATE_TIME"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["REMARK"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MODIFY_TIME"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["qrtz_cron_triggers"] = {
    ["trigger_name"] = {
      data_type = {"string_like", "varchar", 200, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["sched_name"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["cron_expression"] = {
      data_type = {"string_like", "varchar", 200, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["time_zone_id"] = {
      data_type = {"string_like", "varchar", 80, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["trigger_group"] = {
      data_type = {"string_like", "varchar", 200, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["qrtz_simple_triggers"] = {
    ["trigger_name"] = {
      data_type = {"string_like", "varchar", 200, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["sched_name"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["repeat_interval"] = {
      data_type = {"integral", "bigint", 12, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["repeat_count"] = {
      data_type = {"integral", "bigint", 7, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["times_triggered"] = {
      data_type = {"integral", "bigint", 10, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["trigger_group"] = {
      data_type = {"string_like", "varchar", 200, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["t_dept"] = {
    ["DEPT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
    ["ORDER_NUM"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DEPT_NAME"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CREATE_TIME"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MODIFY_TIME"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PARENT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["qrtz_paused_trigger_grps"] = {
    ["sched_name"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["trigger_group"] = {
      data_type = {"string_like", "varchar", 200, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["t_login_log"] = {
    ["LOCATION"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SYSTEM"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LOGIN_TIME"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["BROWSER"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["IP"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["USERNAME"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ID"] = {
      data_type = {"integral", "bigint", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
  },
  ["qrtz_job_details"] = {
    ["job_class_name"] = {
      data_type = {"string_like", "varchar", 250, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["is_durable"] = {
      data_type = {"string_like", "varchar", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["is_update_data"] = {
      data_type = {"string_like", "varchar", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["sched_name"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["job_name"] = {
      data_type = {"string_like", "varchar", 200, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["job_group"] = {
      data_type = {"string_like", "varchar", 200, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["is_nonconcurrent"] = {
      data_type = {"string_like", "varchar", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["job_data"] = {
      data_type = {"lob", "blob", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["description"] = {
      data_type = {"string_like", "varchar", 250, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["requests_recovery"] = {
      data_type = {"string_like", "varchar", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["t_eximport"] = {
    ["FIELD2"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["FIELD3"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CREATE_TIME"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["FIELD1"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["t_job_log"] = {
    ["JOB_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["STATUS"] = {
      data_type = {"string_like", "char", 2, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TIMES"] = {
      data_type = {"decimal", "decimal", 11, 0},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["BEAN_NAME"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["METHOD_NAME"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ERROR"] = {
      data_type = {"string_like", "text", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PARAMS"] = {
      data_type = {"string_like", "varchar", 200, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CREATE_TIME"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LOG_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
  },
  ["t_menu"] = {
    ["ORDER_NUM"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PERMS"] = {
      data_type = {"string_like", "text", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["MENU_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
    ["ICON"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CREATE_TIME"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["MENU_NAME"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TYPE"] = {
      data_type = {"string_like", "char", 2, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["URL"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MODIFY_TIME"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PARENT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["t_user"] = {
    ["DEPT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["THEME"] = {
      data_type = {"string_like", "varchar", 10, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["USER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
    ["EMAIL"] = {
      data_type = {"string_like", "varchar", 128, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["IS_TAB"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["STATUS"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PASSWORD"] = {
      data_type = {"string_like", "varchar", 128, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["LAST_LOGIN_TIME"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SSEX"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DESCRIPTION"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["USERNAME"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CREATE_TIME"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["AVATAR"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MODIFY_TIME"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MOBILE"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["t_generator_config"] = {
    ["controller_package"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["base_package"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["entity_package"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["author"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["trim_value"] = {
      data_type = {"string_like", "varchar", 10, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["service_package"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["mapper_package"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["is_trim"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["mapper_xml_package"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["service_impl_package"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["t_log"] = {
    ["OPERATION"] = {
      data_type = {"string_like", "text", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["IP"] = {
      data_type = {"string_like", "varchar", 64, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["USERNAME"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["METHOD"] = {
      data_type = {"string_like", "text", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TIME"] = {
      data_type = {"decimal", "decimal", 11, 0},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["location"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
    ["PARAMS"] = {
      data_type = {"string_like", "text", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CREATE_TIME"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["qrtz_fired_triggers"] = {
    ["instance_name"] = {
      data_type = {"string_like", "varchar", 200, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["sched_name"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["job_group"] = {
      data_type = {"string_like", "varchar", 200, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["is_nonconcurrent"] = {
      data_type = {"string_like", "varchar", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["priority"] = {
      data_type = {"integral", "integer", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["trigger_group"] = {
      data_type = {"string_like", "varchar", 200, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["sched_time"] = {
      data_type = {"integral", "bigint", 13, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["trigger_name"] = {
      data_type = {"string_like", "varchar", 200, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["job_name"] = {
      data_type = {"string_like", "varchar", 200, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["requests_recovery"] = {
      data_type = {"string_like", "varchar", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["fired_time"] = {
      data_type = {"integral", "bigint", 13, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["state"] = {
      data_type = {"string_like", "varchar", 16, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["entry_id"] = {
      data_type = {"string_like", "varchar", 95, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["qrtz_locks"] = {
    ["lock_name"] = {
      data_type = {"string_like", "varchar", 40, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["sched_name"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["t_role_menu"] = {
    ["ROLE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["MENU_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["qrtz_scheduler_state"] = {
    ["instance_name"] = {
      data_type = {"string_like", "varchar", 200, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["sched_name"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["last_checkin_time"] = {
      data_type = {"integral", "bigint", 13, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["checkin_interval"] = {
      data_type = {"integral", "bigint", 13, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["qrtz_simprop_triggers"] = {
    ["sched_name"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["long_prop_2"] = {
      data_type = {"integral", "bigint", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["long_prop_1"] = {
      data_type = {"integral", "bigint", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["str_prop_3"] = {
      data_type = {"string_like", "varchar", 512, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["str_prop_2"] = {
      data_type = {"string_like", "varchar", 512, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["str_prop_1"] = {
      data_type = {"string_like", "varchar", 512, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["trigger_group"] = {
      data_type = {"string_like", "varchar", 200, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["trigger_name"] = {
      data_type = {"string_like", "varchar", 200, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["bool_prop_1"] = {
      data_type = {"string_like", "varchar", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["bool_prop_2"] = {
      data_type = {"string_like", "varchar", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["int_prop_1"] = {
      data_type = {"integral", "int", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["int_prop_2"] = {
      data_type = {"integral", "int", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["dec_prop_2"] = {
      data_type = {"decimal", "numeric", 13, 4},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["dec_prop_1"] = {
      data_type = {"decimal", "numeric", 13, 4},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["qrtz_blob_triggers"] = {
    ["trigger_name"] = {
      data_type = {"string_like", "varchar", 200, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["sched_name"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["blob_data"] = {
      data_type = {"lob", "blob", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["trigger_group"] = {
      data_type = {"string_like", "varchar", 200, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["t_job"] = {
    ["JOB_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
    ["STATUS"] = {
      data_type = {"string_like", "char", 2, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CRON_EXPRESSION"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["BEAN_NAME"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["METHOD_NAME"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PARAMS"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CREATE_TIME"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["REMARK"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["qrtz_triggers"] = {
    ["sched_name"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["job_group"] = {
      data_type = {"string_like", "varchar", 200, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["trigger_type"] = {
      data_type = {"string_like", "varchar", 8, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["end_time"] = {
      data_type = {"integral", "bigint", 13, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["description"] = {
      data_type = {"string_like", "varchar", 250, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["trigger_state"] = {
      data_type = {"string_like", "varchar", 16, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["priority"] = {
      data_type = {"integral", "integer", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["calendar_name"] = {
      data_type = {"string_like", "varchar", 200, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["trigger_group"] = {
      data_type = {"string_like", "varchar", 200, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["misfire_instr"] = {
      data_type = {"integral", "smallint", 2, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["trigger_name"] = {
      data_type = {"string_like", "varchar", 200, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["start_time"] = {
      data_type = {"integral", "bigint", 13, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["job_name"] = {
      data_type = {"string_like", "varchar", 200, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["job_data"] = {
      data_type = {"lob", "blob", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["prev_fire_time"] = {
      data_type = {"integral", "bigint", 13, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["next_fire_time"] = {
      data_type = {"integral", "bigint", 13, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
}

