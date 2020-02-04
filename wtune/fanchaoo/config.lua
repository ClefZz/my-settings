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
  ["image"] = 10000,
  ["post"] = 10000,
  ["topic"] = 10000,
  ["comment"] = 10000,
  ["reply"] = 10000,
  ["message"] = 10000,
  ["user"] = 10000,
  ["info"] = 10000,
}

_traces_dist = {
  { "API_1_GET_toPost_do_1", -1 },
  { "API_1_GET_toPost_do_2", -1 },
  { "API_2_GET_forgetPassword_do_1", -1 },
  { "API_3_GET__1", -1 },
  { "API_4_GET_listTopic_do_1", -1 },
  { "API_5_GET_listImage_do_1", -1 },
  { "API_6_GET_listPostByTime_do_1", -1 },
  { "API_7_POST_comment_do_1", -1 },
  { "API_8_GET_toMessage_do_1", -1 },
  { "API_9_GET_toIndex_do_1", -1 },
  { "API_10_GET_follow_do_1", -1 },
  { "API_11_GET_unfollow_do_1", -1 },
  { "API_12_GET_toEditProfile_do_1", -1 },
  { "API_13_GET_toMyProfile_do_1", -1 },
  { "API_14_POST_publishPost_do_1", -1 },
  { "API_15_POST_updateHeadUrl_do_1", -1 },
  { "API_16_GET_verify_do_1", -1 },
  { "API_16_GET_verify_do_2", -1 },
  { "API_17_POST_updatePassword_do_1", -1 },
  { "API_17_POST_updatePassword_do_2", -1 },
  { "API_18_GET_toProfile_do_1", -1 },
  { "API_19_GET_ajaxClickLike_do_1", -1 },
  { "API_20_POST_editProfile_do_1", -1 },
  { "API_21_POST_login_do_1", -1 },
  { "API_22_GET_toPublish_do_1", -1 },
  { "API_23_POST_reply_do_1", -1 },
  { "API_24_GET_activate_do_1", -1 },
  { "API_25_POST_register_do_1", -1 },
  { "API_25_POST_register_do_2", -1 },
}

