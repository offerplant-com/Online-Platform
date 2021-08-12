-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2021 at 02:46 PM
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
-- Table structure for table `op_student`
--

CREATE TABLE `op_student` (
  `id` int(11) NOT NULL,
  `student_admission` varchar(255) CHARACTER SET latin1 NOT NULL,
  `student_session` varchar(255) NOT NULL,
  `student_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `student_mother` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `student_father` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `date_of_birth` date NOT NULL,
  `student_sex` char(10) CHARACTER SET latin1 DEFAULT NULL,
  `student_mobile` varchar(20) CHARACTER SET latin1 NOT NULL,
  `student_email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `student_photo` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT 'no_image.jpg',
  `student_bloodgroup` varchar(255) CHARACTER SET latin1 NOT NULL,
  `date_of_admission` date NOT NULL,
  `student_class` varchar(15) CHARACTER SET latin1 NOT NULL,
  `student_section` varchar(255) CHARACTER SET latin1 NOT NULL,
  `student_roll` int(11) NOT NULL,
  `student_type` varchar(255) CHARACTER SET latin1 NOT NULL,
  `area_id` int(11) NOT NULL,
  `transport_area` varchar(255) NOT NULL,
  `trip_id` int(11) NOT NULL,
  `mother_mobile` varchar(10) NOT NULL,
  `student_whatsapp` varchar(10) NOT NULL,
  `cbse_reg_no` varchar(255) NOT NULL,
  `vth_subject` varchar(255) NOT NULL,
  `family_income` varchar(25) DEFAULT NULL,
  `admission_type` varchar(255) DEFAULT 'NEW',
  `finance_type` varchar(255) DEFAULT NULL,
  `father_qualification` varchar(255) DEFAULT NULL,
  `mother_qualification` varchar(255) DEFAULT NULL,
  `father_mobile` varchar(10) NOT NULL,
  `base_dues` float(12,2) NOT NULL,
  `father_occupation` varchar(255) DEFAULT NULL,
  `mother_occupation` varchar(255) NOT NULL,
  `aadhar_no` varchar(12) NOT NULL,
  `pin_code` varchar(6) NOT NULL,
  `student_category` varchar(255) NOT NULL,
  `student_religion` varchar(255) NOT NULL,
  `student_caste` varchar(255) NOT NULL,
  `status` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT 'AUTO',
  `state_code` varchar(10) DEFAULT NULL,
  `district_code` varchar(10) DEFAULT NULL,
  `student_address1` varchar(255) NOT NULL,
  `student_address2` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Details of Student for School & Institute';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `op_student`
--
ALTER TABLE `op_student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_admission` (`student_admission`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `op_student`
--
ALTER TABLE `op_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
