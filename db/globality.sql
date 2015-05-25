-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 25, 2015 at 12:59 PM
-- Server version: 5.5.40-MariaDB-cll-lve
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `assafx10_globality`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(55) NOT NULL,
  `BLURB` varchar(55) NOT NULL,
  `AUTHOR` varchar(500) NOT NULL,
  `THUMBNAIL_URL` varchar(500) NOT NULL,
  `DETAILS_URL` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=111 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`ID`, `TITLE`, `BLURB`, `AUTHOR`, `THUMBNAIL_URL`, `DETAILS_URL`) VALUES
(1, 'This is the first title which contains several chars', 'This element should be used for different scenarios', 'Joe', 'http://assaf.x10.mx/globality/api/action?get_list=3', 'http://assaf.x10.mx/globality/api/action?get_list=3'),
(2, 'more content in the title', 'this is a blurb which contains over 32 chars', 'John', 'http://assaf.x10.mx/globality/api/action?get_list=3', 'http://assaf.x10.mx/globality/api/action?get_list=3'),
(3, 'Here is more content for Joe', 'this is another blurb which contains over 32 chars', 'Joe', 'http://assaf.x10.mx/globality/api/action?get_list=3', 'http://assaf.x10.mx/globality/api/action?get_list=3'),
(4, 'this is a test', '0', 'Shew', 'http://assaf.x10.mx/globality/api/action?get_list=3', 'http://assaf.x10.mx/globality/api/action?get_list=3'),
(5, 'this is a test', '0', 'Barack', 'http://assaf.x10.mx/globality/api/action?get_list=3', 'http://assaf.x10.mx/globality/api/action?get_list=3'),
(6, 'this is a test', '0', 'Jack', 'http://assaf.x10.mx/globality/api/action?get_list=3', 'http://assaf.x10.mx/globality/api/action?get_list=3'),
(7, 'title7', 'Blurb7', 'Harry', 'http://assaf.x10.mx/globality/api/action?get_list=3', 'http://assaf.x10.mx/globality/api/action?get_list=3'),
(8, 'title8', 'Blurb8', 'Efrain', 'http://assaf.x10.mx/globality/api/action?get_list=3', 'http://assaf.x10.mx/globality/api/action?get_list=3'),
(9, 'title9', 'Blurb8', 'Alfred', 'http://assaf.x10.mx/globality/api/action?get_list=3', 'http://assaf.x10.mx/globality/api/action?get_list=3'),
(10, 'title10', 'Blurb10', 'Adva', 'http://assaf.x10.mx/globality/api/action?get_list=3', 'http://assaf.x10.mx/globality/api/action?get_list=3'),
(11, 'title11', 'Blurb11', 'Assaf', 'http://assaf.x10.mx/globality/api/action?get_list=3', 'http://assaf.x10.mx/globality/api/action?get_list=3'),
(12, 'title12', 'Blurb12', 'Boo', 'http://assaf.x10.mx/globality/api/action?get_list=3', 'http://assaf.x10.mx/globality/api/action?get_list=3'),
(13, 'title13', 'Blurb13', 'George', 'http://assaf.x10.mx/globality/api/action?get_list=3', 'http://assaf.x10.mx/globality/api/action?get_list=3'),
(14, 'title14', 'Blurb14', 'Flo', 'http://assaf.x10.mx/globality/api/action?get_list=3', 'http://assaf.x10.mx/globality/api/action?get_list=3'),
(15, 'title15', 'Blurb15', 'David', 'http://assaf.x10.mx/globality/api/action?get_list=3', 'http://assaf.x10.mx/globality/api/action?get_list=3'),
(16, 'title16', 'Blurb16', 'Dave', 'http://assaf.x10.mx/globality/api/action?get_list=3', 'http://assaf.x10.mx/globality/api/action?get_list=3'),
(17, 'title17', 'Blurb17', 'Erick', 'http://assaf.x10.mx/globality/api/action?get_list=3', 'http://assaf.x10.mx/globality/api/action?get_list=3'),
(18, 'title18', 'Blurb18', 'Erica', 'http://assaf.x10.mx/globality/api/action?get_list=3', 'http://assaf.x10.mx/globality/api/action?get_list=3'),
(19, 'title19', 'Blurb19', 'Alison', 'http://assaf.x10.mx/globality/api/action?get_list=3', 'http://assaf.x10.mx/globality/api/action?get_list=3'),
(20, 'title20', 'Blurb20', 'Mike', 'http://assaf.x10.mx/globality/api/action?get_list=3', 'http://assaf.x10.mx/globality/api/action?get_list=3'),
(21, 'title21', 'Blurb21', 'Roger', 'http://assaf.x10.mx/globality/api/action?get_list=3', 'http://assaf.x10.mx/globality/api/action?get_list=3'),
(22, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(23, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(24, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(25, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(26, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(27, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(28, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(29, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(30, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(31, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(32, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(33, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(34, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(35, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(36, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(37, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(38, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(39, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(40, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(41, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(42, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(43, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(44, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(45, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(46, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(47, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(48, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(49, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(50, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(51, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(52, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(53, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(54, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(55, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(56, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(57, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(58, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(59, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(60, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(61, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(62, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(63, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(64, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(65, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(66, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(67, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(68, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(69, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(70, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(71, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(72, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(73, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(74, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(75, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(76, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(77, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(78, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(79, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(80, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(81, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(82, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(83, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(84, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(85, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(86, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(87, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(88, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(89, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(90, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(91, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(92, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(93, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(94, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(95, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(96, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(97, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(98, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(99, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(100, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(101, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(102, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(103, 'test', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(104, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(105, 'werwerwf', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(106, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(107, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(108, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(109, 'asdqwwqw', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com'),
(110, 'another title', 'short description', 'Assaf', 'http://www.yahoo.com', 'http://www.yahoo.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
