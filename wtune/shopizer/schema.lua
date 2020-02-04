tables = {
  ["customer_option_set"] = {
    ["CUSTOMER_OPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"customer_option", "CUSTOMER_OPTION_ID"}}
    },
    ["CUSTOMER_OPTION_VALUE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"customer_option_value", "CUSTOMER_OPTION_VALUE_ID"}}
    },
    ["CUSTOMER_OPTIONSET_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["SORT_ORDER"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["country"] = {
    ["COUNTRY_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["COUNTRY_ISOCODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["GEOZONE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"geozone", "GEOZONE_ID"}}
    },
    ["COUNTRY_SUPPORTED"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["sm_transaction"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PAYMENT_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TRANSACTION_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"orders", "ORDER_ID"}}
    },
    ["AMOUNT"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DETAILS"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TRANSACTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TRANSACTION_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["userconnection"] = {
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
    ["secret"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["userRank"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["accessToken"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
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
  ["system_notification"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SYSTEM_NOTIF_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["END_DATE"] = {
      data_type = {"datetime_like", "date", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["USER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"user", "USER_ID"}}
    },
    ["START_DATE"] = {
      data_type = {"datetime_like", "date", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["VALUE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CONFIG_KEY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MERCHANT_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"merchant_store", "MERCHANT_ID"}}
    },
  },
  ["merchant_store"] = {
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SEIZEUNITCODE"] = {
      data_type = {"string_like", "varchar", 5, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["COUNTRY_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"country", "COUNTRY_ID"}}
    },
    ["STORE_POSTAL_CODE"] = {
      data_type = {"string_like", "varchar", 15, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CURRENCY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"currency", "CURRENCY_ID"}}
    },
    ["STORE_NAME"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["STORE_ADDRESS"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["INVOICE_TEMPLATE"] = {
      data_type = {"string_like", "varchar", 25, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LANGUAGE_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"language", "LANGUAGE_ID"}}
    },
    ["CONTINUESHOPPINGURL"] = {
      data_type = {"string_like", "varchar", 150, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CURRENCY_FORMAT_NATIONAL"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["STORE_PHONE"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["IN_BUSINESS_SINCE"] = {
      data_type = {"datetime_like", "date", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ZONE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"zone", "ZONE_ID"}}
    },
    ["STORE_EMAIL"] = {
      data_type = {"string_like", "varchar", 60, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["DOMAIN_NAME"] = {
      data_type = {"string_like", "varchar", 80, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["STORE_CITY"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["STORE_CODE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["STORE_TEMPLATE"] = {
      data_type = {"string_like", "varchar", 25, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["WEIGHTUNITCODE"] = {
      data_type = {"string_like", "varchar", 5, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["STORE_LOGO"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["STORE_STATE_PROV"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["USE_CACHE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MERCHANT_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["product_attribute"] = {
    ["PRODUCT_ATRIBUTE_PRICE"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["OPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"product_option", "PRODUCT_OPTION_ID"}}
    },
    ["PRODUCT_ATTRIBUTE_FOR_DISP"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_ATTRIBUTE_WEIGHT"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_ATTRIBUTE_DEFAULT"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_ATTRIBUTE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRODUCT_ATTRIBUTE_DISCOUNTED"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_ATTRIBUTE_REQUIRED"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_ATTRIBUTE_FREE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_ATTRIBUTE_SORT_ORD"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"product", "PRODUCT_ID"}}
    },
    ["OPTION_VALUE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"product_option_value", "PRODUCT_OPTION_VALUE_ID"}}
    },
  },
  ["product_image"] = {
    ["IMAGE_TYPE"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["IMAGE_CROP"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_IMAGE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRODUCT_IMAGE_URL"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"product", "PRODUCT_ID"}}
    },
    ["DEFAULT_IMAGE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_IMAGE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["language"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SORT_ORDER"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LANGUAGE_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["product_price"] = {
    ["PRODUCT_PRICE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRODUCT_PRICE_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRODUCT_AVAIL_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"product_availability", "PRODUCT_AVAIL_ID"}}
    },
    ["PRODUCT_PRICE_AMOUNT"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRODUCT_PRICE_SPECIAL_AMOUNT"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_PRICE_SPECIAL_ST_DATE"] = {
      data_type = {"datetime_like", "date", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_PRICE_TYPE"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_PRICE_SPECIAL_END_DATE"] = {
      data_type = {"datetime_like", "date", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DEFAULT_PRICE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["tax_rate_description"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DESCRIPTION"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TAX_RATE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"tax_rate", "TAX_RATE_ID"}}
    },
    ["TITLE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LANGUAGE_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"language", "LANGUAGE_ID"}}
    },
    ["DESCRIPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["tax_rate"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["COUNTRY_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"country", "COUNTRY_ID"}}
    },
    ["ZONE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"zone", "ZONE_ID"}}
    },
    ["PIGGYBACK"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PARENT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"tax_rate", "TAX_RATE_ID"}}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TAX_RATE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TAX_PRIORITY"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TAX_RATE"] = {
      data_type = {"decimal", "decimal", 7, 4},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["STORE_STATE_PROV"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TAX_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TAX_CLASS_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"tax_class", "TAX_CLASS_ID"}}
    },
    ["MERCHANT_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"merchant_store", "MERCHANT_ID"}}
    },
  },
  ["customer_attribute"] = {
    ["CUSTOMER_ATTR_TXT_VAL"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["OPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"customer_option", "CUSTOMER_OPTION_ID"}}
    },
    ["CUSTOMER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"customer", "CUSTOMER_ID"}}
    },
    ["CUSTOMER_ATTRIBUTE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["OPTION_VALUE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"customer_option_value", "CUSTOMER_OPTION_VALUE_ID"}}
    },
  },
  ["zone"] = {
    ["COUNTRY_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"country", "COUNTRY_ID"}}
    },
    ["ZONE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ZONE_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["manufacturer_description"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_LAST_CLICK"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DESCRIPTION"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["MANUFACTURERS_URL"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TITLE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MANUFACTURER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"manufacturer", "MANUFACTURER_ID"}}
    },
    ["URL_CLICKED"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LANGUAGE_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"language", "LANGUAGE_ID"}}
    },
    ["DESCRIPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["product_option_value_description"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_OPTION_VALUE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"product_option_value", "PRODUCT_OPTION_VALUE_ID"}}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DESCRIPTION"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TITLE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LANGUAGE_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"language", "LANGUAGE_ID"}}
    },
    ["DESCRIPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["product_description"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
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
    ["PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"product", "PRODUCT_ID"}}
    },
    ["DESCRIPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["SEF_URL"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["META_KEYWORDS"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_HIGHLIGHT"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DESCRIPTION"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TITLE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LANGUAGE_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"language", "LANGUAGE_ID"}}
    },
    ["DOWNLOAD_LNK"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["shopping_cart"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SHP_CART_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CUSTOMER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SHP_CART_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["MERCHANT_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"merchant_store", "MERCHANT_ID"}}
    },
  },
  ["sm_sequencer"] = {
    ["SEQ_COUNT"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SEQ_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["user_group"] = {
    ["USER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"user", "USER_ID"}}
    },
    ["GROUP_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"sm_group", "GROUP_ID"}}
    },
  },
  ["order_status_history"] = {
    ["ORDER_STATUS_HISTORY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"orders", "ORDER_ID"}}
    },
    ["CUSTOMER_NOTIFIED"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["COMMENTS"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["DATE_ADDED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["status"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["product_review"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["STATUS"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CUSTOMERS_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"customer", "CUSTOMER_ID"}}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_REVIEW_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["REVIEWS_RATING"] = {
      data_type = {"decimal", "double", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["REVIEWS_READ"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["REVIEW_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"product", "PRODUCT_ID"}}
    },
  },
  ["shopping_cart_attr_item"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_ATTR_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SHP_CART_ATTR_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["SHP_CART_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"shopping_cart_item", "SHP_CART_ITEM_ID"}}
    },
  },
  ["product_digital"] = {
    ["PRODUCT_DIGITAL_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"product", "PRODUCT_ID"}}
    },
    ["FILE_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["product_image_description"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_IMAGE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"product_image", "PRODUCT_IMAGE_ID"}}
    },
    ["DESCRIPTION"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ALT_TAG"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TITLE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LANGUAGE_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"language", "LANGUAGE_ID"}}
    },
    ["DESCRIPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["permission_group"] = {
    ["PERMISSION_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"permission", "PERMISSION_ID"}}
    },
    ["GROUP_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"sm_group", "GROUP_ID"}}
    },
  },
  ["order_account"] = {
    ["ORDER_ACCOUNT_END_DATE"] = {
      data_type = {"datetime_like", "date", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_ACCOUNT_START_DATE"] = {
      data_type = {"datetime_like", "date", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"orders", "ORDER_ID"}}
    },
    ["ORDER_ACCOUNT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_ACCOUNT_BILL_DAY"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["geozone"] = {
    ["GEOZONE_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["GEOZONE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["GEOZONE_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["customer_optin"] = {
    ["OPTIN_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"optin", "OPTIN_ID"}}
    },
    ["LAST"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CUSTOMER_OPTIN_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["VALUE"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["EMAIL"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["FIRST"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["OPTIN_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MERCHANT_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"merchant_store", "MERCHANT_ID"}}
    },
  },
  ["content_description"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
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
    ["DESCRIPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["SEF_URL"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CONTENT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"content", "CONTENT_ID"}}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["META_KEYWORDS"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DESCRIPTION"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TITLE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LANGUAGE_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"language", "LANGUAGE_ID"}}
    },
  },
  ["order_product"] = {
    ["PRODUCT_SKU"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_QUANTITY"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"orders", "ORDER_ID"}}
    },
    ["ONETIME_CHARGE"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRODUCT_NAME"] = {
      data_type = {"string_like", "varchar", 64, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["zone_description"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DESCRIPTION"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ZONE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"zone", "ZONE_ID"}}
    },
    ["TITLE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LANGUAGE_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"language", "LANGUAGE_ID"}}
    },
    ["DESCRIPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["file_history"] = {
    ["FILE_HISTORY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["FILESIZE"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["DATE_DELETED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FILE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ACCOUNTED_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_ADDED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["DOWNLOAD_COUNT"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["MERCHANT_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"merchant_store", "MERCHANT_ID"}}
    },
  },
  ["geozone_description"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DESCRIPTION"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["GEOZONE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"geozone", "GEOZONE_ID"}}
    },
    ["TITLE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LANGUAGE_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"language", "LANGUAGE_ID"}}
    },
    ["DESCRIPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["customer_group"] = {
    ["CUSTOMER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"customer", "CUSTOMER_ID"}}
    },
    ["GROUP_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"sm_group", "GROUP_ID"}}
    },
  },
  ["customer_option_desc"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CUSTOMER_OPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"customer_option", "CUSTOMER_OPTION_ID"}}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DESCRIPTION"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CUSTOMER_OPTION_COMMENT"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TITLE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LANGUAGE_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"language", "LANGUAGE_ID"}}
    },
    ["DESCRIPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["orders"] = {
    ["DELIVERY_FIRST_NAME"] = {
      data_type = {"string_like", "varchar", 64, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CURRENCY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"currency", "CURRENCY_ID"}}
    },
    ["CUSTOMER_EMAIL_ADDRESS"] = {
      data_type = {"string_like", "varchar", 50, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CUSTOMER_AGREED"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CC_EXPIRES"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DELIVERY_STREET_ADDRESS"] = {
      data_type = {"string_like", "varchar", 256, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LONGITUDE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CARD_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LAST_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DELIVERY_POSTCODE"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_TOTAL"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["BILLING_CITY"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["BILLING_TELEPHONE"] = {
      data_type = {"string_like", "varchar", 32, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["BILLING_LAST_NAME"] = {
      data_type = {"string_like", "varchar", 64, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CC_CVV"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DELIVERY_COUNTRY_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"country", "COUNTRY_ID"}}
    },
    ["ORDER_STATUS"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["BILLING_FIRST_NAME"] = {
      data_type = {"string_like", "varchar", 64, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["BILLING_POSTCODE"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MERCHANTID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"merchant_store", "MERCHANT_ID"}}
    },
    ["ORDER_DATE_FINISHED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["BILLING_STREET_ADDRESS"] = {
      data_type = {"string_like", "varchar", 256, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CONFIRMED_ADDRESS"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CUSTOMER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PAYMENT_MODULE_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SHIPPING_MODULE_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CURRENCY_VALUE"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DELIVERY_STATE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["BILLING_ZONE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"zone", "ZONE_ID"}}
    },
    ["DELIVERY_COMPANY"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PAYMENT_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DELIVERY_TELEPHONE"] = {
      data_type = {"string_like", "varchar", 32, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LOCALE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CHANNEL"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DELIVERY_LAST_NAME"] = {
      data_type = {"string_like", "varchar", 64, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DELIVERY_ZONE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"zone", "ZONE_ID"}}
    },
    ["BILLING_COUNTRY_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"country", "COUNTRY_ID"}}
    },
    ["CC_OWNER"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DELIVERY_CITY"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["IP_ADDRESS"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CC_NUMBER"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["BILLING_STATE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LATITUDE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["BILLING_COMPANY"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_PURCHASED"] = {
      data_type = {"datetime_like", "date", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["order_total"] = {
    ["MODULE"] = {
      data_type = {"string_like", "varchar", 60, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"orders", "ORDER_ID"}}
    },
    ["SORT_ORDER"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_TOTAL_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TEXT"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TITLE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_VALUE_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["VALUE"] = {
      data_type = {"decimal", "decimal", 15, 4},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_ACCOUNT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["shipping_quote"] = {
    ["DELIVERY_FIRST_NAME"] = {
      data_type = {"string_like", "varchar", 64, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["OPTION_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DELIVERY_STREET_ADDRESS"] = {
      data_type = {"string_like", "varchar", 256, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SHIPPING_NUMBER_DAYS"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["OPTION_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["QUOTE_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CUSTOMER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["QUOTE_HANDLING"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SHIPPING_QUOTE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["DELIVERY_POSTCODE"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DELIVERY_STATE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CART_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DELIVERY_COMPANY"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FREE_SHIPPING"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DELIVERY_TELEPHONE"] = {
      data_type = {"string_like", "varchar", 32, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MODULE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["OPTION_SHIPPING_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DELIVERY_LAST_NAME"] = {
      data_type = {"string_like", "varchar", 64, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DELIVERY_ZONE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"zone", "ZONE_ID"}}
    },
    ["OPTION_DELIVERY_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DELIVERY_CITY"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DELIVERY_COUNTRY_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"country", "COUNTRY_ID"}}
    },
    ["QUOTE_PRICE"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["merchant_configuration"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ACTIVE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MERCHANT_CONFIG_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["VALUE"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CONFIG_KEY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MERCHANT_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"merchant_store", "MERCHANT_ID"}}
    },
  },
  ["product_option_value"] = {
    ["PRODUCT_OPTION_VALUE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRODUCT_OPTION_VAL_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRODUCT_OPT_FOR_DISP"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_OPT_VAL_SORT_ORD"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_OPT_VAL_IMAGE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MERCHANT_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"merchant_store", "MERCHANT_ID"}}
    },
  },
  ["merchant_language"] = {
    ["stores_MERCHANT_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"merchant_store", "MERCHANT_ID"}}
    },
    ["languages_LANGUAGE_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"language", "LANGUAGE_ID"}}
    },
  },
  ["optin"] = {
    ["OPTIN_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["DESCRIPTION"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["END_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["START_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["MERCHANT_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"merchant_store", "MERCHANT_ID"}}
    },
  },
  ["merchant_log"] = {
    ["MERCHANT_LOG_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["MODULE"] = {
      data_type = {"string_like", "varchar", 25, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LOG"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["MERCHANT_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"merchant_store", "MERCHANT_ID"}}
    },
  },
  ["product_option"] = {
    ["PRODUCT_OPTION_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRODUCT_OPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRODUCT_OPTION_TYPE"] = {
      data_type = {"string_like", "varchar", 10, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_OPTION_SORT_ORD"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_OPTION_READ"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MERCHANT_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"merchant_store", "MERCHANT_ID"}}
    },
  },
  ["content"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CODE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRODUCT_GROUP"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CONTENT_POSITION"] = {
      data_type = {"string_like", "varchar", 10, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CONTENT_TYPE"] = {
      data_type = {"string_like", "varchar", 10, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LINK_TO_MENU"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SORT_ORDER"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CONTENT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["VISIBLE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MERCHANT_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"merchant_store", "MERCHANT_ID"}}
    },
  },
  ["manufacturer"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CODE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SORT_ORDER"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MANUFACTURER_IMAGE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MANUFACTURER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["MERCHANT_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"merchant_store", "MERCHANT_ID"}}
    },
  },
  ["category_description"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CATEGORY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"category", "CATEGORY_ID"}}
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
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DESCRIPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["SEF_URL"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["META_KEYWORDS"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DESCRIPTION"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TITLE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CATEGORY_HIGHLIGHT"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LANGUAGE_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"language", "LANGUAGE_ID"}}
    },
  },
  ["system_configuration"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SYSTEM_CONFIG_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["VALUE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CONFIG_KEY"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["customer_option_value"] = {
    ["CUSTOMER_OPT_VAL_IMAGE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CUSTOMER_OPTION_VALUE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["SORT_ORDER"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CUSTOMER_OPT_VAL_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["MERCHANT_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"merchant_store", "MERCHANT_ID"}}
    },
  },
  ["product_availability"] = {
    ["FREE_SHIPPING"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_AVAIL_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["STATUS"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["QUANTITY_ORD_MAX"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["QUANTITY"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["QUANTITY_ORD_MIN"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["REGION_VARIANT"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"product", "PRODUCT_ID"}}
    },
    ["DATE_AVAILABLE"] = {
      data_type = {"datetime_like", "date", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["REGION"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["product_relationship"] = {
    ["CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ACTIVE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_RELATIONSHIP_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"product", "PRODUCT_ID"}}
    },
    ["RELATED_PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"product", "PRODUCT_ID"}}
    },
    ["MERCHANT_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"merchant_store", "MERCHANT_ID"}}
    },
  },
  ["currency"] = {
    ["CURRENCY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CURRENCY_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CURRENCY_SUPPORTED"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CURRENCY_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CURRENCY_CURRENCY_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["customer_review"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["STATUS"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CUSTOMERS_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"customer", "CUSTOMER_ID"}}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["REVIEWS_RATING"] = {
      data_type = {"decimal", "double", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["REVIEWS_READ"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CUSTOMER_REVIEW_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["REVIEWED_CUSTOMER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"customer", "CUSTOMER_ID"}}
    },
    ["REVIEW_DATE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["product_option_desc"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DESCRIPTION"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRODUCT_OPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"product_option", "PRODUCT_OPTION_ID"}}
    },
    ["PRODUCT_OPTION_COMMENT"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TITLE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LANGUAGE_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"language", "LANGUAGE_ID"}}
    },
    ["DESCRIPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["product_review_description"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DESCRIPTION"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRODUCT_REVIEW_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"product_review", "PRODUCT_REVIEW_ID"}}
    },
    ["TITLE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LANGUAGE_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"language", "LANGUAGE_ID"}}
    },
    ["DESCRIPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["module_configuration"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["MODULE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["IMAGE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DETAILS"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CONFIGURATION"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CUSTOM_IND"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["REGIONS"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MODULE_CONF_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["order_attribute"] = {
    ["ORDER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"orders", "ORDER_ID"}}
    },
    ["IDENTIFIER"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["VALUE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_ATTRIBUTE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["product"] = {
    ["PRODUCT_VIRTUAL"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["RENTAL_STATUS"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_FREE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_TYPE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"product_type", "PRODUCT_TYPE_ID"}}
    },
    ["MANUFACTURER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"manufacturer", "MANUFACTURER_ID"}}
    },
    ["PRODUCT_LENGTH"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PREORDER"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["QUANTITY_ORDERED"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["REVIEW_COUNT"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_HEIGHT"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_WIDTH"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CUSTOMER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"customer", "CUSTOMER_ID"}}
    },
    ["PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["DATE_AVAILABLE"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["AVAILABLE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["REVIEW_AVG"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_WEIGHT"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["REF_SKU"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_SHIP"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SORT_ORDER"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["RENTAL_DURATION"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SKU"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["COND"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["RENTAL_PERIOD"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["TAX_CLASS_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"tax_class", "TAX_CLASS_ID"}}
    },
    ["MERCHANT_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"merchant_store", "MERCHANT_ID"}}
    },
  },
  ["tax_class"] = {
    ["TAX_CLASS_CODE"] = {
      data_type = {"string_like", "varchar", 10, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TAX_CLASS_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TAX_CLASS_TITLE"] = {
      data_type = {"string_like", "varchar", 32, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["MERCHANT_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"merchant_store", "MERCHANT_ID"}}
    },
  },
  ["shiping_origin"] = {
    ["COUNTRY_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"country", "COUNTRY_ID"}}
    },
    ["ACTIVE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CITY"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ZONE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"zone", "ZONE_ID"}}
    },
    ["POSTCODE"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["STATE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SHIP_ORIGIN_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["STREET_ADDRESS"] = {
      data_type = {"string_like", "varchar", 256, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["MERCHANT_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"merchant_store", "MERCHANT_ID"}}
    },
  },
  ["country_description"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["COUNTRY_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"country", "COUNTRY_ID"}}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DESCRIPTION"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TITLE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LANGUAGE_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"language", "LANGUAGE_ID"}}
    },
    ["DESCRIPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["permission"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PERMISSION_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PERMISSION_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["shopping_cart_item"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SHP_CART_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"shopping_cart", "SHP_CART_ID"}}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["QUANTITY"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SHP_CART_ITEM_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["order_product_attribute"] = {
    ["PRODUCT_OPTION_VALUE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_PRODUCT_ATTRIBUTE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRODUCT_ATTRIBUTE_IS_FREE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRODUCT_OPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRODUCT_ATTRIBUTE_PRICE"] = {
      data_type = {"decimal", "decimal", 15, 4},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRODUCT_ATTRIBUTE_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_ATTRIBUTE_WEIGHT"] = {
      data_type = {"decimal", "decimal", 15, 4},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_ATTRIBUTE_VAL_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"order_product", "ORDER_PRODUCT_ID"}}
    },
  },
  ["customer_opt_val_description"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DESCRIPTION"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CUSTOMER_OPT_VAL_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"customer_option_value", "CUSTOMER_OPTION_VALUE_ID"}}
    },
    ["TITLE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LANGUAGE_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"language", "LANGUAGE_ID"}}
    },
    ["DESCRIPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["sm_group"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["GROUP_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["GROUP_TYPE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["GROUP_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["product_type"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRD_TYPE_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_TYPE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRD_TYPE_ADD_TO_CART"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
  },
  ["product_price_description"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_PRICE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"product_price", "PRODUCT_PRICE_ID"}}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DESCRIPTION"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["TITLE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LANGUAGE_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"language", "LANGUAGE_ID"}}
    },
    ["DESCRIPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["customer_option"] = {
    ["CUSTOMER_OPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CUSTOMER_OPT_CODE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["SORT_ORDER"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CUSTOMER_OPT_ACTIVE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CUSTOMER_OPTION_TYPE"] = {
      data_type = {"string_like", "varchar", 10, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CUSTOMER_OPT_PUBLIC"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MERCHANT_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"merchant_store", "MERCHANT_ID"}}
    },
  },
  ["order_product_download"] = {
    ["DOWNLOAD_MAXDAYS"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_PRODUCT_FILENAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_PRODUCT_DOWNLOAD_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"order_product", "ORDER_PRODUCT_ID"}}
    },
    ["DOWNLOAD_COUNT"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["order_account_product"] = {
    ["ORDER_ACCOUNT_PRODUCT_END_DT"] = {
      data_type = {"datetime_like", "date", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_ACCOUNT_PRODUCT_L_TRX_ST"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_ACCOUNT_PRODUCT_ST_DT"] = {
      data_type = {"datetime_like", "date", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_ACCOUNT_PRODUCT_L_ST_DT"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_ACCOUNT_PRODUCT_STATUS"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_ACCOUNT_PRODUCT_ACCNT_DT"] = {
      data_type = {"datetime_like", "date", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_ACCOUNT_PRODUCT_EOT"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ORDER_ACCOUNT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"order_account", "ORDER_ACCOUNT_ID"}}
    },
    ["ORDER_ACCOUNT_PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_ACCOUNT_PRODUCT_PM_FR_TY"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"order_product", "ORDER_PRODUCT_ID"}}
    },
  },
  ["order_product_price"] = {
    ["PRODUCT_PRICE"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRODUCT_PRICE_CODE"] = {
      data_type = {"string_like", "varchar", 64, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_PRODUCT_PRICE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["PRODUCT_PRICE_SPECIAL"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRODUCT_PRICE_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRD_PRICE_SPECIAL_END_DT"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PRD_PRICE_SPECIAL_ST_DT"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DEFAULT_PRICE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ORDER_PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"order_product", "ORDER_PRODUCT_ID"}}
    },
  },
  ["category"] = {
    ["CATEGORY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CATEGORY_STATUS"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["VISIBLE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["PARENT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"category", "CATEGORY_ID"}}
    },
    ["CATEGORY_IMAGE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CODE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["SORT_ORDER"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["FEATURED"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DEPTH"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LINEAGE"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MERCHANT_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"merchant_store", "MERCHANT_ID"}}
    },
  },
  ["customer_review_description"] = {
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DESCRIPTION"] = {
      data_type = {"string_like", "longtext", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CUSTOMER_REVIEW_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"customer_review", "CUSTOMER_REVIEW_ID"}}
    },
    ["TITLE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LANGUAGE_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"language", "LANGUAGE_ID"}}
    },
    ["DESCRIPTION_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["NAME"] = {
      data_type = {"string_like", "varchar", 120, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
  },
  ["user"] = {
    ["ADMIN_A3"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ADMIN_A1"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LOGIN_ACCESS"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ADMIN_A2"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ACTIVE"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LAST_ACCESS"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["USER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ADMIN_Q3"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ADMIN_Q1"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ADMIN_PASSWORD"] = {
      data_type = {"string_like", "varchar", 60, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ADMIN_Q2"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["ADMIN_NAME"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = true, is_unique = true, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ADMIN_LAST_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LANGUAGE_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"language", "LANGUAGE_ID"}}
    },
    ["ADMIN_EMAIL"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["ADMIN_FIRST_NAME"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MERCHANT_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"merchant_store", "MERCHANT_ID"}}
    },
  },
  ["product_category"] = {
    ["CATEGORY_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"category", "CATEGORY_ID"}}
    },
    ["PRODUCT_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"product", "PRODUCT_ID"}}
    },
  },
  ["customer"] = {
    ["DATE_CREATED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DELIVERY_FIRST_NAME"] = {
      data_type = {"string_like", "varchar", 64, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CUSTOMER_EMAIL_ADDRESS"] = {
      data_type = {"string_like", "varchar", 96, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["DELIVERY_STREET_ADDRESS"] = {
      data_type = {"string_like", "varchar", 256, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LONGITUDE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DELIVERY_POSTCODE"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["BILLING_CITY"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["BILLING_TELEPHONE"] = {
      data_type = {"string_like", "varchar", 32, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["BILLING_LAST_NAME"] = {
      data_type = {"string_like", "varchar", 64, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["REVIEW_COUNT"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CUSTOMER_GENDER"] = {
      data_type = {"string_like", "varchar", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DELIVERY_COUNTRY_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"country", "COUNTRY_ID"}}
    },
    ["LANGUAGE_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"language", "LANGUAGE_ID"}}
    },
    ["CUSTOMER_NICK"] = {
      data_type = {"string_like", "varchar", 96, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["BILLING_FIRST_NAME"] = {
      data_type = {"string_like", "varchar", 64, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["DATE_MODIFIED"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["BILLING_POSTCODE"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CUSTOMER_ANONYMOUS"] = {
      data_type = {"integral", "bit", 1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["BILLING_STREET_ADDRESS"] = {
      data_type = {"string_like", "varchar", 256, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CUSTOMER_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = true, is_primary_key = true, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {}
    },
    ["CUSTOMER_DOB"] = {
      data_type = {"datetime_like", "datetime", -1, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DELIVERY_STATE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["BILLING_ZONE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"zone", "ZONE_ID"}}
    },
    ["DELIVERY_COMPANY"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DELIVERY_TELEPHONE"] = {
      data_type = {"string_like", "varchar", 32, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["REVIEW_AVG"] = {
      data_type = {"decimal", "decimal", 19, 2},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["UPDT_ID"] = {
      data_type = {"string_like", "varchar", 20, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DELIVERY_LAST_NAME"] = {
      data_type = {"string_like", "varchar", 64, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CUSTOMER_PASSWORD"] = {
      data_type = {"string_like", "varchar", 60, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["DELIVERY_ZONE_ID"] = {
      data_type = {"integral", "bigint", 20, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {{"zone", "ZONE_ID"}}
    },
    ["PROVIDER"] = {
      data_type = {"string_like", "varchar", 255, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["BILLING_COUNTRY_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"country", "COUNTRY_ID"}}
    },
    ["DELIVERY_CITY"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["BILLING_STATE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["LATITUDE"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["BILLING_COMPANY"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["CUSTOMER_COMPANY"] = {
      data_type = {"string_like", "varchar", 100, -1},
      is_indexed = false, is_unique = false, is_primary_key = false, is_not_null = false, is_auto_increment = false, has_default = true,
      refers_to = {}
    },
    ["MERCHANT_ID"] = {
      data_type = {"integral", "int", 11, -1},
      is_indexed = true, is_unique = false, is_primary_key = false, is_not_null = true, is_auto_increment = false, has_default = false,
      refers_to = {{"merchant_store", "MERCHANT_ID"}}
    },
  },
}

