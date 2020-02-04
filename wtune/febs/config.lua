require("rand")
require("schema")

-- cache global to local
local _gen_default_value_f = _gen_default_value
local _gen_default_parameter_f = _gen_default_parameter
local _tables_t = tables

function get_table_size(_table_name)
    return _default_tables_size[_table_name]
end

function gen_value(_table_name, _col_name, _col_desc, _line_num)
    return _gen_default_value_f(_table_name, _col_name, _col_desc, _line_num)
end

function gen_parameter(_param_desc)
    local _api = _param_desc[1]
    local _sql = _param_desc[2]
    local _table = _param_desc[3]
    local _column = _param_desc[4]
    local _position = _param_desc[5]
    local _guessed_data_type = _param_desc[6]

    local _column_desc
    if _table ~= "" then
        _column_desc = _tables_t[_table][_column]
    end

    return _gen_default_parameter_f(_table, _column, _column_desc, _position, _guessed_data_type)
end
_default_tables_size = {
  ["qrtz_calendars"] = 10000,
  ["t_user_role"] = 10000,
  ["t_role"] = 10000,
  ["qrtz_cron_triggers"] = 10000,
  ["qrtz_simple_triggers"] = 10000,
  ["t_dept"] = 10000,
  ["qrtz_paused_trigger_grps"] = 10000,
  ["t_login_log"] = 10000,
  ["qrtz_job_details"] = 10000,
  ["t_eximport"] = 10000,
  ["t_job_log"] = 10000,
  ["t_menu"] = 10000,
  ["t_user"] = 10000,
  ["t_generator_config"] = 10000,
  ["t_log"] = 10000,
  ["qrtz_fired_triggers"] = 10000,
  ["qrtz_locks"] = 10000,
  ["t_role_menu"] = 10000,
  ["qrtz_scheduler_state"] = 10000,
  ["qrtz_simprop_triggers"] = 10000,
  ["qrtz_blob_triggers"] = 10000,
  ["t_job"] = 10000,
  ["qrtz_triggers"] = 10000,
}

_traces_dist = {
  { "API_1_POST_user_profile_update_1", -1 },
  { "API_2_GET_jobLog_1", -1 },
  { "API_3_POST_user_password_reset_Jana_1", -1 },
  { "API_4_POST_job_1", -1 },
  { "API_5_GET_dept_delete_x_1", -1 },
  { "API_6_GET_role_delete_x_1", -1 },
  { "API_7_GET_role_1", -1 },
  { "API_8_GET_log_list_1", -1 },
  { "API_8_GET_log_list_2", -1 },
  { "API_8_GET_log_list_3", -1 },
  { "API_9_POST_eximport_import_1", -1 },
  { "API_10_GET_dept_tree_1", -1 },
  { "API_10_GET_dept_tree_2", -1 },
  { "API_10_GET_dept_tree_3", -1 },
  { "API_11_GET_loginLog_list_1", -1 },
  { "API_11_GET_loginLog_list_2", -1 },
  { "API_12_POST_login_1", -1 },
  { "API_13_GET_febs_views_system_user_update_Georgie_1", -1 },
  { "API_14_GET_loginLog_excel_1", -1 },
  { "API_15_GET_eximport_excel_1", -1 },
  { "API_16_GET_febs_views_job_job_update_x_1", -1 },
  { "API_17_GET_febs_views_monitor_log_1", -1 },
  { "API_18_POST_generatorConfig_update_1", -1 },
  { "API_19_GET_job_1", -1 },
  { "API_20_POST_user_update_1", -1 },
  { "API_20_POST_user_update_2", -1 },
  { "API_21_POST_user_theme_update_1", -1 },
  { "API_22_GET_febs_views_system_user_detail_Jana_1", -1 },
  { "API_23_GET_loginLog_delete_x_1", -1 },
  { "API_24_GET_user_excel_1", -1 },
  { "API_25_GET_index_1", -1 },
  { "API_26_GET_job_excel_1", -1 },
  { "API_27_GET_menu_excel_1", -1 },
  { "API_28_POST_dept_1", -1 },
  { "API_29_GET_menu_delete_x_1", -1 },
  { "API_30_POST_menu_1", -1 },
  { "API_30_POST_menu_2", -1 },
  { "API_31_GET_febs_views_job_job_update_x_1", -1 },
  { "API_32_GET_user_check_Jana_1", -1 },
  { "API_33_GET_user_check_Georgie_1", -1 },
  { "API_34_POST_menu_update_1", -1 },
  { "API_35_GET_user_check_Nova_1", -1 },
  { "API_36_GET_job_delete_x_1", -1 },
  { "API_37_GET_dept_excel_1", -1 },
  { "API_38_POST_role_1", -1 },
  { "API_39_GET_menu_tree_1", -1 },
  { "API_40_GET_jobLog_delete_x_1", -1 },
  { "API_41_GET_log_delete_x_1", -1 },
  { "API_42_GET_job_pause_x_1", -1 },
  { "API_43_GET_job_run_x_1", -1 },
  { "API_44_GET_jobLog_delete_x_1", -1 },
  { "API_45_GET_user_delete_x_1", -1 },
  { "API_46_POST_job_update_1", -1 },
  { "API_47_POST_user_password_update_1", -1 },
  { "API_48_GET_febs_views_others_febs_icon_1", -1 },
  { "API_49_POST_role_update_1", -1 },
  { "API_49_POST_role_update_2", -1 },
  { "API_50_GET_index_MrBird_1", -1 },
  { "API_51_GET_generator_1", -1 },
  { "API_52_GET_febs_views_system_user_update_Jana_1", -1 },
  { "API_53_GET_job_resume_x_1", -1 },
  { "API_54_GET_dept_select_tree_1", -1 },
  { "API_55_GET_loginLog_delete_x_1", -1 },
  { "API_56_GET_febs_views_system_user_1", -1 },
  { "API_57_GET_febs_views_generator_configure_1", -1 },
  { "API_58_GET_eximport_1", -1 },
  { "API_59_GET_user_list_1", -1 },
  { "API_59_GET_user_list_2", -1 },
  { "API_59_GET_user_list_3", -1 },
  { "API_59_GET_user_list_4", -1 },
  { "API_59_GET_user_list_5", -1 },
  { "API_59_GET_user_list_6", -1 },
  { "API_60_POST_user_1", -1 },
  { "API_61_GET_role_list_1", -1 },
  { "API_61_GET_role_list_2", -1 },
  { "API_61_GET_role_list_3", -1 },
  { "API_62_GET_menu_MrBird_1", -1 },
}

