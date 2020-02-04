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
  ["schema_version"] = 10000,
  ["project_repository"] = 10000,
  ["project_sample_list"] = 10000,
  ["post"] = 10000,
  ["member_profile"] = 10000,
  ["spring_tools_platform_downloads"] = 10000,
  ["project"] = 10000,
  ["post_public_slug_aliases"] = 10000,
  ["project_release_list"] = 10000,
  ["spring_tools_platform"] = 10000,
}

_traces_dist = {
  { "API_1_POST_admin_projects_spring_new_1", -1 },
  { "API_2_GET_admin_blog_x_this_is_a_post_for_testing_x_1", -1 },
  { "API_3_GET_team__1", -1 },
  { "API_4_GET_admin_blog_x_this_is_a_post_for_testing_x_edit_1", -1 },
  { "API_5_GET_admin_team_1", -1 },
  { "API_6_POST_admin_tools_new_platform_1", -1 },
  { "API_7_DELETE_admin_projects_spring_new_1", -1 },
  { "API_8_GET_blog_x_x_x_post_1", -1 },
  { "API_9_POST_admin_projects_spring_ipads_1", -1 },
  { "API_10_GET_admin_team_ClefZz_1", -1 },
  { "API_11_GET_blog_category_engineering_1", -1 },
  { "API_12_GET_admin_projects_spring_boot_1", -1 },
  { "API_13_POST_admin_tools_acme_1", -1 },
  { "API_14_GET_admin_projects_1", -1 },
  { "API_15_GET_signin_github_1", -1 },
  { "API_16_GET_admin_projects_spring_framework_1", -1 },
  { "API_17_DELETE_admin_tools_acme_platform_1", -1 },
  { "API_18_GET_team_1", -1 },
  { "API_19_GET_admin_tools__1", -1 },
  { "API_20_PUT_admin_blog_x_edit_1", -1 },
  { "API_20_PUT_admin_blog_x_edit_2", -1 },
  { "API_20_PUT_admin_blog_x_edit_3", -1 },
  { "API_20_PUT_admin_blog_x_edit_4", -1 },
  { "API_21_GET_projects_1", -1 },
  { "API_22_DELETE_admin_tools_eclipses_1", -1 },
  { "API_23_GET_blog_category_releases_1", -1 },
  { "API_24_POST_admin_blog_resummarize_1", -1 },
  { "API_25_GET_admin_tools_acme_platform_1", -1 },
  { "API_26_GET_admin_blog_1", -1 },
  { "API_27_GET_admin_tools_eclipse_1", -1 },
  { "API_28_GET_blog_category_news_1", -1 },
  { "API_29_GET_admin_projects_spring_ipads_1", -1 },
  { "API_30_GET_blog_atom_1", -1 },
  { "API_31_GET_team_ClefZz_1", -1 },
  { "API_31_GET_team_ClefZz_2", -1 },
  { "API_32_GET_admin_projects__1", -1 },
  { "API_33_GET_admin_projects_spring_boots_1", -1 },
  { "API_34_DELETE_admin_blog_x_post_1", -1 },
  { "API_35_GET_admin_blog_x_this_is_a_post_for_testing_1", -1 },
  { "API_36_POST_admin_tools_eclipse_1", -1 },
  { "API_37_GET_admin_tools_1", -1 },
  { "API_38_POST_admin_projects_spring_boot_1", -1 },
  { "API_39_GET_admin_blog_x_this_is_a_post_for_testing_edit_1", -1 },
  { "API_40_DELETE_admin_blog_x_this_is_a_post_for_testing_1", -1 },
  { "API_41_POST_admin_projects_spring_framework_1", -1 },
  { "API_42_POST_admin_blog_1", -1 },
  { "API_43_DELETE_admin_tools_acme_1", -1 },
  { "API_44_GET_blog_1", -1 },
  { "API_45_PUT_admin_team_ClefZz_1", -1 },
  { "API_45_PUT_admin_team_ClefZz_2", -1 },
  { "API_46_GET_tools_1", -1 },
  { "API_47_DELETE_admin_projects_spring_raft_1", -1 },
  { "API_48_GET_admin_tools_acme_1", -1 },
}

