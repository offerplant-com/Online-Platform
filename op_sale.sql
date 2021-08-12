-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2021 at 02:54 PM
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
-- Database: `billit`
--

-- --------------------------------------------------------

--
-- Table structure for table `op_sale`
--

CREATE TABLE `op_sale` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `inv_date` date NOT NULL,
  `inv_no` varchar(255) NOT NULL,
  `inv_amount` float(12,2) NOT NULL,
  `inv_discount` float(12,2) NOT NULL,
  `inv_net_payable` float(12,2) NOT NULL,
  `inv_paid` float(12,2) NOT NULL,
  `inv_dues` float(12,2) NOT NULL,
  `inv_cgst_per` float(12,2) NOT NULL,
  `inv_cgst_amt` float(12,2) NOT NULL,
  `inv_sgst_per` float(12,2) NOT NULL,
  `inv_sgst_amt` float(12,2) NOT NULL,
  `inv_igst_per` float(12,2) NOT NULL,
  `inv_igst_amt` float(12,2) NOT NULL,
  `inv_gst` float(12,2) NOT NULL,
  `status` varchar(255) NOT NULL COMMENT 'SALE, RETURN',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Details of Sale Invoice';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `op_sale`
--
ALTER TABLE `op_sale`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `op_sale`
--
ALTER TABLE `op_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
