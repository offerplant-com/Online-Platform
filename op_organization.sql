-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2021 at 03:34 PM
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
-- Database: `op`
--

-- --------------------------------------------------------

--
-- Table structure for table `op_organization`
--

CREATE TABLE `op_organization` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(25) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `dist_code` varchar(25) DEFAULT NULL,
  `state_code` varchar(25) DEFAULT NULL,
  `pin_code` varchar(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `reg_no` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `googlemap` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(10) DEFAULT NULL,
  `blogger` varchar(255) DEFAULT NULL,
  `teligram` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'ACTIVE' COMMENT 'ACTIVE INACTIVE BLOCKED',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_by` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Details of any organization';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `op_organization`
--
ALTER TABLE `op_organization`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `op_organization`
--
ALTER TABLE `op_organization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
