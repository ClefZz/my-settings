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

function API_1_POST_user_profile_update_1(_con)
  local _api = "POST /user/profile/update"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

-- line 1 (ignored write)  _commit_f(_con, false)
  
end

function API_2_GET_jobLog_1(_con)
  local _api = "GET /jobLog"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 2
  _sql = [[
  SELECT COUNT(1)
  FROM t_job_log
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 2, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 3
  _sql = [[
  SELECT LOG_ID, job_id, bean_name, method_name, params
  	, status, error, times, create_time
  FROM t_job_log
  ORDER BY create_time DESC
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 3, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_3_POST_user_password_reset_Jana_1(_con)
  local _api = "POST /user/password/reset/Jana"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

-- line 4 (ignored write)  _commit_f(_con, false)
  
end

function API_4_POST_job_1(_con)
  local _api = "POST /job"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

-- line 5 (ignored write)  -- line 6
  _sql = [[
  SELECT SCHED_NAME, LOCK_NAME
  FROM QRTZ_LOCKS
  WHERE SCHED_NAME = %s
  	AND LOCK_NAME = %s
  FOR UPDATE
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_locks", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_locks", "lock_name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 6, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 7
  _sql = [[
  SELECT JOB_NAME
  FROM QRTZ_JOB_DETAILS
  WHERE SCHED_NAME = %s
  	AND JOB_NAME = %s
  	AND JOB_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_job_details", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_job_details", "job_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_job_details", "job_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 7, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 8 (ignored write)  -- line 9
  _sql = [[
  SELECT TRIGGER_NAME
  FROM QRTZ_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 9, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 10
  _sql = [[
  SELECT TRIGGER_GROUP
  FROM QRTZ_PAUSED_TRIGGER_GRPS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_paused_trigger_grps", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_paused_trigger_grps", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 10, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 11
  _sql = [[
  SELECT TRIGGER_GROUP
  FROM QRTZ_PAUSED_TRIGGER_GRPS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_paused_trigger_grps", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_paused_trigger_grps", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 11, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 12 (ignored write)-- line 13 (ignored write)  -- line 14
  _sql = [[
  SELECT SCHED_NAME, LOCK_NAME
  FROM QRTZ_LOCKS
  WHERE SCHED_NAME = %s
  	AND LOCK_NAME = %s
  FOR UPDATE
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_locks", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_locks", "lock_name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 14, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 15
  _sql = [[
  SELECT TRIGGER_NAME, TRIGGER_GROUP
  FROM QRTZ_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND JOB_NAME = %s
  	AND JOB_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "job_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "job_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 15, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 16
  _sql = [[
  SELECT SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, JOB_NAME, JOB_GROUP
  	, DESCRIPTION, NEXT_FIRE_TIME, PREV_FIRE_TIME, PRIORITY, TRIGGER_STATE
  	, TRIGGER_TYPE, START_TIME, END_TIME, CALENDAR_NAME, MISFIRE_INSTR
  	, JOB_DATA
  FROM QRTZ_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 16, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 17
  _sql = [[
  SELECT SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, CRON_EXPRESSION, TIME_ZONE_ID
  FROM QRTZ_CRON_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_cron_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_cron_triggers", "trigger_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_cron_triggers", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 17, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 18
  _sql = [[
  SELECT TRIGGER_STATE
  FROM QRTZ_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 18, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 19 (ignored write)  _commit_f(_con, true)
  
end

function API_5_GET_dept_delete_x_1(_con)
  local _api = "GET /dept/delete/11"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

-- line 20 (ignored write)  -- line 21
  _sql = [[
  SELECT DEPT_ID, PARENT_ID, DEPT_NAME, ORDER_NUM, CREATE_TIME
  	, MODIFY_TIME
  FROM t_dept
  WHERE PARENT_ID IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_dept", "PARENT_ID", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 21, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 22 (ignored write)  -- line 23
  _sql = [[
  SELECT DEPT_ID, PARENT_ID, DEPT_NAME, ORDER_NUM, CREATE_TIME
  	, MODIFY_TIME
  FROM t_dept
  WHERE PARENT_ID IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_dept", "PARENT_ID", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 23, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_6_GET_role_delete_x_1(_con)
  local _api = "GET /role/delete/81"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

-- line 24 (ignored write)-- line 25 (ignored write)-- line 26 (ignored write)  _commit_f(_con, true)
  
end

function API_7_GET_role_1(_con)
  local _api = "GET /role"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 27
  _sql = [[
  SELECT ROLE_ID, ROLE_NAME, REMARK, CREATE_TIME, MODIFY_TIME
  FROM t_role
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

function API_8_GET_log_list_1(_con)
  local _api = "GET /log/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 28
  _sql = [[
  SELECT COUNT(1)
  FROM t_log
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 28, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 29
  _sql = [[
  SELECT ID, USERNAME, OPERATION, TIME, METHOD
  	, PARAMS, IP, CREATE_TIME, LOCATION
  FROM t_log
  ORDER BY create_time DESC
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 29, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_8_GET_log_list_2(_con)
  local _api = "GET /log/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 30
  _sql = [[
  SELECT COUNT(1)
  FROM t_log
  WHERE CREATE_TIME >= %s
  	AND CREATE_TIME <= %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_log", "CREATE_TIME", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "t_log", "CREATE_TIME", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 30, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 31
  _sql = [[
  SELECT ID, USERNAME, OPERATION, TIME, METHOD
  	, PARAMS, IP, CREATE_TIME, LOCATION
  FROM t_log
  WHERE CREATE_TIME >= %s
  	AND CREATE_TIME <= %s
  ORDER BY create_time DESC
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_log", "CREATE_TIME", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "t_log", "CREATE_TIME", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 31, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_8_GET_log_list_3(_con)
  local _api = "GET /log/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 32
  _sql = [[
  SELECT COUNT(1)
  FROM t_log
  WHERE CREATE_TIME >= %s
  	AND CREATE_TIME <= %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_log", "CREATE_TIME", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "t_log", "CREATE_TIME", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 32, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_9_POST_eximport_import_1(_con)
  local _api = "POST /eximport/import"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

-- line 33 (ignored write)-- line 34 (ignored write)-- line 35 (ignored write)-- line 36 (ignored write)-- line 37 (ignored write)-- line 38 (ignored write)-- line 39 (ignored write)-- line 40 (ignored write)-- line 41 (ignored write)-- line 42 (ignored write)  _commit_f(_con, true)
  
end

function API_10_GET_dept_tree_1(_con)
  local _api = "GET /dept/tree"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 43
  _sql = [[
  SELECT DEPT_ID, PARENT_ID, DEPT_NAME, ORDER_NUM, CREATE_TIME
  	, MODIFY_TIME
  FROM t_dept
  ORDER BY ORDER_NUM ASC
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 43, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_10_GET_dept_tree_2(_con)
  local _api = "GET /dept/tree"
  local _sql
  local _formatted_sql
  local _params
  local _res

-- line 44 (ignored write)
  -- line 45
  _sql = [[
  SELECT DEPT_ID, PARENT_ID, DEPT_NAME, ORDER_NUM, CREATE_TIME
  	, MODIFY_TIME
  FROM t_dept
  ORDER BY ORDER_NUM ASC
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 45, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_10_GET_dept_tree_3(_con)
  local _api = "GET /dept/tree"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 46
  _sql = [[
  SELECT DEPT_ID, PARENT_ID, DEPT_NAME, ORDER_NUM, CREATE_TIME
  	, MODIFY_TIME
  FROM t_dept
  WHERE DEPT_NAME = %s
  ORDER BY ORDER_NUM ASC
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_dept", "DEPT_NAME", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 46, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_11_GET_loginLog_list_1(_con)
  local _api = "GET /loginLog/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 47
  _sql = [[
  SELECT COUNT(1)
  FROM t_login_log
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 47, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 48
  _sql = [[
  SELECT ID, USERNAME, LOGIN_TIME, LOCATION, IP
  	, `SYSTEM`, BROWSER
  FROM t_login_log
  ORDER BY login_time DESC
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 48, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_11_GET_loginLog_list_2(_con)
  local _api = "GET /loginLog/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 49
  _sql = [[
  SELECT COUNT(1)
  FROM t_login_log
  WHERE LOGIN_TIME >= %s
  	AND LOGIN_TIME <= %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_login_log", "LOGIN_TIME", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "t_login_log", "LOGIN_TIME", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 49, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 50
  _sql = [[
  SELECT ID, USERNAME, LOGIN_TIME, LOCATION, IP
  	, `SYSTEM`, BROWSER
  FROM t_login_log
  WHERE LOGIN_TIME >= %s
  	AND LOGIN_TIME <= %s
  ORDER BY login_time DESC
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_login_log", "LOGIN_TIME", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "t_login_log", "LOGIN_TIME", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 50, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_12_POST_login_1(_con)
  local _api = "POST /login"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 51
  _sql = [[
  SELECT u.user_id AS userId, u.username, u.email, u.mobile, u.password
  	, u.status, u.create_time AS createTime, u.ssex AS sex, u.dept_id AS deptId, u.last_login_time AS lastLoginTime
  	, u.modify_time AS modifyTime, u.description, u.avatar, u.theme, u.is_tab AS isTab
  	, d.dept_name AS deptName, GROUP_CONCAT(r.role_id) AS roleId, GROUP_CONCAT(r.ROLE_NAME) AS roleName
  FROM t_user u
  	LEFT JOIN t_dept d ON u.dept_id = d.dept_id
  	LEFT JOIN t_user_role ur ON u.user_id = ur.user_id
  	LEFT JOIN t_role r ON r.role_id = ur.role_id
  WHERE u.username = %s
  GROUP BY u.username, u.user_id, u.email, u.mobile, u.password, u.status, u.create_time, u.ssex, u.dept_id, u.last_login_time, u.modify_time, u.description, u.avatar, u.theme, u.is_tab
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_user", "USERNAME", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 51, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  _begin_f(_con, false)

-- line 52 (ignored write)  _commit_f(_con, false)
  
end

function API_13_GET_febs_views_system_user_update_Georgie_1(_con)
  local _api = "GET /febs/views/system/user/update/Georgie"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 53
  _sql = [[
  SELECT u.user_id AS userId, u.username, u.email, u.mobile, u.password
  	, u.status, u.create_time AS createTime, u.ssex AS sex, u.dept_id AS deptId, u.last_login_time AS lastLoginTime
  	, u.modify_time AS modifyTime, u.description, u.avatar, u.theme, u.is_tab AS isTab
  	, d.dept_name AS deptName, GROUP_CONCAT(r.role_id) AS roleId, GROUP_CONCAT(r.ROLE_NAME) AS roleName
  FROM t_user u
  	LEFT JOIN t_dept d ON u.dept_id = d.dept_id
  	LEFT JOIN t_user_role ur ON u.user_id = ur.user_id
  	LEFT JOIN t_role r ON r.role_id = ur.role_id
  WHERE u.username = %s
  GROUP BY u.username, u.user_id, u.email, u.mobile, u.password, u.status, u.create_time, u.ssex, u.dept_id, u.last_login_time, u.modify_time, u.description, u.avatar, u.theme, u.is_tab
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_user", "USERNAME", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 53, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_14_GET_loginLog_excel_1(_con)
  local _api = "GET /loginLog/excel"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 54
  _sql = [[
  SELECT COUNT(1)
  FROM t_login_log
  WHERE LOGIN_TIME >= %s
  	AND LOGIN_TIME <= %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_login_log", "LOGIN_TIME", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "t_login_log", "LOGIN_TIME", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 54, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 55
  _sql = [[
  SELECT ID, USERNAME, LOGIN_TIME, LOCATION, IP
  	, `SYSTEM`, BROWSER
  FROM t_login_log
  WHERE LOGIN_TIME >= %s
  	AND LOGIN_TIME <= %s
  ORDER BY login_time DESC
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_login_log", "LOGIN_TIME", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "t_login_log", "LOGIN_TIME", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 55, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_15_GET_eximport_excel_1(_con)
  local _api = "GET /eximport/excel"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 56
  _sql = [[
  SELECT COUNT(1)
  FROM t_eximport
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 56, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 57
  _sql = [[
  SELECT field1, field2, field3, create_time
  FROM t_eximport
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 57, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_16_GET_febs_views_job_job_update_x_1(_con)
  local _api = "GET /febs/views/job/job/update/12"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 58
  _sql = [[
  SELECT JOB_ID, bean_name, method_name, params, cron_expression
  	, status, remark, create_time
  FROM t_job
  WHERE JOB_ID = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_job", "JOB_ID", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 58, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_17_GET_febs_views_monitor_log_1(_con)
  local _api = "GET /febs/views//monitor/log"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 59
  _sql = [[
  SELECT r.`ROLE_ID`, r.`ROLE_NAME`, r.`REMARK`, r.`CREATE_TIME`, r.`MODIFY_TIME`
  FROM t_role r
  	LEFT JOIN t_user_role ur ON r.role_id = ur.role_id
  	LEFT JOIN t_user u ON u.user_id = ur.user_id
  WHERE u.username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_user", "USERNAME", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 59, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 60
  _sql = [[
  SELECT m.perms
  FROM t_role r
  	LEFT JOIN t_user_role ur ON r.role_id = ur.role_id
  	LEFT JOIN t_user u ON u.user_id = ur.user_id
  	LEFT JOIN t_role_menu rm ON rm.role_id = r.role_id
  	LEFT JOIN t_menu m ON m.menu_id = rm.menu_id
  WHERE u.username = %s
  	AND m.perms IS NOT NULL
  	AND m.perms <> %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_user", "USERNAME", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "t_menu", "PERMS", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 60, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_18_POST_generatorConfig_update_1(_con)
  local _api = "POST /generatorConfig/update"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 61
  _sql = [[
  SELECT ID, author, base_package, entity_package, mapper_package
  	, mapper_xml_package, service_package, service_impl_package, controller_package, is_trim
  	, trim_value
  FROM t_generator_config
  WHERE ID = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_generator_config", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 61, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 62 (ignored write)  _commit_f(_con, true)
  
end

function API_19_GET_job_1(_con)
  local _api = "GET /job"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 63
  _sql = [[
  SELECT COUNT(1)
  FROM t_job
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
  SELECT JOB_ID, bean_name, method_name, params, cron_expression
  	, status, remark, create_time
  FROM t_job
  ORDER BY create_time DESC
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 64, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_20_POST_user_update_1(_con)
  local _api = "POST /user/update"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

-- line 65 (ignored write)-- line 66 (ignored write)-- line 67 (ignored write)-- line 68 (ignored write)  _commit_f(_con, true)
  
end

function API_20_POST_user_update_2(_con)
  local _api = "POST /user/update"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

-- line 69 (ignored write)-- line 70 (ignored write)-- line 71 (ignored write)  _commit_f(_con, true)
  
end

function API_21_POST_user_theme_update_1(_con)
  local _api = "POST /user/theme/update"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

-- line 72 (ignored write)  _commit_f(_con, false)
  
end

function API_22_GET_febs_views_system_user_detail_Jana_1(_con)
  local _api = "GET /febs/views/system/user/detail/Jana"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 73
  _sql = [[
  SELECT u.user_id AS userId, u.username, u.email, u.mobile, u.password
  	, u.status, u.create_time AS createTime, u.ssex AS sex, u.dept_id AS deptId, u.last_login_time AS lastLoginTime
  	, u.modify_time AS modifyTime, u.description, u.avatar, u.theme, u.is_tab AS isTab
  	, d.dept_name AS deptName, GROUP_CONCAT(r.role_id) AS roleId, GROUP_CONCAT(r.ROLE_NAME) AS roleName
  FROM t_user u
  	LEFT JOIN t_dept d ON u.dept_id = d.dept_id
  	LEFT JOIN t_user_role ur ON u.user_id = ur.user_id
  	LEFT JOIN t_role r ON r.role_id = ur.role_id
  WHERE u.username = %s
  GROUP BY u.username, u.user_id, u.email, u.mobile, u.password, u.status, u.create_time, u.ssex, u.dept_id, u.last_login_time, u.modify_time, u.description, u.avatar, u.theme, u.is_tab
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_user", "USERNAME", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 73, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_23_GET_loginLog_delete_x_1(_con)
  local _api = "GET /loginLog/delete/69"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

-- line 74 (ignored write)  _commit_f(_con, false)
  
end

function API_24_GET_user_excel_1(_con)
  local _api = "GET /user/excel"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 75
  _sql = [[
  SELECT COUNT(1)
  FROM (
  	SELECT u.user_id AS userId, u.username, u.email, u.mobile, u.status
  		, u.create_time AS createTime, u.ssex AS sex, u.dept_id AS deptId, u.last_login_time AS lastLoginTime, u.modify_time AS modifyTime
  		, u.description, u.avatar, d.dept_name AS deptName, GROUP_CONCAT(r.role_id) AS roleId
  		, GROUP_CONCAT(r.ROLE_NAME) AS roleName
  	FROM t_user u
  		LEFT JOIN t_dept d ON u.dept_id = d.dept_id
  		LEFT JOIN t_user_role ur ON u.user_id = ur.user_id
  		LEFT JOIN t_role r ON r.role_id = ur.role_id
  	WHERE 1 = 1
  	GROUP BY u.username, u.user_id, u.email, u.mobile, u.status, u.create_time, u.ssex, u.dept_id, u.last_login_time, u.modify_time, u.description, u.avatar
  ) TOTAL
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
  SELECT u.user_id AS userId, u.username, u.email, u.mobile, u.status
  	, u.create_time AS createTime, u.ssex AS sex, u.dept_id AS deptId, u.last_login_time AS lastLoginTime, u.modify_time AS modifyTime
  	, u.description, u.avatar, d.dept_name AS deptName, GROUP_CONCAT(r.role_id) AS roleId
  	, GROUP_CONCAT(r.ROLE_NAME) AS roleName
  FROM t_user u
  	LEFT JOIN t_dept d ON u.dept_id = d.dept_id
  	LEFT JOIN t_user_role ur ON u.user_id = ur.user_id
  	LEFT JOIN t_role r ON r.role_id = ur.role_id
  WHERE 1 = 1
  GROUP BY u.username, u.user_id, u.email, u.mobile, u.status, u.create_time, u.ssex, u.dept_id, u.last_login_time, u.modify_time, u.description, u.avatar
  ORDER BY userId ASC
  LIMIT %s, 5
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 76, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_25_GET_index_1(_con)
  local _api = "GET /index"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 77
  _sql = [[
  SELECT r.`ROLE_ID`, r.`ROLE_NAME`, r.`REMARK`, r.`CREATE_TIME`, r.`MODIFY_TIME`
  FROM t_role r
  	LEFT JOIN t_user_role ur ON r.role_id = ur.role_id
  	LEFT JOIN t_user u ON u.user_id = ur.user_id
  WHERE u.username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_user", "USERNAME", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 77, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 78
  _sql = [[
  SELECT m.perms
  FROM t_role r
  	LEFT JOIN t_user_role ur ON r.role_id = ur.role_id
  	LEFT JOIN t_user u ON u.user_id = ur.user_id
  	LEFT JOIN t_role_menu rm ON rm.role_id = r.role_id
  	LEFT JOIN t_menu m ON m.menu_id = rm.menu_id
  WHERE u.username = %s
  	AND m.perms IS NOT NULL
  	AND m.perms <> %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_user", "USERNAME", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "t_menu", "PERMS", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 78, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 79
  _sql = [[
  SELECT u.user_id AS userId, u.username, u.email, u.mobile, u.password
  	, u.status, u.create_time AS createTime, u.ssex AS sex, u.dept_id AS deptId, u.last_login_time AS lastLoginTime
  	, u.modify_time AS modifyTime, u.description, u.avatar, u.theme, u.is_tab AS isTab
  	, d.dept_name AS deptName, GROUP_CONCAT(r.role_id) AS roleId, GROUP_CONCAT(r.ROLE_NAME) AS roleName
  FROM t_user u
  	LEFT JOIN t_dept d ON u.dept_id = d.dept_id
  	LEFT JOIN t_user_role ur ON u.user_id = ur.user_id
  	LEFT JOIN t_role r ON r.role_id = ur.role_id
  WHERE u.username = %s
  GROUP BY u.username, u.user_id, u.email, u.mobile, u.password, u.status, u.create_time, u.ssex, u.dept_id, u.last_login_time, u.modify_time, u.description, u.avatar, u.theme, u.is_tab
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_user", "USERNAME", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 79, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_26_GET_job_excel_1(_con)
  local _api = "GET /job/excel"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 80
  _sql = [[
  SELECT COUNT(1)
  FROM t_job
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 80, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 81
  _sql = [[
  SELECT JOB_ID, bean_name, method_name, params, cron_expression
  	, status, remark, create_time
  FROM t_job
  ORDER BY create_time DESC
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 81, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_27_GET_menu_excel_1(_con)
  local _api = "GET /menu/excel"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 82
  _sql = [[
  SELECT MENU_ID, PARENT_ID, MENU_NAME, URL, PERMS
  	, ICON, TYPE, ORDER_NUM, CREATE_TIME, MODIFY_TIME
  FROM t_menu
  ORDER BY MENU_ID ASC, ORDER_NUM ASC
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 82, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_28_POST_dept_1(_con)
  local _api = "POST /dept"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

-- line 83 (ignored write)  _commit_f(_con, false)
  
end

function API_29_GET_menu_delete_x_1(_con)
  local _api = "GET /menu/delete/178"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

-- line 84 (ignored write)  -- line 85
  _sql = [[
  SELECT MENU_ID, PARENT_ID, MENU_NAME, URL, PERMS
  	, ICON, TYPE, ORDER_NUM, CREATE_TIME, MODIFY_TIME
  FROM t_menu
  WHERE PARENT_ID IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_menu", "PARENT_ID", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 85, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 86 (ignored write)  -- line 87
  _sql = [[
  SELECT MENU_ID, PARENT_ID, MENU_NAME, URL, PERMS
  	, ICON, TYPE, ORDER_NUM, CREATE_TIME, MODIFY_TIME
  FROM t_menu
  WHERE PARENT_ID IN (%s)
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_menu", "PARENT_ID", {"select", "where", "in_list"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 87, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_30_POST_menu_1(_con)
  local _api = "POST /menu"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

-- line 88 (ignored write)  _commit_f(_con, false)
  
end

function API_30_POST_menu_2(_con)
  local _api = "POST /menu"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

-- line 89 (ignored write)  _commit_f(_con, false)
  
end

function API_31_GET_febs_views_job_job_update_x_1(_con)
  local _api = "GET /febs/views/job/job/update/1"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 90
  _sql = [[
  SELECT JOB_ID, bean_name, method_name, params, cron_expression
  	, status, remark, create_time
  FROM t_job
  WHERE JOB_ID = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_job", "JOB_ID", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 90, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_32_GET_user_check_Jana_1(_con)
  local _api = "GET /user/check/Jana"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 91
  _sql = [[
  SELECT u.user_id AS userId, u.username, u.email, u.mobile, u.password
  	, u.status, u.create_time AS createTime, u.ssex AS sex, u.dept_id AS deptId, u.last_login_time AS lastLoginTime
  	, u.modify_time AS modifyTime, u.description, u.avatar, u.theme, u.is_tab AS isTab
  	, d.dept_name AS deptName, GROUP_CONCAT(r.role_id) AS roleId, GROUP_CONCAT(r.ROLE_NAME) AS roleName
  FROM t_user u
  	LEFT JOIN t_dept d ON u.dept_id = d.dept_id
  	LEFT JOIN t_user_role ur ON u.user_id = ur.user_id
  	LEFT JOIN t_role r ON r.role_id = ur.role_id
  WHERE u.username = %s
  GROUP BY u.username, u.user_id, u.email, u.mobile, u.password, u.status, u.create_time, u.ssex, u.dept_id, u.last_login_time, u.modify_time, u.description, u.avatar, u.theme, u.is_tab
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_user", "USERNAME", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 91, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_33_GET_user_check_Georgie_1(_con)
  local _api = "GET /user/check/Georgie"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 92
  _sql = [[
  SELECT u.user_id AS userId, u.username, u.email, u.mobile, u.password
  	, u.status, u.create_time AS createTime, u.ssex AS sex, u.dept_id AS deptId, u.last_login_time AS lastLoginTime
  	, u.modify_time AS modifyTime, u.description, u.avatar, u.theme, u.is_tab AS isTab
  	, d.dept_name AS deptName, GROUP_CONCAT(r.role_id) AS roleId, GROUP_CONCAT(r.ROLE_NAME) AS roleName
  FROM t_user u
  	LEFT JOIN t_dept d ON u.dept_id = d.dept_id
  	LEFT JOIN t_user_role ur ON u.user_id = ur.user_id
  	LEFT JOIN t_role r ON r.role_id = ur.role_id
  WHERE u.username = %s
  GROUP BY u.username, u.user_id, u.email, u.mobile, u.password, u.status, u.create_time, u.ssex, u.dept_id, u.last_login_time, u.modify_time, u.description, u.avatar, u.theme, u.is_tab
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_user", "USERNAME", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 92, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_34_POST_menu_update_1(_con)
  local _api = "POST /menu/update"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

-- line 93 (ignored write)  _commit_f(_con, false)
  
end

function API_35_GET_user_check_Nova_1(_con)
  local _api = "GET /user/check/Nova"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 94
  _sql = [[
  SELECT u.user_id AS userId, u.username, u.email, u.mobile, u.password
  	, u.status, u.create_time AS createTime, u.ssex AS sex, u.dept_id AS deptId, u.last_login_time AS lastLoginTime
  	, u.modify_time AS modifyTime, u.description, u.avatar, u.theme, u.is_tab AS isTab
  	, d.dept_name AS deptName, GROUP_CONCAT(r.role_id) AS roleId, GROUP_CONCAT(r.ROLE_NAME) AS roleName
  FROM t_user u
  	LEFT JOIN t_dept d ON u.dept_id = d.dept_id
  	LEFT JOIN t_user_role ur ON u.user_id = ur.user_id
  	LEFT JOIN t_role r ON r.role_id = ur.role_id
  WHERE u.username = %s
  GROUP BY u.username, u.user_id, u.email, u.mobile, u.password, u.status, u.create_time, u.ssex, u.dept_id, u.last_login_time, u.modify_time, u.description, u.avatar, u.theme, u.is_tab
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_user", "USERNAME", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 94, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_36_GET_job_delete_x_1(_con)
  local _api = "GET /job/delete/12"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 95
  _sql = [[
  SELECT TRIGGER_NAME, TRIGGER_GROUP
  FROM QRTZ_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND JOB_NAME = %s
  	AND JOB_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "job_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "job_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 95, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 96
  _sql = [[
  SELECT SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, JOB_NAME, JOB_GROUP
  	, DESCRIPTION, NEXT_FIRE_TIME, PREV_FIRE_TIME, PRIORITY, TRIGGER_STATE
  	, TRIGGER_TYPE, START_TIME, END_TIME, CALENDAR_NAME, MISFIRE_INSTR
  	, JOB_DATA
  FROM QRTZ_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 96, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 97
  _sql = [[
  SELECT SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, REPEAT_COUNT, REPEAT_INTERVAL
  	, TIMES_TRIGGERED
  FROM QRTZ_SIMPLE_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_simple_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_simple_triggers", "trigger_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_simple_triggers", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 97, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 98
  _sql = [[
  SELECT SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, JOB_NAME, JOB_GROUP
  	, DESCRIPTION, NEXT_FIRE_TIME, PREV_FIRE_TIME, PRIORITY, TRIGGER_STATE
  	, TRIGGER_TYPE, START_TIME, END_TIME, CALENDAR_NAME, MISFIRE_INSTR
  	, JOB_DATA
  FROM QRTZ_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 98, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 99
  _sql = [[
  SELECT SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, CRON_EXPRESSION, TIME_ZONE_ID
  FROM QRTZ_CRON_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_cron_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_cron_triggers", "trigger_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_cron_triggers", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 99, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 100
  _sql = [[
  SELECT SCHED_NAME, LOCK_NAME
  FROM QRTZ_LOCKS
  WHERE SCHED_NAME = %s
  	AND LOCK_NAME = %s
  FOR UPDATE
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_locks", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_locks", "lock_name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 100, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 101
  _sql = [[
  SELECT J.JOB_NAME, J.JOB_GROUP, J.IS_DURABLE, J.JOB_CLASS_NAME, J.REQUESTS_RECOVERY
  FROM QRTZ_TRIGGERS T, QRTZ_JOB_DETAILS J
  WHERE T.SCHED_NAME = %s
  	AND J.SCHED_NAME = %s
  	AND T.TRIGGER_NAME = %s
  	AND T.TRIGGER_GROUP = %s
  	AND T.JOB_NAME = J.JOB_NAME
  	AND T.JOB_GROUP = J.JOB_GROUP
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_job_details", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 101, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 102 (ignored write)-- line 103 (ignored write)  -- line 104
  _sql = [[
  SELECT COUNT(TRIGGER_NAME)
  FROM QRTZ_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND JOB_NAME = %s
  	AND JOB_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "job_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "job_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 104, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 105
  _sql = [[
  SELECT SCHED_NAME, LOCK_NAME
  FROM QRTZ_LOCKS
  WHERE SCHED_NAME = %s
  	AND LOCK_NAME = %s
  FOR UPDATE
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_locks", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_locks", "lock_name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 105, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 106
  _sql = [[
  SELECT J.JOB_NAME, J.JOB_GROUP, J.IS_DURABLE, J.JOB_CLASS_NAME, J.REQUESTS_RECOVERY
  FROM QRTZ_TRIGGERS T, QRTZ_JOB_DETAILS J
  WHERE T.SCHED_NAME = %s
  	AND J.SCHED_NAME = %s
  	AND T.TRIGGER_NAME = %s
  	AND T.TRIGGER_GROUP = %s
  	AND T.JOB_NAME = J.JOB_NAME
  	AND T.JOB_GROUP = J.JOB_GROUP
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_job_details", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 106, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 107 (ignored write)-- line 108 (ignored write)-- line 109 (ignored write)  -- line 110
  _sql = [[
  SELECT COUNT(TRIGGER_NAME)
  FROM QRTZ_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND JOB_NAME = %s
  	AND JOB_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "job_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "job_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 110, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 111 (ignored write)  -- line 112
  _sql = [[
  SELECT SCHED_NAME, LOCK_NAME
  FROM QRTZ_LOCKS
  WHERE SCHED_NAME = %s
  	AND LOCK_NAME = %s
  FOR UPDATE
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_locks", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_locks", "lock_name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 112, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 113
  _sql = [[
  SELECT TRIGGER_NAME, TRIGGER_GROUP
  FROM QRTZ_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND JOB_NAME = %s
  	AND JOB_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "job_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "job_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 113, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 114 (ignored write)-- line 115 (ignored write)  _commit_f(_con, true)
  
end

function API_37_GET_dept_excel_1(_con)
  local _api = "GET /dept/excel"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 116
  _sql = [[
  SELECT DEPT_ID, PARENT_ID, DEPT_NAME, ORDER_NUM, CREATE_TIME
  	, MODIFY_TIME
  FROM t_dept
  ORDER BY order_num ASC
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 116, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_38_POST_role_1(_con)
  local _api = "POST /role"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

-- line 117 (ignored write)-- line 118 (ignored write)-- line 119 (ignored write)-- line 120 (ignored write)-- line 121 (ignored write)-- line 122 (ignored write)  _commit_f(_con, true)
  
end

function API_39_GET_menu_tree_1(_con)
  local _api = "GET /menu/tree"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 123
  _sql = [[
  SELECT MENU_ID, PARENT_ID, MENU_NAME, URL, PERMS
  	, ICON, TYPE, ORDER_NUM, CREATE_TIME, MODIFY_TIME
  FROM t_menu
  ORDER BY ORDER_NUM ASC
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 123, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_40_GET_jobLog_delete_x_1(_con)
  local _api = "GET /jobLog/delete/2555"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

-- line 124 (ignored write)  _commit_f(_con, false)
  
end

function API_41_GET_log_delete_x_1(_con)
  local _api = "GET /log/delete/1011"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

-- line 125 (ignored write)  _commit_f(_con, false)
  
end

function API_42_GET_job_pause_x_1(_con)
  local _api = "GET /job/pause/12"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 126
  _sql = [[
  SELECT SCHED_NAME, LOCK_NAME
  FROM QRTZ_LOCKS
  WHERE SCHED_NAME = %s
  	AND LOCK_NAME = %s
  FOR UPDATE
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_locks", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_locks", "lock_name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 126, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 127
  _sql = [[
  SELECT TRIGGER_NAME, TRIGGER_GROUP
  FROM QRTZ_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND JOB_NAME = %s
  	AND JOB_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "job_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "job_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 127, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 128
  _sql = [[
  SELECT SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, JOB_NAME, JOB_GROUP
  	, DESCRIPTION, NEXT_FIRE_TIME, PREV_FIRE_TIME, PRIORITY, TRIGGER_STATE
  	, TRIGGER_TYPE, START_TIME, END_TIME, CALENDAR_NAME, MISFIRE_INSTR
  	, JOB_DATA
  FROM QRTZ_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 128, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 129
  _sql = [[
  SELECT SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, CRON_EXPRESSION, TIME_ZONE_ID
  FROM QRTZ_CRON_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_cron_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_cron_triggers", "trigger_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_cron_triggers", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 129, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 130
  _sql = [[
  SELECT TRIGGER_STATE
  FROM QRTZ_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 130, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 131 (ignored write)  _commit_f(_con, true)
  
end

function API_43_GET_job_run_x_1(_con)
  local _api = "GET /job/run/12"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 132
  _sql = [[
  SELECT JOB_ID, bean_name, method_name, params, cron_expression
  	, status, remark, create_time
  FROM t_job
  WHERE JOB_ID = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_job", "JOB_ID", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 132, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 133
  _sql = [[
  SELECT SCHED_NAME, LOCK_NAME
  FROM QRTZ_LOCKS
  WHERE SCHED_NAME = %s
  	AND LOCK_NAME = %s
  FOR UPDATE
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_locks", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_locks", "lock_name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 133, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 134
  _sql = [[
  SELECT TRIGGER_NAME
  FROM QRTZ_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 134, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 135
  _sql = [[
  SELECT TRIGGER_GROUP
  FROM QRTZ_PAUSED_TRIGGER_GRPS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_paused_trigger_grps", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_paused_trigger_grps", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 135, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 136
  _sql = [[
  SELECT TRIGGER_GROUP
  FROM QRTZ_PAUSED_TRIGGER_GRPS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_paused_trigger_grps", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_paused_trigger_grps", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 136, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 137
  _sql = [[
  SELECT SCHED_NAME, JOB_NAME, JOB_GROUP, DESCRIPTION, JOB_CLASS_NAME
  	, IS_DURABLE, IS_NONCONCURRENT, IS_UPDATE_DATA, REQUESTS_RECOVERY, JOB_DATA
  FROM QRTZ_JOB_DETAILS
  WHERE SCHED_NAME = %s
  	AND JOB_NAME = %s
  	AND JOB_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_job_details", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_job_details", "job_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_job_details", "job_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 137, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 138 (ignored write)-- line 139 (ignored write)  _commit_f(_con, true)
  
end

function API_44_GET_jobLog_delete_x_1(_con)
  local _api = "GET /jobLog/delete/2561"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

-- line 140 (ignored write)  _commit_f(_con, false)
  
end

function API_45_GET_user_delete_x_1(_con)
  local _api = "GET /user/delete/8"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

-- line 141 (ignored write)-- line 142 (ignored write)  _commit_f(_con, true)
  
end

function API_46_POST_job_update_1(_con)
  local _api = "POST /job/update"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 143
  _sql = [[
  SELECT SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, JOB_NAME, JOB_GROUP
  	, DESCRIPTION, NEXT_FIRE_TIME, PREV_FIRE_TIME, PRIORITY, TRIGGER_STATE
  	, TRIGGER_TYPE, START_TIME, END_TIME, CALENDAR_NAME, MISFIRE_INSTR
  	, JOB_DATA
  FROM QRTZ_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 143, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 144
  _sql = [[
  SELECT SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, CRON_EXPRESSION, TIME_ZONE_ID
  FROM QRTZ_CRON_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_cron_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_cron_triggers", "trigger_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_cron_triggers", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 144, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 145
  _sql = [[
  SELECT SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, JOB_NAME, JOB_GROUP
  	, DESCRIPTION, NEXT_FIRE_TIME, PREV_FIRE_TIME, PRIORITY, TRIGGER_STATE
  	, TRIGGER_TYPE, START_TIME, END_TIME, CALENDAR_NAME, MISFIRE_INSTR
  	, JOB_DATA
  FROM QRTZ_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 145, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 146
  _sql = [[
  SELECT SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, CRON_EXPRESSION, TIME_ZONE_ID
  FROM QRTZ_CRON_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_cron_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_cron_triggers", "trigger_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_cron_triggers", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 146, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 147
  _sql = [[
  SELECT SCHED_NAME, LOCK_NAME
  FROM QRTZ_LOCKS
  WHERE SCHED_NAME = %s
  	AND LOCK_NAME = %s
  FOR UPDATE
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_locks", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_locks", "lock_name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 147, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 148
  _sql = [[
  SELECT J.JOB_NAME, J.JOB_GROUP, J.IS_DURABLE, J.JOB_CLASS_NAME, J.REQUESTS_RECOVERY
  FROM QRTZ_TRIGGERS T, QRTZ_JOB_DETAILS J
  WHERE T.SCHED_NAME = %s
  	AND J.SCHED_NAME = %s
  	AND T.TRIGGER_NAME = %s
  	AND T.TRIGGER_GROUP = %s
  	AND T.JOB_NAME = J.JOB_NAME
  	AND T.JOB_GROUP = J.JOB_GROUP
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_job_details", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 148, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 149 (ignored write)-- line 150 (ignored write)-- line 151 (ignored write)  -- line 152
  _sql = [[
  SELECT TRIGGER_NAME
  FROM QRTZ_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 152, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 153
  _sql = [[
  SELECT TRIGGER_GROUP
  FROM QRTZ_PAUSED_TRIGGER_GRPS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_paused_trigger_grps", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_paused_trigger_grps", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 153, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 154
  _sql = [[
  SELECT TRIGGER_GROUP
  FROM QRTZ_PAUSED_TRIGGER_GRPS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_paused_trigger_grps", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_paused_trigger_grps", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 154, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 155 (ignored write)-- line 156 (ignored write)  -- line 157
  _sql = [[
  SELECT SCHED_NAME, LOCK_NAME
  FROM QRTZ_LOCKS
  WHERE SCHED_NAME = %s
  	AND LOCK_NAME = %s
  FOR UPDATE
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_locks", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_locks", "lock_name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 157, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 158
  _sql = [[
  SELECT TRIGGER_NAME, TRIGGER_GROUP
  FROM QRTZ_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND JOB_NAME = %s
  	AND JOB_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "job_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "job_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 158, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 159
  _sql = [[
  SELECT SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, JOB_NAME, JOB_GROUP
  	, DESCRIPTION, NEXT_FIRE_TIME, PREV_FIRE_TIME, PRIORITY, TRIGGER_STATE
  	, TRIGGER_TYPE, START_TIME, END_TIME, CALENDAR_NAME, MISFIRE_INSTR
  	, JOB_DATA
  FROM QRTZ_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 159, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 160
  _sql = [[
  SELECT SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, CRON_EXPRESSION, TIME_ZONE_ID
  FROM QRTZ_CRON_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_cron_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_cron_triggers", "trigger_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_cron_triggers", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 160, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 161
  _sql = [[
  SELECT TRIGGER_STATE
  FROM QRTZ_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 161, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 162 (ignored write)-- line 163 (ignored write)  _commit_f(_con, true)
  
end

function API_47_POST_user_password_update_1(_con)
  local _api = "POST /user/password/update"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

-- line 164 (ignored write)  _commit_f(_con, false)
  
end

function API_48_GET_febs_views_others_febs_icon_1(_con)
  local _api = "GET /febs/views/others/febs/icon"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 165
  _sql = [[
  SELECT r.`ROLE_ID`, r.`ROLE_NAME`, r.`REMARK`, r.`CREATE_TIME`, r.`MODIFY_TIME`
  FROM t_role r
  	LEFT JOIN t_user_role ur ON r.role_id = ur.role_id
  	LEFT JOIN t_user u ON u.user_id = ur.user_id
  WHERE u.username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_user", "USERNAME", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 165, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 166
  _sql = [[
  SELECT m.perms
  FROM t_role r
  	LEFT JOIN t_user_role ur ON r.role_id = ur.role_id
  	LEFT JOIN t_user u ON u.user_id = ur.user_id
  	LEFT JOIN t_role_menu rm ON rm.role_id = r.role_id
  	LEFT JOIN t_menu m ON m.menu_id = rm.menu_id
  WHERE u.username = %s
  	AND m.perms IS NOT NULL
  	AND m.perms <> %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_user", "USERNAME", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "t_menu", "PERMS", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 166, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_49_POST_role_update_1(_con)
  local _api = "POST /role/update"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

-- line 167 (ignored write)-- line 168 (ignored write)-- line 169 (ignored write)-- line 170 (ignored write)-- line 171 (ignored write)-- line 172 (ignored write)-- line 173 (ignored write)-- line 174 (ignored write)  _commit_f(_con, true)
  
end

function API_49_POST_role_update_2(_con)
  local _api = "POST /role/update"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

-- line 175 (ignored write)-- line 176 (ignored write)-- line 177 (ignored write)-- line 178 (ignored write)-- line 179 (ignored write)-- line 180 (ignored write)-- line 181 (ignored write)  _commit_f(_con, true)
  
end

function API_50_GET_index_MrBird_1(_con)
  local _api = "GET /index/MrBird"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

-- line 182 (ignored write)  _commit_f(_con, false)
  
  -- line 183
  _sql = [[
  SELECT COUNT(1)
  FROM t_login_log
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 183, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 184
  _sql = [[
  SELECT COUNT(1)
  FROM t_login_log
  WHERE datediff(login_time, now()) = 0
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 184, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 185
  _sql = [[
  SELECT COUNT(DISTINCT ip)
  FROM t_login_log
  WHERE datediff(login_time, now()) = 0
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 185, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 186
  _sql = [[
  SELECT date_format(l.login_time, '%%m-%%d') AS days, COUNT(1) AS count
  FROM (
  	SELECT `ID`, `USERNAME`, `LOGIN_TIME`, `LOCATION`, `IP`
  		, `SYSTEM`, `BROWSER`
  	FROM t_login_log
  	WHERE date_sub(curdate(), INTERVAL 10 DAY) <= date(login_time)
  ) l
  WHERE 1 = 1
  GROUP BY days
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 186, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 187
  _sql = [[
  SELECT date_format(l.login_time, '%%m-%%d') AS days, COUNT(1) AS count
  FROM (
  	SELECT `ID`, `USERNAME`, `LOGIN_TIME`, `LOCATION`, `IP`
  		, `SYSTEM`, `BROWSER`
  	FROM t_login_log
  	WHERE date_sub(curdate(), INTERVAL 10 DAY) <= date(login_time)
  ) l
  WHERE 1 = 1
  	AND l.username = %s
  GROUP BY days
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "where", "relation"}, {"string_like", "varchar", 10, -1}}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 187, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_51_GET_generator_1(_con)
  local _api = "GET /generator"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 188
  _sql = [[
  SELECT ID, author, base_package, entity_package, mapper_package
  	, mapper_xml_package, service_package, service_impl_package, controller_package, is_trim
  	, trim_value
  FROM t_generator_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 188, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_52_GET_febs_views_system_user_update_Jana_1(_con)
  local _api = "GET /febs/views/system/user/update/Jana"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 189
  _sql = [[
  SELECT u.user_id AS userId, u.username, u.email, u.mobile, u.password
  	, u.status, u.create_time AS createTime, u.ssex AS sex, u.dept_id AS deptId, u.last_login_time AS lastLoginTime
  	, u.modify_time AS modifyTime, u.description, u.avatar, u.theme, u.is_tab AS isTab
  	, d.dept_name AS deptName, GROUP_CONCAT(r.role_id) AS roleId, GROUP_CONCAT(r.ROLE_NAME) AS roleName
  FROM t_user u
  	LEFT JOIN t_dept d ON u.dept_id = d.dept_id
  	LEFT JOIN t_user_role ur ON u.user_id = ur.user_id
  	LEFT JOIN t_role r ON r.role_id = ur.role_id
  WHERE u.username = %s
  GROUP BY u.username, u.user_id, u.email, u.mobile, u.password, u.status, u.create_time, u.ssex, u.dept_id, u.last_login_time, u.modify_time, u.description, u.avatar, u.theme, u.is_tab
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_user", "USERNAME", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 189, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_53_GET_job_resume_x_1(_con)
  local _api = "GET /job/resume/12"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 190
  _sql = [[
  SELECT SCHED_NAME, LOCK_NAME
  FROM QRTZ_LOCKS
  WHERE SCHED_NAME = %s
  	AND LOCK_NAME = %s
  FOR UPDATE
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_locks", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_locks", "lock_name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 190, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 191
  _sql = [[
  SELECT TRIGGER_NAME, TRIGGER_GROUP
  FROM QRTZ_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND JOB_NAME = %s
  	AND JOB_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "job_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "job_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 191, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 192
  _sql = [[
  SELECT SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, JOB_NAME, JOB_GROUP
  	, DESCRIPTION, NEXT_FIRE_TIME, PREV_FIRE_TIME, PRIORITY, TRIGGER_STATE
  	, TRIGGER_TYPE, START_TIME, END_TIME, CALENDAR_NAME, MISFIRE_INSTR
  	, JOB_DATA
  FROM QRTZ_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 192, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 193
  _sql = [[
  SELECT SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, CRON_EXPRESSION, TIME_ZONE_ID
  FROM QRTZ_CRON_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_cron_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_cron_triggers", "trigger_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_cron_triggers", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 193, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 194
  _sql = [[
  SELECT TRIGGER_STATE, NEXT_FIRE_TIME, JOB_NAME, JOB_GROUP
  FROM QRTZ_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND TRIGGER_NAME = %s
  	AND TRIGGER_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_triggers", "trigger_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 194, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 195
  _sql = [[
  SELECT SCHED_NAME, ENTRY_ID, TRIGGER_NAME, TRIGGER_GROUP, INSTANCE_NAME
  	, FIRED_TIME, SCHED_TIME, PRIORITY, STATE, JOB_NAME
  	, JOB_GROUP, IS_NONCONCURRENT, REQUESTS_RECOVERY
  FROM QRTZ_FIRED_TRIGGERS
  WHERE SCHED_NAME = %s
  	AND JOB_NAME = %s
  	AND JOB_GROUP = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "qrtz_fired_triggers", "sched_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_fired_triggers", "job_name", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "qrtz_fired_triggers", "job_group", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 195, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 196 (ignored write)-- line 197 (ignored write)  _commit_f(_con, true)
  
end

function API_54_GET_dept_select_tree_1(_con)
  local _api = "GET /dept/select/tree"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 198
  _sql = [[
  SELECT DEPT_ID, PARENT_ID, DEPT_NAME, ORDER_NUM, CREATE_TIME
  	, MODIFY_TIME
  FROM t_dept
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 198, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_55_GET_loginLog_delete_x_1(_con)
  local _api = "GET /loginLog/delete/70"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

-- line 199 (ignored write)  _commit_f(_con, false)
  
end

function API_56_GET_febs_views_system_user_1(_con)
  local _api = "GET /febs/views//system/user"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 200
  _sql = [[
  SELECT r.`ROLE_ID`, r.`ROLE_NAME`, r.`REMARK`, r.`CREATE_TIME`, r.`MODIFY_TIME`
  FROM t_role r
  	LEFT JOIN t_user_role ur ON r.role_id = ur.role_id
  	LEFT JOIN t_user u ON u.user_id = ur.user_id
  WHERE u.username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_user", "USERNAME", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 200, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 201
  _sql = [[
  SELECT m.perms
  FROM t_role r
  	LEFT JOIN t_user_role ur ON r.role_id = ur.role_id
  	LEFT JOIN t_user u ON u.user_id = ur.user_id
  	LEFT JOIN t_role_menu rm ON rm.role_id = r.role_id
  	LEFT JOIN t_menu m ON m.menu_id = rm.menu_id
  WHERE u.username = %s
  	AND m.perms IS NOT NULL
  	AND m.perms <> %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_user", "USERNAME", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "t_menu", "PERMS", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 201, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_57_GET_febs_views_generator_configure_1(_con)
  local _api = "GET /febs/views//generator/configure"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 202
  _sql = [[
  SELECT ID, author, base_package, entity_package, mapper_package
  	, mapper_xml_package, service_package, service_impl_package, controller_package, is_trim
  	, trim_value
  FROM t_generator_config
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 202, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_58_GET_eximport_1(_con)
  local _api = "GET /eximport"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 203
  _sql = [[
  SELECT COUNT(1)
  FROM t_eximport
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 203, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 204
  _sql = [[
  SELECT field1, field2, field3, create_time
  FROM t_eximport
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 204, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_59_GET_user_list_1(_con)
  local _api = "GET /user/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 205
  _sql = [[
  SELECT COUNT(1)
  FROM (
  	SELECT u.user_id AS userId, u.username, u.email, u.mobile, u.status
  		, u.create_time AS createTime, u.ssex AS sex, u.dept_id AS deptId, u.last_login_time AS lastLoginTime, u.modify_time AS modifyTime
  		, u.description, u.avatar, d.dept_name AS deptName, GROUP_CONCAT(r.role_id) AS roleId
  		, GROUP_CONCAT(r.ROLE_NAME) AS roleName
  	FROM t_user u
  		LEFT JOIN t_dept d ON u.dept_id = d.dept_id
  		LEFT JOIN t_user_role ur ON u.user_id = ur.user_id
  		LEFT JOIN t_role r ON r.role_id = ur.role_id
  	WHERE 1 = 1
  	GROUP BY u.username, u.user_id, u.email, u.mobile, u.status, u.create_time, u.ssex, u.dept_id, u.last_login_time, u.modify_time, u.description, u.avatar
  ) TOTAL
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 205, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 206
  _sql = [[
  SELECT u.user_id AS userId, u.username, u.email, u.mobile, u.status
  	, u.create_time AS createTime, u.ssex AS sex, u.dept_id AS deptId, u.last_login_time AS lastLoginTime, u.modify_time AS modifyTime
  	, u.description, u.avatar, d.dept_name AS deptName, GROUP_CONCAT(r.role_id) AS roleId
  	, GROUP_CONCAT(r.ROLE_NAME) AS roleName
  FROM t_user u
  	LEFT JOIN t_dept d ON u.dept_id = d.dept_id
  	LEFT JOIN t_user_role ur ON u.user_id = ur.user_id
  	LEFT JOIN t_role r ON r.role_id = ur.role_id
  WHERE 1 = 1
  GROUP BY u.username, u.user_id, u.email, u.mobile, u.status, u.create_time, u.ssex, u.dept_id, u.last_login_time, u.modify_time, u.description, u.avatar
  ORDER BY userId ASC
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 206, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_59_GET_user_list_2(_con)
  local _api = "GET /user/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 207
  _sql = [[
  SELECT COUNT(1)
  FROM (
  	SELECT u.user_id AS userId, u.username, u.email, u.mobile, u.status
  		, u.create_time AS createTime, u.ssex AS sex, u.dept_id AS deptId, u.last_login_time AS lastLoginTime, u.modify_time AS modifyTime
  		, u.description, u.avatar, d.dept_name AS deptName, GROUP_CONCAT(r.role_id) AS roleId
  		, GROUP_CONCAT(r.ROLE_NAME) AS roleName
  	FROM t_user u
  		LEFT JOIN t_dept d ON u.dept_id = d.dept_id
  		LEFT JOIN t_user_role ur ON u.user_id = ur.user_id
  		LEFT JOIN t_role r ON r.role_id = ur.role_id
  	WHERE 1 = 1
  		AND u.username = %s
  	GROUP BY u.username, u.user_id, u.email, u.mobile, u.status, u.create_time, u.ssex, u.dept_id, u.last_login_time, u.modify_time, u.description, u.avatar
  ) TOTAL
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_user", "USERNAME", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 207, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 208
  _sql = [[
  SELECT u.user_id AS userId, u.username, u.email, u.mobile, u.status
  	, u.create_time AS createTime, u.ssex AS sex, u.dept_id AS deptId, u.last_login_time AS lastLoginTime, u.modify_time AS modifyTime
  	, u.description, u.avatar, d.dept_name AS deptName, GROUP_CONCAT(r.role_id) AS roleId
  	, GROUP_CONCAT(r.ROLE_NAME) AS roleName
  FROM t_user u
  	LEFT JOIN t_dept d ON u.dept_id = d.dept_id
  	LEFT JOIN t_user_role ur ON u.user_id = ur.user_id
  	LEFT JOIN t_role r ON r.role_id = ur.role_id
  WHERE 1 = 1
  	AND u.username = %s
  GROUP BY u.username, u.user_id, u.email, u.mobile, u.status, u.create_time, u.ssex, u.dept_id, u.last_login_time, u.modify_time, u.description, u.avatar
  ORDER BY userId ASC
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_user", "USERNAME", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 208, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_59_GET_user_list_3(_con)
  local _api = "GET /user/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 209
  _sql = [[
  SELECT COUNT(1)
  FROM (
  	SELECT u.user_id AS userId, u.username, u.email, u.mobile, u.status
  		, u.create_time AS createTime, u.ssex AS sex, u.dept_id AS deptId, u.last_login_time AS lastLoginTime, u.modify_time AS modifyTime
  		, u.description, u.avatar, d.dept_name AS deptName, GROUP_CONCAT(r.role_id) AS roleId
  		, GROUP_CONCAT(r.ROLE_NAME) AS roleName
  	FROM t_user u
  		LEFT JOIN t_dept d ON u.dept_id = d.dept_id
  		LEFT JOIN t_user_role ur ON u.user_id = ur.user_id
  		LEFT JOIN t_role r ON r.role_id = ur.role_id
  	WHERE 1 = 1
  		AND u.ssex = %s
  	GROUP BY u.username, u.user_id, u.email, u.mobile, u.status, u.create_time, u.ssex, u.dept_id, u.last_login_time, u.modify_time, u.description, u.avatar
  ) TOTAL
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_user", "SSEX", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 209, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 210
  _sql = [[
  SELECT u.user_id AS userId, u.username, u.email, u.mobile, u.status
  	, u.create_time AS createTime, u.ssex AS sex, u.dept_id AS deptId, u.last_login_time AS lastLoginTime, u.modify_time AS modifyTime
  	, u.description, u.avatar, d.dept_name AS deptName, GROUP_CONCAT(r.role_id) AS roleId
  	, GROUP_CONCAT(r.ROLE_NAME) AS roleName
  FROM t_user u
  	LEFT JOIN t_dept d ON u.dept_id = d.dept_id
  	LEFT JOIN t_user_role ur ON u.user_id = ur.user_id
  	LEFT JOIN t_role r ON r.role_id = ur.role_id
  WHERE 1 = 1
  	AND u.ssex = %s
  GROUP BY u.username, u.user_id, u.email, u.mobile, u.status, u.create_time, u.ssex, u.dept_id, u.last_login_time, u.modify_time, u.description, u.avatar
  ORDER BY userId ASC
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_user", "SSEX", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 210, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_59_GET_user_list_4(_con)
  local _api = "GET /user/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 211
  _sql = [[
  SELECT COUNT(1)
  FROM (
  	SELECT u.user_id AS userId, u.username, u.email, u.mobile, u.status
  		, u.create_time AS createTime, u.ssex AS sex, u.dept_id AS deptId, u.last_login_time AS lastLoginTime, u.modify_time AS modifyTime
  		, u.description, u.avatar, d.dept_name AS deptName, GROUP_CONCAT(r.role_id) AS roleId
  		, GROUP_CONCAT(r.ROLE_NAME) AS roleName
  	FROM t_user u
  		LEFT JOIN t_dept d ON u.dept_id = d.dept_id
  		LEFT JOIN t_user_role ur ON u.user_id = ur.user_id
  		LEFT JOIN t_role r ON r.role_id = ur.role_id
  	WHERE 1 = 1
  	GROUP BY u.username, u.user_id, u.email, u.mobile, u.status, u.create_time, u.ssex, u.dept_id, u.last_login_time, u.modify_time, u.description, u.avatar
  ) TOTAL
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 211, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 212
  _sql = [[
  SELECT u.user_id AS userId, u.username, u.email, u.mobile, u.status
  	, u.create_time AS createTime, u.ssex AS sex, u.dept_id AS deptId, u.last_login_time AS lastLoginTime, u.modify_time AS modifyTime
  	, u.description, u.avatar, d.dept_name AS deptName, GROUP_CONCAT(r.role_id) AS roleId
  	, GROUP_CONCAT(r.ROLE_NAME) AS roleName
  FROM t_user u
  	LEFT JOIN t_dept d ON u.dept_id = d.dept_id
  	LEFT JOIN t_user_role ur ON u.user_id = ur.user_id
  	LEFT JOIN t_role r ON r.role_id = ur.role_id
  WHERE 1 = 1
  GROUP BY u.username, u.user_id, u.email, u.mobile, u.status, u.create_time, u.ssex, u.dept_id, u.last_login_time, u.modify_time, u.description, u.avatar
  ORDER BY userId ASC
  LIMIT %s, 5
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 212, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_59_GET_user_list_5(_con)
  local _api = "GET /user/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 213
  _sql = [[
  SELECT COUNT(1)
  FROM (
  	SELECT u.user_id AS userId, u.username, u.email, u.mobile, u.status
  		, u.create_time AS createTime, u.ssex AS sex, u.dept_id AS deptId, u.last_login_time AS lastLoginTime, u.modify_time AS modifyTime
  		, u.description, u.avatar, d.dept_name AS deptName, GROUP_CONCAT(r.role_id) AS roleId
  		, GROUP_CONCAT(r.ROLE_NAME) AS roleName
  	FROM t_user u
  		LEFT JOIN t_dept d ON u.dept_id = d.dept_id
  		LEFT JOIN t_user_role ur ON u.user_id = ur.user_id
  		LEFT JOIN t_role r ON r.role_id = ur.role_id
  	WHERE 1 = 1
  		AND u.mobile = %s
  	GROUP BY u.username, u.user_id, u.email, u.mobile, u.status, u.create_time, u.ssex, u.dept_id, u.last_login_time, u.modify_time, u.description, u.avatar
  ) TOTAL
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_user", "MOBILE", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 213, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 214
  _sql = [[
  SELECT u.user_id AS userId, u.username, u.email, u.mobile, u.status
  	, u.create_time AS createTime, u.ssex AS sex, u.dept_id AS deptId, u.last_login_time AS lastLoginTime, u.modify_time AS modifyTime
  	, u.description, u.avatar, d.dept_name AS deptName, GROUP_CONCAT(r.role_id) AS roleId
  	, GROUP_CONCAT(r.ROLE_NAME) AS roleName
  FROM t_user u
  	LEFT JOIN t_dept d ON u.dept_id = d.dept_id
  	LEFT JOIN t_user_role ur ON u.user_id = ur.user_id
  	LEFT JOIN t_role r ON r.role_id = ur.role_id
  WHERE 1 = 1
  	AND u.mobile = %s
  GROUP BY u.username, u.user_id, u.email, u.mobile, u.status, u.create_time, u.ssex, u.dept_id, u.last_login_time, u.modify_time, u.description, u.avatar
  ORDER BY userId ASC
  LIMIT %s, 5
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_user", "MOBILE", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 214, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_59_GET_user_list_6(_con)
  local _api = "GET /user/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 215
  _sql = [[
  SELECT r.`ROLE_ID`, r.`ROLE_NAME`, r.`REMARK`, r.`CREATE_TIME`, r.`MODIFY_TIME`
  FROM t_role r
  	LEFT JOIN t_user_role ur ON r.role_id = ur.role_id
  	LEFT JOIN t_user u ON u.user_id = ur.user_id
  WHERE u.username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_user", "USERNAME", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 215, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 216
  _sql = [[
  SELECT m.perms
  FROM t_role r
  	LEFT JOIN t_user_role ur ON r.role_id = ur.role_id
  	LEFT JOIN t_user u ON u.user_id = ur.user_id
  	LEFT JOIN t_role_menu rm ON rm.role_id = r.role_id
  	LEFT JOIN t_menu m ON m.menu_id = rm.menu_id
  WHERE u.username = %s
  	AND m.perms IS NOT NULL
  	AND m.perms <> %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_user", "USERNAME", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "t_menu", "PERMS", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 216, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 217
  _sql = [[
  SELECT COUNT(1)
  FROM (
  	SELECT u.user_id AS userId, u.username, u.email, u.mobile, u.status
  		, u.create_time AS createTime, u.ssex AS sex, u.dept_id AS deptId, u.last_login_time AS lastLoginTime, u.modify_time AS modifyTime
  		, u.description, u.avatar, d.dept_name AS deptName, GROUP_CONCAT(r.role_id) AS roleId
  		, GROUP_CONCAT(r.ROLE_NAME) AS roleName
  	FROM t_user u
  		LEFT JOIN t_dept d ON u.dept_id = d.dept_id
  		LEFT JOIN t_user_role ur ON u.user_id = ur.user_id
  		LEFT JOIN t_role r ON r.role_id = ur.role_id
  	WHERE 1 = 1
  	GROUP BY u.username, u.user_id, u.email, u.mobile, u.status, u.create_time, u.ssex, u.dept_id, u.last_login_time, u.modify_time, u.description, u.avatar
  ) TOTAL
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 217, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 218
  _sql = [[
  SELECT u.user_id AS userId, u.username, u.email, u.mobile, u.status
  	, u.create_time AS createTime, u.ssex AS sex, u.dept_id AS deptId, u.last_login_time AS lastLoginTime, u.modify_time AS modifyTime
  	, u.description, u.avatar, d.dept_name AS deptName, GROUP_CONCAT(r.role_id) AS roleId
  	, GROUP_CONCAT(r.ROLE_NAME) AS roleName
  FROM t_user u
  	LEFT JOIN t_dept d ON u.dept_id = d.dept_id
  	LEFT JOIN t_user_role ur ON u.user_id = ur.user_id
  	LEFT JOIN t_role r ON r.role_id = ur.role_id
  WHERE 1 = 1
  GROUP BY u.username, u.user_id, u.email, u.mobile, u.status, u.create_time, u.ssex, u.dept_id, u.last_login_time, u.modify_time, u.description, u.avatar
  ORDER BY userId ASC
  LIMIT %s, 5
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 218, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_60_POST_user_1(_con)
  local _api = "POST /user"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

-- line 219 (ignored write)-- line 220 (ignored write)-- line 221 (ignored write)-- line 222 (ignored write)-- line 223 (ignored write)-- line 224 (ignored write)-- line 225 (ignored write)  _commit_f(_con, true)
  
end

function API_61_GET_role_list_1(_con)
  local _api = "GET /role/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 226
  _sql = [[
  SELECT COUNT(1)
  FROM (
  	SELECT r.role_id AS roleId, r.role_name AS roleName, r.remark, r.create_time AS createTime, r.modify_time AS modifyTime
  		, GROUP_CONCAT(rm.menu_id) AS menuIds
  	FROM t_role r
  		LEFT JOIN t_role_menu rm ON r.role_id = rm.role_id
  	WHERE 1 = 1
  	GROUP BY r.role_id
  ) TOTAL
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 226, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 227
  _sql = [[
  SELECT r.role_id AS roleId, r.role_name AS roleName, r.remark, r.create_time AS createTime, r.modify_time AS modifyTime
  	, GROUP_CONCAT(rm.menu_id) AS menuIds
  FROM t_role r
  	LEFT JOIN t_role_menu rm ON r.role_id = rm.role_id
  WHERE 1 = 1
  GROUP BY r.role_id
  ORDER BY createTime DESC
  LIMIT %s, 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 227, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_61_GET_role_list_2(_con)
  local _api = "GET /role/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 228
  _sql = [[
  SELECT COUNT(1)
  FROM (
  	SELECT r.role_id AS roleId, r.role_name AS roleName, r.remark, r.create_time AS createTime, r.modify_time AS modifyTime
  		, GROUP_CONCAT(rm.menu_id) AS menuIds
  	FROM t_role r
  		LEFT JOIN t_role_menu rm ON r.role_id = rm.role_id
  	WHERE 1 = 1
  	GROUP BY r.role_id
  ) TOTAL
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 228, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 229
  _sql = [[
  SELECT r.role_id AS roleId, r.role_name AS roleName, r.remark, r.create_time AS createTime, r.modify_time AS modifyTime
  	, GROUP_CONCAT(rm.menu_id) AS menuIds
  FROM t_role r
  	LEFT JOIN t_role_menu rm ON r.role_id = rm.role_id
  WHERE 1 = 1
  GROUP BY r.role_id
  ORDER BY createTime DESC
  LIMIT %s, 5
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 229, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_61_GET_role_list_3(_con)
  local _api = "GET /role/list"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 230
  _sql = [[
  SELECT r.`ROLE_ID`, r.`ROLE_NAME`, r.`REMARK`, r.`CREATE_TIME`, r.`MODIFY_TIME`
  FROM t_role r
  	LEFT JOIN t_user_role ur ON r.role_id = ur.role_id
  	LEFT JOIN t_user u ON u.user_id = ur.user_id
  WHERE u.username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_user", "USERNAME", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 230, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 231
  _sql = [[
  SELECT m.perms
  FROM t_role r
  	LEFT JOIN t_user_role ur ON r.role_id = ur.role_id
  	LEFT JOIN t_user u ON u.user_id = ur.user_id
  	LEFT JOIN t_role_menu rm ON rm.role_id = r.role_id
  	LEFT JOIN t_menu m ON m.menu_id = rm.menu_id
  WHERE u.username = %s
  	AND m.perms IS NOT NULL
  	AND m.perms <> %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_user", "USERNAME", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "t_menu", "PERMS", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 231, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 232
  _sql = [[
  SELECT COUNT(1)
  FROM (
  	SELECT r.role_id AS roleId, r.role_name AS roleName, r.remark, r.create_time AS createTime, r.modify_time AS modifyTime
  		, GROUP_CONCAT(rm.menu_id) AS menuIds
  	FROM t_role r
  		LEFT JOIN t_role_menu rm ON r.role_id = rm.role_id
  	WHERE 1 = 1
  	GROUP BY r.role_id
  ) TOTAL
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 232, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 233
  _sql = [[
  SELECT r.role_id AS roleId, r.role_name AS roleName, r.remark, r.create_time AS createTime, r.modify_time AS modifyTime
  	, GROUP_CONCAT(rm.menu_id) AS menuIds
  FROM t_role r
  	LEFT JOIN t_role_menu rm ON r.role_id = rm.role_id
  WHERE 1 = 1
  GROUP BY r.role_id
  ORDER BY createTime DESC
  LIMIT %s, 5
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 233, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_62_GET_menu_MrBird_1(_con)
  local _api = "GET /menu/MrBird"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 234
  _sql = [[
  SELECT m.`MENU_ID`, m.`PARENT_ID`, m.`MENU_NAME`, m.`URL`, m.`PERMS`
  	, m.`ICON`, m.`TYPE`, m.`ORDER_NUM`, m.`CREATE_TIME`, m.`MODIFY_TIME`
  FROM t_menu m
  WHERE m.type <> %s
  	AND m.MENU_ID IN (
  		SELECT DISTINCT rm.menu_id
  		FROM t_role_menu rm
  			LEFT JOIN t_role r ON rm.role_id = r.role_id
  			LEFT JOIN t_user_role ur ON ur.role_id = r.role_id
  			LEFT JOIN t_user u ON u.user_id = ur.user_id
  		WHERE u.username = %s
  	)
  ORDER BY m.order_num
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "t_menu", "TYPE", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "t_user", "USERNAME", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 234, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

