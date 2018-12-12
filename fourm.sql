-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2018 at 11:24 PM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE IF NOT EXISTS `forums` (
  `forum_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY (`forum_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`forum_id`, `name`) VALUES
(5, 'CSS'),
(4, 'HTML'),
(6, 'Kindling'),
(7, 'Modern Dance'),
(1, 'MySQL'),
(2, 'PHP'),
(3, 'Sports');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `forum_id` tinyint(3) unsigned NOT NULL,
  `user_id` mediumint(8) unsigned NOT NULL,
  `subject` varchar(100) NOT NULL,
  `body` longtext NOT NULL,
  `date_entered` datetime NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `parent_id` (`parent_id`),
  KEY `forum_id` (`forum_id`),
  KEY `user_id` (`user_id`),
  KEY `date_entered` (`date_entered`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`message_id`, `parent_id`, `forum_id`, `user_id`, `subject`, `body`, `date_entered`) VALUES
(1, 0, 1, 1, 'Question about normalization.', 'I''m confused about normalization. For the second normal form (2NF), I read...', '2018-09-11 22:27:56'),
(2, 0, 1, 2, 'Database Design', 'I''m creating a new database and am having problems with the structure. How many tables should I have?...', '2018-09-11 22:27:56'),
(3, 2, 1, 2, 'Database Design', 'The number of tables your database includes...', '2018-09-11 22:27:56'),
(4, 0, 1, 3, 'Database Design', 'Okay, thanks!', '2018-09-11 22:27:56'),
(5, 0, 2, 3, 'PHP Errors', 'I''m using the scripts from Chapter 3 and I can''t get the first calculator example to work. When I submit the form...', '2018-09-11 22:27:56'),
(6, 5, 2, 1, 'PHP Errors', 'What version of PHP are you using?', '2018-09-11 22:27:56'),
(7, 6, 2, 3, 'PHP Errors', 'Version 5.2', '2018-09-11 22:27:56'),
(8, 7, 2, 1, 'PHP Errors', 'In that case, try the debugging steps outlined in Chapter 7.', '2018-09-11 22:27:56'),
(9, 0, 3, 2, 'Chicago Bulls', 'Can the Bulls really win it all this year?', '2018-09-11 22:27:56'),
(10, 9, 3, 1, 'Chicago Bulls', 'I don''t know, but they sure look good!', '2018-09-11 22:27:56'),
(11, 0, 5, 3, 'CSS Resources', 'Where can I found out more information about CSS?', '2018-09-11 22:27:56'),
(12, 11, 5, 1, 'CSS Resources', 'Read Elizabeth Castro''s excellent book on (X)HTML and CSS. Or search Google on "CSS".', '2018-09-11 22:27:56'),
(13, 0, 4, 3, 'HTML vs. XHTML', 'What are the differences between HTML and XHTML?', '2018-09-11 22:27:56'),
(14, 13, 4, 1, 'HTML vs. XHTML', 'XHTML is a cross between HTML and XML. The differences are largely syntactic. Blah, blah, blah...', '2018-09-11 22:27:56'),
(15, 0, 6, 4, 'Why?', 'Why do you have a forum dedicated to kindling? Don''t you deal mostly with PHP, MySQL, and so forth?', '2018-09-11 22:27:56'),
(16, 0, 2, 3, 'Dynamic HTML using PHP', 'Can I use PHP to dynamically generate HTML on the fly? Thanks...', '2018-09-11 22:27:56'),
(17, 16, 2, 1, 'Dynamic HTML using PHP', 'You most certainly can.', '2018-09-11 22:27:56'),
(18, 17, 2, 3, 'Dynamic HTML using PHP, still not clear', 'Um, how?', '2018-09-11 22:27:56'),
(19, 18, 2, 2, 'Dynamic HTML using PHP, clearer?', 'I think what Larry is trying to say is that you should buy and read his book.', '2018-09-11 22:27:56'),
(20, 15, 6, 4, 'Why? Why? Why?', 'Really, why?', '2018-09-11 22:27:56'),
(21, 20, 6, 1, 'Because', 'Because', '2018-09-11 22:27:56'),
(22, 5, 2, 1, 'PHP Errors', 'What version of PHP are you using?', '2018-09-11 22:27:56'),
(23, 6, 2, 3, 'PHP Errors', 'Version 5.2', '2018-09-11 22:27:56'),
(24, 7, 2, 1, 'PHP Errors', 'In that case, try the debugging steps outlined in Chapter 7.', '2018-09-11 22:27:56'),
(25, 0, 3, 2, 'Chicago Bulls', 'Can the Bulls really win it all this year?', '2018-09-11 22:27:56'),
(26, 9, 3, 1, 'Chicago Bulls', 'I don''t know, but they sure look good!', '2018-09-11 22:27:56'),
(27, 0, 5, 3, 'CSS Resources', 'Where can I found out more information about CSS?', '2018-09-11 22:27:56'),
(28, 11, 5, 1, 'CSS Resources', 'Read Elizabeth Castro''s excellent book on (X)HTML and CSS. Or search Google on "CSS".', '2018-09-11 22:27:56'),
(29, 0, 4, 3, 'HTML vs. XHTML', 'What are the differences between HTML and XHTML?', '2018-09-11 22:27:56'),
(30, 13, 4, 1, 'HTML vs. XHTML', 'XHTML is a cross between HTML and XML. The differences are largely syntactic. Blah, blah, blah...', '2018-09-11 22:27:56'),
(31, 0, 6, 4, 'Why?', 'Why do you have a forum dedicated to kindling? Don''t you deal mostly with PHP, MySQL, and so forth?', '2018-09-11 22:27:56'),
(32, 0, 2, 3, 'Dynamic HTML using PHP', 'Can I use PHP to dynamically generate HTML on the fly? Thanks...', '2018-09-11 22:27:56'),
(33, 16, 2, 1, 'Dynamic HTML using PHP', 'You most certainly can.', '2018-09-11 22:27:56'),
(34, 17, 2, 3, 'Dynamic HTML using PHP, still not clear', 'Um, how?', '2018-09-11 22:27:56'),
(35, 18, 2, 2, 'Dynamic HTML using PHP, clearer?', 'I think what Larry is trying to say is that you should buy and read his book.', '2018-09-11 22:27:56'),
(36, 15, 6, 4, 'Why? Why? Why?', 'Really, why?', '2018-09-11 22:27:56'),
(37, 20, 6, 1, 'Because', 'Because', '2018-09-11 22:27:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `pass` char(128) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(60) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `login` (`pass`,`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `pass`, `first_name`, `last_name`, `email`) VALUES
(1, 'troutster', '1c573dfeb388b562b55948af954a7b344dde1cc2099e978a992790429e7c01a4205506a93d9aef3bab32d6f06d75b7777a7ad8859e672fedb6a096ae369254d2', 'Larry', 'Ullman', 'lu@example.com'),
(2, 'funny man', '65a0ef45df509ad1cf01501b2a1b12cc2fbac0f00a31ae6f3ddc361396955216fb3a4d84e18dc1065dff311e3943878bc0bdb8a60caefd2fbdc6b2a757a3204b', 'David', 'Brent', 'db@example.com'),
(3, 'Gareth', '0d5e319a4937f64070f4656b70c4ec3a90e94fc96773d43af96d9836ec11a2e5ea18a85511e8d3dc30ccc871fecb073a77b8fc0c3e770819f60754f456af1d30', 'Gareth', 'Keenan', 'gk@example.com'),
(4, 'tim', 'e13f666747523c7db38d6e7449c088972ebcfd433839361dca0196b3e33b524573c0f52f9c082e8e0237c3f9779fb102e6ab8df9494d8afa835cbd831f876893', 'Tim', 'Canterbury', 'tc@example.com'),
(5, 'finchy', '3a29a6fe8acedcfb19d5088c4480a60b54ab1b2b011624182ab1ef2aa0711f2d985cb2a4b8bf91c4c059d2e7fec70a820b8531156cf062b58c96ec7399f8fbd2', 'Chris', 'Finch', 'cf@example.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
