tables = {
  ["sys_dict_type"] = {
    ["update_time"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["code"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["update_user"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["create_time"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["system_flag"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["dict_type_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["name"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["description"] = {
      data_type = {"string_like", "varchar", 1000, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["sort"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["create_user"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["status"] = {
      data_type = {"string_like", "varchar", 10, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["sys_relation"] = {
    ["role_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["menu_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["relation_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["sys_menu"] = {
    ["code"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["create_time"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["pcode"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["open_flag"] = {
      data_type = {"string_like", "varchar", 32, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["new_page_flag"] = {
      data_type = {"string_like", "varchar", 32, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["icon"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["description"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["sort"] = {
      data_type = {"integral", "int", 65, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["url"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["update_time"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["pcodes"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["update_user"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["menu_flag"] = {
      data_type = {"string_like", "varchar", 32, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["name"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["create_user"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["menu_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["levels"] = {
      data_type = {"integral", "int", 65, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["status"] = {
      data_type = {"string_like", "varchar", 32, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["sys_operation_log"] = {
    ["operation_log_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["log_type"] = {
      data_type = {"string_like", "varchar", 32, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["method"] = {
      data_type = {"string_like", "text", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["create_time"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["log_name"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["user_id"] = {
      data_type = {"integral", "bigint", 65, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["succeed"] = {
      data_type = {"string_like", "varchar", 32, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["message"] = {
      data_type = {"string_like", "text", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["class_name"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["sys_user"] = {
    ["birthday"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["salt"] = {
      data_type = {"string_like", "varchar", 45, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["create_time"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["sex"] = {
      data_type = {"string_like", "varchar", 32, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["avatar"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["version"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["password"] = {
      data_type = {"string_like", "varchar", 45, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["update_time"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["update_user"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["user_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["phone"] = {
      data_type = {"string_like", "varchar", 45, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["role_id"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["name"] = {
      data_type = {"string_like", "varchar", 45, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["create_user"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["dept_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["account"] = {
      data_type = {"string_like", "varchar", 45, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["email"] = {
      data_type = {"string_like", "varchar", 45, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["status"] = {
      data_type = {"string_like", "varchar", 32, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["sys_dept"] = {
    ["update_time"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["simple_name"] = {
      data_type = {"string_like", "varchar", 45, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["full_name"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["update_user"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["create_time"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["description"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["pid"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["sort"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["create_user"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["dept_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["pids"] = {
      data_type = {"string_like", "varchar", 512, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["version"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["sys_login_log"] = {
    ["create_time"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["log_name"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["user_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["succeed"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ip_address"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["message"] = {
      data_type = {"string_like", "text", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["login_log_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["sys_dict"] = {
    ["dict_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["code"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["create_time"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["dict_type_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["description"] = {
      data_type = {"string_like", "varchar", 1000, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["sort"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["parent_ids"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["update_time"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["update_user"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["parent_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["name"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["create_user"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["status"] = {
      data_type = {"string_like", "varchar", 10, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["sys_file_info"] = {
    ["update_time"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["update_user"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["create_time"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["file_id"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["create_user"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["file_data"] = {
      data_type = {"string_like", "text", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["sys_role"] = {
    ["update_time"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["update_user"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["create_time"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["role_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["name"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["description"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["pid"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["sort"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["create_user"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["version"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["sys_notice"] = {
    ["update_time"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["update_user"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["create_time"] = {
      data_type = {"datetime_like", "datetime", 0, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["create_user"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["title"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["notice_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["content"] = {
      data_type = {"string_like", "text", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
}

