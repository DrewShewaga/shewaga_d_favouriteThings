-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 30, 2019 at 01:11 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rockets`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rockets`
--

DROP TABLE IF EXISTS `tbl_rockets`;
CREATE TABLE IF NOT EXISTS `tbl_rockets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `company` varchar(35) NOT NULL,
  `f_launch` varchar(30) NOT NULL,
  `avatar` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_rockets`
--

INSERT INTO `tbl_rockets` (`id`, `name`, `description`, `company`, `f_launch`, `avatar`) VALUES
(1, 'Falcon 9', 'Falcon 9 is a two-stage rocket designed and manufactured by SpaceX for the reliable and safe transport of satellites and the Dragon spacecraft into orbit. Falcon 9 is the first orbital class rocket capable of reflight. SpaceX believes rocket reusability is the key breakthrough needed to reduce the cost of access to space and enable people to live on other planets. Falcon 9 was designed from the ground up for maximum reliability. Falcon 9’s simple two-stage configuration minimizes the number of separation events and with nine first-stage engines, it can safely complete its mission even in the event of an engine shutdown.', 'SpaceX', 'December 21, 2015', 'falcon9.png'),
(2, 'Falcon Heavy', 'Falcon Heavy is the most powerful operational rocket in the world by a factor of two. With the ability to lift into orbit nearly 64 metric tons (141,000 lb)---a mass greater than a 737 jetliner loaded with passengers, crew, luggage and fuel--Falcon Heavy can lift more than twice the payload of the next closest operational vehicle, the Delta IV Heavy, at one-third the cost. Falcon Heavy draws upon the proven heritage and reliability of Falcon 9.\r\n\r\n', 'SpaceX', 'February 6, 2018', 'falconheavy.png'),
(3, 'Saturn V', 'The Saturn V was an American human-rated expendable rocket used by NASA between 1967 and 1973. The three-stage liquid-propellant super heavy-lift launch vehicle was developed to support the Apollo program for human exploration of the Moon and was later used to launch Skylab, the first American space station.', 'NASA', 'November 9, 1967', 'saturnv.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
