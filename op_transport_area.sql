-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2021 at 02:04 PM
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
-- Table structure for table `op_transport_area`
--

CREATE TABLE `op_transport_area` (
  `id` int(11) NOT NULL,
  `area_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `area_fee` float(12,2) NOT NULL,
  `status` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT 'ACTIVE',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Store the List of Transport Area with Fee';

--
-- Dumping data for table `op_transport_area`
--

INSERT INTO `op_transport_area` (`id`, `area_name`, `area_fee`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(2, 'Badalpura ', 500.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(3, 'BALUAN', 610.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(4, 'Balwan Tola', 600.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(5, 'Balwan Tola Kotwapatti Rampur', 600.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(6, 'Bhairopur ', 530.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(7, 'Bishnupura 3', 410.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(8, 'Bishnupura 4', 470.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(9, 'Bishnupura 5', 500.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(10, 'Chainpurava', 620.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(11, 'Chakia Diyar', 600.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(12, 'CHIRAND', 500.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(13, 'Chirand Lodipur', 500.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(14, 'Chirand Lodipur 1', 280.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(15, 'DAFTARPUR ', 560.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(16, 'Dahiaywan ', 480.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(17, 'Dariyawganj', 500.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(18, 'Darshan Nagar', 480.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(19, 'Dayal Chak', 500.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(20, 'DHANAURA', 600.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(21, 'Dharampura', 500.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(22, 'DORIGANJ', 530.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(23, 'DUMARI ADDA', 570.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(24, 'East Rauja', 330.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(25, 'Gheghta ', 500.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(26, 'Gopalpur', 560.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(27, 'Hashanpur', 530.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(28, 'Jahanpur Khairah', 500.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(29, 'Jalalpur Gultanganj 2', 310.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(30, 'Jalalpur Gultanganj 4', 350.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(31, 'Jhauwan Saidpur', 620.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(32, 'Kansdiyar', 620.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(33, 'Kazi Tola', 530.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(34, 'KAZIPUR', 560.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(35, 'Khalpura', 360.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(36, 'Khalpura 1', 520.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(37, 'Khalpura Bala', 360.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(38, 'Khawashpur ', 530.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(39, 'Mahaddipur', 550.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(40, 'Maharajganj', 380.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(41, 'Makhdumganj', 400.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(42, 'Makhdumganj ', 400.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(43, 'Makhdumganj Gheghta', 450.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(44, 'Manopur Jahagir', 600.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(45, 'MANUPUR MAJHAN', 600.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(46, 'Maujampur', 600.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(47, 'MEHRAULI', 560.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(48, 'Mehrauli Sighai', 580.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(49, 'Musepur', 600.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(50, 'NARAON', 620.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(51, 'Naraon Kotheyan', 600.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(52, 'Naraon Madanpur', 600.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(53, 'PIRARI', 600.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(54, 'Pirauna', 600.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(55, 'Pirauna Barbakpur', 600.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(56, 'Raipur Bindgawa', 600.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(57, 'RASALPURA', 500.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(58, 'Rasalpura Jalalpur ', 500.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(59, 'Sabalpur', 600.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(60, 'Sherpur', 500.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(61, 'Sherpur Gheghta', 430.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(62, 'Shivnagari', 430.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(63, 'Shivrahian', 500.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(64, 'Suratpur', 600.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(65, 'Tahal tola', 600.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(66, 'Town Azad Nagar ', 530.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(67, 'Town GANDHI CHOWK', 520.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(68, 'Uma Nagar', 480.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(69, 'Zilkabad', 600.00, 'ACTIVE', 2, '2020-06-01 04:41:56', NULL, '2021-08-12 12:03:02'),
(70, '', 0.00, 'AUTO', 2, '2020-06-01 04:42:10', NULL, '2021-08-12 12:03:02'),
(72, '', 0.00, 'AUTO', 0, '2020-06-04 03:40:22', NULL, '2021-08-12 12:03:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `op_transport_area`
--
ALTER TABLE `op_transport_area`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `op_transport_area`
--
ALTER TABLE `op_transport_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
