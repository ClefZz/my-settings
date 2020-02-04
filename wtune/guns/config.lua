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
  ["sys_dict_type"] = 10000,
  ["sys_relation"] = 10000,
  ["sys_menu"] = 10000,
  ["sys_operation_log"] = 10000,
  ["sys_user"] = 10000,
  ["sys_dept"] = 10000,
  ["sys_login_log"] = 10000,
  ["sys_dict"] = 10000,
  ["sys_file_info"] = 10000,
  ["sys_role"] = 10000,
  ["sys_notice"] = 10000,
}

_traces_dist = {
  { "API_1_GET_mgr_1", -1 },
  { "API_2_POST_dept_add_1", -1 },
  { "API_3_POST_mgr_reset_1", -1 },
  { "API_4_GET_notice_list_1", -1 },
  { "API_4_GET_notice_list_2", -1 },
  { "API_4_GET_notice_list_3", -1 },
  { "API_4_GET_notice_list_4", -1 },
  { "API_4_GET_notice_list_5", -1 },
  { "API_5_POST_dictType_delete_1", -1 },
  { "API_6_POST_dictType_editItem_1", -1 },
  { "API_7_POST_mgr_add_1", -1 },
  { "API_8_POST_notice_delete_1", -1 },
  { "API_9_POST_log_delLog_1", -1 },
  { "API_10_POST_role_add_1", -1 },
  { "API_11_POST_menu_remove_1", -1 },
  { "API_12_POST_role_roleTreeListByUserId_x_1", -1 },
  { "API_13_GET_log_list_1", -1 },
  { "API_13_GET_log_list_2", -1 },
  { "API_13_GET_log_list_3", -1 },
  { "API_13_GET_log_list_4", -1 },
  { "API_13_GET_log_list_5", -1 },
  { "API_13_GET_log_list_6", -1 },
  { "API_14_GET_mgr_list_1", -1 },
  { "API_14_GET_mgr_list_2", -1 },
  { "API_14_GET_mgr_list_3", -1 },
  { "API_15_GET_mgr_user_edit_1", -1 },
  { "API_16_POST_menu_add_1", -1 },
  { "API_17_GET_dept_list_1", -1 },
  { "API_17_GET_dept_list_2", -1 },
  { "API_17_GET_dept_list_3", -1 },
  { "API_18_POST_menu_menuTreeListByRoleId_x_1", -1 },
  { "API_19_POST_menu_getMenuInfo_1", -1 },
  { "API_20_POST_dept_tree_1", -1 },
  { "API_21_GET_loginLog_list_1", -1 },
  { "API_21_GET_loginLog_list_2", -1 },
  { "API_22_POST_mgr_edit_1", -1 },
  { "API_22_POST_mgr_edit_2", -1 },
  { "API_23_GET_menu_menu_add_1", -1 },
  { "API_24_POST_menu_edit_1", -1 },
  { "API_25_POST_dept_update_1", -1 },
  { "API_26_POST_mgr_changePwd_1", -1 },
  { "API_27_POST_dictType_addItem_1", -1 },
  { "API_28_GET__1", -1 },
  { "API_28_GET__2", -1 },
  { "API_29_POST_dictType_detail_1", -1 },
  { "API_30_POST_login_1", -1 },
  { "API_31_GET_system_notice_1", -1 },
  { "API_32_POST_dept_delete_1", -1 },
  { "API_33_POST_dept_detail_x_1", -1 },
  { "API_34_GET_dept_dept_update_1", -1 },
  { "API_35_POST_role_roleTreeList_1", -1 },
  { "API_36_GET_dictType_list_1", -1 },
  { "API_36_GET_dictType_list_2", -1 },
  { "API_36_GET_dictType_list_3", -1 },
  { "API_36_GET_dictType_list_4", -1 },
  { "API_37_GET_menu_listTree_1", -1 },
  { "API_37_GET_menu_listTree_2", -1 },
  { "API_37_GET_menu_listTree_3", -1 },
  { "API_38_POST_role_roleTreeListByUserId_x_1", -1 },
  { "API_39_POST_log_detail_x_1", -1 },
  { "API_40_POST_menu_selectMenuTreeList_1", -1 },
  { "API_41_POST_mgr_getUserInfo_1", -1 },
  { "API_42_GET_dept_dept_add_1", -1 },
  { "API_43_GET_notice_notice_update_x_1", -1 },
  { "API_44_POST_notice_update_1", -1 },
  { "API_45_POST_role_setAuthority_1", -1 },
  { "API_46_POST_notice_add_1", -1 },
  { "API_47_GET_menu_menu_edit_1", -1 },
  { "API_48_GET_role_list_1", -1 },
  { "API_48_GET_role_list_2", -1 },
  { "API_48_GET_role_list_3", -1 },
  { "API_49_POST_mgr_setRole_1", -1 },
  { "API_50_GET_system_previewAvatar_1", -1 },
}

