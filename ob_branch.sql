-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2021 at 10:31 AM
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
-- Table structure for table `ob_branch`
--

CREATE TABLE `ob_branch` (
  `id` int(11) NOT NULL,
  `branch_code` varchar(255) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `branch_director` varchar(255) NOT NULL,
  `branch_father` varchar(255) NOT NULL,
  `branch_dos` date NOT NULL,
  `branch_address` varchar(255) NOT NULL,
  `district_code` varchar(255) NOT NULL,
  `state_code` varchar(255) NOT NULL,
  `branch_email` varchar(255) NOT NULL,
  `branch_mobile` varchar(255) NOT NULL,
  `branch_photo` varchar(255) NOT NULL DEFAULT 'no_center.jpg',
  `director_photo` varchar(255) NOT NULL DEFAULT 'no_dir.jpg',
  `director_sign` varchar(255) NOT NULL,
  `branch_balance` float(12,2) NOT NULL,
  `branch_wallet` float(12,2) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ref_id` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Branch of any organization';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ob_branch`
--
ALTER TABLE `ob_branch`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `branch_code` (`branch_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ob_branch`
--
ALTER TABLE `ob_branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
