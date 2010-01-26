CREATE TABLE `network_host` (
  `host_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`host_id`),
  KEY `hostname` (`hostname`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `network_host_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `host_id` tinyint(4) NOT NULL,
  `date` int(11) NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`status_id`),
  KEY `host_id` (`host_id`,`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `network_host_user` (
  `host_id` tinyint(4) NOT NULL,
  `user_id` smallint(6) NOT NULL,
  `uid` smallint(6) NOT NULL,
  `class` enum('admin','user') COLLATE utf8_unicode_ci NOT NULL,
  KEY `host_id` (`host_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `network_user` (
  `user_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

