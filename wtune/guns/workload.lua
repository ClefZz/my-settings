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

function API_1_GET_mgr_1(_con)
  local _api = "GET /mgr"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 1
  _sql = [[
  SELECT m.URL
  FROM sys_relation rel
  	INNER JOIN sys_menu m ON rel.menu_id = m.menu_id
  WHERE rel.role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_relation", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 1, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, false)

  -- line 2
  _sql = [[
  SELECT role_id, pid, name, description, sort
  	, version, create_time, update_time, create_user, update_user
  FROM sys_role
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_role", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 2, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_2_POST_dept_add_1(_con)
  local _api = "POST /dept/add"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 3
  _sql = [[
  SELECT dept_id, pid, pids, simple_name, full_name
  	, description, version, sort, create_time, update_time
  	, create_user, update_user
  FROM sys_dept
  WHERE dept_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dept", "dept_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 3, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 4 (ignored write)  _commit_f(_con, true)
  
end

function API_3_POST_mgr_reset_1(_con)
  local _api = "POST /mgr/reset"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 5
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 5, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


-- line 6 (ignored write)
  -- line 7
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 7, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_4_GET_notice_list_1(_con)
  local _api = "GET /notice/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 8
  _sql = [[
  SELECT COUNT(1)
  FROM sys_notice
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
  SELECT notice_id AS "noticeId", title AS "title", content AS "content", create_time AS "createTime", create_user AS "createUser"
  	, update_time AS "updateTime", update_user AS "updateUser"
  FROM sys_notice
  ORDER BY create_time DESC
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 9, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 10
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 10, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 11
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 11, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_4_GET_notice_list_2(_con)
  local _api = "GET /notice/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 12
  _sql = [[
  SELECT COUNT(1)
  FROM sys_notice
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 12, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 13
  _sql = [[
  SELECT notice_id AS "noticeId", title AS "title", content AS "content", create_time AS "createTime", create_user AS "createUser"
  	, update_time AS "updateTime", update_user AS "updateUser"
  FROM sys_notice
  ORDER BY create_time DESC
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 13, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 14
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 14, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 15
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 15, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 16
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 16, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_4_GET_notice_list_3(_con)
  local _api = "GET /notice/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 17
  _sql = [[
  SELECT COUNT(1)
  FROM sys_notice
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 17, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 18
  _sql = [[
  SELECT notice_id AS "noticeId", title AS "title", content AS "content", create_time AS "createTime", create_user AS "createUser"
  	, update_time AS "updateTime", update_user AS "updateUser"
  FROM sys_notice
  ORDER BY create_time DESC
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 18, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 19
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 19, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 20
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 20, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 21
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 21, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 22
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 22, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_4_GET_notice_list_4(_con)
  local _api = "GET /notice/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 23
  _sql = [[
  SELECT COUNT(1)
  FROM sys_notice
  WHERE title LIKE CONCAT('%%', '大', '%%')
  	OR content LIKE CONCAT('%%', '大', '%%')
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 23, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 24
  _sql = [[
  SELECT notice_id AS "noticeId", title AS "title", content AS "content", create_time AS "createTime", create_user AS "createUser"
  	, update_time AS "updateTime", update_user AS "updateUser"
  FROM sys_notice
  WHERE title LIKE CONCAT('%%', '大', '%%')
  	OR content LIKE CONCAT('%%', '大', '%%')
  ORDER BY create_time DESC
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 24, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 25
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 25, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_4_GET_notice_list_5(_con)
  local _api = "GET /notice/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 26
  _sql = [[
  SELECT COUNT(1)
  FROM sys_notice
  WHERE title LIKE CONCAT('%%', '大', '%%')
  	OR content LIKE CONCAT('%%', '大', '%%')
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 26, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 27
  _sql = [[
  SELECT notice_id AS "noticeId", title AS "title", content AS "content", create_time AS "createTime", create_user AS "createUser"
  	, update_time AS "updateTime", update_user AS "updateUser"
  FROM sys_notice
  WHERE title LIKE CONCAT('%%', '大', '%%')
  	OR content LIKE CONCAT('%%', '大', '%%')
  ORDER BY create_time DESC
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 27, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_5_POST_dictType_delete_1(_con)
  local _api = "POST /dictType/delete"
  local _sql
  local _formatted_sql
  local _params
  local _res

-- line 28 (ignored write)
end

function API_6_POST_dictType_editItem_1(_con)
  local _api = "POST /dictType/editItem"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 29
  _sql = [[
  SELECT dict_type_id, code, name, description, system_flag
  	, status, sort, create_time, create_user, update_time
  	, update_user
  FROM sys_dict_type
  WHERE dict_type_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dict_type", "dict_type_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 29, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 30
  _sql = [[
  SELECT COUNT(1)
  FROM sys_dict_type
  WHERE (code = %s
  		OR name = %s)
  	AND dict_type_id <> %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dict_type", "code", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "sys_dict_type", "name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "sys_dict_type", "dict_type_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 30, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


-- line 31 (ignored write)
end

function API_7_POST_mgr_add_1(_con)
  local _api = "POST /mgr/add"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 32
  _sql = [[
  SELECT user_id AS "userId", avatar AS "avatar", account AS "account", salt AS "salt", password AS "password"
  	, name AS "name", birthday AS "birthday", sex AS "sex", email AS "email", phone AS "phone"
  	, role_id AS "roleId", dept_id AS "deptId", status AS "status", create_time AS "createTime", create_user AS "createUser"
  	, update_time AS "updateTime", update_user AS "updateUser", version AS "version"
  FROM sys_user
  WHERE account = %s
  	AND status != %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "account", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "sys_user", "status", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 32, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


-- line 33 (ignored write)
end

function API_8_POST_notice_delete_1(_con)
  local _api = "POST /notice/delete"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 34
  _sql = [[
  SELECT notice_id, title, content, create_time, create_user
  	, update_time, update_user
  FROM sys_notice
  WHERE notice_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_notice", "notice_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 34, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


-- line 35 (ignored write)
end

function API_9_POST_log_delLog_1(_con)
  local _api = "POST /log/delLog"
  local _sql
  local _formatted_sql
  local _params
  local _res

-- line 36 (ignored write)
end

function API_10_POST_role_add_1(_con)
  local _api = "POST /role/add"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

-- line 37 (ignored write)  _commit_f(_con, false)
  
end

function API_11_POST_menu_remove_1(_con)
  local _api = "POST /menu/remove"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 38
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 38, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  _begin_f(_con, true)

  -- line 39
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 39, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 40 (ignored write)-- line 41 (ignored write)  -- line 42
  _sql = [[
  SELECT menu_id AS "menuId", code AS "code", pcode AS "pcode", pcodes AS "pcodes", name AS "name"
  	, icon AS "icon", url AS "url", sort AS "sort", levels AS "levels", menu_flag AS "menuFlag"
  	, description AS "description", status AS "status", new_page_flag AS "newPageFlag", open_flag AS "openFlag", create_time AS "createTime"
  	, update_time AS "updateTime", create_user AS "createUser", update_user AS "updateUser"
  FROM sys_menu
  WHERE 1 = 1
  	AND pcodes LIKE CONCAT('%%$[', '142', '$]%%') ESCAPE '$'
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 42, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_12_POST_role_roleTreeListByUserId_x_1(_con)
  local _api = "POST /role/roleTreeListByUserId/1"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 43
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 43, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 44
  _sql = [[
  SELECT r.role_id AS id, r.pid AS "pId", r.name AS "name"
  	, CASE 
  		WHEN r.pid = 0
  		OR r.pid IS NULL THEN 'true'
  		ELSE 'false'
  	END AS "open"
  	, CASE 
  		WHEN r1.role_id = 0
  		OR r1.role_id IS NULL THEN 'false'
  		ELSE 'true'
  	END AS "checked"
  FROM sys_role r
  	LEFT JOIN (
  		SELECT role_id
  		FROM sys_role
  		WHERE role_id IN (%s)
  	) r1
  	ON r.role_id = r1.role_id
  ORDER BY pid, r.sort ASC
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_role", "role_id", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 44, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_13_GET_log_list_1(_con)
  local _api = "GET /log/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 45
  _sql = [[
  SELECT COUNT(1)
  FROM sys_operation_log
  WHERE 1 = 1
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
  SELECT operation_log_id AS "operationLogId", log_type AS "logType", log_name AS "logName", user_id AS "userId", class_name AS "className"
  	, method AS "method", create_time AS "createTime", succeed AS "succeed", message AS "message"
  FROM sys_operation_log
  WHERE 1 = 1
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


  -- line 47
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 47, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 48
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 48, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 49
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 49, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 50
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 50, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 51
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 51, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 52
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 52, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 53
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 53, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 54
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 54, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 55
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 55, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 56
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 56, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_13_GET_log_list_2(_con)
  local _api = "GET /log/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 57
  _sql = [[
  SELECT COUNT(1)
  FROM sys_operation_log
  WHERE 1 = 1
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 57, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 58
  _sql = [[
  SELECT operation_log_id AS "operationLogId", log_type AS "logType", log_name AS "logName", user_id AS "userId", class_name AS "className"
  	, method AS "method", create_time AS "createTime", succeed AS "succeed", message AS "message"
  FROM sys_operation_log
  WHERE 1 = 1
  LIMIT %s, 10
  ]]
  _params = {
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
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 59, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 60
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 60, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 61
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 61, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 62
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 62, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 63
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 63, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 64
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 64, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 65
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 65, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_13_GET_log_list_3(_con)
  local _api = "GET /log/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 66
  _sql = [[
  SELECT COUNT(1)
  FROM sys_operation_log
  WHERE 1 = 1
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 66, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 67
  _sql = [[
  SELECT operation_log_id AS "operationLogId", log_type AS "logType", log_name AS "logName", user_id AS "userId", class_name AS "className"
  	, method AS "method", create_time AS "createTime", succeed AS "succeed", message AS "message"
  FROM sys_operation_log
  WHERE 1 = 1
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 67, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_13_GET_log_list_4(_con)
  local _api = "GET /log/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 68
  _sql = [[
  SELECT COUNT(1)
  FROM sys_operation_log
  WHERE 1 = 1
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 68, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 69
  _sql = [[
  SELECT operation_log_id AS "operationLogId", log_type AS "logType", log_name AS "logName", user_id AS "userId", class_name AS "className"
  	, method AS "method", create_time AS "createTime", succeed AS "succeed", message AS "message"
  FROM sys_operation_log
  WHERE 1 = 1
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 69, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 70
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 70, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_13_GET_log_list_5(_con)
  local _api = "GET /log/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 71
  _sql = [[
  SELECT COUNT(1)
  FROM sys_operation_log
  WHERE 1 = 1
  	AND log_type LIKE CONCAT('%%', '业务日志', '%%')
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 71, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 72
  _sql = [[
  SELECT operation_log_id AS "operationLogId", log_type AS "logType", log_name AS "logName", user_id AS "userId", class_name AS "className"
  	, method AS "method", create_time AS "createTime", succeed AS "succeed", message AS "message"
  FROM sys_operation_log
  WHERE 1 = 1
  	AND log_type LIKE CONCAT('%%', '业务日志', '%%')
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 72, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 73
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 73, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_13_GET_log_list_6(_con)
  local _api = "GET /log/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 74
  _sql = [[
  SELECT COUNT(1)
  FROM sys_operation_log
  WHERE 1 = 1
  	AND create_time BETWEEN CONCAT('2019-07-08', ' 00:00:00') AND CONCAT('2019-10-31', ' 23:59:59')
  	AND log_type LIKE CONCAT('%%', '业务日志', '%%')
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 74, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 75
  _sql = [[
  SELECT operation_log_id AS "operationLogId", log_type AS "logType", log_name AS "logName", user_id AS "userId", class_name AS "className"
  	, method AS "method", create_time AS "createTime", succeed AS "succeed", message AS "message"
  FROM sys_operation_log
  WHERE 1 = 1
  	AND create_time BETWEEN CONCAT('2019-07-08', ' 00:00:00') AND CONCAT('2019-10-31', ' 23:59:59')
  	AND log_type LIKE CONCAT('%%', '业务日志', '%%')
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 75, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 76
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 76, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_14_GET_mgr_list_1(_con)
  local _api = "GET /mgr/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 77
  _sql = [[
  SELECT COUNT(1)
  FROM sys_user
  WHERE status != %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "status", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 77, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 78
  _sql = [[
  SELECT user_id AS "userId", avatar AS "avatar", account AS "account", salt AS "salt", name AS "name"
  	, birthday AS "birthday", sex AS "sex", email AS "email", phone AS "phone", role_id AS "roleId"
  	, dept_id AS "deptId", status AS "status", create_time AS "createTime", create_user AS "createUser", update_time AS "updateTime"
  	, update_user AS "updateUser", version AS "version"
  FROM sys_user
  WHERE status != %s
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "status", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 78, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 79
  _sql = [[
  SELECT dict_type_id, code, name, description, system_flag
  	, status, sort, create_time, create_user, update_time
  	, update_user
  FROM sys_dict_type
  WHERE name = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dict_type", "name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 79, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 80
  _sql = [[
  SELECT dict_id, dict_type_id, code, name, parent_id
  	, parent_ids, status, sort, description, create_time
  	, update_time, create_user, update_user
  FROM sys_dict
  WHERE dict_type_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dict", "dict_type_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 80, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 81
  _sql = [[
  SELECT role_id, pid, name, description, sort
  	, version, create_time, update_time, create_user, update_user
  FROM sys_role
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_role", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 81, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_14_GET_mgr_list_2(_con)
  local _api = "GET /mgr/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 82
  _sql = [[
  SELECT COUNT(1)
  FROM sys_user
  WHERE status != %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "status", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 82, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 83
  _sql = [[
  SELECT user_id AS "userId", avatar AS "avatar", account AS "account", salt AS "salt", name AS "name"
  	, birthday AS "birthday", sex AS "sex", email AS "email", phone AS "phone", role_id AS "roleId"
  	, dept_id AS "deptId", status AS "status", create_time AS "createTime", create_user AS "createUser", update_time AS "updateTime"
  	, update_user AS "updateUser", version AS "version"
  FROM sys_user
  WHERE status != %s
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "status", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 83, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 84
  _sql = [[
  SELECT dict_type_id, code, name, description, system_flag
  	, status, sort, create_time, create_user, update_time
  	, update_user
  FROM sys_dict_type
  WHERE name = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dict_type", "name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 84, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 85
  _sql = [[
  SELECT dict_id, dict_type_id, code, name, parent_id
  	, parent_ids, status, sort, description, create_time
  	, update_time, create_user, update_user
  FROM sys_dict
  WHERE dict_type_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dict", "dict_type_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 85, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 86
  _sql = [[
  SELECT dict_type_id, code, name, description, system_flag
  	, status, sort, create_time, create_user, update_time
  	, update_user
  FROM sys_dict_type
  WHERE name = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dict_type", "name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 86, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 87
  _sql = [[
  SELECT dict_id, dict_type_id, code, name, parent_id
  	, parent_ids, status, sort, description, create_time
  	, update_time, create_user, update_user
  FROM sys_dict
  WHERE dict_type_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dict", "dict_type_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 87, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 88
  _sql = [[
  SELECT dept_id, pid, pids, simple_name, full_name
  	, description, version, sort, create_time, update_time
  	, create_user, update_user
  FROM sys_dept
  WHERE dept_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dept", "dept_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 88, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_14_GET_mgr_list_3(_con)
  local _api = "GET /mgr/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 89
  _sql = [[
  SELECT COUNT(1)
  FROM sys_user
  WHERE status != %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "status", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 89, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 90
  _sql = [[
  SELECT user_id AS "userId", avatar AS "avatar", account AS "account", salt AS "salt", name AS "name"
  	, birthday AS "birthday", sex AS "sex", email AS "email", phone AS "phone", role_id AS "roleId"
  	, dept_id AS "deptId", status AS "status", create_time AS "createTime", create_user AS "createUser", update_time AS "updateTime"
  	, update_user AS "updateUser", version AS "version"
  FROM sys_user
  WHERE status != %s
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "status", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 90, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 91
  _sql = [[
  SELECT dict_type_id, code, name, description, system_flag
  	, status, sort, create_time, create_user, update_time
  	, update_user
  FROM sys_dict_type
  WHERE name = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dict_type", "name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 91, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 92
  _sql = [[
  SELECT dict_id, dict_type_id, code, name, parent_id
  	, parent_ids, status, sort, description, create_time
  	, update_time, create_user, update_user
  FROM sys_dict
  WHERE dict_type_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dict", "dict_type_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 92, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 93
  _sql = [[
  SELECT dict_type_id, code, name, description, system_flag
  	, status, sort, create_time, create_user, update_time
  	, update_user
  FROM sys_dict_type
  WHERE name = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dict_type", "name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 93, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 94
  _sql = [[
  SELECT dict_id, dict_type_id, code, name, parent_id
  	, parent_ids, status, sort, description, create_time
  	, update_time, create_user, update_user
  FROM sys_dict
  WHERE dict_type_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dict", "dict_type_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 94, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_15_GET_mgr_user_edit_1(_con)
  local _api = "GET /mgr/user_edit"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 95
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 95, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_16_POST_menu_add_1(_con)
  local _api = "POST /menu/add"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 96
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE code = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "code", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 96, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 97 (ignored write)  _commit_f(_con, true)
  
end

function API_17_GET_dept_list_1(_con)
  local _api = "GET /dept/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 98
  _sql = [[
  SELECT COUNT(1)
  FROM sys_dept
  WHERE 1 = 1
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 98, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 99
  _sql = [[
  SELECT dept_id AS "deptId", pid AS "pid", pids AS "pids", simple_name AS "simpleName", full_name AS "fullName"
  	, description AS "description", version AS "version", sort AS "sort", create_time AS "createTime", update_time AS "updateTime"
  	, create_user AS "createUser", update_user AS "updateUser"
  FROM sys_dept
  WHERE 1 = 1
  ORDER BY sort ASC
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 99, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 100
  _sql = [[
  SELECT dept_id, pid, pids, simple_name, full_name
  	, description, version, sort, create_time, update_time
  	, create_user, update_user
  FROM sys_dept
  WHERE dept_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dept", "dept_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 100, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_17_GET_dept_list_2(_con)
  local _api = "GET /dept/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 101
  _sql = [[
  SELECT COUNT(1)
  FROM sys_dept
  WHERE 1 = 1
  	AND (dept_id = %s
  		OR dept_id IN (
  			SELECT dept_id
  			FROM sys_dept
  			WHERE pids LIKE CONCAT('%%$[', 24, '$]%%') ESCAPE '$'
  		))
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dept", "dept_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 101, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 102
  _sql = [[
  SELECT dept_id AS "deptId", pid AS "pid", pids AS "pids", simple_name AS "simpleName", full_name AS "fullName"
  	, description AS "description", version AS "version", sort AS "sort", create_time AS "createTime", update_time AS "updateTime"
  	, create_user AS "createUser", update_user AS "updateUser"
  FROM sys_dept
  WHERE 1 = 1
  	AND (dept_id = %s
  		OR dept_id IN (
  			SELECT dept_id
  			FROM sys_dept
  			WHERE pids LIKE CONCAT('%%$[', 24, '$]%%') ESCAPE '$'
  		))
  ORDER BY sort ASC
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dept", "dept_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 102, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_17_GET_dept_list_3(_con)
  local _api = "GET /dept/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 103
  _sql = [[
  SELECT COUNT(1)
  FROM sys_dept
  WHERE 1 = 1
  	AND simple_name LIKE CONCAT('%%', '部', '%%')
  	OR full_name LIKE CONCAT('%%', '部', '%%')
  	AND (dept_id = %s
  		OR dept_id IN (
  			SELECT dept_id
  			FROM sys_dept
  			WHERE pids LIKE CONCAT('%%$[', 24, '$]%%') ESCAPE '$'
  		))
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dept", "dept_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 103, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 104
  _sql = [[
  SELECT dept_id AS "deptId", pid AS "pid", pids AS "pids", simple_name AS "simpleName", full_name AS "fullName"
  	, description AS "description", version AS "version", sort AS "sort", create_time AS "createTime", update_time AS "updateTime"
  	, create_user AS "createUser", update_user AS "updateUser"
  FROM sys_dept
  WHERE 1 = 1
  	AND simple_name LIKE CONCAT('%%', '部', '%%')
  	OR full_name LIKE CONCAT('%%', '部', '%%')
  	AND (dept_id = %s
  		OR dept_id IN (
  			SELECT dept_id
  			FROM sys_dept
  			WHERE pids LIKE CONCAT('%%$[', 24, '$]%%') ESCAPE '$'
  		))
  ORDER BY sort ASC
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dept", "dept_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 104, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_18_POST_menu_menuTreeListByRoleId_x_1(_con)
  local _api = "POST /menu/menuTreeListByRoleId/1188370535139115009"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 105
  _sql = [[
  SELECT menu_id
  FROM sys_relation
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_relation", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 105, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 106
  _sql = [[
  SELECT m1.menu_id AS id
  	, CASE 
  		WHEN m2.menu_id = 0
  		OR m2.menu_id IS NULL THEN 0
  		ELSE m2.menu_id
  	END AS pId, m1.name AS name
  	, CASE 
  		WHEN m2.menu_id = 0
  		OR m2.menu_id IS NULL THEN 'true'
  		ELSE 'false'
  	END AS "open"
  FROM sys_menu m1
  	LEFT JOIN sys_menu m2 ON m1.pcode = m2.code
  ORDER BY m1.menu_id ASC
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 106, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_19_POST_menu_getMenuInfo_1(_con)
  local _api = "POST /menu/getMenuInfo"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 107
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 107, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 108
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE code = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "code", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 108, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 109
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE code = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "code", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 109, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_20_POST_dept_tree_1(_con)
  local _api = "POST /dept/tree"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 110
  _sql = [[
  SELECT dept_id AS id, pid AS "pId", simple_name AS name
  	, CASE 
  		WHEN pid = 0
  		OR pid IS NULL THEN 'true'
  		ELSE 'false'
  	END AS "open"
  FROM sys_dept
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 110, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_21_GET_loginLog_list_1(_con)
  local _api = "GET /loginLog/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 111
  _sql = [[
  SELECT COUNT(1)
  FROM sys_login_log
  WHERE 1 = 1
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 111, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 112
  _sql = [[
  SELECT login_log_id AS "loginLogId", log_name AS "logName", user_id AS "userId", create_time AS "createTime", succeed AS "succeed"
  	, message AS "message", ip_address AS "ipAddress"
  FROM sys_login_log
  WHERE 1 = 1
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 112, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 113
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 113, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_21_GET_loginLog_list_2(_con)
  local _api = "GET /loginLog/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 114
  _sql = [[
  SELECT COUNT(1)
  FROM sys_login_log
  WHERE 1 = 1
  	AND create_time BETWEEN CONCAT('2019-07-08', ' 00:00:00') AND CONCAT('2019-10-31', ' 23:59:59')
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 114, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 115
  _sql = [[
  SELECT login_log_id AS "loginLogId", log_name AS "logName", user_id AS "userId", create_time AS "createTime", succeed AS "succeed"
  	, message AS "message", ip_address AS "ipAddress"
  FROM sys_login_log
  WHERE 1 = 1
  	AND create_time BETWEEN CONCAT('2019-07-08', ' 00:00:00') AND CONCAT('2019-10-31', ' 23:59:59')
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 115, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 116
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 116, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_22_POST_mgr_edit_1(_con)
  local _api = "POST /mgr/edit"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 117
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 117, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


-- line 118 (ignored write)
  -- line 119
  _sql = [[
  SELECT dict_type_id, code, name, description, system_flag
  	, status, sort, create_time, create_user, update_time
  	, update_user
  FROM sys_dict_type
  WHERE name = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dict_type", "name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 119, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 120
  _sql = [[
  SELECT dict_id, dict_type_id, code, name, parent_id
  	, parent_ids, status, sort, description, create_time
  	, update_time, create_user, update_user
  FROM sys_dict
  WHERE dict_type_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dict", "dict_type_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 120, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 121
  _sql = [[
  SELECT dict_type_id, code, name, description, system_flag
  	, status, sort, create_time, create_user, update_time
  	, update_user
  FROM sys_dict_type
  WHERE name = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dict_type", "name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 121, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 122
  _sql = [[
  SELECT dict_id, dict_type_id, code, name, parent_id
  	, parent_ids, status, sort, description, create_time
  	, update_time, create_user, update_user
  FROM sys_dict
  WHERE dict_type_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dict", "dict_type_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 122, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_22_POST_mgr_edit_2(_con)
  local _api = "POST /mgr/edit"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 123
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 123, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


-- line 124 (ignored write)
end

function API_23_GET_menu_menu_add_1(_con)
  local _api = "GET /menu/menu_add"
  local _sql
  local _formatted_sql
  local _params
  local _res

-- line 125 (ignored write)
end

function API_24_POST_menu_edit_1(_con)
  local _api = "POST /menu/edit"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 126
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 126, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 127
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 127, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 128
  _sql = [[
  SELECT menu_id AS "menuId", code AS "code", pcode AS "pcode", pcodes AS "pcodes", name AS "name"
  	, icon AS "icon", url AS "url", sort AS "sort", levels AS "levels", menu_flag AS "menuFlag"
  	, description AS "description", status AS "status", new_page_flag AS "newPageFlag", open_flag AS "openFlag", create_time AS "createTime"
  	, update_time AS "updateTime", create_user AS "createUser", update_user AS "updateUser"
  FROM sys_menu
  WHERE 1 = 1
  	AND pcodes LIKE CONCAT('%%$[', 'api_mgr', '$]%%') ESCAPE '$'
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 128, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 129 (ignored write)  _commit_f(_con, true)
  
  -- line 130
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 130, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_25_POST_dept_update_1(_con)
  local _api = "POST /dept/update"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 131
  _sql = [[
  SELECT dept_id, pid, pids, simple_name, full_name
  	, description, version, sort, create_time, update_time
  	, create_user, update_user
  FROM sys_dept
  WHERE dept_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dept", "dept_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 131, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 132 (ignored write)  _commit_f(_con, true)
  
end

function API_26_POST_mgr_changePwd_1(_con)
  local _api = "POST /mgr/changePwd"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 133
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 133, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


-- line 134 (ignored write)
end

function API_27_POST_dictType_addItem_1(_con)
  local _api = "POST /dictType/addItem"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 135
  _sql = [[
  SELECT dict_type_id, code, name, description, system_flag
  	, status, sort, create_time, create_user, update_time
  	, update_user
  FROM sys_dict_type
  WHERE code = %s
  	OR name = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dict_type", "code", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "sys_dict_type", "name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 135, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


-- line 136 (ignored write)
end

function API_28_GET__1(_con)
  local _api = "GET /"
  local _sql
  local _formatted_sql
  local _params
  local _res

-- line 137 (ignored write)
  -- line 138
  _sql = [[
  SELECT m1.menu_id AS id, m1.icon AS icon
  	, CASE 
  		WHEN m2.menu_id = 0
  		OR m2.menu_id IS NULL THEN 0
  		ELSE m2.menu_id
  	END AS "parentId", m1.name AS name, m1.url AS url, m1.levels AS levels, m1.menu_flag AS ismenu
  	, m1.sort AS num
  FROM sys_menu m1
  	LEFT JOIN sys_menu m2 ON m1.pcode = m2.code
  	INNER JOIN (
  		SELECT menu_id
  		FROM sys_menu
  		WHERE menu_id IN (
  			SELECT menu_id
  			FROM sys_relation rela
  			WHERE rela.role_id IN (%s)
  		)
  	) m3
  	ON m1.menu_id = m3.menu_id
  WHERE m1.menu_flag = %s
  ORDER BY levels, m1.sort ASC
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_relation", "role_id", {"select", "where", "in_list"}, nil}),
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_flag", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 138, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_28_GET__2(_con)
  local _api = "GET /"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 139
  _sql = [[
  SELECT m1.menu_id AS id, m1.icon AS icon
  	, CASE 
  		WHEN m2.menu_id = 0
  		OR m2.menu_id IS NULL THEN 0
  		ELSE m2.menu_id
  	END AS "parentId", m1.name AS name, m1.url AS url, m1.levels AS levels, m1.menu_flag AS ismenu
  	, m1.sort AS num
  FROM sys_menu m1
  	LEFT JOIN sys_menu m2 ON m1.pcode = m2.code
  	INNER JOIN (
  		SELECT menu_id
  		FROM sys_menu
  		WHERE menu_id IN (
  			SELECT menu_id
  			FROM sys_relation rela
  			WHERE rela.role_id IN (%s)
  		)
  	) m3
  	ON m1.menu_id = m3.menu_id
  WHERE m1.menu_flag = %s
  ORDER BY levels, m1.sort ASC
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_relation", "role_id", {"select", "where", "in_list"}, nil}),
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_flag", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 139, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_29_POST_dictType_detail_1(_con)
  local _api = "POST /dictType/detail"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 140
  _sql = [[
  SELECT dict_type_id, code, name, description, system_flag
  	, status, sort, create_time, create_user, update_time
  	, update_user
  FROM sys_dict_type
  WHERE dict_type_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dict_type", "dict_type_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 140, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_30_POST_login_1(_con)
  local _api = "POST /login"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 141
  _sql = [[
  SELECT user_id AS "userId", avatar AS "avatar", account AS "account", salt AS "salt", password AS "password"
  	, name AS "name", birthday AS "birthday", sex AS "sex", email AS "email", phone AS "phone"
  	, role_id AS "roleId", dept_id AS "deptId", status AS "status", create_time AS "createTime", create_user AS "createUser"
  	, update_time AS "updateTime", update_user AS "updateUser", version AS "version"
  FROM sys_user
  WHERE account = %s
  	AND status != %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "account", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "sys_user", "status", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 141, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, true)

  -- line 142
  _sql = [[
  SELECT dept_id, pid, pids, simple_name, full_name
  	, description, version, sort, create_time, update_time
  	, create_user, update_user
  FROM sys_dept
  WHERE dept_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dept", "dept_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 142, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 143
  _sql = [[
  SELECT role_id, pid, name, description, sort
  	, version, create_time, update_time, create_user, update_user
  FROM sys_role
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_role", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 143, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_31_GET_system_notice_1(_con)
  local _api = "GET /system/notice"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 144
  _sql = [[
  SELECT notice_id, title, content, create_time, create_user
  	, update_time, update_user
  FROM sys_notice
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 144, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_32_POST_dept_delete_1(_con)
  local _api = "POST /dept/delete"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 145
  _sql = [[
  SELECT dept_id, pid, pids, simple_name, full_name
  	, description, version, sort, create_time, update_time
  	, create_user, update_user
  FROM sys_dept
  WHERE dept_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dept", "dept_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 145, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  _begin_f(_con, true)

  -- line 146
  _sql = [[
  SELECT dept_id, pid, pids, simple_name, full_name
  	, description, version, sort, create_time, update_time
  	, create_user, update_user
  FROM sys_dept
  WHERE dept_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dept", "dept_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 146, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 147
  _sql = [[
  SELECT dept_id AS "deptId", pid AS "pid", pids AS "pids", simple_name AS "simpleName", full_name AS "fullName"
  	, description AS "description", version AS "version", sort AS "sort", create_time AS "createTime", update_time AS "updateTime"
  	, create_user AS "createUser", update_user AS "updateUser"
  FROM sys_dept
  WHERE 1 = 1
  	AND pids LIKE CONCAT('%%$[', 1188370943232311297, '$]%%') ESCAPE '$'
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 147, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 148 (ignored write)  _commit_f(_con, true)
  
end

function API_33_POST_dept_detail_x_1(_con)
  local _api = "POST /dept/detail/1188370943232311297"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 149
  _sql = [[
  SELECT dept_id, pid, pids, simple_name, full_name
  	, description, version, sort, create_time, update_time
  	, create_user, update_user
  FROM sys_dept
  WHERE dept_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dept", "dept_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 149, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_34_GET_dept_dept_update_1(_con)
  local _api = "GET /dept/dept_update"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 150
  _sql = [[
  SELECT dept_id, pid, pids, simple_name, full_name
  	, description, version, sort, create_time, update_time
  	, create_user, update_user
  FROM sys_dept
  WHERE dept_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dept", "dept_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 150, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_35_POST_role_roleTreeList_1(_con)
  local _api = "POST /role/roleTreeList"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 151
  _sql = [[
  SELECT role_id AS id, pid AS "pId", name AS name
  	, CASE 
  		WHEN pid = 0
  		OR pid IS NULL THEN 'true'
  		ELSE 'false'
  	END AS "open"
  FROM sys_role
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 151, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_36_GET_dictType_list_1(_con)
  local _api = "GET /dictType/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 152
  _sql = [[
  SELECT COUNT(1)
  FROM sys_dict_type
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 152, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 153
  _sql = [[
  SELECT dict_type_id, code, name, description, system_flag
  	, status, sort, create_time, create_user, update_time
  	, update_user
  FROM sys_dict_type
  ORDER BY sort ASC
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 153, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_36_GET_dictType_list_2(_con)
  local _api = "GET /dictType/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 154
  _sql = [[
  SELECT COUNT(1)
  FROM sys_dict_type
  WHERE code = %s
  	OR name = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dict_type", "code", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "sys_dict_type", "name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 154, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 155
  _sql = [[
  SELECT dict_type_id, code, name, description, system_flag
  	, status, sort, create_time, create_user, update_time
  	, update_user
  FROM sys_dict_type
  WHERE code = %s
  	OR name = %s
  ORDER BY sort ASC
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dict_type", "code", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "sys_dict_type", "name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 155, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_36_GET_dictType_list_3(_con)
  local _api = "GET /dictType/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 156
  _sql = [[
  SELECT COUNT(1)
  FROM sys_dict_type
  WHERE system_flag = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dict_type", "system_flag", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 156, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 157
  _sql = [[
  SELECT dict_type_id, code, name, description, system_flag
  	, status, sort, create_time, create_user, update_time
  	, update_user
  FROM sys_dict_type
  WHERE system_flag = %s
  ORDER BY sort ASC
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dict_type", "system_flag", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 157, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_36_GET_dictType_list_4(_con)
  local _api = "GET /dictType/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 158
  _sql = [[
  SELECT COUNT(1)
  FROM sys_dict_type
  WHERE system_flag = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dict_type", "system_flag", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 158, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 159
  _sql = [[
  SELECT dict_type_id, code, name, description, system_flag
  	, status, sort, create_time, create_user, update_time
  	, update_user
  FROM sys_dict_type
  WHERE system_flag = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_dict_type", "system_flag", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 159, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_37_GET_menu_listTree_1(_con)
  local _api = "GET /menu/listTree"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 160
  _sql = [[
  SELECT menu_id AS "menuId", code AS "code", pcode AS "pcode", pcodes AS "pcodes", name AS "name"
  	, icon AS "icon", url AS "url", sort AS "sort", levels AS "levels", menu_flag AS "menuFlag"
  	, description AS "description", status AS "status", new_page_flag AS "newPageFlag", open_flag AS "openFlag", create_time AS "createTime"
  	, update_time AS "updateTime", create_user AS "createUser", update_user AS "updateUser"
  FROM sys_menu
  WHERE status = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "status", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 160, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_37_GET_menu_listTree_2(_con)
  local _api = "GET /menu/listTree"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 161
  _sql = [[
  SELECT menu_id AS "menuId", code AS "code", pcode AS "pcode", pcodes AS "pcodes", name AS "name"
  	, icon AS "icon", url AS "url", sort AS "sort", levels AS "levels", menu_flag AS "menuFlag"
  	, description AS "description", status AS "status", new_page_flag AS "newPageFlag", open_flag AS "openFlag", create_time AS "createTime"
  	, update_time AS "updateTime", create_user AS "createUser", update_user AS "updateUser"
  FROM sys_menu
  WHERE status = %s
  	AND levels = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "status", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "sys_menu", "levels", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 161, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_37_GET_menu_listTree_3(_con)
  local _api = "GET /menu/listTree"
  local _sql
  local _formatted_sql
  local _params
  local _res

-- line 162 (ignored write)
  -- line 163
  _sql = [[
  SELECT menu_id AS "menuId", code AS "code", pcode AS "pcode", pcodes AS "pcodes", name AS "name"
  	, icon AS "icon", url AS "url", sort AS "sort", levels AS "levels", menu_flag AS "menuFlag"
  	, description AS "description", status AS "status", new_page_flag AS "newPageFlag", open_flag AS "openFlag", create_time AS "createTime"
  	, update_time AS "updateTime", create_user AS "createUser", update_user AS "updateUser"
  FROM sys_menu
  WHERE status = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "status", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 163, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_38_POST_role_roleTreeListByUserId_x_1(_con)
  local _api = "POST /role/roleTreeListByUserId/1188369796975165441"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 164
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 164, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 165
  _sql = [[
  SELECT role_id AS id, pid AS "pId", name AS name
  	, CASE 
  		WHEN pid = 0
  		OR pid IS NULL THEN 'true'
  		ELSE 'false'
  	END AS "open"
  FROM sys_role
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

function API_39_POST_log_detail_x_1(_con)
  local _api = "POST /log/detail/1188369905288871937"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 166
  _sql = [[
  SELECT operation_log_id, log_type, log_name, user_id, class_name
  	, method, create_time, succeed, message
  FROM sys_operation_log
  WHERE operation_log_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_operation_log", "operation_log_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 166, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 167
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 167, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_40_POST_menu_selectMenuTreeList_1(_con)
  local _api = "POST /menu/selectMenuTreeList"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 168
  _sql = [[
  SELECT m1.menu_id AS id
  	, CASE 
  		WHEN m2.menu_id = 0
  		OR m2.menu_id IS NULL THEN 0
  		ELSE m2.menu_id
  	END AS pId, m1.name AS name
  	, CASE 
  		WHEN m2.menu_id = 0
  		OR m2.menu_id IS NULL THEN 'true'
  		ELSE 'false'
  	END AS "open"
  FROM sys_menu m1
  	LEFT JOIN sys_menu m2 ON m1.pcode = m2.code
  ORDER BY m1.menu_id ASC
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

function API_41_POST_mgr_getUserInfo_1(_con)
  local _api = "POST /mgr/getUserInfo"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 169
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 169, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_42_GET_dept_dept_add_1(_con)
  local _api = "GET /dept/dept_add"
  local _sql
  local _formatted_sql
  local _params
  local _res

-- line 170 (ignored write)
end

function API_43_GET_notice_notice_update_x_1(_con)
  local _api = "GET /notice/notice_update/1188376316949430273"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 171
  _sql = [[
  SELECT notice_id, title, content, create_time, create_user
  	, update_time, update_user
  FROM sys_notice
  WHERE notice_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_notice", "notice_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 171, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_44_POST_notice_update_1(_con)
  local _api = "POST /notice/update"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 172
  _sql = [[
  SELECT notice_id, title, content, create_time, create_user
  	, update_time, update_user
  FROM sys_notice
  WHERE notice_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_notice", "notice_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 172, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


-- line 173 (ignored write)
end

function API_45_POST_role_setAuthority_1(_con)
  local _api = "POST /role/setAuthority"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

-- line 174 (ignored write)-- line 175 (ignored write)-- line 176 (ignored write)-- line 177 (ignored write)-- line 178 (ignored write)-- line 179 (ignored write)-- line 180 (ignored write)-- line 181 (ignored write)-- line 182 (ignored write)-- line 183 (ignored write)-- line 184 (ignored write)-- line 185 (ignored write)-- line 186 (ignored write)-- line 187 (ignored write)-- line 188 (ignored write)-- line 189 (ignored write)-- line 190 (ignored write)-- line 191 (ignored write)-- line 192 (ignored write)-- line 193 (ignored write)-- line 194 (ignored write)-- line 195 (ignored write)-- line 196 (ignored write)-- line 197 (ignored write)-- line 198 (ignored write)-- line 199 (ignored write)-- line 200 (ignored write)-- line 201 (ignored write)-- line 202 (ignored write)-- line 203 (ignored write)-- line 204 (ignored write)-- line 205 (ignored write)-- line 206 (ignored write)-- line 207 (ignored write)-- line 208 (ignored write)-- line 209 (ignored write)-- line 210 (ignored write)-- line 211 (ignored write)-- line 212 (ignored write)-- line 213 (ignored write)-- line 214 (ignored write)-- line 215 (ignored write)-- line 216 (ignored write)-- line 217 (ignored write)-- line 218 (ignored write)-- line 219 (ignored write)-- line 220 (ignored write)-- line 221 (ignored write)-- line 222 (ignored write)-- line 223 (ignored write)-- line 224 (ignored write)-- line 225 (ignored write)-- line 226 (ignored write)-- line 227 (ignored write)-- line 228 (ignored write)-- line 229 (ignored write)-- line 230 (ignored write)-- line 231 (ignored write)-- line 232 (ignored write)  -- line 233
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 233, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
  -- line 234
  _sql = [[
  SELECT role_id, pid, name, description, sort
  	, version, create_time, update_time, create_user, update_user
  FROM sys_role
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_role", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 234, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 235
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 235, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 236
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 236, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 237
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 237, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 238
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 238, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 239
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 239, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 240
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 240, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 241
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 241, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 242
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 242, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 243
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 243, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 244
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 244, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 245
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 245, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 246
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 246, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 247
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 247, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 248
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 248, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 249
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 249, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 250
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 250, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 251
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 251, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 252
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 252, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 253
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 253, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 254
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 254, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 255
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 255, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 256
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 256, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 257
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 257, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 258
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 258, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 259
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 259, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 260
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 260, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 261
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 261, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 262
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 262, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 263
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 263, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 264
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 264, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 265
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 265, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 266
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 266, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 267
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 267, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 268
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 268, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 269
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 269, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 270
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 270, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 271
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 271, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 272
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 272, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 273
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 273, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 274
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 274, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 275
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 275, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 276
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 276, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 277
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 277, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 278
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 278, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 279
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 279, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 280
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 280, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 281
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 281, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 282
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 282, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 283
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 283, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 284
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 284, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 285
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 285, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 286
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 286, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 287
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 287, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 288
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 288, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 289
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 289, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 290
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 290, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 291
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 291, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 292
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 292, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_46_POST_notice_add_1(_con)
  local _api = "POST /notice/add"
  local _sql
  local _formatted_sql
  local _params
  local _res

-- line 293 (ignored write)
end

function API_47_GET_menu_menu_edit_1(_con)
  local _api = "GET /menu/menu_edit"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 294
  _sql = [[
  SELECT menu_id, code, pcode, pcodes, name
  	, icon, url, sort, levels, menu_flag
  	, description, status, new_page_flag, open_flag, create_time
  	, update_time, create_user, update_user
  FROM sys_menu
  WHERE menu_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_menu", "menu_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 294, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_48_GET_role_list_1(_con)
  local _api = "GET /role/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 295
  _sql = [[
  SELECT COUNT(1)
  FROM sys_role
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 295, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 296
  _sql = [[
  SELECT role_id AS "roleId", pid AS "pid", name AS "name", description AS "description", sort AS "sort"
  	, version AS "version", create_time AS "createTime", update_time AS "updateTime", create_user AS "createUser", update_user AS "updateUser"
  FROM sys_role
  ORDER BY sort ASC
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 296, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_48_GET_role_list_2(_con)
  local _api = "GET /role/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 297
  _sql = [[
  SELECT COUNT(1)
  FROM sys_role
  WHERE name LIKE CONCAT('%%', '', '%%')
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 297, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 298
  _sql = [[
  SELECT role_id AS "roleId", pid AS "pid", name AS "name", description AS "description", sort AS "sort"
  	, version AS "version", create_time AS "createTime", update_time AS "updateTime", create_user AS "createUser", update_user AS "updateUser"
  FROM sys_role
  WHERE name LIKE CONCAT('%%', '', '%%')
  ORDER BY sort ASC
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 298, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_48_GET_role_list_3(_con)
  local _api = "GET /role/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 299
  _sql = [[
  SELECT COUNT(1)
  FROM sys_role
  WHERE name LIKE CONCAT('%%', '管理员', '%%')
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 299, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 300
  _sql = [[
  SELECT role_id AS "roleId", pid AS "pid", name AS "name", description AS "description", sort AS "sort"
  	, version AS "version", create_time AS "createTime", update_time AS "updateTime", create_user AS "createUser", update_user AS "updateUser"
  FROM sys_role
  WHERE name LIKE CONCAT('%%', '管理员', '%%')
  ORDER BY sort ASC
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 300, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_49_POST_mgr_setRole_1(_con)
  local _api = "POST /mgr/setRole"
  local _sql
  local _formatted_sql
  local _params
  local _res

-- line 301 (ignored write)
  -- line 302
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 302, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 303
  _sql = [[
  SELECT role_id, pid, name, description, sort
  	, version, create_time, update_time, create_user, update_user
  FROM sys_role
  WHERE role_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_role", "role_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 303, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_50_GET_system_previewAvatar_1(_con)
  local _api = "GET /system/previewAvatar"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 304
  _sql = [[
  SELECT user_id, avatar, account, password, salt
  	, name, birthday, sex, email, phone
  	, role_id, dept_id, status, create_time, create_user
  	, update_time, update_user, version
  FROM sys_user
  WHERE user_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_user", "user_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 304, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 305
  _sql = [[
  SELECT file_id, file_data, create_time, update_time, create_user
  	, update_user
  FROM sys_file_info
  WHERE file_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "sys_file_info", "file_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 305, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

