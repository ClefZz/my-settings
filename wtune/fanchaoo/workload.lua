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

function API_1_GET_toPost_do_1(_con)
  local _api = "GET /toPost.do"
  local _sql
  local _formatted_sql
  local _params
  local _res

-- line 1 (ignored write)
  -- line 2
  _sql = [[
  SELECT u.uid, u.username, u.head_url, p.pid, p.title
  	, p.content, p.publish_time, p.reply_time, p.reply_count, p.like_count
  	, p.scan_count
  FROM post p
  	JOIN user u ON p.uid = u.uid
  WHERE p.pid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "pid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 2, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 3
  _sql = [[
  SELECT r.rid, r.content, u.uid, u.username, u.head_url
  FROM reply r
  	JOIN user u ON r.uid = u.uid
  WHERE r.pid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "reply", "pid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 3, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_1_GET_toPost_do_2(_con)
  local _api = "GET /toPost.do"
  local _sql
  local _formatted_sql
  local _params
  local _res

-- line 4 (ignored write)
  -- line 5
  _sql = [[
  SELECT u.uid, u.username, u.head_url, p.pid, p.title
  	, p.content, p.publish_time, p.reply_time, p.reply_count, p.like_count
  	, p.scan_count
  FROM post p
  	JOIN user u ON p.uid = u.uid
  WHERE p.pid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "pid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 5, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 6
  _sql = [[
  SELECT r.rid, r.content, u.uid, u.username, u.head_url
  FROM reply r
  	JOIN user u ON r.uid = u.uid
  WHERE r.pid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "reply", "pid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 6, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 7
  _sql = [[
  SELECT c.cid, c.content, u.uid, u.username, u.head_url
  FROM comment c
  	JOIN user u ON c.uid = u.uid
  WHERE c.rid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "comment", "rid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 7, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_2_GET_forgetPassword_do_1(_con)
  local _api = "GET /forgetPassword.do"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 8
  _sql = [[
  SELECT activate_code
  FROM user
  WHERE email = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "email", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 8, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_3_GET__1(_con)
  local _api = "GET /"
  local _sql
  local _formatted_sql
  local _params
  local _res

-- line 9 (ignored write)
  -- line 10
  _sql = [[
  SELECT COUNT(*)
  FROM post
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 10, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 11
  _sql = [[
  SELECT u.uid, u.username, u.head_url, p.pid, p.title
  	, p.publish_time, p.reply_time, p.reply_count, p.like_count, p.scan_count
  FROM post p
  	JOIN user u ON p.uid = u.uid
  ORDER BY p.reply_time DESC
  LIMIT %s, 8
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 11, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 12
  _sql = [[
  SELECT uid, username, head_url
  FROM user
  ORDER BY join_time DESC
  LIMIT 6
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
  SELECT uid, username, head_url
  FROM user
  ORDER BY post_count DESC
  LIMIT 6
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 13, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_4_GET_listTopic_do_1(_con)
  local _api = "GET /listTopic.do"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 14
  _sql = [[
  SELECT tid, name, content, image
  FROM topic
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 14, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_5_GET_listImage_do_1(_con)
  local _api = "GET /listImage.do"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 15
  _sql = [[
  SELECT image_url
  FROM image
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 15, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_6_GET_listPostByTime_do_1(_con)
  local _api = "GET /listPostByTime.do"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 16
  _sql = [[
  SELECT COUNT(*)
  FROM post
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 16, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 17
  _sql = [[
  SELECT u.uid, u.username, u.head_url, p.pid, p.title
  	, p.publish_time, p.reply_time, p.reply_count, p.like_count, p.scan_count
  FROM post p
  	JOIN user u ON p.uid = u.uid
  ORDER BY p.reply_time DESC
  LIMIT %s, 8
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "", "", {"select", "limit", "limit"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 17, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 18
  _sql = [[
  SELECT uid, username, head_url
  FROM user
  ORDER BY join_time DESC
  LIMIT 6
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 18, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 19
  _sql = [[
  SELECT uid, username, head_url
  FROM user
  ORDER BY post_count DESC
  LIMIT 6
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

function API_7_POST_comment_do_1(_con)
  local _api = "POST /comment.do"
  local _sql
  local _formatted_sql
  local _params
  local _res

-- line 20 (ignored write)
-- line 21 (ignored write)
  -- line 22
  _sql = [[
  SELECT uid
  FROM post
  WHERE pid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "pid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 22, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 23
  _sql = [[
  SELECT uid, username
  FROM user
  WHERE uid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "uid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 23, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_8_GET_toMessage_do_1(_con)
  local _api = "GET /toMessage.do"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 24
  _sql = [[
  SELECT `mid`, `uid`, `other_id`, `other_username`, `post_id`
  	, `operation`, `displayed_content`, `msg_time`
  FROM message
  WHERE uid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "message", "uid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 24, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_9_GET_toIndex_do_1(_con)
  local _api = "GET /toIndex.do"
  local _sql
  local _formatted_sql
  local _params
  local _res

-- line 25 (ignored write)
  -- line 26
  _sql = [[
  SELECT COUNT(*)
  FROM post
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
  SELECT u.uid, u.username, u.head_url, p.pid, p.title
  	, p.publish_time, p.reply_time, p.reply_count, p.like_count, p.scan_count
  FROM post p
  	JOIN user u ON p.uid = u.uid
  ORDER BY p.reply_time DESC
  LIMIT %s, 8
  ]]
  _params = {
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
  SELECT uid, username, head_url
  FROM user
  ORDER BY join_time DESC
  LIMIT 6
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
  SELECT uid, username, head_url
  FROM user
  ORDER BY post_count DESC
  LIMIT 6
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 29, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_10_GET_follow_do_1(_con)
  local _api = "GET /follow.do"
  local _sql
  local _formatted_sql
  local _params
  local _res

-- line 30 (ignored write)
  -- line 31
  _sql = [[
  SELECT uid, username, description, position, school
  	, job, head_url, follow_count, follower_count, like_count
  	, post_count, scan_count
  FROM user
  WHERE uid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "uid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 31, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 32
  _sql = [[
  SELECT uid, pid, title, publish_time
  FROM post
  WHERE uid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "uid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 32, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_11_GET_unfollow_do_1(_con)
  local _api = "GET /unfollow.do"
  local _sql
  local _formatted_sql
  local _params
  local _res

-- line 33 (ignored write)
  -- line 34
  _sql = [[
  SELECT uid, username, description, position, school
  	, job, head_url, follow_count, follower_count, like_count
  	, post_count, scan_count
  FROM user
  WHERE uid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "uid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 34, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 35
  _sql = [[
  SELECT uid, pid, title, publish_time
  FROM post
  WHERE uid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "uid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 35, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_12_GET_toEditProfile_do_1(_con)
  local _api = "GET /toEditProfile.do"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 36
  _sql = [[
  SELECT uid, username, description, position, school
  	, job
  FROM user
  WHERE uid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "uid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 36, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_13_GET_toMyProfile_do_1(_con)
  local _api = "GET /toMyProfile.do"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 37
  _sql = [[
  SELECT uid, username, description, position, school
  	, job, head_url, follow_count, follower_count, like_count
  	, post_count, scan_count
  FROM user
  WHERE uid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "uid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 37, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 38
  _sql = [[
  SELECT uid, pid, title, publish_time
  FROM post
  WHERE uid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "uid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 38, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_14_POST_publishPost_do_1(_con)
  local _api = "POST /publishPost.do"
  local _sql
  local _formatted_sql
  local _params
  local _res

-- line 39 (ignored write)
-- line 40 (ignored write)
end

function API_15_POST_updateHeadUrl_do_1(_con)
  local _api = "POST /updateHeadUrl.do"
  local _sql
  local _formatted_sql
  local _params
  local _res

-- line 41 (ignored write)
end

function API_16_GET_verify_do_1(_con)
  local _api = "GET /verify.do"
  local _sql
  local _formatted_sql
  local _params
  local _res

-- line 42 (ignored write)
end

function API_16_GET_verify_do_2(_con)
  local _api = "GET /verify.do"
  local _sql
  local _formatted_sql
  local _params
  local _res

-- line 43 (ignored write)
end

function API_17_POST_updatePassword_do_1(_con)
  local _api = "POST /updatePassword.do"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 44
  _sql = [[
  SELECT password
  FROM user
  WHERE uid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "uid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 44, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_17_POST_updatePassword_do_2(_con)
  local _api = "POST /updatePassword.do"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 45
  _sql = [[
  SELECT password
  FROM user
  WHERE uid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "uid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 45, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


-- line 46 (ignored write)
end

function API_18_GET_toProfile_do_1(_con)
  local _api = "GET /toProfile.do"
  local _sql
  local _formatted_sql
  local _params
  local _res

-- line 47 (ignored write)
  -- line 48
  _sql = [[
  SELECT uid, username, description, position, school
  	, job, head_url, follow_count, follower_count, like_count
  	, post_count, scan_count
  FROM user
  WHERE uid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "uid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 48, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 49
  _sql = [[
  SELECT uid, pid, title, publish_time
  FROM post
  WHERE uid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "uid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 49, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_19_GET_ajaxClickLike_do_1(_con)
  local _api = "GET /ajaxClickLike.do"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 50
  _sql = [[
  SELECT uid
  FROM post
  WHERE pid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "pid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 50, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 51
  _sql = [[
  SELECT uid, username
  FROM user
  WHERE uid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "uid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 51, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 52
  _sql = [[
  SELECT title
  FROM post
  WHERE pid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "pid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 52, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


-- line 53 (ignored write)
end

function API_20_POST_editProfile_do_1(_con)
  local _api = "POST /editProfile.do"
  local _sql
  local _formatted_sql
  local _params
  local _res

-- line 54 (ignored write)
end

function API_21_POST_login_do_1(_con)
  local _api = "POST /login.do"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 55
  _sql = [[
  SELECT uid
  FROM user
  WHERE email = %s
  	AND password = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "email", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "user", "password", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 55, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 56
  _sql = [[
  SELECT actived
  FROM user
  WHERE email = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "email", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 56, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 57
  _sql = [[
  SELECT head_url
  FROM user
  WHERE uid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "uid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 57, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_22_GET_toPublish_do_1(_con)
  local _api = "GET /toPublish.do"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 58
  _sql = [[
  SELECT tid, name, content, image
  FROM topic
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 58, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_23_POST_reply_do_1(_con)
  local _api = "POST /reply.do"
  local _sql
  local _formatted_sql
  local _params
  local _res

-- line 59 (ignored write)
-- line 60 (ignored write)
-- line 61 (ignored write)
  -- line 62
  _sql = [[
  SELECT uid
  FROM post
  WHERE pid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "pid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 62, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 63
  _sql = [[
  SELECT uid, username
  FROM user
  WHERE uid = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "uid", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 63, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_24_GET_activate_do_1(_con)
  local _api = "GET /activate.do"
  local _sql
  local _formatted_sql
  local _params
  local _res

-- line 64 (ignored write)
end

function API_25_POST_register_do_1(_con)
  local _api = "POST /register.do"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 65
  _sql = [[
  SELECT COUNT(*)
  FROM user
  WHERE email = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "email", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 65, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


-- line 66 (ignored write)
end

function API_25_POST_register_do_2(_con)
  local _api = "POST /register.do"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 67
  _sql = [[
  SELECT COUNT(*)
  FROM user
  WHERE email = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "user", "email", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 67, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

