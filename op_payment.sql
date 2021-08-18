-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2021 at 10:34 AM
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
-- Database: `vgallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `op_payment`
--

CREATE TABLE `op_payment` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(25) NOT NULL,
  `payment_for` varchar(100) NOT NULL,
  `vendor_customer_id` int(11) NOT NULL,
  `total_amount` float(12,2) NOT NULL,
  `paid_amount` float(12,2) NOT NULL,
  `disc_amount` float(12,2) NOT NULL,
  `dues_amount` float(12,2) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `payment_date` date NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '''1''',
  `remarks` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='store payment record for sale & service';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `op_payment`
--
ALTER TABLE `op_payment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `op_payment`
--
ALTER TABLE `op_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
