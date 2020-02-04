tables = {
  ["schema_version"] = {
    ["version_rank"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["installed_by"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["success"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["checksum"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["description"] = {
      data_type = {"string_like", "varchar", 200, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["installed_on"] = {
      data_type = {"datetime_like", "timestamp", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["type"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["version"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["script"] = {
      data_type = {"string_like", "varchar", 1000, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["installed_rank"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["execution_time"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["project_repository"] = {
    ["name"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["snapshots_enabled"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["url"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["project_sample_list"] = {
    ["project_id"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["display_order"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["description"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["title"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["url"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["post"] = {
    ["broadcast"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["raw_content"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["rendered_content"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["rendered_summary"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["format"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["created_at"] = {
      data_type = {"datetime_like", "timestamp", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["title"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["publish_at"] = {
      data_type = {"datetime_like", "timestamp", -1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["draft"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
    ["category"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["author_id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["public_slug"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["member_profile"] = {
    ["speakerdeck_username"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["hidden"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["latitude"] = {
      data_type = {"decimal", "double", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["video_embeds"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["twitter_username"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["bio"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["github_username"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["avatar_url"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["lanyrd_username"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["name"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["github_id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["location"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
    ["gravatar_email"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["job_title"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["longitude"] = {
      data_type = {"decimal", "double", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["username"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["spring_tools_platform_downloads"] = {
    ["download_url"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["variant"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["label"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["spring_tools_platform_id"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["project"] = {
    ["repo_url"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["rendered_overview"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["raw_boot_config"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["site_url"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["raw_overview"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["name"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["display_order"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["stack_overflow_tags"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["id"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["category"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["rendered_boot_config"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["parent_project_id"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["post_public_slug_aliases"] = {
    ["post_id"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["public_slug_aliases"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["project_release_list"] = {
    ["api_doc_url"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ref_doc_url"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["version_name"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["project_id"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["group_id"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["repository_id"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["artifact_id"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["is_current"] = {
      data_type = {"integral", "tinyint", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["release_status"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["spring_tools_platform"] = {
    ["id"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
}

