-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 06, 2020 at 06:10 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_fip`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallerycontent`
--

DROP TABLE IF EXISTS `tbl_gallerycontent`;
CREATE TABLE IF NOT EXISTS `tbl_gallerycontent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic` varchar(20) NOT NULL,
  `image` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_gallerycontent`
--

INSERT INTO `tbl_gallerycontent` (`id`, `topic`, `image`, `title`, `description`) VALUES
(1, 'Motion Design', 'motionDsnImg.jpg', 'Motion Design Project ', 'This is a placeholder text for a future project by me. This project will be done soon, so come back later to see what I have completed. This is a motion design project, so it will feature work done mainly within \"Adobe After Effects\" and \"Cinema 4D\".'),
(2, 'Product Design', 'prdctDsnImg.jpg', 'Product Design Project', 'This is a placeholder text for a future project by me. This project will be done soon, so come back later to see what I have completed. This is a product design project, so it will feature work done mainly within Adobes products, \"Photoshop\", \"After Effects\", and \"Illustrator\".'),
(3, 'Development', 'DevImg.jpg', 'Development Project', 'This is a placeholder text for a future project by me. This project will be done soon, so come back later to see what I have completed. This is a development project, so it will feature work done mainly with coding languages such as \"HTML\", \"SCSS\", \"PHP\", \"JS\".');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_homecontent`
--

DROP TABLE IF EXISTS `tbl_homecontent`;
CREATE TABLE IF NOT EXISTS `tbl_homecontent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `topic` varchar(20) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_homecontent`
--

INSERT INTO `tbl_homecontent` (`id`, `image`, `title`, `topic`, `description`) VALUES
(1, 'sportsnet.jpg', 'Sportsnet Football Intro', 'Motion Desgin', 'An intro video for Monday night football for the Sportsnet channel. The two teams featured in this intro are the Chicago Bears and the Dallas Cowboys.'),
(2, 'ceciMagazineSread.jpg', 'Ceci Magazine Spread', 'Product Desgin', 'A magazine spread featuring a cosmetic company brand created by myself. The spread is a combination of assets given to us in the \"Electronic and Image Production\" course. '),
(3, 'modularCSS.jpg', 'Modular CSS', 'Development', 'This is the first project in \"Multi-media Authoring 3\" after learning about SCSS. In the project, we were tasked with re-writing some of the CSS in a modular way using SCSS.'),
(4, 'ytvbumper.jpg', 'Kids TV Channel Bumper', 'Motion Design', 'A TV channel bumper created for the \"Motion Design 2\" course. In this assignment, we had to create a channel bumper for any kids tv channel that was catered to 6-12-year-olds. The channel that I chose was YTV.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
