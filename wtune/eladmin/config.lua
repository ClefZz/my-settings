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
  ["quartz_log"] = 10000,
  ["role"] = 10000,
  ["log"] = 10000,
  ["alipay_config"] = 10000,
  ["users_roles"] = 10000,
  ["email_config"] = 10000,
  ["visits"] = 10000,
  ["roles_depts"] = 10000,
  ["roles_permissions"] = 10000,
  ["local_storage"] = 10000,
  ["qiniu_content"] = 10000,
  ["dict"] = 10000,
  ["user_avatar"] = 10000,
  ["permission"] = 10000,
  ["dept"] = 10000,
  ["gen_config"] = 10000,
  ["menu"] = 10000,
  ["picture"] = 10000,
  ["qiniu_config"] = 10000,
  ["roles_menus"] = 10000,
  ["dict_detail"] = 10000,
  ["quartz_job"] = 10000,
  ["job"] = 10000,
  ["user"] = 10000,
  ["verification_code"] = 10000,
}

_traces_dist = {
  { "API_1_GET_api_generator_tables_1", -1 },
  { "API_2_DELETE_api_permissions_x_1", -1 },
  { "API_3_GET_auth_info_1", -1 },
  { "API_4_DELETE_api_dept_x_1", -1 },
  { "API_5_DELETE_api_job_x_1", -1 },
  { "API_6_DELETE_api_dept_x_1", -1 },
  { "API_7_DELETE_api_permissions_x_1", -1 },
  { "API_8_PUT_api_aliPay_1", -1 },
  { "API_9_DELETE_api_job_x_1", -1 },
  { "API_10_DELETE_api_jobs_x_1", -1 },
  { "API_10_DELETE_api_jobs_x_2", -1 },
  { "API_11_GET_api_permissions_tree_1", -1 },
  { "API_11_GET_api_permissions_tree_2", -1 },
  { "API_11_GET_api_permissions_tree_3", -1 },
  { "API_11_GET_api_permissions_tree_4", -1 },
  { "API_12_GET_api_roles_all_1", -1 },
  { "API_12_GET_api_roles_all_2", -1 },
  { "API_12_GET_api_roles_all_3", -1 },
  { "API_13_GET_api_dept_1", -1 },
  { "API_13_GET_api_dept_2", -1 },
  { "API_13_GET_api_dept_3", -1 },
  { "API_13_GET_api_dept_4", -1 },
  { "API_13_GET_api_dept_5", -1 },
  { "API_13_GET_api_dept_6", -1 },
  { "API_13_GET_api_dept_7", -1 },
  { "API_13_GET_api_dept_8", -1 },
  { "API_13_GET_api_dept_9", -1 },
  { "API_13_GET_api_dept_10", -1 },
  { "API_13_GET_api_dept_11", -1 },
  { "API_13_GET_api_dept_12", -1 },
  { "API_13_GET_api_dept_13", -1 },
  { "API_13_GET_api_dept_14", -1 },
  { "API_13_GET_api_dept_15", -1 },
  { "API_13_GET_api_dept_16", -1 },
  { "API_13_GET_api_dept_17", -1 },
  { "API_13_GET_api_dept_18", -1 },
  { "API_14_DELETE_api_menus_x_1", -1 },
  { "API_15_GET_api_roles_x_1", -1 },
  { "API_16_PUT_api_roles_menu_1", -1 },
  { "API_16_PUT_api_roles_menu_2", -1 },
  { "API_17_POST_api_pictures_1", -1 },
  { "API_17_POST_api_pictures_2", -1 },
  { "API_17_POST_api_pictures_3", -1 },
  { "API_18_GET_api_roles_x_1", -1 },
  { "API_19_POST_api_dict_1", -1 },
  { "API_19_POST_api_dict_2", -1 },
  { "API_20_PUT_api_roles_permission_1", -1 },
  { "API_21_GET_api_localStorage_1", -1 },
  { "API_22_GET_api_visits_chartData_1", -1 },
  { "API_22_GET_api_visits_chartData_2", -1 },
  { "API_23_GET_api_visits_1", -1 },
  { "API_23_GET_api_visits_2", -1 },
  { "API_24_PUT_api_menus_1", -1 },
  { "API_24_PUT_api_menus_2", -1 },
  { "API_25_PUT_api_permissions_1", -1 },
  { "API_25_PUT_api_permissions_2", -1 },
  { "API_26_POST_api_email_1", -1 },
  { "API_27_DELETE_api_users_x_1", -1 },
  { "API_28_POST_api_users_updateEmail_x_1", -1 },
  { "API_29_PUT_api_jobs_exec_x_1", -1 },
  { "API_29_PUT_api_jobs_exec_x_2", -1 },
  { "API_30_DELETE_api_users_x_1", -1 },
  { "API_31_GET_api_email_1", -1 },
  { "API_32_GET_api_users_1", -1 },
  { "API_32_GET_api_users_2", -1 },
  { "API_32_GET_api_users_3", -1 },
  { "API_32_GET_api_users_4", -1 },
  { "API_32_GET_api_users_5", -1 },
  { "API_32_GET_api_users_6", -1 },
  { "API_32_GET_api_users_7", -1 },
  { "API_32_GET_api_users_8", -1 },
  { "API_32_GET_api_users_9", -1 },
  { "API_32_GET_api_users_10", -1 },
  { "API_32_GET_api_users_11", -1 },
  { "API_32_GET_api_users_12", -1 },
  { "API_32_GET_api_users_13", -1 },
  { "API_32_GET_api_users_14", -1 },
  { "API_32_GET_api_users_15", -1 },
  { "API_32_GET_api_users_16", -1 },
  { "API_32_GET_api_users_17", -1 },
  { "API_33_GET_api_logs_1", -1 },
  { "API_33_GET_api_logs_2", -1 },
  { "API_33_GET_api_logs_3", -1 },
  { "API_34_DELETE_api_menus_x_1", -1 },
  { "API_35_GET_api_logs_error_x_1", -1 },
  { "API_36_POST_auth_login_1", -1 },
  { "API_36_POST_auth_login_2", -1 },
  { "API_36_POST_auth_login_3", -1 },
  { "API_37_GET_api_permissions_1", -1 },
  { "API_37_GET_api_permissions_2", -1 },
  { "API_37_GET_api_permissions_3", -1 },
  { "API_37_GET_api_permissions_4", -1 },
  { "API_37_GET_api_permissions_5", -1 },
  { "API_37_GET_api_permissions_6", -1 },
  { "API_38_PUT_api_dictDetail_1", -1 },
  { "API_38_PUT_api_dictDetail_2", -1 },
  { "API_39_DELETE_api_roles_x_1", -1 },
  { "API_39_DELETE_api_roles_x_2", -1 },
  { "API_40_DELETE_api_dict_x_1", -1 },
  { "API_40_DELETE_api_dict_x_2", -1 },
  { "API_41_GET_api_logs_error_1", -1 },
  { "API_42_GET_api_pictures_1", -1 },
  { "API_42_GET_api_pictures_2", -1 },
  { "API_42_GET_api_pictures_3", -1 },
  { "API_43_POST_api_permissions_1", -1 },
  { "API_43_POST_api_permissions_2", -1 },
  { "API_44_PUT_api_dict_1", -1 },
  { "API_44_PUT_api_dict_2", -1 },
  { "API_45_POST_api_localStorage_1", -1 },
  { "API_46_GET_api_genConfig_1", -1 },
  { "API_47_GET_api_roles_level_1", -1 },
  { "API_48_DELETE_api_localStorage_x_1", -1 },
  { "API_49_GET_api_logs_error_x_1", -1 },
  { "API_50_POST_api_users_1", -1 },
  { "API_50_POST_api_users_2", -1 },
  { "API_51_GET_api_redis_1", -1 },
  { "API_52_POST_api_job_1", -1 },
  { "API_52_POST_api_job_2", -1 },
  { "API_53_GET_api_aliPay_1", -1 },
  { "API_54_GET_api_menus_tree_1", -1 },
  { "API_54_GET_api_menus_tree_2", -1 },
  { "API_54_GET_api_menus_tree_3", -1 },
  { "API_54_GET_api_menus_tree_4", -1 },
  { "API_55_GET_api_menus_build_1", -1 },
  { "API_55_GET_api_menus_build_2", -1 },
  { "API_55_GET_api_menus_build_3", -1 },
  { "API_56_GET_api_dict_1", -1 },
  { "API_56_GET_api_dict_2", -1 },
  { "API_56_GET_api_dict_3", -1 },
  { "API_56_GET_api_dict_4", -1 },
  { "API_56_GET_api_dict_5", -1 },
  { "API_57_PUT_api_roles_1", -1 },
  { "API_57_PUT_api_roles_2", -1 },
  { "API_57_PUT_api_roles_3", -1 },
  { "API_57_PUT_api_roles_4", -1 },
  { "API_58_PUT_api_users_1", -1 },
  { "API_58_PUT_api_users_2", -1 },
  { "API_59_DELETE_api_pictures_x_1", -1 },
  { "API_60_GET_api_qiNiuConfig_1", -1 },
  { "API_61_GET_api_dictDetail_1", -1 },
  { "API_61_GET_api_dictDetail_2", -1 },
  { "API_61_GET_api_dictDetail_3", -1 },
  { "API_61_GET_api_dictDetail_4", -1 },
  { "API_61_GET_api_dictDetail_5", -1 },
  { "API_61_GET_api_dictDetail_6", -1 },
  { "API_61_GET_api_dictDetail_7", -1 },
  { "API_61_GET_api_dictDetail_8", -1 },
  { "API_61_GET_api_dictDetail_9", -1 },
  { "API_62_DELETE_api_localStorage__1", -1 },
  { "API_63_GET_api_job_1", -1 },
  { "API_63_GET_api_job_2", -1 },
  { "API_63_GET_api_job_3", -1 },
  { "API_63_GET_api_job_4", -1 },
  { "API_63_GET_api_job_5", -1 },
  { "API_63_GET_api_job_6", -1 },
  { "API_63_GET_api_job_7", -1 },
  { "API_63_GET_api_job_8", -1 },
  { "API_64_GET_api_logs_user_1", -1 },
  { "API_64_GET_api_logs_user_2", -1 },
  { "API_65_DELETE_api_pictures__1", -1 },
  { "API_66_POST_api_users_updatePass__1", -1 },
  { "API_67_POST_api_dictDetail_1", -1 },
  { "API_67_POST_api_dictDetail_2", -1 },
  { "API_67_POST_api_dictDetail_3", -1 },
  { "API_68_GET_api_users_download_1", -1 },
  { "API_68_GET_api_users_download_2", -1 },
  { "API_69_PUT_api_jobs_1", -1 },
  { "API_69_PUT_api_jobs_2", -1 },
  { "API_70_POST_api_roles_1", -1 },
  { "API_70_POST_api_roles_2", -1 },
  { "API_71_POST_api_dept_1", -1 },
  { "API_71_POST_api_dept_2", -1 },
  { "API_72_POST_api_generator_1", -1 },
  { "API_73_POST_api_users_updateAvatar_1", -1 },
  { "API_73_POST_api_users_updateAvatar_2", -1 },
  { "API_74_PUT_api_localStorage_1", -1 },
  { "API_75_GET_api_roles_1", -1 },
  { "API_75_GET_api_roles_2", -1 },
  { "API_75_GET_api_roles_3", -1 },
  { "API_75_GET_api_roles_4", -1 },
  { "API_75_GET_api_roles_5", -1 },
  { "API_75_GET_api_roles_6", -1 },
  { "API_75_GET_api_roles_7", -1 },
  { "API_75_GET_api_roles_8", -1 },
  { "API_75_GET_api_roles_9", -1 },
  { "API_75_GET_api_roles_10", -1 },
  { "API_75_GET_api_roles_11", -1 },
  { "API_76_PUT_api_job_1", -1 },
  { "API_76_PUT_api_job_2", -1 },
  { "API_77_GET_api_jobLogs_1", -1 },
  { "API_77_GET_api_jobLogs_2", -1 },
  { "API_77_GET_api_jobLogs_3", -1 },
  { "API_78_DELETE_api_dept_x_1", -1 },
  { "API_79_PUT_api_genConfig_1", -1 },
  { "API_79_PUT_api_genConfig_2", -1 },
  { "API_80_GET_api_menus_1", -1 },
  { "API_80_GET_api_menus_2", -1 },
  { "API_80_GET_api_menus_3", -1 },
  { "API_80_GET_api_menus_4", -1 },
  { "API_81_PUT_api_email_1", -1 },
  { "API_81_PUT_api_email_2", -1 },
  { "API_81_PUT_api_email_3", -1 },
  { "API_81_PUT_api_email_4", -1 },
  { "API_82_PUT_api_dept_1", -1 },
  { "API_82_PUT_api_dept_2", -1 },
  { "API_83_POST_api_menus_1", -1 },
  { "API_83_POST_api_menus_2", -1 },
  { "API_84_GET_api_jobs_1", -1 },
  { "API_84_GET_api_jobs_2", -1 },
  { "API_84_GET_api_jobs_3", -1 },
  { "API_84_GET_api_jobs_4", -1 },
  { "API_84_GET_api_jobs_5", -1 },
  { "API_84_GET_api_jobs_6", -1 },
  { "API_85_POST_api_code_resetEmail_1", -1 },
  { "API_85_POST_api_code_resetEmail_2", -1 },
  { "API_86_PUT_api_jobs_x_1", -1 },
  { "API_86_PUT_api_jobs_x_2", -1 },
  { "API_86_PUT_api_jobs_x_3", -1 },
  { "API_86_PUT_api_jobs_x_4", -1 },
  { "API_87_DELETE_api_dictDetail_x_1", -1 },
  { "API_87_DELETE_api_dictDetail_x_2", -1 },
  { "API_88_GET_api_qiNiuContent_1", -1 },
  { "API_89_POST_api_jobs_1", -1 },
  { "API_89_POST_api_jobs_2", -1 },
  { "API_90_DELETE_api_dictDetail_x_1", -1 },
}

