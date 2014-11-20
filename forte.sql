	-- Adminer 4.1.0 MySQL dump

	SET NAMES utf8;
	SET time_zone = '+00:00';
	SET foreign_key_checks = 0;
	SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

	DROP TABLE IF EXISTS `calcs`;
	CREATE TABLE `calcs` (
	  `id` int(11) NOT NULL AUTO_INCREMENT,
	  `users_id` int(11) DEFAULT NULL,
	  `datum` datetime NOT NULL,
	  `changes` int(11) NOT NULL DEFAULT '0',
	  PRIMARY KEY (`id`),
	  KEY `users_id` (`users_id`),
	  CONSTRAINT `calcs_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;


	DROP TABLE IF EXISTS `calcs_details`;
	CREATE TABLE `calcs_details` (
	  `id` int(11) NOT NULL AUTO_INCREMENT,
	  `calc_id` int(11) NOT NULL,
	  `calc_num` int(11) NOT NULL,
	  `data` text COLLATE utf8_czech_ci NOT NULL,
	  PRIMARY KEY (`id`),
	  KEY `calc_id` (`calc_id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;


	DROP TABLE IF EXISTS `forgotten_passwords`;
	CREATE TABLE `forgotten_passwords` (
	  `id` int(11) NOT NULL AUTO_INCREMENT,
	  `token` text NOT NULL,
	  `email` text NOT NULL,
	  `sent` datetime NOT NULL,
	  `used` tinyint(4) NOT NULL DEFAULT '0',
	  PRIMARY KEY (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=latin1;


	DROP TABLE IF EXISTS `orders`;
	CREATE TABLE `orders` (
	  `id` int(11) NOT NULL AUTO_INCREMENT,
	  `user` int(11) NOT NULL,
	  `finished` tinyint(4) NOT NULL DEFAULT '0',
	  `sent` tinyint(4) NOT NULL DEFAULT '0',
	  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	  `data` text COLLATE utf8_czech_ci NOT NULL,
	  PRIMARY KEY (`id`),
	  KEY `user` (`user`),
	  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user`) REFERENCES `users` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;


	DROP TABLE IF EXISTS `slevy`;
	CREATE TABLE `slevy` (
	  `id` int(11) NOT NULL AUTO_INCREMENT,
	  `users_id` int(11) NOT NULL,
	  `plakaty` int(11) NOT NULL DEFAULT '5',
	  `vizitky` int(11) NOT NULL DEFAULT '5',
	  `brozury` int(11) NOT NULL DEFAULT '5',
	  `kalendare` int(11) NOT NULL DEFAULT '5',
	  `velkoplosny` int(11) NOT NULL DEFAULT '5',
	  `textil` int(11) NOT NULL DEFAULT '5',
	  PRIMARY KEY (`id`),
	  KEY `users_id` (`users_id`),
	  CONSTRAINT `slevy_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
	  CONSTRAINT `slevy_ibfk_2` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
	) ENGINE=InnoDB DEFAULT CHARSET=latin1;


	DROP TABLE IF EXISTS `texts`;
	CREATE TABLE `texts` (
	  `id` int(11) NOT NULL AUTO_INCREMENT,
	  `nazev` text COLLATE utf8_czech_ci NOT NULL,
	  `obsah` text COLLATE utf8_czech_ci NOT NULL,
	  `poznamka` text COLLATE utf8_czech_ci NOT NULL,
	  PRIMARY KEY (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;


	DROP TABLE IF EXISTS `users`;
	CREATE TABLE `users` (
	  `id` int(11) NOT NULL AUTO_INCREMENT,
	  `email` text COLLATE utf8_czech_ci NOT NULL,
	  `password` text COLLATE utf8_czech_ci NOT NULL,
	  `role` text COLLATE utf8_czech_ci NOT NULL,
	  `osoba` text COLLATE utf8_czech_ci NOT NULL,
	  `jmeno` text COLLATE utf8_czech_ci NOT NULL,
	  `prijmeni` text COLLATE utf8_czech_ci NOT NULL,
	  `ico` text COLLATE utf8_czech_ci,
	  `nazev` text COLLATE utf8_czech_ci,
	  `mobil` text COLLATE utf8_czech_ci NOT NULL,
	  `adresa_fakturacni` text COLLATE utf8_czech_ci,
	  `adresa_dorucovaci` text COLLATE utf8_czech_ci,
	  `newsletter` tinyint(1) DEFAULT NULL,
	  `last_login` date NOT NULL,
	  `active` tinyint(1) NOT NULL DEFAULT '1',
	  PRIMARY KEY (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;


-- 2014-11-19 22:34:23
