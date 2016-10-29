-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 22. Nov 2013 um 10:55
-- Server Version: 5.5.16
-- PHP-Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `cms`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Publish','Unpublish') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Daten für Tabelle `articles`
--

INSERT INTO `articles` (`id`, `cat_id`, `title`, `content`, `status`) VALUES
(1, 1, 'PHP Basic 1', 'Note the addresses of the navigation links =”#<?php echo $rows[''page_name'']; ?> – show you as #your_page_name from your database. This part, called a hash, is included in the current URL without a page refresh, creating an entry in the browser’s history. By monitoring this hash with javascript, we can change the loaded page by AJAX and provide a seamless browsing experience.', 'Publish'),
(2, 1, 'PHP Basic 2', 'Note the addresses of the navigation links =”#<?php echo $rows[''page_name'']; ?> – show you as #your_page_name from your database. This part, called a hash, is included in the current URL without a page refresh, creating an entry in the browser’s history. By monitoring this hash with javascript, we can change the loaded page by AJAX and provide a seamless browsing experience.', 'Publish'),
(3, 2, 'PHP MYSQLI 1', 'Note the addresses of the navigation links =”#<?php echo $rows[''page_name'']; ?> – show you as #your_page_name from your database. This part, called a hash, is included in the current URL without a page refresh, creating an entry in the browser’s history. By monitoring this hash with javascript, we can change the loaded page by AJAX and provide a seamless browsing experience.', 'Publish'),
(4, 2, 'PHP MYSQLI 2', 'Note the addresses of the navigation links =”#<?php echo $rows[''page_name'']; ?> – show you as #your_page_name from your database. This part, called a hash, is included in the current URL without a page refresh, creating an entry in the browser’s history. By monitoring this hash with javascript, we can change the loaded page by AJAX and provide a seamless browsing experience.', 'Publish');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Publish','Unpublish') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Daten für Tabelle `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`) VALUES
(1, 'Basic PHP', 'Publish'),
(2, 'PHP & MYSQLI', 'Publish'),
(3, 'Javascript', 'Publish'),
(4, 'HTML', 'Publish'),
(5, 'CSS', 'Publish');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Publish','Unpublish') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Daten für Tabelle `menu`
--

INSERT INTO `menu` (`id`, `name`, `content`, `status`) VALUES
(1, 'About', 'This is a simple CMS', 'Publish'),
(2, 'Contact Us', 'Search us on blog.', 'Publish'),
(3, 'Service', 'Our Service', 'Unpublish');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
