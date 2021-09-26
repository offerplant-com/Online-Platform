-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 26, 2021 at 08:28 PM
-- Server version: 5.7.35
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `morg_cashplant`
--

-- --------------------------------------------------------

--
-- Table structure for table `op_customer`
--

CREATE TABLE `op_customer` (
  `id` int(11) NOT NULL,
  `customer_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `pan` varchar(10) DEFAULT NULL,
  `aadhar` varchar(12) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'ACTIVE',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `op_installment`
--

CREATE TABLE `op_installment` (
  `id` int(11) NOT NULL,
  `loan_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `inst_date` date NOT NULL,
  `inst_amount` float(12,2) DEFAULT NULL,
  `payment_mode` varchar(25) DEFAULT 'CASH',
  `paid_date` date DEFAULT NULL,
  `paid_amount` float(12,2) DEFAULT NULL,
  `status` varchar(25) DEFAULT 'UNPAID',
  `created_at` int(11) NOT NULL,
  `created_by` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `op_loan`
--

CREATE TABLE `op_loan` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `loan_amout` float(12,2) NOT NULL,
  `loan_date` date NOT NULL,
  `loan_rate` float(12,2) DEFAULT NULL,
  `loan_duration` int(11) DEFAULT NULL COMMENT 'in Month',
  `no_of_installment` int(11) DEFAULT NULL,
  `loan_mode` varchar(25) DEFAULT NULL,
  `total_payable` float(12,2) DEFAULT NULL,
  `total_paid` float(12,2) DEFAULT NULL,
  `total_interest` float(12,2) DEFAULT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'ACTIVE',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(255) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `op_user`
--

CREATE TABLE `op_user` (
  `id` int(11) NOT NULL,
  `user_type` varchar(255) DEFAULT 'ADMIN',
  `user_name` varchar(255) DEFAULT NULL,
  `user_pass` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `loan_limit` float(12,2) NOT NULL DEFAULT '0.00',
  `max_duration` int(11) NOT NULL COMMENT 'in Month',
  `pan` varchar(10) DEFAULT NULL,
  `aadhar` varchar(12) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'ACTIVE',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `op_installment`
--
ALTER TABLE `op_installment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `op_loan`
--
ALTER TABLE `op_loan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `op_installment`
--
ALTER TABLE `op_installment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `op_loan`
--
ALTER TABLE `op_loan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
