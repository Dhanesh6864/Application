-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2024 at 07:11 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `curofinal`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `patient_id` int(11) DEFAULT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`patient_id`, `patient_name`, `date`, `status`) VALUES
(20240003, 'ammu', '2024-05-10', 'reject'),
(20240004, 'Elamaran', '2024-05-23', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `dlogin`
--

CREATE TABLE `dlogin` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dlogin`
--

INSERT INTO `dlogin` (`id`, `user_id`, `password`) VALUES
(1, '123', '12345'),
(2, 'dhanesh6864', '123'),
(3, 'alice_smith', 'myp@ssw0rd'),
(4, '0', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_details`
--

CREATE TABLE `doctor_details` (
  `user_id` varchar(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `specialization` varchar(255) DEFAULT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `profile_photo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor_details`
--

INSERT INTO `doctor_details` (`user_id`, `password`, `name`, `gender`, `specialization`, `contact_no`, `profile_photo`) VALUES
('123', '12345', 'coffe', '24', 'general Seargoin', '987456852', '.jpg'),
('2024305356', '05356', 'dhanesh', '24', 'general Seargoin', '987456852', '2024305356.jpg'),
('2024678715', '78715', 'dhanesh', '24', 'general Seargoin', '987456852', '2024678715.jpg'),
('2024731145', '31145', 'dhanesh', '24', 'general Seargoin', '987456852', '2024731145.jpg'),
('dhanesh6864', '123', 'dhanesh', '24', 'general Seargoin', '987456852', '202465be7ef6513e4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `profile_pic_path` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `patient_id`, `profile_pic_path`, `created_at`) VALUES
(26, '20240003', 'profile_photos/20240003.jpg', '2024-05-09 04:47:24'),
(27, '20240004', 'profile_photos/20240004.jpg', '2024-05-09 04:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `patientreports`
--

CREATE TABLE `patientreports` (
  `PatientID` int(11) NOT NULL,
  `Reports` text DEFAULT NULL,
  `DischargeImage` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patientreports`
--

INSERT INTO `patientreports` (`PatientID`, `Reports`, `DischargeImage`) VALUES
(20240036, 'null', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patient_details`
--

CREATE TABLE `patient_details` (
  `sno` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `patient_name` varchar(255) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `mobileno` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `profile_image` text DEFAULT NULL,
  `diagnosis` text DEFAULT NULL,
  `disease` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_details`
--

INSERT INTO `patient_details` (`sno`, `patient_id`, `patient_name`, `age`, `gender`, `mobileno`, `email`, `profile_image`, `diagnosis`, `disease`) VALUES
(197, 20240001, 'ammu', 23, 'Female', '8008747694', 'ammu@gmail.com', 'profile_images/20240001.jpg', 'Laparoscopic appendicectomy', 'Kidney'),
(198, 20240002, 'ramudfddedf', 45, 'male', '8527419631', 'gaj@s.som', 'profile_images/20240002.jpg', 'leg', 'sda'),
(199, 20240003, 'ammu', 22, 'Female', '8008747586', 'ammu@gmail.com', 'profile_images/20240003.jpg', 'Laparoscopic appendicectomy', 'fever'),
(200, 20240004, 'Elamaran', 30, 'Male', '9854218655', 'elamaran@gmail.con', 'profile_images/20240004.jpg', 'Open appendicectomy', 'cold');

-- --------------------------------------------------------

--
-- Table structure for table `plogin`
--

CREATE TABLE `plogin` (
  `patient_id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `patient_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plogin`
--

INSERT INTO `plogin` (`patient_id`, `password`, `patient_name`) VALUES
(20240001, '0001', 'ammu'),
(20240002, '0002', 'ramudfddedf'),
(20240003, '0003', 'ammu'),
(20240004, '0004', 'Elamaran');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `profile_pic_path1` varchar(255) DEFAULT NULL,
  `profile_pic_path2` varchar(255) DEFAULT NULL,
  `profile_pic_path3` varchar(255) DEFAULT NULL,
  `profile_pic_path4` varchar(255) DEFAULT NULL,
  `profile_pic_path5` varchar(255) DEFAULT NULL,
  `profile_pic_path6` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `patient_id`, `profile_pic_path1`, `profile_pic_path2`, `profile_pic_path3`, `profile_pic_path4`, `profile_pic_path5`, `profile_pic_path6`, `created_at`) VALUES
(0, '12345', 'profile_photos/12345_1.jpg', 'profile_photos/12345_2.jpg', 'profile_photos/12345_3.jpg', 'profile_photos/12345_4.jpg', 'profile_photos/12345_5.jpg', 'profile_photos/12345_6.jpg', '2024-02-19 03:40:32'),
(0, '12345', 'profile_photos/12345_1.jpg', 'profile_photos/12345_2.jpg', 'profile_photos/12345_3.jpg', 'profile_photos/12345_4.jpg', 'profile_photos/12345_5.jpg', 'profile_photos/12345_6.jpg', '2024-02-19 03:40:32'),
(0, '12345', 'profile_photos/12345_1.jpg', 'profile_photos/12345_2.jpg', 'profile_photos/12345_3.jpg', 'profile_photos/12345_4.jpg', 'profile_photos/12345_5.jpg', 'profile_photos/12345_6.jpg', '2024-02-19 03:40:32'),
(0, '12345', 'profile_photos/12345_1.jpg', 'profile_photos/12345_2.jpg', 'profile_photos/12345_3.jpg', 'profile_photos/12345_4.jpg', 'profile_photos/12345_5.jpg', 'profile_photos/12345_6.jpg', '2024-02-19 03:40:32'),
(0, '12345', 'profile_photos/12345_1.jpg', 'profile_photos/12345_2.jpg', 'profile_photos/12345_3.jpg', 'profile_photos/12345_4.jpg', 'profile_photos/12345_5.jpg', 'profile_photos/12345_6.jpg', '2024-02-19 03:40:32'),
(0, '12345', 'profile_photos/12345_1.jpg', 'profile_photos/12345_2.jpg', 'profile_photos/12345_3.jpg', 'profile_photos/12345_4.jpg', 'profile_photos/12345_5.jpg', 'profile_photos/12345_6.jpg', '2024-02-19 03:40:32'),
(0, '12345', 'profile_photos/12345_1.jpg', 'profile_photos/12345_2.jpg', 'profile_photos/12345_3.jpg', 'profile_photos/12345_4.jpg', 'profile_photos/12345_5.jpg', 'profile_photos/12345_6.jpg', '2024-02-19 03:43:13'),
(0, '123456', 'reports/123456_1.jpg', 'reports/123456_2.jpg', 'reports/123456_3.jpg', 'reports/123456_4.jpg', 'reports/123456_5.jpg', 'reports/123456_6.jpg', '2024-02-19 03:45:29'),
(0, '1659', 'reports/1659_1.jpg', NULL, NULL, NULL, NULL, NULL, '2024-02-19 04:17:06');

-- --------------------------------------------------------

--
-- Table structure for table `symptoms`
--

CREATE TABLE `symptoms` (
  `patient_id` int(11) DEFAULT NULL,
  `fever` tinyint(1) DEFAULT NULL,
  `abdominal_pain` tinyint(1) DEFAULT NULL,
  `discharge` tinyint(1) DEFAULT NULL,
  `nausea` tinyint(1) DEFAULT NULL,
  `vomiting` tinyint(1) DEFAULT NULL,
  `pain_at_surgical_site` tinyint(1) DEFAULT NULL,
  `bleeding` tinyint(1) DEFAULT NULL,
  `swelling` tinyint(1) DEFAULT NULL,
  `obstipation` tinyint(1) DEFAULT NULL,
  `constipation` tinyint(1) DEFAULT NULL,
  `abdominal_distension` tinyint(1) DEFAULT NULL,
  `jaundice` tinyint(1) DEFAULT NULL,
  `discharge_from_surgical_site` tinyint(1) DEFAULT NULL,
  `other_text` text DEFAULT NULL,
  `notifications` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `symptoms`
--

INSERT INTO `symptoms` (`patient_id`, `fever`, `abdominal_pain`, `discharge`, `nausea`, `vomiting`, `pain_at_surgical_site`, `bleeding`, `swelling`, `obstipation`, `constipation`, `abdominal_distension`, `jaundice`, `discharge_from_surgical_site`, `other_text`, `notifications`) VALUES
(20240003, 1, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 'cold', 'fever,abdominal_pain,nausea,vomiting,constipation,discharge_from_surgical_site,other_text:cold'),
(20240004, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, ' pain', 'fever,abdominal_pain,constipation,discharge_from_surgical_site,other_text: pain');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `patient_id` varchar(255) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`patient_id`, `image`) VALUES
('20240003', 'uploads/20240003img1.jpg'),
('20240003', 'uploads/20240003img2.jpg'),
('20240003', 'uploads/20240003img3.webp'),
('20240003', 'uploads/20240003img4.png'),
('20240003', 'uploads/20240003img5.webp'),
('20240004', 'uploads/20240004img1.webp'),
('20240004', 'uploads/20240004img2.jpg'),
('20240004', 'uploads/20240004img3.jpg'),
('20240004', 'uploads/20240004img4.png'),
('20240004', 'uploads/20240004img5.webp'),
('20240004', 'uploads/20240004img6.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dlogin`
--
ALTER TABLE `dlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_details`
--
ALTER TABLE `doctor_details`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patientreports`
--
ALTER TABLE `patientreports`
  ADD PRIMARY KEY (`PatientID`);

--
-- Indexes for table `patient_details`
--
ALTER TABLE `patient_details`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `patient_id` (`patient_id`);

--
-- Indexes for table `plogin`
--
ALTER TABLE `plogin`
  ADD PRIMARY KEY (`patient_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dlogin`
--
ALTER TABLE `dlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `patientreports`
--
ALTER TABLE `patientreports`
  MODIFY `PatientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20240037;

--
-- AUTO_INCREMENT for table `patient_details`
--
ALTER TABLE `patient_details`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
