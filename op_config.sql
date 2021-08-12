-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2021 at 10:41 AM
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
-- Table structure for table `op_config`
--

CREATE TABLE `op_config` (
  `id` int(11) NOT NULL,
  `option_name` varchar(255) NOT NULL,
  `option_value` varchar(4000) NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'ACTIVE',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Basic Configuration of Project';

--
-- Dumping data for table `op_config`
--

INSERT INTO `op_config` (`id`, `option_name`, `option_value`, `status`, `created_at`, `created_by`) VALUES
(1, 'token', '4d9ea402c402cc7a21b7b840a0b8ff9c', 'ACTIVE', '2021-04-30 17:54:02', 1),
(4, 'inst_name', 'STUDYPLANT', 'ACTIVE', '2021-04-30 17:54:02', 1),
(5, 'inst_info', 'Based on CSBE Curriculum', 'ACTIVE', '2021-04-30 17:54:02', 1),
(6, 'inst_address1', 'Municipal Chowk, ', 'ACTIVE', '2021-04-30 17:54:02', 1),
(7, 'inst_address2', 'Chhapra, Saran Bihar - 841301 ', 'ACTIVE', '2021-04-30 17:54:02', 1),
(8, 'inst_contact', '9431426600', 'ACTIVE', '2021-04-30 17:54:02', 1),
(9, 'inst_contact2', '', 'ACTIVE', '2021-04-30 17:54:02', 1),
(10, 'inst_email', 'info@studyplant.in', 'ACTIVE', '2021-04-30 17:54:02', 1),
(11, 'inst_logo', 'assets/img/logo.png', 'ACTIVE', '2021-04-30 17:54:02', 1),
(12, 'white_logo', 'img/white_logo.png', 'ACTIVE', '2021-04-30 17:54:02', 1),
(13, 'banner', 'assets/img/banner.jpg', 'ACTIVE', '2021-04-30 17:54:02', 1),
(14, 'inst_url', 'http://studyplant.in', 'ACTIVE', '2021-04-30 17:54:02', 1),
(15, 'inst_type', 'Institute', 'ACTIVE', '2021-04-30 17:54:02', 1),
(16, 'sender_id', 'OFFEDU', 'ACTIVE', '2021-04-30 17:54:02', 1),
(17, 'noreply_email', 'noreply@studyplant.in', 'ACTIVE', '2021-04-30 17:54:02', 1),
(18, 'auth_key', '188195A981rNIY8n1Y5a338b1c', 'ACTIVE', '2021-04-30 17:54:02', 1),
(19, 'base_url', 'https://studyplant.in/app/', 'ACTIVE', '2021-04-30 17:54:02', 1),
(20, 'api_key', 'a22cee2e1392a9fe0a122f6378415554', 'ACTIVE', '2021-04-30 17:54:02', 1),
(21, 'app_start_date', '2021-04-01', 'ACTIVE', '2021-04-30 17:54:02', 1),
(22, 'yt_key', 'AIzaSyCJoEDAARmX8QHNyc651PdSnvRr66rpJNY', 'ACTIVE', '2021-04-30 17:54:02', 1),
(23, 'facebook', 'http://facebook.com/offerplant', 'ACTIVE', '2021-04-30 17:54:02', 1),
(24, 'twitter', 'http://twitter.com/offerplant', 'ACTIVE', '2021-04-30 17:54:02', 1),
(25, 'linkedin', 'http://linkedin.com/company/offerplant', 'ACTIVE', '2021-04-30 17:54:02', 1),
(26, 'youtube', 'http://youtube.com', 'ACTIVE', '2021-04-30 17:54:02', 1),
(27, 'pinterest', 'http://pinterest.com/offerplant', 'ACTIVE', '2021-04-30 17:54:02', 1),
(28, 'instagram', 'http://instagram.com/offerplant', 'ACTIVE', '2021-04-30 17:54:02', 1),
(29, 'yt_live', 'https://www.youtube.com/embed/live_stream?channel=UCZMZpy3Ak_Y9ckeltZqVx7Q', 'ACTIVE', '2021-04-30 17:54:03', 1),
(30, 'channel_Id', 'UC500odmthCIKPu6R8kmZV2Q', 'ACTIVE', '2021-04-30 17:54:03', 1),
(31, 'app_name', 'StudyPlant 1.0', 'ACTIVE', '2021-04-30 17:54:03', 1),
(32, 'dev_company', 'OfferPlant Technologies Private Limited', 'ACTIVE', '2021-04-30 17:54:03', 1),
(33, 'dev_by', 'OfferPlant', 'ACTIVE', '2021-04-30 17:54:03', 1),
(34, 'dev_url', 'http://offerplant.com', 'ACTIVE', '2021-04-30 17:54:03', 1),
(35, 'dev_email', 'ask@offerplant.com', 'ACTIVE', '2021-04-30 17:54:03', 1),
(36, 'dev_contact', '9431426600', 'ACTIVE', '2021-04-30 17:54:03', 1),
(37, 'host_name', 'localhost', 'ACTIVE', '2021-04-30 17:54:03', 1),
(38, 'db_user', 'studypla_user', 'ACTIVE', '2021-04-30 17:54:03', 1),
(39, 'db_password', '@User_2001', 'ACTIVE', '2021-04-30 17:54:03', 1),
(40, 'db_name', 'studypla_db', 'ACTIVE', '2021-04-30 17:54:03', 1),
(41, 'gender_list', '[\"\",\"MALE\",\"FEMALE\",\"OTHER\"]', 'ACTIVE', '2021-04-30 17:54:03', 1),
(42, 'qualification_list', '[\"\",\"Non Matric\",\"Matric\",\"Intermediate\",\"Graduation\",\"Post Graduation\"]', 'ACTIVE', '2021-04-30 17:54:03', 1),
(43, 'duration_list', '[30,45,60,90,120,150]', 'ACTIVE', '2021-04-30 17:54:03', 1),
(44, 'answer_list', '[\"\",\"A\",\"B\",\"C\",\"D\"]', 'ACTIVE', '2021-04-30 17:54:03', 1),
(45, 'status_list', '[\"ACTIVE\",\"DEACTIVE\"]', 'ACTIVE', '2021-04-30 17:54:03', 1),
(46, 'session_list', '[\"2020-2021\"]', 'ACTIVE', '2021-04-30 17:54:03', 1),
(47, 'set_status_list', '[\"PENDING\",\"ACTIVE\",\"BLOCK\",\"FINISH\"]', 'ACTIVE', '2021-04-30 17:54:03', 1),
(48, 'unit_list', '[\"Days\",\"Months\",\"Hours\",\"Years\"]', 'ACTIVE', '2021-04-30 17:54:03', 1),
(49, 'month', '[\"April\",\"May\",\"June\",\"July\",\"August\",\"September\",\"October\",\"November\",\"December\",\"January\",\"February\",\"March\"]', 'ACTIVE', '2021-04-30 17:54:03', 1),
(50, 'course_list', '[\"\",\"NUR\",\"LKG\",\"UKG\",\"I\",\"II\",\"III\",\"IV\",\"V\",\"VI\"]', 'ACTIVE', '2021-04-30 17:54:03', 1),
(51, 'section_list', '[\"\",\"A\",\"B\",\"C\"]', 'ACTIVE', '2021-04-30 17:54:03', 1),
(52, 'day_list', '[\"\",\"SUN\",\"MON\",\"TUE\",\"WED\",\"THU\",\"FRI\",\"SAT\"]', 'ACTIVE', '2021-04-30 17:54:03', 1),
(53, 'meeting_list', '{\"\":\"Select\",\"gm_code\":\"GOOGLE MEET\",\"jitsi_code\":\"JITSI MEET\"}', 'ACTIVE', '2021-04-30 17:54:03', 1),
(54, 'full_name', 'STUDYPLANT', 'ACTIVE', '2021-04-30 17:59:56', 1),
(56, 'fb', '{\"1\":5,\"2\":\"Help\"}', 'ACTIVE', '2021-04-30 18:13:59', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `op_config`
--
ALTER TABLE `op_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `op_config`
--
ALTER TABLE `op_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
