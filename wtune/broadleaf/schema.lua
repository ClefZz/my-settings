tables = {
  ["blc_order_item_adjustment"] = {
    ["ADJUSTMENT_REASON"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ADJUSTMENT_VALUE"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["OFFER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_offer", "OFFER_ID"}}
    },
    ["ORDER_ITEM_ADJUSTMENT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_order_item", "ORDER_ITEM_ID"}}
    },
    ["APPLIED_TO_SALE_PRICE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_category_attribute"] = {
    ["CATEGORY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_category", "CATEGORY_ID"}}
    },
    ["CATEGORY_ATTRIBUTE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["VALUE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_fld_group"] = {
    ["IS_MASTER_FIELD_GROUP"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FLD_GROUP_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["INIT_COLLAPSED_FLAG"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_page"] = {
    ["CREATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["META_DESCRIPTION"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["META_TITLE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ACTIVE_END_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PAGE_TMPLT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_page_tmplt", "PAGE_TMPLT_ID"}}
    },
    ["DATE_UPDATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["EXCLUDE_FROM_SITE_MAP"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRIORITY"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PAGE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["FULL_URL"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ACTIVE_START_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DESCRIPTION"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["OFFLINE_FLAG"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_order_item_dtl_adj"] = {
    ["ORDER_ITEM_PRICE_DTL_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_order_item_price_dtl", "ORDER_ITEM_PRICE_DTL_ID"}}
    },
    ["OFFER_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ADJUSTMENT_REASON"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ADJUSTMENT_VALUE"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["OFFER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_offer", "OFFER_ID"}}
    },
    ["ORDER_ITEM_DTL_ADJ_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["APPLIED_TO_SALE_PRICE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_offer_info"] = {
    ["OFFER_INFO_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_product_bundle"] = {
    ["BUNDLE_PROMOTABLE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRICING_MODEL"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["BUNDLE_PRIORITY"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["AUTO_BUNDLE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ITEMS_PROMOTABLE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_product", "PRODUCT_ID"}}
    },
  },
  ["blc_site_map_cfg"] = {
    ["INDEXED_SITE_MAP_FILE_PATTERN"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SITE_MAP_FILE_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MAX_URL_ENTRIES_PER_FILE"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["INDEXED_SITE_MAP_FILE_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MODULE_CONFIG_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_module_configuration", "MODULE_CONFIG_ID"}}
    },
  },
  ["blc_qual_crit_sc_xref"] = {
    ["SC_ITEM_CRITERIA_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_sc_item_criteria", "SC_ITEM_CRITERIA_ID"}}
    },
    ["SC_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_sc", "SC_ID"}}
    },
  },
  ["blc_trans_additnl_fields"] = {
    ["PAYMENT_TRANSACTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_order_payment_transaction", "PAYMENT_TRANSACTION_ID"}}
    },
    ["FIELD_VALUE"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["FIELD_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_product"] = {
    ["META_TITLE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MANUFACTURE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MODEL"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DEFAULT_SKU_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_sku", "SKU_ID"}}
    },
    ["PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["IS_FEATURED_PRODUCT"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["URL"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DISPLAY_TEMPLATE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CANONICAL_URL"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["URL_KEY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DEFAULT_CATEGORY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_category", "CATEGORY_ID"}}
    },
    ["ARCHIVED"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CAN_SELL_WITHOUT_OPTIONS"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["META_DESC"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["OVERRIDE_GENERATED_URL"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_country"] = {
    ["CREATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_UPDATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ABBREVIATION"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_locale"] = {
    ["CREATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FRIENDLY_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DEFAULT_FLAG"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LOCALE_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["DATE_UPDATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["USE_IN_SEARCH_INDEX"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CURRENCY_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_currency", "CURRENCY_CODE"}}
    },
  },
  ["blc_bundle_order_item"] = {
    ["BASE_SALE_PRICE"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SKU_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_sku", "SKU_ID"}}
    },
    ["BASE_RETAIL_PRICE"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_BUNDLE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_product_bundle", "PRODUCT_ID"}}
    },
    ["ORDER_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_order_item", "ORDER_ITEM_ID"}}
    },
  },
  ["blc_tar_crit_offer_xref"] = {
    ["OFFER_ITEM_CRITERIA_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_offer_item_criteria", "OFFER_ITEM_CRITERIA_ID"}}
    },
    ["OFFER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_offer", "OFFER_ID"}}
    },
    ["OFFER_TAR_CRIT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_code_types"] = {
    ["CODE_KEY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CODE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CODE_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CODE_DESC"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MODIFIABLE"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_fulfillment_opt_banded_prc"] = {
    ["FULFILLMENT_OPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_fulfillment_option", "FULFILLMENT_OPTION_ID"}}
    },
  },
  ["blc_static_asset"] = {
    ["CREATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FILE_SIZE"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_UPDATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FILE_EXTENSION"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["STATIC_ASSET_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["MIME_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["FULL_URL"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["UPDATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TITLE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ALT_TEXT"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["STORAGE_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_country_sub"] = {
    ["ALT_ABBREVIATION"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CREATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_UPDATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["COUNTRY_SUB_CAT"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_country_sub_cat", "COUNTRY_SUB_CAT_ID"}}
    },
    ["COUNTRY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_country", "ABBREVIATION"}}
    },
    ["UPDATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ABBREVIATION"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_site_catalog"] = {
    ["SITE_CATALOG_XREF_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["SITE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_site", "SITE_ID"}}
    },
    ["CATALOG_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_catalog", "CATALOG_ID"}}
    },
  },
  ["blc_fulfillment_opt_banded_wgt"] = {
    ["FULFILLMENT_OPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_fulfillment_option", "FULFILLMENT_OPTION_ID"}}
    },
  },
  ["blc_fg_fee_tax_xref"] = {
    ["FULFILLMENT_GROUP_FEE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_fulfillment_group_fee", "FULFILLMENT_GROUP_FEE_ID"}}
    },
    ["TAX_DETAIL_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_tax_detail", "TAX_DETAIL_ID"}}
    },
  },
  ["blc_search_facet"] = {
    ["CREATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SHOW_ON_SEARCH"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_UPDATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MULTISELECT"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["REQUIRES_ALL_DEPENDENT"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SEARCH_DISPLAY_PRIORITY"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SEARCH_FACET_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["UPDATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["USE_FACET_RANGES"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LABEL"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ARCHIVED"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["INDEX_FIELD_TYPE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_index_field_type", "INDEX_FIELD_TYPE_ID"}}
    },
  },
  ["blc_customer_role"] = {
    ["CUSTOMER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_customer", "CUSTOMER_ID"}}
    },
    ["ROLE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_role", "ROLE_ID"}}
    },
    ["CUSTOMER_ROLE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_product_cross_sale"] = {
    ["CROSS_SALE_PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CATEGORY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_category", "CATEGORY_ID"}}
    },
    ["RELATED_SALE_PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_product", "PRODUCT_ID"}}
    },
    ["SEQUENCE"] = {
      data_type = {"decimal", "decimal", 10, 6},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_product", "PRODUCT_ID"}}
    },
    ["PROMOTION_MESSAGE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_admin_section"] = {
    ["DISPLAY_ORDER"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ADMIN_SECTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["DISPLAY_CONTROLLER"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["USE_DEFAULT_HANDLER"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ADMIN_MODULE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_admin_module", "ADMIN_MODULE_ID"}}
    },
    ["CEILING_ENTITY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["URL"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["SECTION_KEY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_address"] = {
    ["IS_BUSINESS"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ISO_COUNTRY_SUB"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PHONE_FAX_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_phone", "PHONE_ID"}}
    },
    ["TOKENIZED_ADDRESS"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ISO_COUNTRY_ALPHA2"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_iso_country", "ALPHA_2"}}
    },
    ["STATE_PROV_REGION"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_state", "ABBREVIATION"}}
    },
    ["SECONDARY_PHONE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["IS_ACTIVE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LAST_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FIRST_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ADDRESS_LINE1"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["IS_MAILING"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["VERIFICATION_LEVEL"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ADDRESS_LINE2"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ADDRESS_LINE3"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["EMAIL_ADDRESS"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ZIP_FOUR"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["COUNTRY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_country", "ABBREVIATION"}}
    },
    ["POSTAL_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FULL_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["IS_DEFAULT"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["COUNTY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SUB_STATE_PROV_REG"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["IS_STREET"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRIMARY_PHONE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PHONE_SECONDARY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_phone", "PHONE_ID"}}
    },
    ["COMPANY_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CITY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["STANDARDIZED"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FAX"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PHONE_PRIMARY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_phone", "PHONE_ID"}}
    },
    ["ADDRESS_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_role"] = {
    ["ROLE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ROLE_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_gift_card_payment"] = {
    ["PIN"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PAYMENT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["REFERENCE_NUMBER"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PAN"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_offer_info_fields"] = {
    ["OFFER_INFO_FIELDS_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_offer_info", "OFFER_INFO_ID"}}
    },
    ["FIELD_VALUE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FIELD_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_admin_permission"] = {
    ["DESCRIPTION"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ADMIN_PERMISSION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PERMISSION_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["IS_FRIENDLY"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_index_field_type"] = {
    ["FIELD_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["INDEX_FIELD_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_index_field", "INDEX_FIELD_ID"}}
    },
    ["ARCHIVED"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["INDEX_FIELD_TYPE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_product_option_value"] = {
    ["PRODUCT_OPTION_VALUE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["DISPLAY_ORDER"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_OPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_product_option", "PRODUCT_OPTION_ID"}}
    },
    ["ATTRIBUTE_VALUE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRICE_ADJUSTMENT"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_rating_detail"] = {
    ["RATING_SUBMITTED_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["RATING"] = {
      data_type = {"decimal", "double", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CUSTOMER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_customer", "CUSTOMER_ID"}}
    },
    ["RATING_DETAIL_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["RATING_SUMMARY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_rating_summary", "RATING_SUMMARY_ID"}}
    },
  },
  ["blc_category_media_map"] = {
    ["MAP_KEY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["BLC_CATEGORY_CATEGORY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_category", "CATEGORY_ID"}}
    },
    ["MEDIA_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_media", "MEDIA_ID"}}
    },
    ["CATEGORY_MEDIA_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_product_option"] = {
    ["DISPLAY_ORDER"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ERROR_MESSAGE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_OPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["VALIDATION_STRING"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["REQUIRED"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["VALIDATION_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ERROR_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ATTRIBUTE_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["VALIDATION_STRATEGY_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LABEL"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["USE_IN_SKU_GENERATION"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["OPTION_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_customer_payment_fields"] = {
    ["CUSTOMER_PAYMENT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_customer_payment", "CUSTOMER_PAYMENT_ID"}}
    },
    ["FIELD_VALUE"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["FIELD_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_admin_user_addtl_fields"] = {
    ["FIELD_VALUE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ATTRIBUTE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["FIELD_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ADMIN_USER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_admin_user", "ADMIN_USER_ID"}}
    },
  },
  ["blc_sku"] = {
    ["QUANTITY_AVAILABLE"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPC"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["WIDTH"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CURRENCY_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_currency", "CURRENCY_CODE"}}
    },
    ["RETAIL_PRICE"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DIMENSION_UNIT_OF_MEASURE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["COST"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DEFAULT_PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_product", "PRODUCT_ID"}}
    },
    ["CONTAINER_SHAPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["INVENTORY_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ACTIVE_START_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DESCRIPTION"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["EXTERNAL_ID"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["AVAILABLE_FLAG"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CONTAINER_SIZE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["WEIGHT"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["IS_MACHINE_SORTABLE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ACTIVE_END_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DISCOUNTABLE_FLAG"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["HEIGHT"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["GIRTH"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DISPLAY_TEMPLATE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SALE_PRICE"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ADDL_PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_product", "PRODUCT_ID"}}
    },
    ["FULFILLMENT_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["URL_KEY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SKU_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["LONG_DESCRIPTION"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["DEPTH"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TAX_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TAXABLE_FLAG"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["WEIGHT_UNIT_OF_MEASURE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_order_item_price_dtl"] = {
    ["ORDER_ITEM_PRICE_DTL_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["QUANTITY"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["USE_SALE_PRICE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_order_item", "ORDER_ITEM_ID"}}
    },
  },
  ["blc_page_tmplt"] = {
    ["PAGE_TMPLT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["LOCALE_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_locale", "LOCALE_CODE"}}
    },
    ["TMPLT_DESCR"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TMPLT_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TMPLT_PATH"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_page_rule"] = {
    ["PAGE_RULE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["MATCH_RULE"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_order"] = {
    ["CREATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_UPDATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LOCALE_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_locale", "LOCALE_CODE"}}
    },
    ["CUSTOMER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_customer", "CUSTOMER_ID"}}
    },
    ["ORDER_TOTAL"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TOTAL_SHIPPING"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CURRENCY_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_currency", "CURRENCY_CODE"}}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TOTAL_TAX"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["EMAIL_ADDRESS"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_SUBTOTAL"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SUBMIT_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["IS_PREVIEW"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_NUMBER"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_STATUS"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TAX_OVERRIDE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_customer_address"] = {
    ["CUSTOMER_ADDRESS_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CUSTOMER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_customer", "CUSTOMER_ID"}}
    },
    ["ADDRESS_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ARCHIVED"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ADDRESS_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_address", "ADDRESS_ID"}}
    },
  },
  ["blc_sku_fee_xref"] = {
    ["SKU_FEE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_sku_fee", "SKU_FEE_ID"}}
    },
    ["SKU_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_sku", "SKU_ID"}}
    },
  },
  ["blc_order_adjustment"] = {
    ["ORDER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_order", "ORDER_ID"}}
    },
    ["ORDER_ADJUSTMENT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ADJUSTMENT_REASON"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ADJUSTMENT_VALUE"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["OFFER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_offer", "OFFER_ID"}}
    },
  },
  ["blc_order_offer_code_xref"] = {
    ["ORDER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_order", "ORDER_ID"}}
    },
    ["OFFER_CODE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_offer_code", "OFFER_CODE_ID"}}
    },
  },
  ["blc_email_tracking_clicks"] = {
    ["EMAIL_TRACKING_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_email_tracking", "EMAIL_TRACKING_ID"}}
    },
    ["DATE_CLICKED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["QUERY_STRING"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DESTINATION_URI"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CUSTOMER_ID"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CLICK_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_sku_media_map"] = {
    ["MAP_KEY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["MEDIA_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_media", "MEDIA_ID"}}
    },
    ["SKU_MEDIA_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["BLC_SKU_SKU_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_sku", "SKU_ID"}}
    },
  },
  ["blc_customer_offer_xref"] = {
    ["CUSTOMER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_customer", "CUSTOMER_ID"}}
    },
    ["OFFER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_offer", "OFFER_ID"}}
    },
    ["CUSTOMER_OFFER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_customer_phone"] = {
    ["PHONE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_phone", "PHONE_ID"}}
    },
    ["CUSTOMER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_customer", "CUSTOMER_ID"}}
    },
    ["CUSTOMER_PHONE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PHONE_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_tax_detail"] = {
    ["TAX_DETAIL_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["JURISDICTION_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TAX_REGION"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["AMOUNT"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["RATE"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TAX_COUNTRY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CURRENCY_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_currency", "CURRENCY_CODE"}}
    },
    ["MODULE_CONFIG_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_module_configuration", "MODULE_CONFIG_ID"}}
    },
    ["TAX_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_rating_summary"] = {
    ["ITEM_ID"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["RATING_SUMMARY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["RATING_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["AVERAGE_RATING"] = {
      data_type = {"decimal", "double", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_sku_fee"] = {
    ["FEE_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["AMOUNT"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["DESCRIPTION"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SKU_FEE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TAXABLE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["EXPRESSION"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CURRENCY_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_currency", "CURRENCY_CODE"}}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_customer_attribute"] = {
    ["CUSTOMER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_customer", "CUSTOMER_ID"}}
    },
    ["CUSTOMER_ATTR_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["VALUE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_customer_password_token"] = {
    ["CREATE_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CUSTOMER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TOKEN_USED_FLAG"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PASSWORD_TOKEN"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TOKEN_USED_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_page_fld"] = {
    ["PAGE_FLD_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CREATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FLD_KEY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LOB_VALUE"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["DATE_UPDATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["VALUE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PAGE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_page", "PAGE_ID"}}
    },
  },
  ["blc_offer"] = {
    ["ORDER_MIN_TOTAL"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["APPLY_TO_CHILD_ITEMS"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["APPLY_TO_SALE_PRICE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["REQUIRES_RELATED_TAR_QUAL"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["END_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["AUTOMATICALLY_ADDED"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["OFFER_VALUE"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["OFFER_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["OFFER_PRIORITY"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["OFFER_DISCOUNT_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["OFFER_ITEM_QUALIFIER_RULE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["COMBINABLE_WITH_OTHER_OFFERS"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TARGET_MIN_TOTAL"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["OFFER_DESCRIPTION"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MAX_USES"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MARKETING_MESSASGE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["QUALIFYING_ITEM_MIN_TOTAL"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["OFFER_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["OFFER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["START_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TOTALITARIAN_OFFER"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TARGET_SYSTEM"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["OFFER_ITEM_TARGET_RULE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ARCHIVED"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MAX_USES_PER_CUSTOMER"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_fld_enum_item"] = {
    ["FRIENDLY_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FLD_ENUM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_fld_enum", "FLD_ENUM_ID"}}
    },
    ["FLD_ORDER"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FLD_ENUM_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_fld_enum"] = {
    ["FLD_ENUM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_fg_adjustment"] = {
    ["ADJUSTMENT_REASON"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ADJUSTMENT_VALUE"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["FULFILLMENT_GROUP_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_fulfillment_group", "FULFILLMENT_GROUP_ID"}}
    },
    ["OFFER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_offer", "OFFER_ID"}}
    },
    ["FG_ADJUSTMENT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_page_attributes"] = {
    ["FIELD_VALUE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ATTRIBUTE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["FIELD_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PAGE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_page", "PAGE_ID"}}
    },
  },
  ["blc_asset_desc_map"] = {
    ["MAP_KEY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["STATIC_ASSET_DESC_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_static_asset_desc", "STATIC_ASSET_DESC_ID"}}
    },
    ["STATIC_ASSET_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_static_asset", "STATIC_ASSET_ID"}}
    },
  },
  ["blc_cat_site_map_gen_cfg"] = {
    ["STARTING_DEPTH"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["GEN_CONFIG_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_site_map_gen_cfg", "GEN_CONFIG_ID"}}
    },
    ["ROOT_CATEGORY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_category", "CATEGORY_ID"}}
    },
    ["ENDING_DEPTH"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_fulfillment_price_band"] = {
    ["RETAIL_PRICE_MINIMUM_AMOUNT"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["FULFILLMENT_OPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_fulfillment_opt_banded_prc", "FULFILLMENT_OPTION_ID"}}
    },
    ["FULFILLMENT_PRICE_BAND_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["RESULT_AMOUNT"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["RESULT_AMOUNT_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_sandbox"] = {
    ["CREATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_UPDATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SANDBOX_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["AUTHOR"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SANDBOX_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PARENT_SANDBOX_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_sandbox", "SANDBOX_ID"}}
    },
    ["DESCRIPTION"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["COLOR"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SANDBOX_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["GO_LIVE_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ARCHIVED"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_qual_crit_offer_xref"] = {
    ["OFFER_ITEM_CRITERIA_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_offer_item_criteria", "OFFER_ITEM_CRITERIA_ID"}}
    },
    ["OFFER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_offer", "OFFER_ID"}}
    },
    ["OFFER_QUAL_CRIT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_search_facet_range"] = {
    ["CREATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SEARCH_FACET_RANGE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["DATE_UPDATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SEARCH_FACET_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_search_facet", "SEARCH_FACET_ID"}}
    },
    ["UPDATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ARCHIVED"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MAX_VALUE"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MIN_VALUE"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_prorated_order_item_adjust"] = {
    ["PRORATED_ORDER_ITEM_ADJUST_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRORATED_QUANTITY"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ADJUSTMENT_REASON"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["OFFER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_offer", "OFFER_ID"}}
    },
    ["PRORATED_ADJUSTMENT_VALUE"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_order_item", "ORDER_ITEM_ID"}}
    },
  },
  ["blc_pgtmplt_fldgrp_xref"] = {
    ["PG_TMPLT_FLD_GRP_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PAGE_TMPLT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_page_tmplt", "PAGE_TMPLT_ID"}}
    },
    ["FLD_GROUP_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_fld_group", "FLD_GROUP_ID"}}
    },
    ["GROUP_ORDER"] = {
      data_type = {"decimal", "decimal", 10, 6},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_cust_site_map_gen_cfg"] = {
    ["GEN_CONFIG_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_site_map_gen_cfg", "GEN_CONFIG_ID"}}
    },
  },
  ["blc_data_drvn_enum"] = {
    ["ENUM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["MODIFIABLE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ENUM_KEY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_customer"] = {
    ["CREATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DEACTIVATED"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["RECEIVE_EMAIL"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_UPDATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LOCALE_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_locale", "LOCALE_CODE"}}
    },
    ["CUSTOMER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CHALLENGE_ANSWER"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["USER_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LAST_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FIRST_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["IS_TAX_EXEMPT"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["EMAIL_ADDRESS"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PASSWORD"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PASSWORD_CHANGE_REQUIRED"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["EXTERNAL_ID"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["IS_PREVIEW"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ARCHIVED"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TAX_EXEMPTION_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CHALLENGE_QUESTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_challenge_question", "QUESTION_ID"}}
    },
    ["IS_REGISTERED"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_order_item_cart_message"] = {
    ["CART_MESSAGE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_order_item", "ORDER_ITEM_ID"}}
    },
  },
  ["blc_category"] = {
    ["CATEGORY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["META_TITLE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ACTIVE_END_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["URL"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["DISPLAY_TEMPLATE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FULFILLMENT_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DEFAULT_PARENT_CATEGORY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_category", "CATEGORY_ID"}}
    },
    ["INVENTORY_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ACTIVE_START_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DESCRIPTION"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_DESC_PATTERN_OVERRIDE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["URL_KEY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["EXTERNAL_ID"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LONG_DESCRIPTION"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ARCHIVED"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["META_DESC"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ROOT_DISPLAY_ORDER"] = {
      data_type = {"decimal", "decimal", 10, 6},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TAX_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["OVERRIDE_GENERATED_URL"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_TITLE_PATTERN_OVERRIDE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_email_tracking_opens"] = {
    ["OPEN_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["EMAIL_TRACKING_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_email_tracking", "EMAIL_TRACKING_ID"}}
    },
    ["USER_AGENT"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_OPENED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_shipping_rate"] = {
    ["FEE_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["BAND_UNIT_QTY"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["FEE_BAND"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["BAND_RESULT_PCT"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["BAND_RESULT_QTY"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["FEE_SUB_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_admin_role_permission_xref"] = {
    ["ADMIN_ROLE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_admin_role", "ADMIN_ROLE_ID"}}
    },
    ["ADMIN_PERMISSION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_admin_permission", "ADMIN_PERMISSION_ID"}}
    },
  },
  ["blc_static_asset_strg"] = {
    ["FILE_DATA"] = {
      data_type = {"lob", "longblob", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["STATIC_ASSET_STRG_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["STATIC_ASSET_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_email_tracking"] = {
    ["EMAIL_TRACKING_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
    ["EMAIL_ADDRESS"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_SENT"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_country_sub_cat"] = {
    ["CREATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["COUNTRY_SUB_CAT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["DATE_UPDATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_credit_card_payment"] = {
    ["NAME_ON_CARD"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PAYMENT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["REFERENCE_NUMBER"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["EXPIRATION_YEAR"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PAN"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["EXPIRATION_MONTH"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_fulfillment_group_item"] = {
    ["STATUS"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TOTAL_ITEM_AMOUNT"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["QUANTITY"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TOTAL_ITEM_TAX"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TOTAL_ITEM_TAXABLE_AMOUNT"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FULFILLMENT_GROUP_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_fulfillment_group", "FULFILLMENT_GROUP_ID"}}
    },
    ["FULFILLMENT_GROUP_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_order_item", "ORDER_ITEM_ID"}}
    },
    ["PRORATED_ORDER_ADJ"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_search_intercept"] = {
    ["CREATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SEARCH_TERM"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ACTIVE_END_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_UPDATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ACTIVE_START_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SEARCH_REDIRECT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRIORITY"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["URL"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_review_detail"] = {
    ["REVIEW_TEXT"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["HELPFUL_COUNT"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["REVIEW_DETAIL_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CUSTOMER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_customer", "CUSTOMER_ID"}}
    },
    ["RATING_DETAIL_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_rating_detail", "RATING_DETAIL_ID"}}
    },
    ["NOT_HELPFUL_COUNT"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["REVIEW_SUBMITTED_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["RATING_SUMMARY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_rating_summary", "RATING_SUMMARY_ID"}}
    },
    ["REVIEW_STATUS"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_sc_fld_tmplt"] = {
    ["SC_FLD_TMPLT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_product_featured"] = {
    ["CATEGORY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_category", "CATEGORY_ID"}}
    },
    ["SEQUENCE"] = {
      data_type = {"decimal", "decimal", 10, 6},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_product", "PRODUCT_ID"}}
    },
    ["FEATURED_PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PROMOTION_MESSAGE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_site_map_url_entry"] = {
    ["LOCATION"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["URL_ENTRY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CHANGE_FREQ"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["GEN_CONFIG_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_cust_site_map_gen_cfg", "GEN_CONFIG_ID"}}
    },
    ["LAST_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRIORITY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_index_field"] = {
    ["INDEX_FIELD_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["SEARCHABLE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FIELD_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_field", "FIELD_ID"}}
    },
    ["ARCHIVED"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_module_configuration"] = {
    ["CREATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MODULE_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ACTIVE_END_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_UPDATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ACTIVE_START_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CONFIG_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["UPDATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MODULE_PRIORITY"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ARCHIVED"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["IS_DEFAULT"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["MODULE_CONFIG_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_admin_sec_perm_xref"] = {
    ["ADMIN_PERMISSION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_admin_permission", "ADMIN_PERMISSION_ID"}}
    },
    ["ADMIN_SECTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_admin_section", "ADMIN_SECTION_ID"}}
    },
  },
  ["blc_promotion_message"] = {
    ["MEDIA_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_media", "MEDIA_ID"}}
    },
    ["MESSAGE_PLACEMENT"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LOCALE_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_locale", "LOCALE_CODE"}}
    },
    ["END_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PROMOTION_MESSASGE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PROMOTION_MESSAGE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["START_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ARCHIVED"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PROMOTION_MESSAGE_PRIORITY"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_offer_audit"] = {
    ["REDEEMED_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CUSTOMER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["OFFER_AUDIT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["OFFER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["OFFER_CODE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_url_handler"] = {
    ["URL_HANDLER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["IS_REGEX"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["NEW_URL"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["INCOMING_URL"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["URL_REDIRECT_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_static_asset_desc"] = {
    ["CREATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_UPDATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DESCRIPTION"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LONG_DESCRIPTION"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["STATIC_ASSET_DESC_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_bund_item_fee_price"] = {
    ["BUND_ITEM_FEE_PRICE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["AMOUNT"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["REPORTING_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["BUND_ORDER_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_bundle_order_item", "ORDER_ITEM_ID"}}
    },
    ["IS_TAXABLE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_site_map_gen_cfg"] = {
    ["DISABLED"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["GEN_CONFIG_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CHANGE_FREQ"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRIORITY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["GENERATOR_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["MODULE_CONFIG_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_site_map_cfg", "MODULE_CONFIG_ID"}}
    },
  },
  ["blc_fg_item_tax_xref"] = {
    ["TAX_DETAIL_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_tax_detail", "TAX_DETAIL_ID"}}
    },
    ["FULFILLMENT_GROUP_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_fulfillment_group_item", "FULFILLMENT_GROUP_ITEM_ID"}}
    },
  },
  ["blc_offer_rule_map"] = {
    ["MAP_KEY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["OFFER_OFFER_RULE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["BLC_OFFER_OFFER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_offer", "OFFER_ID"}}
    },
    ["OFFER_RULE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_offer_rule", "OFFER_RULE_ID"}}
    },
  },
  ["blc_sandbox_mgmt"] = {
    ["SANDBOX_MGMT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CREATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_UPDATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SANDBOX_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_sandbox", "SANDBOX_ID"}}
    },
  },
  ["blc_store"] = {
    ["STORE_HOURS"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["STORE_NUMBER"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["STORE_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["STORE_OPEN"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LONGITUDE"] = {
      data_type = {"decimal", "double", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["STORE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ARCHIVED"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LATITUDE"] = {
      data_type = {"decimal", "double", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ADDRESS_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_address", "ADDRESS_ID"}}
    },
  },
  ["blc_item_offer_qualifier"] = {
    ["QUANTITY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ITEM_OFFER_QUALIFIER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["OFFER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_offer", "OFFER_ID"}}
    },
    ["ORDER_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_order_item", "ORDER_ITEM_ID"}}
    },
  },
  ["sequence_generator"] = {
    ["ID_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ID_VAL"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_catalog"] = {
    ["CATALOG_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ARCHIVED"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_challenge_question"] = {
    ["QUESTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["QUESTION"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_data_drvn_enum_val"] = {
    ["DISPLAY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ENUM_VAL_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["HIDDEN"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ENUM_KEY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ENUM_TYPE"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_data_drvn_enum", "ENUM_ID"}}
    },
  },
  ["blc_admin_user"] = {
    ["CREATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_UPDATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PASSWORD"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LOGIN"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ARCHIVED"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["EMAIL"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PHONE_NUMBER"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ACTIVE_STATUS_FLAG"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ADMIN_USER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_sku_bundle_item"] = {
    ["SKU_BUNDLE_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["QUANTITY"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["SKU_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_sku", "SKU_ID"}}
    },
    ["SEQUENCE"] = {
      data_type = {"decimal", "decimal", 10, 6},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_BUNDLE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_product_bundle", "PRODUCT_ID"}}
    },
    ["ITEM_SALE_PRICE"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_currency"] = {
    ["CREATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FRIENDLY_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DEFAULT_FLAG"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_UPDATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CURRENCY_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_fulfillment_group_fee"] = {
    ["FULFILLMENT_GROUP_FEE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["AMOUNT"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["REPORTING_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FEE_TAXABLE_FLAG"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FULFILLMENT_GROUP_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_fulfillment_group", "FULFILLMENT_GROUP_ID"}}
    },
    ["TOTAL_FEE_TAX"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_sku_fulfillment_excluded"] = {
    ["SKU_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_sku", "SKU_ID"}}
    },
    ["FULFILLMENT_OPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_fulfillment_option", "FULFILLMENT_OPTION_ID"}}
    },
  },
  ["blc_id_generation"] = {
    ["ID_MIN"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["BATCH_SIZE"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["BATCH_START"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ID_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ID_MAX"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["version"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_order_attribute"] = {
    ["ORDER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_order", "ORDER_ID"}}
    },
    ["VALUE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_ATTRIBUTE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_page_rule_map"] = {
    ["PAGE_RULE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_page_rule", "PAGE_RULE_ID"}}
    },
    ["MAP_KEY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["BLC_PAGE_PAGE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_page", "PAGE_ID"}}
    },
  },
  ["blc_order_item_add_attr"] = {
    ["VALUE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_discrete_order_item", "ORDER_ITEM_ID"}}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_candidate_fg_offer"] = {
    ["CANDIDATE_FG_OFFER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["DISCOUNTED_PRICE"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FULFILLMENT_GROUP_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_fulfillment_group", "FULFILLMENT_GROUP_ID"}}
    },
    ["OFFER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_offer", "OFFER_ID"}}
    },
  },
  ["blc_sc"] = {
    ["CONTENT_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["LOCALE_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_locale", "LOCALE_CODE"}}
    },
    ["PRIORITY"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["SC_TYPE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_sc_type", "SC_TYPE_ID"}}
    },
    ["SC_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["OFFLINE_FLAG"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_sku_fulfillment_flat_rates"] = {
    ["SKU_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_sku", "SKU_ID"}}
    },
    ["RATE"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FULFILLMENT_OPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_fulfillment_option", "FULFILLMENT_OPTION_ID"}}
    },
  },
  ["blc_cat_search_facet_xref"] = {
    ["CATEGORY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_category", "CATEGORY_ID"}}
    },
    ["CATEGORY_SEARCH_FACET_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["SEARCH_FACET_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_search_facet", "SEARCH_FACET_ID"}}
    },
    ["SEQUENCE"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_field"] = {
    ["CREATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FRIENDLY_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_UPDATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FIELD_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["UPDATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ENTITY_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PROPERTY_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TRANSLATABLE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ABBREVIATION"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["OVERRIDE_GENERATED_PROP_NAME"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_dyn_discrete_order_item"] = {
    ["ORDER_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_discrete_order_item", "ORDER_ITEM_ID"}}
    },
  },
  ["blc_iso_country"] = {
    ["CREATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["NUMERIC_CODE"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["STATUS"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_UPDATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ALPHA_3"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ALPHA_2"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_cms_menu"] = {
    ["MENU_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_customer_payment"] = {
    ["PAYMENT_TOKEN"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PAYMENT_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CUSTOMER_PAYMENT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CUSTOMER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_customer", "CUSTOMER_ID"}}
    },
    ["GATEWAY_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["IS_DEFAULT"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ADDRESS_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_address", "ADDRESS_ID"}}
    },
  },
  ["blc_search_synonym"] = {
    ["TERM"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SEARCH_SYNONYM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["SYNONYMS"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_giftwrap_order_item"] = {
    ["ORDER_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_discrete_order_item", "ORDER_ITEM_ID"}}
    },
  },
  ["blc_additional_offer_info"] = {
    ["BLC_ORDER_ORDER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_order", "ORDER_ID"}}
    },
    ["OFFER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_offer", "OFFER_ID"}}
    },
    ["OFFER_INFO_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_offer_info", "OFFER_INFO_ID"}}
    },
  },
  ["blc_disc_item_fee_price"] = {
    ["AMOUNT"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["REPORTING_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DISC_ITEM_FEE_PRICE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_discrete_order_item", "ORDER_ITEM_ID"}}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_img_static_asset"] = {
    ["WIDTH"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["HEIGHT"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["STATIC_ASSET_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_static_asset", "STATIC_ASSET_ID"}}
    },
  },
  ["blc_order_payment"] = {
    ["PAYMENT_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_order", "ORDER_ID"}}
    },
    ["AMOUNT"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["REFERENCE_NUMBER"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ARCHIVED"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["GATEWAY_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_PAYMENT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
    ["ADDRESS_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_address", "ADDRESS_ID"}}
    },
  },
  ["blc_bank_account_payment"] = {
    ["ROUTING_NUMBER"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PAYMENT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["REFERENCE_NUMBER"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ACCOUNT_NUMBER"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_phone"] = {
    ["PHONE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["EXTENSION"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["IS_ACTIVE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["IS_DEFAULT"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PHONE_NUMBER"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["COUNTRY_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_admin_user_sandbox"] = {
    ["SANDBOX_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_sandbox", "SANDBOX_ID"}}
    },
    ["ADMIN_USER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_admin_user", "ADMIN_USER_ID"}}
    },
  },
  ["blc_translation"] = {
    ["TRANSLATED_VALUE"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ENTITY_ID"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LOCALE_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TRANSLATION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["FIELD_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ENTITY_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_category_xref"] = {
    ["CATEGORY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_category", "CATEGORY_ID"}}
    },
    ["DEFAULT_REFERENCE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DISPLAY_ORDER"] = {
      data_type = {"decimal", "decimal", 10, 6},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SUB_CATEGORY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_category", "CATEGORY_ID"}}
    },
    ["CATEGORY_XREF_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_sc_type"] = {
    ["SC_FLD_TMPLT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_sc_fld_tmplt", "SC_FLD_TMPLT_ID"}}
    },
    ["DESCRIPTION"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SC_TYPE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_review_feedback"] = {
    ["IS_HELPFUL"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["REVIEW_DETAIL_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_review_detail", "REVIEW_DETAIL_ID"}}
    },
    ["CUSTOMER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_customer", "CUSTOMER_ID"}}
    },
    ["REVIEW_FEEDBACK_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_admin_permission_entity"] = {
    ["ADMIN_PERMISSION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_admin_permission", "ADMIN_PERMISSION_ID"}}
    },
    ["CEILING_ENTITY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ADMIN_PERMISSION_ENTITY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_fulfillment_option_fixed"] = {
    ["PRICE"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["FULFILLMENT_OPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_fulfillment_option", "FULFILLMENT_OPTION_ID"}}
    },
    ["CURRENCY_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_currency", "CURRENCY_CODE"}}
    },
  },
  ["blc_page_item_criteria"] = {
    ["PAGE_ITEM_CRITERIA_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["QUANTITY"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_ITEM_MATCH_RULE"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_product_attribute"] = {
    ["VALUE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_ATTRIBUTE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_product", "PRODUCT_ID"}}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_offer_rule"] = {
    ["OFFER_RULE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["MATCH_RULE"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_admin_module"] = {
    ["DISPLAY_ORDER"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MODULE_KEY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ADMIN_MODULE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ICON"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_sc_fld"] = {
    ["FLD_KEY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LOB_VALUE"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["SC_FLD_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["VALUE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_admin_permission_xref"] = {
    ["CHILD_PERMISSION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_admin_permission", "ADMIN_PERMISSION_ID"}}
    },
    ["ADMIN_PERMISSION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_admin_permission", "ADMIN_PERMISSION_ID"}}
    },
  },
  ["blc_state"] = {
    ["COUNTRY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_country", "ABBREVIATION"}}
    },
    ["ABBREVIATION"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_sc_fld_map"] = {
    ["MAP_KEY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["SC_FLD_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_sc_fld", "SC_FLD_ID"}}
    },
    ["BLC_SC_SC_FIELD_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["SC_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_sc", "SC_ID"}}
    },
  },
  ["blc_offer_code"] = {
    ["EMAIL_ADDRESS"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["OFFER_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["END_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["OFFER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_offer", "OFFER_ID"}}
    },
    ["START_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["OFFER_CODE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ARCHIVED"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MAX_USES"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["USES"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_category_product_xref"] = {
    ["CATEGORY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_category", "CATEGORY_ID"}}
    },
    ["DEFAULT_REFERENCE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DISPLAY_ORDER"] = {
      data_type = {"decimal", "decimal", 10, 6},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CATEGORY_PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_product", "PRODUCT_ID"}}
    },
  },
  ["blc_userconnection"] = {
    ["profileUrl"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["expireTime"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["providerId"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["displayName"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["imageUrl"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["rank"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["secret"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["accessToken"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["providerUserId"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["userId"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["refreshToken"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_admin_role"] = {
    ["CREATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ADMIN_ROLE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["DATE_UPDATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DESCRIPTION"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["UPDATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_admin_user_role_xref"] = {
    ["ADMIN_ROLE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_admin_role", "ADMIN_ROLE_ID"}}
    },
    ["ADMIN_USER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_admin_user", "ADMIN_USER_ID"}}
    },
  },
  ["blc_sc_fldgrp_xref"] = {
    ["SC_FLD_TMPLT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_sc_fld_tmplt", "SC_FLD_TMPLT_ID"}}
    },
    ["BLC_SC_FLDGRP_XREF_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["FLD_GROUP_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_fld_group", "FLD_GROUP_ID"}}
    },
    ["GROUP_ORDER"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_product_option_xref"] = {
    ["PRODUCT_OPTION_XREF_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRODUCT_OPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_product_option", "PRODUCT_OPTION_ID"}}
    },
    ["PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_product", "PRODUCT_ID"}}
    },
  },
  ["blc_offer_item_criteria"] = {
    ["OFFER_ITEM_CRITERIA_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["QUANTITY"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_ITEM_MATCH_RULE"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_discrete_order_item"] = {
    ["BASE_SALE_PRICE"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SKU_BUNDLE_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_sku_bundle_item", "SKU_BUNDLE_ITEM_ID"}}
    },
    ["SKU_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_sku", "SKU_ID"}}
    },
    ["BASE_RETAIL_PRICE"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_order_item", "ORDER_ITEM_ID"}}
    },
    ["PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_product", "PRODUCT_ID"}}
    },
    ["BUNDLE_ORDER_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_bundle_order_item", "ORDER_ITEM_ID"}}
    },
  },
  ["blc_sku_option_value_xref"] = {
    ["PRODUCT_OPTION_VALUE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_product_option_value", "PRODUCT_OPTION_VALUE_ID"}}
    },
    ["SKU_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_sku", "SKU_ID"}}
    },
    ["SKU_OPTION_VALUE_XREF_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_admin_password_token"] = {
    ["CREATE_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TOKEN_USED_FLAG"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PASSWORD_TOKEN"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TOKEN_USED_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ADMIN_USER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_order_multiship_option"] = {
    ["ORDER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_order", "ORDER_ID"}}
    },
    ["FULFILLMENT_OPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_fulfillment_option", "FULFILLMENT_OPTION_ID"}}
    },
    ["ORDER_MULTISHIP_OPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_order_item", "ORDER_ITEM_ID"}}
    },
    ["ADDRESS_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_address", "ADDRESS_ID"}}
    },
  },
  ["blc_site"] = {
    ["SITE_IDENTIFIER_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DEACTIVATED"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SITE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["SITE_IDENTIFIER_VALUE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ARCHIVED"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_order_item"] = {
    ["CREATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CATEGORY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_category", "CATEGORY_ID"}}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["GIFT_WRAP_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_giftwrap_order_item", "ORDER_ITEM_ID"}}
    },
    ["HAS_VALIDATION_ERRORS"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PARENT_ORDER_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_order_item", "ORDER_ITEM_ID"}}
    },
    ["PERSONAL_MESSAGE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_personal_message", "PERSONAL_MESSAGE_ID"}}
    },
    ["DATE_UPDATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRICE"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["QUANTITY"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["DISCOUNTS_ALLOWED"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["RETAIL_PRICE_OVERRIDE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["RETAIL_PRICE"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SALE_PRICE"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SALE_PRICE_OVERRIDE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ITEM_TAXABLE_FLAG"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TOTAL_TAX"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_order", "ORDER_ID"}}
    },
    ["UPDATED_BY"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_ITEM_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_fulfillment_weight_band"] = {
    ["MINIMUM_WEIGHT"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FULFILLMENT_OPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_fulfillment_opt_banded_wgt", "FULFILLMENT_OPTION_ID"}}
    },
    ["RESULT_AMOUNT"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["RESULT_AMOUNT_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["FULFILLMENT_WEIGHT_BAND_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["WEIGHT_UNIT_OF_MEASURE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_fulfillment_group"] = {
    ["PERSONAL_MESSAGE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_personal_message", "PERSONAL_MESSAGE_ID"}}
    },
    ["FULFILLMENT_GROUP_SEQUNCE"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["RETAIL_PRICE"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["STATUS"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FULFILLMENT_OPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_fulfillment_option", "FULFILLMENT_OPTION_ID"}}
    },
    ["SERVICE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TOTAL_FEE_TAX"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MERCHANDISE_TOTAL"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TOTAL"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TOTAL_FG_TAX"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SHIPPING_PRICE_TAXABLE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRICE"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FULFILLMENT_GROUP_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["REFERENCE_NUMBER"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SALE_PRICE"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TOTAL_TAX"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["IS_PRIMARY"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_order", "ORDER_ID"}}
    },
    ["PHONE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_phone", "PHONE_ID"}}
    },
    ["TOTAL_ITEM_TAX"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["METHOD"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DELIVERY_INSTRUCTION"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SHIPPING_OVERRIDE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ADDRESS_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_address", "ADDRESS_ID"}}
    },
  },
  ["blc_product_up_sale"] = {
    ["CATEGORY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_category", "CATEGORY_ID"}}
    },
    ["RELATED_SALE_PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_product", "PRODUCT_ID"}}
    },
    ["SEQUENCE"] = {
      data_type = {"decimal", "decimal", 10, 6},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UP_SALE_PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_product", "PRODUCT_ID"}}
    },
    ["PROMOTION_MESSAGE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_order_item_attribute"] = {
    ["VALUE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_order_item", "ORDER_ITEM_ID"}}
    },
    ["ORDER_ITEM_ATTRIBUTE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_search_facet_xref"] = {
    ["SEARCH_FACET_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_search_facet", "SEARCH_FACET_ID"}}
    },
    ["REQUIRED_FACET_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_search_facet", "SEARCH_FACET_ID"}}
    },
    ["ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_cms_menu_item"] = {
    ["LINKED_PAGE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_page", "PAGE_ID"}}
    },
    ["PARENT_MENU_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_cms_menu", "MENU_ID"}}
    },
    ["MENU_ITEM_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CUSTOM_HTML"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["SEQUENCE"] = {
      data_type = {"decimal", "decimal", 10, 6},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ACTION_URL"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LABEL"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LINKED_MENU_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_cms_menu", "MENU_ID"}}
    },
    ["ALT_TEXT"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MENU_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["IMAGE_URL"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_cat_search_facet_excl_xref"] = {
    ["CAT_EXCL_SEARCH_FACET_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CATEGORY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_category", "CATEGORY_ID"}}
    },
    ["SEARCH_FACET_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_search_facet", "SEARCH_FACET_ID"}}
    },
    ["SEQUENCE"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_fulfillment_option"] = {
    ["FULFILLMENT_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["FULFILLMENT_OPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TAXABLE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LONG_DESCRIPTION"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TAX_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["USE_FLAT_RATES"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_candidate_order_offer"] = {
    ["ORDER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_order", "ORDER_ID"}}
    },
    ["CANDIDATE_ORDER_OFFER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["DISCOUNTED_PRICE"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["OFFER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_offer", "OFFER_ID"}}
    },
  },
  ["blc_personal_message"] = {
    ["MESSAGE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MESSAGE_FROM"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PERSONAL_MESSAGE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["MESSAGE_TO"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["OCCASION"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_candidate_item_offer"] = {
    ["CANDIDATE_ITEM_OFFER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["DISCOUNTED_PRICE"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["OFFER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_offer", "OFFER_ID"}}
    },
    ["ORDER_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_order_item", "ORDER_ITEM_ID"}}
    },
  },
  ["blc_qual_crit_page_xref"] = {
    ["PAGE_ITEM_CRITERIA_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_page_item_criteria", "PAGE_ITEM_CRITERIA_ID"}}
    },
    ["PAGE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_page", "PAGE_ID"}}
    },
  },
  ["blc_sc_item_criteria"] = {
    ["SC_ITEM_CRITERIA_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["QUANTITY"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_ITEM_MATCH_RULE"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["SC_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_sc", "SC_ID"}}
    },
  },
  ["blc_sku_availability"] = {
    ["AVAILABILITY_STATUS"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["QTY_ON_HAND"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["RESERVE_QTY"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SKU_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["AVAILABILITY_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LOCATION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SKU_AVAILABILITY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_order_lock"] = {
    ["LOCKED"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["LAST_UPDATED"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LOCK_KEY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_sc_rule_map"] = {
    ["BLC_SC_SC_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_sc", "SC_ID"}}
    },
    ["MAP_KEY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["SC_RULE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_sc_rule", "SC_RULE_ID"}}
    },
  },
  ["blc_admin_user_permission_xref"] = {
    ["ADMIN_PERMISSION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_admin_permission", "ADMIN_PERMISSION_ID"}}
    },
    ["ADMIN_USER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_admin_user", "ADMIN_USER_ID"}}
    },
  },
  ["blc_sku_attribute"] = {
    ["SKU_ATTR_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["SKU_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_sku", "SKU_ID"}}
    },
    ["VALUE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_system_property"] = {
    ["FRIENDLY_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["BLC_SYSTEM_PROPERTY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PROPERTY_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PROPERTY_VALUE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FRIENDLY_TAB"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FRIENDLY_GROUP"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PROPERTY_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["OVERRIDE_GENERATED_PROP_NAME"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_media"] = {
    ["MEDIA_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TITLE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ALT_TEXT"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TAGS"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["URL"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_payment_log"] = {
    ["ORDER_PAYMENT_REF_NUM"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["AMOUNT_PAID"] = {
      data_type = {"decimal", "decimal", 19, 5},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CUSTOMER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_customer", "CUSTOMER_ID"}}
    },
    ["EXCEPTION_MESSAGE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LOG_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TRANSACTION_SUCCESS"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["USER_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PAYMENT_LOG_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_PAYMENT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TRANSACTION_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CURRENCY_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_currency", "CURRENCY_CODE"}}
    },
    ["TRANSACTION_TIMESTAMP"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_order_payment_transaction"] = {
    ["TRANSACTION_AMOUNT"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CUSTOMER_IP_ADDRESS"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SAVE_TOKEN"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SUCCESS"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_PAYMENT"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_order_payment", "ORDER_PAYMENT_ID"}}
    },
    ["PAYMENT_TRANSACTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = true, has_default = false,
      refers_to = {}
    },
    ["DATE_RECORDED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["RAW_RESPONSE"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ARCHIVED"] = {
      data_type = {"string_like", "char", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TRANSACTION_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PARENT_TRANSACTION"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_order_payment_transaction", "PAYMENT_TRANSACTION_ID"}}
    },
  },
  ["blc_fg_fg_tax_xref"] = {
    ["TAX_DETAIL_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_tax_detail", "TAX_DETAIL_ID"}}
    },
    ["FULFILLMENT_GROUP_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"blc_fulfillment_group", "FULFILLMENT_GROUP_ID"}}
    },
  },
  ["blc_fld_def"] = {
    ["FRIENDLY_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["VLDTN_ERROR_MSSG_KEY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ENUM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_data_drvn_enum", "ENUM_ID"}}
    },
    ["HELP_TEXT"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TEXT_AREA_FLAG"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["HIDDEN_FLAG"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["HINT"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["VLDTN_REGEX"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FLD_GROUP_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"blc_fld_group", "FLD_GROUP_ID"}}
    },
    ["FLD_DEF_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["FLD_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SECURITY_LEVEL"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MAX_LENGTH"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TOOLTIP"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["COLUMN_WIDTH"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["REQUIRED_FLAG"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ALLOW_MULTIPLES"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FLD_ORDER"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["blc_sc_rule"] = {
    ["SC_RULE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["MATCH_RULE"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["blc_zip_code"] = {
    ["ZIP_CODE_ID"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ZIP_CITY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ZIPCODE"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ZIP_LONGITUDE"] = {
      data_type = {"decimal", "double", -1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ZIP_LATITUDE"] = {
      data_type = {"decimal", "double", -1, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ZIP_STATE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
}

