-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2021 at 03:40 PM
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
-- Table structure for table `op_docs`
--

CREATE TABLE `op_docs` (
  `id` int(11) NOT NULL,
  `docs_date` timestamp NULL DEFAULT current_timestamp(),
  `docs_title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `docs_details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `docs_attachment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `docs_size` float DEFAULT NULL,
  `viewer` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detail of any uploaded document';

--
-- Dumping data for table `op_docs`
--

INSERT INTO `op_docs` (`id`, `docs_date`, `docs_title`, `docs_details`, `docs_attachment`, `docs_size`, `viewer`, `status`, `created_at`, `created_by`, `updated_by`, `updated_at`) VALUES
(2, '2020-08-31 13:27:04', '', '', '', NULL, '', 'AUTO', '0000-00-00 00:00:00', 1, NULL, '2021-08-12 13:39:56'),
(5, '2020-09-04 00:55:20', '', '', '', NULL, '', 'AUTO', '0000-00-00 00:00:00', 0, NULL, '2021-08-12 13:39:56'),
(13, '2020-09-11 07:04:50', 'Class-VI-Maths-Ex-1.3-Page-1', '', '891161.pdf', NULL, '236', 'ACTIVE', '0000-00-00 00:00:00', 0, NULL, '2021-08-12 13:39:56'),
(14, '2020-09-11 07:17:56', 'Class-VI-Maths-Ex-1.3-Page2', '', '665952.pdf', NULL, '364', 'ACTIVE', '0000-00-00 00:00:00', 0, NULL, '2021-08-12 13:39:56'),
(15, '2020-09-11 07:18:30', 'Class-VI-Maths-Ex-1.3-Page3', '', '393933.pdf', NULL, '364', 'ACTIVE', '0000-00-00 00:00:00', 0, NULL, '2021-08-12 13:39:56'),
(16, '2020-09-11 07:18:56', 'Class-VI-Maths-Ex-2.9-Q.4-5-6', '', '787674.pdf', NULL, '371', 'ACTIVE', '0000-00-00 00:00:00', 0, NULL, '2021-08-12 13:39:56'),
(17, '2020-09-16 06:46:33', '', '', '', NULL, '', 'AUTO', '0000-00-00 00:00:00', 2, NULL, '2021-08-12 13:39:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `op_docs`
--
ALTER TABLE `op_docs`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
