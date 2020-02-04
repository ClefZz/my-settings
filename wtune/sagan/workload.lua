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

function API_1_POST_admin_projects_spring_new_1(_con)
  local _api = "POST /admin/projects/spring-new"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 1
  _sql = [[
  SELECT project0_.id AS id1_3_0_, project0_.category AS category2_3_0_, project0_.display_order AS display_3_3_0_, project0_.name AS name4_3_0_, project0_.parent_project_id AS parent_12_3_0_
  	, project0_.raw_boot_config AS raw_boot5_3_0_, project0_.raw_overview AS raw_over6_3_0_, project0_.rendered_boot_config AS rendered7_3_0_, project0_.rendered_overview AS rendered8_3_0_, project0_.repo_url AS repo_url9_3_0_
  	, project0_.site_url AS site_ur10_3_0_, project0_.stack_overflow_tags AS stack_o11_3_0_, project1_.id AS id1_3_1_, project1_.category AS category2_3_1_, project1_.display_order AS display_3_3_1_
  	, project1_.name AS name4_3_1_, project1_.parent_project_id AS parent_12_3_1_, project1_.raw_boot_config AS raw_boot5_3_1_, project1_.raw_overview AS raw_over6_3_1_, project1_.rendered_boot_config AS rendered7_3_1_
  	, project1_.rendered_overview AS rendered8_3_1_, project1_.repo_url AS repo_url9_3_1_, project1_.site_url AS site_ur10_3_1_, project1_.stack_overflow_tags AS stack_o11_3_1_
  FROM project project0_
  	LEFT JOIN project project1_ ON project0_.parent_project_id = project1_.id
  WHERE project0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 1, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, true)

  -- line 2
  _sql = [[
  SELECT project0_.id AS id1_3_1_, project0_.category AS category2_3_1_, project0_.display_order AS display_3_3_1_, project0_.name AS name4_3_1_, project0_.parent_project_id AS parent_12_3_1_
  	, project0_.raw_boot_config AS raw_boot5_3_1_, project0_.raw_overview AS raw_over6_3_1_, project0_.rendered_boot_config AS rendered7_3_1_, project0_.rendered_overview AS rendered8_3_1_, project0_.repo_url AS repo_url9_3_1_
  	, project0_.site_url AS site_ur10_3_1_, project0_.stack_overflow_tags AS stack_o11_3_1_, releaselis1_.project_id AS project_1_4_3_, releaselis1_.api_doc_url AS api_doc_2_4_3_, releaselis1_.artifact_id AS artifact3_4_3_
  	, releaselis1_.group_id AS group_id4_4_3_, releaselis1_.is_current AS is_curre5_4_3_, releaselis1_.ref_doc_url AS ref_doc_6_4_3_, releaselis1_.release_status AS release_7_4_3_, releaselis1_.repository_id AS reposito8_4_3_
  	, releaselis1_.version_name AS version_9_4_3_, projectrep2_.id AS id1_6_0_, projectrep2_.name AS name2_6_0_, projectrep2_.snapshots_enabled AS snapshot3_6_0_, projectrep2_.url AS url4_6_0_
  FROM project project0_
  	LEFT JOIN project_release_list releaselis1_ ON project0_.id = releaselis1_.project_id
  	LEFT JOIN project_repository projectrep2_ ON releaselis1_.repository_id = projectrep2_.id
  WHERE project0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 2, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 3
  _sql = [[
  SELECT projectrep0_.id AS id1_6_0_, projectrep0_.name AS name2_6_0_, projectrep0_.snapshots_enabled AS snapshot3_6_0_, projectrep0_.url AS url4_6_0_
  FROM project_repository projectrep0_
  WHERE projectrep0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project_repository", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 3, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 4 (ignored write)-- line 5 (ignored write)  _commit_f(_con, true)
  
end

function API_2_GET_admin_blog_x_this_is_a_post_for_testing_x_1(_con)
  local _api = "GET /admin/blog/5-this-is-a-post-for-testing-3"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 6
  _sql = [[
  SELECT post0_.id AS id1_1_0_, post0_.author_id AS author_13_1_0_, post0_.broadcast AS broadcas2_1_0_, post0_.category AS category3_1_0_, post0_.created_at AS created_4_1_0_
  	, post0_.draft AS draft5_1_0_, post0_.format AS format6_1_0_, post0_.public_slug AS public_s7_1_0_, post0_.publish_at AS publish_8_1_0_, post0_.raw_content AS raw_cont9_1_0_
  	, post0_.rendered_content AS rendere10_1_0_, post0_.rendered_summary AS rendere11_1_0_, post0_.title AS title12_1_0_, memberprof1_.id AS id1_0_1_, memberprof1_.avatar_url AS avatar_u2_0_1_
  	, memberprof1_.bio AS bio3_0_1_, memberprof1_.latitude AS latitude4_0_1_, memberprof1_.longitude AS longitud5_0_1_, memberprof1_.github_id AS github_i6_0_1_, memberprof1_.github_username AS github_u7_0_1_
  	, memberprof1_.gravatar_email AS gravatar8_0_1_, memberprof1_.hidden AS hidden9_0_1_, memberprof1_.job_title AS job_tit10_0_1_, memberprof1_.lanyrd_username AS lanyrd_11_0_1_, memberprof1_.location AS locatio12_0_1_
  	, memberprof1_.name AS name13_0_1_, memberprof1_.speakerdeck_username AS speaker14_0_1_, memberprof1_.twitter_username AS twitter15_0_1_, memberprof1_.username AS usernam16_0_1_, memberprof1_.video_embeds AS video_e17_0_1_
  FROM post post0_
  	INNER JOIN member_profile memberprof1_ ON post0_.author_id = memberprof1_.id
  WHERE post0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 6, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_3_GET_team__1(_con)
  local _api = "GET /team/"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 7
  _sql = [[
  SELECT memberprof0_.id AS id1_0_, memberprof0_.avatar_url AS avatar_u2_0_, memberprof0_.bio AS bio3_0_, memberprof0_.latitude AS latitude4_0_, memberprof0_.longitude AS longitud5_0_
  	, memberprof0_.github_id AS github_i6_0_, memberprof0_.github_username AS github_u7_0_, memberprof0_.gravatar_email AS gravatar8_0_, memberprof0_.hidden AS hidden9_0_, memberprof0_.job_title AS job_tit10_0_
  	, memberprof0_.lanyrd_username AS lanyrd_11_0_, memberprof0_.location AS locatio12_0_, memberprof0_.name AS name13_0_, memberprof0_.speakerdeck_username AS speaker14_0_, memberprof0_.twitter_username AS twitter15_0_
  	, memberprof0_.username AS usernam16_0_, memberprof0_.video_embeds AS video_e17_0_
  FROM member_profile memberprof0_
  WHERE memberprof0_.hidden = %s
  ORDER BY memberprof0_.name ASC
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "member_profile", "hidden", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 7, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_4_GET_admin_blog_x_this_is_a_post_for_testing_x_edit_1(_con)
  local _api = "GET /admin/blog/5-this-is-a-post-for-testing-3/edit"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 8
  _sql = [[
  SELECT post0_.id AS id1_1_0_, post0_.author_id AS author_13_1_0_, post0_.broadcast AS broadcas2_1_0_, post0_.category AS category3_1_0_, post0_.created_at AS created_4_1_0_
  	, post0_.draft AS draft5_1_0_, post0_.format AS format6_1_0_, post0_.public_slug AS public_s7_1_0_, post0_.publish_at AS publish_8_1_0_, post0_.raw_content AS raw_cont9_1_0_
  	, post0_.rendered_content AS rendere10_1_0_, post0_.rendered_summary AS rendere11_1_0_, post0_.title AS title12_1_0_, memberprof1_.id AS id1_0_1_, memberprof1_.avatar_url AS avatar_u2_0_1_
  	, memberprof1_.bio AS bio3_0_1_, memberprof1_.latitude AS latitude4_0_1_, memberprof1_.longitude AS longitud5_0_1_, memberprof1_.github_id AS github_i6_0_1_, memberprof1_.github_username AS github_u7_0_1_
  	, memberprof1_.gravatar_email AS gravatar8_0_1_, memberprof1_.hidden AS hidden9_0_1_, memberprof1_.job_title AS job_tit10_0_1_, memberprof1_.lanyrd_username AS lanyrd_11_0_1_, memberprof1_.location AS locatio12_0_1_
  	, memberprof1_.name AS name13_0_1_, memberprof1_.speakerdeck_username AS speaker14_0_1_, memberprof1_.twitter_username AS twitter15_0_1_, memberprof1_.username AS usernam16_0_1_, memberprof1_.video_embeds AS video_e17_0_1_
  FROM post post0_
  	INNER JOIN member_profile memberprof1_ ON post0_.author_id = memberprof1_.id
  WHERE post0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 8, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_5_GET_admin_team_1(_con)
  local _api = "GET /admin/team"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 9
  _sql = [[
  SELECT memberprof0_.id AS id1_0_, memberprof0_.avatar_url AS avatar_u2_0_, memberprof0_.bio AS bio3_0_, memberprof0_.latitude AS latitude4_0_, memberprof0_.longitude AS longitud5_0_
  	, memberprof0_.github_id AS github_i6_0_, memberprof0_.github_username AS github_u7_0_, memberprof0_.gravatar_email AS gravatar8_0_, memberprof0_.hidden AS hidden9_0_, memberprof0_.job_title AS job_tit10_0_
  	, memberprof0_.lanyrd_username AS lanyrd_11_0_, memberprof0_.location AS locatio12_0_, memberprof0_.name AS name13_0_, memberprof0_.speakerdeck_username AS speaker14_0_, memberprof0_.twitter_username AS twitter15_0_
  	, memberprof0_.username AS usernam16_0_, memberprof0_.video_embeds AS video_e17_0_
  FROM member_profile memberprof0_
  WHERE memberprof0_.hidden = %s
  ORDER BY memberprof0_.name ASC
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "member_profile", "hidden", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 9, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 10
  _sql = [[
  SELECT memberprof0_.id AS id1_0_, memberprof0_.avatar_url AS avatar_u2_0_, memberprof0_.bio AS bio3_0_, memberprof0_.latitude AS latitude4_0_, memberprof0_.longitude AS longitud5_0_
  	, memberprof0_.github_id AS github_i6_0_, memberprof0_.github_username AS github_u7_0_, memberprof0_.gravatar_email AS gravatar8_0_, memberprof0_.hidden AS hidden9_0_, memberprof0_.job_title AS job_tit10_0_
  	, memberprof0_.lanyrd_username AS lanyrd_11_0_, memberprof0_.location AS locatio12_0_, memberprof0_.name AS name13_0_, memberprof0_.speakerdeck_username AS speaker14_0_, memberprof0_.twitter_username AS twitter15_0_
  	, memberprof0_.username AS usernam16_0_, memberprof0_.video_embeds AS video_e17_0_
  FROM member_profile memberprof0_
  WHERE memberprof0_.hidden = %s
  ORDER BY memberprof0_.name ASC
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "member_profile", "hidden", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 10, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_6_POST_admin_tools_new_platform_1(_con)
  local _api = "POST /admin/tools/new-platform"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 11
  _sql = [[
  SELECT springtool0_.id AS id1_7_0_
  FROM spring_tools_platform springtool0_
  WHERE springtool0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "spring_tools_platform", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 11, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 12 (ignored write)  _commit_f(_con, true)
  
end

function API_7_DELETE_admin_projects_spring_new_1(_con)
  local _api = "DELETE /admin/projects/spring-new"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 13
  _sql = [[
  SELECT project0_.id AS id1_3_0_, project0_.category AS category2_3_0_, project0_.display_order AS display_3_3_0_, project0_.name AS name4_3_0_, project0_.parent_project_id AS parent_12_3_0_
  	, project0_.raw_boot_config AS raw_boot5_3_0_, project0_.raw_overview AS raw_over6_3_0_, project0_.rendered_boot_config AS rendered7_3_0_, project0_.rendered_overview AS rendered8_3_0_, project0_.repo_url AS repo_url9_3_0_
  	, project0_.site_url AS site_ur10_3_0_, project0_.stack_overflow_tags AS stack_o11_3_0_, project1_.id AS id1_3_1_, project1_.category AS category2_3_1_, project1_.display_order AS display_3_3_1_
  	, project1_.name AS name4_3_1_, project1_.parent_project_id AS parent_12_3_1_, project1_.raw_boot_config AS raw_boot5_3_1_, project1_.raw_overview AS raw_over6_3_1_, project1_.rendered_boot_config AS rendered7_3_1_
  	, project1_.rendered_overview AS rendered8_3_1_, project1_.repo_url AS repo_url9_3_1_, project1_.site_url AS site_ur10_3_1_, project1_.stack_overflow_tags AS stack_o11_3_1_
  FROM project project0_
  	LEFT JOIN project project1_ ON project0_.parent_project_id = project1_.id
  WHERE project0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 13, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 14
  _sql = [[
  SELECT releaselis0_.project_id AS project_1_4_0_, releaselis0_.api_doc_url AS api_doc_2_4_0_, releaselis0_.artifact_id AS artifact3_4_0_, releaselis0_.group_id AS group_id4_4_0_, releaselis0_.is_current AS is_curre5_4_0_
  	, releaselis0_.ref_doc_url AS ref_doc_6_4_0_, releaselis0_.release_status AS release_7_4_0_, releaselis0_.repository_id AS reposito8_4_0_, releaselis0_.version_name AS version_9_4_0_, projectrep1_.id AS id1_6_1_
  	, projectrep1_.name AS name2_6_1_, projectrep1_.snapshots_enabled AS snapshot3_6_1_, projectrep1_.url AS url4_6_1_
  FROM project_release_list releaselis0_
  	LEFT JOIN project_repository projectrep1_ ON releaselis0_.repository_id = projectrep1_.id
  WHERE releaselis0_.project_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project_release_list", "project_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 14, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 15 (ignored write)-- line 16 (ignored write)-- line 17 (ignored write)  _commit_f(_con, true)
  
end

function API_8_GET_blog_x_x_x_post_1(_con)
  local _api = "GET /blog/2019/10/24/post"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 18
  _sql = [[
  SELECT post0_.id AS id1_1_, post0_.author_id AS author_13_1_, post0_.broadcast AS broadcas2_1_, post0_.category AS category3_1_, post0_.created_at AS created_4_1_
  	, post0_.draft AS draft5_1_, post0_.format AS format6_1_, post0_.public_slug AS public_s7_1_, post0_.publish_at AS publish_8_1_, post0_.raw_content AS raw_cont9_1_
  	, post0_.rendered_content AS rendere10_1_, post0_.rendered_summary AS rendere11_1_, post0_.title AS title12_1_
  FROM post post0_
  WHERE post0_.public_slug = %s
  	AND post0_.draft = %s
  	AND post0_.publish_at < %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "public_slug", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "post", "draft", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "post", "publish_at", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 18, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 19
  _sql = [[
  SELECT memberprof0_.id AS id1_0_0_, memberprof0_.avatar_url AS avatar_u2_0_0_, memberprof0_.bio AS bio3_0_0_, memberprof0_.latitude AS latitude4_0_0_, memberprof0_.longitude AS longitud5_0_0_
  	, memberprof0_.github_id AS github_i6_0_0_, memberprof0_.github_username AS github_u7_0_0_, memberprof0_.gravatar_email AS gravatar8_0_0_, memberprof0_.hidden AS hidden9_0_0_, memberprof0_.job_title AS job_tit10_0_0_
  	, memberprof0_.lanyrd_username AS lanyrd_11_0_0_, memberprof0_.location AS locatio12_0_0_, memberprof0_.name AS name13_0_0_, memberprof0_.speakerdeck_username AS speaker14_0_0_, memberprof0_.twitter_username AS twitter15_0_0_
  	, memberprof0_.username AS usernam16_0_0_, memberprof0_.video_embeds AS video_e17_0_0_
  FROM member_profile memberprof0_
  WHERE memberprof0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "member_profile", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 19, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_9_POST_admin_projects_spring_ipads_1(_con)
  local _api = "POST /admin/projects/spring-ipads"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 20
  _sql = [[
  SELECT project0_.id AS id1_3_0_, project0_.category AS category2_3_0_, project0_.display_order AS display_3_3_0_, project0_.name AS name4_3_0_, project0_.parent_project_id AS parent_12_3_0_
  	, project0_.raw_boot_config AS raw_boot5_3_0_, project0_.raw_overview AS raw_over6_3_0_, project0_.rendered_boot_config AS rendered7_3_0_, project0_.rendered_overview AS rendered8_3_0_, project0_.repo_url AS repo_url9_3_0_
  	, project0_.site_url AS site_ur10_3_0_, project0_.stack_overflow_tags AS stack_o11_3_0_, project1_.id AS id1_3_1_, project1_.category AS category2_3_1_, project1_.display_order AS display_3_3_1_
  	, project1_.name AS name4_3_1_, project1_.parent_project_id AS parent_12_3_1_, project1_.raw_boot_config AS raw_boot5_3_1_, project1_.raw_overview AS raw_over6_3_1_, project1_.rendered_boot_config AS rendered7_3_1_
  	, project1_.rendered_overview AS rendered8_3_1_, project1_.repo_url AS repo_url9_3_1_, project1_.site_url AS site_ur10_3_1_, project1_.stack_overflow_tags AS stack_o11_3_1_
  FROM project project0_
  	LEFT JOIN project project1_ ON project0_.parent_project_id = project1_.id
  WHERE project0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 20, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, true)

  -- line 21
  _sql = [[
  SELECT project0_.id AS id1_3_1_, project0_.category AS category2_3_1_, project0_.display_order AS display_3_3_1_, project0_.name AS name4_3_1_, project0_.parent_project_id AS parent_12_3_1_
  	, project0_.raw_boot_config AS raw_boot5_3_1_, project0_.raw_overview AS raw_over6_3_1_, project0_.rendered_boot_config AS rendered7_3_1_, project0_.rendered_overview AS rendered8_3_1_, project0_.repo_url AS repo_url9_3_1_
  	, project0_.site_url AS site_ur10_3_1_, project0_.stack_overflow_tags AS stack_o11_3_1_, releaselis1_.project_id AS project_1_4_3_, releaselis1_.api_doc_url AS api_doc_2_4_3_, releaselis1_.artifact_id AS artifact3_4_3_
  	, releaselis1_.group_id AS group_id4_4_3_, releaselis1_.is_current AS is_curre5_4_3_, releaselis1_.ref_doc_url AS ref_doc_6_4_3_, releaselis1_.release_status AS release_7_4_3_, releaselis1_.repository_id AS reposito8_4_3_
  	, releaselis1_.version_name AS version_9_4_3_, projectrep2_.id AS id1_6_0_, projectrep2_.name AS name2_6_0_, projectrep2_.snapshots_enabled AS snapshot3_6_0_, projectrep2_.url AS url4_6_0_
  FROM project project0_
  	LEFT JOIN project_release_list releaselis1_ ON project0_.id = releaselis1_.project_id
  	LEFT JOIN project_repository projectrep2_ ON releaselis1_.repository_id = projectrep2_.id
  WHERE project0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 21, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 22
  _sql = [[
  SELECT samplelist0_.project_id AS project_1_5_0_, samplelist0_.description AS descript2_5_0_, samplelist0_.display_order AS display_3_5_0_, samplelist0_.title AS title4_5_0_, samplelist0_.url AS url5_5_0_
  FROM project_sample_list samplelist0_
  WHERE samplelist0_.project_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project_sample_list", "project_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 22, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 23 (ignored write)-- line 24 (ignored write)  _commit_f(_con, true)
  
end

function API_10_GET_admin_team_ClefZz_1(_con)
  local _api = "GET /admin/team/ClefZz"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 25
  _sql = [[
  SELECT memberprof0_.id AS id1_0_, memberprof0_.avatar_url AS avatar_u2_0_, memberprof0_.bio AS bio3_0_, memberprof0_.latitude AS latitude4_0_, memberprof0_.longitude AS longitud5_0_
  	, memberprof0_.github_id AS github_i6_0_, memberprof0_.github_username AS github_u7_0_, memberprof0_.gravatar_email AS gravatar8_0_, memberprof0_.hidden AS hidden9_0_, memberprof0_.job_title AS job_tit10_0_
  	, memberprof0_.lanyrd_username AS lanyrd_11_0_, memberprof0_.location AS locatio12_0_, memberprof0_.name AS name13_0_, memberprof0_.speakerdeck_username AS speaker14_0_, memberprof0_.twitter_username AS twitter15_0_
  	, memberprof0_.username AS usernam16_0_, memberprof0_.video_embeds AS video_e17_0_
  FROM member_profile memberprof0_
  WHERE memberprof0_.username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "member_profile", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 25, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_11_GET_blog_category_engineering_1(_con)
  local _api = "GET /blog/category/engineering"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 26
  _sql = [[
  SELECT post0_.id AS id1_1_, post0_.author_id AS author_13_1_, post0_.broadcast AS broadcas2_1_, post0_.category AS category3_1_, post0_.created_at AS created_4_1_
  	, post0_.draft AS draft5_1_, post0_.format AS format6_1_, post0_.public_slug AS public_s7_1_, post0_.publish_at AS publish_8_1_, post0_.raw_content AS raw_cont9_1_
  	, post0_.rendered_content AS rendere10_1_, post0_.rendered_summary AS rendere11_1_, post0_.title AS title12_1_
  FROM post post0_
  WHERE post0_.category = %s
  	AND post0_.draft = %s
  	AND post0_.publish_at < %s
  ORDER BY post0_.publish_at DESC
  LIMIT 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "category", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "post", "draft", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "post", "publish_at", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 26, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 27
  _sql = [[
  SELECT memberprof0_.id AS id1_0_0_, memberprof0_.avatar_url AS avatar_u2_0_0_, memberprof0_.bio AS bio3_0_0_, memberprof0_.latitude AS latitude4_0_0_, memberprof0_.longitude AS longitud5_0_0_
  	, memberprof0_.github_id AS github_i6_0_0_, memberprof0_.github_username AS github_u7_0_0_, memberprof0_.gravatar_email AS gravatar8_0_0_, memberprof0_.hidden AS hidden9_0_0_, memberprof0_.job_title AS job_tit10_0_0_
  	, memberprof0_.lanyrd_username AS lanyrd_11_0_0_, memberprof0_.location AS locatio12_0_0_, memberprof0_.name AS name13_0_0_, memberprof0_.speakerdeck_username AS speaker14_0_0_, memberprof0_.twitter_username AS twitter15_0_0_
  	, memberprof0_.username AS usernam16_0_0_, memberprof0_.video_embeds AS video_e17_0_0_
  FROM member_profile memberprof0_
  WHERE memberprof0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "member_profile", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 27, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_12_GET_admin_projects_spring_boot_1(_con)
  local _api = "GET /admin/projects/spring-boot"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 28
  _sql = [[
  SELECT project0_.id AS id1_3_0_, project0_.category AS category2_3_0_, project0_.display_order AS display_3_3_0_, project0_.name AS name4_3_0_, project0_.parent_project_id AS parent_12_3_0_
  	, project0_.raw_boot_config AS raw_boot5_3_0_, project0_.raw_overview AS raw_over6_3_0_, project0_.rendered_boot_config AS rendered7_3_0_, project0_.rendered_overview AS rendered8_3_0_, project0_.repo_url AS repo_url9_3_0_
  	, project0_.site_url AS site_ur10_3_0_, project0_.stack_overflow_tags AS stack_o11_3_0_, project1_.id AS id1_3_1_, project1_.category AS category2_3_1_, project1_.display_order AS display_3_3_1_
  	, project1_.name AS name4_3_1_, project1_.parent_project_id AS parent_12_3_1_, project1_.raw_boot_config AS raw_boot5_3_1_, project1_.raw_overview AS raw_over6_3_1_, project1_.rendered_boot_config AS rendered7_3_1_
  	, project1_.rendered_overview AS rendered8_3_1_, project1_.repo_url AS repo_url9_3_1_, project1_.site_url AS site_ur10_3_1_, project1_.stack_overflow_tags AS stack_o11_3_1_
  FROM project project0_
  	LEFT JOIN project project1_ ON project0_.parent_project_id = project1_.id
  WHERE project0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 28, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  -- line 29
  _sql = [[
  SELECT releaselis0_.project_id AS project_1_4_0_, releaselis0_.api_doc_url AS api_doc_2_4_0_, releaselis0_.artifact_id AS artifact3_4_0_, releaselis0_.group_id AS group_id4_4_0_, releaselis0_.is_current AS is_curre5_4_0_
  	, releaselis0_.ref_doc_url AS ref_doc_6_4_0_, releaselis0_.release_status AS release_7_4_0_, releaselis0_.repository_id AS reposito8_4_0_, releaselis0_.version_name AS version_9_4_0_, projectrep1_.id AS id1_6_1_
  	, projectrep1_.name AS name2_6_1_, projectrep1_.snapshots_enabled AS snapshot3_6_1_, projectrep1_.url AS url4_6_1_
  FROM project_release_list releaselis0_
  	LEFT JOIN project_repository projectrep1_ ON releaselis0_.repository_id = projectrep1_.id
  WHERE releaselis0_.project_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project_release_list", "project_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 29, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 30
  _sql = [[
  SELECT samplelist0_.project_id AS project_1_5_0_, samplelist0_.description AS descript2_5_0_, samplelist0_.display_order AS display_3_5_0_, samplelist0_.title AS title4_5_0_, samplelist0_.url AS url5_5_0_
  FROM project_sample_list samplelist0_
  WHERE samplelist0_.project_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project_sample_list", "project_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 30, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_13_POST_admin_tools_acme_1(_con)
  local _api = "POST /admin/tools/acme"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 31
  _sql = [[
  SELECT springtool0_.id AS id1_7_0_
  FROM spring_tools_platform springtool0_
  WHERE springtool0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "spring_tools_platform", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 31, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 32 (ignored write)  _commit_f(_con, true)
  
end

function API_14_GET_admin_projects_1(_con)
  local _api = "GET /admin/projects"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 33
  _sql = [[
  SELECT project0_.id AS id1_3_, project0_.category AS category2_3_, project0_.display_order AS display_3_3_, project0_.name AS name4_3_, project0_.parent_project_id AS parent_12_3_
  	, project0_.raw_boot_config AS raw_boot5_3_, project0_.raw_overview AS raw_over6_3_, project0_.rendered_boot_config AS rendered7_3_, project0_.rendered_overview AS rendered8_3_, project0_.repo_url AS repo_url9_3_
  	, project0_.site_url AS site_ur10_3_, project0_.stack_overflow_tags AS stack_o11_3_
  FROM project project0_
  ORDER BY project0_.display_order ASC, project0_.id ASC
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 33, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_15_GET_signin_github_1(_con)
  local _api = "GET /signin/github"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 34
  _sql = [[
  SELECT memberprof0_.id AS id1_0_, memberprof0_.avatar_url AS avatar_u2_0_, memberprof0_.bio AS bio3_0_, memberprof0_.latitude AS latitude4_0_, memberprof0_.longitude AS longitud5_0_
  	, memberprof0_.github_id AS github_i6_0_, memberprof0_.github_username AS github_u7_0_, memberprof0_.gravatar_email AS gravatar8_0_, memberprof0_.hidden AS hidden9_0_, memberprof0_.job_title AS job_tit10_0_
  	, memberprof0_.lanyrd_username AS lanyrd_11_0_, memberprof0_.location AS locatio12_0_, memberprof0_.name AS name13_0_, memberprof0_.speakerdeck_username AS speaker14_0_, memberprof0_.twitter_username AS twitter15_0_
  	, memberprof0_.username AS usernam16_0_, memberprof0_.video_embeds AS video_e17_0_
  FROM member_profile memberprof0_
  WHERE memberprof0_.github_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "member_profile", "github_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 34, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_16_GET_admin_projects_spring_framework_1(_con)
  local _api = "GET /admin/projects/spring-framework"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 35
  _sql = [[
  SELECT project0_.id AS id1_3_0_, project0_.category AS category2_3_0_, project0_.display_order AS display_3_3_0_, project0_.name AS name4_3_0_, project0_.parent_project_id AS parent_12_3_0_
  	, project0_.raw_boot_config AS raw_boot5_3_0_, project0_.raw_overview AS raw_over6_3_0_, project0_.rendered_boot_config AS rendered7_3_0_, project0_.rendered_overview AS rendered8_3_0_, project0_.repo_url AS repo_url9_3_0_
  	, project0_.site_url AS site_ur10_3_0_, project0_.stack_overflow_tags AS stack_o11_3_0_, project1_.id AS id1_3_1_, project1_.category AS category2_3_1_, project1_.display_order AS display_3_3_1_
  	, project1_.name AS name4_3_1_, project1_.parent_project_id AS parent_12_3_1_, project1_.raw_boot_config AS raw_boot5_3_1_, project1_.raw_overview AS raw_over6_3_1_, project1_.rendered_boot_config AS rendered7_3_1_
  	, project1_.rendered_overview AS rendered8_3_1_, project1_.repo_url AS repo_url9_3_1_, project1_.site_url AS site_ur10_3_1_, project1_.stack_overflow_tags AS stack_o11_3_1_
  FROM project project0_
  	LEFT JOIN project project1_ ON project0_.parent_project_id = project1_.id
  WHERE project0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 35, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  -- line 36
  _sql = [[
  SELECT releaselis0_.project_id AS project_1_4_0_, releaselis0_.api_doc_url AS api_doc_2_4_0_, releaselis0_.artifact_id AS artifact3_4_0_, releaselis0_.group_id AS group_id4_4_0_, releaselis0_.is_current AS is_curre5_4_0_
  	, releaselis0_.ref_doc_url AS ref_doc_6_4_0_, releaselis0_.release_status AS release_7_4_0_, releaselis0_.repository_id AS reposito8_4_0_, releaselis0_.version_name AS version_9_4_0_, projectrep1_.id AS id1_6_1_
  	, projectrep1_.name AS name2_6_1_, projectrep1_.snapshots_enabled AS snapshot3_6_1_, projectrep1_.url AS url4_6_1_
  FROM project_release_list releaselis0_
  	LEFT JOIN project_repository projectrep1_ ON releaselis0_.repository_id = projectrep1_.id
  WHERE releaselis0_.project_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project_release_list", "project_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 36, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 37
  _sql = [[
  SELECT samplelist0_.project_id AS project_1_5_0_, samplelist0_.description AS descript2_5_0_, samplelist0_.display_order AS display_3_5_0_, samplelist0_.title AS title4_5_0_, samplelist0_.url AS url5_5_0_
  FROM project_sample_list samplelist0_
  WHERE samplelist0_.project_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project_sample_list", "project_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 37, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_17_DELETE_admin_tools_acme_platform_1(_con)
  local _api = "DELETE /admin/tools/acme-platform"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 38
  _sql = [[
  SELECT springtool0_.id AS id1_7_0_
  FROM spring_tools_platform springtool0_
  WHERE springtool0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "spring_tools_platform", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 38, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 39 (ignored write)-- line 40 (ignored write)  _commit_f(_con, true)
  
end

function API_18_GET_team_1(_con)
  local _api = "GET /team"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 41
  _sql = [[
  SELECT memberprof0_.id AS id1_0_, memberprof0_.avatar_url AS avatar_u2_0_, memberprof0_.bio AS bio3_0_, memberprof0_.latitude AS latitude4_0_, memberprof0_.longitude AS longitud5_0_
  	, memberprof0_.github_id AS github_i6_0_, memberprof0_.github_username AS github_u7_0_, memberprof0_.gravatar_email AS gravatar8_0_, memberprof0_.hidden AS hidden9_0_, memberprof0_.job_title AS job_tit10_0_
  	, memberprof0_.lanyrd_username AS lanyrd_11_0_, memberprof0_.location AS locatio12_0_, memberprof0_.name AS name13_0_, memberprof0_.speakerdeck_username AS speaker14_0_, memberprof0_.twitter_username AS twitter15_0_
  	, memberprof0_.username AS usernam16_0_, memberprof0_.video_embeds AS video_e17_0_
  FROM member_profile memberprof0_
  WHERE memberprof0_.hidden = %s
  ORDER BY memberprof0_.name ASC
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "member_profile", "hidden", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 41, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_19_GET_admin_tools__1(_con)
  local _api = "GET /admin/tools/"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 42
  _sql = [[
  SELECT springtool0_.id AS id1_7_
  FROM spring_tools_platform springtool0_
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 42, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_20_PUT_admin_blog_x_edit_1(_con)
  local _api = "PUT /admin/blog/5/edit"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 43
  _sql = [[
  SELECT post0_.id AS id1_1_0_, post0_.author_id AS author_13_1_0_, post0_.broadcast AS broadcas2_1_0_, post0_.category AS category3_1_0_, post0_.created_at AS created_4_1_0_
  	, post0_.draft AS draft5_1_0_, post0_.format AS format6_1_0_, post0_.public_slug AS public_s7_1_0_, post0_.publish_at AS publish_8_1_0_, post0_.raw_content AS raw_cont9_1_0_
  	, post0_.rendered_content AS rendere10_1_0_, post0_.rendered_summary AS rendere11_1_0_, post0_.title AS title12_1_0_, memberprof1_.id AS id1_0_1_, memberprof1_.avatar_url AS avatar_u2_0_1_
  	, memberprof1_.bio AS bio3_0_1_, memberprof1_.latitude AS latitude4_0_1_, memberprof1_.longitude AS longitud5_0_1_, memberprof1_.github_id AS github_i6_0_1_, memberprof1_.github_username AS github_u7_0_1_
  	, memberprof1_.gravatar_email AS gravatar8_0_1_, memberprof1_.hidden AS hidden9_0_1_, memberprof1_.job_title AS job_tit10_0_1_, memberprof1_.lanyrd_username AS lanyrd_11_0_1_, memberprof1_.location AS locatio12_0_1_
  	, memberprof1_.name AS name13_0_1_, memberprof1_.speakerdeck_username AS speaker14_0_1_, memberprof1_.twitter_username AS twitter15_0_1_, memberprof1_.username AS usernam16_0_1_, memberprof1_.video_embeds AS video_e17_0_1_
  FROM post post0_
  	INNER JOIN member_profile memberprof1_ ON post0_.author_id = memberprof1_.id
  WHERE post0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 43, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_20_PUT_admin_blog_x_edit_2(_con)
  local _api = "PUT /admin/blog/5/edit"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 44
  _sql = [[
  SELECT post0_.id AS id1_1_0_, post0_.author_id AS author_13_1_0_, post0_.broadcast AS broadcas2_1_0_, post0_.category AS category3_1_0_, post0_.created_at AS created_4_1_0_
  	, post0_.draft AS draft5_1_0_, post0_.format AS format6_1_0_, post0_.public_slug AS public_s7_1_0_, post0_.publish_at AS publish_8_1_0_, post0_.raw_content AS raw_cont9_1_0_
  	, post0_.rendered_content AS rendere10_1_0_, post0_.rendered_summary AS rendere11_1_0_, post0_.title AS title12_1_0_, memberprof1_.id AS id1_0_1_, memberprof1_.avatar_url AS avatar_u2_0_1_
  	, memberprof1_.bio AS bio3_0_1_, memberprof1_.latitude AS latitude4_0_1_, memberprof1_.longitude AS longitud5_0_1_, memberprof1_.github_id AS github_i6_0_1_, memberprof1_.github_username AS github_u7_0_1_
  	, memberprof1_.gravatar_email AS gravatar8_0_1_, memberprof1_.hidden AS hidden9_0_1_, memberprof1_.job_title AS job_tit10_0_1_, memberprof1_.lanyrd_username AS lanyrd_11_0_1_, memberprof1_.location AS locatio12_0_1_
  	, memberprof1_.name AS name13_0_1_, memberprof1_.speakerdeck_username AS speaker14_0_1_, memberprof1_.twitter_username AS twitter15_0_1_, memberprof1_.username AS usernam16_0_1_, memberprof1_.video_embeds AS video_e17_0_1_
  FROM post post0_
  	INNER JOIN member_profile memberprof1_ ON post0_.author_id = memberprof1_.id
  WHERE post0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 44, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, false)

-- line 45 (ignored write)  _commit_f(_con, false)
  
end

function API_20_PUT_admin_blog_x_edit_3(_con)
  local _api = "PUT /admin/blog/5/edit"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 46
  _sql = [[
  SELECT post0_.id AS id1_1_0_, post0_.author_id AS author_13_1_0_, post0_.broadcast AS broadcas2_1_0_, post0_.category AS category3_1_0_, post0_.created_at AS created_4_1_0_
  	, post0_.draft AS draft5_1_0_, post0_.format AS format6_1_0_, post0_.public_slug AS public_s7_1_0_, post0_.publish_at AS publish_8_1_0_, post0_.raw_content AS raw_cont9_1_0_
  	, post0_.rendered_content AS rendere10_1_0_, post0_.rendered_summary AS rendere11_1_0_, post0_.title AS title12_1_0_, memberprof1_.id AS id1_0_1_, memberprof1_.avatar_url AS avatar_u2_0_1_
  	, memberprof1_.bio AS bio3_0_1_, memberprof1_.latitude AS latitude4_0_1_, memberprof1_.longitude AS longitud5_0_1_, memberprof1_.github_id AS github_i6_0_1_, memberprof1_.github_username AS github_u7_0_1_
  	, memberprof1_.gravatar_email AS gravatar8_0_1_, memberprof1_.hidden AS hidden9_0_1_, memberprof1_.job_title AS job_tit10_0_1_, memberprof1_.lanyrd_username AS lanyrd_11_0_1_, memberprof1_.location AS locatio12_0_1_
  	, memberprof1_.name AS name13_0_1_, memberprof1_.speakerdeck_username AS speaker14_0_1_, memberprof1_.twitter_username AS twitter15_0_1_, memberprof1_.username AS usernam16_0_1_, memberprof1_.video_embeds AS video_e17_0_1_
  FROM post post0_
  	INNER JOIN member_profile memberprof1_ ON post0_.author_id = memberprof1_.id
  WHERE post0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 46, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  -- line 47
  _sql = [[
  SELECT publicslug0_.post_id AS post_id1_2_0_, publicslug0_.public_slug_aliases AS public_s2_2_0_
  FROM post_public_slug_aliases publicslug0_
  WHERE publicslug0_.post_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post_public_slug_aliases", "post_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 47, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  _begin_f(_con, true)

-- line 48 (ignored write)-- line 49 (ignored write)  _commit_f(_con, true)
  
end

function API_20_PUT_admin_blog_x_edit_4(_con)
  local _api = "PUT /admin/blog/5/edit"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 50
  _sql = [[
  SELECT post0_.id AS id1_1_0_, post0_.author_id AS author_13_1_0_, post0_.broadcast AS broadcas2_1_0_, post0_.category AS category3_1_0_, post0_.created_at AS created_4_1_0_
  	, post0_.draft AS draft5_1_0_, post0_.format AS format6_1_0_, post0_.public_slug AS public_s7_1_0_, post0_.publish_at AS publish_8_1_0_, post0_.raw_content AS raw_cont9_1_0_
  	, post0_.rendered_content AS rendere10_1_0_, post0_.rendered_summary AS rendere11_1_0_, post0_.title AS title12_1_0_, memberprof1_.id AS id1_0_1_, memberprof1_.avatar_url AS avatar_u2_0_1_
  	, memberprof1_.bio AS bio3_0_1_, memberprof1_.latitude AS latitude4_0_1_, memberprof1_.longitude AS longitud5_0_1_, memberprof1_.github_id AS github_i6_0_1_, memberprof1_.github_username AS github_u7_0_1_
  	, memberprof1_.gravatar_email AS gravatar8_0_1_, memberprof1_.hidden AS hidden9_0_1_, memberprof1_.job_title AS job_tit10_0_1_, memberprof1_.lanyrd_username AS lanyrd_11_0_1_, memberprof1_.location AS locatio12_0_1_
  	, memberprof1_.name AS name13_0_1_, memberprof1_.speakerdeck_username AS speaker14_0_1_, memberprof1_.twitter_username AS twitter15_0_1_, memberprof1_.username AS usernam16_0_1_, memberprof1_.video_embeds AS video_e17_0_1_
  FROM post post0_
  	INNER JOIN member_profile memberprof1_ ON post0_.author_id = memberprof1_.id
  WHERE post0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 50, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  -- line 51
  _sql = [[
  SELECT publicslug0_.post_id AS post_id1_2_0_, publicslug0_.public_slug_aliases AS public_s2_2_0_
  FROM post_public_slug_aliases publicslug0_
  WHERE publicslug0_.post_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post_public_slug_aliases", "post_id", {"select", "where", "relation"}, nil}),
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

function API_21_GET_projects_1(_con)
  local _api = "GET /projects"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 53
  _sql = [[
  SELECT project0_.id AS id1_3_, project0_.category AS category2_3_, project0_.display_order AS display_3_3_, project0_.name AS name4_3_, project0_.parent_project_id AS parent_12_3_
  	, project0_.raw_boot_config AS raw_boot5_3_, project0_.raw_overview AS raw_over6_3_, project0_.rendered_boot_config AS rendered7_3_, project0_.rendered_overview AS rendered8_3_, project0_.repo_url AS repo_url9_3_
  	, project0_.site_url AS site_ur10_3_, project0_.stack_overflow_tags AS stack_o11_3_
  FROM project project0_
  ORDER BY project0_.display_order ASC, project0_.id ASC
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
  
end

function API_22_DELETE_admin_tools_eclipses_1(_con)
  local _api = "DELETE /admin/tools/eclipses"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 54
  _sql = [[
  SELECT springtool0_.id AS id1_7_0_
  FROM spring_tools_platform springtool0_
  WHERE springtool0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "spring_tools_platform", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 54, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 55 (ignored write)-- line 56 (ignored write)  _commit_f(_con, true)
  
end

function API_23_GET_blog_category_releases_1(_con)
  local _api = "GET /blog/category/releases"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 57
  _sql = [[
  SELECT post0_.id AS id1_1_, post0_.author_id AS author_13_1_, post0_.broadcast AS broadcas2_1_, post0_.category AS category3_1_, post0_.created_at AS created_4_1_
  	, post0_.draft AS draft5_1_, post0_.format AS format6_1_, post0_.public_slug AS public_s7_1_, post0_.publish_at AS publish_8_1_, post0_.raw_content AS raw_cont9_1_
  	, post0_.rendered_content AS rendere10_1_, post0_.rendered_summary AS rendere11_1_, post0_.title AS title12_1_
  FROM post post0_
  WHERE post0_.category = %s
  	AND post0_.draft = %s
  	AND post0_.publish_at < %s
  ORDER BY post0_.publish_at DESC
  LIMIT 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "category", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "post", "draft", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "post", "publish_at", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 57, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_24_POST_admin_blog_resummarize_1(_con)
  local _api = "POST /admin/blog/resummarize"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 58
  _sql = [[
  SELECT post0_.id AS id1_1_, post0_.author_id AS author_13_1_, post0_.broadcast AS broadcas2_1_, post0_.category AS category3_1_, post0_.created_at AS created_4_1_
  	, post0_.draft AS draft5_1_, post0_.format AS format6_1_, post0_.public_slug AS public_s7_1_, post0_.publish_at AS publish_8_1_, post0_.raw_content AS raw_cont9_1_
  	, post0_.rendered_content AS rendere10_1_, post0_.rendered_summary AS rendere11_1_, post0_.title AS title12_1_
  FROM post post0_
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 58, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 59
  _sql = [[
  SELECT memberprof0_.id AS id1_0_0_, memberprof0_.avatar_url AS avatar_u2_0_0_, memberprof0_.bio AS bio3_0_0_, memberprof0_.latitude AS latitude4_0_0_, memberprof0_.longitude AS longitud5_0_0_
  	, memberprof0_.github_id AS github_i6_0_0_, memberprof0_.github_username AS github_u7_0_0_, memberprof0_.gravatar_email AS gravatar8_0_0_, memberprof0_.hidden AS hidden9_0_0_, memberprof0_.job_title AS job_tit10_0_0_
  	, memberprof0_.lanyrd_username AS lanyrd_11_0_0_, memberprof0_.location AS locatio12_0_0_, memberprof0_.name AS name13_0_0_, memberprof0_.speakerdeck_username AS speaker14_0_0_, memberprof0_.twitter_username AS twitter15_0_0_
  	, memberprof0_.username AS usernam16_0_0_, memberprof0_.video_embeds AS video_e17_0_0_
  FROM member_profile memberprof0_
  WHERE memberprof0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "member_profile", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 59, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, true)
  
end

function API_25_GET_admin_tools_acme_platform_1(_con)
  local _api = "GET /admin/tools/acme-platform"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 60
  _sql = [[
  SELECT springtool0_.id AS id1_7_0_
  FROM spring_tools_platform springtool0_
  WHERE springtool0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "spring_tools_platform", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 60, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  -- line 61
  _sql = [[
  SELECT downloads0_.spring_tools_platform_id AS spring_t1_8_0_, downloads0_.download_url AS download2_8_0_, downloads0_.label AS label3_8_0_, downloads0_.variant AS variant4_8_0_
  FROM spring_tools_platform_downloads downloads0_
  WHERE downloads0_.spring_tools_platform_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "spring_tools_platform_downloads", "spring_tools_platform_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 61, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_26_GET_admin_blog_1(_con)
  local _api = "GET /admin/blog"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 62
  _sql = [[
  SELECT post0_.id AS id1_1_, post0_.author_id AS author_13_1_, post0_.broadcast AS broadcas2_1_, post0_.category AS category3_1_, post0_.created_at AS created_4_1_
  	, post0_.draft AS draft5_1_, post0_.format AS format6_1_, post0_.public_slug AS public_s7_1_, post0_.publish_at AS publish_8_1_, post0_.raw_content AS raw_cont9_1_
  	, post0_.rendered_content AS rendere10_1_, post0_.rendered_summary AS rendere11_1_, post0_.title AS title12_1_
  FROM post post0_
  WHERE post0_.draft = %s
  	AND post0_.publish_at < %s
  ORDER BY post0_.publish_at DESC, post0_.publish_at DESC
  LIMIT 30
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "draft", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "post", "publish_at", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 62, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 63
  _sql = [[
  SELECT memberprof0_.id AS id1_0_0_, memberprof0_.avatar_url AS avatar_u2_0_0_, memberprof0_.bio AS bio3_0_0_, memberprof0_.latitude AS latitude4_0_0_, memberprof0_.longitude AS longitud5_0_0_
  	, memberprof0_.github_id AS github_i6_0_0_, memberprof0_.github_username AS github_u7_0_0_, memberprof0_.gravatar_email AS gravatar8_0_0_, memberprof0_.hidden AS hidden9_0_0_, memberprof0_.job_title AS job_tit10_0_0_
  	, memberprof0_.lanyrd_username AS lanyrd_11_0_0_, memberprof0_.location AS locatio12_0_0_, memberprof0_.name AS name13_0_0_, memberprof0_.speakerdeck_username AS speaker14_0_0_, memberprof0_.twitter_username AS twitter15_0_0_
  	, memberprof0_.username AS usernam16_0_0_, memberprof0_.video_embeds AS video_e17_0_0_
  FROM member_profile memberprof0_
  WHERE memberprof0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "member_profile", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 63, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 64
  _sql = [[
  SELECT post0_.id AS id1_1_, post0_.author_id AS author_13_1_, post0_.broadcast AS broadcas2_1_, post0_.category AS category3_1_, post0_.created_at AS created_4_1_
  	, post0_.draft AS draft5_1_, post0_.format AS format6_1_, post0_.public_slug AS public_s7_1_, post0_.publish_at AS publish_8_1_, post0_.raw_content AS raw_cont9_1_
  	, post0_.rendered_content AS rendere10_1_, post0_.rendered_summary AS rendere11_1_, post0_.title AS title12_1_
  FROM post post0_
  WHERE post0_.draft = %s
  ORDER BY post0_.publish_at DESC
  LIMIT 2147483647
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "draft", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 64, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 65
  _sql = [[
  SELECT post0_.id AS id1_1_, post0_.author_id AS author_13_1_, post0_.broadcast AS broadcas2_1_, post0_.category AS category3_1_, post0_.created_at AS created_4_1_
  	, post0_.draft AS draft5_1_, post0_.format AS format6_1_, post0_.public_slug AS public_s7_1_, post0_.publish_at AS publish_8_1_, post0_.raw_content AS raw_cont9_1_
  	, post0_.rendered_content AS rendere10_1_, post0_.rendered_summary AS rendere11_1_, post0_.title AS title12_1_
  FROM post post0_
  WHERE post0_.draft = %s
  	AND post0_.publish_at > %s
  ORDER BY post0_.publish_at DESC
  LIMIT 2147483647
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "draft", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "post", "publish_at", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 65, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_27_GET_admin_tools_eclipse_1(_con)
  local _api = "GET /admin/tools/eclipse"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 66
  _sql = [[
  SELECT springtool0_.id AS id1_7_0_
  FROM spring_tools_platform springtool0_
  WHERE springtool0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "spring_tools_platform", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 66, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  -- line 67
  _sql = [[
  SELECT downloads0_.spring_tools_platform_id AS spring_t1_8_0_, downloads0_.download_url AS download2_8_0_, downloads0_.label AS label3_8_0_, downloads0_.variant AS variant4_8_0_
  FROM spring_tools_platform_downloads downloads0_
  WHERE downloads0_.spring_tools_platform_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "spring_tools_platform_downloads", "spring_tools_platform_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 67, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_28_GET_blog_category_news_1(_con)
  local _api = "GET /blog/category/news"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 68
  _sql = [[
  SELECT post0_.id AS id1_1_, post0_.author_id AS author_13_1_, post0_.broadcast AS broadcas2_1_, post0_.category AS category3_1_, post0_.created_at AS created_4_1_
  	, post0_.draft AS draft5_1_, post0_.format AS format6_1_, post0_.public_slug AS public_s7_1_, post0_.publish_at AS publish_8_1_, post0_.raw_content AS raw_cont9_1_
  	, post0_.rendered_content AS rendere10_1_, post0_.rendered_summary AS rendere11_1_, post0_.title AS title12_1_
  FROM post post0_
  WHERE post0_.category = %s
  	AND post0_.draft = %s
  	AND post0_.publish_at < %s
  ORDER BY post0_.publish_at DESC
  LIMIT 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "category", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "post", "draft", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "post", "publish_at", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 68, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_29_GET_admin_projects_spring_ipads_1(_con)
  local _api = "GET /admin/projects/spring-ipads"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 69
  _sql = [[
  SELECT project0_.id AS id1_3_0_, project0_.category AS category2_3_0_, project0_.display_order AS display_3_3_0_, project0_.name AS name4_3_0_, project0_.parent_project_id AS parent_12_3_0_
  	, project0_.raw_boot_config AS raw_boot5_3_0_, project0_.raw_overview AS raw_over6_3_0_, project0_.rendered_boot_config AS rendered7_3_0_, project0_.rendered_overview AS rendered8_3_0_, project0_.repo_url AS repo_url9_3_0_
  	, project0_.site_url AS site_ur10_3_0_, project0_.stack_overflow_tags AS stack_o11_3_0_, project1_.id AS id1_3_1_, project1_.category AS category2_3_1_, project1_.display_order AS display_3_3_1_
  	, project1_.name AS name4_3_1_, project1_.parent_project_id AS parent_12_3_1_, project1_.raw_boot_config AS raw_boot5_3_1_, project1_.raw_overview AS raw_over6_3_1_, project1_.rendered_boot_config AS rendered7_3_1_
  	, project1_.rendered_overview AS rendered8_3_1_, project1_.repo_url AS repo_url9_3_1_, project1_.site_url AS site_ur10_3_1_, project1_.stack_overflow_tags AS stack_o11_3_1_
  FROM project project0_
  	LEFT JOIN project project1_ ON project0_.parent_project_id = project1_.id
  WHERE project0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 69, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  -- line 70
  _sql = [[
  SELECT releaselis0_.project_id AS project_1_4_0_, releaselis0_.api_doc_url AS api_doc_2_4_0_, releaselis0_.artifact_id AS artifact3_4_0_, releaselis0_.group_id AS group_id4_4_0_, releaselis0_.is_current AS is_curre5_4_0_
  	, releaselis0_.ref_doc_url AS ref_doc_6_4_0_, releaselis0_.release_status AS release_7_4_0_, releaselis0_.repository_id AS reposito8_4_0_, releaselis0_.version_name AS version_9_4_0_, projectrep1_.id AS id1_6_1_
  	, projectrep1_.name AS name2_6_1_, projectrep1_.snapshots_enabled AS snapshot3_6_1_, projectrep1_.url AS url4_6_1_
  FROM project_release_list releaselis0_
  	LEFT JOIN project_repository projectrep1_ ON releaselis0_.repository_id = projectrep1_.id
  WHERE releaselis0_.project_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project_release_list", "project_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 70, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 71
  _sql = [[
  SELECT samplelist0_.project_id AS project_1_5_0_, samplelist0_.description AS descript2_5_0_, samplelist0_.display_order AS display_3_5_0_, samplelist0_.title AS title4_5_0_, samplelist0_.url AS url5_5_0_
  FROM project_sample_list samplelist0_
  WHERE samplelist0_.project_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project_sample_list", "project_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 71, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_30_GET_blog_atom_1(_con)
  local _api = "GET /blog.atom"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 72
  _sql = [[
  SELECT post0_.id AS id1_1_, post0_.author_id AS author_13_1_, post0_.broadcast AS broadcas2_1_, post0_.category AS category3_1_, post0_.created_at AS created_4_1_
  	, post0_.draft AS draft5_1_, post0_.format AS format6_1_, post0_.public_slug AS public_s7_1_, post0_.publish_at AS publish_8_1_, post0_.raw_content AS raw_cont9_1_
  	, post0_.rendered_content AS rendere10_1_, post0_.rendered_summary AS rendere11_1_, post0_.title AS title12_1_
  FROM post post0_
  WHERE post0_.draft = %s
  	AND post0_.publish_at < %s
  ORDER BY post0_.publish_at DESC, post0_.publish_at DESC
  LIMIT 20
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "draft", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "post", "publish_at", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 72, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 73
  _sql = [[
  SELECT memberprof0_.id AS id1_0_0_, memberprof0_.avatar_url AS avatar_u2_0_0_, memberprof0_.bio AS bio3_0_0_, memberprof0_.latitude AS latitude4_0_0_, memberprof0_.longitude AS longitud5_0_0_
  	, memberprof0_.github_id AS github_i6_0_0_, memberprof0_.github_username AS github_u7_0_0_, memberprof0_.gravatar_email AS gravatar8_0_0_, memberprof0_.hidden AS hidden9_0_0_, memberprof0_.job_title AS job_tit10_0_0_
  	, memberprof0_.lanyrd_username AS lanyrd_11_0_0_, memberprof0_.location AS locatio12_0_0_, memberprof0_.name AS name13_0_0_, memberprof0_.speakerdeck_username AS speaker14_0_0_, memberprof0_.twitter_username AS twitter15_0_0_
  	, memberprof0_.username AS usernam16_0_0_, memberprof0_.video_embeds AS video_e17_0_0_
  FROM member_profile memberprof0_
  WHERE memberprof0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "member_profile", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 73, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_31_GET_team_ClefZz_1(_con)
  local _api = "GET /team/ClefZz"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 74
  _sql = [[
  SELECT memberprof0_.id AS id1_0_, memberprof0_.avatar_url AS avatar_u2_0_, memberprof0_.bio AS bio3_0_, memberprof0_.latitude AS latitude4_0_, memberprof0_.longitude AS longitud5_0_
  	, memberprof0_.github_id AS github_i6_0_, memberprof0_.github_username AS github_u7_0_, memberprof0_.gravatar_email AS gravatar8_0_, memberprof0_.hidden AS hidden9_0_, memberprof0_.job_title AS job_tit10_0_
  	, memberprof0_.lanyrd_username AS lanyrd_11_0_, memberprof0_.location AS locatio12_0_, memberprof0_.name AS name13_0_, memberprof0_.speakerdeck_username AS speaker14_0_, memberprof0_.twitter_username AS twitter15_0_
  	, memberprof0_.username AS usernam16_0_, memberprof0_.video_embeds AS video_e17_0_
  FROM member_profile memberprof0_
  WHERE memberprof0_.username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "member_profile", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 74, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_31_GET_team_ClefZz_2(_con)
  local _api = "GET /team/ClefZz"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 75
  _sql = [[
  SELECT memberprof0_.id AS id1_0_, memberprof0_.avatar_url AS avatar_u2_0_, memberprof0_.bio AS bio3_0_, memberprof0_.latitude AS latitude4_0_, memberprof0_.longitude AS longitud5_0_
  	, memberprof0_.github_id AS github_i6_0_, memberprof0_.github_username AS github_u7_0_, memberprof0_.gravatar_email AS gravatar8_0_, memberprof0_.hidden AS hidden9_0_, memberprof0_.job_title AS job_tit10_0_
  	, memberprof0_.lanyrd_username AS lanyrd_11_0_, memberprof0_.location AS locatio12_0_, memberprof0_.name AS name13_0_, memberprof0_.speakerdeck_username AS speaker14_0_, memberprof0_.twitter_username AS twitter15_0_
  	, memberprof0_.username AS usernam16_0_, memberprof0_.video_embeds AS video_e17_0_
  FROM member_profile memberprof0_
  WHERE memberprof0_.username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "member_profile", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 75, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 76
  _sql = [[
  SELECT post0_.id AS id1_1_, post0_.author_id AS author_13_1_, post0_.broadcast AS broadcas2_1_, post0_.category AS category3_1_, post0_.created_at AS created_4_1_
  	, post0_.draft AS draft5_1_, post0_.format AS format6_1_, post0_.public_slug AS public_s7_1_, post0_.publish_at AS publish_8_1_, post0_.raw_content AS raw_cont9_1_
  	, post0_.rendered_content AS rendere10_1_, post0_.rendered_summary AS rendere11_1_, post0_.title AS title12_1_
  FROM post post0_
  WHERE post0_.draft = %s
  	AND post0_.author_id = %s
  	AND post0_.publish_at < %s
  ORDER BY post0_.publish_at DESC, post0_.publish_at DESC
  LIMIT 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "draft", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "post", "author_id", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "post", "publish_at", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 76, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_32_GET_admin_projects__1(_con)
  local _api = "GET /admin/projects/"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 77
  _sql = [[
  SELECT project0_.id AS id1_3_, project0_.category AS category2_3_, project0_.display_order AS display_3_3_, project0_.name AS name4_3_, project0_.parent_project_id AS parent_12_3_
  	, project0_.raw_boot_config AS raw_boot5_3_, project0_.raw_overview AS raw_over6_3_, project0_.rendered_boot_config AS rendered7_3_, project0_.rendered_overview AS rendered8_3_, project0_.repo_url AS repo_url9_3_
  	, project0_.site_url AS site_ur10_3_, project0_.stack_overflow_tags AS stack_o11_3_
  FROM project project0_
  ORDER BY project0_.display_order ASC, project0_.id ASC
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 77, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_33_GET_admin_projects_spring_boots_1(_con)
  local _api = "GET /admin/projects/spring-boots"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 78
  _sql = [[
  SELECT project0_.id AS id1_3_0_, project0_.category AS category2_3_0_, project0_.display_order AS display_3_3_0_, project0_.name AS name4_3_0_, project0_.parent_project_id AS parent_12_3_0_
  	, project0_.raw_boot_config AS raw_boot5_3_0_, project0_.raw_overview AS raw_over6_3_0_, project0_.rendered_boot_config AS rendered7_3_0_, project0_.rendered_overview AS rendered8_3_0_, project0_.repo_url AS repo_url9_3_0_
  	, project0_.site_url AS site_ur10_3_0_, project0_.stack_overflow_tags AS stack_o11_3_0_, project1_.id AS id1_3_1_, project1_.category AS category2_3_1_, project1_.display_order AS display_3_3_1_
  	, project1_.name AS name4_3_1_, project1_.parent_project_id AS parent_12_3_1_, project1_.raw_boot_config AS raw_boot5_3_1_, project1_.raw_overview AS raw_over6_3_1_, project1_.rendered_boot_config AS rendered7_3_1_
  	, project1_.rendered_overview AS rendered8_3_1_, project1_.repo_url AS repo_url9_3_1_, project1_.site_url AS site_ur10_3_1_, project1_.stack_overflow_tags AS stack_o11_3_1_
  FROM project project0_
  	LEFT JOIN project project1_ ON project0_.parent_project_id = project1_.id
  WHERE project0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 78, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  -- line 79
  _sql = [[
  SELECT releaselis0_.project_id AS project_1_4_0_, releaselis0_.api_doc_url AS api_doc_2_4_0_, releaselis0_.artifact_id AS artifact3_4_0_, releaselis0_.group_id AS group_id4_4_0_, releaselis0_.is_current AS is_curre5_4_0_
  	, releaselis0_.ref_doc_url AS ref_doc_6_4_0_, releaselis0_.release_status AS release_7_4_0_, releaselis0_.repository_id AS reposito8_4_0_, releaselis0_.version_name AS version_9_4_0_, projectrep1_.id AS id1_6_1_
  	, projectrep1_.name AS name2_6_1_, projectrep1_.snapshots_enabled AS snapshot3_6_1_, projectrep1_.url AS url4_6_1_
  FROM project_release_list releaselis0_
  	LEFT JOIN project_repository projectrep1_ ON releaselis0_.repository_id = projectrep1_.id
  WHERE releaselis0_.project_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project_release_list", "project_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 79, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 80
  _sql = [[
  SELECT samplelist0_.project_id AS project_1_5_0_, samplelist0_.description AS descript2_5_0_, samplelist0_.display_order AS display_3_5_0_, samplelist0_.title AS title4_5_0_, samplelist0_.url AS url5_5_0_
  FROM project_sample_list samplelist0_
  WHERE samplelist0_.project_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project_sample_list", "project_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 80, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_34_DELETE_admin_blog_x_post_1(_con)
  local _api = "DELETE /admin/blog/3-post"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 81
  _sql = [[
  SELECT post0_.id AS id1_1_0_, post0_.author_id AS author_13_1_0_, post0_.broadcast AS broadcas2_1_0_, post0_.category AS category3_1_0_, post0_.created_at AS created_4_1_0_
  	, post0_.draft AS draft5_1_0_, post0_.format AS format6_1_0_, post0_.public_slug AS public_s7_1_0_, post0_.publish_at AS publish_8_1_0_, post0_.raw_content AS raw_cont9_1_0_
  	, post0_.rendered_content AS rendere10_1_0_, post0_.rendered_summary AS rendere11_1_0_, post0_.title AS title12_1_0_, memberprof1_.id AS id1_0_1_, memberprof1_.avatar_url AS avatar_u2_0_1_
  	, memberprof1_.bio AS bio3_0_1_, memberprof1_.latitude AS latitude4_0_1_, memberprof1_.longitude AS longitud5_0_1_, memberprof1_.github_id AS github_i6_0_1_, memberprof1_.github_username AS github_u7_0_1_
  	, memberprof1_.gravatar_email AS gravatar8_0_1_, memberprof1_.hidden AS hidden9_0_1_, memberprof1_.job_title AS job_tit10_0_1_, memberprof1_.lanyrd_username AS lanyrd_11_0_1_, memberprof1_.location AS locatio12_0_1_
  	, memberprof1_.name AS name13_0_1_, memberprof1_.speakerdeck_username AS speaker14_0_1_, memberprof1_.twitter_username AS twitter15_0_1_, memberprof1_.username AS usernam16_0_1_, memberprof1_.video_embeds AS video_e17_0_1_
  FROM post post0_
  	INNER JOIN member_profile memberprof1_ ON post0_.author_id = memberprof1_.id
  WHERE post0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 81, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, true)

-- line 82 (ignored write)-- line 83 (ignored write)  _commit_f(_con, true)
  
end

function API_35_GET_admin_blog_x_this_is_a_post_for_testing_1(_con)
  local _api = "GET /admin/blog/4-this-is-a-post-for-testing"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 84
  _sql = [[
  SELECT post0_.id AS id1_1_0_, post0_.author_id AS author_13_1_0_, post0_.broadcast AS broadcas2_1_0_, post0_.category AS category3_1_0_, post0_.created_at AS created_4_1_0_
  	, post0_.draft AS draft5_1_0_, post0_.format AS format6_1_0_, post0_.public_slug AS public_s7_1_0_, post0_.publish_at AS publish_8_1_0_, post0_.raw_content AS raw_cont9_1_0_
  	, post0_.rendered_content AS rendere10_1_0_, post0_.rendered_summary AS rendere11_1_0_, post0_.title AS title12_1_0_, memberprof1_.id AS id1_0_1_, memberprof1_.avatar_url AS avatar_u2_0_1_
  	, memberprof1_.bio AS bio3_0_1_, memberprof1_.latitude AS latitude4_0_1_, memberprof1_.longitude AS longitud5_0_1_, memberprof1_.github_id AS github_i6_0_1_, memberprof1_.github_username AS github_u7_0_1_
  	, memberprof1_.gravatar_email AS gravatar8_0_1_, memberprof1_.hidden AS hidden9_0_1_, memberprof1_.job_title AS job_tit10_0_1_, memberprof1_.lanyrd_username AS lanyrd_11_0_1_, memberprof1_.location AS locatio12_0_1_
  	, memberprof1_.name AS name13_0_1_, memberprof1_.speakerdeck_username AS speaker14_0_1_, memberprof1_.twitter_username AS twitter15_0_1_, memberprof1_.username AS usernam16_0_1_, memberprof1_.video_embeds AS video_e17_0_1_
  FROM post post0_
  	INNER JOIN member_profile memberprof1_ ON post0_.author_id = memberprof1_.id
  WHERE post0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 84, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_36_POST_admin_tools_eclipse_1(_con)
  local _api = "POST /admin/tools/eclipse"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 85
  _sql = [[
  SELECT springtool0_.id AS id1_7_0_
  FROM spring_tools_platform springtool0_
  WHERE springtool0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "spring_tools_platform", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 85, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 86
  _sql = [[
  SELECT downloads0_.spring_tools_platform_id AS spring_t1_8_0_, downloads0_.download_url AS download2_8_0_, downloads0_.label AS label3_8_0_, downloads0_.variant AS variant4_8_0_
  FROM spring_tools_platform_downloads downloads0_
  WHERE downloads0_.spring_tools_platform_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "spring_tools_platform_downloads", "spring_tools_platform_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 86, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 87 (ignored write)-- line 88 (ignored write)-- line 89 (ignored write)  _commit_f(_con, true)
  
end

function API_37_GET_admin_tools_1(_con)
  local _api = "GET /admin/tools"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 90
  _sql = [[
  SELECT springtool0_.id AS id1_7_
  FROM spring_tools_platform springtool0_
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 90, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_38_POST_admin_projects_spring_boot_1(_con)
  local _api = "POST /admin/projects/spring-boot"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 91
  _sql = [[
  SELECT project0_.id AS id1_3_0_, project0_.category AS category2_3_0_, project0_.display_order AS display_3_3_0_, project0_.name AS name4_3_0_, project0_.parent_project_id AS parent_12_3_0_
  	, project0_.raw_boot_config AS raw_boot5_3_0_, project0_.raw_overview AS raw_over6_3_0_, project0_.rendered_boot_config AS rendered7_3_0_, project0_.rendered_overview AS rendered8_3_0_, project0_.repo_url AS repo_url9_3_0_
  	, project0_.site_url AS site_ur10_3_0_, project0_.stack_overflow_tags AS stack_o11_3_0_, project1_.id AS id1_3_1_, project1_.category AS category2_3_1_, project1_.display_order AS display_3_3_1_
  	, project1_.name AS name4_3_1_, project1_.parent_project_id AS parent_12_3_1_, project1_.raw_boot_config AS raw_boot5_3_1_, project1_.raw_overview AS raw_over6_3_1_, project1_.rendered_boot_config AS rendered7_3_1_
  	, project1_.rendered_overview AS rendered8_3_1_, project1_.repo_url AS repo_url9_3_1_, project1_.site_url AS site_ur10_3_1_, project1_.stack_overflow_tags AS stack_o11_3_1_
  FROM project project0_
  	LEFT JOIN project project1_ ON project0_.parent_project_id = project1_.id
  WHERE project0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 91, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, true)

  -- line 92
  _sql = [[
  SELECT project0_.id AS id1_3_1_, project0_.category AS category2_3_1_, project0_.display_order AS display_3_3_1_, project0_.name AS name4_3_1_, project0_.parent_project_id AS parent_12_3_1_
  	, project0_.raw_boot_config AS raw_boot5_3_1_, project0_.raw_overview AS raw_over6_3_1_, project0_.rendered_boot_config AS rendered7_3_1_, project0_.rendered_overview AS rendered8_3_1_, project0_.repo_url AS repo_url9_3_1_
  	, project0_.site_url AS site_ur10_3_1_, project0_.stack_overflow_tags AS stack_o11_3_1_, releaselis1_.project_id AS project_1_4_3_, releaselis1_.api_doc_url AS api_doc_2_4_3_, releaselis1_.artifact_id AS artifact3_4_3_
  	, releaselis1_.group_id AS group_id4_4_3_, releaselis1_.is_current AS is_curre5_4_3_, releaselis1_.ref_doc_url AS ref_doc_6_4_3_, releaselis1_.release_status AS release_7_4_3_, releaselis1_.repository_id AS reposito8_4_3_
  	, releaselis1_.version_name AS version_9_4_3_, projectrep2_.id AS id1_6_0_, projectrep2_.name AS name2_6_0_, projectrep2_.snapshots_enabled AS snapshot3_6_0_, projectrep2_.url AS url4_6_0_
  FROM project project0_
  	LEFT JOIN project_release_list releaselis1_ ON project0_.id = releaselis1_.project_id
  	LEFT JOIN project_repository projectrep2_ ON releaselis1_.repository_id = projectrep2_.id
  WHERE project0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 92, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 93
  _sql = [[
  SELECT projectrep0_.id AS id1_6_0_, projectrep0_.name AS name2_6_0_, projectrep0_.snapshots_enabled AS snapshot3_6_0_, projectrep0_.url AS url4_6_0_
  FROM project_repository projectrep0_
  WHERE projectrep0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project_repository", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 93, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 94
  _sql = [[
  SELECT projectrep0_.id AS id1_6_0_, projectrep0_.name AS name2_6_0_, projectrep0_.snapshots_enabled AS snapshot3_6_0_, projectrep0_.url AS url4_6_0_
  FROM project_repository projectrep0_
  WHERE projectrep0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project_repository", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 94, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 95 (ignored write)-- line 96 (ignored write)-- line 97 (ignored write)-- line 98 (ignored write)-- line 99 (ignored write)-- line 100 (ignored write)-- line 101 (ignored write)-- line 102 (ignored write)-- line 103 (ignored write)-- line 104 (ignored write)-- line 105 (ignored write)-- line 106 (ignored write)  _commit_f(_con, true)
  
end

function API_39_GET_admin_blog_x_this_is_a_post_for_testing_edit_1(_con)
  local _api = "GET /admin/blog/4-this-is-a-post-for-testing/edit"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 107
  _sql = [[
  SELECT post0_.id AS id1_1_0_, post0_.author_id AS author_13_1_0_, post0_.broadcast AS broadcas2_1_0_, post0_.category AS category3_1_0_, post0_.created_at AS created_4_1_0_
  	, post0_.draft AS draft5_1_0_, post0_.format AS format6_1_0_, post0_.public_slug AS public_s7_1_0_, post0_.publish_at AS publish_8_1_0_, post0_.raw_content AS raw_cont9_1_0_
  	, post0_.rendered_content AS rendere10_1_0_, post0_.rendered_summary AS rendere11_1_0_, post0_.title AS title12_1_0_, memberprof1_.id AS id1_0_1_, memberprof1_.avatar_url AS avatar_u2_0_1_
  	, memberprof1_.bio AS bio3_0_1_, memberprof1_.latitude AS latitude4_0_1_, memberprof1_.longitude AS longitud5_0_1_, memberprof1_.github_id AS github_i6_0_1_, memberprof1_.github_username AS github_u7_0_1_
  	, memberprof1_.gravatar_email AS gravatar8_0_1_, memberprof1_.hidden AS hidden9_0_1_, memberprof1_.job_title AS job_tit10_0_1_, memberprof1_.lanyrd_username AS lanyrd_11_0_1_, memberprof1_.location AS locatio12_0_1_
  	, memberprof1_.name AS name13_0_1_, memberprof1_.speakerdeck_username AS speaker14_0_1_, memberprof1_.twitter_username AS twitter15_0_1_, memberprof1_.username AS usernam16_0_1_, memberprof1_.video_embeds AS video_e17_0_1_
  FROM post post0_
  	INNER JOIN member_profile memberprof1_ ON post0_.author_id = memberprof1_.id
  WHERE post0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 107, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
end

function API_40_DELETE_admin_blog_x_this_is_a_post_for_testing_1(_con)
  local _api = "DELETE /admin/blog/4-this-is-a-post-for-testing"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 108
  _sql = [[
  SELECT post0_.id AS id1_1_0_, post0_.author_id AS author_13_1_0_, post0_.broadcast AS broadcas2_1_0_, post0_.category AS category3_1_0_, post0_.created_at AS created_4_1_0_
  	, post0_.draft AS draft5_1_0_, post0_.format AS format6_1_0_, post0_.public_slug AS public_s7_1_0_, post0_.publish_at AS publish_8_1_0_, post0_.raw_content AS raw_cont9_1_0_
  	, post0_.rendered_content AS rendere10_1_0_, post0_.rendered_summary AS rendere11_1_0_, post0_.title AS title12_1_0_, memberprof1_.id AS id1_0_1_, memberprof1_.avatar_url AS avatar_u2_0_1_
  	, memberprof1_.bio AS bio3_0_1_, memberprof1_.latitude AS latitude4_0_1_, memberprof1_.longitude AS longitud5_0_1_, memberprof1_.github_id AS github_i6_0_1_, memberprof1_.github_username AS github_u7_0_1_
  	, memberprof1_.gravatar_email AS gravatar8_0_1_, memberprof1_.hidden AS hidden9_0_1_, memberprof1_.job_title AS job_tit10_0_1_, memberprof1_.lanyrd_username AS lanyrd_11_0_1_, memberprof1_.location AS locatio12_0_1_
  	, memberprof1_.name AS name13_0_1_, memberprof1_.speakerdeck_username AS speaker14_0_1_, memberprof1_.twitter_username AS twitter15_0_1_, memberprof1_.username AS usernam16_0_1_, memberprof1_.video_embeds AS video_e17_0_1_
  FROM post post0_
  	INNER JOIN member_profile memberprof1_ ON post0_.author_id = memberprof1_.id
  WHERE post0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 108, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, true)

-- line 109 (ignored write)-- line 110 (ignored write)  _commit_f(_con, true)
  
end

function API_41_POST_admin_projects_spring_framework_1(_con)
  local _api = "POST /admin/projects/spring-framework"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 111
  _sql = [[
  SELECT project0_.id AS id1_3_0_, project0_.category AS category2_3_0_, project0_.display_order AS display_3_3_0_, project0_.name AS name4_3_0_, project0_.parent_project_id AS parent_12_3_0_
  	, project0_.raw_boot_config AS raw_boot5_3_0_, project0_.raw_overview AS raw_over6_3_0_, project0_.rendered_boot_config AS rendered7_3_0_, project0_.rendered_overview AS rendered8_3_0_, project0_.repo_url AS repo_url9_3_0_
  	, project0_.site_url AS site_ur10_3_0_, project0_.stack_overflow_tags AS stack_o11_3_0_, project1_.id AS id1_3_1_, project1_.category AS category2_3_1_, project1_.display_order AS display_3_3_1_
  	, project1_.name AS name4_3_1_, project1_.parent_project_id AS parent_12_3_1_, project1_.raw_boot_config AS raw_boot5_3_1_, project1_.raw_overview AS raw_over6_3_1_, project1_.rendered_boot_config AS rendered7_3_1_
  	, project1_.rendered_overview AS rendered8_3_1_, project1_.repo_url AS repo_url9_3_1_, project1_.site_url AS site_ur10_3_1_, project1_.stack_overflow_tags AS stack_o11_3_1_
  FROM project project0_
  	LEFT JOIN project project1_ ON project0_.parent_project_id = project1_.id
  WHERE project0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 111, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  _begin_f(_con, true)

  -- line 112
  _sql = [[
  SELECT project0_.id AS id1_3_1_, project0_.category AS category2_3_1_, project0_.display_order AS display_3_3_1_, project0_.name AS name4_3_1_, project0_.parent_project_id AS parent_12_3_1_
  	, project0_.raw_boot_config AS raw_boot5_3_1_, project0_.raw_overview AS raw_over6_3_1_, project0_.rendered_boot_config AS rendered7_3_1_, project0_.rendered_overview AS rendered8_3_1_, project0_.repo_url AS repo_url9_3_1_
  	, project0_.site_url AS site_ur10_3_1_, project0_.stack_overflow_tags AS stack_o11_3_1_, releaselis1_.project_id AS project_1_4_3_, releaselis1_.api_doc_url AS api_doc_2_4_3_, releaselis1_.artifact_id AS artifact3_4_3_
  	, releaselis1_.group_id AS group_id4_4_3_, releaselis1_.is_current AS is_curre5_4_3_, releaselis1_.ref_doc_url AS ref_doc_6_4_3_, releaselis1_.release_status AS release_7_4_3_, releaselis1_.repository_id AS reposito8_4_3_
  	, releaselis1_.version_name AS version_9_4_3_, projectrep2_.id AS id1_6_0_, projectrep2_.name AS name2_6_0_, projectrep2_.snapshots_enabled AS snapshot3_6_0_, projectrep2_.url AS url4_6_0_
  FROM project project0_
  	LEFT JOIN project_release_list releaselis1_ ON project0_.id = releaselis1_.project_id
  	LEFT JOIN project_repository projectrep2_ ON releaselis1_.repository_id = projectrep2_.id
  WHERE project0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 112, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 113
  _sql = [[
  SELECT samplelist0_.project_id AS project_1_5_0_, samplelist0_.description AS descript2_5_0_, samplelist0_.display_order AS display_3_5_0_, samplelist0_.title AS title4_5_0_, samplelist0_.url AS url5_5_0_
  FROM project_sample_list samplelist0_
  WHERE samplelist0_.project_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project_sample_list", "project_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 113, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 114 (ignored write)-- line 115 (ignored write)-- line 116 (ignored write)-- line 117 (ignored write)-- line 118 (ignored write)-- line 119 (ignored write)-- line 120 (ignored write)  _commit_f(_con, true)
  
end

function API_42_POST_admin_blog_1(_con)
  local _api = "POST /admin/blog"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 121
  _sql = [[
  SELECT memberprof0_.id AS id1_0_, memberprof0_.avatar_url AS avatar_u2_0_, memberprof0_.bio AS bio3_0_, memberprof0_.latitude AS latitude4_0_, memberprof0_.longitude AS longitud5_0_
  	, memberprof0_.github_id AS github_i6_0_, memberprof0_.github_username AS github_u7_0_, memberprof0_.gravatar_email AS gravatar8_0_, memberprof0_.hidden AS hidden9_0_, memberprof0_.job_title AS job_tit10_0_
  	, memberprof0_.lanyrd_username AS lanyrd_11_0_, memberprof0_.location AS locatio12_0_, memberprof0_.name AS name13_0_, memberprof0_.speakerdeck_username AS speaker14_0_, memberprof0_.twitter_username AS twitter15_0_
  	, memberprof0_.username AS usernam16_0_, memberprof0_.video_embeds AS video_e17_0_
  FROM member_profile memberprof0_
  WHERE memberprof0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "member_profile", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 121, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 122
  _sql = [[
  SELECT memberprof0_.id AS id1_0_, memberprof0_.avatar_url AS avatar_u2_0_, memberprof0_.bio AS bio3_0_, memberprof0_.latitude AS latitude4_0_, memberprof0_.longitude AS longitud5_0_
  	, memberprof0_.github_id AS github_i6_0_, memberprof0_.github_username AS github_u7_0_, memberprof0_.gravatar_email AS gravatar8_0_, memberprof0_.hidden AS hidden9_0_, memberprof0_.job_title AS job_tit10_0_
  	, memberprof0_.lanyrd_username AS lanyrd_11_0_, memberprof0_.location AS locatio12_0_, memberprof0_.name AS name13_0_, memberprof0_.speakerdeck_username AS speaker14_0_, memberprof0_.twitter_username AS twitter15_0_
  	, memberprof0_.username AS usernam16_0_, memberprof0_.video_embeds AS video_e17_0_
  FROM member_profile memberprof0_
  WHERE memberprof0_.username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "member_profile", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 122, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  _begin_f(_con, false)

-- line 123 (ignored write)  _commit_f(_con, false)
  
end

function API_43_DELETE_admin_tools_acme_1(_con)
  local _api = "DELETE /admin/tools/acme"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 124
  _sql = [[
  SELECT springtool0_.id AS id1_7_0_
  FROM spring_tools_platform springtool0_
  WHERE springtool0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "spring_tools_platform", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 124, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 125 (ignored write)-- line 126 (ignored write)  _commit_f(_con, true)
  
end

function API_44_GET_blog_1(_con)
  local _api = "GET /blog"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 127
  _sql = [[
  SELECT post0_.id AS id1_1_, post0_.author_id AS author_13_1_, post0_.broadcast AS broadcas2_1_, post0_.category AS category3_1_, post0_.created_at AS created_4_1_
  	, post0_.draft AS draft5_1_, post0_.format AS format6_1_, post0_.public_slug AS public_s7_1_, post0_.publish_at AS publish_8_1_, post0_.raw_content AS raw_cont9_1_
  	, post0_.rendered_content AS rendere10_1_, post0_.rendered_summary AS rendere11_1_, post0_.title AS title12_1_
  FROM post post0_
  WHERE post0_.draft = %s
  	AND post0_.publish_at < %s
  ORDER BY post0_.publish_at DESC, post0_.publish_at DESC
  LIMIT 10
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "post", "draft", {"select", "where", "relation"}, nil}),
    _gen_parameter_f({_api, _sql, "post", "publish_at", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 127, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 128
  _sql = [[
  SELECT memberprof0_.id AS id1_0_0_, memberprof0_.avatar_url AS avatar_u2_0_0_, memberprof0_.bio AS bio3_0_0_, memberprof0_.latitude AS latitude4_0_0_, memberprof0_.longitude AS longitud5_0_0_
  	, memberprof0_.github_id AS github_i6_0_0_, memberprof0_.github_username AS github_u7_0_0_, memberprof0_.gravatar_email AS gravatar8_0_0_, memberprof0_.hidden AS hidden9_0_0_, memberprof0_.job_title AS job_tit10_0_0_
  	, memberprof0_.lanyrd_username AS lanyrd_11_0_0_, memberprof0_.location AS locatio12_0_0_, memberprof0_.name AS name13_0_0_, memberprof0_.speakerdeck_username AS speaker14_0_0_, memberprof0_.twitter_username AS twitter15_0_0_
  	, memberprof0_.username AS usernam16_0_0_, memberprof0_.video_embeds AS video_e17_0_0_
  FROM member_profile memberprof0_
  WHERE memberprof0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "member_profile", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 128, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_45_PUT_admin_team_ClefZz_1(_con)
  local _api = "PUT /admin/team/ClefZz"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 129
  _sql = [[
  SELECT memberprof0_.id AS id1_0_, memberprof0_.avatar_url AS avatar_u2_0_, memberprof0_.bio AS bio3_0_, memberprof0_.latitude AS latitude4_0_, memberprof0_.longitude AS longitud5_0_
  	, memberprof0_.github_id AS github_i6_0_, memberprof0_.github_username AS github_u7_0_, memberprof0_.gravatar_email AS gravatar8_0_, memberprof0_.hidden AS hidden9_0_, memberprof0_.job_title AS job_tit10_0_
  	, memberprof0_.lanyrd_username AS lanyrd_11_0_, memberprof0_.location AS locatio12_0_, memberprof0_.name AS name13_0_, memberprof0_.speakerdeck_username AS speaker14_0_, memberprof0_.twitter_username AS twitter15_0_
  	, memberprof0_.username AS usernam16_0_, memberprof0_.video_embeds AS video_e17_0_
  FROM member_profile memberprof0_
  WHERE memberprof0_.username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "member_profile", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 129, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_45_PUT_admin_team_ClefZz_2(_con)
  local _api = "PUT /admin/team/ClefZz"
  local _sql
  local _formatted_sql
  local _params
  local _res

  -- line 130
  _sql = [[
  SELECT memberprof0_.id AS id1_0_, memberprof0_.avatar_url AS avatar_u2_0_, memberprof0_.bio AS bio3_0_, memberprof0_.latitude AS latitude4_0_, memberprof0_.longitude AS longitud5_0_
  	, memberprof0_.github_id AS github_i6_0_, memberprof0_.github_username AS github_u7_0_, memberprof0_.gravatar_email AS gravatar8_0_, memberprof0_.hidden AS hidden9_0_, memberprof0_.job_title AS job_tit10_0_
  	, memberprof0_.lanyrd_username AS lanyrd_11_0_, memberprof0_.location AS locatio12_0_, memberprof0_.name AS name13_0_, memberprof0_.speakerdeck_username AS speaker14_0_, memberprof0_.twitter_username AS twitter15_0_
  	, memberprof0_.username AS usernam16_0_, memberprof0_.video_embeds AS video_e17_0_
  FROM member_profile memberprof0_
  WHERE memberprof0_.username = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "member_profile", "username", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 130, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  _begin_f(_con, false)

-- line 131 (ignored write)  _commit_f(_con, false)
  
end

function API_46_GET_tools_1(_con)
  local _api = "GET /tools"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 132
  _sql = [[
  SELECT springtool0_.id AS id1_7_
  FROM spring_tools_platform springtool0_
  ]]
  _params = {
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 132, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  -- line 133
  _sql = [[
  SELECT downloads0_.spring_tools_platform_id AS spring_t1_8_0_, downloads0_.download_url AS download2_8_0_, downloads0_.label AS label3_8_0_, downloads0_.variant AS variant4_8_0_
  FROM spring_tools_platform_downloads downloads0_
  WHERE downloads0_.spring_tools_platform_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "spring_tools_platform_downloads", "spring_tools_platform_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 133, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


  -- line 134
  _sql = [[
  SELECT downloads0_.spring_tools_platform_id AS spring_t1_8_0_, downloads0_.download_url AS download2_8_0_, downloads0_.label AS label3_8_0_, downloads0_.variant AS variant4_8_0_
  FROM spring_tools_platform_downloads downloads0_
  WHERE downloads0_.spring_tools_platform_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "spring_tools_platform_downloads", "spring_tools_platform_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 134, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

function API_47_DELETE_admin_projects_spring_raft_1(_con)
  local _api = "DELETE /admin/projects/spring-raft"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, true)

  -- line 135
  _sql = [[
  SELECT project0_.id AS id1_3_0_, project0_.category AS category2_3_0_, project0_.display_order AS display_3_3_0_, project0_.name AS name4_3_0_, project0_.parent_project_id AS parent_12_3_0_
  	, project0_.raw_boot_config AS raw_boot5_3_0_, project0_.raw_overview AS raw_over6_3_0_, project0_.rendered_boot_config AS rendered7_3_0_, project0_.rendered_overview AS rendered8_3_0_, project0_.repo_url AS repo_url9_3_0_
  	, project0_.site_url AS site_ur10_3_0_, project0_.stack_overflow_tags AS stack_o11_3_0_, project1_.id AS id1_3_1_, project1_.category AS category2_3_1_, project1_.display_order AS display_3_3_1_
  	, project1_.name AS name4_3_1_, project1_.parent_project_id AS parent_12_3_1_, project1_.raw_boot_config AS raw_boot5_3_1_, project1_.raw_overview AS raw_over6_3_1_, project1_.rendered_boot_config AS rendered7_3_1_
  	, project1_.rendered_overview AS rendered8_3_1_, project1_.repo_url AS repo_url9_3_1_, project1_.site_url AS site_ur10_3_1_, project1_.stack_overflow_tags AS stack_o11_3_1_
  FROM project project0_
  	LEFT JOIN project project1_ ON project0_.parent_project_id = project1_.id
  WHERE project0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 135, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  -- line 136
  _sql = [[
  SELECT releaselis0_.project_id AS project_1_4_0_, releaselis0_.api_doc_url AS api_doc_2_4_0_, releaselis0_.artifact_id AS artifact3_4_0_, releaselis0_.group_id AS group_id4_4_0_, releaselis0_.is_current AS is_curre5_4_0_
  	, releaselis0_.ref_doc_url AS ref_doc_6_4_0_, releaselis0_.release_status AS release_7_4_0_, releaselis0_.repository_id AS reposito8_4_0_, releaselis0_.version_name AS version_9_4_0_, projectrep1_.id AS id1_6_1_
  	, projectrep1_.name AS name2_6_1_, projectrep1_.snapshots_enabled AS snapshot3_6_1_, projectrep1_.url AS url4_6_1_
  FROM project_release_list releaselis0_
  	LEFT JOIN project_repository projectrep1_ ON releaselis0_.repository_id = projectrep1_.id
  WHERE releaselis0_.project_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "project_release_list", "project_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 136, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

-- line 137 (ignored write)-- line 138 (ignored write)-- line 139 (ignored write)  _commit_f(_con, true)
  
end

function API_48_GET_admin_tools_acme_1(_con)
  local _api = "GET /admin/tools/acme"
  local _sql
  local _formatted_sql
  local _params
  local _res

  _begin_f(_con, false)

  -- line 140
  _sql = [[
  SELECT springtool0_.id AS id1_7_0_
  FROM spring_tools_platform springtool0_
  WHERE springtool0_.id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "spring_tools_platform", "id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 140, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()

  _commit_f(_con, false)
  
  -- line 141
  _sql = [[
  SELECT downloads0_.spring_tools_platform_id AS spring_t1_8_0_, downloads0_.download_url AS download2_8_0_, downloads0_.label AS label3_8_0_, downloads0_.variant AS variant4_8_0_
  FROM spring_tools_platform_downloads downloads0_
  WHERE downloads0_.spring_tools_platform_id = %s
  ]]
  _params = {
    _gen_parameter_f({_api, _sql, "spring_tools_platform_downloads", "spring_tools_platform_id", {"select", "where", "relation"}, nil}),
  }
  _formatted_sql = string.format(_sql, unpack(_params))

  _timing_start_f(_stmt_timer)
    _res = _con:query(_formatted_sql)
  _record_timing_f(0, 141, _timing_end_f(_stmt_timer))
  _record_params_and_result_f(_params, _res)
collectgarbage()


end

