/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_evt_log` (
  `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`LOG_NR_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_procdef_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_IDX_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_INFO_JSON_BA` (`INFO_JSON_ID_`),
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_autz_detail` (
  `u_id` varchar(32) NOT NULL COMMENT 'uid',
  `permission_id` varchar(32) NOT NULL COMMENT '权限ID',
  `setting_id` varchar(64) NOT NULL COMMENT '设置ID',
  `actions` text COMMENT '可操作类型',
  `data_accesses` text COMMENT '数据权限控制',
  `status` decimal(4,0) DEFAULT NULL COMMENT '状态',
  `priority` decimal(32,0) DEFAULT NULL COMMENT '优先级',
  `is_merge` decimal(4,0) DEFAULT NULL COMMENT '是否合并',
  PRIMARY KEY (`u_id`),
  KEY `idx_ad_setting_id` (`setting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='权限设置详情表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_autz_menu` (
  `u_id` varchar(32) NOT NULL COMMENT 'uid',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父级ID',
  `menu_id` varchar(32) NOT NULL COMMENT '菜单ID',
  `setting_id` varchar(64) NOT NULL COMMENT '设置ID',
  `path` varchar(128) NOT NULL COMMENT '树编码',
  `sort_index` decimal(32,0) DEFAULT NULL COMMENT '树编码',
  `status` decimal(4,0) DEFAULT NULL COMMENT '状态',
  `level` decimal(32,0) DEFAULT NULL COMMENT '树深度',
  `config` text COMMENT '其他配置',
  PRIMARY KEY (`u_id`),
  KEY `idx_ame_setting_id` (`setting_id`),
  KEY `idx_ame_parent_id` (`parent_id`),
  KEY `idx_ame_path` (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='权限设置菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_autz_setting` (
  `u_id` varchar(32) NOT NULL COMMENT 'uid',
  `type` varchar(32) NOT NULL COMMENT '权限类型',
  `setting_for` varchar(64) NOT NULL COMMENT '设置给谁',
  `describe` varchar(256) DEFAULT NULL COMMENT '备注',
  `status` decimal(4,0) DEFAULT NULL COMMENT '设置给谁',
  PRIMARY KEY (`u_id`),
  KEY `idx_as_type_setting_for` (`type`,`setting_for`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='权限设置表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_dashboard_conf` (
  `u_id` varchar(32) NOT NULL COMMENT 'ID',
  `name` varchar(32) DEFAULT NULL COMMENT '配置名称',
  `type` varchar(32) DEFAULT NULL COMMENT '配置类型',
  `template` text COMMENT '模板',
  `script` text COMMENT '脚本',
  `script_lang` varchar(32) DEFAULT NULL COMMENT '脚本语言',
  `permission` varchar(512) DEFAULT NULL COMMENT '权限设置',
  `creator_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` decimal(32,0) DEFAULT NULL COMMENT '创建时间',
  `sort_index` decimal(32,0) DEFAULT NULL COMMENT '排序',
  `status` decimal(4,0) DEFAULT NULL COMMENT '状态',
  `is_default` decimal(2,0) DEFAULT NULL COMMENT '是否默认',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='仪表盘配置';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_datasource_conf` (
  `u_id` varchar(32) NOT NULL COMMENT 'ID',
  `name` varchar(64) DEFAULT NULL COMMENT '数据源名称',
  `enabled` decimal(4,0) DEFAULT NULL COMMENT '是否启用',
  `create_date` datetime(6) DEFAULT NULL COMMENT '创建日期',
  `properties` text COMMENT '数据源配置',
  `describe` varchar(512) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='数据源配置';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_department` (
  `u_id` varchar(32) NOT NULL COMMENT 'ID',
  `name` varchar(64) DEFAULT NULL COMMENT '名称',
  `org_id` varchar(32) DEFAULT NULL COMMENT '所在组织id',
  `code` varchar(32) DEFAULT NULL COMMENT '部门编码',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父级id',
  `path` varchar(128) DEFAULT NULL COMMENT '树结构编码',
  `sort_index` decimal(32,0) DEFAULT NULL COMMENT '排序序号',
  `status` decimal(4,0) DEFAULT NULL COMMENT '状态',
  `level` decimal(32,0) DEFAULT NULL COMMENT '级别',
  PRIMARY KEY (`u_id`),
  KEY `idx_dept_parent_id` (`parent_id`),
  KEY `idx_dept_path` (`path`),
  KEY `idx_dept_org_id` (`org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='部门';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_dict_item` (
  `u_id` varchar(32) NOT NULL COMMENT 'ID',
  `dict_id` varchar(32) DEFAULT NULL COMMENT '字典id',
  `name` varchar(64) DEFAULT NULL COMMENT '名称',
  `value` varchar(64) DEFAULT NULL COMMENT '字典值',
  `text` varchar(128) DEFAULT NULL COMMENT '字典文本',
  `value_type` varchar(64) DEFAULT NULL COMMENT '字典值类型',
  `status` decimal(4,0) DEFAULT NULL COMMENT '状态',
  `describe` varchar(128) DEFAULT NULL COMMENT '说明',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父级选项',
  `path` varchar(128) DEFAULT NULL COMMENT '树编码',
  `search_code` varchar(128) DEFAULT NULL COMMENT '快速搜索码',
  `sort_index` decimal(32,0) DEFAULT NULL COMMENT '排序索引',
  `level_` decimal(32,0) DEFAULT NULL COMMENT '树结构层级',
  `ordinal` decimal(32,0) DEFAULT NULL COMMENT '识别码',
  `properties` text COMMENT '其他自定义属性',
  PRIMARY KEY (`u_id`),
  KEY `idx_dict_dic_id` (`dict_id`),
  KEY `idx_dict_path` (`path`),
  KEY `idx_dict_search_code` (`search_code`),
  KEY `idx_dict_ordinal` (`ordinal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='数据字典选项配置';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_dict_parser` (
  `u_id` varchar(32) NOT NULL COMMENT 'ID',
  `v_t_parser` text COMMENT '值到文本转换方式',
  `t_v_parser` text COMMENT '文本到值转换方式',
  `on_error` varchar(32) DEFAULT NULL COMMENT '转换失败时的操作',
  `create_time` decimal(32,0) DEFAULT NULL COMMENT '创建时间',
  `creator_id` varchar(32) DEFAULT NULL COMMENT '创建人id',
  `update_time` decimal(32,0) DEFAULT NULL COMMENT '更新时间',
  `name` varchar(128) DEFAULT NULL COMMENT '名称',
  `describe` varchar(256) DEFAULT NULL COMMENT '说明',
  `classified_id` varchar(32) DEFAULT NULL COMMENT '分类id',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='数据字典解析配置';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_dictionary` (
  `u_id` varchar(32) NOT NULL COMMENT 'ID',
  `name` varchar(64) DEFAULT NULL COMMENT '字典名称',
  `classified_id` varchar(32) DEFAULT NULL COMMENT '分类id',
  `describe` varchar(256) DEFAULT NULL COMMENT '说明',
  `create_time` decimal(32,0) DEFAULT NULL COMMENT '创建时间',
  `creator_id` varchar(32) DEFAULT NULL COMMENT '创建人id',
  `status` decimal(4,0) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='数据字典';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_district` (
  `u_id` varchar(32) NOT NULL COMMENT 'ID',
  `name` varchar(32) DEFAULT NULL COMMENT '区域名称,如重庆市',
  `full_name` varchar(512) DEFAULT NULL COMMENT '区域全程,如重庆市江津区',
  `level_name` varchar(32) DEFAULT NULL COMMENT '区域级别名称,如:省',
  `level_code` varchar(32) DEFAULT NULL COMMENT '区域级别编码,如:province',
  `code` varchar(32) DEFAULT NULL COMMENT '行政区域代码,如:500000',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父级行政区域',
  `path` varchar(128) DEFAULT NULL COMMENT '树路径,如: asb3-lsat',
  `describe` varchar(32) DEFAULT NULL COMMENT '说明',
  `status` decimal(4,0) DEFAULT NULL COMMENT '状态',
  `sort_index` decimal(32,0) DEFAULT NULL COMMENT '排序索引',
  PRIMARY KEY (`u_id`),
  KEY `idx_district_parent_id` (`parent_id`),
  KEY `idx_district_path` (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='行政区域';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_dyn_form` (
  `u_id` varchar(32) NOT NULL COMMENT 'ID',
  `name` varchar(32) DEFAULT NULL COMMENT '表单名称',
  `t_name` varchar(32) DEFAULT NULL COMMENT '数据库表名',
  `describe` varchar(512) DEFAULT NULL COMMENT '备注',
  `type` varchar(32) DEFAULT NULL COMMENT '表单类型',
  `version` decimal(32,0) DEFAULT NULL COMMENT '版本',
  `is_deployed` decimal(1,0) DEFAULT NULL COMMENT '是否已发布',
  `alias` varchar(32) DEFAULT NULL COMMENT '别名',
  `triggers` text COMMENT '触发器',
  `correlations` text COMMENT '表链接',
  `data_source_id` varchar(32) DEFAULT NULL COMMENT '数据源id,为空使用默认数据源',
  `creator_id` varchar(32) DEFAULT NULL COMMENT '创建人id',
  `create_time` decimal(32,0) DEFAULT NULL COMMENT '创建时间',
  `update_time` decimal(32,0) DEFAULT NULL COMMENT '修改时间',
  `properties` text COMMENT '其他配置',
  `tags` varchar(32) DEFAULT NULL COMMENT '标签',
  `db_name` varchar(128) DEFAULT NULL COMMENT '数据库名',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='动态表单';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_dyn_form_column` (
  `u_id` varchar(32) NOT NULL COMMENT 'ID',
  `form_id` varchar(32) DEFAULT NULL COMMENT '表单ID',
  `name` varchar(32) DEFAULT NULL COMMENT '字段名称',
  `column_name` varchar(32) DEFAULT NULL COMMENT '数据库列',
  `describe` varchar(512) DEFAULT NULL COMMENT '备注',
  `alias` varchar(32) DEFAULT NULL COMMENT '别名',
  `java_type` varchar(128) DEFAULT NULL COMMENT 'java类型',
  `jdbc_type` varchar(128) DEFAULT NULL COMMENT 'jdbc类型',
  `data_type` varchar(128) DEFAULT NULL COMMENT '数据类型',
  `length` decimal(4,0) DEFAULT NULL COMMENT '长度',
  `precision` decimal(4,0) DEFAULT NULL COMMENT '精度',
  `scale` decimal(4,0) DEFAULT NULL COMMENT '小数点位数',
  `properties` text COMMENT '其他配置',
  `dict_config` text COMMENT '字典配置',
  `sort_index` decimal(32,0) DEFAULT NULL COMMENT '排序序号',
  `validator` text COMMENT '验证器配置',
  PRIMARY KEY (`u_id`),
  KEY `idx_dynf_form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='动态表单列';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_dyn_form_log` (
  `u_id` varchar(32) NOT NULL COMMENT 'ID',
  `form_id` varchar(32) DEFAULT NULL COMMENT '表单ID',
  `version` decimal(32,0) DEFAULT NULL COMMENT '发布的版本',
  `deploy_time` decimal(32,0) DEFAULT NULL COMMENT '发布时间',
  `meta_data` text COMMENT '部署的元数据',
  `status` decimal(4,0) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`u_id`),
  KEY `idx_dynfl_form_id` (`form_id`),
  KEY `idx_dynfl_form_id_ver` (`form_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='表单发布日志';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_file_info` (
  `u_id` varchar(32) NOT NULL COMMENT 'ID',
  `name` varchar(256) DEFAULT NULL COMMENT '文件名称',
  `location` varchar(1024) DEFAULT NULL COMMENT '文件相对路径',
  `type` varchar(256) DEFAULT NULL COMMENT '类型',
  `md5` varchar(128) DEFAULT NULL COMMENT 'md5校验值',
  `size` decimal(32,0) DEFAULT NULL COMMENT '文件大小',
  `status` decimal(4,0) DEFAULT NULL COMMENT '状态',
  `classified` varchar(32) DEFAULT NULL COMMENT '分类',
  `create_time` decimal(32,0) DEFAULT NULL COMMENT '创建时间',
  `creator_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`u_id`),
  KEY `idx_file_md5` (`md5`),
  KEY `idx_file_creator_id` (`creator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='文件信息';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_menu` (
  `u_id` varchar(32) NOT NULL COMMENT 'uid',
  `name` varchar(64) NOT NULL COMMENT '名称',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父级ID',
  `permission_id` varchar(2048) DEFAULT NULL COMMENT '权限ID',
  `path` varchar(128) NOT NULL COMMENT '树编码',
  `sort_index` decimal(32,0) DEFAULT NULL COMMENT '树编码',
  `describe` varchar(128) DEFAULT NULL COMMENT '备注',
  `url` varchar(2000) DEFAULT NULL COMMENT 'URL',
  `icon` varchar(512) DEFAULT NULL COMMENT '图标',
  `status` decimal(4,0) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`u_id`),
  KEY `idx_menu_path` (`path`),
  KEY `idx_menu_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_menu_group` (
  `u_id` varchar(32) NOT NULL COMMENT 'ID',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父级id',
  `name` varchar(32) DEFAULT NULL COMMENT '分组名称',
  `describe` varchar(64) DEFAULT NULL COMMENT '分组描述',
  `default_group` decimal(4,0) DEFAULT NULL COMMENT '是否默认',
  `path` varchar(128) DEFAULT NULL COMMENT '树路径',
  `level` decimal(32,0) DEFAULT NULL COMMENT '树层级',
  `sort_index` decimal(32,0) DEFAULT NULL COMMENT '排序序号',
  `status` decimal(4,0) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='菜单分组';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_menu_group_bind` (
  `u_id` varchar(32) NOT NULL COMMENT 'ID',
  `menu_id` varchar(32) DEFAULT NULL COMMENT '菜单id',
  `group_id` varchar(32) DEFAULT NULL COMMENT '分组id',
  `path` varchar(128) DEFAULT NULL COMMENT '树结构编码',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父级id',
  `level` decimal(32,0) DEFAULT NULL COMMENT '树层级',
  `sort_index` decimal(32,0) DEFAULT NULL COMMENT '排序序号',
  `status` decimal(4,0) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='菜单分组关联';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_oauth2_access` (
  `client_id` varchar(32) NOT NULL COMMENT 'client_id',
  `owner_id` varchar(32) NOT NULL COMMENT '授权对应的用户ID',
  `access_token` varchar(32) NOT NULL COMMENT '授权码',
  `expires_in` varchar(32) NOT NULL COMMENT '有效期',
  `refresh_token` varchar(32) NOT NULL COMMENT '用于更新授权的token',
  `create_time` decimal(32,0) NOT NULL COMMENT '创建时间',
  `update_time` decimal(32,0) DEFAULT NULL COMMENT '更新时间',
  `scope` text COMMENT '授权范围',
  `grant_type` varchar(32) DEFAULT NULL COMMENT '授权类型',
  KEY `idx_oauth_ser_client_id` (`client_id`),
  KEY `idx_oauth_ser_owner_id` (`owner_id`),
  KEY `idx_oauth_ser_access_token` (`access_token`),
  KEY `idx_oauth_ser_refresh_token` (`refresh_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='OAuth2授权认证信息';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_oauth2_auth_code` (
  `client_id` varchar(32) NOT NULL COMMENT 'client_id',
  `user_id` varchar(32) NOT NULL COMMENT '授权对应的用户ID',
  `code` varchar(32) NOT NULL COMMENT '授权码',
  `create_time` decimal(32,0) NOT NULL COMMENT '创建时间',
  `scope` text NOT NULL COMMENT '授权范围',
  `redirect_uri` varchar(1024) NOT NULL COMMENT '重定向URI'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='OAuth2授权码信息';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_oauth2_client` (
  `u_id` varchar(32) NOT NULL COMMENT 'client_id',
  `secret` varchar(64) NOT NULL COMMENT 'client_secret',
  `name` varchar(128) NOT NULL COMMENT '客户端名称',
  `describe` varchar(256) DEFAULT NULL COMMENT '备注',
  `type` varchar(128) NOT NULL COMMENT '客户端类型',
  `owner_id` varchar(32) NOT NULL COMMENT '绑定的用户ID',
  `creator_id` varchar(32) DEFAULT NULL COMMENT '创建者ID',
  `redirect_uri` varchar(1024) NOT NULL COMMENT 'redirect_uri',
  `create_time` decimal(32,0) NOT NULL COMMENT '创建时间',
  `support_grant_types` varchar(2048) DEFAULT NULL COMMENT '支持的授权列表',
  `default_expires_in` decimal(16,0) DEFAULT NULL COMMENT '默认认证过期时间',
  `default_grant_scope` text COMMENT '默认认证范围',
  `status` decimal(4,0) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='OAuth2客户端';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_oauth2_server` (
  `u_id` varchar(32) NOT NULL COMMENT 'ID',
  `name` varchar(32) DEFAULT NULL COMMENT '服务名称',
  `describe` varchar(128) DEFAULT NULL COMMENT '备注',
  `api_base_url` varchar(512) DEFAULT NULL COMMENT 'api根地址',
  `auth_url` varchar(512) DEFAULT NULL COMMENT '认证地址',
  `redirect_uri` varchar(512) DEFAULT NULL COMMENT '重定向地址',
  `access_token_url` varchar(512) DEFAULT NULL COMMENT 'token获取地址',
  `client_id` varchar(128) DEFAULT NULL COMMENT '客户端id',
  `client_secret` varchar(128) DEFAULT NULL COMMENT '客户端密钥',
  `provider` varchar(32) DEFAULT NULL COMMENT '服务提供商',
  `properties` text COMMENT '其他配置',
  `status` decimal(4,0) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='OAuth2 服务配置';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_oauth2_user_token` (
  `u_id` varchar(32) NOT NULL COMMENT 'ID',
  `client_user_id` varchar(128) DEFAULT NULL COMMENT '客户端用户id',
  `server_user_id` varchar(128) DEFAULT NULL COMMENT '服务端用户id',
  `server_id` varchar(32) DEFAULT NULL COMMENT '服务端id',
  `client_id` varchar(32) DEFAULT NULL COMMENT '客户端id',
  `access_token` varchar(128) DEFAULT NULL COMMENT '授权码',
  `refresh_token` varchar(128) DEFAULT NULL COMMENT '更新码',
  `expires_in` decimal(32,0) DEFAULT NULL COMMENT '有效期',
  `scope` text COMMENT '授权范围',
  `create_time` decimal(32,0) DEFAULT NULL COMMENT '创建时间',
  `update_time` decimal(32,0) DEFAULT NULL COMMENT '更新时间',
  `grant_type` varchar(128) DEFAULT NULL COMMENT '授权方式',
  PRIMARY KEY (`u_id`),
  KEY `idx_oauth_cli_c_user_id` (`client_user_id`),
  KEY `idx_oauth_cli_s_user_id` (`server_user_id`),
  KEY `idx_oauth_cli_access_token` (`access_token`),
  KEY `idx_oauth_cli_refresh_token` (`refresh_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='OAuth2用户授权信息';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_organization` (
  `u_id` varchar(32) NOT NULL COMMENT 'ID',
  `name` varchar(256) DEFAULT NULL COMMENT '名称',
  `full_name` varchar(256) DEFAULT NULL COMMENT '全称',
  `code` varchar(32) DEFAULT NULL COMMENT '机构编码',
  `district_id` varchar(32) DEFAULT NULL COMMENT '所在行政区域ID',
  `optional_roles` text COMMENT '可选角色',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '上级机构id',
  `path` varchar(128) DEFAULT NULL COMMENT '树定位码',
  `sort_index` decimal(32,0) DEFAULT NULL COMMENT '树结构编码',
  `status` decimal(4,0) DEFAULT NULL COMMENT '状态',
  `level` decimal(32,0) DEFAULT NULL COMMENT '级别',
  PRIMARY KEY (`u_id`),
  KEY `idx_org_parent_id` (`parent_id`),
  KEY `idx_org_path` (`path`),
  KEY `idx_org_district_id` (`district_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='组织,公司';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_permission` (
  `u_id` varchar(32) NOT NULL COMMENT 'uid',
  `name` varchar(128) NOT NULL COMMENT '角色名称',
  `describe` varchar(128) DEFAULT NULL COMMENT '说明',
  `status` decimal(4,0) NOT NULL COMMENT '状态',
  `actions` text NOT NULL COMMENT '可选操作(按钮)',
  `spt_da_types` text COMMENT '支持的数据权限类型',
  `optional_fields` text COMMENT '可选字段',
  `parents` text COMMENT '关联其他权限',
  `type` varchar(128) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='权限表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_permission_role` (
  `role_id` varchar(32) NOT NULL COMMENT '角色ID',
  `permission_id` varchar(32) NOT NULL COMMENT '权限ID',
  `actions` text COMMENT '可选操作',
  `data_access` text COMMENT '数据级控制配置'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='权限与角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_person` (
  `u_id` varchar(32) NOT NULL COMMENT 'ID',
  `name` varchar(32) DEFAULT NULL COMMENT '姓名',
  `sex` decimal(4,0) DEFAULT NULL COMMENT '性别',
  `email` varchar(128) DEFAULT NULL COMMENT '电子邮箱',
  `phone` varchar(32) DEFAULT NULL COMMENT '联系电话',
  `photo` varchar(128) DEFAULT NULL COMMENT '照片',
  `user_id` varchar(32) DEFAULT NULL COMMENT '关联用户id',
  `status` decimal(4,0) DEFAULT NULL COMMENT '状态',
  `remark` varchar(256) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`u_id`),
  KEY `idx_person_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='人员';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_person_position` (
  `person_id` varchar(32) DEFAULT NULL COMMENT '人员id',
  `position_id` varchar(32) DEFAULT NULL COMMENT '职位id',
  KEY `idx_person_pos_person_id` (`person_id`),
  KEY `idx_person_pos_position_id` (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='人员职位关联';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_position` (
  `u_id` varchar(32) NOT NULL COMMENT 'ID',
  `name` varchar(64) DEFAULT NULL COMMENT '职位名称',
  `department_id` varchar(32) DEFAULT NULL COMMENT '部门id',
  `roles` text COMMENT '持有的角色',
  `remark` varchar(256) DEFAULT NULL COMMENT '备注',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父级id',
  `path` varchar(128) DEFAULT NULL COMMENT '树结构编码',
  `sort_index` decimal(32,0) DEFAULT NULL COMMENT '排序索引',
  `level` decimal(32,0) DEFAULT NULL COMMENT '级别',
  PRIMARY KEY (`u_id`),
  KEY `idx_position_parent_id` (`parent_id`),
  KEY `idx_position_path` (`path`),
  KEY `idx_position_dept_id` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='职位';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_relation_def` (
  `u_id` varchar(32) NOT NULL COMMENT 'ID',
  `name` varchar(32) DEFAULT NULL COMMENT '关系名称',
  `type_id` varchar(32) DEFAULT NULL COMMENT '关系类型',
  `status` decimal(4,0) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`u_id`),
  KEY `idx_relation_def_type` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='关系定义';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_relation_info` (
  `u_id` varchar(32) NOT NULL COMMENT 'ID',
  `relation_id` varchar(32) DEFAULT NULL COMMENT '关系定义id',
  `relation_from` varchar(32) DEFAULT NULL COMMENT '关系从',
  `relation_to` varchar(32) DEFAULT NULL COMMENT '关系至',
  `relation_type_from` varchar(64) DEFAULT NULL COMMENT '关系类型从,如:人员',
  `relation_type_to` varchar(64) DEFAULT NULL COMMENT '关系类型至,如:部门',
  `status` decimal(4,0) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`u_id`),
  KEY `idx_relation_r_id` (`relation_id`),
  KEY `idx_relation_rt_from` (`relation_type_from`),
  KEY `idx_relation_rt_to` (`relation_type_to`),
  KEY `idx_relation_r_to` (`relation_to`),
  KEY `idx_relation_r_from` (`relation_from`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='关系信息';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_role` (
  `u_id` varchar(32) NOT NULL COMMENT 'uid',
  `name` varchar(128) NOT NULL COMMENT '角色名称',
  `describe` varchar(128) DEFAULT NULL COMMENT '说明',
  `status` decimal(4,0) NOT NULL COMMENT '状态',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_schedule_job` (
  `u_id` varchar(32) NOT NULL COMMENT 'ID',
  `name` varchar(128) DEFAULT NULL COMMENT '任务名称',
  `remark` varchar(512) DEFAULT NULL COMMENT '备注',
  `quartz_config` text COMMENT '定时调度配置',
  `script` text COMMENT '执行脚本',
  `language` varchar(32) DEFAULT NULL COMMENT '脚本语言',
  `status` decimal(4,0) DEFAULT NULL COMMENT '是否启用',
  `parameters` text COMMENT '启动参数',
  `type` varchar(32) DEFAULT NULL COMMENT '任务类型',
  `tags` varchar(512) DEFAULT NULL COMMENT '标签',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='调度任务';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_script` (
  `u_id` varchar(32) NOT NULL COMMENT 'ID',
  `name` varchar(256) DEFAULT NULL COMMENT '脚本名称',
  `type` varchar(256) DEFAULT NULL COMMENT '类型',
  `script` text COMMENT '脚本内容',
  `language` varchar(32) DEFAULT NULL COMMENT '脚本语言',
  `remark` varchar(512) DEFAULT NULL COMMENT '备注',
  `status` decimal(4,0) DEFAULT NULL COMMENT '状态',
  `tag` varchar(32) DEFAULT NULL COMMENT '脚本标签',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='动态脚本';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_system` (
  `name` varchar(128) DEFAULT NULL COMMENT '系统名称',
  `major_version` decimal(32,0) DEFAULT NULL COMMENT '主版本号',
  `minor_version` decimal(32,0) DEFAULT NULL COMMENT '次版本号',
  `revision_version` decimal(32,0) DEFAULT NULL COMMENT '修订版',
  `snapshot` decimal(1,0) DEFAULT NULL COMMENT '是否快照版',
  `comment` varchar(2000) DEFAULT NULL COMMENT '系统说明',
  `website` varchar(2000) DEFAULT NULL COMMENT '系统网址',
  `framework_version` text NOT NULL COMMENT '框架版本',
  `dependencies` text NOT NULL COMMENT '依赖详情'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统信息';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_template` (
  `u_id` varchar(32) NOT NULL COMMENT 'ID',
  `name` varchar(32) DEFAULT NULL COMMENT '模板名称',
  `type` varchar(32) DEFAULT NULL COMMENT '模板类型',
  `template` text COMMENT '模板内容',
  `config` text COMMENT '模板配置',
  `version` decimal(32,0) DEFAULT NULL COMMENT '版本号',
  `classified` varchar(32) DEFAULT NULL COMMENT '模板分类',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='模板';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_user` (
  `u_id` varchar(32) NOT NULL COMMENT 'uid',
  `name` varchar(128) NOT NULL COMMENT '姓名',
  `username` varchar(128) NOT NULL COMMENT '用户名',
  `password` varchar(128) NOT NULL COMMENT '密码',
  `salt` varchar(128) NOT NULL COMMENT '密码盐',
  `status` decimal(4,0) NOT NULL COMMENT '用户状态',
  `last_login_ip` varchar(128) DEFAULT NULL COMMENT '上一次登录的ip地址',
  `last_login_time` decimal(32,0) DEFAULT NULL COMMENT '上一次登录时间',
  `creator_id` varchar(32) DEFAULT NULL COMMENT '创建者ID',
  `create_time` decimal(32,0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `idx_user_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_user_role` (
  `role_id` varchar(32) NOT NULL COMMENT '角色ID',
  `user_id` varchar(32) NOT NULL COMMENT '用户ID',
  KEY `idx_ur_user_id` (`user_id`),
  KEY `idx_ur_role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户与角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_user_setting` (
  `u_id` varchar(32) NOT NULL COMMENT 'uid',
  `name` varchar(128) DEFAULT NULL COMMENT '配置名称',
  `describe` varchar(512) DEFAULT NULL COMMENT '说明',
  `user_id` varchar(32) NOT NULL COMMENT '用户ID',
  `key` varchar(128) NOT NULL COMMENT '配置标识',
  `setting` text COMMENT '配置内容',
  `setting_id` varchar(32) NOT NULL COMMENT '自定义配置id',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `update_time` datetime(6) DEFAULT NULL COMMENT '创建时间',
  `permission` varchar(32) DEFAULT NULL COMMENT '用户可操作权限',
  PRIMARY KEY (`u_id`),
  KEY `idx_uset_user_id` (`user_id`),
  KEY `idx_uset_user_id_key` (`user_id`,`key`),
  KEY `idx_uset_user_id_key_setting` (`user_id`,`key`,`setting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户设置表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_wf_act_conf` (
  `u_id` varchar(32) NOT NULL COMMENT 'ID',
  `proc_def_key` varchar(64) DEFAULT NULL COMMENT '模板定义KEY',
  `proc_def_id` varchar(64) DEFAULT NULL COMMENT '模板定义ID',
  `act_id` varchar(64) DEFAULT NULL COMMENT '元图ID',
  `form_id` varchar(32) DEFAULT NULL COMMENT '表单ID',
  `candidate_dimension` text COMMENT '候选人维度',
  `create_time` datetime(6) DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(6) DEFAULT NULL COMMENT '修改时间',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `properties` text COMMENT '其他配置',
  `listeners` text COMMENT '监听器配置',
  PRIMARY KEY (`u_id`),
  KEY `idx_act_proc_def_id` (`proc_def_id`),
  KEY `idx_act_proc_def_key` (`proc_def_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='工作流环节自定义配置';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_wf_proc_conf` (
  `u_id` varchar(32) NOT NULL COMMENT 'ID',
  `proc_def_key` varchar(64) DEFAULT NULL COMMENT '模板定义KEY',
  `proc_def_id` varchar(64) DEFAULT NULL COMMENT '模板定义ID',
  `form_id` varchar(32) DEFAULT NULL COMMENT '表单ID',
  `permission_dimension` text COMMENT '启动权限配置',
  `properties` text COMMENT '其他配置',
  `create_time` datetime(6) DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(6) DEFAULT NULL COMMENT '修改时间',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `listeners` text COMMENT '监听器配置',
  PRIMARY KEY (`u_id`),
  KEY `idx_proc_def_key` (`proc_def_key`),
  KEY `idx_proc_def_id` (`proc_def_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='工作流流程自定义配置';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_wf_proc_his` (
  `u_id` varchar(32) NOT NULL COMMENT 'ID',
  `proc_ins_id` varchar(32) NOT NULL COMMENT '流程实例ID',
  `proc_def_id` varchar(32) NOT NULL COMMENT '模板定义ID',
  `type` varchar(32) NOT NULL COMMENT '类型',
  `type_text` varchar(128) NOT NULL COMMENT '类型说明',
  `task_id` varchar(32) DEFAULT NULL COMMENT '任务ID',
  `task_name` varchar(32) DEFAULT NULL COMMENT '任务名称',
  `task_def_key` varchar(64) DEFAULT NULL COMMENT '任务定义KEY',
  `biz_key` varchar(32) DEFAULT NULL COMMENT '业务主键',
  `data` text COMMENT '相关数据',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `creator_id` varchar(32) NOT NULL COMMENT '创建人ID',
  `creator_name` varchar(32) NOT NULL COMMENT '创建人姓名',
  PRIMARY KEY (`u_id`),
  KEY `idx_proc_his_def_id` (`proc_def_id`),
  KEY `idx_proc_his_ins_id` (`proc_ins_id`),
  KEY `idx_proc_his_task_id` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='工作流流程历史';
/*!40101 SET character_set_client = @saved_cs_client */;
