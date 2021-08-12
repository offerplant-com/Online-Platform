-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2021 at 10:25 AM
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
-- Database: `ipschool_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `op_employee`
--

CREATE TABLE `op_employee` (
  `id` int(4) NOT NULL,
  `e_adhar` varchar(12) DEFAULT NULL,
  `e_name` varchar(20) DEFAULT NULL,
  `e_sex` varchar(1) DEFAULT NULL,
  `e_dob` varchar(10) DEFAULT NULL,
  `e_category` varchar(3) DEFAULT NULL,
  `e_designation` varchar(14) DEFAULT NULL,
  `e_qualification` varchar(20) DEFAULT NULL,
  `e_professional` varchar(11) DEFAULT NULL,
  `e_mobile` varchar(22) DEFAULT NULL,
  `e_email` varchar(30) DEFAULT NULL,
  `e_address` varchar(118) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'ACTIVE',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `op_employee`
--
ALTER TABLE `op_employee`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `op_employee`
--
ALTER TABLE `op_employee`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
