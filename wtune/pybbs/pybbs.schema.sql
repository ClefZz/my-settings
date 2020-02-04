CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `in_time` datetime NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `admin_user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2;
CREATE TABLE `code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `code` varchar(255) NOT NULL DEFAULT '',
  `in_time` datetime NOT NULL,
  `expire_time` datetime NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `used` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `code_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB;
CREATE TABLE `collect` (
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `in_time` datetime NOT NULL,
  KEY `topic_id` (`topic_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `collect_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`id`),
  CONSTRAINT `collect_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `in_time` datetime NOT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `up_ids` text,
  PRIMARY KEY (`id`),
  KEY `topic_id` (`topic_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`id`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB;
CREATE TABLE `flyway_schema_history` (
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int(11) DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL,
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`),
  KEY `flyway_schema_history_s_idx` (`success`)
) ENGINE=InnoDB;
CREATE TABLE `notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `target_user_id` int(11) NOT NULL,
  `action` varchar(255) NOT NULL DEFAULT '',
  `in_time` datetime NOT NULL,
  `read` bit(1) NOT NULL DEFAULT b'0',
  `content` longtext,
  PRIMARY KEY (`id`),
  KEY `topic_id` (`topic_id`),
  KEY `user_id` (`user_id`),
  KEY `target_user_id` (`target_user_id`),
  CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`id`),
  CONSTRAINT `notification_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `notification_ibfk_3` FOREIGN KEY (`target_user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB;
CREATE TABLE `oauth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oauth_id` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `login` varchar(255) NOT NULL DEFAULT '',
  `access_token` varchar(255) NOT NULL DEFAULT '',
  `in_time` datetime NOT NULL,
  `bio` text,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `union_id` varchar(255) DEFAULT NULL,
  `expires_in` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `oauth_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB;
CREATE TABLE `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `value` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=56;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3;
CREATE TABLE `role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  KEY `role_id` (`role_id`),
  KEY `permission_id` (`permission_id`),
  CONSTRAINT `role_permission_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `role_permission_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`)
) ENGINE=InnoDB;
CREATE TABLE `sensitive_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(255) NOT NULL COMMENT '???',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
CREATE TABLE `system_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT '',
  `description` varchar(1000) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `option` varchar(255) DEFAULT NULL,
  `reboot` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(1000) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `topic_count` int(11) NOT NULL DEFAULT '0',
  `in_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB;
CREATE TABLE `topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` longtext,
  `in_time` datetime NOT NULL,
  `modify_time` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `comment_count` int(11) NOT NULL DEFAULT '0',
  `collect_count` int(11) NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT '0',
  `top` bit(1) NOT NULL DEFAULT b'0',
  `good` bit(1) NOT NULL DEFAULT b'0',
  `up_ids` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `topic_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB;
CREATE TABLE `topic_tag` (
  `tag_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  KEY `tag_id` (`tag_id`),
  KEY `topic_id` (`topic_id`),
  CONSTRAINT `topic_tag_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`),
  CONSTRAINT `topic_tag_ibfk_2` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`id`)
) ENGINE=InnoDB;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `avatar` varchar(1000) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `bio` varchar(1000) DEFAULT NULL,
  `score` int(11) NOT NULL DEFAULT '0',
  `in_time` datetime NOT NULL,
  `token` varchar(255) NOT NULL DEFAULT '',
  `telegram_name` varchar(255) DEFAULT NULL,
  `email_notification` bit(1) NOT NULL DEFAULT b'0',
  `active` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB;
