-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2021 at 01:53 PM
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
-- Table structure for table `op_state`
--

CREATE TABLE `op_state` (
  `id` int(11) NOT NULL,
  `name` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `code` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'ACTIVE',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='List of All State of India';

--
-- Dumping data for table `op_state`
--

INSERT INTO `op_state` (`id`, `name`, `code`, `status`, `created_at`, `created_by`, `updated_by`, `updated_at`) VALUES
(1, 'Andaman and Nicobar ', 'AN', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(2, 'Andhra Pradesh ', 'AP', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(3, 'Arunachal Pradesh ', 'AR', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(4, 'Assam ', 'AS', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(5, 'Bihar ', 'BR', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(6, 'Chandigarh ', 'CH', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(7, 'Chhattisgarh ', 'CT', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(8, 'Dadra and Nagar Haveli ', 'DN', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(9, 'Daman and Diu ', 'DD', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(10, 'Delhi ', 'DL', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(11, 'Goa ', 'GA', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(12, 'Gujarat ', 'GJ', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(13, 'Haryana ', 'HR', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(14, 'Himachal Pradesh ', 'HP', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(15, 'Jammu and Kashmir ', 'JK', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(16, 'Jharkhand ', 'JH', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(17, 'Karnataka ', 'KA', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(18, 'Kerala ', 'KL', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(19, 'Lakshadweep ', 'LD', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(20, 'Madhya Pradesh ', 'MP', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(21, 'Maharashtra ', 'MH', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(22, 'Manipur ', 'MN', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(23, 'Meghalaya ', 'ML', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(24, 'Mizoram ', 'MZ', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(25, 'Nagaland ', 'NL', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(26, 'Odisha ', 'OD', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(27, 'Puducherry ', 'PY', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(28, 'Punjab ', 'PB', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(29, 'Rajasthan ', 'RJ', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(30, 'Sikkim ', 'SK', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(31, 'Tamil Nadu ', 'TN', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(32, 'Telangana ', 'TG', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(33, 'Tripura ', 'TR', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(34, 'Uttar Pradesh ', 'UP', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(35, 'Uttarakhand ', 'UT', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08'),
(36, 'West Bengal ', 'WB', 'ACTIVE', '2020-05-17 06:57:42', 0, NULL, '2021-08-12 11:53:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `op_state`
--
ALTER TABLE `op_state`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `op_state`
--
ALTER TABLE `op_state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
