-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 08, 2021 at 10:18 AM
-- Server version: 5.7.31
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agentie`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id_product` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `price` double(10,2) NOT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id_product`, `name`, `description`, `price`) VALUES
(1, 'E-commerce', 'Test Description', 2000.00),
(2, 'Responsive Design', 'Test Description', 1800.00),
(3, 'Web Security', 'Test Description', 2500.00),
(4, 'Illustration', 'Test Description', 1500.00),
(5, 'Graphic Design', 'Test Description', 1900.00),
(6, 'Identity', 'Test Description', 2200.00),
(7, 'Branding', 'Test Description', 2400.00),
(8, 'Website Design', 'Test Description', 1700.00),
(9, 'Photography', 'Test Description', 1600.00),
(10, 'Test product 50', 'Test description', 500.00),
(11, 'Test Product 11', 'Test Description', 2000.00),
(12, 'Test Product 12', 'Test Description', 2000.00);

-- --------------------------------------------------------

--
-- Table structure for table `usermessages`
--

DROP TABLE IF EXISTS `usermessages`;
CREATE TABLE IF NOT EXISTS `usermessages` (
  `id_message` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_message`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `usermessages`
--

INSERT INTO `usermessages` (`id_message`, `name`, `email`, `phone`, `message`) VALUES
(1, 'Goga Octavian', 'ttgoga@yahoo.com', '0740002657', 'Test Message'),
(2, 'Test Name 1', 'email1@gmail.com', '0740000001', 'Test Message 1'),
(3, 'Test Name 2', 'email2@gmail.com', '0740000002', 'Test Message 2'),
(4, 'Test Name 3', 'email3@gmail.com', '0740000003', 'Test Message'),
(5, 'Test Name 4', 'email4@gmail.com', '0740000004', 'Test Message'),
(6, 'Test Name 5', 'email5@gmail.com', '0740000005', 'Test Message 5'),
(7, 'Test Name 6', 'email6@gmail.com', '0740000006', 'Test Message 6'),
(8, 'Test Name 7', 'email7@gmail.com', '0740000007', 'Test Message 7'),
(9, 'Test Name 8', 'email8@gmail.com', '0740000008', 'Test Message'),
(10, 'Test Name 9', 'email9@gmail.com', '0740000009', 'Test Message'),
(11, 'Test Name 10', 'email10@gmail.com', '0740000010', 'Test Message'),
(12, 'Test Name 11', 'email11@gmail.com', '0740000011', 'Test Message'),
(13, 'Test Name 12', 'email12@gmail.com', '0740000012', 'Test Message'),
(14, 'Test Name 13', 'email13gmail.com', '0740000013', 'Test Message'),
(15, 'Test Name 14', 'email14@gmail.com', '0740000014', 'Test Message'),
(16, 'Test Name 15', 'email15@gmail.com', '0740000015', 'Test Message'),
(17, 'Test Name 16', 'email16@gmail.com', '0740000016', 'Test Message'),
(18, 'Test Name 17', 'email17@gmail.com', '0740000017', 'Test Message'),
(19, 'Test Name 18', 'email18@gmail.com', '0740000018', 'Test Message'),
(20, 'Test Name 19', 'email19@gmail.com', '0740000019', 'Test Message'),
(21, 'Test Name 20', 'email20@gmail.com', '0740000020', 'Test Message'),
(22, 'Test Name 20', 'email20@gmail.com', '0740000020', 'Test Message'),
(23, 'Test Name 22', 'email22@gmail.com', '0740000022', 'Test Message'),
(24, 'Test Name 23', 'emai23@gmail.com', '0740000023', 'Test Message'),
(25, 'Test Name 24', 'email24@gmail.com', '0740000024', 'Test Message'),
(26, 'Test Name 25', 'email25@gmail.com', '0740000025', 'Test Message'),
(27, 'Test Name 26', 'email26@gmail.com', '0740000026', 'Test Message'),
(28, 'Test Name 50', 'email50@gmail.co', '074000000', 'Test Message'),
(29, 'Test Name 27', 'email27@gmail.com', '0740000027', 'Test Message'),
(30, 'Test Name 28', 'email28@gmail.com', '0740000028', 'Test Message'),
(31, 'Test Name 28', 'email28@gmail.com', '0740000028', 'Test Message'),
(32, 'Test Name 29', 'email29@gmail.com', '0740000029', 'Test Message');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
