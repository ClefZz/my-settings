tables = {
  ["cms_comment"] = {
    ["check_user_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["content_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["reply_user_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["update_date"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["reply_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["user_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["check_date"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["site_id"] = {
      data_type = {"integral", "smallint", 6, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["disabled"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
    ["text"] = {
      data_type = {"string_like", "text", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["create_date"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["status"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["cms_content_attribute"] = {
    ["word_count"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["data"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["content_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["source"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["text"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["source_url"] = {
      data_type = {"string_like", "varchar", 1000, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["search_text"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["sys_app_token"] = {
    ["expiry_date"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["auth_token"] = {
      data_type = {"string_like", "varchar", 40, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["create_date"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["app_id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["sys_app"] = {
    ["app_key"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["expiry_minutes"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["authorized_apis"] = {
      data_type = {"string_like", "text", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["site_id"] = {
      data_type = {"integral", "smallint", 6, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["channel"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
    ["app_secret"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["sys_role_authorized"] = {
    ["role_id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["url"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["cms_word"] = {
    ["hidden"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["site_id"] = {
      data_type = {"integral", "smallint", 6, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["name"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
    ["create_date"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["search_count"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["log_login"] = {
    ["result"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["error_password"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["user_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ip"] = {
      data_type = {"string_like", "varchar", 64, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["site_id"] = {
      data_type = {"integral", "smallint", 6, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["name"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["channel"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
    ["create_date"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["cms_category"] = {
    ["code"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["contain_child"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["hidden"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["type_id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["template_path"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["sort"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["child_ids"] = {
      data_type = {"string_like", "text", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["only_url"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["allow_contribute"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["url"] = {
      data_type = {"string_like", "varchar", 1000, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["path"] = {
      data_type = {"string_like", "varchar", 1000, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["tag_type_ids"] = {
      data_type = {"string_like", "text", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["parent_id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["extend_id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["site_id"] = {
      data_type = {"integral", "smallint", 6, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["name"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["content_path"] = {
      data_type = {"string_like", "varchar", 1000, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["disabled"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
    ["has_static"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["page_size"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["sys_role"] = {
    ["show_all_module"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["site_id"] = {
      data_type = {"integral", "smallint", 6, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["name"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["owns_all_right"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
  },
  ["sys_task"] = {
    ["file_path"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["cron_expression"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["site_id"] = {
      data_type = {"integral", "smallint", 6, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["name"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["description"] = {
      data_type = {"string_like", "varchar", 300, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
    ["update_date"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["status"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["cms_dictionary"] = {
    ["site_id"] = {
      data_type = {"integral", "smallint", 6, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["name"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["multiple"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["sys_extend"] = {
    ["item_id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["item_type"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
  },
  ["sys_user"] = {
    ["salt"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["weak_password"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["roles"] = {
      data_type = {"string_like", "text", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["last_login_date"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["email_checked"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["login_count"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["password"] = {
      data_type = {"string_like", "varchar", 128, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["owns_all_content"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["last_login_ip"] = {
      data_type = {"string_like", "varchar", 64, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["nick_name"] = {
      data_type = {"string_like", "varchar", 45, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["site_id"] = {
      data_type = {"integral", "smallint", 6, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["name"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["superuser_access"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["disabled"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
    ["dept_id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["registered_date"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["email"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["sys_dept"] = {
    ["owns_all_category"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["user_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["parent_id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["owns_all_page"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["owns_all_config"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["site_id"] = {
      data_type = {"integral", "smallint", 6, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["name"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["description"] = {
      data_type = {"string_like", "varchar", 300, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
    ["max_sort"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["sys_domain"] = {
    ["path"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["name"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["site_id"] = {
      data_type = {"integral", "smallint", 6, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["wild"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["cms_tag_type"] = {
    ["site_id"] = {
      data_type = {"integral", "smallint", 6, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["name"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["count"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
  },
  ["sys_role_user"] = {
    ["role_id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["user_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["cms_content_file"] = {
    ["file_path"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["content_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["user_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["file_type"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["clicks"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["description"] = {
      data_type = {"string_like", "varchar", 300, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
    ["sort"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["file_size"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["sys_app_client"] = {
    ["user_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["last_login_ip"] = {
      data_type = {"string_like", "varchar", 64, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["site_id"] = {
      data_type = {"integral", "smallint", 6, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["channel"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["disabled"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
    ["client_version"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["last_login_date"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["create_date"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["uuid"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["sys_module_lang"] = {
    ["module_id"] = {
      data_type = {"string_like", "varchar", 30, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["lang"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["value"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["sys_site"] = {
    ["dynamic_path"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["use_ssi"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["use_static"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["parent_id"] = {
      data_type = {"integral", "smallint", 6, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["name"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["site_path"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["disabled"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"integral", "smallint", 6, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
  },
  ["sys_config_data"] = {
    ["code"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["data"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["site_id"] = {
      data_type = {"integral", "smallint", 6, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["log_task"] = {
    ["result"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["success"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["site_id"] = {
      data_type = {"integral", "smallint", 6, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["endtime"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["task_id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["begintime"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
  },
  ["sys_dept_category"] = {
    ["category_id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["dept_id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["sys_module"] = {
    ["authorized_url"] = {
      data_type = {"string_like", "text", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["parent_id"] = {
      data_type = {"string_like", "varchar", 30, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["attached"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"string_like", "varchar", 30, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["sort"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["menu"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["url"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["log_upload"] = {
    ["file_path"] = {
      data_type = {"string_like", "varchar", 500, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["user_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["file_type"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["original_name"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ip"] = {
      data_type = {"string_like", "varchar", 64, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["site_id"] = {
      data_type = {"integral", "smallint", 6, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["channel"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
    ["create_date"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["file_size"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["sys_dept_page"] = {
    ["page"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["dept_id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["cms_category_model"] = {
    ["category_id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["template_path"] = {
      data_type = {"string_like", "varchar", 200, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["model_id"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["log_operate"] = {
    ["operate"] = {
      data_type = {"string_like", "varchar", 40, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["user_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ip"] = {
      data_type = {"string_like", "varchar", 64, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["site_id"] = {
      data_type = {"integral", "smallint", 6, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["channel"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
    ["create_date"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["content"] = {
      data_type = {"string_like", "text", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["cms_place"] = {
    ["check_user_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["item_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["item_type"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["expiry_date"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["title"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["url"] = {
      data_type = {"string_like", "varchar", 1000, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["cover"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["path"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["user_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["site_id"] = {
      data_type = {"integral", "smallint", 6, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["clicks"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["disabled"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
    ["create_date"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["publish_date"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["status"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["sys_role_module"] = {
    ["module_id"] = {
      data_type = {"string_like", "varchar", 30, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["role_id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["sys_user_token"] = {
    ["user_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["expiry_date"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["site_id"] = {
      data_type = {"integral", "smallint", 6, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["channel"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["auth_token"] = {
      data_type = {"string_like", "varchar", 40, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["create_date"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["login_ip"] = {
      data_type = {"string_like", "varchar", 64, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["cms_category_attribute"] = {
    ["category_id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["keywords"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["data"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["description"] = {
      data_type = {"string_like", "varchar", 300, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["title"] = {
      data_type = {"string_like", "varchar", 80, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["cms_tag"] = {
    ["type_id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["site_id"] = {
      data_type = {"integral", "smallint", 6, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["name"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
    ["search_count"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["sys_email_token"] = {
    ["user_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["expiry_date"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["auth_token"] = {
      data_type = {"string_like", "varchar", 40, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["create_date"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["email"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["sys_extend_field"] = {
    ["code"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["maxlength"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["extend_id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["name"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["input_type"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["description"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["default_value"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["sort"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["required"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["searchable"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["dictionary_id"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["cms_dictionary_data"] = {
    ["site_id"] = {
      data_type = {"integral", "smallint", 6, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["text"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["value"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["dictionary_id"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["sys_dept_config"] = {
    ["dept_id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["config"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["cms_place_attribute"] = {
    ["data"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["place_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["cms_content_related"] = {
    ["content_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["related_content_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["user_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["description"] = {
      data_type = {"string_like", "varchar", 300, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["clicks"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
    ["sort"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["title"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["url"] = {
      data_type = {"string_like", "varchar", 1000, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["sys_cluster"] = {
    ["heartbeat_date"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["cms_version"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["create_date"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["uuid"] = {
      data_type = {"string_like", "varchar", 40, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["master"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["cms_category_type"] = {
    ["extend_id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["site_id"] = {
      data_type = {"integral", "smallint", 6, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["name"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
    ["sort"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["cms_content"] = {
    ["check_user_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["copied"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["scores"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["has_images"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["description"] = {
      data_type = {"string_like", "varchar", 300, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["title"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["childs"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["cover"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["category_id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["check_date"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["disabled"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
    ["has_static"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["create_date"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["editor"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["tag_ids"] = {
      data_type = {"string_like", "text", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["comments"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["has_files"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["dictionar_values"] = {
      data_type = {"string_like", "text", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["author"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["expiry_date"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["quote_content_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["model_id"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["sort"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["only_url"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["url"] = {
      data_type = {"string_like", "varchar", 1000, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["update_date"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["user_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["parent_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["site_id"] = {
      data_type = {"integral", "smallint", 6, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["clicks"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["publish_date"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["status"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
}

