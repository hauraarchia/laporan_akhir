-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2022 at 04:58 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bukawarung`
--
CREATE DATABASE IF NOT EXISTS `db_bukawarung` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `db_bukawarung`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE IF NOT EXISTS `tb_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `admin_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `admin_email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `admin_address` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Haura', 'admin', '21232f297a57a5a743894a0e4a801fc3', '+6285940452697', 'hauraarchia@gmail.com', 'PERUMNAS BUGUL '),
(2, 'Abin', 'admin1', '21232f297a57a5a743894a0e4a801fc3', '+6281359023958', 'arifinabinaya@gmail.com', 'Perum Keboncandi Blok FG 20 RT 001 RW 015 Kec. Gondangwetan Kab.Pasuruan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

DROP TABLE IF EXISTS `tb_category`;
CREATE TABLE IF NOT EXISTS `tb_category` (
  `category_id` int(4) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(1, 'Hoodie'),
(2, 'Kaos'),
(3, 'Topi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

DROP TABLE IF EXISTS `tb_product`;
CREATE TABLE IF NOT EXISTS `tb_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text COLLATE latin1_general_ci NOT NULL,
  `product_image` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`product_id`),
  KEY `[category_id]` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `data_created`) VALUES
(1, 1, 'Hoodie Hitam Polos', 150000, '<p>Hoodie punya temen saya</p>\r\n', 'produk1642830742.png', 1, '2022-01-22 05:52:22'),
(2, 2, 'Kaos Hem', 50000, '<p>Kaos bau belom dicuci</p>\r\n', 'produk1642853469.png', 1, '2022-01-22 12:11:09'),
(3, 3, 'Topi Hitam', 25000, '<p>Topi an sek ben gak panas</p>\r\n', 'produk1642855983.png', 1, '2022-01-22 12:53:03');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
