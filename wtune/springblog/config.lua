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
  ["posts_tags"] = 10000,
  ["settings"] = 10000,
  ["posts"] = 10000,
  ["users"] = 10000,
  ["tags"] = 10000,
}

_traces_dist = {
  { "API_1_GET_tags_1", -1 },
  { "API_2_POST_admin_users_x_1", -1 },
  { "API_2_POST_admin_users_x_2", -1 },
  { "API_3_GET_admin_users_profile_1", -1 },
  { "API_4_GET__1", -1 },
  { "API_5_GET_login_1", -1 },
  { "API_6_POST_admin_posts_1", -1 },
  { "API_6_POST_admin_posts_2", -1 },
  { "API_6_POST_admin_posts_3", -1 },
  { "API_7_POST_admin_posts_x_delete_1", -1 },
  { "API_7_POST_admin_posts_x_delete_2", -1 },
  { "API_8_POST_admin_posts_x_delete_1", -1 },
  { "API_9_GET_admin_posts_x_edit_1", -1 },
  { "API_10_GET_about_1", -1 },
  { "API_11_GET_admin_posts_1", -1 },
  { "API_12_GET_admin_posts_x_edit_1", -1 },
  { "API_13_POST_admin_posts_x_1", -1 },
  { "API_14_POST_admin_posts_x_1", -1 },
  { "API_15_POST_admin_posts_x_1", -1 },
  { "API_15_POST_admin_posts_x_2", -1 },
  { "API_16_POST_admin_posts_x_1", -1 },
  { "API_16_POST_admin_posts_x_2", -1 },
  { "API_17_POST_admin_settings_1", -1 },
  { "API_17_POST_admin_settings_2", -1 },
  { "API_18_GET_admin_posts_x_edit_1", -1 },
  { "API_19_GET_posts_postx_1", -1 },
  { "API_20_GET_admin_posts_x_edit_1", -1 },
  { "API_21_GET_posts_postx_1", -1 },
  { "API_22_GET_admin_settings_1", -1 },
  { "API_22_GET_admin_settings_2", -1 },
  { "API_23_GET_posts_postx_1", -1 },
  { "API_24_GET_posts_archive_1", -1 },
}

