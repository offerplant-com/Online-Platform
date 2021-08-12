-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2021 at 12:17 PM
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
-- Table structure for table `op_answer`
--

CREATE TABLE `op_answer` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `set_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PENDING',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `entry_time` datetime NOT NULL,
  `exit_time` datetime NOT NULL,
  `q_1` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_2` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_3` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_4` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_5` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_6` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_7` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_8` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_9` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_10` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_11` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_12` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_13` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_14` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_15` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_16` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_17` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_18` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_19` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_20` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_21` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_22` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_23` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_24` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_25` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_26` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_27` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_28` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_29` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_30` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_31` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_32` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_33` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_34` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_35` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_36` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_37` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_38` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_39` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_40` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_41` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_42` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_43` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_44` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_45` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_46` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_47` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_48` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_49` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_50` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_51` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_52` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_53` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_54` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_55` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_56` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_57` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_58` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_59` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_60` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_61` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_62` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_63` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_64` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_65` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_66` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_67` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_68` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_69` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_70` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_71` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_72` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_73` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_74` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_75` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_76` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_77` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_78` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_79` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_80` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_81` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_82` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_83` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_84` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_85` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_86` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_87` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_88` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_89` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_90` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_91` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_92` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_93` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_94` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_95` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_96` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_97` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_98` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_99` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q_100` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Store the Answer of Online Exam ';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `op_answer`
--
ALTER TABLE `op_answer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`,`set_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `op_answer`
--
ALTER TABLE `op_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
