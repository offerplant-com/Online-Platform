-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2021 at 02:57 PM
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
-- Database: `atoz`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_sale_item`
--

CREATE TABLE `tb_sale_item` (
  `id` int(11) NOT NULL,
  `txn_type` varchar(255) NOT NULL DEFAULT 'SALE' COMMENT 'SALE , RETURN\r\n',
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_qty` float(12,0) NOT NULL,
  `product_unit` varchar(255) NOT NULL,
  `product_mrp` float(12,2) NOT NULL,
  `product_rate` float(12,2) NOT NULL,
  `sale_rate` float(12,2) NOT NULL,
  `product_discount` float(12,2) NOT NULL,
  `product_gst` float(12,2) NOT NULL,
  `gst_per` int(11) NOT NULL,
  `product_amount` float(12,2) NOT NULL,
  `status` varchar(25) NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `remarks` varchar(255) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_sale_item`
--
ALTER TABLE `tb_sale_item`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_sale_item`
--
ALTER TABLE `tb_sale_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
