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

function API_1_GET_tags_1(_con)
  local _api = "GET /tags"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_1
  -- line 1
  _sql = [[
  SELECT tag2_.name AS col_0_0_, COUNT(post0_.id) AS col_1_0_
  FROM posts post0_
  	INNER JOIN posts_tags tags1_ ON post0_.id = tags1_.post_id
  	INNER JOIN tags tag2_ ON tags1_.tag_id = tag2_.id
  WHERE post0_.post_status = %s
  GROUP BY tag2_.id
  ORDER BY col_1_0_ DESC
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts", "post_status", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 1, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn1

end

function API_2_POST_admin_users_x_1(_con)
  local _api = "POST /admin/users/1"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_2
  -- line 2
  _sql = [[
  SELECT user0_.id AS id1_4_0_, user0_.created_at AS created_2_4_0_, user0_.updated_at AS updated_3_4_0_, user0_.email AS email4_4_0_, user0_.password AS password5_4_0_
  	, user0_.role AS role6_4_0_
  FROM users user0_
  WHERE user0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "users", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 2, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn2

  -- start txn_3
  -- line 3 (ignored write)
  -- end txn3

end

function API_2_POST_admin_users_x_2(_con)
  local _api = "POST /admin/users/1"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_4
  -- line 4
  _sql = [[
  SELECT user0_.id AS id1_4_0_, user0_.created_at AS created_2_4_0_, user0_.updated_at AS updated_3_4_0_, user0_.email AS email4_4_0_, user0_.password AS password5_4_0_
  	, user0_.role AS role6_4_0_
  FROM users user0_
  WHERE user0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "users", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 4, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn4

end

function API_3_GET_admin_users_profile_1(_con)
  local _api = "GET /admin/users/profile"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_5
  -- line 5
  _sql = [[
  SELECT user0_.id AS id1_4_, user0_.created_at AS created_2_4_, user0_.updated_at AS updated_3_4_, user0_.email AS email4_4_, user0_.password AS password5_4_
  	, user0_.role AS role6_4_
  FROM users user0_
  WHERE user0_.email = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "users", "email", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 5, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn5

end

function API_4_GET__1(_con)
  local _api = "GET /"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_6
  -- line 6
  _sql = [[
  SELECT post0_.id AS id1_0_, post0_.created_at AS created_2_0_, post0_.updated_at AS updated_3_0_, post0_.content AS content4_0_, post0_.permalink AS permalin5_0_
  	, post0_.post_format AS post_for6_0_, post0_.post_status AS post_sta7_0_, post0_.post_type AS post_typ8_0_, post0_.rendered_content AS rendered9_0_, post0_.rendered_summary AS rendere10_0_
  	, post0_.summary AS summary11_0_, post0_.title AS title12_0_, post0_.user_id AS user_id14_0_, post0_.views AS views13_0_
  FROM posts post0_
  WHERE post0_.post_type = %s
  	AND post0_.post_status = %s
  ORDER BY post0_.created_at DESC
  LIMIT 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts", "post_type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "posts", "post_status", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 6, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- line 7
  _sql = [[
  SELECT user0_.id AS id1_4_0_, user0_.created_at AS created_2_4_0_, user0_.updated_at AS updated_3_4_0_, user0_.email AS email4_4_0_, user0_.password AS password5_4_0_
  	, user0_.role AS role6_4_0_
  FROM users user0_
  WHERE user0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "users", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 7, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn6

end

function API_5_GET_login_1(_con)
  local _api = "GET /login"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_7
  -- line 8
  _sql = [[
  SELECT setting0_.id AS id1_2_, setting0_.created_at AS created_2_2_, setting0_.updated_at AS updated_3_2_, setting0_._key AS _key4_2_, setting0_._value AS _value5_2_
  FROM settings setting0_
  WHERE setting0_._key = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "settings", "_key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 8, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn7

  -- start txn_8
  -- line 9
  _sql = [[
  SELECT setting0_.id AS id1_2_, setting0_.created_at AS created_2_2_, setting0_.updated_at AS updated_3_2_, setting0_._key AS _key4_2_, setting0_._value AS _value5_2_
  FROM settings setting0_
  WHERE setting0_._key = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "settings", "_key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 9, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn8

end

function API_6_POST_admin_posts_1(_con)
  local _api = "POST /admin/posts"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 10
  _sql = [[
  SELECT user0_.id AS id1_4_, user0_.created_at AS created_2_4_, user0_.updated_at AS updated_3_4_, user0_.email AS email4_4_, user0_.password AS password5_4_
  	, user0_.role AS role6_4_
  FROM users user0_
  WHERE user0_.email = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "users", "email", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 10, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()


  -- start txn_10
  -- line 11
  _sql = [[
  SELECT tag0_.id AS id1_3_, tag0_.created_at AS created_2_3_, tag0_.updated_at AS updated_3_3_, tag0_.name AS name4_3_
  FROM tags tag0_
  WHERE tag0_.name = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "tags", "name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 11, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn10

  -- start txn_11
  -- line 12 (ignored write)
  -- line 13 (ignored write)
  -- end txn11

end

function API_6_POST_admin_posts_2(_con)
  local _api = "POST /admin/posts"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 14
  _sql = [[
  SELECT user0_.id AS id1_4_, user0_.created_at AS created_2_4_, user0_.updated_at AS updated_3_4_, user0_.email AS email4_4_, user0_.password AS password5_4_
  	, user0_.role AS role6_4_
  FROM users user0_
  WHERE user0_.email = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "users", "email", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 14, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()


  -- start txn_13
  -- line 15
  _sql = [[
  SELECT tag0_.id AS id1_3_, tag0_.created_at AS created_2_3_, tag0_.updated_at AS updated_3_3_, tag0_.name AS name4_3_
  FROM tags tag0_
  WHERE tag0_.name = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "tags", "name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 15, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- line 16 (ignored write)
  -- end txn13

  -- start txn_14
  -- line 17 (ignored write)
  -- line 18 (ignored write)
  -- end txn14

end

function API_6_POST_admin_posts_3(_con)
  local _api = "POST /admin/posts"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 19
  _sql = [[
  SELECT user0_.id AS id1_4_, user0_.created_at AS created_2_4_, user0_.updated_at AS updated_3_4_, user0_.email AS email4_4_, user0_.password AS password5_4_
  	, user0_.role AS role6_4_
  FROM users user0_
  WHERE user0_.email = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "users", "email", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 19, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()


  -- start txn_16
  -- line 20
  _sql = [[
  SELECT tag0_.id AS id1_3_, tag0_.created_at AS created_2_3_, tag0_.updated_at AS updated_3_3_, tag0_.name AS name4_3_
  FROM tags tag0_
  WHERE tag0_.name = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "tags", "name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 20, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- line 21
  _sql = [[
  SELECT tag0_.id AS id1_3_, tag0_.created_at AS created_2_3_, tag0_.updated_at AS updated_3_3_, tag0_.name AS name4_3_
  FROM tags tag0_
  WHERE tag0_.name = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "tags", "name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 21, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- line 22 (ignored write)
  -- end txn16

  -- start txn_17
  -- line 23 (ignored write)
  -- line 24 (ignored write)
  -- line 25 (ignored write)
  -- end txn17

end

function API_7_POST_admin_posts_x_delete_1(_con)
  local _api = "POST /admin/posts/3/delete"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_18
  -- line 26
  _sql = [[
  SELECT post0_.id AS id1_0_0_, post0_.created_at AS created_2_0_0_, post0_.updated_at AS updated_3_0_0_, post0_.content AS content4_0_0_, post0_.permalink AS permalin5_0_0_
  	, post0_.post_format AS post_for6_0_0_, post0_.post_status AS post_sta7_0_0_, post0_.post_type AS post_typ8_0_0_, post0_.rendered_content AS rendered9_0_0_, post0_.rendered_summary AS rendere10_0_0_
  	, post0_.summary AS summary11_0_0_, post0_.title AS title12_0_0_, post0_.user_id AS user_id14_0_0_, post0_.views AS views13_0_0_, user1_.id AS id1_4_1_
  	, user1_.created_at AS created_2_4_1_, user1_.updated_at AS updated_3_4_1_, user1_.email AS email4_4_1_, user1_.password AS password5_4_1_, user1_.role AS role6_4_1_
  FROM posts post0_
  	LEFT JOIN users user1_ ON post0_.user_id = user1_.id
  WHERE post0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 26, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn18

  -- start txn_19
  -- line 27
  _sql = [[
  SELECT tags0_.post_id AS post_id1_1_0_, tags0_.tag_id AS tag_id2_1_0_, tag1_.id AS id1_3_1_, tag1_.created_at AS created_2_3_1_, tag1_.updated_at AS updated_3_3_1_
  	, tag1_.name AS name4_3_1_
  FROM posts_tags tags0_
  	INNER JOIN tags tag1_ ON tags0_.tag_id = tag1_.id
  WHERE tags0_.post_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts_tags", "post_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 27, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- line 28 (ignored write)
  -- line 29 (ignored write)
  -- end txn19

end

function API_7_POST_admin_posts_x_delete_2(_con)
  local _api = "POST /admin/posts/3/delete"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_20
  -- line 30
  _sql = [[
  SELECT post0_.id AS id1_0_0_, post0_.created_at AS created_2_0_0_, post0_.updated_at AS updated_3_0_0_, post0_.content AS content4_0_0_, post0_.permalink AS permalin5_0_0_
  	, post0_.post_format AS post_for6_0_0_, post0_.post_status AS post_sta7_0_0_, post0_.post_type AS post_typ8_0_0_, post0_.rendered_content AS rendered9_0_0_, post0_.rendered_summary AS rendere10_0_0_
  	, post0_.summary AS summary11_0_0_, post0_.title AS title12_0_0_, post0_.user_id AS user_id14_0_0_, post0_.views AS views13_0_0_, user1_.id AS id1_4_1_
  	, user1_.created_at AS created_2_4_1_, user1_.updated_at AS updated_3_4_1_, user1_.email AS email4_4_1_, user1_.password AS password5_4_1_, user1_.role AS role6_4_1_
  FROM posts post0_
  	LEFT JOIN users user1_ ON post0_.user_id = user1_.id
  WHERE post0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 30, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn20

  -- start txn_21
  -- line 31
  _sql = [[
  SELECT tags0_.post_id AS post_id1_1_0_, tags0_.tag_id AS tag_id2_1_0_, tag1_.id AS id1_3_1_, tag1_.created_at AS created_2_3_1_, tag1_.updated_at AS updated_3_3_1_
  	, tag1_.name AS name4_3_1_
  FROM posts_tags tags0_
  	INNER JOIN tags tag1_ ON tags0_.tag_id = tag1_.id
  WHERE tags0_.post_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts_tags", "post_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 31, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- line 32 (ignored write)
  -- line 33 (ignored write)
  -- line 34 (ignored write)
  -- line 35 (ignored write)
  -- end txn21

end

function API_8_POST_admin_posts_x_delete_1(_con)
  local _api = "POST /admin/posts/2/delete"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_22
  -- line 36
  _sql = [[
  SELECT post0_.id AS id1_0_0_, post0_.created_at AS created_2_0_0_, post0_.updated_at AS updated_3_0_0_, post0_.content AS content4_0_0_, post0_.permalink AS permalin5_0_0_
  	, post0_.post_format AS post_for6_0_0_, post0_.post_status AS post_sta7_0_0_, post0_.post_type AS post_typ8_0_0_, post0_.rendered_content AS rendered9_0_0_, post0_.rendered_summary AS rendere10_0_0_
  	, post0_.summary AS summary11_0_0_, post0_.title AS title12_0_0_, post0_.user_id AS user_id14_0_0_, post0_.views AS views13_0_0_, user1_.id AS id1_4_1_
  	, user1_.created_at AS created_2_4_1_, user1_.updated_at AS updated_3_4_1_, user1_.email AS email4_4_1_, user1_.password AS password5_4_1_, user1_.role AS role6_4_1_
  FROM posts post0_
  	LEFT JOIN users user1_ ON post0_.user_id = user1_.id
  WHERE post0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 36, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn22

  -- start txn_23
  -- line 37
  _sql = [[
  SELECT tags0_.post_id AS post_id1_1_0_, tags0_.tag_id AS tag_id2_1_0_, tag1_.id AS id1_3_1_, tag1_.created_at AS created_2_3_1_, tag1_.updated_at AS updated_3_3_1_
  	, tag1_.name AS name4_3_1_
  FROM posts_tags tags0_
  	INNER JOIN tags tag1_ ON tags0_.tag_id = tag1_.id
  WHERE tags0_.post_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts_tags", "post_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 37, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- line 38 (ignored write)
  -- line 39 (ignored write)
  -- line 40 (ignored write)
  -- end txn23

end

function API_9_GET_admin_posts_x_edit_1(_con)
  local _api = "GET /admin/posts/3/edit"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_24
  -- line 41
  _sql = [[
  SELECT post0_.id AS id1_0_0_, post0_.created_at AS created_2_0_0_, post0_.updated_at AS updated_3_0_0_, post0_.content AS content4_0_0_, post0_.permalink AS permalin5_0_0_
  	, post0_.post_format AS post_for6_0_0_, post0_.post_status AS post_sta7_0_0_, post0_.post_type AS post_typ8_0_0_, post0_.rendered_content AS rendered9_0_0_, post0_.rendered_summary AS rendere10_0_0_
  	, post0_.summary AS summary11_0_0_, post0_.title AS title12_0_0_, post0_.user_id AS user_id14_0_0_, post0_.views AS views13_0_0_, user1_.id AS id1_4_1_
  	, user1_.created_at AS created_2_4_1_, user1_.updated_at AS updated_3_4_1_, user1_.email AS email4_4_1_, user1_.password AS password5_4_1_, user1_.role AS role6_4_1_
  FROM posts post0_
  	LEFT JOIN users user1_ ON post0_.user_id = user1_.id
  WHERE post0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 41, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn24

  -- start txn_25
  -- line 42
  _sql = [[
  SELECT tags0_.post_id AS post_id1_1_0_, tags0_.tag_id AS tag_id2_1_0_, tag1_.id AS id1_3_1_, tag1_.created_at AS created_2_3_1_, tag1_.updated_at AS updated_3_3_1_
  	, tag1_.name AS name4_3_1_
  FROM posts_tags tags0_
  	INNER JOIN tags tag1_ ON tags0_.tag_id = tag1_.id
  WHERE tags0_.post_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts_tags", "post_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 42, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn25

end

function API_10_GET_about_1(_con)
  local _api = "GET /about"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_26
  -- line 43
  _sql = [[
  SELECT post0_.id AS id1_0_, post0_.created_at AS created_2_0_, post0_.updated_at AS updated_3_0_, post0_.content AS content4_0_, post0_.permalink AS permalin5_0_
  	, post0_.post_format AS post_for6_0_, post0_.post_status AS post_sta7_0_, post0_.post_type AS post_typ8_0_, post0_.rendered_content AS rendered9_0_, post0_.rendered_summary AS rendere10_0_
  	, post0_.summary AS summary11_0_, post0_.title AS title12_0_, post0_.user_id AS user_id14_0_, post0_.views AS views13_0_
  FROM posts post0_
  WHERE post0_.permalink = %s
  	AND post0_.post_status = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts", "permalink", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "posts", "post_status", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 43, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn26

end

function API_11_GET_admin_posts_1(_con)
  local _api = "GET /admin/posts"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_27
  -- line 44
  _sql = [[
  SELECT post0_.id AS id1_0_, post0_.created_at AS created_2_0_, post0_.updated_at AS updated_3_0_, post0_.content AS content4_0_, post0_.permalink AS permalin5_0_
  	, post0_.post_format AS post_for6_0_, post0_.post_status AS post_sta7_0_, post0_.post_type AS post_typ8_0_, post0_.rendered_content AS rendered9_0_, post0_.rendered_summary AS rendere10_0_
  	, post0_.summary AS summary11_0_, post0_.title AS title12_0_, post0_.user_id AS user_id14_0_, post0_.views AS views13_0_
  FROM posts post0_
  ORDER BY post0_.id DESC
  LIMIT 20
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 44, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- line 45
  _sql = [[
  SELECT user0_.id AS id1_4_0_, user0_.created_at AS created_2_4_0_, user0_.updated_at AS updated_3_4_0_, user0_.email AS email4_4_0_, user0_.password AS password5_4_0_
  	, user0_.role AS role6_4_0_
  FROM users user0_
  WHERE user0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "users", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 45, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn27

end

function API_12_GET_admin_posts_x_edit_1(_con)
  local _api = "GET /admin/posts/4/edit"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_28
  -- line 46
  _sql = [[
  SELECT post0_.id AS id1_0_0_, post0_.created_at AS created_2_0_0_, post0_.updated_at AS updated_3_0_0_, post0_.content AS content4_0_0_, post0_.permalink AS permalin5_0_0_
  	, post0_.post_format AS post_for6_0_0_, post0_.post_status AS post_sta7_0_0_, post0_.post_type AS post_typ8_0_0_, post0_.rendered_content AS rendered9_0_0_, post0_.rendered_summary AS rendere10_0_0_
  	, post0_.summary AS summary11_0_0_, post0_.title AS title12_0_0_, post0_.user_id AS user_id14_0_0_, post0_.views AS views13_0_0_, user1_.id AS id1_4_1_
  	, user1_.created_at AS created_2_4_1_, user1_.updated_at AS updated_3_4_1_, user1_.email AS email4_4_1_, user1_.password AS password5_4_1_, user1_.role AS role6_4_1_
  FROM posts post0_
  	LEFT JOIN users user1_ ON post0_.user_id = user1_.id
  WHERE post0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 46, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn28

  -- start txn_29
  -- line 47
  _sql = [[
  SELECT tags0_.post_id AS post_id1_1_0_, tags0_.tag_id AS tag_id2_1_0_, tag1_.id AS id1_3_1_, tag1_.created_at AS created_2_3_1_, tag1_.updated_at AS updated_3_3_1_
  	, tag1_.name AS name4_3_1_
  FROM posts_tags tags0_
  	INNER JOIN tags tag1_ ON tags0_.tag_id = tag1_.id
  WHERE tags0_.post_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts_tags", "post_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 47, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn29

end

function API_13_POST_admin_posts_x_1(_con)
  local _api = "POST /admin/posts/4"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_30
  -- line 48
  _sql = [[
  SELECT post0_.id AS id1_0_0_, post0_.created_at AS created_2_0_0_, post0_.updated_at AS updated_3_0_0_, post0_.content AS content4_0_0_, post0_.permalink AS permalin5_0_0_
  	, post0_.post_format AS post_for6_0_0_, post0_.post_status AS post_sta7_0_0_, post0_.post_type AS post_typ8_0_0_, post0_.rendered_content AS rendered9_0_0_, post0_.rendered_summary AS rendere10_0_0_
  	, post0_.summary AS summary11_0_0_, post0_.title AS title12_0_0_, post0_.user_id AS user_id14_0_0_, post0_.views AS views13_0_0_, user1_.id AS id1_4_1_
  	, user1_.created_at AS created_2_4_1_, user1_.updated_at AS updated_3_4_1_, user1_.email AS email4_4_1_, user1_.password AS password5_4_1_, user1_.role AS role6_4_1_
  FROM posts post0_
  	LEFT JOIN users user1_ ON post0_.user_id = user1_.id
  WHERE post0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 48, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn30

  -- start txn_31
  -- line 49
  _sql = [[
  SELECT tag0_.id AS id1_3_, tag0_.created_at AS created_2_3_, tag0_.updated_at AS updated_3_3_, tag0_.name AS name4_3_
  FROM tags tag0_
  WHERE tag0_.name = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "tags", "name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 49, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn31

  -- start txn_32
  -- line 50 (ignored write)
  -- line 51 (ignored write)
  -- line 52 (ignored write)
  -- end txn32

end

function API_14_POST_admin_posts_x_1(_con)
  local _api = "POST /admin/posts/3"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_33
  -- line 53
  _sql = [[
  SELECT post0_.id AS id1_0_0_, post0_.created_at AS created_2_0_0_, post0_.updated_at AS updated_3_0_0_, post0_.content AS content4_0_0_, post0_.permalink AS permalin5_0_0_
  	, post0_.post_format AS post_for6_0_0_, post0_.post_status AS post_sta7_0_0_, post0_.post_type AS post_typ8_0_0_, post0_.rendered_content AS rendered9_0_0_, post0_.rendered_summary AS rendere10_0_0_
  	, post0_.summary AS summary11_0_0_, post0_.title AS title12_0_0_, post0_.user_id AS user_id14_0_0_, post0_.views AS views13_0_0_, user1_.id AS id1_4_1_
  	, user1_.created_at AS created_2_4_1_, user1_.updated_at AS updated_3_4_1_, user1_.email AS email4_4_1_, user1_.password AS password5_4_1_, user1_.role AS role6_4_1_
  FROM posts post0_
  	LEFT JOIN users user1_ ON post0_.user_id = user1_.id
  WHERE post0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 53, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn33

  -- start txn_34
  -- line 54
  _sql = [[
  SELECT tag0_.id AS id1_3_, tag0_.created_at AS created_2_3_, tag0_.updated_at AS updated_3_3_, tag0_.name AS name4_3_
  FROM tags tag0_
  WHERE tag0_.name = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "tags", "name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 54, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- line 55
  _sql = [[
  SELECT tag0_.id AS id1_3_, tag0_.created_at AS created_2_3_, tag0_.updated_at AS updated_3_3_, tag0_.name AS name4_3_
  FROM tags tag0_
  WHERE tag0_.name = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "tags", "name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 55, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn34

  -- start txn_35
  -- line 56 (ignored write)
  -- line 57 (ignored write)
  -- line 58 (ignored write)
  -- line 59 (ignored write)
  -- end txn35

end

function API_15_POST_admin_posts_x_1(_con)
  local _api = "POST /admin/posts/2"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_36
  -- line 60
  _sql = [[
  SELECT post0_.id AS id1_0_0_, post0_.created_at AS created_2_0_0_, post0_.updated_at AS updated_3_0_0_, post0_.content AS content4_0_0_, post0_.permalink AS permalin5_0_0_
  	, post0_.post_format AS post_for6_0_0_, post0_.post_status AS post_sta7_0_0_, post0_.post_type AS post_typ8_0_0_, post0_.rendered_content AS rendered9_0_0_, post0_.rendered_summary AS rendere10_0_0_
  	, post0_.summary AS summary11_0_0_, post0_.title AS title12_0_0_, post0_.user_id AS user_id14_0_0_, post0_.views AS views13_0_0_, user1_.id AS id1_4_1_
  	, user1_.created_at AS created_2_4_1_, user1_.updated_at AS updated_3_4_1_, user1_.email AS email4_4_1_, user1_.password AS password5_4_1_, user1_.role AS role6_4_1_
  FROM posts post0_
  	LEFT JOIN users user1_ ON post0_.user_id = user1_.id
  WHERE post0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 60, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn36

  -- start txn_37
  -- line 61
  _sql = [[
  SELECT tag0_.id AS id1_3_, tag0_.created_at AS created_2_3_, tag0_.updated_at AS updated_3_3_, tag0_.name AS name4_3_
  FROM tags tag0_
  WHERE tag0_.name = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "tags", "name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 61, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- line 62 (ignored write)
  -- end txn37

  -- start txn_38
  -- line 63 (ignored write)
  -- line 64 (ignored write)
  -- line 65 (ignored write)
  -- end txn38

end

function API_15_POST_admin_posts_x_2(_con)
  local _api = "POST /admin/posts/2"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_39
  -- line 66
  _sql = [[
  SELECT post0_.id AS id1_0_0_, post0_.created_at AS created_2_0_0_, post0_.updated_at AS updated_3_0_0_, post0_.content AS content4_0_0_, post0_.permalink AS permalin5_0_0_
  	, post0_.post_format AS post_for6_0_0_, post0_.post_status AS post_sta7_0_0_, post0_.post_type AS post_typ8_0_0_, post0_.rendered_content AS rendered9_0_0_, post0_.rendered_summary AS rendere10_0_0_
  	, post0_.summary AS summary11_0_0_, post0_.title AS title12_0_0_, post0_.user_id AS user_id14_0_0_, post0_.views AS views13_0_0_, user1_.id AS id1_4_1_
  	, user1_.created_at AS created_2_4_1_, user1_.updated_at AS updated_3_4_1_, user1_.email AS email4_4_1_, user1_.password AS password5_4_1_, user1_.role AS role6_4_1_
  FROM posts post0_
  	LEFT JOIN users user1_ ON post0_.user_id = user1_.id
  WHERE post0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 66, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn39

  -- start txn_40
  -- line 67
  _sql = [[
  SELECT tag0_.id AS id1_3_, tag0_.created_at AS created_2_3_, tag0_.updated_at AS updated_3_3_, tag0_.name AS name4_3_
  FROM tags tag0_
  WHERE tag0_.name = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "tags", "name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 67, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- line 68 (ignored write)
  -- end txn40

  -- start txn_41
  -- line 69 (ignored write)
  -- line 70 (ignored write)
  -- line 71 (ignored write)
  -- end txn41

end

function API_16_POST_admin_posts_x_1(_con)
  local _api = "POST /admin/posts/1"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_42
  -- line 72
  _sql = [[
  SELECT post0_.id AS id1_0_0_, post0_.created_at AS created_2_0_0_, post0_.updated_at AS updated_3_0_0_, post0_.content AS content4_0_0_, post0_.permalink AS permalin5_0_0_
  	, post0_.post_format AS post_for6_0_0_, post0_.post_status AS post_sta7_0_0_, post0_.post_type AS post_typ8_0_0_, post0_.rendered_content AS rendered9_0_0_, post0_.rendered_summary AS rendere10_0_0_
  	, post0_.summary AS summary11_0_0_, post0_.title AS title12_0_0_, post0_.user_id AS user_id14_0_0_, post0_.views AS views13_0_0_, user1_.id AS id1_4_1_
  	, user1_.created_at AS created_2_4_1_, user1_.updated_at AS updated_3_4_1_, user1_.email AS email4_4_1_, user1_.password AS password5_4_1_, user1_.role AS role6_4_1_
  FROM posts post0_
  	LEFT JOIN users user1_ ON post0_.user_id = user1_.id
  WHERE post0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 72, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn42

  -- start txn_43
  -- line 73
  _sql = [[
  SELECT tag0_.id AS id1_3_, tag0_.created_at AS created_2_3_, tag0_.updated_at AS updated_3_3_, tag0_.name AS name4_3_
  FROM tags tag0_
  WHERE tag0_.name = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "tags", "name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 73, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn43

  -- start txn_44
  -- line 74 (ignored write)
  -- line 75 (ignored write)
  -- line 76 (ignored write)
  -- end txn44

end

function API_16_POST_admin_posts_x_2(_con)
  local _api = "POST /admin/posts/1"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_45
  -- line 77
  _sql = [[
  SELECT post0_.id AS id1_0_0_, post0_.created_at AS created_2_0_0_, post0_.updated_at AS updated_3_0_0_, post0_.content AS content4_0_0_, post0_.permalink AS permalin5_0_0_
  	, post0_.post_format AS post_for6_0_0_, post0_.post_status AS post_sta7_0_0_, post0_.post_type AS post_typ8_0_0_, post0_.rendered_content AS rendered9_0_0_, post0_.rendered_summary AS rendere10_0_0_
  	, post0_.summary AS summary11_0_0_, post0_.title AS title12_0_0_, post0_.user_id AS user_id14_0_0_, post0_.views AS views13_0_0_, user1_.id AS id1_4_1_
  	, user1_.created_at AS created_2_4_1_, user1_.updated_at AS updated_3_4_1_, user1_.email AS email4_4_1_, user1_.password AS password5_4_1_, user1_.role AS role6_4_1_
  FROM posts post0_
  	LEFT JOIN users user1_ ON post0_.user_id = user1_.id
  WHERE post0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 77, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn45

  -- start txn_46
  -- line 78
  _sql = [[
  SELECT tag0_.id AS id1_3_, tag0_.created_at AS created_2_3_, tag0_.updated_at AS updated_3_3_, tag0_.name AS name4_3_
  FROM tags tag0_
  WHERE tag0_.name = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "tags", "name", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 78, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- line 79 (ignored write)
  -- end txn46

  -- start txn_47
  -- line 80 (ignored write)
  -- line 81 (ignored write)
  -- line 82 (ignored write)
  -- end txn47

end

function API_17_POST_admin_settings_1(_con)
  local _api = "POST /admin/settings"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_48
  -- line 83
  _sql = [[
  SELECT setting0_.id AS id1_2_, setting0_.created_at AS created_2_2_, setting0_.updated_at AS updated_3_2_, setting0_._key AS _key4_2_, setting0_._value AS _value5_2_
  FROM settings setting0_
  WHERE setting0_._key = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "settings", "_key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 83, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- line 84 (ignored write)
  -- end txn48

  -- start txn_49
  -- line 85
  _sql = [[
  SELECT setting0_.id AS id1_2_, setting0_.created_at AS created_2_2_, setting0_.updated_at AS updated_3_2_, setting0_._key AS _key4_2_, setting0_._value AS _value5_2_
  FROM settings setting0_
  WHERE setting0_._key = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "settings", "_key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 85, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- line 86 (ignored write)
  -- end txn49

  -- start txn_50
  -- line 87
  _sql = [[
  SELECT setting0_.id AS id1_2_, setting0_.created_at AS created_2_2_, setting0_.updated_at AS updated_3_2_, setting0_._key AS _key4_2_, setting0_._value AS _value5_2_
  FROM settings setting0_
  WHERE setting0_._key = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "settings", "_key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 87, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- line 88 (ignored write)
  -- end txn50

end

function API_17_POST_admin_settings_2(_con)
  local _api = "POST /admin/settings"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_51
  -- line 89
  _sql = [[
  SELECT setting0_.id AS id1_2_, setting0_.created_at AS created_2_2_, setting0_.updated_at AS updated_3_2_, setting0_._key AS _key4_2_, setting0_._value AS _value5_2_
  FROM settings setting0_
  WHERE setting0_._key = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "settings", "_key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 89, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn51

  -- start txn_52
  -- line 90
  _sql = [[
  SELECT setting0_.id AS id1_2_, setting0_.created_at AS created_2_2_, setting0_.updated_at AS updated_3_2_, setting0_._key AS _key4_2_, setting0_._value AS _value5_2_
  FROM settings setting0_
  WHERE setting0_._key = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "settings", "_key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 90, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn52

  -- start txn_53
  -- line 91
  _sql = [[
  SELECT setting0_.id AS id1_2_, setting0_.created_at AS created_2_2_, setting0_.updated_at AS updated_3_2_, setting0_._key AS _key4_2_, setting0_._value AS _value5_2_
  FROM settings setting0_
  WHERE setting0_._key = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "settings", "_key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 91, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn53

end

function API_18_GET_admin_posts_x_edit_1(_con)
  local _api = "GET /admin/posts/1/edit"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_54
  -- line 92
  _sql = [[
  SELECT post0_.id AS id1_0_0_, post0_.created_at AS created_2_0_0_, post0_.updated_at AS updated_3_0_0_, post0_.content AS content4_0_0_, post0_.permalink AS permalin5_0_0_
  	, post0_.post_format AS post_for6_0_0_, post0_.post_status AS post_sta7_0_0_, post0_.post_type AS post_typ8_0_0_, post0_.rendered_content AS rendered9_0_0_, post0_.rendered_summary AS rendere10_0_0_
  	, post0_.summary AS summary11_0_0_, post0_.title AS title12_0_0_, post0_.user_id AS user_id14_0_0_, post0_.views AS views13_0_0_, user1_.id AS id1_4_1_
  	, user1_.created_at AS created_2_4_1_, user1_.updated_at AS updated_3_4_1_, user1_.email AS email4_4_1_, user1_.password AS password5_4_1_, user1_.role AS role6_4_1_
  FROM posts post0_
  	LEFT JOIN users user1_ ON post0_.user_id = user1_.id
  WHERE post0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 92, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn54

  -- start txn_55
  -- line 93
  _sql = [[
  SELECT tags0_.post_id AS post_id1_1_0_, tags0_.tag_id AS tag_id2_1_0_, tag1_.id AS id1_3_1_, tag1_.created_at AS created_2_3_1_, tag1_.updated_at AS updated_3_3_1_
  	, tag1_.name AS name4_3_1_
  FROM posts_tags tags0_
  	INNER JOIN tags tag1_ ON tags0_.tag_id = tag1_.id
  WHERE tags0_.post_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts_tags", "post_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 93, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn55

end

function API_19_GET_posts_postx_1(_con)
  local _api = "GET /posts/post4"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_56
  -- line 94
  _sql = [[
  SELECT post0_.id AS id1_0_, post0_.created_at AS created_2_0_, post0_.updated_at AS updated_3_0_, post0_.content AS content4_0_, post0_.permalink AS permalin5_0_
  	, post0_.post_format AS post_for6_0_, post0_.post_status AS post_sta7_0_, post0_.post_type AS post_typ8_0_, post0_.rendered_content AS rendered9_0_, post0_.rendered_summary AS rendere10_0_
  	, post0_.summary AS summary11_0_, post0_.title AS title12_0_, post0_.user_id AS user_id14_0_, post0_.views AS views13_0_
  FROM posts post0_
  WHERE post0_.permalink = %s
  	AND post0_.post_status = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts", "permalink", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "posts", "post_status", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 94, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- line 95
  _sql = [[
  SELECT user0_.id AS id1_4_0_, user0_.created_at AS created_2_4_0_, user0_.updated_at AS updated_3_4_0_, user0_.email AS email4_4_0_, user0_.password AS password5_4_0_
  	, user0_.role AS role6_4_0_
  FROM users user0_
  WHERE user0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "users", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 95, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn56

  -- start txn_57
  -- line 96 (ignored write)
  -- end txn57

  -- start txn_58
  -- line 97
  _sql = [[
  SELECT tags0_.post_id AS post_id1_1_0_, tags0_.tag_id AS tag_id2_1_0_, tag1_.id AS id1_3_1_, tag1_.created_at AS created_2_3_1_, tag1_.updated_at AS updated_3_3_1_
  	, tag1_.name AS name4_3_1_
  FROM posts_tags tags0_
  	INNER JOIN tags tag1_ ON tags0_.tag_id = tag1_.id
  WHERE tags0_.post_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts_tags", "post_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 97, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn58

end

function API_20_GET_admin_posts_x_edit_1(_con)
  local _api = "GET /admin/posts/2/edit"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_59
  -- line 98
  _sql = [[
  SELECT post0_.id AS id1_0_0_, post0_.created_at AS created_2_0_0_, post0_.updated_at AS updated_3_0_0_, post0_.content AS content4_0_0_, post0_.permalink AS permalin5_0_0_
  	, post0_.post_format AS post_for6_0_0_, post0_.post_status AS post_sta7_0_0_, post0_.post_type AS post_typ8_0_0_, post0_.rendered_content AS rendered9_0_0_, post0_.rendered_summary AS rendere10_0_0_
  	, post0_.summary AS summary11_0_0_, post0_.title AS title12_0_0_, post0_.user_id AS user_id14_0_0_, post0_.views AS views13_0_0_, user1_.id AS id1_4_1_
  	, user1_.created_at AS created_2_4_1_, user1_.updated_at AS updated_3_4_1_, user1_.email AS email4_4_1_, user1_.password AS password5_4_1_, user1_.role AS role6_4_1_
  FROM posts post0_
  	LEFT JOIN users user1_ ON post0_.user_id = user1_.id
  WHERE post0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 98, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn59

  -- start txn_60
  -- line 99
  _sql = [[
  SELECT tags0_.post_id AS post_id1_1_0_, tags0_.tag_id AS tag_id2_1_0_, tag1_.id AS id1_3_1_, tag1_.created_at AS created_2_3_1_, tag1_.updated_at AS updated_3_3_1_
  	, tag1_.name AS name4_3_1_
  FROM posts_tags tags0_
  	INNER JOIN tags tag1_ ON tags0_.tag_id = tag1_.id
  WHERE tags0_.post_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts_tags", "post_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 99, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn60

end

function API_21_GET_posts_postx_1(_con)
  local _api = "GET /posts/post3"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_61
  -- line 100
  _sql = [[
  SELECT post0_.id AS id1_0_, post0_.created_at AS created_2_0_, post0_.updated_at AS updated_3_0_, post0_.content AS content4_0_, post0_.permalink AS permalin5_0_
  	, post0_.post_format AS post_for6_0_, post0_.post_status AS post_sta7_0_, post0_.post_type AS post_typ8_0_, post0_.rendered_content AS rendered9_0_, post0_.rendered_summary AS rendere10_0_
  	, post0_.summary AS summary11_0_, post0_.title AS title12_0_, post0_.user_id AS user_id14_0_, post0_.views AS views13_0_
  FROM posts post0_
  WHERE post0_.permalink = %s
  	AND post0_.post_status = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts", "permalink", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "posts", "post_status", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 100, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- line 101
  _sql = [[
  SELECT user0_.id AS id1_4_0_, user0_.created_at AS created_2_4_0_, user0_.updated_at AS updated_3_4_0_, user0_.email AS email4_4_0_, user0_.password AS password5_4_0_
  	, user0_.role AS role6_4_0_
  FROM users user0_
  WHERE user0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "users", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 101, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn61

  -- start txn_62
  -- line 102 (ignored write)
  -- end txn62

  -- start txn_63
  -- line 103
  _sql = [[
  SELECT tags0_.post_id AS post_id1_1_0_, tags0_.tag_id AS tag_id2_1_0_, tag1_.id AS id1_3_1_, tag1_.created_at AS created_2_3_1_, tag1_.updated_at AS updated_3_3_1_
  	, tag1_.name AS name4_3_1_
  FROM posts_tags tags0_
  	INNER JOIN tags tag1_ ON tags0_.tag_id = tag1_.id
  WHERE tags0_.post_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts_tags", "post_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 103, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn63

end

function API_22_GET_admin_settings_1(_con)
  local _api = "GET /admin/settings"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_64
  -- line 104
  _sql = [[
  SELECT setting0_.id AS id1_2_, setting0_.created_at AS created_2_2_, setting0_.updated_at AS updated_3_2_, setting0_._key AS _key4_2_, setting0_._value AS _value5_2_
  FROM settings setting0_
  WHERE setting0_._key = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "settings", "_key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 104, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn64

end

function API_22_GET_admin_settings_2(_con)
  local _api = "GET /admin/settings"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_65
  -- line 105
  _sql = [[
  SELECT setting0_.id AS id1_2_, setting0_.created_at AS created_2_2_, setting0_.updated_at AS updated_3_2_, setting0_._key AS _key4_2_, setting0_._value AS _value5_2_
  FROM settings setting0_
  WHERE setting0_._key = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "settings", "_key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 105, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn65

  -- start txn_66
  -- line 106
  _sql = [[
  SELECT setting0_.id AS id1_2_, setting0_.created_at AS created_2_2_, setting0_.updated_at AS updated_3_2_, setting0_._key AS _key4_2_, setting0_._value AS _value5_2_
  FROM settings setting0_
  WHERE setting0_._key = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "settings", "_key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 106, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn66

  -- start txn_67
  -- line 107
  _sql = [[
  SELECT setting0_.id AS id1_2_, setting0_.created_at AS created_2_2_, setting0_.updated_at AS updated_3_2_, setting0_._key AS _key4_2_, setting0_._value AS _value5_2_
  FROM settings setting0_
  WHERE setting0_._key = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "settings", "_key", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 107, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn67

end

function API_23_GET_posts_postx_1(_con)
  local _api = "GET /posts/post1"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_68
  -- line 108
  _sql = [[
  SELECT post0_.id AS id1_0_, post0_.created_at AS created_2_0_, post0_.updated_at AS updated_3_0_, post0_.content AS content4_0_, post0_.permalink AS permalin5_0_
  	, post0_.post_format AS post_for6_0_, post0_.post_status AS post_sta7_0_, post0_.post_type AS post_typ8_0_, post0_.rendered_content AS rendered9_0_, post0_.rendered_summary AS rendere10_0_
  	, post0_.summary AS summary11_0_, post0_.title AS title12_0_, post0_.user_id AS user_id14_0_, post0_.views AS views13_0_
  FROM posts post0_
  WHERE post0_.permalink = %s
  	AND post0_.post_status = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts", "permalink", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "posts", "post_status", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 108, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- line 109
  _sql = [[
  SELECT user0_.id AS id1_4_0_, user0_.created_at AS created_2_4_0_, user0_.updated_at AS updated_3_4_0_, user0_.email AS email4_4_0_, user0_.password AS password5_4_0_
  	, user0_.role AS role6_4_0_
  FROM users user0_
  WHERE user0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "users", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 109, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn68

  -- start txn_69
  -- line 110 (ignored write)
  -- end txn69

  -- start txn_70
  -- line 111
  _sql = [[
  SELECT tags0_.post_id AS post_id1_1_0_, tags0_.tag_id AS tag_id2_1_0_, tag1_.id AS id1_3_1_, tag1_.created_at AS created_2_3_1_, tag1_.updated_at AS updated_3_3_1_
  	, tag1_.name AS name4_3_1_
  FROM posts_tags tags0_
  	INNER JOIN tags tag1_ ON tags0_.tag_id = tag1_.id
  WHERE tags0_.post_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts_tags", "post_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 111, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn70

end

function API_24_GET_posts_archive_1(_con)
  local _api = "GET /posts/archive"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- start txn_71
  -- line 112
  _sql = [[
  SELECT post0_.id AS id1_0_, post0_.created_at AS created_2_0_, post0_.updated_at AS updated_3_0_, post0_.content AS content4_0_, post0_.permalink AS permalin5_0_
  	, post0_.post_format AS post_for6_0_, post0_.post_status AS post_sta7_0_, post0_.post_type AS post_typ8_0_, post0_.rendered_content AS rendered9_0_, post0_.rendered_summary AS rendere10_0_
  	, post0_.summary AS summary11_0_, post0_.title AS title12_0_, post0_.user_id AS user_id14_0_, post0_.views AS views13_0_
  FROM posts post0_
  WHERE post0_.post_type = %s
  	AND post0_.post_status = %s
  ORDER BY post0_.created_at DESC
  LIMIT 2147483647
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "posts", "post_type", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "posts", "post_status", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 112, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- line 113
  _sql = [[
  SELECT user0_.id AS id1_4_0_, user0_.created_at AS created_2_4_0_, user0_.updated_at AS updated_3_4_0_, user0_.email AS email4_4_0_, user0_.password AS password5_4_0_
  	, user0_.role AS role6_4_0_
  FROM users user0_
  WHERE user0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "users", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 113, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
  collectgarbage()

  -- end txn71

end

