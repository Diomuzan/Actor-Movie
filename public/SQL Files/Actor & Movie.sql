-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2023 at 02:18 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `actor & movie`
--
CREATE DATABASE IF NOT EXISTS `actor & movie` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `actor & movie`;

-- --------------------------------------------------------

--
-- Table structure for table `a&m`
--

DROP TABLE IF EXISTS `am`;
CREATE TABLE IF NOT EXISTS `am` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actor` varchar(255) NOT NULL,
  `movie` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `a&m`
--

INSERT INTO `am` (`id`, `actor`, `movie`) VALUES
(1, 'Jet Li', 'The Expendables 3'),
(2, 'Jackie Chan', 'The Forbidden Kingdom'),
(3, 'Aubrey Plaza', 'Operation Fortune: Ruse de Guerre'),
(4, 'Margot Robbie', 'The Suicide Squad'),
(5, 'Awkwafina', 'Shiang-Chi and the Legend of the Ten Rings');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
