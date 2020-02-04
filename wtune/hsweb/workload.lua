require("util")
require("config")
require("runtime")

-- cache global to local
local _begin_f = _begin
local _commit_f = _commit
local _timing_start_f = _timing_start
local _timing_end_f = _timing_end
local _line_inserted_f = _line_inserted
local _record_timing_f = _record_timing
local _record_params_and_result_f = _record_params_and_result
local _gen_parameter_f = gen_parameter

-- sec, nsec, id
local _txn_timer = { -1, -1 }
local _stmt_timer = { -1, -1 }

function API_1_GET_menu_user_own_tree_1(_con)
  local _api = "GET /menu/user-own/tree"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 1
  _sql = [[
  SELECT s_user.`u_id` AS `u_id`, s_user.`name` AS `name`, s_user.`username` AS `username`, s_user.`password` AS `password`, s_user.`salt` AS `salt`
  	, s_user.`status` AS `status`, s_user.`create_time` AS `create_time`, s_user.`creator_id` AS `creator_id`
  FROM s_user
  WHERE s_user.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 1, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 2
  _sql = [[
  SELECT `role_id`, `user_id`
  FROM s_user_role
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user_role", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 2, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 3
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 3, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 4
  _sql = [[
  SELECT `u_id`, `parent_id`, `menu_id`, `setting_id`, `path`
  	, `sort_index`, `status`, `level`, `config`
  FROM s_autz_menu
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 4, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 5
  _sql = [[
  SELECT `u_id`, `permission_id`, `setting_id`, `actions`, `data_accesses`
  	, `status`, `priority`, `is_merge`
  FROM s_autz_detail
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 5, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 6
  _sql = [[
  SELECT s_autz_menu.`u_id` AS `u_id`, s_autz_menu.`menu_id` AS `menu_id`, s_autz_menu.`setting_id` AS `setting_id`, s_autz_menu.`sort_index` AS `sort_index`, s_autz_menu.`parent_id` AS `parent_id`
  	, s_autz_menu.`status` AS `status`, s_autz_menu.`path` AS `path`, s_autz_menu.`level` AS `level`, s_autz_menu.`config` AS `config`
  FROM s_autz_menu
  WHERE s_autz_menu.`setting_id` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "setting_id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 6, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 7
  _sql = [[
  SELECT s_menu.`u_id` AS `u_id`, s_menu.`describe` AS `describe`, s_menu.`parent_id` AS `parent_id`, s_menu.`name` AS `name`, s_menu.`path` AS `path`
  	, s_menu.`url` AS `url`, s_menu.`permission_id` AS `permission_id`, s_menu.`status` AS `status`, s_menu.`sort_index` AS `sort_index`, s_menu.`icon` AS `icon`
  FROM s_menu
  WHERE s_menu.`u_id` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_menu", "u_id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 7, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_1_GET_menu_user_own_tree_2(_con)
  local _api = "GET /menu/user-own/tree"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 8
  _sql = [[
  SELECT s_user.`u_id` AS `u_id`, s_user.`name` AS `name`, s_user.`username` AS `username`, s_user.`password` AS `password`, s_user.`salt` AS `salt`
  	, s_user.`status` AS `status`, s_user.`create_time` AS `create_time`, s_user.`creator_id` AS `creator_id`
  FROM s_user
  WHERE s_user.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 8, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 9
  _sql = [[
  SELECT `role_id`, `user_id`
  FROM s_user_role
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user_role", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 9, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 10
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 10, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 11
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 11, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 12
  _sql = [[
  SELECT `u_id`, `parent_id`, `menu_id`, `setting_id`, `path`
  	, `sort_index`, `status`, `level`, `config`
  FROM s_autz_menu
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 12, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 13
  _sql = [[
  SELECT `u_id`, `parent_id`, `menu_id`, `setting_id`, `path`
  	, `sort_index`, `status`, `level`, `config`
  FROM s_autz_menu
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 13, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 14
  _sql = [[
  SELECT `u_id`, `permission_id`, `setting_id`, `actions`, `data_accesses`
  	, `status`, `priority`, `is_merge`
  FROM s_autz_detail
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 14, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 15
  _sql = [[
  SELECT `u_id`, `permission_id`, `setting_id`, `actions`, `data_accesses`
  	, `status`, `priority`, `is_merge`
  FROM s_autz_detail
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 15, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 16
  _sql = [[
  SELECT s_autz_menu.`u_id` AS `u_id`, s_autz_menu.`menu_id` AS `menu_id`, s_autz_menu.`setting_id` AS `setting_id`, s_autz_menu.`sort_index` AS `sort_index`, s_autz_menu.`parent_id` AS `parent_id`
  	, s_autz_menu.`status` AS `status`, s_autz_menu.`path` AS `path`, s_autz_menu.`level` AS `level`, s_autz_menu.`config` AS `config`
  FROM s_autz_menu
  WHERE s_autz_menu.`setting_id` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "setting_id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 16, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 17
  _sql = [[
  SELECT s_menu.`u_id` AS `u_id`, s_menu.`describe` AS `describe`, s_menu.`parent_id` AS `parent_id`, s_menu.`name` AS `name`, s_menu.`path` AS `path`
  	, s_menu.`url` AS `url`, s_menu.`permission_id` AS `permission_id`, s_menu.`status` AS `status`, s_menu.`sort_index` AS `sort_index`, s_menu.`icon` AS `icon`
  FROM s_menu
  WHERE s_menu.`u_id` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_menu", "u_id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 17, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_2_POST_schedule_job_excxcxfxfxfxaxex_execute_1(_con)
  local _api = "POST /schedule/job/e94c571c050f762f84f074a2e5717413/execute"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 18
  _sql = [[
  SELECT s_schedule_job.`u_id` AS `u_id`, s_schedule_job.`name` AS `name`, s_schedule_job.`remark` AS `remark`, s_schedule_job.`quartz_config` AS `quartz_config`, s_schedule_job.`script` AS `script`
  	, s_schedule_job.`language` AS `language`, s_schedule_job.`status` AS `status`, s_schedule_job.`parameters` AS `parameters`, s_schedule_job.`type` AS `type`, s_schedule_job.`tags` AS `tags`
  FROM s_schedule_job
  WHERE s_schedule_job.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_schedule_job", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 18, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_3_GET_template_1(_con)
  local _api = "GET /template"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 19
  _sql = [[
  SELECT COUNT(0) AS total
  FROM s_template
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 19, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_3_GET_template_2(_con)
  local _api = "GET /template"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 20
  _sql = [[
  SELECT COUNT(0) AS total
  FROM s_template
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 20, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 21
  _sql = [[
  SELECT s_template.`u_id` AS `u_id`, s_template.`name` AS `name`, s_template.`classified` AS `classified`
  FROM s_template
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 21, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_3_GET_template_3(_con)
  local _api = "GET /template"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 22
  _sql = [[
  SELECT COUNT(0) AS total
  FROM s_template
  WHERE s_template.`name` LIKE %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_template", "name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 22, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 23
  _sql = [[
  SELECT s_template.`u_id` AS `u_id`, s_template.`name` AS `name`, s_template.`classified` AS `classified`
  FROM s_template
  WHERE s_template.`name` LIKE %s
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_template", "name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 23, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_4_GET_autz_setting_user_dxdxexexacxcxcfxdxex_1(_con)
  local _api = "GET /autz-setting/user/d33d8e5e1304ac1c4cf64d1854624e54"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 24
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 24, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_5_DELETE_menu_xdxacecxaxeaxbxdxexcx_1(_con)
  local _api = "DELETE /menu/15d5acec015a0354ea1b4d86e3016c75"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 25
  _sql = [[
  SELECT s_menu.`u_id` AS `u_id`, s_menu.`describe` AS `describe`, s_menu.`parent_id` AS `parent_id`, s_menu.`name` AS `name`, s_menu.`path` AS `path`
  	, s_menu.`url` AS `url`, s_menu.`permission_id` AS `permission_id`, s_menu.`status` AS `status`, s_menu.`sort_index` AS `sort_index`, s_menu.`icon` AS `icon`
  FROM s_menu
  WHERE s_menu.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_menu", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 25, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 26 (ignored write)  _commit_f(_con, true)
  
end

function API_6_PUT_user_xdxdaxecxaecxaxeaxf_1(_con)
  local _api = "PUT /user/4291d7da9005377ec9aec4a71ea837f"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 27
  _sql = [[
  SELECT s_user.`u_id` AS `u_id`, s_user.`name` AS `name`, s_user.`username` AS `username`, s_user.`password` AS `password`, s_user.`salt` AS `salt`
  	, s_user.`status` AS `status`, s_user.`create_time` AS `create_time`, s_user.`creator_id` AS `creator_id`
  FROM s_user
  WHERE s_user.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 27, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 28
  _sql = [[
  SELECT `role_id`, `user_id`
  FROM s_user_role
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user_role", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 28, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 29 (ignored write)-- line 30 (ignored write)  _commit_f(_con, true)
  
end

function API_7_PATCH_schedule_job_1(_con)
  local _api = "PATCH /schedule/job"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

-- line 31 (ignored write)  _commit_f(_con, false)
  
end

function API_8_PATCH_template_1(_con)
  local _api = "PATCH /template"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 32
  _sql = [[
  SELECT s_template.`u_id` AS `u_id`, s_template.`name` AS `name`, s_template.`type` AS `type`, s_template.`template` AS `template`, s_template.`config` AS `config`
  	, s_template.`version` AS `version`, s_template.`classified` AS `classified`
  FROM s_template
  WHERE s_template.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_template", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 32, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 33 (ignored write)  _commit_f(_con, true)
  
end

function API_8_PATCH_template_2(_con)
  local _api = "PATCH /template"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 34
  _sql = [[
  SELECT s_template.`u_id` AS `u_id`, s_template.`name` AS `name`, s_template.`type` AS `type`, s_template.`template` AS `template`, s_template.`config` AS `config`
  	, s_template.`version` AS `version`, s_template.`classified` AS `classified`
  FROM s_template
  WHERE s_template.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_template", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 34, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 35 (ignored write)  _commit_f(_con, true)
  
end

function API_9_PATCH_permission_1(_con)
  local _api = "PATCH /permission"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 36
  _sql = [[
  SELECT s_permission.`u_id` AS `u_id`, s_permission.`name` AS `name`, s_permission.`describe` AS `describe`, s_permission.`status` AS `status`, s_permission.`actions` AS `actions`
  	, s_permission.`optional_fields` AS `optional_fields`, s_permission.`spt_da_types` AS `spt_da_types`, s_permission.`parents` AS `parents`, s_permission.`type` AS `type`
  FROM s_permission
  WHERE s_permission.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_permission", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 36, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 37 (ignored write)  _commit_f(_con, true)
  
end

function API_10_PUT_user_lock_lock_1(_con)
  local _api = "PUT /user-lock/lock"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 38
  _sql = [[
  SELECT s_user_setting.`u_id` AS `u_id`, s_user_setting.`key` AS `key`, s_user_setting.`setting_id` AS `setting_id`, s_user_setting.`user_id` AS `user_id`, s_user_setting.`setting` AS `setting`
  	, s_user_setting.`describe` AS `describe`, s_user_setting.`name` AS `name`, s_user_setting.`create_time` AS `create_time`, s_user_setting.`update_time` AS `update_time`
  FROM s_user_setting
  WHERE s_user_setting.`user_id` = %s
  	AND s_user_setting.`key` = %s
  	AND s_user_setting.`setting_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user_setting", "user_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_user_setting", "key", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_user_setting", "setting_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 38, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_11_PATCH_user_setting_me_code_gen_setsimple_gen_1(_con)
  local _api = "PATCH /user-setting/me/code-gen-setsimple-gen"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 39
  _sql = [[
  SELECT s_user_setting.`u_id` AS `u_id`, s_user_setting.`key` AS `key`, s_user_setting.`setting_id` AS `setting_id`, s_user_setting.`user_id` AS `user_id`, s_user_setting.`setting` AS `setting`
  	, s_user_setting.`describe` AS `describe`, s_user_setting.`name` AS `name`, s_user_setting.`create_time` AS `create_time`, s_user_setting.`update_time` AS `update_time`
  FROM s_user_setting
  WHERE s_user_setting.`user_id` = %s
  	AND s_user_setting.`key` = %s
  	AND s_user_setting.`setting_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user_setting", "user_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_user_setting", "key", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_user_setting", "setting_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 39, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 40 (ignored write)  _commit_f(_con, true)
  
end

function API_11_PATCH_user_setting_me_code_gen_setsimple_gen_2(_con)
  local _api = "PATCH /user-setting/me/code-gen-setsimple-gen"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 41
  _sql = [[
  SELECT s_user_setting.`u_id` AS `u_id`, s_user_setting.`key` AS `key`, s_user_setting.`setting_id` AS `setting_id`, s_user_setting.`user_id` AS `user_id`, s_user_setting.`setting` AS `setting`
  	, s_user_setting.`describe` AS `describe`, s_user_setting.`name` AS `name`, s_user_setting.`create_time` AS `create_time`, s_user_setting.`update_time` AS `update_time`
  FROM s_user_setting
  WHERE s_user_setting.`user_id` = %s
  	AND s_user_setting.`key` = %s
  	AND s_user_setting.`setting_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user_setting", "user_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_user_setting", "key", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_user_setting", "setting_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 41, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 42 (ignored write)  _commit_f(_con, true)
  
end

function API_12_GET_autz_setting_detail_permission_x_1(_con)
  local _api = "GET /autz-setting/detail/permission_1"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 43
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 43, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_13_GET_role_1(_con)
  local _api = "GET /role"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 44
  _sql = [[
  SELECT COUNT(0) AS total
  FROM s_role
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 44, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_13_GET_role_2(_con)
  local _api = "GET /role"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 45
  _sql = [[
  SELECT COUNT(0) AS total
  FROM s_role
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 45, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 46
  _sql = [[
  SELECT s_role.`u_id` AS `u_id`, s_role.`name` AS `name`, s_role.`describe` AS `describe`, s_role.`status` AS `status`
  FROM s_role
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 46, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_13_GET_role_3(_con)
  local _api = "GET /role"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 47
  _sql = [[
  SELECT COUNT(0) AS total
  FROM s_role
  WHERE s_role.`name` LIKE %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_role", "name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 47, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 48
  _sql = [[
  SELECT s_role.`u_id` AS `u_id`, s_role.`name` AS `name`, s_role.`describe` AS `describe`, s_role.`status` AS `status`
  FROM s_role
  WHERE s_role.`name` LIKE %s
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_role", "name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 48, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_13_GET_role_4(_con)
  local _api = "GET /role"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 49
  _sql = [[
  SELECT s_role.`u_id` AS `u_id`, s_role.`name` AS `name`, s_role.`describe` AS `describe`, s_role.`status` AS `status`
  FROM s_role
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 49, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_13_GET_role_5(_con)
  local _api = "GET /role"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 50
  _sql = [[
  SELECT s_user.`u_id` AS `u_id`, s_user.`name` AS `name`, s_user.`username` AS `username`, s_user.`password` AS `password`, s_user.`salt` AS `salt`
  	, s_user.`status` AS `status`, s_user.`create_time` AS `create_time`, s_user.`creator_id` AS `creator_id`
  FROM s_user
  WHERE s_user.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 50, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 51
  _sql = [[
  SELECT `role_id`, `user_id`
  FROM s_user_role
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user_role", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 51, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 52
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 52, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 53
  _sql = [[
  SELECT `u_id`, `parent_id`, `menu_id`, `setting_id`, `path`
  	, `sort_index`, `status`, `level`, `config`
  FROM s_autz_menu
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 53, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 54
  _sql = [[
  SELECT `u_id`, `permission_id`, `setting_id`, `actions`, `data_accesses`
  	, `status`, `priority`, `is_merge`
  FROM s_autz_detail
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 54, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 55
  _sql = [[
  SELECT s_autz_detail.`u_id` AS `u_id`, s_autz_detail.`permission_id` AS `permission_id`, s_autz_detail.`setting_id` AS `setting_id`, s_autz_detail.`actions` AS `actions`, s_autz_detail.`data_accesses` AS `data_accesses`
  	, s_autz_detail.`status` AS `status`, s_autz_detail.`priority` AS `priority`, s_autz_detail.`is_merge` AS `is_merge`
  FROM s_autz_detail
  WHERE s_autz_detail.`status` = %s
  	AND s_autz_detail.`setting_id` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "status", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 55, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 56
  _sql = [[
  SELECT s_permission.`u_id` AS `u_id`, s_permission.`name` AS `name`, s_permission.`describe` AS `describe`, s_permission.`status` AS `status`, s_permission.`actions` AS `actions`
  	, s_permission.`optional_fields` AS `optional_fields`, s_permission.`spt_da_types` AS `spt_da_types`, s_permission.`parents` AS `parents`, s_permission.`type` AS `type`
  FROM s_permission
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 56, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  -- line 57
  _sql = [[
  SELECT s_role.`u_id` AS `u_id`, s_role.`name` AS `name`, s_role.`describe` AS `describe`, s_role.`status` AS `status`
  FROM s_role
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 57, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_14_GET_autz_setting_role_dd_1(_con)
  local _api = "GET /autz-setting/role/dd"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 58
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 58, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 59
  _sql = [[
  SELECT `u_id`, `parent_id`, `menu_id`, `setting_id`, `path`
  	, `sort_index`, `status`, `level`, `config`
  FROM s_autz_menu
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 59, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 60
  _sql = [[
  SELECT `u_id`, `permission_id`, `setting_id`, `actions`, `data_accesses`
  	, `status`, `priority`, `is_merge`
  FROM s_autz_detail
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 60, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_15_GET_menu_xdxacecxaxeaxbxdxexcx_1(_con)
  local _api = "GET /menu/15d5acec015a0354ea1b4d86e3016c75"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 61
  _sql = [[
  SELECT s_menu.`u_id` AS `u_id`, s_menu.`describe` AS `describe`, s_menu.`parent_id` AS `parent_id`, s_menu.`name` AS `name`, s_menu.`path` AS `path`
  	, s_menu.`url` AS `url`, s_menu.`permission_id` AS `permission_id`, s_menu.`status` AS `status`, s_menu.`sort_index` AS `sort_index`, s_menu.`icon` AS `icon`
  FROM s_menu
  WHERE s_menu.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_menu", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 61, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_16_GET_organizational_1(_con)
  local _api = "GET /organizational"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 62
  _sql = [[
  SELECT s_organization.`u_id` AS `u_id`, s_organization.`name` AS `name`, s_organization.`full_name` AS `full_name`, s_organization.`code` AS `code`, s_organization.`optional_roles` AS `optional_roles`
  	, s_organization.`parent_id` AS `parent_id`, s_organization.`path` AS `path`, s_organization.`sort_index` AS `sort_index`, s_organization.`status` AS `status`, s_organization.`level` AS `level`
  	, s_organization.`district_id` AS `district_id`
  FROM s_organization
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 62, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_16_GET_organizational_2(_con)
  local _api = "GET /organizational"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 63
  _sql = [[
  SELECT s_organization.`u_id` AS `u_id`, s_organization.`name` AS `name`, s_organization.`full_name` AS `full_name`, s_organization.`code` AS `code`, s_organization.`optional_roles` AS `optional_roles`
  	, s_organization.`parent_id` AS `parent_id`, s_organization.`path` AS `path`, s_organization.`sort_index` AS `sort_index`, s_organization.`status` AS `status`, s_organization.`level` AS `level`
  	, s_organization.`district_id` AS `district_id`
  FROM s_organization
  ORDER BY s_organization.`sort_index` ASC
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 63, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_17_POST_permission_1(_con)
  local _api = "POST /permission"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 64
  _sql = [[
  SELECT s_permission.`u_id` AS `u_id`, s_permission.`name` AS `name`, s_permission.`describe` AS `describe`, s_permission.`status` AS `status`, s_permission.`actions` AS `actions`
  	, s_permission.`optional_fields` AS `optional_fields`, s_permission.`spt_da_types` AS `spt_da_types`, s_permission.`parents` AS `parents`, s_permission.`type` AS `type`
  FROM s_permission
  WHERE s_permission.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_permission", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 64, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 65 (ignored write)  _commit_f(_con, true)
  
end

function API_17_POST_permission_2(_con)
  local _api = "POST /permission"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 66
  _sql = [[
  SELECT s_permission.`u_id` AS `u_id`, s_permission.`name` AS `name`, s_permission.`describe` AS `describe`, s_permission.`status` AS `status`, s_permission.`actions` AS `actions`
  	, s_permission.`optional_fields` AS `optional_fields`, s_permission.`spt_da_types` AS `spt_da_types`, s_permission.`parents` AS `parents`, s_permission.`type` AS `type`
  FROM s_permission
  WHERE s_permission.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_permission", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 66, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_18_PUT_role_dd_1(_con)
  local _api = "PUT /role/dd"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

-- line 67 (ignored write)  _commit_f(_con, false)
  
end

function API_19_GET_autz_setting_detail_oauthx_client_config_1(_con)
  local _api = "GET /autz-setting/detail/oauth2-client-config"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 68
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 68, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_20_PUT_schedule_job_undefined_enable_1(_con)
  local _api = "PUT /schedule/job/undefined/enable"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

-- line 69 (ignored write)  _commit_f(_con, false)
  
end

function API_21_GET_menu_1(_con)
  local _api = "GET /menu"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 70
  _sql = [[
  SELECT s_menu.`u_id` AS `u_id`, s_menu.`describe` AS `describe`, s_menu.`parent_id` AS `parent_id`, s_menu.`name` AS `name`, s_menu.`path` AS `path`
  	, s_menu.`url` AS `url`, s_menu.`permission_id` AS `permission_id`, s_menu.`status` AS `status`, s_menu.`sort_index` AS `sort_index`, s_menu.`icon` AS `icon`
  FROM s_menu
  ORDER BY s_menu.`sort_index` ASC
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 70, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_21_GET_menu_2(_con)
  local _api = "GET /menu"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 71
  _sql = [[
  SELECT s_menu.`u_id` AS `u_id`, s_menu.`describe` AS `describe`, s_menu.`parent_id` AS `parent_id`, s_menu.`name` AS `name`, s_menu.`path` AS `path`
  	, s_menu.`url` AS `url`, s_menu.`permission_id` AS `permission_id`, s_menu.`status` AS `status`, s_menu.`sort_index` AS `sort_index`, s_menu.`icon` AS `icon`
  FROM s_menu
  WHERE s_menu.`name` LIKE %s
  	OR s_menu.`permission_id` LIKE %s
  	OR s_menu.`url` LIKE %s
  ORDER BY s_menu.`sort_index` ASC
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_menu", "name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_menu", "permission_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_menu", "url", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 71, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_21_GET_menu_3(_con)
  local _api = "GET /menu"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 72
  _sql = [[
  SELECT s_menu.`u_id` AS `u_id`, s_menu.`describe` AS `describe`, s_menu.`parent_id` AS `parent_id`, s_menu.`name` AS `name`, s_menu.`path` AS `path`
  	, s_menu.`url` AS `url`, s_menu.`permission_id` AS `permission_id`, s_menu.`status` AS `status`, s_menu.`sort_index` AS `sort_index`, s_menu.`icon` AS `icon`
  FROM s_menu
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 72, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_21_GET_menu_4(_con)
  local _api = "GET /menu"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 73
  _sql = [[
  SELECT s_user.`u_id` AS `u_id`, s_user.`name` AS `name`, s_user.`username` AS `username`, s_user.`password` AS `password`, s_user.`salt` AS `salt`
  	, s_user.`status` AS `status`, s_user.`create_time` AS `create_time`, s_user.`creator_id` AS `creator_id`
  FROM s_user
  WHERE s_user.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 73, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 74
  _sql = [[
  SELECT `role_id`, `user_id`
  FROM s_user_role
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user_role", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 74, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 75
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 75, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 76
  _sql = [[
  SELECT `u_id`, `parent_id`, `menu_id`, `setting_id`, `path`
  	, `sort_index`, `status`, `level`, `config`
  FROM s_autz_menu
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 76, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 77
  _sql = [[
  SELECT `u_id`, `permission_id`, `setting_id`, `actions`, `data_accesses`
  	, `status`, `priority`, `is_merge`
  FROM s_autz_detail
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 77, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 78
  _sql = [[
  SELECT s_autz_detail.`u_id` AS `u_id`, s_autz_detail.`permission_id` AS `permission_id`, s_autz_detail.`setting_id` AS `setting_id`, s_autz_detail.`actions` AS `actions`, s_autz_detail.`data_accesses` AS `data_accesses`
  	, s_autz_detail.`status` AS `status`, s_autz_detail.`priority` AS `priority`, s_autz_detail.`is_merge` AS `is_merge`
  FROM s_autz_detail
  WHERE s_autz_detail.`status` = %s
  	AND s_autz_detail.`setting_id` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "status", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 78, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 79
  _sql = [[
  SELECT s_permission.`u_id` AS `u_id`, s_permission.`name` AS `name`, s_permission.`describe` AS `describe`, s_permission.`status` AS `status`, s_permission.`actions` AS `actions`
  	, s_permission.`optional_fields` AS `optional_fields`, s_permission.`spt_da_types` AS `spt_da_types`, s_permission.`parents` AS `parents`, s_permission.`type` AS `type`
  FROM s_permission
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 79, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  -- line 80
  _sql = [[
  SELECT s_menu.`u_id` AS `u_id`, s_menu.`describe` AS `describe`, s_menu.`parent_id` AS `parent_id`, s_menu.`name` AS `name`, s_menu.`path` AS `path`
  	, s_menu.`url` AS `url`, s_menu.`permission_id` AS `permission_id`, s_menu.`status` AS `status`, s_menu.`sort_index` AS `sort_index`, s_menu.`icon` AS `icon`
  FROM s_menu
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 80, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_22_GET_permission_organizational_1(_con)
  local _api = "GET /permission/organizational"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 81
  _sql = [[
  SELECT s_permission.`u_id` AS `u_id`, s_permission.`name` AS `name`, s_permission.`describe` AS `describe`, s_permission.`status` AS `status`, s_permission.`actions` AS `actions`
  	, s_permission.`optional_fields` AS `optional_fields`, s_permission.`spt_da_types` AS `spt_da_types`, s_permission.`parents` AS `parents`, s_permission.`type` AS `type`
  FROM s_permission
  WHERE s_permission.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_permission", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 81, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_22_GET_permission_organizational_2(_con)
  local _api = "GET /permission/organizational"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 82
  _sql = [[
  SELECT s_user.`u_id` AS `u_id`, s_user.`name` AS `name`, s_user.`username` AS `username`, s_user.`password` AS `password`, s_user.`salt` AS `salt`
  	, s_user.`status` AS `status`, s_user.`create_time` AS `create_time`, s_user.`creator_id` AS `creator_id`
  FROM s_user
  WHERE s_user.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 82, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 83
  _sql = [[
  SELECT `role_id`, `user_id`
  FROM s_user_role
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user_role", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 83, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 84
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 84, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 85
  _sql = [[
  SELECT `u_id`, `parent_id`, `menu_id`, `setting_id`, `path`
  	, `sort_index`, `status`, `level`, `config`
  FROM s_autz_menu
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 85, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 86
  _sql = [[
  SELECT `u_id`, `permission_id`, `setting_id`, `actions`, `data_accesses`
  	, `status`, `priority`, `is_merge`
  FROM s_autz_detail
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 86, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 87
  _sql = [[
  SELECT s_autz_detail.`u_id` AS `u_id`, s_autz_detail.`permission_id` AS `permission_id`, s_autz_detail.`setting_id` AS `setting_id`, s_autz_detail.`actions` AS `actions`, s_autz_detail.`data_accesses` AS `data_accesses`
  	, s_autz_detail.`status` AS `status`, s_autz_detail.`priority` AS `priority`, s_autz_detail.`is_merge` AS `is_merge`
  FROM s_autz_detail
  WHERE s_autz_detail.`status` = %s
  	AND s_autz_detail.`setting_id` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "status", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 87, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 88
  _sql = [[
  SELECT s_permission.`u_id` AS `u_id`, s_permission.`name` AS `name`, s_permission.`describe` AS `describe`, s_permission.`status` AS `status`, s_permission.`actions` AS `actions`
  	, s_permission.`optional_fields` AS `optional_fields`, s_permission.`spt_da_types` AS `spt_da_types`, s_permission.`parents` AS `parents`, s_permission.`type` AS `type`
  FROM s_permission
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 88, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, false)

  -- line 89
  _sql = [[
  SELECT s_permission.`u_id` AS `u_id`, s_permission.`name` AS `name`, s_permission.`describe` AS `describe`, s_permission.`status` AS `status`, s_permission.`actions` AS `actions`
  	, s_permission.`optional_fields` AS `optional_fields`, s_permission.`spt_da_types` AS `spt_da_types`, s_permission.`parents` AS `parents`, s_permission.`type` AS `type`
  FROM s_permission
  WHERE s_permission.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_permission", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 89, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_23_POST_workflow_model__1(_con)
  local _api = "POST /workflow/model/"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 90
  _sql = [[
  SELECT `NAME_`, `VALUE_`, `REV_`
  FROM ACT_GE_PROPERTY
  WHERE NAME_ = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "act_ge_property", "NAME_", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 90, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 91 (ignored write)  _commit_f(_con, true)
  
-- line 92 (ignored write)
  _begin_f(_con, true)

  -- line 93
  _sql = [[
  SELECT `ID_`, `REV_`, `NAME_`, `KEY_`, `CATEGORY_`
  	, `CREATE_TIME_`, `LAST_UPDATE_TIME_`, `VERSION_`, `META_INFO_`, `DEPLOYMENT_ID_`
  	, `EDITOR_SOURCE_VALUE_ID_`, `EDITOR_SOURCE_EXTRA_VALUE_ID_`, `TENANT_ID_`
  FROM ACT_RE_MODEL
  WHERE ID_ = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "act_re_model", "ID_", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 93, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 94 (ignored write)-- line 95 (ignored write)  _commit_f(_con, true)
  
end

function API_23_POST_workflow_model__2(_con)
  local _api = "POST /workflow/model/"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

-- line 96 (ignored write)  _commit_f(_con, false)
  
  _begin_f(_con, true)

  -- line 97
  _sql = [[
  SELECT `ID_`, `REV_`, `NAME_`, `KEY_`, `CATEGORY_`
  	, `CREATE_TIME_`, `LAST_UPDATE_TIME_`, `VERSION_`, `META_INFO_`, `DEPLOYMENT_ID_`
  	, `EDITOR_SOURCE_VALUE_ID_`, `EDITOR_SOURCE_EXTRA_VALUE_ID_`, `TENANT_ID_`
  FROM ACT_RE_MODEL
  WHERE ID_ = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "act_re_model", "ID_", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 97, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 98 (ignored write)-- line 99 (ignored write)  _commit_f(_con, true)
  
end

function API_24_PUT_workflow_model_x_1(_con)
  local _api = "PUT /workflow//model/6"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 100
  _sql = [[
  SELECT `ID_`, `REV_`, `NAME_`, `KEY_`, `CATEGORY_`
  	, `CREATE_TIME_`, `LAST_UPDATE_TIME_`, `VERSION_`, `META_INFO_`, `DEPLOYMENT_ID_`
  	, `EDITOR_SOURCE_VALUE_ID_`, `EDITOR_SOURCE_EXTRA_VALUE_ID_`, `TENANT_ID_`
  FROM ACT_RE_MODEL
  WHERE ID_ = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "act_re_model", "ID_", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 100, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, false)

-- line 101 (ignored write)  _commit_f(_con, false)
  
  _begin_f(_con, true)

  -- line 102
  _sql = [[
  SELECT `ID_`, `REV_`, `NAME_`, `KEY_`, `CATEGORY_`
  	, `CREATE_TIME_`, `LAST_UPDATE_TIME_`, `VERSION_`, `META_INFO_`, `DEPLOYMENT_ID_`
  	, `EDITOR_SOURCE_VALUE_ID_`, `EDITOR_SOURCE_EXTRA_VALUE_ID_`, `TENANT_ID_`
  FROM ACT_RE_MODEL
  WHERE ID_ = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "act_re_model", "ID_", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 102, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 103
  _sql = [[
  SELECT `ID_`, `REV_`, `NAME_`, `DEPLOYMENT_ID_`, `BYTES_`
  	, `GENERATED_`
  FROM ACT_GE_BYTEARRAY
  WHERE ID_ = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "act_ge_bytearray", "ID_", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 103, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 104 (ignored write)  _commit_f(_con, true)
  
  _begin_f(_con, true)

  -- line 105
  _sql = [[
  SELECT `ID_`, `REV_`, `NAME_`, `KEY_`, `CATEGORY_`
  	, `CREATE_TIME_`, `LAST_UPDATE_TIME_`, `VERSION_`, `META_INFO_`, `DEPLOYMENT_ID_`
  	, `EDITOR_SOURCE_VALUE_ID_`, `EDITOR_SOURCE_EXTRA_VALUE_ID_`, `TENANT_ID_`
  FROM ACT_RE_MODEL
  WHERE ID_ = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "act_re_model", "ID_", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 105, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 106 (ignored write)-- line 107 (ignored write)  _commit_f(_con, true)
  
end

function API_25_PATCH_dictionary_item_batch_1(_con)
  local _api = "PATCH /dictionary-item/batch"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 108
  _sql = [[
  SELECT s_dict_item.`u_id` AS `u_id`, s_dict_item.`dict_id` AS `dict_id`, s_dict_item.`name` AS `name`, s_dict_item.`value` AS `value`, s_dict_item.`text` AS `text`
  	, s_dict_item.`value_type` AS `value_type`, s_dict_item.`status` AS `status`, s_dict_item.`describe` AS `describe`, s_dict_item.`parent_id` AS `parent_id`, s_dict_item.`path` AS `path`
  	, s_dict_item.`search_code` AS `search_code`, s_dict_item.`sort_index` AS `sort_index`, s_dict_item.`level_` AS `level_`, s_dict_item.`ordinal` AS `ordinal`, s_dict_item.`properties` AS `properties`
  FROM s_dict_item
  WHERE s_dict_item.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_dict_item", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 108, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 109 (ignored write)  -- line 110
  _sql = [[
  SELECT s_dict_item.`u_id` AS `u_id`, s_dict_item.`dict_id` AS `dict_id`, s_dict_item.`name` AS `name`, s_dict_item.`value` AS `value`, s_dict_item.`text` AS `text`
  	, s_dict_item.`value_type` AS `value_type`, s_dict_item.`status` AS `status`, s_dict_item.`describe` AS `describe`, s_dict_item.`parent_id` AS `parent_id`, s_dict_item.`path` AS `path`
  	, s_dict_item.`search_code` AS `search_code`, s_dict_item.`sort_index` AS `sort_index`, s_dict_item.`level_` AS `level_`, s_dict_item.`ordinal` AS `ordinal`, s_dict_item.`properties` AS `properties`
  FROM s_dict_item
  WHERE s_dict_item.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_dict_item", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 110, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 111 (ignored write)  _commit_f(_con, true)
  
end

function API_26_PUT_workflow_model_x_1(_con)
  local _api = "PUT /workflow//model/1"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 112
  _sql = [[
  SELECT `ID_`, `REV_`, `NAME_`, `KEY_`, `CATEGORY_`
  	, `CREATE_TIME_`, `LAST_UPDATE_TIME_`, `VERSION_`, `META_INFO_`, `DEPLOYMENT_ID_`
  	, `EDITOR_SOURCE_VALUE_ID_`, `EDITOR_SOURCE_EXTRA_VALUE_ID_`, `TENANT_ID_`
  FROM ACT_RE_MODEL
  WHERE ID_ = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "act_re_model", "ID_", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 112, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, false)

-- line 113 (ignored write)  _commit_f(_con, false)
  
  _begin_f(_con, true)

  -- line 114
  _sql = [[
  SELECT `ID_`, `REV_`, `NAME_`, `KEY_`, `CATEGORY_`
  	, `CREATE_TIME_`, `LAST_UPDATE_TIME_`, `VERSION_`, `META_INFO_`, `DEPLOYMENT_ID_`
  	, `EDITOR_SOURCE_VALUE_ID_`, `EDITOR_SOURCE_EXTRA_VALUE_ID_`, `TENANT_ID_`
  FROM ACT_RE_MODEL
  WHERE ID_ = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "act_re_model", "ID_", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 114, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 115
  _sql = [[
  SELECT `ID_`, `REV_`, `NAME_`, `DEPLOYMENT_ID_`, `BYTES_`
  	, `GENERATED_`
  FROM ACT_GE_BYTEARRAY
  WHERE ID_ = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "act_ge_bytearray", "ID_", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 115, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 116 (ignored write)  _commit_f(_con, true)
  
  _begin_f(_con, true)

  -- line 117
  _sql = [[
  SELECT `ID_`, `REV_`, `NAME_`, `KEY_`, `CATEGORY_`
  	, `CREATE_TIME_`, `LAST_UPDATE_TIME_`, `VERSION_`, `META_INFO_`, `DEPLOYMENT_ID_`
  	, `EDITOR_SOURCE_VALUE_ID_`, `EDITOR_SOURCE_EXTRA_VALUE_ID_`, `TENANT_ID_`
  FROM ACT_RE_MODEL
  WHERE ID_ = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "act_re_model", "ID_", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 117, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 118 (ignored write)-- line 119 (ignored write)  _commit_f(_con, true)
  
end

function API_27_PUT_user_lock_lock_password_1(_con)
  local _api = "PUT /user-lock/lock-password"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 120
  _sql = [[
  SELECT s_user.`u_id` AS `u_id`, s_user.`name` AS `name`, s_user.`username` AS `username`, s_user.`password` AS `password`, s_user.`salt` AS `salt`
  	, s_user.`status` AS `status`, s_user.`create_time` AS `create_time`, s_user.`creator_id` AS `creator_id`
  FROM s_user
  WHERE s_user.`username` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user", "username", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 120, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, false)

  -- line 121
  _sql = [[
  SELECT s_user_setting.`u_id` AS `u_id`, s_user_setting.`key` AS `key`, s_user_setting.`setting_id` AS `setting_id`, s_user_setting.`user_id` AS `user_id`, s_user_setting.`setting` AS `setting`
  	, s_user_setting.`describe` AS `describe`, s_user_setting.`name` AS `name`, s_user_setting.`create_time` AS `create_time`, s_user_setting.`update_time` AS `update_time`
  FROM s_user_setting
  WHERE s_user_setting.`user_id` = %s
  	AND s_user_setting.`key` = %s
  	AND s_user_setting.`setting_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user_setting", "user_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_user_setting", "key", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_user_setting", "setting_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 121, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, true)

  -- line 122
  _sql = [[
  SELECT s_user_setting.`u_id` AS `u_id`, s_user_setting.`key` AS `key`, s_user_setting.`setting_id` AS `setting_id`, s_user_setting.`user_id` AS `user_id`, s_user_setting.`setting` AS `setting`
  	, s_user_setting.`describe` AS `describe`, s_user_setting.`name` AS `name`, s_user_setting.`create_time` AS `create_time`, s_user_setting.`update_time` AS `update_time`
  FROM s_user_setting
  WHERE s_user_setting.`user_id` = %s
  	AND s_user_setting.`key` = %s
  	AND s_user_setting.`setting_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user_setting", "user_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_user_setting", "key", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_user_setting", "setting_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 122, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 123 (ignored write)  _commit_f(_con, true)
  
end

function API_28_GET_organizational_no_paging_1(_con)
  local _api = "GET /organizational/no-paging"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 124
  _sql = [[
  SELECT s_organization.`u_id` AS `u_id`, s_organization.`name` AS `name`, s_organization.`full_name` AS `full_name`, s_organization.`code` AS `code`, s_organization.`optional_roles` AS `optional_roles`
  	, s_organization.`parent_id` AS `parent_id`, s_organization.`path` AS `path`, s_organization.`sort_index` AS `sort_index`, s_organization.`status` AS `status`, s_organization.`level` AS `level`
  	, s_organization.`district_id` AS `district_id`
  FROM s_organization
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 124, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_29_GET_permission_permission_x_1(_con)
  local _api = "GET /permission/permission_1"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 125
  _sql = [[
  SELECT s_permission.`u_id` AS `u_id`, s_permission.`name` AS `name`, s_permission.`describe` AS `describe`, s_permission.`status` AS `status`, s_permission.`actions` AS `actions`
  	, s_permission.`optional_fields` AS `optional_fields`, s_permission.`spt_da_types` AS `spt_da_types`, s_permission.`parents` AS `parents`, s_permission.`type` AS `type`
  FROM s_permission
  WHERE s_permission.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_permission", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 125, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_30_DELETE_autz_setting_undefined_organizational_1(_con)
  local _api = "DELETE /autz-setting/undefined/organizational"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 126
  _sql = [[
  SELECT s_user.`u_id` AS `u_id`, s_user.`name` AS `name`, s_user.`username` AS `username`, s_user.`password` AS `password`, s_user.`salt` AS `salt`
  	, s_user.`status` AS `status`, s_user.`create_time` AS `create_time`, s_user.`creator_id` AS `creator_id`
  FROM s_user
  WHERE s_user.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 126, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 127
  _sql = [[
  SELECT `role_id`, `user_id`
  FROM s_user_role
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user_role", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 127, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 128
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 128, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 129
  _sql = [[
  SELECT `u_id`, `parent_id`, `menu_id`, `setting_id`, `path`
  	, `sort_index`, `status`, `level`, `config`
  FROM s_autz_menu
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 129, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 130
  _sql = [[
  SELECT `u_id`, `permission_id`, `setting_id`, `actions`, `data_accesses`
  	, `status`, `priority`, `is_merge`
  FROM s_autz_detail
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 130, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 131
  _sql = [[
  SELECT s_autz_detail.`u_id` AS `u_id`, s_autz_detail.`permission_id` AS `permission_id`, s_autz_detail.`setting_id` AS `setting_id`, s_autz_detail.`actions` AS `actions`, s_autz_detail.`data_accesses` AS `data_accesses`
  	, s_autz_detail.`status` AS `status`, s_autz_detail.`priority` AS `priority`, s_autz_detail.`is_merge` AS `is_merge`
  FROM s_autz_detail
  WHERE s_autz_detail.`status` = %s
  	AND s_autz_detail.`setting_id` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "status", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 131, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 132
  _sql = [[
  SELECT s_permission.`u_id` AS `u_id`, s_permission.`name` AS `name`, s_permission.`describe` AS `describe`, s_permission.`status` AS `status`, s_permission.`actions` AS `actions`
  	, s_permission.`optional_fields` AS `optional_fields`, s_permission.`spt_da_types` AS `spt_da_types`, s_permission.`parents` AS `parents`, s_permission.`type` AS `type`
  FROM s_permission
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 132, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, false)

-- line 133 (ignored write)  _commit_f(_con, false)
  
end

function API_30_DELETE_autz_setting_undefined_organizational_2(_con)
  local _api = "DELETE /autz-setting/undefined/organizational"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

-- line 134 (ignored write)  _commit_f(_con, false)
  
end

function API_31_GET_dictionary_item_no_paging_1(_con)
  local _api = "GET /dictionary-item/no-paging"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 135
  _sql = [[
  SELECT s_dict_item.`u_id` AS `u_id`, s_dict_item.`dict_id` AS `dict_id`, s_dict_item.`name` AS `name`, s_dict_item.`value` AS `value`, s_dict_item.`text` AS `text`
  	, s_dict_item.`value_type` AS `value_type`, s_dict_item.`status` AS `status`, s_dict_item.`describe` AS `describe`, s_dict_item.`parent_id` AS `parent_id`, s_dict_item.`path` AS `path`
  	, s_dict_item.`search_code` AS `search_code`, s_dict_item.`sort_index` AS `sort_index`, s_dict_item.`level_` AS `level_`, s_dict_item.`ordinal` AS `ordinal`, s_dict_item.`properties` AS `properties`
  FROM s_dict_item
  WHERE s_dict_item.`dict_id` = %s
  ORDER BY s_dict_item.`sort_index` ASC
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_dict_item", "dict_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 135, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_32_GET_workflow_model_x_json_1(_con)
  local _api = "GET /workflow//model/6/json"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 136
  _sql = [[
  SELECT `ID_`, `REV_`, `NAME_`, `KEY_`, `CATEGORY_`
  	, `CREATE_TIME_`, `LAST_UPDATE_TIME_`, `VERSION_`, `META_INFO_`, `DEPLOYMENT_ID_`
  	, `EDITOR_SOURCE_VALUE_ID_`, `EDITOR_SOURCE_EXTRA_VALUE_ID_`, `TENANT_ID_`
  FROM ACT_RE_MODEL
  WHERE ID_ = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "act_re_model", "ID_", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 136, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, true)

  -- line 137
  _sql = [[
  SELECT `ID_`, `REV_`, `NAME_`, `KEY_`, `CATEGORY_`
  	, `CREATE_TIME_`, `LAST_UPDATE_TIME_`, `VERSION_`, `META_INFO_`, `DEPLOYMENT_ID_`
  	, `EDITOR_SOURCE_VALUE_ID_`, `EDITOR_SOURCE_EXTRA_VALUE_ID_`, `TENANT_ID_`
  FROM ACT_RE_MODEL
  WHERE ID_ = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "act_re_model", "ID_", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 137, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 138
  _sql = [[
  SELECT `ID_`, `REV_`, `NAME_`, `DEPLOYMENT_ID_`, `BYTES_`
  	, `GENERATED_`
  FROM ACT_GE_BYTEARRAY
  WHERE ID_ = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "act_ge_bytearray", "ID_", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 138, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_33_PUT_schedule_job_undefined_disable_1(_con)
  local _api = "PUT /schedule/job/undefined/disable"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

-- line 139 (ignored write)  _commit_f(_con, false)
  
end

function API_34_POST_authorize_login_1(_con)
  local _api = "POST /authorize/login"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 140
  _sql = [[
  SELECT s_user.`u_id` AS `u_id`, s_user.`name` AS `name`, s_user.`username` AS `username`, s_user.`password` AS `password`, s_user.`salt` AS `salt`
  	, s_user.`status` AS `status`, s_user.`create_time` AS `create_time`, s_user.`creator_id` AS `creator_id`
  FROM s_user
  WHERE s_user.`username` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user", "username", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 140, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, true)

  -- line 141
  _sql = [[
  SELECT s_user.`u_id` AS `u_id`, s_user.`name` AS `name`, s_user.`username` AS `username`, s_user.`password` AS `password`, s_user.`salt` AS `salt`
  	, s_user.`status` AS `status`, s_user.`create_time` AS `create_time`, s_user.`creator_id` AS `creator_id`
  FROM s_user
  WHERE s_user.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 141, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 142
  _sql = [[
  SELECT `role_id`, `user_id`
  FROM s_user_role
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user_role", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 142, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 143
  _sql = [[
  SELECT s_person.`u_id` AS `u_id`, s_person.`name` AS `name`, s_person.`sex` AS `sex`, s_person.`email` AS `email`, s_person.`phone` AS `phone`
  	, s_person.`photo` AS `photo`, s_person.`user_id` AS `user_id`, s_person.`status` AS `status`, s_person.`remark` AS `remark`
  FROM s_person
  WHERE s_person.`user_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_person", "user_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 143, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 144
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 144, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 145
  _sql = [[
  SELECT `u_id`, `parent_id`, `menu_id`, `setting_id`, `path`
  	, `sort_index`, `status`, `level`, `config`
  FROM s_autz_menu
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 145, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 146
  _sql = [[
  SELECT `u_id`, `permission_id`, `setting_id`, `actions`, `data_accesses`
  	, `status`, `priority`, `is_merge`
  FROM s_autz_detail
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 146, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 147
  _sql = [[
  SELECT s_autz_detail.`u_id` AS `u_id`, s_autz_detail.`permission_id` AS `permission_id`, s_autz_detail.`setting_id` AS `setting_id`, s_autz_detail.`actions` AS `actions`, s_autz_detail.`data_accesses` AS `data_accesses`
  	, s_autz_detail.`status` AS `status`, s_autz_detail.`priority` AS `priority`, s_autz_detail.`is_merge` AS `is_merge`
  FROM s_autz_detail
  WHERE s_autz_detail.`status` = %s
  	AND s_autz_detail.`setting_id` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "status", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 147, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 148
  _sql = [[
  SELECT s_permission.`u_id` AS `u_id`, s_permission.`name` AS `name`, s_permission.`describe` AS `describe`, s_permission.`status` AS `status`, s_permission.`actions` AS `actions`
  	, s_permission.`optional_fields` AS `optional_fields`, s_permission.`spt_da_types` AS `spt_da_types`, s_permission.`parents` AS `parents`, s_permission.`type` AS `type`
  FROM s_permission
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 148, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, false)

  -- line 149
  _sql = [[
  SELECT TRIGGER_NAME, TRIGGER_GROUP, NEXT_FIRE_TIME, PRIORITY
  FROM QRTZ_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_STATE = %s
  	AND NEXT_FIRE_TIME <= %s
  	AND (MISFIRE_INSTR = %s
  		OR (MISFIRE_INSTR != %s
  			AND NEXT_FIRE_TIME >= %s))
  ORDER BY NEXT_FIRE_TIME ASC, PRIORITY DESC
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "SCHED_NAME", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "TRIGGER_STATE", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "NEXT_FIRE_TIME", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "MISFIRE_INSTR", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "MISFIRE_INSTR", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "NEXT_FIRE_TIME", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 149, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_34_POST_authorize_login_2(_con)
  local _api = "POST /authorize/login"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 150
  _sql = [[
  SELECT s_user.`u_id` AS `u_id`, s_user.`name` AS `name`, s_user.`username` AS `username`, s_user.`password` AS `password`, s_user.`salt` AS `salt`
  	, s_user.`status` AS `status`, s_user.`create_time` AS `create_time`, s_user.`creator_id` AS `creator_id`
  FROM s_user
  WHERE s_user.`username` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user", "username", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 150, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, true)

  -- line 151
  _sql = [[
  SELECT s_user.`u_id` AS `u_id`, s_user.`name` AS `name`, s_user.`username` AS `username`, s_user.`password` AS `password`, s_user.`salt` AS `salt`
  	, s_user.`status` AS `status`, s_user.`create_time` AS `create_time`, s_user.`creator_id` AS `creator_id`
  FROM s_user
  WHERE s_user.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 151, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 152
  _sql = [[
  SELECT `role_id`, `user_id`
  FROM s_user_role
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user_role", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 152, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 153
  _sql = [[
  SELECT s_role.`u_id` AS `u_id`, s_role.`name` AS `name`, s_role.`describe` AS `describe`, s_role.`status` AS `status`
  FROM s_role
  WHERE s_role.`u_id` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_role", "u_id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 153, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 154
  _sql = [[
  SELECT s_person.`u_id` AS `u_id`, s_person.`name` AS `name`, s_person.`sex` AS `sex`, s_person.`email` AS `email`, s_person.`phone` AS `phone`
  	, s_person.`photo` AS `photo`, s_person.`user_id` AS `user_id`, s_person.`status` AS `status`, s_person.`remark` AS `remark`
  FROM s_person
  WHERE s_person.`user_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_person", "user_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 154, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 155
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 155, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 156
  _sql = [[
  SELECT `u_id`, `parent_id`, `menu_id`, `setting_id`, `path`
  	, `sort_index`, `status`, `level`, `config`
  FROM s_autz_menu
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 156, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 157
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 157, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 158
  _sql = [[
  SELECT `u_id`, `permission_id`, `setting_id`, `actions`, `data_accesses`
  	, `status`, `priority`, `is_merge`
  FROM s_autz_detail
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 158, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 159
  _sql = [[
  SELECT `u_id`, `parent_id`, `menu_id`, `setting_id`, `path`
  	, `sort_index`, `status`, `level`, `config`
  FROM s_autz_menu
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 159, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 160
  _sql = [[
  SELECT `u_id`, `permission_id`, `setting_id`, `actions`, `data_accesses`
  	, `status`, `priority`, `is_merge`
  FROM s_autz_detail
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 160, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 161
  _sql = [[
  SELECT s_autz_detail.`u_id` AS `u_id`, s_autz_detail.`permission_id` AS `permission_id`, s_autz_detail.`setting_id` AS `setting_id`, s_autz_detail.`actions` AS `actions`, s_autz_detail.`data_accesses` AS `data_accesses`
  	, s_autz_detail.`status` AS `status`, s_autz_detail.`priority` AS `priority`, s_autz_detail.`is_merge` AS `is_merge`
  FROM s_autz_detail
  WHERE s_autz_detail.`status` = %s
  	AND s_autz_detail.`setting_id` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "status", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 161, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 162
  _sql = [[
  SELECT s_permission.`u_id` AS `u_id`, s_permission.`name` AS `name`, s_permission.`describe` AS `describe`, s_permission.`status` AS `status`, s_permission.`actions` AS `actions`
  	, s_permission.`optional_fields` AS `optional_fields`, s_permission.`spt_da_types` AS `spt_da_types`, s_permission.`parents` AS `parents`, s_permission.`type` AS `type`
  FROM s_permission
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 162, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_34_POST_authorize_login_3(_con)
  local _api = "POST /authorize/login"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 163
  _sql = [[
  SELECT s_user.`u_id` AS `u_id`, s_user.`name` AS `name`, s_user.`username` AS `username`, s_user.`password` AS `password`, s_user.`salt` AS `salt`
  	, s_user.`status` AS `status`, s_user.`create_time` AS `create_time`, s_user.`creator_id` AS `creator_id`
  FROM s_user
  WHERE s_user.`username` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user", "username", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 163, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_35_GET_user_xdxdaxecxaecxaxeaxf_1(_con)
  local _api = "GET /user/4291d7da9005377ec9aec4a71ea837f"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 164
  _sql = [[
  SELECT s_user.`u_id` AS `u_id`, s_user.`name` AS `name`, s_user.`username` AS `username`, s_user.`password` AS `password`, s_user.`salt` AS `salt`
  	, s_user.`status` AS `status`, s_user.`create_time` AS `create_time`, s_user.`creator_id` AS `creator_id`
  FROM s_user
  WHERE s_user.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 164, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 165
  _sql = [[
  SELECT `role_id`, `user_id`
  FROM s_user_role
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user_role", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 165, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_36_PATCH_dictionary_item__1(_con)
  local _api = "PATCH /dictionary-item/"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 166
  _sql = [[
  SELECT s_dict_item.`u_id` AS `u_id`, s_dict_item.`dict_id` AS `dict_id`, s_dict_item.`name` AS `name`, s_dict_item.`value` AS `value`, s_dict_item.`text` AS `text`
  	, s_dict_item.`value_type` AS `value_type`, s_dict_item.`status` AS `status`, s_dict_item.`describe` AS `describe`, s_dict_item.`parent_id` AS `parent_id`, s_dict_item.`path` AS `path`
  	, s_dict_item.`search_code` AS `search_code`, s_dict_item.`sort_index` AS `sort_index`, s_dict_item.`level_` AS `level_`, s_dict_item.`ordinal` AS `ordinal`, s_dict_item.`properties` AS `properties`
  FROM s_dict_item
  WHERE s_dict_item.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_dict_item", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 166, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 167 (ignored write)  _commit_f(_con, true)
  
end

function API_37_GET_dictionary_1(_con)
  local _api = "GET /dictionary"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 168
  _sql = [[
  SELECT COUNT(0) AS total
  FROM s_dictionary
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 168, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_37_GET_dictionary_2(_con)
  local _api = "GET /dictionary"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 169
  _sql = [[
  SELECT COUNT(0) AS total
  FROM s_dictionary
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 169, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 170
  _sql = [[
  SELECT s_dictionary.`u_id` AS `u_id`, s_dictionary.`name` AS `name`, s_dictionary.`classified_id` AS `classified_id`, s_dictionary.`describe` AS `describe`, s_dictionary.`create_time` AS `create_time`
  	, s_dictionary.`creator_id` AS `creator_id`, s_dictionary.`status` AS `status`
  FROM s_dictionary
  LIMIT %s, 20
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 170, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_37_GET_dictionary_3(_con)
  local _api = "GET /dictionary"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 171
  _sql = [[
  SELECT COUNT(0) AS total
  FROM s_dictionary
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 171, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 172
  _sql = [[
  SELECT s_dictionary.`u_id` AS `u_id`, s_dictionary.`name` AS `name`, s_dictionary.`classified_id` AS `classified_id`, s_dictionary.`describe` AS `describe`, s_dictionary.`create_time` AS `create_time`
  	, s_dictionary.`creator_id` AS `creator_id`, s_dictionary.`status` AS `status`
  FROM s_dictionary
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 172, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_37_GET_dictionary_4(_con)
  local _api = "GET /dictionary"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 173
  _sql = [[
  SELECT COUNT(0) AS total
  FROM s_dictionary
  WHERE s_dictionary.`u_id` LIKE %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_dictionary", "u_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 173, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 174
  _sql = [[
  SELECT s_dictionary.`u_id` AS `u_id`, s_dictionary.`name` AS `name`, s_dictionary.`classified_id` AS `classified_id`, s_dictionary.`describe` AS `describe`, s_dictionary.`create_time` AS `create_time`
  	, s_dictionary.`creator_id` AS `creator_id`, s_dictionary.`status` AS `status`
  FROM s_dictionary
  WHERE s_dictionary.`u_id` LIKE %s
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_dictionary", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 174, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_38_PATCH_datasource_config_1(_con)
  local _api = "PATCH /datasource/config"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 175
  _sql = [[
  SELECT s_datasource_conf.`u_id` AS `u_id`, s_datasource_conf.`name` AS `name`, s_datasource_conf.`enabled` AS `enabled`, s_datasource_conf.`create_date` AS `create_date`, s_datasource_conf.`properties` AS `properties`
  	, s_datasource_conf.`describe` AS `describe`
  FROM s_datasource_conf
  WHERE s_datasource_conf.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_datasource_conf", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 175, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 176 (ignored write)  _commit_f(_con, true)
  
end

function API_38_PATCH_datasource_config_2(_con)
  local _api = "PATCH /datasource/config"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 177
  _sql = [[
  SELECT s_datasource_conf.`u_id` AS `u_id`, s_datasource_conf.`name` AS `name`, s_datasource_conf.`enabled` AS `enabled`, s_datasource_conf.`create_date` AS `create_date`, s_datasource_conf.`properties` AS `properties`
  	, s_datasource_conf.`describe` AS `describe`
  FROM s_datasource_conf
  WHERE s_datasource_conf.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_datasource_conf", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 177, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 178 (ignored write)  _commit_f(_con, true)
  
end

function API_39_DELETE_workflow_model_x_1(_con)
  local _api = "DELETE /workflow/model/1"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 179
  _sql = [[
  SELECT `ID_`, `REV_`, `NAME_`, `KEY_`, `CATEGORY_`
  	, `CREATE_TIME_`, `LAST_UPDATE_TIME_`, `VERSION_`, `META_INFO_`, `DEPLOYMENT_ID_`
  	, `EDITOR_SOURCE_VALUE_ID_`, `EDITOR_SOURCE_EXTRA_VALUE_ID_`, `TENANT_ID_`
  FROM ACT_RE_MODEL
  WHERE ID_ = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "act_re_model", "ID_", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 179, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 180 (ignored write)-- line 181 (ignored write)-- line 182 (ignored write)  _commit_f(_con, true)
  
end

function API_40_PATCH_dynamic_form_bind_1(_con)
  local _api = "PATCH /dynamic/form/bind"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 183
  _sql = [[
  SELECT s_dyn_form.`u_id` AS `u_id`, s_dyn_form.`name` AS `name`, s_dyn_form.`db_name` AS `db_name`, s_dyn_form.`t_name` AS `t_name`, s_dyn_form.`describe` AS `describe`
  	, s_dyn_form.`version` AS `version`, s_dyn_form.`creator_id` AS `creator_id`, s_dyn_form.`create_time` AS `create_time`, s_dyn_form.`update_time` AS `update_time`, s_dyn_form.`is_deployed` AS `is_deployed`
  	, s_dyn_form.`alias` AS `alias`, s_dyn_form.`triggers` AS `triggers`, s_dyn_form.`correlations` AS `correlations`, s_dyn_form.`data_source_id` AS `data_source_id`, s_dyn_form.`properties` AS `properties`
  	, s_dyn_form.`type` AS `type`, s_dyn_form.`tags` AS `tags`
  FROM s_dyn_form
  WHERE s_dyn_form.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_dyn_form", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 183, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 184 (ignored write)-- line 185 (ignored write)  _commit_f(_con, true)
  
end

function API_40_PATCH_dynamic_form_bind_2(_con)
  local _api = "PATCH /dynamic/form/bind"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 186
  _sql = [[
  SELECT s_dyn_form.`u_id` AS `u_id`, s_dyn_form.`name` AS `name`, s_dyn_form.`db_name` AS `db_name`, s_dyn_form.`t_name` AS `t_name`, s_dyn_form.`describe` AS `describe`
  	, s_dyn_form.`version` AS `version`, s_dyn_form.`creator_id` AS `creator_id`, s_dyn_form.`create_time` AS `create_time`, s_dyn_form.`update_time` AS `update_time`, s_dyn_form.`is_deployed` AS `is_deployed`
  	, s_dyn_form.`alias` AS `alias`, s_dyn_form.`triggers` AS `triggers`, s_dyn_form.`correlations` AS `correlations`, s_dyn_form.`data_source_id` AS `data_source_id`, s_dyn_form.`properties` AS `properties`
  	, s_dyn_form.`type` AS `type`, s_dyn_form.`tags` AS `tags`
  FROM s_dyn_form
  WHERE s_dyn_form.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_dyn_form", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 186, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 187 (ignored write)  _commit_f(_con, true)
  
end

function API_41_PUT_autz_setting_merge_1(_con)
  local _api = "PUT /autz-setting/merge"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 188
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 188, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 189 (ignored write)  -- line 190
  _sql = [[
  SELECT s_autz_menu.`u_id` AS `u_id`, s_autz_menu.`menu_id` AS `menu_id`, s_autz_menu.`setting_id` AS `setting_id`, s_autz_menu.`sort_index` AS `sort_index`, s_autz_menu.`parent_id` AS `parent_id`
  	, s_autz_menu.`status` AS `status`, s_autz_menu.`path` AS `path`, s_autz_menu.`level` AS `level`, s_autz_menu.`config` AS `config`
  FROM s_autz_menu
  WHERE s_autz_menu.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 190, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 191 (ignored write)-- line 192 (ignored write)  _commit_f(_con, true)
  
end

function API_41_PUT_autz_setting_merge_2(_con)
  local _api = "PUT /autz-setting/merge"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 193
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 193, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 194
  _sql = [[
  SELECT `u_id`, `parent_id`, `menu_id`, `setting_id`, `path`
  	, `sort_index`, `status`, `level`, `config`
  FROM s_autz_menu
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 194, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 195
  _sql = [[
  SELECT `u_id`, `permission_id`, `setting_id`, `actions`, `data_accesses`
  	, `status`, `priority`, `is_merge`
  FROM s_autz_detail
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 195, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 196 (ignored write)-- line 197 (ignored write)-- line 198 (ignored write)-- line 199 (ignored write)-- line 200 (ignored write)-- line 201 (ignored write)-- line 202 (ignored write)-- line 203 (ignored write)-- line 204 (ignored write)-- line 205 (ignored write)-- line 206 (ignored write)-- line 207 (ignored write)-- line 208 (ignored write)-- line 209 (ignored write)-- line 210 (ignored write)-- line 211 (ignored write)-- line 212 (ignored write)-- line 213 (ignored write)-- line 214 (ignored write)-- line 215 (ignored write)-- line 216 (ignored write)-- line 217 (ignored write)-- line 218 (ignored write)-- line 219 (ignored write)-- line 220 (ignored write)-- line 221 (ignored write)-- line 222 (ignored write)-- line 223 (ignored write)-- line 224 (ignored write)-- line 225 (ignored write)-- line 226 (ignored write)-- line 227 (ignored write)-- line 228 (ignored write)-- line 229 (ignored write)-- line 230 (ignored write)-- line 231 (ignored write)  _commit_f(_con, true)
  
end

function API_41_PUT_autz_setting_merge_3(_con)
  local _api = "PUT /autz-setting/merge"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 232
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 232, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 233
  _sql = [[
  SELECT `u_id`, `parent_id`, `menu_id`, `setting_id`, `path`
  	, `sort_index`, `status`, `level`, `config`
  FROM s_autz_menu
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 233, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 234
  _sql = [[
  SELECT `u_id`, `permission_id`, `setting_id`, `actions`, `data_accesses`
  	, `status`, `priority`, `is_merge`
  FROM s_autz_detail
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 234, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 235 (ignored write)-- line 236 (ignored write)-- line 237 (ignored write)-- line 238 (ignored write)-- line 239 (ignored write)-- line 240 (ignored write)-- line 241 (ignored write)-- line 242 (ignored write)-- line 243 (ignored write)-- line 244 (ignored write)-- line 245 (ignored write)-- line 246 (ignored write)-- line 247 (ignored write)-- line 248 (ignored write)-- line 249 (ignored write)-- line 250 (ignored write)-- line 251 (ignored write)-- line 252 (ignored write)-- line 253 (ignored write)-- line 254 (ignored write)-- line 255 (ignored write)-- line 256 (ignored write)-- line 257 (ignored write)-- line 258 (ignored write)-- line 259 (ignored write)-- line 260 (ignored write)-- line 261 (ignored write)-- line 262 (ignored write)-- line 263 (ignored write)-- line 264 (ignored write)-- line 265 (ignored write)-- line 266 (ignored write)-- line 267 (ignored write)-- line 268 (ignored write)  _commit_f(_con, true)
  
end

function API_41_PUT_autz_setting_merge_4(_con)
  local _api = "PUT /autz-setting/merge"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 269
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 269, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 270
  _sql = [[
  SELECT `u_id`, `parent_id`, `menu_id`, `setting_id`, `path`
  	, `sort_index`, `status`, `level`, `config`
  FROM s_autz_menu
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 270, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 271
  _sql = [[
  SELECT `u_id`, `permission_id`, `setting_id`, `actions`, `data_accesses`
  	, `status`, `priority`, `is_merge`
  FROM s_autz_detail
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 271, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 272 (ignored write)-- line 273 (ignored write)-- line 274 (ignored write)-- line 275 (ignored write)-- line 276 (ignored write)-- line 277 (ignored write)-- line 278 (ignored write)-- line 279 (ignored write)-- line 280 (ignored write)-- line 281 (ignored write)-- line 282 (ignored write)-- line 283 (ignored write)-- line 284 (ignored write)-- line 285 (ignored write)-- line 286 (ignored write)-- line 287 (ignored write)-- line 288 (ignored write)-- line 289 (ignored write)-- line 290 (ignored write)-- line 291 (ignored write)-- line 292 (ignored write)-- line 293 (ignored write)-- line 294 (ignored write)-- line 295 (ignored write)-- line 296 (ignored write)-- line 297 (ignored write)-- line 298 (ignored write)-- line 299 (ignored write)-- line 300 (ignored write)-- line 301 (ignored write)-- line 302 (ignored write)-- line 303 (ignored write)-- line 304 (ignored write)-- line 305 (ignored write)-- line 306 (ignored write)  _commit_f(_con, true)
  
end

function API_41_PUT_autz_setting_merge_5(_con)
  local _api = "PUT /autz-setting/merge"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 307
  _sql = [[
  SELECT s_user.`u_id` AS `u_id`, s_user.`name` AS `name`, s_user.`username` AS `username`, s_user.`password` AS `password`, s_user.`salt` AS `salt`
  	, s_user.`status` AS `status`, s_user.`create_time` AS `create_time`, s_user.`creator_id` AS `creator_id`
  FROM s_user
  WHERE s_user.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 307, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 308
  _sql = [[
  SELECT `role_id`, `user_id`
  FROM s_user_role
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user_role", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 308, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 309
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 309, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 310
  _sql = [[
  SELECT `u_id`, `parent_id`, `menu_id`, `setting_id`, `path`
  	, `sort_index`, `status`, `level`, `config`
  FROM s_autz_menu
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 310, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 311
  _sql = [[
  SELECT `u_id`, `permission_id`, `setting_id`, `actions`, `data_accesses`
  	, `status`, `priority`, `is_merge`
  FROM s_autz_detail
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 311, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 312
  _sql = [[
  SELECT s_autz_detail.`u_id` AS `u_id`, s_autz_detail.`permission_id` AS `permission_id`, s_autz_detail.`setting_id` AS `setting_id`, s_autz_detail.`actions` AS `actions`, s_autz_detail.`data_accesses` AS `data_accesses`
  	, s_autz_detail.`status` AS `status`, s_autz_detail.`priority` AS `priority`, s_autz_detail.`is_merge` AS `is_merge`
  FROM s_autz_detail
  WHERE s_autz_detail.`status` = %s
  	AND s_autz_detail.`setting_id` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "status", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 312, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 313
  _sql = [[
  SELECT s_permission.`u_id` AS `u_id`, s_permission.`name` AS `name`, s_permission.`describe` AS `describe`, s_permission.`status` AS `status`, s_permission.`actions` AS `actions`
  	, s_permission.`optional_fields` AS `optional_fields`, s_permission.`spt_da_types` AS `spt_da_types`, s_permission.`parents` AS `parents`, s_permission.`type` AS `type`
  FROM s_permission
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 313, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, true)

  -- line 314
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 314, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 315
  _sql = [[
  SELECT `u_id`, `parent_id`, `menu_id`, `setting_id`, `path`
  	, `sort_index`, `status`, `level`, `config`
  FROM s_autz_menu
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 315, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 316
  _sql = [[
  SELECT `u_id`, `permission_id`, `setting_id`, `actions`, `data_accesses`
  	, `status`, `priority`, `is_merge`
  FROM s_autz_detail
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 316, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 317 (ignored write)-- line 318 (ignored write)-- line 319 (ignored write)-- line 320 (ignored write)-- line 321 (ignored write)-- line 322 (ignored write)-- line 323 (ignored write)-- line 324 (ignored write)-- line 325 (ignored write)-- line 326 (ignored write)-- line 327 (ignored write)-- line 328 (ignored write)-- line 329 (ignored write)-- line 330 (ignored write)-- line 331 (ignored write)-- line 332 (ignored write)-- line 333 (ignored write)-- line 334 (ignored write)-- line 335 (ignored write)-- line 336 (ignored write)-- line 337 (ignored write)-- line 338 (ignored write)-- line 339 (ignored write)-- line 340 (ignored write)-- line 341 (ignored write)-- line 342 (ignored write)-- line 343 (ignored write)-- line 344 (ignored write)-- line 345 (ignored write)-- line 346 (ignored write)-- line 347 (ignored write)-- line 348 (ignored write)-- line 349 (ignored write)-- line 350 (ignored write)  _commit_f(_con, true)
  
end

function API_41_PUT_autz_setting_merge_6(_con)
  local _api = "PUT /autz-setting/merge"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 351
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 351, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 352
  _sql = [[
  SELECT `u_id`, `parent_id`, `menu_id`, `setting_id`, `path`
  	, `sort_index`, `status`, `level`, `config`
  FROM s_autz_menu
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 352, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 353
  _sql = [[
  SELECT `u_id`, `permission_id`, `setting_id`, `actions`, `data_accesses`
  	, `status`, `priority`, `is_merge`
  FROM s_autz_detail
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 353, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 354 (ignored write)-- line 355 (ignored write)  -- line 356
  _sql = [[
  SELECT s_autz_menu.`u_id` AS `u_id`, s_autz_menu.`menu_id` AS `menu_id`, s_autz_menu.`setting_id` AS `setting_id`, s_autz_menu.`sort_index` AS `sort_index`, s_autz_menu.`parent_id` AS `parent_id`
  	, s_autz_menu.`status` AS `status`, s_autz_menu.`path` AS `path`, s_autz_menu.`level` AS `level`, s_autz_menu.`config` AS `config`
  FROM s_autz_menu
  WHERE s_autz_menu.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 356, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 357 (ignored write)  _commit_f(_con, true)
  
end

function API_42_DELETE_permission_permission_x_1(_con)
  local _api = "DELETE /permission/permission_1"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 358
  _sql = [[
  SELECT s_permission.`u_id` AS `u_id`, s_permission.`name` AS `name`, s_permission.`describe` AS `describe`, s_permission.`status` AS `status`, s_permission.`actions` AS `actions`
  	, s_permission.`optional_fields` AS `optional_fields`, s_permission.`spt_da_types` AS `spt_da_types`, s_permission.`parents` AS `parents`, s_permission.`type` AS `type`
  FROM s_permission
  WHERE s_permission.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_permission", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 358, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 359 (ignored write)  _commit_f(_con, true)
  
end

function API_43_GET_permission_oauthx_client_config_1(_con)
  local _api = "GET /permission/oauth2-client-config"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 360
  _sql = [[
  SELECT s_permission.`u_id` AS `u_id`, s_permission.`name` AS `name`, s_permission.`describe` AS `describe`, s_permission.`status` AS `status`, s_permission.`actions` AS `actions`
  	, s_permission.`optional_fields` AS `optional_fields`, s_permission.`spt_da_types` AS `spt_da_types`, s_permission.`parents` AS `parents`, s_permission.`type` AS `type`
  FROM s_permission
  WHERE s_permission.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_permission", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 360, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_44_GET_datasource_1(_con)
  local _api = "GET /datasource"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 361
  _sql = [[
  SELECT s_datasource_conf.`u_id` AS `u_id`, s_datasource_conf.`name` AS `name`, s_datasource_conf.`enabled` AS `enabled`, s_datasource_conf.`create_date` AS `create_date`, s_datasource_conf.`properties` AS `properties`
  	, s_datasource_conf.`describe` AS `describe`
  FROM s_datasource_conf
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 361, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_45_GET_user_1(_con)
  local _api = "GET /user"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 362
  _sql = [[
  SELECT s_user.`u_id` AS `u_id`, s_user.`name` AS `name`, s_user.`username` AS `username`, s_user.`password` AS `password`, s_user.`salt` AS `salt`
  	, s_user.`status` AS `status`, s_user.`create_time` AS `create_time`, s_user.`creator_id` AS `creator_id`
  FROM s_user
  WHERE s_user.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 362, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 363
  _sql = [[
  SELECT `role_id`, `user_id`
  FROM s_user_role
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user_role", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 363, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 364
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 364, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 365
  _sql = [[
  SELECT `u_id`, `parent_id`, `menu_id`, `setting_id`, `path`
  	, `sort_index`, `status`, `level`, `config`
  FROM s_autz_menu
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 365, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 366
  _sql = [[
  SELECT `u_id`, `permission_id`, `setting_id`, `actions`, `data_accesses`
  	, `status`, `priority`, `is_merge`
  FROM s_autz_detail
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 366, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 367
  _sql = [[
  SELECT s_autz_detail.`u_id` AS `u_id`, s_autz_detail.`permission_id` AS `permission_id`, s_autz_detail.`setting_id` AS `setting_id`, s_autz_detail.`actions` AS `actions`, s_autz_detail.`data_accesses` AS `data_accesses`
  	, s_autz_detail.`status` AS `status`, s_autz_detail.`priority` AS `priority`, s_autz_detail.`is_merge` AS `is_merge`
  FROM s_autz_detail
  WHERE s_autz_detail.`status` = %s
  	AND s_autz_detail.`setting_id` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "status", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 367, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 368
  _sql = [[
  SELECT s_permission.`u_id` AS `u_id`, s_permission.`name` AS `name`, s_permission.`describe` AS `describe`, s_permission.`status` AS `status`, s_permission.`actions` AS `actions`
  	, s_permission.`optional_fields` AS `optional_fields`, s_permission.`spt_da_types` AS `spt_da_types`, s_permission.`parents` AS `parents`, s_permission.`type` AS `type`
  FROM s_permission
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 368, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  -- line 369
  _sql = [[
  SELECT COUNT(0) AS total
  FROM s_user
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 369, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 370
  _sql = [[
  SELECT s_user.`u_id` AS `u_id`, s_user.`name` AS `name`, s_user.`username` AS `username`, s_user.`status` AS `status`, s_user.`create_time` AS `create_time`
  	, s_user.`creator_id` AS `creator_id`
  FROM s_user
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 370, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_45_GET_user_2(_con)
  local _api = "GET /user"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 371
  _sql = [[
  SELECT COUNT(0) AS total
  FROM s_user
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 371, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 372
  _sql = [[
  SELECT s_user.`u_id` AS `u_id`, s_user.`name` AS `name`, s_user.`username` AS `username`, s_user.`status` AS `status`, s_user.`create_time` AS `create_time`
  	, s_user.`creator_id` AS `creator_id`
  FROM s_user
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 372, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_45_GET_user_3(_con)
  local _api = "GET /user"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 373
  _sql = [[
  SELECT COUNT(0) AS total
  FROM s_user
  WHERE s_user.`name` LIKE %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user", "name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 373, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 374
  _sql = [[
  SELECT s_user.`u_id` AS `u_id`, s_user.`name` AS `name`, s_user.`username` AS `username`, s_user.`status` AS `status`, s_user.`create_time` AS `create_time`
  	, s_user.`creator_id` AS `creator_id`
  FROM s_user
  WHERE s_user.`name` LIKE %s
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user", "name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 374, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_46_DELETE_dictionary_item_efxbabefxaxbxcxdxbbfxbx_1(_con)
  local _api = "DELETE /dictionary-item/ef217917babef9a7257b4c8d3bbf1b30"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 375
  _sql = [[
  SELECT s_dict_item.`u_id` AS `u_id`, s_dict_item.`dict_id` AS `dict_id`, s_dict_item.`name` AS `name`, s_dict_item.`value` AS `value`, s_dict_item.`text` AS `text`
  	, s_dict_item.`value_type` AS `value_type`, s_dict_item.`status` AS `status`, s_dict_item.`describe` AS `describe`, s_dict_item.`parent_id` AS `parent_id`, s_dict_item.`path` AS `path`
  	, s_dict_item.`search_code` AS `search_code`, s_dict_item.`sort_index` AS `sort_index`, s_dict_item.`level_` AS `level_`, s_dict_item.`ordinal` AS `ordinal`, s_dict_item.`properties` AS `properties`
  FROM s_dict_item
  WHERE s_dict_item.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_dict_item", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 375, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 376 (ignored write)  _commit_f(_con, true)
  
end

function API_47_PATCH_user_setting_me_code_generator_1(_con)
  local _api = "PATCH /user-setting/me/code-generator"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 377
  _sql = [[
  SELECT s_user_setting.`u_id` AS `u_id`, s_user_setting.`key` AS `key`, s_user_setting.`setting_id` AS `setting_id`, s_user_setting.`user_id` AS `user_id`, s_user_setting.`setting` AS `setting`
  	, s_user_setting.`describe` AS `describe`, s_user_setting.`name` AS `name`, s_user_setting.`create_time` AS `create_time`, s_user_setting.`update_time` AS `update_time`
  FROM s_user_setting
  WHERE s_user_setting.`user_id` = %s
  	AND s_user_setting.`key` = %s
  	AND s_user_setting.`setting_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user_setting", "user_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_user_setting", "key", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_user_setting", "setting_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 377, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 378 (ignored write)  _commit_f(_con, true)
  
end

function API_48_GET_dynamic_form_column_a_1(_con)
  local _api = "GET /dynamic/form/column/a"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 379
  _sql = [[
  SELECT s_dyn_form_column.`u_id` AS `u_id`, s_dyn_form_column.`form_id` AS `form_id`, s_dyn_form_column.`name` AS `name`, s_dyn_form_column.`column_name` AS `column_name`, s_dyn_form_column.`describe` AS `describe`
  	, s_dyn_form_column.`alias` AS `alias`, s_dyn_form_column.`java_type` AS `java_type`, s_dyn_form_column.`jdbc_type` AS `jdbc_type`, s_dyn_form_column.`data_type` AS `data_type`, s_dyn_form_column.`length` AS `length`
  	, s_dyn_form_column.`precision` AS `precision`, s_dyn_form_column.`scale` AS `scale`, s_dyn_form_column.`dict_config` AS `dict_config`, s_dyn_form_column.`sort_index` AS `sort_index`, s_dyn_form_column.`properties` AS `properties`
  	, s_dyn_form_column.`validator` AS `validator`
  FROM s_dyn_form_column
  WHERE s_dyn_form_column.`form_id` = %s
  ORDER BY s_dyn_form_column.`sort_index` ASC
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_dyn_form_column", "form_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 379, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_49_GET_role_role_x_1(_con)
  local _api = "GET /role/role_2"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 380
  _sql = [[
  SELECT s_role.`u_id` AS `u_id`, s_role.`name` AS `name`, s_role.`describe` AS `describe`, s_role.`status` AS `status`
  FROM s_role
  WHERE s_role.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_role", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 380, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_50_POST_role_1(_con)
  local _api = "POST /role"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 381
  _sql = [[
  SELECT s_role.`u_id` AS `u_id`, s_role.`name` AS `name`, s_role.`describe` AS `describe`, s_role.`status` AS `status`
  FROM s_role
  WHERE s_role.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_role", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 381, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 382 (ignored write)  _commit_f(_con, true)
  
end

function API_51_GET_dashboard_user_1(_con)
  local _api = "GET /dashboard-user"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 383
  _sql = [[
  SELECT s_user_setting.`u_id` AS `u_id`, s_user_setting.`key` AS `key`, s_user_setting.`setting_id` AS `setting_id`, s_user_setting.`user_id` AS `user_id`, s_user_setting.`setting` AS `setting`
  	, s_user_setting.`describe` AS `describe`, s_user_setting.`name` AS `name`, s_user_setting.`create_time` AS `create_time`, s_user_setting.`update_time` AS `update_time`
  FROM s_user_setting
  WHERE s_user_setting.`user_id` = %s
  	AND s_user_setting.`key` = %s
  	AND s_user_setting.`setting_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user_setting", "user_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_user_setting", "key", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_user_setting", "setting_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 383, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, false)

  -- line 384
  _sql = [[
  SELECT s_dashboard_conf.`u_id` AS `u_id`, s_dashboard_conf.`name` AS `name`, s_dashboard_conf.`type` AS `type`, s_dashboard_conf.`template` AS `template`, s_dashboard_conf.`script` AS `script`
  	, s_dashboard_conf.`script_lang` AS `script_lang`, s_dashboard_conf.`permission` AS `permission`, s_dashboard_conf.`creator_id` AS `creator_id`, s_dashboard_conf.`create_time` AS `create_time`, s_dashboard_conf.`sort_index` AS `sort_index`
  	, s_dashboard_conf.`is_default` AS `is_default`, s_dashboard_conf.`status` AS `status`
  FROM s_dashboard_conf
  WHERE s_dashboard_conf.`is_default` = %s
  	OR s_dashboard_conf.`is_default` IS NULL
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_dashboard_conf", "is_default", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 384, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_51_GET_dashboard_user_2(_con)
  local _api = "GET /dashboard-user"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 385
  _sql = [[
  SELECT s_user_setting.`u_id` AS `u_id`, s_user_setting.`key` AS `key`, s_user_setting.`setting_id` AS `setting_id`, s_user_setting.`user_id` AS `user_id`, s_user_setting.`setting` AS `setting`
  	, s_user_setting.`describe` AS `describe`, s_user_setting.`name` AS `name`, s_user_setting.`create_time` AS `create_time`, s_user_setting.`update_time` AS `update_time`
  FROM s_user_setting
  WHERE s_user_setting.`user_id` = %s
  	AND s_user_setting.`key` = %s
  	AND s_user_setting.`setting_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user_setting", "user_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_user_setting", "key", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_user_setting", "setting_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 385, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_52_GET_person_1(_con)
  local _api = "GET /person"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 386
  _sql = [[
  SELECT s_person.`u_id` AS `u_id`, s_person.`name` AS `name`, s_person.`sex` AS `sex`, s_person.`email` AS `email`, s_person.`phone` AS `phone`
  	, s_person.`photo` AS `photo`, s_person.`user_id` AS `user_id`, s_person.`status` AS `status`, s_person.`remark` AS `remark`
  FROM s_person
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 386, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_52_GET_person_2(_con)
  local _api = "GET /person"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 387
  _sql = [[
  SELECT s_person.`u_id` AS `u_id`, s_person.`name` AS `name`, s_person.`sex` AS `sex`, s_person.`email` AS `email`, s_person.`phone` AS `phone`
  	, s_person.`photo` AS `photo`, s_person.`user_id` AS `user_id`, s_person.`status` AS `status`, s_person.`remark` AS `remark`
  FROM s_person
  WHERE s_person.`name` LIKE %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_person", "name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 387, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_53_GET_role_role_x_1(_con)
  local _api = "GET /role/role_1"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 388
  _sql = [[
  SELECT s_role.`u_id` AS `u_id`, s_role.`name` AS `name`, s_role.`describe` AS `describe`, s_role.`status` AS `status`
  FROM s_role
  WHERE s_role.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_role", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 388, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_54_GET_datasource_config_1(_con)
  local _api = "GET /datasource/config"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 389
  _sql = [[
  SELECT COUNT(0) AS total
  FROM s_datasource_conf
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 389, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_54_GET_datasource_config_2(_con)
  local _api = "GET /datasource/config"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 390
  _sql = [[
  SELECT COUNT(0) AS total
  FROM s_datasource_conf
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 390, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 391
  _sql = [[
  SELECT s_datasource_conf.`u_id` AS `u_id`, s_datasource_conf.`name` AS `name`, s_datasource_conf.`enabled` AS `enabled`, s_datasource_conf.`create_date` AS `create_date`, s_datasource_conf.`properties` AS `properties`
  	, s_datasource_conf.`describe` AS `describe`
  FROM s_datasource_conf
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 391, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_54_GET_datasource_config_3(_con)
  local _api = "GET /datasource/config"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 392
  _sql = [[
  SELECT COUNT(0) AS total
  FROM s_datasource_conf
  WHERE s_datasource_conf.`u_id` LIKE %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_datasource_conf", "u_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 392, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 393
  _sql = [[
  SELECT s_datasource_conf.`u_id` AS `u_id`, s_datasource_conf.`name` AS `name`, s_datasource_conf.`enabled` AS `enabled`, s_datasource_conf.`create_date` AS `create_date`, s_datasource_conf.`properties` AS `properties`
  	, s_datasource_conf.`describe` AS `describe`
  FROM s_datasource_conf
  WHERE s_datasource_conf.`u_id` LIKE %s
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_datasource_conf", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 393, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_55_GET_permission_1(_con)
  local _api = "GET /permission"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 394
  _sql = [[
  SELECT COUNT(0) AS total
  FROM s_permission
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 394, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 395
  _sql = [[
  SELECT s_permission.`u_id` AS `u_id`, s_permission.`name` AS `name`, s_permission.`describe` AS `describe`, s_permission.`status` AS `status`, s_permission.`actions` AS `actions`
  	, s_permission.`optional_fields` AS `optional_fields`, s_permission.`spt_da_types` AS `spt_da_types`, s_permission.`parents` AS `parents`, s_permission.`type` AS `type`
  FROM s_permission
  LIMIT %s, 20
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 395, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_55_GET_permission_2(_con)
  local _api = "GET /permission"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 396
  _sql = [[
  SELECT s_user.`u_id` AS `u_id`, s_user.`name` AS `name`, s_user.`username` AS `username`, s_user.`password` AS `password`, s_user.`salt` AS `salt`
  	, s_user.`status` AS `status`, s_user.`create_time` AS `create_time`, s_user.`creator_id` AS `creator_id`
  FROM s_user
  WHERE s_user.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 396, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 397
  _sql = [[
  SELECT `role_id`, `user_id`
  FROM s_user_role
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user_role", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 397, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 398
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 398, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 399
  _sql = [[
  SELECT `u_id`, `parent_id`, `menu_id`, `setting_id`, `path`
  	, `sort_index`, `status`, `level`, `config`
  FROM s_autz_menu
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 399, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 400
  _sql = [[
  SELECT `u_id`, `permission_id`, `setting_id`, `actions`, `data_accesses`
  	, `status`, `priority`, `is_merge`
  FROM s_autz_detail
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 400, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 401
  _sql = [[
  SELECT s_autz_detail.`u_id` AS `u_id`, s_autz_detail.`permission_id` AS `permission_id`, s_autz_detail.`setting_id` AS `setting_id`, s_autz_detail.`actions` AS `actions`, s_autz_detail.`data_accesses` AS `data_accesses`
  	, s_autz_detail.`status` AS `status`, s_autz_detail.`priority` AS `priority`, s_autz_detail.`is_merge` AS `is_merge`
  FROM s_autz_detail
  WHERE s_autz_detail.`status` = %s
  	AND s_autz_detail.`setting_id` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "status", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 401, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 402
  _sql = [[
  SELECT s_permission.`u_id` AS `u_id`, s_permission.`name` AS `name`, s_permission.`describe` AS `describe`, s_permission.`status` AS `status`, s_permission.`actions` AS `actions`
  	, s_permission.`optional_fields` AS `optional_fields`, s_permission.`spt_da_types` AS `spt_da_types`, s_permission.`parents` AS `parents`, s_permission.`type` AS `type`
  FROM s_permission
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 402, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  -- line 403
  _sql = [[
  SELECT COUNT(0) AS total
  FROM s_permission
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 403, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 404
  _sql = [[
  SELECT s_permission.`u_id` AS `u_id`, s_permission.`name` AS `name`, s_permission.`describe` AS `describe`, s_permission.`status` AS `status`, s_permission.`actions` AS `actions`
  	, s_permission.`optional_fields` AS `optional_fields`, s_permission.`spt_da_types` AS `spt_da_types`, s_permission.`parents` AS `parents`, s_permission.`type` AS `type`
  FROM s_permission
  LIMIT %s, 20
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 404, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_55_GET_permission_3(_con)
  local _api = "GET /permission"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 405
  _sql = [[
  SELECT COUNT(0) AS total
  FROM s_permission
  WHERE s_permission.`u_id` LIKE %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_permission", "u_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 405, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 406
  _sql = [[
  SELECT s_permission.`u_id` AS `u_id`, s_permission.`name` AS `name`, s_permission.`describe` AS `describe`, s_permission.`status` AS `status`, s_permission.`actions` AS `actions`
  	, s_permission.`optional_fields` AS `optional_fields`, s_permission.`spt_da_types` AS `spt_da_types`, s_permission.`parents` AS `parents`, s_permission.`type` AS `type`
  FROM s_permission
  WHERE s_permission.`u_id` LIKE %s
  LIMIT %s, 20
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_permission", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 406, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_55_GET_permission_4(_con)
  local _api = "GET /permission"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 407
  _sql = [[
  SELECT s_user.`u_id` AS `u_id`, s_user.`name` AS `name`, s_user.`username` AS `username`, s_user.`password` AS `password`, s_user.`salt` AS `salt`
  	, s_user.`status` AS `status`, s_user.`create_time` AS `create_time`, s_user.`creator_id` AS `creator_id`
  FROM s_user
  WHERE s_user.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 407, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 408
  _sql = [[
  SELECT `role_id`, `user_id`
  FROM s_user_role
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user_role", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 408, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 409
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 409, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 410
  _sql = [[
  SELECT `u_id`, `parent_id`, `menu_id`, `setting_id`, `path`
  	, `sort_index`, `status`, `level`, `config`
  FROM s_autz_menu
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 410, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 411
  _sql = [[
  SELECT `u_id`, `permission_id`, `setting_id`, `actions`, `data_accesses`
  	, `status`, `priority`, `is_merge`
  FROM s_autz_detail
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 411, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 412
  _sql = [[
  SELECT s_autz_detail.`u_id` AS `u_id`, s_autz_detail.`permission_id` AS `permission_id`, s_autz_detail.`setting_id` AS `setting_id`, s_autz_detail.`actions` AS `actions`, s_autz_detail.`data_accesses` AS `data_accesses`
  	, s_autz_detail.`status` AS `status`, s_autz_detail.`priority` AS `priority`, s_autz_detail.`is_merge` AS `is_merge`
  FROM s_autz_detail
  WHERE s_autz_detail.`status` = %s
  	AND s_autz_detail.`setting_id` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "status", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 412, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 413
  _sql = [[
  SELECT s_permission.`u_id` AS `u_id`, s_permission.`name` AS `name`, s_permission.`describe` AS `describe`, s_permission.`status` AS `status`, s_permission.`actions` AS `actions`
  	, s_permission.`optional_fields` AS `optional_fields`, s_permission.`spt_da_types` AS `spt_da_types`, s_permission.`parents` AS `parents`, s_permission.`type` AS `type`
  FROM s_permission
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 413, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  -- line 414
  _sql = [[
  SELECT COUNT(0) AS total
  FROM s_permission
  WHERE s_permission.`u_id` LIKE %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_permission", "u_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 414, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 415
  _sql = [[
  SELECT s_permission.`u_id` AS `u_id`, s_permission.`name` AS `name`, s_permission.`describe` AS `describe`, s_permission.`status` AS `status`, s_permission.`actions` AS `actions`
  	, s_permission.`optional_fields` AS `optional_fields`, s_permission.`spt_da_types` AS `spt_da_types`, s_permission.`parents` AS `parents`, s_permission.`type` AS `type`
  FROM s_permission
  WHERE s_permission.`u_id` LIKE %s
  LIMIT %s, 20
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_permission", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 415, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_55_GET_permission_5(_con)
  local _api = "GET /permission"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 416
  _sql = [[
  SELECT s_permission.`u_id` AS `u_id`, s_permission.`name` AS `name`, s_permission.`describe` AS `describe`, s_permission.`status` AS `status`, s_permission.`actions` AS `actions`
  	, s_permission.`optional_fields` AS `optional_fields`, s_permission.`spt_da_types` AS `spt_da_types`, s_permission.`parents` AS `parents`, s_permission.`type` AS `type`
  FROM s_permission
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 416, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_56_PATCH_autz_setting_1(_con)
  local _api = "PATCH /autz-setting"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 417
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 417, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 418 (ignored write)  -- line 419
  _sql = [[
  SELECT s_autz_menu.`u_id` AS `u_id`, s_autz_menu.`menu_id` AS `menu_id`, s_autz_menu.`setting_id` AS `setting_id`, s_autz_menu.`sort_index` AS `sort_index`, s_autz_menu.`parent_id` AS `parent_id`
  	, s_autz_menu.`status` AS `status`, s_autz_menu.`path` AS `path`, s_autz_menu.`level` AS `level`, s_autz_menu.`config` AS `config`
  FROM s_autz_menu
  WHERE s_autz_menu.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 419, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 420 (ignored write)  -- line 421
  _sql = [[
  SELECT s_autz_menu.`u_id` AS `u_id`, s_autz_menu.`menu_id` AS `menu_id`, s_autz_menu.`setting_id` AS `setting_id`, s_autz_menu.`sort_index` AS `sort_index`, s_autz_menu.`parent_id` AS `parent_id`
  	, s_autz_menu.`status` AS `status`, s_autz_menu.`path` AS `path`, s_autz_menu.`level` AS `level`, s_autz_menu.`config` AS `config`
  FROM s_autz_menu
  WHERE s_autz_menu.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 421, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 422 (ignored write)  -- line 423
  _sql = [[
  SELECT s_autz_menu.`u_id` AS `u_id`, s_autz_menu.`menu_id` AS `menu_id`, s_autz_menu.`setting_id` AS `setting_id`, s_autz_menu.`sort_index` AS `sort_index`, s_autz_menu.`parent_id` AS `parent_id`
  	, s_autz_menu.`status` AS `status`, s_autz_menu.`path` AS `path`, s_autz_menu.`level` AS `level`, s_autz_menu.`config` AS `config`
  FROM s_autz_menu
  WHERE s_autz_menu.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 423, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 424 (ignored write)  -- line 425
  _sql = [[
  SELECT s_autz_menu.`u_id` AS `u_id`, s_autz_menu.`menu_id` AS `menu_id`, s_autz_menu.`setting_id` AS `setting_id`, s_autz_menu.`sort_index` AS `sort_index`, s_autz_menu.`parent_id` AS `parent_id`
  	, s_autz_menu.`status` AS `status`, s_autz_menu.`path` AS `path`, s_autz_menu.`level` AS `level`, s_autz_menu.`config` AS `config`
  FROM s_autz_menu
  WHERE s_autz_menu.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 425, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 426 (ignored write)  -- line 427
  _sql = [[
  SELECT s_autz_menu.`u_id` AS `u_id`, s_autz_menu.`menu_id` AS `menu_id`, s_autz_menu.`setting_id` AS `setting_id`, s_autz_menu.`sort_index` AS `sort_index`, s_autz_menu.`parent_id` AS `parent_id`
  	, s_autz_menu.`status` AS `status`, s_autz_menu.`path` AS `path`, s_autz_menu.`level` AS `level`, s_autz_menu.`config` AS `config`
  FROM s_autz_menu
  WHERE s_autz_menu.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 427, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 428 (ignored write)  -- line 429
  _sql = [[
  SELECT s_autz_menu.`u_id` AS `u_id`, s_autz_menu.`menu_id` AS `menu_id`, s_autz_menu.`setting_id` AS `setting_id`, s_autz_menu.`sort_index` AS `sort_index`, s_autz_menu.`parent_id` AS `parent_id`
  	, s_autz_menu.`status` AS `status`, s_autz_menu.`path` AS `path`, s_autz_menu.`level` AS `level`, s_autz_menu.`config` AS `config`
  FROM s_autz_menu
  WHERE s_autz_menu.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 429, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 430 (ignored write)  -- line 431
  _sql = [[
  SELECT s_autz_menu.`u_id` AS `u_id`, s_autz_menu.`menu_id` AS `menu_id`, s_autz_menu.`setting_id` AS `setting_id`, s_autz_menu.`sort_index` AS `sort_index`, s_autz_menu.`parent_id` AS `parent_id`
  	, s_autz_menu.`status` AS `status`, s_autz_menu.`path` AS `path`, s_autz_menu.`level` AS `level`, s_autz_menu.`config` AS `config`
  FROM s_autz_menu
  WHERE s_autz_menu.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 431, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 432 (ignored write)  -- line 433
  _sql = [[
  SELECT s_autz_menu.`u_id` AS `u_id`, s_autz_menu.`menu_id` AS `menu_id`, s_autz_menu.`setting_id` AS `setting_id`, s_autz_menu.`sort_index` AS `sort_index`, s_autz_menu.`parent_id` AS `parent_id`
  	, s_autz_menu.`status` AS `status`, s_autz_menu.`path` AS `path`, s_autz_menu.`level` AS `level`, s_autz_menu.`config` AS `config`
  FROM s_autz_menu
  WHERE s_autz_menu.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 433, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 434 (ignored write)-- line 435 (ignored write)-- line 436 (ignored write)-- line 437 (ignored write)-- line 438 (ignored write)-- line 439 (ignored write)-- line 440 (ignored write)  _commit_f(_con, true)
  
end

function API_56_PATCH_autz_setting_2(_con)
  local _api = "PATCH /autz-setting"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 441
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 441, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 442 (ignored write)  -- line 443
  _sql = [[
  SELECT s_autz_menu.`u_id` AS `u_id`, s_autz_menu.`menu_id` AS `menu_id`, s_autz_menu.`setting_id` AS `setting_id`, s_autz_menu.`sort_index` AS `sort_index`, s_autz_menu.`parent_id` AS `parent_id`
  	, s_autz_menu.`status` AS `status`, s_autz_menu.`path` AS `path`, s_autz_menu.`level` AS `level`, s_autz_menu.`config` AS `config`
  FROM s_autz_menu
  WHERE s_autz_menu.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 443, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 444 (ignored write)-- line 445 (ignored write)-- line 446 (ignored write)-- line 447 (ignored write)  _commit_f(_con, true)
  
end

function API_57_GET_role_dd_1(_con)
  local _api = "GET /role/dd"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 448
  _sql = [[
  SELECT s_role.`u_id` AS `u_id`, s_role.`name` AS `name`, s_role.`describe` AS `describe`, s_role.`status` AS `status`
  FROM s_role
  WHERE s_role.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_role", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 448, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_58_GET_menu_dxbxaxaxdxaxfxbbbacabxee_1(_con)
  local _api = "GET /menu/d9b7a672a63d214a1f063bbbacab89ee"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 449
  _sql = [[
  SELECT s_menu.`u_id` AS `u_id`, s_menu.`describe` AS `describe`, s_menu.`parent_id` AS `parent_id`, s_menu.`name` AS `name`, s_menu.`path` AS `path`
  	, s_menu.`url` AS `url`, s_menu.`permission_id` AS `permission_id`, s_menu.`status` AS `status`, s_menu.`sort_index` AS `sort_index`, s_menu.`icon` AS `icon`
  FROM s_menu
  WHERE s_menu.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_menu", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 449, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_59_GET_datasource_config_x_1(_con)
  local _api = "GET /datasource/config/123"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 450
  _sql = [[
  SELECT s_datasource_conf.`u_id` AS `u_id`, s_datasource_conf.`name` AS `name`, s_datasource_conf.`enabled` AS `enabled`, s_datasource_conf.`create_date` AS `create_date`, s_datasource_conf.`properties` AS `properties`
  	, s_datasource_conf.`describe` AS `describe`
  FROM s_datasource_conf
  WHERE s_datasource_conf.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_datasource_conf", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 450, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_60_GET_autz_setting_detail_organizational_1(_con)
  local _api = "GET /autz-setting/detail/organizational"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 451
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 451, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_61_GET_autz_setting_user_xccxeeecxdfxexbxexbx_1(_con)
  local _api = "GET /autz-setting/user/9cc0903eeec01df37e4b68e9b2760532"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 452
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 452, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 453
  _sql = [[
  SELECT `u_id`, `parent_id`, `menu_id`, `setting_id`, `path`
  	, `sort_index`, `status`, `level`, `config`
  FROM s_autz_menu
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 453, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 454
  _sql = [[
  SELECT `u_id`, `permission_id`, `setting_id`, `actions`, `data_accesses`
  	, `status`, `priority`, `is_merge`
  FROM s_autz_detail
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 454, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_62_GET_user_setting_me_code_generator_all_1(_con)
  local _api = "GET /user-setting/me/code-generator/all"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 455
  _sql = [[
  SELECT s_user_setting.`u_id` AS `u_id`, s_user_setting.`key` AS `key`, s_user_setting.`setting_id` AS `setting_id`, s_user_setting.`user_id` AS `user_id`, s_user_setting.`setting` AS `setting`
  	, s_user_setting.`describe` AS `describe`, s_user_setting.`name` AS `name`, s_user_setting.`create_time` AS `create_time`, s_user_setting.`update_time` AS `update_time`
  FROM s_user_setting
  WHERE s_user_setting.`user_id` = %s
  	AND s_user_setting.`key` = %s
  	AND s_user_setting.`setting_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user_setting", "user_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_user_setting", "key", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_user_setting", "setting_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 455, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_63_GET_autz_setting_role_role_x_1(_con)
  local _api = "GET /autz-setting/role/role_1"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 456
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 456, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 457
  _sql = [[
  SELECT `u_id`, `parent_id`, `menu_id`, `setting_id`, `path`
  	, `sort_index`, `status`, `level`, `config`
  FROM s_autz_menu
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 457, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 458
  _sql = [[
  SELECT `u_id`, `permission_id`, `setting_id`, `actions`, `data_accesses`
  	, `status`, `priority`, `is_merge`
  FROM s_autz_detail
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 458, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_64_GET_autz_setting_role_role_x_1(_con)
  local _api = "GET /autz-setting/role/role_2"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 459
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 459, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_64_GET_autz_setting_role_role_x_2(_con)
  local _api = "GET /autz-setting/role/role_2"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 460
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 460, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 461
  _sql = [[
  SELECT `u_id`, `parent_id`, `menu_id`, `setting_id`, `path`
  	, `sort_index`, `status`, `level`, `config`
  FROM s_autz_menu
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 461, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 462
  _sql = [[
  SELECT `u_id`, `permission_id`, `setting_id`, `actions`, `data_accesses`
  	, `status`, `priority`, `is_merge`
  FROM s_autz_detail
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 462, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_65_PUT_dashboard_xbcxexcbbxcxbaxexex_1(_con)
  local _api = "PUT /dashboard/7bc1e9784688cbb8c50ba520e57267e2"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

-- line 463 (ignored write)  _commit_f(_con, false)
  
end

function API_66_PATCH_menu__1(_con)
  local _api = "PATCH /menu/"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 464
  _sql = [[
  SELECT s_menu.`u_id` AS `u_id`, s_menu.`describe` AS `describe`, s_menu.`parent_id` AS `parent_id`, s_menu.`name` AS `name`, s_menu.`path` AS `path`
  	, s_menu.`url` AS `url`, s_menu.`permission_id` AS `permission_id`, s_menu.`status` AS `status`, s_menu.`sort_index` AS `sort_index`, s_menu.`icon` AS `icon`
  FROM s_menu
  WHERE s_menu.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_menu", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 464, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 465 (ignored write)  _commit_f(_con, true)
  
end

function API_66_PATCH_menu__2(_con)
  local _api = "PATCH /menu/"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 466
  _sql = [[
  SELECT s_menu.`u_id` AS `u_id`, s_menu.`describe` AS `describe`, s_menu.`parent_id` AS `parent_id`, s_menu.`name` AS `name`, s_menu.`path` AS `path`
  	, s_menu.`url` AS `url`, s_menu.`permission_id` AS `permission_id`, s_menu.`status` AS `status`, s_menu.`sort_index` AS `sort_index`, s_menu.`icon` AS `icon`
  FROM s_menu
  WHERE s_menu.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_menu", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 466, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 467
  _sql = [[
  SELECT s_menu.`u_id` AS `u_id`, s_menu.`describe` AS `describe`, s_menu.`parent_id` AS `parent_id`, s_menu.`name` AS `name`, s_menu.`path` AS `path`
  	, s_menu.`url` AS `url`, s_menu.`permission_id` AS `permission_id`, s_menu.`status` AS `status`, s_menu.`sort_index` AS `sort_index`, s_menu.`icon` AS `icon`
  FROM s_menu
  WHERE s_menu.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_menu", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 467, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 468 (ignored write)  _commit_f(_con, true)
  
end

function API_67_PUT_role_role_x_1(_con)
  local _api = "PUT /role/role_2"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

-- line 469 (ignored write)  _commit_f(_con, false)
  
end

function API_68_PATCH_dashboard_1(_con)
  local _api = "PATCH /dashboard"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

-- line 470 (ignored write)  _commit_f(_con, false)
  
end

function API_68_PATCH_dashboard_2(_con)
  local _api = "PATCH /dashboard"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 471
  _sql = [[
  SELECT s_dashboard_conf.`u_id` AS `u_id`, s_dashboard_conf.`name` AS `name`, s_dashboard_conf.`type` AS `type`, s_dashboard_conf.`template` AS `template`, s_dashboard_conf.`script` AS `script`
  	, s_dashboard_conf.`script_lang` AS `script_lang`, s_dashboard_conf.`permission` AS `permission`, s_dashboard_conf.`creator_id` AS `creator_id`, s_dashboard_conf.`create_time` AS `create_time`, s_dashboard_conf.`sort_index` AS `sort_index`
  	, s_dashboard_conf.`is_default` AS `is_default`, s_dashboard_conf.`status` AS `status`
  FROM s_dashboard_conf
  WHERE s_dashboard_conf.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_dashboard_conf", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 471, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 472 (ignored write)  _commit_f(_con, true)
  
end

function API_69_GET_dashboard_1(_con)
  local _api = "GET /dashboard"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 473
  _sql = [[
  SELECT s_dashboard_conf.`u_id` AS `u_id`, s_dashboard_conf.`name` AS `name`, s_dashboard_conf.`type` AS `type`, s_dashboard_conf.`permission` AS `permission`, s_dashboard_conf.`creator_id` AS `creator_id`
  	, s_dashboard_conf.`create_time` AS `create_time`, s_dashboard_conf.`sort_index` AS `sort_index`, s_dashboard_conf.`is_default` AS `is_default`, s_dashboard_conf.`status` AS `status`
  FROM s_dashboard_conf
  ORDER BY s_dashboard_conf.`sort_index` ASC
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 473, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_69_GET_dashboard_2(_con)
  local _api = "GET /dashboard"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 474
  _sql = [[
  SELECT s_dashboard_conf.`u_id` AS `u_id`, s_dashboard_conf.`name` AS `name`, s_dashboard_conf.`type` AS `type`, s_dashboard_conf.`permission` AS `permission`, s_dashboard_conf.`creator_id` AS `creator_id`
  	, s_dashboard_conf.`create_time` AS `create_time`, s_dashboard_conf.`sort_index` AS `sort_index`, s_dashboard_conf.`is_default` AS `is_default`, s_dashboard_conf.`status` AS `status`
  FROM s_dashboard_conf
  WHERE s_dashboard_conf.`name` LIKE %s
  ORDER BY s_dashboard_conf.`sort_index` ASC
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_dashboard_conf", "name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 474, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_70_GET_autz_setting_user_xedxexfafxexbaebexedbdad_1(_con)
  local _api = "GET /autz-setting/user/7ed3e176faf566e227baebe028edbdad"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 475
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 475, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 476
  _sql = [[
  SELECT `u_id`, `parent_id`, `menu_id`, `setting_id`, `path`
  	, `sort_index`, `status`, `level`, `config`
  FROM s_autz_menu
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 476, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 477
  _sql = [[
  SELECT `u_id`, `permission_id`, `setting_id`, `actions`, `data_accesses`
  	, `status`, `priority`, `is_merge`
  FROM s_autz_detail
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 477, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_71_PUT_role_role_x_1(_con)
  local _api = "PUT /role/role_1"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

-- line 478 (ignored write)  _commit_f(_con, false)
  
end

function API_72_DELETE_schedule_job_excxcxfxfxfxaxex_1(_con)
  local _api = "DELETE /schedule/job/e94c571c050f762f84f074a2e5717413"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 479
  _sql = [[
  SELECT s_schedule_job.`u_id` AS `u_id`, s_schedule_job.`name` AS `name`, s_schedule_job.`remark` AS `remark`, s_schedule_job.`quartz_config` AS `quartz_config`, s_schedule_job.`script` AS `script`
  	, s_schedule_job.`language` AS `language`, s_schedule_job.`status` AS `status`, s_schedule_job.`parameters` AS `parameters`, s_schedule_job.`type` AS `type`, s_schedule_job.`tags` AS `tags`
  FROM s_schedule_job
  WHERE s_schedule_job.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_schedule_job", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 479, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 480 (ignored write)  _commit_f(_con, true)
  
end

function API_73_PATCH_dictionary_1(_con)
  local _api = "PATCH /dictionary"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 481
  _sql = [[
  SELECT s_dictionary.`u_id` AS `u_id`, s_dictionary.`name` AS `name`, s_dictionary.`classified_id` AS `classified_id`, s_dictionary.`describe` AS `describe`, s_dictionary.`create_time` AS `create_time`
  	, s_dictionary.`creator_id` AS `creator_id`, s_dictionary.`status` AS `status`
  FROM s_dictionary
  WHERE s_dictionary.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_dictionary", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 481, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 482 (ignored write)  _commit_f(_con, true)
  
end

function API_73_PATCH_dictionary_2(_con)
  local _api = "PATCH /dictionary"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 483
  _sql = [[
  SELECT s_dictionary.`u_id` AS `u_id`, s_dictionary.`name` AS `name`, s_dictionary.`classified_id` AS `classified_id`, s_dictionary.`describe` AS `describe`, s_dictionary.`create_time` AS `create_time`
  	, s_dictionary.`creator_id` AS `creator_id`, s_dictionary.`status` AS `status`
  FROM s_dictionary
  WHERE s_dictionary.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_dictionary", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 483, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 484 (ignored write)  _commit_f(_con, true)
  
end

function API_74_GET_dynamic_form_a_1(_con)
  local _api = "GET /dynamic/form/a"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 485
  _sql = [[
  SELECT s_dyn_form.`u_id` AS `u_id`, s_dyn_form.`name` AS `name`, s_dyn_form.`db_name` AS `db_name`, s_dyn_form.`t_name` AS `t_name`, s_dyn_form.`describe` AS `describe`
  	, s_dyn_form.`version` AS `version`, s_dyn_form.`creator_id` AS `creator_id`, s_dyn_form.`create_time` AS `create_time`, s_dyn_form.`update_time` AS `update_time`, s_dyn_form.`is_deployed` AS `is_deployed`
  	, s_dyn_form.`alias` AS `alias`, s_dyn_form.`triggers` AS `triggers`, s_dyn_form.`correlations` AS `correlations`, s_dyn_form.`data_source_id` AS `data_source_id`, s_dyn_form.`properties` AS `properties`
  	, s_dyn_form.`type` AS `type`, s_dyn_form.`tags` AS `tags`
  FROM s_dyn_form
  WHERE s_dyn_form.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_dyn_form", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 485, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_75_POST_workflow_model_x_deploy_1(_con)
  local _api = "POST /workflow/model/1/deploy"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 486
  _sql = [[
  SELECT `ID_`, `REV_`, `NAME_`, `KEY_`, `CATEGORY_`
  	, `CREATE_TIME_`, `LAST_UPDATE_TIME_`, `VERSION_`, `META_INFO_`, `DEPLOYMENT_ID_`
  	, `EDITOR_SOURCE_VALUE_ID_`, `EDITOR_SOURCE_EXTRA_VALUE_ID_`, `TENANT_ID_`
  FROM ACT_RE_MODEL
  WHERE ID_ = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "act_re_model", "ID_", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 486, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, true)

  -- line 487
  _sql = [[
  SELECT `ID_`, `REV_`, `NAME_`, `KEY_`, `CATEGORY_`
  	, `CREATE_TIME_`, `LAST_UPDATE_TIME_`, `VERSION_`, `META_INFO_`, `DEPLOYMENT_ID_`
  	, `EDITOR_SOURCE_VALUE_ID_`, `EDITOR_SOURCE_EXTRA_VALUE_ID_`, `TENANT_ID_`
  FROM ACT_RE_MODEL
  WHERE ID_ = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "act_re_model", "ID_", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 487, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 488
  _sql = [[
  SELECT `ID_`, `REV_`, `NAME_`, `DEPLOYMENT_ID_`, `BYTES_`
  	, `GENERATED_`
  FROM ACT_GE_BYTEARRAY
  WHERE ID_ = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "act_ge_bytearray", "ID_", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 488, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_76_GET_schedule_job_1(_con)
  local _api = "GET /schedule/job"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 489
  _sql = [[
  SELECT COUNT(0) AS total
  FROM s_schedule_job
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 489, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_77_GET_database_manager_metas_x_1(_con)
  local _api = "GET /database/manager/metas/123"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 490
  _sql = [[
  SELECT s_datasource_conf.`u_id` AS `u_id`, s_datasource_conf.`name` AS `name`, s_datasource_conf.`enabled` AS `enabled`, s_datasource_conf.`create_date` AS `create_date`, s_datasource_conf.`properties` AS `properties`
  	, s_datasource_conf.`describe` AS `describe`
  FROM s_datasource_conf
  WHERE s_datasource_conf.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_datasource_conf", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 490, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_78_GET_dynamic_form_1(_con)
  local _api = "GET /dynamic/form"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 491
  _sql = [[
  SELECT s_dyn_form.`u_id` AS `u_id`, s_dyn_form.`name` AS `name`, s_dyn_form.`db_name` AS `db_name`, s_dyn_form.`t_name` AS `t_name`, s_dyn_form.`describe` AS `describe`
  	, s_dyn_form.`version` AS `version`, s_dyn_form.`creator_id` AS `creator_id`, s_dyn_form.`create_time` AS `create_time`, s_dyn_form.`update_time` AS `update_time`, s_dyn_form.`is_deployed` AS `is_deployed`
  	, s_dyn_form.`alias` AS `alias`, s_dyn_form.`triggers` AS `triggers`, s_dyn_form.`correlations` AS `correlations`, s_dyn_form.`data_source_id` AS `data_source_id`, s_dyn_form.`properties` AS `properties`
  	, s_dyn_form.`type` AS `type`, s_dyn_form.`tags` AS `tags`
  FROM s_dyn_form
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 491, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_78_GET_dynamic_form_2(_con)
  local _api = "GET /dynamic/form"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 492
  _sql = [[
  SELECT s_dyn_form.`u_id` AS `u_id`, s_dyn_form.`name` AS `name`, s_dyn_form.`db_name` AS `db_name`, s_dyn_form.`t_name` AS `t_name`, s_dyn_form.`describe` AS `describe`
  	, s_dyn_form.`version` AS `version`, s_dyn_form.`creator_id` AS `creator_id`, s_dyn_form.`create_time` AS `create_time`, s_dyn_form.`update_time` AS `update_time`, s_dyn_form.`is_deployed` AS `is_deployed`
  	, s_dyn_form.`alias` AS `alias`, s_dyn_form.`triggers` AS `triggers`, s_dyn_form.`correlations` AS `correlations`, s_dyn_form.`data_source_id` AS `data_source_id`, s_dyn_form.`properties` AS `properties`
  	, s_dyn_form.`type` AS `type`, s_dyn_form.`tags` AS `tags`
  FROM s_dyn_form
  WHERE s_dyn_form.`name` LIKE %s
  	OR s_dyn_form.`t_name` LIKE %s
  	OR s_dyn_form.`describe` LIKE %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_dyn_form", "name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_dyn_form", "t_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_dyn_form", "describe", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 492, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_79_GET_dashboard_xbcxexcbbxcxbaxexex_1(_con)
  local _api = "GET /dashboard/7bc1e9784688cbb8c50ba520e57267e2"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 493
  _sql = [[
  SELECT s_dashboard_conf.`u_id` AS `u_id`, s_dashboard_conf.`name` AS `name`, s_dashboard_conf.`type` AS `type`, s_dashboard_conf.`template` AS `template`, s_dashboard_conf.`script` AS `script`
  	, s_dashboard_conf.`script_lang` AS `script_lang`, s_dashboard_conf.`permission` AS `permission`, s_dashboard_conf.`creator_id` AS `creator_id`, s_dashboard_conf.`create_time` AS `create_time`, s_dashboard_conf.`sort_index` AS `sort_index`
  	, s_dashboard_conf.`is_default` AS `is_default`, s_dashboard_conf.`status` AS `status`
  FROM s_dashboard_conf
  WHERE s_dashboard_conf.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_dashboard_conf", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 493, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_80_GET_permission_no_paging_1(_con)
  local _api = "GET /permission/no-paging"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 494
  _sql = [[
  SELECT s_user.`u_id` AS `u_id`, s_user.`name` AS `name`, s_user.`username` AS `username`, s_user.`password` AS `password`, s_user.`salt` AS `salt`
  	, s_user.`status` AS `status`, s_user.`create_time` AS `create_time`, s_user.`creator_id` AS `creator_id`
  FROM s_user
  WHERE s_user.`u_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user", "u_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 494, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 495
  _sql = [[
  SELECT `role_id`, `user_id`
  FROM s_user_role
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user_role", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 495, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 496
  _sql = [[
  SELECT s_autz_setting.`u_id` AS `u_id`, s_autz_setting.`type` AS `type`, s_autz_setting.`setting_for` AS `setting_for`, s_autz_setting.`status` AS `status`, s_autz_setting.`describe` AS `describe`
  FROM s_autz_setting
  WHERE s_autz_setting.`type` = %s
  	AND s_autz_setting.`setting_for` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_setting", "type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_setting", "setting_for", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 496, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 497
  _sql = [[
  SELECT `u_id`, `parent_id`, `menu_id`, `setting_id`, `path`
  	, `sort_index`, `status`, `level`, `config`
  FROM s_autz_menu
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_menu", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 497, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 498
  _sql = [[
  SELECT `u_id`, `permission_id`, `setting_id`, `actions`, `data_accesses`
  	, `status`, `priority`, `is_merge`
  FROM s_autz_detail
  WHERE setting_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 498, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 499
  _sql = [[
  SELECT s_autz_detail.`u_id` AS `u_id`, s_autz_detail.`permission_id` AS `permission_id`, s_autz_detail.`setting_id` AS `setting_id`, s_autz_detail.`actions` AS `actions`, s_autz_detail.`data_accesses` AS `data_accesses`
  	, s_autz_detail.`status` AS `status`, s_autz_detail.`priority` AS `priority`, s_autz_detail.`is_merge` AS `is_merge`
  FROM s_autz_detail
  WHERE s_autz_detail.`status` = %s
  	AND s_autz_detail.`setting_id` IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_autz_detail", "status", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_autz_detail", "setting_id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 499, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 500
  _sql = [[
  SELECT s_permission.`u_id` AS `u_id`, s_permission.`name` AS `name`, s_permission.`describe` AS `describe`, s_permission.`status` AS `status`, s_permission.`actions` AS `actions`
  	, s_permission.`optional_fields` AS `optional_fields`, s_permission.`spt_da_types` AS `spt_da_types`, s_permission.`parents` AS `parents`, s_permission.`type` AS `type`
  FROM s_permission
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 500, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, false)

  -- line 501
  _sql = [[
  SELECT s_permission.`u_id` AS `u_id`, s_permission.`name` AS `name`, s_permission.`describe` AS `describe`, s_permission.`status` AS `status`, s_permission.`actions` AS `actions`
  	, s_permission.`optional_fields` AS `optional_fields`, s_permission.`spt_da_types` AS `spt_da_types`, s_permission.`parents` AS `parents`, s_permission.`type` AS `type`
  FROM s_permission
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 501, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_80_GET_permission_no_paging_2(_con)
  local _api = "GET /permission/no-paging"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 502
  _sql = [[
  SELECT s_permission.`u_id` AS `u_id`, s_permission.`name` AS `name`, s_permission.`describe` AS `describe`, s_permission.`status` AS `status`, s_permission.`actions` AS `actions`
  	, s_permission.`optional_fields` AS `optional_fields`, s_permission.`spt_da_types` AS `spt_da_types`, s_permission.`parents` AS `parents`, s_permission.`type` AS `type`
  FROM s_permission
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 502, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_80_GET_permission_no_paging_3(_con)
  local _api = "GET /permission/no-paging"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 503
  _sql = [[
  SELECT s_permission.`u_id` AS `u_id`, s_permission.`name` AS `name`, s_permission.`describe` AS `describe`, s_permission.`status` AS `status`, s_permission.`actions` AS `actions`
  	, s_permission.`optional_fields` AS `optional_fields`, s_permission.`spt_da_types` AS `spt_da_types`, s_permission.`parents` AS `parents`, s_permission.`type` AS `type`
  FROM s_permission
  WHERE s_permission.`u_id` != %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_permission", "u_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 503, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_81_GET_user_setting_me_code_gen_setsimple_gen_latest_1(_con)
  local _api = "GET /user-setting/me/code-gen-setsimple-gen/latest"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 504
  _sql = [[
  SELECT s_user_setting.`u_id` AS `u_id`, s_user_setting.`key` AS `key`, s_user_setting.`setting_id` AS `setting_id`, s_user_setting.`user_id` AS `user_id`, s_user_setting.`setting` AS `setting`
  	, s_user_setting.`describe` AS `describe`, s_user_setting.`name` AS `name`, s_user_setting.`create_time` AS `create_time`, s_user_setting.`update_time` AS `update_time`
  FROM s_user_setting
  WHERE s_user_setting.`user_id` = %s
  	AND s_user_setting.`key` = %s
  	AND s_user_setting.`setting_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user_setting", "user_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_user_setting", "key", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_user_setting", "setting_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 504, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_82_POST_user_1(_con)
  local _api = "POST /user"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 505
  _sql = [[
  SELECT s_user.`u_id` AS `u_id`, s_user.`name` AS `name`, s_user.`username` AS `username`, s_user.`password` AS `password`, s_user.`salt` AS `salt`
  	, s_user.`status` AS `status`, s_user.`create_time` AS `create_time`, s_user.`creator_id` AS `creator_id`
  FROM s_user
  WHERE s_user.`username` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user", "username", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 505, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 506 (ignored write)-- line 507 (ignored write)  -- line 508
  _sql = [[
  SELECT s_user_setting.`u_id` AS `u_id`, s_user_setting.`key` AS `key`, s_user_setting.`setting_id` AS `setting_id`, s_user_setting.`user_id` AS `user_id`, s_user_setting.`setting` AS `setting`
  	, s_user_setting.`describe` AS `describe`, s_user_setting.`name` AS `name`, s_user_setting.`create_time` AS `create_time`, s_user_setting.`update_time` AS `update_time`
  FROM s_user_setting
  WHERE s_user_setting.`user_id` = %s
  	AND s_user_setting.`key` = %s
  	AND s_user_setting.`setting_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user_setting", "user_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_user_setting", "key", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_user_setting", "setting_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 508, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 509 (ignored write)  _commit_f(_con, true)
  
end

function API_82_POST_user_2(_con)
  local _api = "POST /user"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 510
  _sql = [[
  SELECT s_user.`u_id` AS `u_id`, s_user.`name` AS `name`, s_user.`username` AS `username`, s_user.`password` AS `password`, s_user.`salt` AS `salt`
  	, s_user.`status` AS `status`, s_user.`create_time` AS `create_time`, s_user.`creator_id` AS `creator_id`
  FROM s_user
  WHERE s_user.`username` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user", "username", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 510, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 511 (ignored write)-- line 512 (ignored write)-- line 513 (ignored write)  -- line 514
  _sql = [[
  SELECT s_user_setting.`u_id` AS `u_id`, s_user_setting.`key` AS `key`, s_user_setting.`setting_id` AS `setting_id`, s_user_setting.`user_id` AS `user_id`, s_user_setting.`setting` AS `setting`
  	, s_user_setting.`describe` AS `describe`, s_user_setting.`name` AS `name`, s_user_setting.`create_time` AS `create_time`, s_user_setting.`update_time` AS `update_time`
  FROM s_user_setting
  WHERE s_user_setting.`user_id` = %s
  	AND s_user_setting.`key` = %s
  	AND s_user_setting.`setting_id` = %s
  LIMIT %s, 1
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "s_user_setting", "user_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_user_setting", "key", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "s_user_setting", "setting_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 514, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 515 (ignored write)  _commit_f(_con, true)
  
end

function API_83_GET_workflow_model_x_json_1(_con)
  local _api = "GET /workflow//model/1/json"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 516
  _sql = [[
  SELECT `ID_`, `REV_`, `NAME_`, `KEY_`, `CATEGORY_`
  	, `CREATE_TIME_`, `LAST_UPDATE_TIME_`, `VERSION_`, `META_INFO_`, `DEPLOYMENT_ID_`
  	, `EDITOR_SOURCE_VALUE_ID_`, `EDITOR_SOURCE_EXTRA_VALUE_ID_`, `TENANT_ID_`
  FROM ACT_RE_MODEL
  WHERE ID_ = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "act_re_model", "ID_", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 516, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, true)

  -- line 517
  _sql = [[
  SELECT `ID_`, `REV_`, `NAME_`, `KEY_`, `CATEGORY_`
  	, `CREATE_TIME_`, `LAST_UPDATE_TIME_`, `VERSION_`, `META_INFO_`, `DEPLOYMENT_ID_`
  	, `EDITOR_SOURCE_VALUE_ID_`, `EDITOR_SOURCE_EXTRA_VALUE_ID_`, `TENANT_ID_`
  FROM ACT_RE_MODEL
  WHERE ID_ = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "act_re_model", "ID_", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 517, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 518
  _sql = [[
  SELECT `ID_`, `REV_`, `NAME_`, `DEPLOYMENT_ID_`, `BYTES_`
  	, `GENERATED_`
  FROM ACT_GE_BYTEARRAY
  WHERE ID_ = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "act_ge_bytearray", "ID_", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 518, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

