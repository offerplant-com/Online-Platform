-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2021 at 08:15 PM
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
--

-- --------------------------------------------------------

--
-- Table structure for table `op_user`
--

CREATE TABLE `op_user` (
  `id` int(11) NOT NULL,
  `user_type` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT 'ADMIN',
  `full_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `user_mobile` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `user_name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `user_pass` varchar(255) CHARACTER SET latin1 NOT NULL,
  `user_email` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `doc` date DEFAULT NULL,
  `status` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT 'ACTIVE',
  `token` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `op_user`
--

INSERT INTO `op_user` (`id`, `user_type`, `full_name`, `user_mobile`, `user_name`, `user_pass`, `user_email`, `doc`, `status`, `token`, `last_login`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'ADMIN', 'OfferPlant Technologies', '9431426600', 'offerplant', '4501ed01cb1149a9b7676e503d9a902d', 'ask@offerplant.com', '2017-07-26', 'ACTIVE', 'od043p83qcj03arhcaajqtiq2m', '2021-08-17 18:38:51', 1, NULL, NULL, '2021-08-17 18:38:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `op_user`
--
ALTER TABLE `op_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `op_user`
--
ALTER TABLE `op_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
