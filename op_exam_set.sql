-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2021 at 12:27 PM
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
-- Database: `idiscovery`
--

-- --------------------------------------------------------

--
-- Table structure for table `op_exam_set`
--

CREATE TABLE `op_exam_set` (
  `id` int(11) NOT NULL,
  `set_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `student_class` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `duration` int(11) NOT NULL COMMENT 'in Minutes',
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `marks_plus` float(4,2) NOT NULL,
  `marks_minus` float(4,2) NOT NULL,
  `question` int(11) NOT NULL COMMENT 'No of Question',
  `question_list` varchar(4000) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Comma seperated list of Questions',
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PENDING' COMMENT 'PENDING, ACTIVE, BLOCK, LIVE, FINISHED, CLOSED',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Details of Question in of Set , Duration, Marks';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `op_exam_set`
--
ALTER TABLE `op_exam_set`
  ADD UNIQUE KEY `set_id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `op_exam_set`
--
ALTER TABLE `op_exam_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
