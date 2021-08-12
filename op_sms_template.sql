-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2021 at 01:51 PM
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
-- Table structure for table `op_sms_template`
--

CREATE TABLE `op_sms_template` (
  `id` int(11) NOT NULL,
  `sender_id` varchar(6) NOT NULL,
  `template_name` varchar(255) NOT NULL,
  `template_id` varchar(30) NOT NULL COMMENT 'Provided by Operator',
  `sms` varchar(500) NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT '''AUTO''',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='DLT Template Structure';

--
-- Dumping data for table `op_sms_template`
--

INSERT INTO `op_sms_template` (`id`, `sender_id`, `template_name`, `template_id`, `sms`, `status`, `created_at`, `created_by`, `updated_by`, `updated_at`) VALUES
(17, 'ANDPSC', 'General  Text', '1007161789213385513', 'Dear\r\n\r\n{#var#}{#var#}{#var#}{#var#}\r\n\r\nVia OFFSMS ', 'ACTIVE', '2021-08-04 20:11:46', 2, NULL, '2021-08-12 11:50:40'),
(18, 'ANDPSC', 'AND APPLY', '1007161788336995126', '\"Dear {#var#} Your Application for Admission in {#var#} submitted successfully with application no is {#var#} \r\n \r\n Regards AND Public School\"', 'ACTIVE', '2021-08-04 20:12:58', 2, NULL, '2021-08-12 11:50:40'),
(19, 'ANDPSC', 'AND DUES ', '1007161788325076724', 'Dear Parent Kindly pay Rs. {#var#} as the tuition fee of class {#var#} of the month {#var#} \r\n \r\n Regards AND PUBLIC SCHOOL\"', 'ACTIVE', '2021-08-04 20:14:45', 2, NULL, '2021-08-12 11:50:40'),
(20, 'ANDPSC', 'AND CLOSE ORDER', '1007161788333315961', 'School will remain closed from {#var#} to {#var#} as per{#var#} . \r\n THANKS \r\n \r\n AND Public School', 'ACTIVE', '2021-08-04 20:15:31', 2, NULL, '2021-08-12 11:50:40'),
(21, 'ANDPSC', 'Payment Received', '1007161788321076926', '\"Dear {#var#} Rs. {#var#} received successfully against {#var#} Your current due is {#var#}. \r\n \r\n Regards \r\n AND Public School\"', 'ACTIVE', '2021-08-04 20:16:22', 2, NULL, '2021-08-12 11:50:40'),
(22, 'ANDPSC', 'AND OTP', '1007161788340963714', 'Thanks for interest in AND Public School Your App Login OTP is {#var#}', 'ACTIVE', '2021-08-04 20:16:54', 2, NULL, '2021-08-12 11:50:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `op_sms_template`
--
ALTER TABLE `op_sms_template`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `op_sms_template`
--
ALTER TABLE `op_sms_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
