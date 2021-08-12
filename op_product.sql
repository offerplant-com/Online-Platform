-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2021 at 12:40 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brims`
--

-- --------------------------------------------------------

--
-- Table structure for table `op_product`
--

CREATE TABLE `op_product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `details` varchar(235) CHARACTER SET utf8 DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'no_image.jpg',
  `unit` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'PC',
  `mrp` float(11,2) DEFAULT NULL,
  `expiry_date` date NOT NULL,
  `discount` int(11) NOT NULL DEFAULT 10 COMMENT 'in Percentage',
  `stock` float(12,1) NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'ACTIVE' COMMENT 'IN STOCK, OUT OF STOCK, LIVE, BLOCKED,',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Store Details of a Product to Display and ecommerce';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `op_product`
--
ALTER TABLE `op_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `op_product`
--
ALTER TABLE `op_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
