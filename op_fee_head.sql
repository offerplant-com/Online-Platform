-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2021 at 02:00 PM
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
-- Database: `bine_pro`
--

-- --------------------------------------------------------

--
-- Table structure for table `op_fee_head`
--

CREATE TABLE `op_fee_head` (
  `id` int(11) NOT NULL,
  `fee_order` int(11) NOT NULL COMMENT 'Display Order in Invoice',
  `fee_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `fee_type` varchar(255) CHARACTER SET latin1 NOT NULL COMMENT 'Based on STUDENT, CLASS, FIXED',
  `fee_month` varchar(2000) CHARACTER SET latin1 NOT NULL,
  `fee_amount` float(12,2) NOT NULL,
  `status` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT 'ACTIVE' COMMENT 'ACTIVE, INACTIVE, BLOCKED',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `finance_type` varchar(255) NOT NULL DEFAULT 'NORMAL' COMMENT 'NORMAL, FREE, BPL, STAFF',
  `admission_type` varchar(255) NOT NULL COMMENT 'OLD, NEW',
  `student_type` varchar(255) NOT NULL COMMENT 'GENERAL, TRANSPORTER, HOSTLER',
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Fee Structure for School';

--
-- Dumping data for table `op_fee_head`
--

INSERT INTO `op_fee_head` (`id`, `fee_order`, `fee_name`, `fee_type`, `fee_month`, `fee_amount`, `status`, `created_at`, `created_by`, `finance_type`, `admission_type`, `student_type`, `updated_by`, `updated_at`) VALUES
(3, 3, 'Tuition Fee', 'CLASS', 'April,May,June,July,August,September,October,November,December,January,February,March', 0.00, 'ACTIVE', '2020-05-31 23:09:09', 0, 'NORMAL', 'NEW,OLD', 'GENERAL,TRANSPORT,HOSTELER', NULL, '2021-08-12 11:59:34'),
(4, 4, 'Hostel Fee', 'CLASS', 'April,May,June,July,August,September,October,November,December,January,February,March', 0.00, 'INACTIVE', '2020-06-21 00:16:16', 2, 'NORMAL', 'NEW,OLD', 'HOSTELER', NULL, '2021-08-12 11:59:34'),
(6, 6, 'Back Dues															', 'STUDENT', 'April,July,August,September,October,November,December,January,February,March', 0.00, 'ACTIVE', '2020-06-04 07:28:07', 0, 'NORMAL,BPL', 'OLD', 'GENERAL,TRANSPORT,HOSTELER', NULL, '2021-08-12 11:59:34'),
(10, 3, 'Transport Fee', 'CLASS', 'April,May,June,July,August,September,October,November,December,January,February,March', 0.00, 'INACTIVE', '2020-06-17 07:16:34', 2, 'NORMAL', 'NEW,OLD', 'TRANSPORT', NULL, '2021-08-12 11:59:34'),
(14, 1, 'Admission Fee', 'CLASS', 'April', 0.00, 'ACTIVE', '2020-05-31 23:08:43', 0, 'NORMAL', 'NEW', 'GENERAL,TRANSPORT,HOSTELER', NULL, '2021-08-12 11:59:34'),
(37, 1, 'Development Fee', 'CLASS', 'September', 0.00, 'ACTIVE', '2020-06-06 08:57:06', 0, 'NORMAL', 'NEW,OLD', 'GENERAL,TRANSPORT,HOSTELER', NULL, '2021-08-12 11:59:34'),
(39, 0, '', '', '', 0.00, 'AUTO', '2020-06-06 08:57:09', 2, '', '', '', NULL, '2021-08-12 11:59:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `op_fee_head`
--
ALTER TABLE `op_fee_head`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `op_fee_head`
--
ALTER TABLE `op_fee_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
