SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
--
CREATE DATABASE IF NOT EXISTS `web_db` DEFAULT CHARACTER SET utf8 COLLATE 'utf8_general_ci';
USE `web_db`;

DROP TABLE IF EXISTS `notes`;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `date_target` datetime NOT NULL,
  `date_create` datetime NOT NULL,
  `complete` int(1) NOT NULL DEFAULT '0',
  `date_complete` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT '',
  `lastname` varchar(50) DEFAULT '',
  `birthdate` datetime DEFAULT NULL,
  `login` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `section`;
CREATE TABLE IF NOT EXISTS `section` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_name` varchar(100) NOT NULL,
   `membership` varchar(20) NOT NULL,
  `place_employment` varchar(50) NOT NULL,
  `reception_features` varchar(50) NOT NULL,
  `trainer` varchar(50) NOT NULL,
  `payment` varchar(20) NOT NULL,
    PRIMARY KEY (`id`),
  ) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `sportsman`;
CREATE TABLE IF NOT EXISTS `sportsman` (
  `sportsman_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_section_id` int(10) unsigned NOT NULL,
  `surname` varchar(100) DEFAULT '',
  `age` int(11) DEFAULT '',
  `address` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `growth` varchar(20) NOT NULL,
  `weight` varchar(20) NOT NULL,
  `achievement` varchar(20) NOT NULL,
    PRIMARY KEY (`sportsman_id`),
  UNIQUE KEY `s_section_id` (`s_section_id`),
 ) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `competition`;
CREATE TABLE IF NOT EXISTS `competition` (
  `competition_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_competition` datetime NOT NULL,
   `number_participants` varchar(20) DEFAULT '',
  `rank` varchar(20) DEFAULT '',
      PRIMARY KEY (`competition_id`),
   ) ENGINE=InnoDB  DEFAULT CHARSET=utf8;
   
   DROP TABLE IF EXISTS `participation`;
CREATE TABLE IF NOT EXISTS `participation` (
  `participation_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_sportsman_id` int(10) unsigned NOT NULL,
   `p_сompetition_id` int(10) unsigned NOT NULL,
  `result` varchar(20) DEFAULT '',
  `place` varchar(20) NOT NULL,
     PRIMARY KEY (`participation_id`),
  UNIQUE KEY `p_sportsman_id` (`p_sportsman_id`),
  UNIQUE KEY `p_сompetition_id` (`p_сompetition_id`),
 ) ENGINE=InnoDB  DEFAULT CHARSET=utf8;
