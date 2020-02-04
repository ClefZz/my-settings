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

function API_1__changeLanguage_1(_con)
  local _api = "/changeLanguage"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 1
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 1, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 2
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 2, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_2__admin_admin_user_list_1(_con)
  local _api = "/admin/admin_user/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 3
  _sql = [[
  SELECT u.`id`, u.`username`, u.`password`, u.`in_time`, u.`role_id`
  	, r.name AS roleName
  FROM admin_user u
  	LEFT JOIN role r ON u.role_id = r.id
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 3, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 4
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 4, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_3__tags_1(_con)
  local _api = "/tags"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 5
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 5, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 6
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 6, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 7
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 7, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_3__tags_2(_con)
  local _api = "/tags"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 8
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 8, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 9
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 9, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_4__admin_topic_index_1(_con)
  local _api = "/admin/topic/index"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 10
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 10, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 11
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 11, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 12
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 12, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 13
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 13, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 14
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 14, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 15
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 15, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 16
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 16, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 17
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 17, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  _begin_f(_con, true)

  -- line 18
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 18, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 19
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 19, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 20
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 20, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 21
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 21, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 22
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 22, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 23
  _sql = [[
  SELECT id, title, content, in_time, modify_time
  	, user_id, comment_count, collect_count, view, top
  	, good, up_ids
  FROM topic
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "topic", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 23, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  -- line 24
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 24, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 25
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 25, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 26
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 26, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_5__api_topic_1(_con)
  local _api = "/api/topic"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 27
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 27, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 28
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 28, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 29
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 29, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 30
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 30, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 31
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 31, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 32
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE token = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "token", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 32, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, false)

  -- line 33
  _sql = [[
  SELECT id, title, content, in_time, modify_time
  	, user_id, comment_count, collect_count, view, top
  	, good, up_ids
  FROM topic
  WHERE title = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "topic", "title", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 33, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, true)

-- line 34 (ignored write)  -- line 35
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 35, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 36 (ignored write)  -- line 37
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 37, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 38
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 38, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 39
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 39, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_6__api_comment_x_vote_1(_con)
  local _api = "/api/comment/1/vote"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 40
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 40, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 41
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 41, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 42
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 42, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 43
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 43, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 44
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 44, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 45
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE token = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "token", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 45, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, false)

  -- line 46
  _sql = [[
  SELECT id, topic_id, user_id, content, in_time
  	, comment_id, up_ids
  FROM comment
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "comment", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 46, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, true)

  -- line 47
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 47, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 48 (ignored write)-- line 49 (ignored write)  _commit_f(_con, true)
  
end

function API_7__admin_index_1(_con)
  local _api = "/admin/index"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 50
  _sql = [[
  SELECT COUNT(1)
  FROM topic t
  WHERE to_days(t.in_time) = to_days(now())
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 50, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, false)

  -- line 51
  _sql = [[
  SELECT COUNT(1)
  FROM tag
  WHERE to_days(in_time) = to_days(now())
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 51, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, false)

  -- line 52
  _sql = [[
  SELECT COUNT(1)
  FROM comment
  WHERE to_days(in_time) = to_days(now())
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 52, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, false)

  -- line 53
  _sql = [[
  SELECT COUNT(1)
  FROM user
  WHERE to_days(in_time) = to_days(now())
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 53, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  -- line 54
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 54, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_8__user_stephenx_1(_con)
  local _api = "/user/stephen3"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 55
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 55, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 56
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 56, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 57
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 57, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 58
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 58, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 59
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 59, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 60
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 60, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, false)

  -- line 61
  _sql = [[
  SELECT id, oauth_id, `type`, login, access_token
  	, in_time, bio, email, user_id, refresh_token
  	, union_id, expires_in
  FROM oauth_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "oauth_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 61, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, false)

  -- line 62
  _sql = [[
  SELECT COUNT(1)
  FROM collect
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "collect", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 62, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  -- line 63
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 63, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 64
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 64, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_9__notifications_1(_con)
  local _api = "/notifications"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 65
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 65, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 66
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 66, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_10__admin_system_edit_1(_con)
  local _api = "/admin/system/edit"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 67
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 67, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 68
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 68, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 69
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 69, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 70
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 70, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 71
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 71, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 72
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 72, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 73
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 73, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 74
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 74, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 75
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 75, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 76
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 76, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_10__admin_system_edit_2(_con)
  local _api = "/admin/system/edit"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 77
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 77, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 78
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 78, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 79
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 79, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 80
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 80, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 81
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 81, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 82
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 82, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 83
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 83, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 84
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 84, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


-- line 85 (ignored write)
-- line 86 (ignored write)
-- line 87 (ignored write)
-- line 88 (ignored write)
-- line 89 (ignored write)
-- line 90 (ignored write)
-- line 91 (ignored write)
-- line 92 (ignored write)
-- line 93 (ignored write)
-- line 94 (ignored write)
-- line 95 (ignored write)
-- line 96 (ignored write)
-- line 97 (ignored write)
-- line 98 (ignored write)
-- line 99 (ignored write)
-- line 100 (ignored write)
-- line 101 (ignored write)
-- line 102 (ignored write)
-- line 103 (ignored write)
-- line 104 (ignored write)
-- line 105 (ignored write)
-- line 106 (ignored write)
-- line 107 (ignored write)
-- line 108 (ignored write)
-- line 109 (ignored write)
-- line 110 (ignored write)
-- line 111 (ignored write)
-- line 112 (ignored write)
-- line 113 (ignored write)
-- line 114 (ignored write)
-- line 115 (ignored write)
-- line 116 (ignored write)
-- line 117 (ignored write)
-- line 118 (ignored write)
-- line 119 (ignored write)
-- line 120 (ignored write)
-- line 121 (ignored write)
-- line 122 (ignored write)
-- line 123 (ignored write)
-- line 124 (ignored write)
-- line 125 (ignored write)
-- line 126 (ignored write)
-- line 127 (ignored write)
-- line 128 (ignored write)
-- line 129 (ignored write)
end

function API_11__admin_user_list_1(_con)
  local _api = "/admin/user/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 130
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 130, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 131
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 131, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 132
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 132, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 133
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 133, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 134
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 134, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 135
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 135, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 136
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 136, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 137
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 137, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  _begin_f(_con, true)

  -- line 138
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 138, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 139
  _sql = [[
  SELECT COUNT(1)
  FROM user
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 139, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 140
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  ORDER BY in_time DESC
  LIMIT %s, 20
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 140, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  -- line 141
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 141, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_11__admin_user_list_2(_con)
  local _api = "/admin/user/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 142
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 142, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 143
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 143, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 144
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 144, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 145
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 145, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 146
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 146, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 147
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 147, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 148
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 148, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 149
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 149, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  _begin_f(_con, true)

  -- line 150
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 150, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 151
  _sql = [[
  SELECT COUNT(1)
  FROM user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 151, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 152
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 152, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  -- line 153
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 153, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_12__admin_role_list_1(_con)
  local _api = "/admin/role/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 154
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 154, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 155
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 155, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 156
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 156, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 157
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 157, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 158
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 158, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 159
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 159, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 160
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 160, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 161
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 161, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 162
  _sql = [[
  SELECT id, name
  FROM role
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 162, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 163
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 163, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_13__static_theme_default_css_app_css_1(_con)
  local _api = "/static/theme/default/css/app.css"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 164
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 164, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 165
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 165, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_13__static_theme_default_css_app_css_2(_con)
  local _api = "/static/theme/default/css/app.css"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 166
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 166, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_14__common_captcha_1(_con)
  local _api = "/common/captcha"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 167
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 167, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_15__topic_create_1(_con)
  local _api = "/topic/create"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 168
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 168, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 169
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 169, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_16__api_topic_x_vote_1(_con)
  local _api = "/api/topic/3/vote"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 170
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 170, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 171
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 171, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 172
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 172, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 173
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 173, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 174
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 174, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 175
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE token = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "token", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 175, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, true)

  -- line 176
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 176, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 177
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 177, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 178
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 178, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 179
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 179, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 180
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 180, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 181
  _sql = [[
  SELECT id, title, content, in_time, modify_time
  	, user_id, comment_count, collect_count, view, top
  	, good, up_ids
  FROM topic
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "topic", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 181, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_17__admin_comment_delete_1(_con)
  local _api = "/admin/comment/delete"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 182
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 182, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 183
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 183, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 184
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 184, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 185
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 185, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 186
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 186, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 187
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 187, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 188
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 188, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 189
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 189, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  _begin_f(_con, false)

  -- line 190
  _sql = [[
  SELECT id, topic_id, user_id, content, in_time
  	, comment_id, up_ids
  FROM comment
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "comment", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 190, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, true)

  -- line 191
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 191, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 192
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 192, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 193
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 193, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 194
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 194, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 195
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 195, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 196
  _sql = [[
  SELECT id, title, content, in_time, modify_time
  	, user_id, comment_count, collect_count, view, top
  	, good, up_ids
  FROM topic
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "topic", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 196, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 197 (ignored write)  -- line 198
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 198, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 199
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 199, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 200
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 200, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 201
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 201, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 202
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 202, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 203
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 203, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 204
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 204, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 205
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 205, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 206
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 206, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 207
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 207, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 208 (ignored write)-- line 209 (ignored write)  -- line 210
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 210, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 211
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 211, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 212
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 212, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 213
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 213, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 214
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 214, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_18__search_1(_con)
  local _api = "/search"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 215
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 215, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 216
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 216, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 217
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 217, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_19__api_topic_x_1(_con)
  local _api = "/api/topic/1"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 218
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 218, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 219
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 219, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 220
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 220, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 221
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 221, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 222
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 222, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 223
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE token = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "token", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 223, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, true)

  -- line 224
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 224, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 225
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 225, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 226
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 226, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 227
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 227, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 228
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 228, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 229
  _sql = [[
  SELECT id, title, content, in_time, modify_time
  	, user_id, comment_count, collect_count, view, top
  	, good, up_ids
  FROM topic
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "topic", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 229, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, true)

-- line 230 (ignored write)  -- line 231
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 231, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 232
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 232, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 233
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 233, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 234
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 234, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 235
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 235, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 236
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 236, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 237
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 237, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 238
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 238, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_20__admin_topic_list_1(_con)
  local _api = "/admin/topic/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 239
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 239, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 240
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 240, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 241
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 241, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 242
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 242, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 243
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 243, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 244
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 244, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 245
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 245, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 246
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 246, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  _begin_f(_con, true)

  -- line 247
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 247, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 248
  _sql = [[
  SELECT COUNT(1)
  FROM topic t
  	LEFT JOIN user u ON t.user_id = u.id
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 248, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 249
  _sql = [[
  SELECT t.`id`, t.`title`, t.`content`, t.`in_time`, t.`modify_time`
  	, t.`user_id`, t.`comment_count`, t.`collect_count`, t.`view`, t.`top`
  	, t.`good`, t.`up_ids`, u.username
  FROM topic t
  	LEFT JOIN user u ON t.user_id = u.id
  ORDER BY t.in_time DESC
  LIMIT %s, 20
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 249, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  -- line 250
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 250, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_20__admin_topic_list_2(_con)
  local _api = "/admin/topic/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 251
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 251, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 252
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 252, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 253
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 253, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 254
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 254, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 255
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 255, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 256
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 256, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 257
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 257, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 258
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 258, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  _begin_f(_con, true)

  -- line 259
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 259, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 260
  _sql = [[
  SELECT COUNT(1)
  FROM topic t
  	LEFT JOIN user u ON t.user_id = u.id
  WHERE t.in_time BETWEEN %s AND %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "topic", "in_time", {"select", "where", "between_begin"}, nil}),
    _gen_parameter_f({_api, _sql, "topic", "in_time", {"select", "where", "between_end"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 260, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 261
  _sql = [[
  SELECT t.`id`, t.`title`, t.`content`, t.`in_time`, t.`modify_time`
  	, t.`user_id`, t.`comment_count`, t.`collect_count`, t.`view`, t.`top`
  	, t.`good`, t.`up_ids`, u.username
  FROM topic t
  	LEFT JOIN user u ON t.user_id = u.id
  WHERE t.in_time BETWEEN %s AND %s
  ORDER BY t.in_time DESC
  LIMIT %s, 20
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "topic", "in_time", {"select", "where", "between_begin"}, nil}),
    _gen_parameter_f({_api, _sql, "topic", "in_time", {"select", "where", "between_end"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 261, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  -- line 262
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 262, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_21__topic_x_1(_con)
  local _api = "/topic/3"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 263
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 263, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 264
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 264, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 265
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 265, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 266
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 266, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 267
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 267, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 268
  _sql = [[
  SELECT id, title, content, in_time, modify_time
  	, user_id, comment_count, collect_count, view, top
  	, good, up_ids
  FROM topic
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "topic", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 268, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, false)

  -- line 269
  _sql = [[
  SELECT tag_id, topic_id
  FROM topic_tag
  WHERE topic_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "topic_tag", "topic_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 269, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, true)

  -- line 270
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 270, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 271
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 271, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 272
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 272, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 273
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 273, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 274
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 274, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 275
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 275, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, false)

  -- line 276
  _sql = [[
  SELECT topic_id, user_id, in_time
  FROM collect
  WHERE topic_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "collect", "topic_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 276, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, false)

  -- line 277
  _sql = [[
  SELECT topic_id, user_id, in_time
  FROM collect
  WHERE topic_id = %s
  	AND user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "collect", "topic_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "collect", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 277, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, true)

  -- line 278
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 278, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 279
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 279, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 280
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 280, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 281
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 281, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 282
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 282, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 283 (ignored write)  -- line 284
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 284, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 285
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 285, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 286
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 286, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  -- line 287
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 287, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 288
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 288, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_22__admin_topic_top_1(_con)
  local _api = "/admin/topic/top"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 289
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 289, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 290
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 290, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 291
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 291, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 292
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 292, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 293
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 293, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 294
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 294, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 295
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 295, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 296
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 296, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  _begin_f(_con, true)

  -- line 297
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 297, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 298
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 298, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 299
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 299, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 300
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 300, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 301
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 301, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 302
  _sql = [[
  SELECT id, title, content, in_time, modify_time
  	, user_id, comment_count, collect_count, view, top
  	, good, up_ids
  FROM topic
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "topic", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 302, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, true)

-- line 303 (ignored write)  -- line 304
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 304, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 305
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 305, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 306
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 306, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 307
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 307, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 308
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 308, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 309
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 309, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 310
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 310, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 311
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 311, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_23__topic_x_1(_con)
  local _api = "/topic/2"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 312
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 312, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 313
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 313, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 314
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 314, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 315
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 315, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 316
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 316, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 317
  _sql = [[
  SELECT id, title, content, in_time, modify_time
  	, user_id, comment_count, collect_count, view, top
  	, good, up_ids
  FROM topic
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "topic", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 317, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, false)

  -- line 318
  _sql = [[
  SELECT tag_id, topic_id
  FROM topic_tag
  WHERE topic_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "topic_tag", "topic_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 318, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, true)

  -- line 319
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 319, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 320
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 320, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 321
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 321, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 322
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 322, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 323
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 323, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 324
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 324, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, false)

  -- line 325
  _sql = [[
  SELECT topic_id, user_id, in_time
  FROM collect
  WHERE topic_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "collect", "topic_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 325, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, false)

  -- line 326
  _sql = [[
  SELECT topic_id, user_id, in_time
  FROM collect
  WHERE topic_id = %s
  	AND user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "collect", "topic_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "collect", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 326, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, true)

  -- line 327
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 327, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 328
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 328, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 329
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 329, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 330
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 330, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 331
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 331, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 332 (ignored write)  -- line 333
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 333, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 334
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 334, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 335
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 335, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  -- line 336
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 336, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 337
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 337, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_24__admin_user_refreshToken_1(_con)
  local _api = "/admin/user/refreshToken"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 338
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 338, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 339
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 339, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 340
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 340, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 341
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 341, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 342
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 342, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 343
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 343, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 344
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 344, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 345
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 345, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  _begin_f(_con, true)

  -- line 346
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 346, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 347
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 347, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 348
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 348, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 349
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 349, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 350
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 350, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 351
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 351, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, false)

-- line 352 (ignored write)  _commit_f(_con, false)
  
end

function API_25__topic_x_1(_con)
  local _api = "/topic/1"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 353
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 353, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 354
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 354, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 355
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 355, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 356
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 356, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 357
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 357, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 358
  _sql = [[
  SELECT id, title, content, in_time, modify_time
  	, user_id, comment_count, collect_count, view, top
  	, good, up_ids
  FROM topic
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "topic", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 358, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, false)

  -- line 359
  _sql = [[
  SELECT tag_id, topic_id
  FROM topic_tag
  WHERE topic_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "topic_tag", "topic_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 359, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, true)

  -- line 360
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 360, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 361
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 361, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 362
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 362, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 363
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 363, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 364
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 364, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 365
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 365, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, false)

  -- line 366
  _sql = [[
  SELECT topic_id, user_id, in_time
  FROM collect
  WHERE topic_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "collect", "topic_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 366, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, false)

  -- line 367
  _sql = [[
  SELECT topic_id, user_id, in_time
  FROM collect
  WHERE topic_id = %s
  	AND user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "collect", "topic_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "collect", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 367, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, true)

  -- line 368
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 368, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 369
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 369, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 370
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 370, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 371
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 371, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 372
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 372, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 373 (ignored write)  -- line 374
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 374, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 375
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 375, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 376
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 376, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  -- line 377
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 377, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 378
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 378, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_26__api_comment_1(_con)
  local _api = "/api/comment"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 379
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 379, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 380
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 380, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 381
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 381, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 382
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 382, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 383
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 383, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 384
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE token = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "token", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 384, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_26__api_comment_2(_con)
  local _api = "/api/comment"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 385
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 385, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 386
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 386, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 387
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 387, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 388
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 388, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 389
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 389, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 390
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE token = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "token", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 390, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, true)

  -- line 391
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 391, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 392
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 392, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 393
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 393, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 394
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 394, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 395
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 395, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 396
  _sql = [[
  SELECT id, title, content, in_time, modify_time
  	, user_id, comment_count, collect_count, view, top
  	, good, up_ids
  FROM topic
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "topic", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 396, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, true)

-- line 397 (ignored write)-- line 398 (ignored write)  -- line 399
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 399, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 400
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 400, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 401
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 401, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 402
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 402, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 403
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 403, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 404
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 404, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 405
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 405, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 406
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 406, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 407
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 407, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 408 (ignored write)  -- line 409
  _sql = [[
  SELECT id, topic_id, user_id, content, in_time
  	, comment_id, up_ids
  FROM comment
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "comment", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 409, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 410 (ignored write)  -- line 411
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 411, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 412
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 412, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 413
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 413, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 414
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 414, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 415
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 415, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 416
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 416, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 417
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 417, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 418 (ignored write)  -- line 419
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 419, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 420
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 420, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 421
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 421, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 422
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 422, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 423
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 423, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 424
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 424, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 425
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 425, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_26__api_comment_3(_con)
  local _api = "/api/comment"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 426
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 426, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 427
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 427, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 428
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 428, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 429
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 429, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 430
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 430, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 431
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE token = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "token", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 431, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, true)

  -- line 432
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 432, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 433
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 433, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 434
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 434, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 435
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 435, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 436
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 436, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 437
  _sql = [[
  SELECT id, title, content, in_time, modify_time
  	, user_id, comment_count, collect_count, view, top
  	, good, up_ids
  FROM topic
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "topic", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 437, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, true)

-- line 438 (ignored write)-- line 439 (ignored write)  -- line 440
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 440, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 441
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 441, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 442
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 442, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 443
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 443, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 444
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 444, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 445
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 445, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 446
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 446, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 447
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 447, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 448
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 448, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 449 (ignored write)  -- line 450
  _sql = [[
  SELECT id, topic_id, user_id, content, in_time
  	, comment_id, up_ids
  FROM comment
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "comment", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 450, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 451 (ignored write)  -- line 452
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 452, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 453
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 453, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 454
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 454, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 455
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 455, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 456
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 456, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 457
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 457, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 458
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 458, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_26__api_comment_4(_con)
  local _api = "/api/comment"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 459
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 459, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 460
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 460, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 461
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 461, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 462
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 462, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 463
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 463, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 464
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE token = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "token", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 464, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, true)

  -- line 465
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 465, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 466
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 466, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 467
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 467, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 468
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 468, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 469
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 469, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 470
  _sql = [[
  SELECT id, title, content, in_time, modify_time
  	, user_id, comment_count, collect_count, view, top
  	, good, up_ids
  FROM topic
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "topic", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 470, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, true)

-- line 471 (ignored write)-- line 472 (ignored write)  -- line 473
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 473, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 474
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 474, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 475
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 475, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 476
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 476, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 477
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 477, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 478
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 478, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 479
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 479, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 480
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 480, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 481
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 481, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 482 (ignored write)-- line 483 (ignored write)  -- line 484
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 484, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 485
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 485, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 486
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 486, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 487
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 487, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 488
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 488, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 489
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 489, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 490
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 490, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_27__static_theme_default_libs_layer_theme_default_layer_css_1(_con)
  local _api = "/static/theme/default/libs/layer/theme/default/layer.css"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 491
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
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

function API_28__user_stephen_collects_1(_con)
  local _api = "/user/stephen/collects"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 492
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 492, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 493
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 493, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_29___1(_con)
  local _api = "/"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 494
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 494, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 495
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 495, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 496
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 496, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_29___2(_con)
  local _api = "/"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 497
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 497, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_29___3(_con)
  local _api = "/"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 498
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 498, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 499
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 499, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_30__topic_edit_x_1(_con)
  local _api = "/topic/edit/1"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 500
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 500, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 501
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 501, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 502
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 502, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 503
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 503, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 504
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 504, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 505
  _sql = [[
  SELECT id, title, content, in_time, modify_time
  	, user_id, comment_count, collect_count, view, top
  	, good, up_ids
  FROM topic
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "topic", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 505, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, false)

  -- line 506
  _sql = [[
  SELECT tag_id, topic_id
  FROM topic_tag
  WHERE topic_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "topic_tag", "topic_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 506, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  -- line 507
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 507, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 508
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 508, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_31__api_comment_x_vote_1(_con)
  local _api = "/api/comment/2/vote"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 509
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 509, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 510
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 510, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 511
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 511, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 512
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 512, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 513
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 513, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 514
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE token = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "token", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 514, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, false)

  -- line 515
  _sql = [[
  SELECT id, topic_id, user_id, content, in_time
  	, comment_id, up_ids
  FROM comment
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "comment", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 515, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, true)

  -- line 516
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 516, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 517 (ignored write)-- line 518 (ignored write)  _commit_f(_con, true)
  
end

function API_32__api_settings_1(_con)
  local _api = "/api/settings"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 519
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 519, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 520
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 520, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 521
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 521, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 522
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 522, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 523
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 523, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 524
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE token = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "token", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 524, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, true)

  -- line 525
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 525, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 526
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 526, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 527
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 527, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 528
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 528, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 529
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 529, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 530
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 530, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, false)

-- line 531 (ignored write)  _commit_f(_con, false)
  
end

function API_33__static_theme_default_libs_layer_layer_js_1(_con)
  local _api = "/static/theme/default/libs/layer/layer.js"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 532
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 532, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_34__register_1(_con)
  local _api = "/register"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 533
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 533, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 534
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 534, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 535
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 535, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_35__settings_1(_con)
  local _api = "/settings"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 536
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 536, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 537
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 537, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 538
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 538, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 539
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 539, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 540
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 540, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 541
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 541, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  -- line 542
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 542, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 543
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 543, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_36__admin_tag_list_1(_con)
  local _api = "/admin/tag/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 544
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 544, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 545
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 545, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 546
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 546, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 547
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 547, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 548
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 548, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 549
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 549, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 550
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 550, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 551
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 551, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  _begin_f(_con, true)

  -- line 552
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 552, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 553
  _sql = [[
  SELECT COUNT(1)
  FROM tag
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 553, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 554
  _sql = [[
  SELECT id, name, description, icon, topic_count
  	, in_time
  FROM tag
  ORDER BY topic_count DESC
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 554, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  -- line 555
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 555, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_37__login_1(_con)
  local _api = "/login"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 556
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 556, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 557
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 557, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 558
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 558, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_38__api_topic_x_vote_1(_con)
  local _api = "/api/topic/2/vote"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 559
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 559, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 560
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 560, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 561
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 561, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 562
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 562, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 563
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 563, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 564
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE token = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "token", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 564, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, true)

  -- line 565
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 565, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 566
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 566, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 567
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 567, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 568
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 568, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 569
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 569, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 570
  _sql = [[
  SELECT id, title, content, in_time, modify_time
  	, user_id, comment_count, collect_count, view, top
  	, good, up_ids
  FROM topic
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "topic", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 570, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, true)

  -- line 571
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 571, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 572
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 572, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 573
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 573, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 574
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 574, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 575
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 575, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 576
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE token = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "token", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 576, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, true)

  -- line 577
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 577, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 578 (ignored write)  -- line 579
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 579, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 580
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 580, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 581
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 581, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 582 (ignored write)  _commit_f(_con, true)
  
end

function API_39__admin_topic_good_1(_con)
  local _api = "/admin/topic/good"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 583
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 583, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 584
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 584, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 585
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 585, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 586
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 586, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 587
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 587, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 588
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 588, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 589
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 589, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 590
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 590, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  _begin_f(_con, true)

  -- line 591
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 591, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 592
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 592, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 593
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 593, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 594
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 594, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 595
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 595, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 596
  _sql = [[
  SELECT id, title, content, in_time, modify_time
  	, user_id, comment_count, collect_count, view, top
  	, good, up_ids
  FROM topic
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "topic", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 596, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, true)

-- line 597 (ignored write)  -- line 598
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 598, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 599
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 599, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 600
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 600, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 601
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 601, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 602
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 602, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 603
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 603, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 604
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 604, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 605
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 605, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_40__static_theme_default_js_codemirror_js_1(_con)
  local _api = "/static/theme/default/js/codemirror.js"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 606
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 606, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 607
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 607, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 608
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 608, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 609
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 609, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 610
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 610, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 611
  _sql = [[
  SELECT id, title, content, in_time, modify_time
  	, user_id, comment_count, collect_count, view, top
  	, good, up_ids
  FROM topic
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "topic", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 611, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_40__static_theme_default_js_codemirror_js_2(_con)
  local _api = "/static/theme/default/js/codemirror.js"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 612
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 612, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_41__api_login_1(_con)
  local _api = "/api/login"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 613
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 613, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  _begin_f(_con, true)

  -- line 614
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 614, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 615
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 615, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 616
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 616, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 617
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 617, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 618
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 618, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 619
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 619, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  -- line 620
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 620, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 621
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 621, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 622
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 622, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_42__api_comment_x_vote_1(_con)
  local _api = "/api/comment/4/vote"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 623
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 623, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 624
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 624, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 625
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 625, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 626
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 626, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 627
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 627, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 628
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE token = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "token", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 628, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, false)

  -- line 629
  _sql = [[
  SELECT id, topic_id, user_id, content, in_time
  	, comment_id, up_ids
  FROM comment
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "comment", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 629, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, true)

  -- line 630
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 630, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 631 (ignored write)-- line 632 (ignored write)  _commit_f(_con, true)
  
end

function API_43__user_stephen_1(_con)
  local _api = "/user/stephen"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 633
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 633, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 634
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 634, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 635
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 635, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 636
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 636, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 637
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 637, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 638
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 638, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, false)

  -- line 639
  _sql = [[
  SELECT id, oauth_id, `type`, login, access_token
  	, in_time, bio, email, user_id, refresh_token
  	, union_id, expires_in
  FROM oauth_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "oauth_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 639, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, false)

  -- line 640
  _sql = [[
  SELECT COUNT(1)
  FROM collect
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "collect", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 640, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  -- line 641
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 641, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 642
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 642, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_44__admin_sensitive_word_list_1(_con)
  local _api = "/admin/sensitive_word/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 643
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 643, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 644
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 644, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 645
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 645, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 646
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 646, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 647
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 647, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 648
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 648, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 649
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 649, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 650
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 650, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  _begin_f(_con, true)

  -- line 651
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 651, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 652
  _sql = [[
  SELECT COUNT(1)
  FROM sensitive_word
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 652, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 653
  _sql = [[
  SELECT id, word
  FROM sensitive_word
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 653, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  -- line 654
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 654, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_44__admin_sensitive_word_list_2(_con)
  local _api = "/admin/sensitive_word/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 655
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 655, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 656
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 656, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 657
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 657, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 658
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 658, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 659
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 659, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 660
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 660, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 661
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 661, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 662
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 662, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  _begin_f(_con, true)

  -- line 663
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 663, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 664
  _sql = [[
  SELECT COUNT(1)
  FROM sensitive_word
  WHERE word = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sensitive_word", "word", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 664, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 665
  _sql = [[
  SELECT id, word
  FROM sensitive_word
  WHERE word = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sensitive_word", "word", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 665, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  -- line 666
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 666, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_45__adminlogin_1(_con)
  local _api = "/adminlogin"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 667
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 667, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_46__admin_permission_list_1(_con)
  local _api = "/admin/permission/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 668
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE pid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "pid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 668, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 669
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE pid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "pid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 669, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 670
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 670, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_47__admin_comment_list_1(_con)
  local _api = "/admin/comment/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 671
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 671, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 672
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 672, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 673
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 673, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 674
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 674, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 675
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 675, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 676
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 676, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 677
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 677, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 678
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 678, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  _begin_f(_con, true)

  -- line 679
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 679, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 680
  _sql = [[
  SELECT COUNT(1)
  FROM comment c
  	LEFT JOIN topic t ON c.topic_id = t.id
  	LEFT JOIN user u ON u.id = c.user_id
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 680, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 681
  _sql = [[
  SELECT c.`id`, c.`content`, c.`topic_id`, c.`user_id`, c.`in_time`
  	, c.`comment_id`, c.`up_ids`, t.title, t.id AS topicId, u.username
  FROM comment c
  	LEFT JOIN topic t ON c.topic_id = t.id
  	LEFT JOIN user u ON u.id = c.user_id
  ORDER BY c.in_time DESC
  LIMIT %s, 20
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 681, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  -- line 682
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 682, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_47__admin_comment_list_2(_con)
  local _api = "/admin/comment/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 683
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 683, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 684
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 684, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 685
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 685, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 686
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 686, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 687
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 687, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 688
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 688, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 689
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 689, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 690
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 690, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  _begin_f(_con, true)

  -- line 691
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 691, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 692
  _sql = [[
  SELECT COUNT(1)
  FROM comment c
  	LEFT JOIN topic t ON c.topic_id = t.id
  	LEFT JOIN user u ON u.id = c.user_id
  WHERE c.in_time BETWEEN %s AND %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "comment", "in_time", {"select", "where", "between_begin"}, nil}),
    _gen_parameter_f({_api, _sql, "comment", "in_time", {"select", "where", "between_end"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 692, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 693
  _sql = [[
  SELECT c.`id`, c.`content`, c.`topic_id`, c.`user_id`, c.`in_time`
  	, c.`comment_id`, c.`up_ids`, t.title, t.id AS topicId, u.username
  FROM comment c
  	LEFT JOIN topic t ON c.topic_id = t.id
  	LEFT JOIN user u ON u.id = c.user_id
  WHERE c.in_time BETWEEN %s AND %s
  ORDER BY c.in_time DESC
  LIMIT %s, 20
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "comment", "in_time", {"select", "where", "between_begin"}, nil}),
    _gen_parameter_f({_api, _sql, "comment", "in_time", {"select", "where", "between_end"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 693, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  -- line 694
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 694, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_48__api_register_1(_con)
  local _api = "/api/register"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 695
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 695, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  _begin_f(_con, true)

  -- line 696
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 696, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 697
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 697, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 698
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 698, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 699
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 699, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 700
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 700, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 701
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 701, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, true)

  -- line 702
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 702, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 703
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 703, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 704
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 704, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 705
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 705, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 706
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 706, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 707
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE email = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "email", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 707, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, true)

  -- line 708
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE token = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "token", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 708, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 709
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 709, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 710 (ignored write)  -- line 711
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 711, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 712
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 712, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  -- line 713
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 713, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 714
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 714, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 715
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 715, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 716
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 716, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  _begin_f(_con, true)

  -- line 717
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 717, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 718
  _sql = [[
  SELECT id, user_id, code, in_time, expire_time
  	, email, mobile, used
  FROM code
  WHERE email = %s
  	AND user_id = %s
  	AND used = %s
  	AND expire_time > %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "code", "email", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "code", "user_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "code", "used", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "code", "expire_time", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 718, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 719
  _sql = [[
  SELECT id, user_id, code, in_time, expire_time
  	, email, mobile, used
  FROM code
  WHERE code = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "code", "code", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 719, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 720 (ignored write)  -- line 721
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 721, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 722
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 722, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 723
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 723, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_49__api_comment_x_vote_1(_con)
  local _api = "/api/comment/6/vote"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 724
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 724, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 725
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 725, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 726
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 726, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 727
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 727, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 728
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 728, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 729
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE token = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "token", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 729, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, false)

  -- line 730
  _sql = [[
  SELECT id, topic_id, user_id, content, in_time
  	, comment_id, up_ids
  FROM comment
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "comment", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 730, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_50__admin_role_edit_1(_con)
  local _api = "/admin/role/edit"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 731
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 731, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 732
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 732, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 733
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 733, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 734
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 734, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 735
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 735, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 736
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 736, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 737
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 737, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 738
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 738, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 739
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 739, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 740
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 740, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 741
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 741, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 742
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE pid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "pid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 742, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 743
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE pid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "pid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 743, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 744
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE pid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "pid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 744, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 745
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE pid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "pid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 745, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 746
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE pid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "pid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 746, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 747
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE pid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "pid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 747, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 748
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE pid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "pid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 748, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 749
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE pid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "pid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 749, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 750
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE pid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "pid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 750, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 751
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE pid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "pid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 751, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 752
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE pid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "pid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 752, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 753
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE pid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "pid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 753, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 754
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE pid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "pid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 754, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 755
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE pid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "pid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 755, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 756
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE pid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "pid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 756, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 757
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 757, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_50__admin_role_edit_2(_con)
  local _api = "/admin/role/edit"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 758
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 758, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 759
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 759, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 760
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 760, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 761
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 761, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 762
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 762, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 763
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 763, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 764
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 764, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 765
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 765, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 766
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 766, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


-- line 767 (ignored write)
-- line 768 (ignored write)
-- line 769 (ignored write)
-- line 770 (ignored write)
-- line 771 (ignored write)
-- line 772 (ignored write)
-- line 773 (ignored write)
-- line 774 (ignored write)
-- line 775 (ignored write)
-- line 776 (ignored write)
-- line 777 (ignored write)
-- line 778 (ignored write)
-- line 779 (ignored write)
-- line 780 (ignored write)
-- line 781 (ignored write)
-- line 782 (ignored write)
  -- line 783
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 783, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_51__topx_1(_con)
  local _api = "/top100"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 784
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 784, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 785
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 785, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_52__api_comment_x_vote_1(_con)
  local _api = "/api/comment/3/vote"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 786
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 786, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 787
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 787, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 788
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 788, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 789
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 789, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 790
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 790, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 791
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE token = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "token", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 791, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, false)

  -- line 792
  _sql = [[
  SELECT id, topic_id, user_id, content, in_time
  	, comment_id, up_ids
  FROM comment
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "comment", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 792, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, true)

  -- line 793
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 793, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 794 (ignored write)-- line 795 (ignored write)  _commit_f(_con, true)
  
end

function API_52__api_comment_x_vote_2(_con)
  local _api = "/api/comment/3/vote"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 796
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 796, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 797
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 797, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 798
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 798, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 799
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 799, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 800
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 800, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 801
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE token = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "token", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 801, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, false)

  -- line 802
  _sql = [[
  SELECT id, topic_id, user_id, content, in_time
  	, comment_id, up_ids
  FROM comment
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "comment", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 802, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, true)

  -- line 803
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 803, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 804 (ignored write)-- line 805 (ignored write)  _commit_f(_con, true)
  
end

function API_53__api_notification_markRead_1(_con)
  local _api = "/api/notification/markRead"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 806
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 806, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 807
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 807, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 808
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 808, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 809
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 809, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 810
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 810, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 811
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE token = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "token", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 811, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, false)

-- line 812 (ignored write)  _commit_f(_con, false)
  
end

function API_54__api_topic_x_vote_1(_con)
  local _api = "/api/topic/1/vote"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 813
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 813, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 814
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 814, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 815
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 815, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 816
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 816, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 817
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 817, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 818
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE token = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "token", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 818, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, true)

  -- line 819
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 819, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 820
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 820, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 821
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 821, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 822
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 822, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 823
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 823, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 824
  _sql = [[
  SELECT id, title, content, in_time, modify_time
  	, user_id, comment_count, collect_count, view, top
  	, good, up_ids
  FROM topic
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "topic", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 824, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_55__admin_user_edit_1(_con)
  local _api = "/admin/user/edit"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 825
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 825, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 826
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 826, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 827
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 827, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 828
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 828, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 829
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 829, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 830
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 830, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 831
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 831, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 832
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 832, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  _begin_f(_con, true)

  -- line 833
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 833, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 834
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 834, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 835
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 835, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 836
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 836, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 837
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 837, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 838
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 838, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  -- line 839
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 839, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_55__admin_user_edit_2(_con)
  local _api = "/admin/user/edit"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 840
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 840, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 841
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 841, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 842
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 842, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 843
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 843, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 844
  _sql = [[
  SELECT id, username, password, in_time, role_id
  FROM admin_user
  WHERE username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "admin_user", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 844, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 845
  _sql = [[
  SELECT id, name
  FROM role
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 845, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 846
  _sql = [[
  SELECT role_id, permission_id
  FROM role_permission
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "role_permission", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 846, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 847
  _sql = [[
  SELECT id, name, value, pid
  FROM permission
  WHERE id IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "permission", "id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 847, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  _begin_f(_con, false)

-- line 848 (ignored write)  _commit_f(_con, false)
  
end

function API_56__api_notification_notRead_1(_con)
  local _api = "/api/notification/notRead"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 849
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 849, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 850
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 850, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 851
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 851, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 852
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 852, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 853
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 853, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 854
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE token = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "token", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 854, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, false)

  -- line 855
  _sql = [[
  SELECT COUNT(1)
  FROM notification
  WHERE target_user_id = %s
  	AND `read` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "notification", "target_user_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "notification", "read", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 855, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_57__static_theme_default_js_app_js_1(_con)
  local _api = "/static/theme/default/js/app.js"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 856
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 856, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_57__static_theme_default_js_app_js_2(_con)
  local _api = "/static/theme/default/js/app.js"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 857
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 857, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 858
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 858, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_58__api_settings_updatePassword_1(_con)
  local _api = "/api/settings/updatePassword"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 859
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 859, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 860
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 860, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 861
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 861, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 862
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 862, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 863
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 863, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 864
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE token = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "token", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 864, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, true)

  -- line 865
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 865, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 866
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 866, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 867
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 867, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 868
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 868, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 869
  _sql = [[
  SELECT id, `key`, `value`, description, pid
  	, `type`, `option`, `reboot`
  FROM system_config
  WHERE `key` = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "system_config", "key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 869, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 870
  _sql = [[
  SELECT id, username, telegram_name, avatar, password
  	, email, mobile, website, bio, score
  	, in_time, token, email_notification, active
  FROM user
  WHERE id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 870, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  _begin_f(_con, false)

-- line 871 (ignored write)  _commit_f(_con, false)
  
end

