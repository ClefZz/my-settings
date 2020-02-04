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
  ["topic_tag"] = 10000,
  ["role"] = 10000,
  ["code"] = 10000,
  ["permission"] = 10000,
  ["notification"] = 10000,
  ["system_config"] = 10000,
  ["flyway_schema_history"] = 10000,
  ["role_permission"] = 10000,
  ["topic"] = 10000,
  ["comment"] = 10000,
  ["tag"] = 10000,
  ["user"] = 10000,
  ["collect"] = 10000,
  ["admin_user"] = 10000,
  ["oauth_user"] = 10000,
  ["sensitive_word"] = 10000,
}

_traces_dist = {
  { "API_1__changeLanguage_1", -1 },
  { "API_2__admin_admin_user_list_1", -1 },
  { "API_3__tags_1", -1 },
  { "API_3__tags_2", -1 },
  { "API_4__admin_topic_index_1", -1 },
  { "API_5__api_topic_1", -1 },
  { "API_6__api_comment_x_vote_1", -1 },
  { "API_7__admin_index_1", -1 },
  { "API_8__user_stephenx_1", -1 },
  { "API_9__notifications_1", -1 },
  { "API_10__admin_system_edit_1", -1 },
  { "API_10__admin_system_edit_2", -1 },
  { "API_11__admin_user_list_1", -1 },
  { "API_11__admin_user_list_2", -1 },
  { "API_12__admin_role_list_1", -1 },
  { "API_13__static_theme_default_css_app_css_1", -1 },
  { "API_13__static_theme_default_css_app_css_2", -1 },
  { "API_14__common_captcha_1", -1 },
  { "API_15__topic_create_1", -1 },
  { "API_16__api_topic_x_vote_1", -1 },
  { "API_17__admin_comment_delete_1", -1 },
  { "API_18__search_1", -1 },
  { "API_19__api_topic_x_1", -1 },
  { "API_20__admin_topic_list_1", -1 },
  { "API_20__admin_topic_list_2", -1 },
  { "API_21__topic_x_1", -1 },
  { "API_22__admin_topic_top_1", -1 },
  { "API_23__topic_x_1", -1 },
  { "API_24__admin_user_refreshToken_1", -1 },
  { "API_25__topic_x_1", -1 },
  { "API_26__api_comment_1", -1 },
  { "API_26__api_comment_2", -1 },
  { "API_26__api_comment_3", -1 },
  { "API_26__api_comment_4", -1 },
  { "API_27__static_theme_default_libs_layer_theme_default_layer_css_1", -1 },
  { "API_28__user_stephen_collects_1", -1 },
  { "API_29___1", -1 },
  { "API_29___2", -1 },
  { "API_29___3", -1 },
  { "API_30__topic_edit_x_1", -1 },
  { "API_31__api_comment_x_vote_1", -1 },
  { "API_32__api_settings_1", -1 },
  { "API_33__static_theme_default_libs_layer_layer_js_1", -1 },
  { "API_34__register_1", -1 },
  { "API_35__settings_1", -1 },
  { "API_36__admin_tag_list_1", -1 },
  { "API_37__login_1", -1 },
  { "API_38__api_topic_x_vote_1", -1 },
  { "API_39__admin_topic_good_1", -1 },
  { "API_40__static_theme_default_js_codemirror_js_1", -1 },
  { "API_40__static_theme_default_js_codemirror_js_2", -1 },
  { "API_41__api_login_1", -1 },
  { "API_42__api_comment_x_vote_1", -1 },
  { "API_43__user_stephen_1", -1 },
  { "API_44__admin_sensitive_word_list_1", -1 },
  { "API_44__admin_sensitive_word_list_2", -1 },
  { "API_45__adminlogin_1", -1 },
  { "API_46__admin_permission_list_1", -1 },
  { "API_47__admin_comment_list_1", -1 },
  { "API_47__admin_comment_list_2", -1 },
  { "API_48__api_register_1", -1 },
  { "API_49__api_comment_x_vote_1", -1 },
  { "API_50__admin_role_edit_1", -1 },
  { "API_50__admin_role_edit_2", -1 },
  { "API_51__topx_1", -1 },
  { "API_52__api_comment_x_vote_1", -1 },
  { "API_52__api_comment_x_vote_2", -1 },
  { "API_53__api_notification_markRead_1", -1 },
  { "API_54__api_topic_x_vote_1", -1 },
  { "API_55__admin_user_edit_1", -1 },
  { "API_55__admin_user_edit_2", -1 },
  { "API_56__api_notification_notRead_1", -1 },
  { "API_57__static_theme_default_js_app_js_1", -1 },
  { "API_57__static_theme_default_js_app_js_2", -1 },
  { "API_58__api_settings_updatePassword_1", -1 },
}

