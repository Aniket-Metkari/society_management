-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2023 at 07:38 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `societymanage`
--

-- --------------------------------------------------------

--
-- Table structure for table `allotments`
--

CREATE TABLE `allotments` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `flat_id` int(11) UNSIGNED NOT NULL,
  `flat_ownership` varchar(30) NOT NULL,
  `move_in_date` date NOT NULL,
  `move_out_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `allotments`
--

INSERT INTO `allotments` (`id`, `user_id`, `flat_id`, `flat_ownership`, `move_in_date`, `move_out_date`, `created_at`) VALUES
(1, 3, 1, 'Permanent Flat', '2023-01-01', '0000-00-00', '2023-02-22 12:53:46'),
(2, 31, 2, 'Rent Flat', '2023-01-01', '0000-00-00', '2023-03-06 12:56:20'),
(3, 30, 3, 'Permanent Flat', '2023-01-01', '0000-00-00', '2023-03-06 12:56:48'),
(4, 29, 4, 'Permanent Flat', '2023-01-01', '0000-00-00', '2023-03-06 12:57:29'),
(5, 28, 5, 'Rent Flat', '2023-01-01', '0000-00-00', '2023-03-06 12:57:51'),
(6, 27, 6, 'Permanent Flat', '2023-01-01', '0000-00-00', '2023-03-06 12:58:40'),
(7, 26, 7, 'Permanent Flat', '2023-01-01', '0000-00-00', '2023-03-06 12:59:03'),
(8, 25, 8, 'Rent Flat', '2023-01-01', '0000-00-00', '2023-03-06 12:59:31'),
(9, 24, 9, 'Rent Flat', '2023-01-01', '0000-00-00', '2023-03-06 13:00:00'),
(10, 23, 10, 'Rent Flat', '2023-01-01', '0000-00-00', '2023-03-06 13:00:33'),
(11, 22, 11, '', '2023-01-01', '0000-00-00', '2023-03-06 13:00:56'),
(12, 21, 12, '', '2023-01-01', '0000-00-00', '2023-03-06 13:01:23'),
(13, 20, 13, '', '2023-01-01', '0000-00-00', '2023-03-06 13:01:49'),
(14, 19, 14, '', '2023-01-01', '0000-00-00', '2023-03-06 13:02:11'),
(15, 18, 15, '', '2023-01-01', '0000-00-00', '2023-03-06 13:02:31'),
(16, 17, 16, '', '2023-01-01', '0000-00-00', '2023-03-06 13:02:55'),
(17, 16, 17, '', '2023-01-01', '0000-00-00', '2023-03-06 13:03:19'),
(18, 15, 18, '', '2023-01-01', '0000-00-00', '2023-03-06 13:03:43'),
(19, 14, 19, '', '2023-01-01', '0000-00-00', '2023-03-06 13:04:02'),
(20, 13, 20, '', '2023-01-01', '0000-00-00', '2023-03-06 13:04:27'),
(21, 12, 21, '', '2023-01-01', '0000-00-00', '2023-03-06 13:04:58'),
(22, 11, 22, '', '2023-01-01', '0000-00-00', '2023-03-06 13:05:22'),
(23, 10, 23, '', '2023-01-01', '0000-00-00', '2023-03-06 13:05:51'),
(24, 9, 24, '', '2023-01-01', '0000-00-00', '2023-03-06 13:06:11'),
(25, 8, 25, '', '2023-01-01', '0000-00-00', '2023-03-06 13:06:43'),
(26, 7, 26, '', '2023-01-01', '0000-00-00', '2023-03-06 13:07:04'),
(27, 6, 27, '', '2023-01-01', '0000-00-00', '2023-03-06 13:07:26'),
(28, 5, 28, '', '2023-01-01', '0000-00-00', '2023-03-06 13:07:47'),
(29, 4, 29, '', '2023-01-01', '0000-00-00', '2023-03-06 13:08:19'),
(30, 1, 30, '', '2023-01-01', '0000-00-00', '2023-03-06 13:08:35');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(11) UNSIGNED NOT NULL,
  `flat_id` int(11) UNSIGNED NOT NULL,
  `bill_title` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `month` varchar(30) NOT NULL,
  `paid_date` date DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `paid_amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `flat_id`, `bill_title`, `amount`, `month`, `paid_date`, `payment_method`, `paid_amount`, `created_at`) VALUES
(6, 1, 'Maintenance Bill', 1000.00, '2023-10', '2023-10-18', 'UPI', 1000.00, '2023-10-18 05:16:49');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `flat_id` int(11) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `master_comment` text NOT NULL,
  `status` enum('pending','in_progress','resolved') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `user_id`, `flat_id`, `description`, `master_comment`, `status`, `created_at`) VALUES
(1, 3, 1, 'Testing Complaints with edit process', '[{\"datetime\":\"2023-02-27 11:04:20\",\"details\":\"Testing Master in process comment\"},{\"datetime\":\"2023-02-27 11:06:06\",\"details\":\"Testing Master Resolved Comment\"}]', 'resolved', '2023-02-25 12:42:20'),
(2, 3, 1, 'At my floor common bulb is not working, Can you install new bulb there.', '[{\"datetime\":\"2023-03-03 10:58:12\",\"details\":\"OK I will check it.\"},{\"datetime\":\"2023-03-03 10:59:10\",\"details\":\"I have purchase new bulb and installed very soon.\"},{\"datetime\":\"2023-03-03 11:01:01\",\"details\":\"I have install new bulb so check it.\"}]', 'resolved', '2023-03-03 05:17:50');

-- --------------------------------------------------------

--
-- Table structure for table `flats`
--

CREATE TABLE `flats` (
  `id` int(11) UNSIGNED NOT NULL,
  `flat_number` varchar(255) NOT NULL,
  `floor` int(11) NOT NULL,
  `block_number` varchar(10) NOT NULL,
  `flat_type` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flats`
--

INSERT INTO `flats` (`id`, `flat_number`, `floor`, `block_number`, `flat_type`, `created_at`) VALUES
(1, '101', 1, 'A', '1 BHK Flat', '2023-02-20 11:37:45'),
(2, '102', 1, 'A', '1 BHK Flat', '2023-03-06 12:48:39'),
(3, '103', 1, 'A', '1 BHK Flat', '2023-03-06 12:48:55'),
(4, '104', 1, 'A', '1 BHK Flat', '2023-03-06 12:49:08'),
(5, '201', 2, 'A', '1 BHK Flat', '2023-03-06 12:49:24'),
(6, '202', 2, 'A', '1 BHK Flat', '2023-03-06 12:49:33'),
(7, '203', 2, 'A', '1 BHK Flat', '2023-03-06 12:49:47'),
(8, '204', 2, 'A', '1 BHK Flat', '2023-03-06 12:50:00'),
(9, '301', 3, 'A', '1 BHK Flat', '2023-03-06 12:50:17'),
(10, '302', 3, 'A', '1 BHK Flat', '2023-03-06 12:50:28'),
(11, '303', 3, 'A', '1 BHK Flat', '2023-03-06 12:50:38'),
(12, '304', 3, 'A', '1 BHK Flat', '2023-03-06 12:50:55'),
(13, '401', 4, 'A', '1 BHK Flat', '2023-03-06 12:51:11'),
(14, '402', 4, 'A', '1 BHK Flat', '2023-03-06 12:51:22'),
(15, '403', 4, 'A', '1 BHK Flat', '2023-03-06 12:51:34'),
(16, '404', 4, 'A', '1 BHK Flat', '2023-03-06 12:51:45'),
(17, '101', 1, 'B', '2 BHK Flat', '2023-03-06 12:51:59'),
(18, '102', 1, 'B', '2 BHK Flat', '2023-03-06 12:52:12'),
(19, '201', 2, 'B', '2 BHK Flat', '2023-03-06 12:52:25'),
(20, '202', 2, 'B', '2 BHK Flat', '2023-03-06 12:52:38'),
(21, '301', 3, 'B', '2 BHK Flat', '2023-03-06 12:52:57'),
(22, '302', 3, 'B', '2 BHK Flat', '2023-03-06 12:53:09'),
(23, '401', 4, 'B', '2 BHK Flat', '2023-03-06 12:53:29'),
(24, '402', 4, 'B', '2 BHK Flat', '2023-03-06 12:53:42'),
(25, '101', 1, 'C', '3 BHK Flat', '2023-03-06 12:54:06'),
(26, '201', 2, 'C', '3 BHK Flat', '2023-03-06 12:54:20'),
(27, '301', 3, 'C', '3 BHK Flat', '2023-03-06 12:54:45'),
(28, '401', 4, 'C', '3 BHK Flat', '2023-03-06 12:55:00'),
(29, '501', 5, 'B', 'Penthouse', '2023-03-06 12:55:21'),
(30, '501', 5, 'C', 'Penthouse', '2023-03-06 12:55:32');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `notiification_type` varchar(50) NOT NULL,
  `event_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `read_status` enum('unread','read') NOT NULL DEFAULT 'unread',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `notiification_type`, `event_id`, `message`, `link`, `read_status`, `created_at`) VALUES
(2, 3, 'Bill', 5, 'New bill added. Amount: , Month: ', 'bill_payment.php?id=5&action=notification', 'read', '2023-03-02 12:52:06'),
(3, 1, 'Bill Payment', 5, 'Bill Payment Done by Flat Number - B - 101 for .', 'bill_payment.php?id=5&action=notification', 'read', '2023-03-03 05:00:06'),
(4, 1, 'Complaint', 2, 'New Complaint added by Flat Number B - 101.', 'view_complaint.php?id=2&action=notification', 'read', '2023-03-03 05:17:50'),
(5, 3, 'Complaint Status', 2, 'Your Complaint for At my floor common bulb is not working, Can you install new bulb there. has been processed by Admin.', 'view_complaint.php?id=2&action=notification', 'read', '2023-03-03 05:29:11'),
(6, 3, 'Complaint Status', 2, 'Your Complaint for At my floor common bulb is not working, Can you install new bulb there. has been processed by Admin.', 'view_complaint.php?id=2&action=notification', 'read', '2023-03-03 05:31:01'),
(7, 3, 'Bill', 6, 'New bill added. Amount: , Month: ', 'bill_payment.php?id=6&action=notification', 'read', '2023-10-18 05:16:49'),
(8, 1, 'Bill Payment', 6, 'Bill Payment Done by Flat Number - A - 101 for Maintenance Bill.', 'bill_payment.php?id=6&action=notification', 'unread', '2023-10-18 05:18:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'Aniket Metkari', 'aniketmetkari14@gmail.com', '$2y$10$.NvnBzsC58HK8TgeO.BLHeoF5OvJ1jnOV.I2ZkSQBCSHp6t9CiwPG', 'admin', '2023-10-18 04:37:49'),
(3, 'Sanika Gadekar', 'sanika@gmail.com', '$2y$10$acx7zU8O.LhvCS4Pwlrnu.lUUZWdLNtz0eOcRUH/RqN4.feFyB8le', 'user', '2023-10-18 04:38:03'),
(4, 'Ricky Parte', 'ricky@gmail.com', '$2y$10$TiCA0H1mKen7K86RHn67U.80h23Q4FwWAmoFYpXW21J5r3I90R7IS', 'user', '2023-10-18 04:38:23'),
(5, 'Pushkraj Dhamale', 'pushkraj@gmail.com', '$2y$10$FEP0eWQAh3j3W7auEeRggebzqhhWM.SJS1SwlCVSzpOtRb29Y2UA.', 'user', '2023-10-18 04:39:07'),
(6, 'Sanket Walhekar', 'sanket@gmail.com', '$2y$10$3oFb6VMd1u.ZcHEbej/fQ.Lw5BVgj9O.xhpgTOKxmDx.KuY7eQq3O', 'user', '2023-10-18 04:39:24'),
(7, 'Hritik Sanas', 'hritik@gmail.com', '$2y$10$ZAtVDBi.yYQ.ZnoksuP.Ve0JR3SQ6Wp6IwZWmuJRXE4l5ObkW1SoK', 'user', '2023-10-18 04:39:37'),
(8, 'Niraj Jadhav', 'niraj@gmail.com', '$2y$10$NP12wNgi9fu38uVybAFs2eTNPsqL6SCVX1fc0G9ml8PnEktL0HRqe', 'user', '2023-10-18 04:39:56'),
(9, 'Aditya Kachare', 'aditya@gmail.com', '$2y$10$7ksquy6Un2zaxA2gKpJwIOHq8crm5ZICJojvNfmPTrO1LHQlObRXi', 'user', '2023-10-18 04:40:24'),
(10, 'Aatmaja Joshi', 'aatmaja@gmail.com', '$2y$10$UQuh3OIw5TyiFeGmuqm7beQ1T4/L7wxJvkAJbHprx1uMsj1CQMSM6', 'user', '2023-10-18 04:40:37'),
(11, 'Kiran Jadhav', 'kiran@gmail.com', '$2y$10$zCAb/VkgbPqGTWNq3SWpMeLDe0pDfxuKtqBPqXbvt1zP32d44i6D.', 'user', '2023-10-18 04:41:12'),
(12, 'Rohan Dakve', 'rohan@gmail.com', '$2y$10$lVh.LQDp8Utz4RkqIuwC/eMCtEBU7m52V0TFB1GhyN/YTNjzpsYDG', 'user', '2023-10-18 04:41:46'),
(13, 'Abhishek Kadam', 'abhishek@gmail.com', '$2y$10$9aNxw3nLNWbTR02DUjOT0.T0OPoHFcyjyY5pnMW3hS53eTJbymISy', 'user', '2023-10-18 04:44:24'),
(14, 'Akash more', 'akash@gmail.com', '$2y$10$KeaLoYQHm.wnvnFxPPAF7ODa8rMO6E9EfV/jCCY0A2aEj.gbwYZYC', 'user', '2023-10-18 04:44:49'),
(15, 'Ganesh Gaikwad', 'ganesh@gmail.com', '$2y$10$N5WAULkIRjy1/FhEQhTG0OrGXv88eKo54h4qyGTyDkgpKtzMSCeIm', 'user', '2023-10-18 04:45:15'),
(16, 'Sagar Chavan', 'sagar@gmail.com', '$2y$10$rRsnHn5IlPjQSngub6A0huCvy24i7h55d90TUXdIz/eVFL3V.twYu', 'user', '2023-10-18 04:52:49'),
(17, 'Sahil Bhedate', 'sahil@gmail.com', '$2y$10$9liu2taujdyzJJXQFoX.lewax0zOpK21E3whdd1Uz36rvKx1PDKB6', 'user', '2023-10-18 04:53:11'),
(18, 'roshan patkar', 'roshan@gmail.com', '$2y$10$ZeZRZ8UU6pyxwunvBAm7du8CvA25D8x/3jdALPsqc6nDZ9AaldXEe', 'user', '2023-10-18 04:53:58'),
(19, 'Mayra gadekar', 'mayra@gmail.com', '$2y$10$ewYWvwGpX6p9ji11MRkeiOoLvNCng9WonC/7pEQgnBcQpUtlFH.0W', 'user', '2023-10-18 04:55:28'),
(20, 'Sana ', 'sana@gmail.com', '$2y$10$16CBNk.cr5bYU2iemlyute1yjDgIkSUjGq3wNh5NU1dQnWnc7YJlm', 'user', '2023-10-18 04:55:58'),
(21, 'Ovi Jadhav', 'ovi@gmail.com', '$2y$10$Myn.cIWuga1DEea7nrgkne0rTX2lxyrccGYWg4PWR5kAkpd6m6YH2', 'user', '2023-10-18 04:56:25'),
(22, 'Riya kachare', 'riya@gmail.com', '$2y$10$7vPg95S3H5hVrTVYsfmylewhMX9r.RXK3SPtyygzVFwrR2bv8LZTi', 'user', '2023-10-18 04:56:55'),
(23, 'Gopini desai', 'gopini@gmail.com', '$2y$10$.49DAMDy1RRtZJOja2FdMuV.LpKkcwo.4QGuIj8Da3tRTS8jAPiOi', 'user', '2023-10-18 04:57:24'),
(24, 'Adi Shinde', 'adi@gmail.com', '$2y$10$OfBYiMaYFipM8iFBpw6jwuBDOZh7r3y/RYsGgFAVxSDUp58.C7C9y', 'user', '2023-10-18 04:57:51'),
(25, 'Pratik Surya', 'pratik@gmail.com', '$2y$10$7.5MvzF3ZVZ4mpMedZb.ke32wTpE0aFlLN.7NZoZvUd.ozwAzTNJ2', 'user', '2023-10-18 04:58:14'),
(26, 'Kartik Obeja', 'kartik@gmail.com', '$2y$10$K80Mwtoq/Vr1L.geykK9deEMXscAtsAHPuhMrwov7q2FYfVKKq0rC', 'user', '2023-10-18 04:58:38'),
(27, 'Tanmay Bhatt', 'tanmay@gmail.com', '$2y$10$MTo/XtOqVz/Xl2skZSTz7OyReH/2p14RsDbuzMnmQwbdcZrFRP8.m', 'user', '2023-10-18 04:58:58'),
(28, 'Akshay Doubt', 'akshay@gmail.com', '$2y$10$vI2aKSvAUxlRdLQ4Tp2KtucfnkFiydOxN6BVOOaxFaIYahFqhbWwC', 'user', '2023-10-18 04:59:34'),
(29, 'Ritwik Das', 'ritwik@gmail.com', '$2y$10$wk2p2YQGetcPWg2FDW5tzeZjbqiDUFN8EL98UyhbNMozvSrOtwYIm', 'user', '2023-10-18 05:00:03'),
(30, 'Veena Taare', 'veena@gmail.com', '$2y$10$KZTtZwOpbpo1yH/YFLVDKu2w6IFCuUywa910U.yjWcAAycBHiIRE6', 'user', '2023-10-18 05:01:12'),
(31, 'Bhavesh Dmart', 'bhavesh@gmail.com', '$2y$10$qzD2akIj8ax/96fd9fC.zua2ayYn3YJYIpHA1berEQDDMDIrpdDMe', 'user', '2023-10-18 05:02:08'),
(32, 'Kadambari Patel', 'k@gmail.com', '$2y$10$UAZBpclwScXJLapU7KSXXOrorqjaPfQKiXgTxB5yoat8Z0wEls1J2', 'user', '2023-10-18 05:15:07');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(11) UNSIGNED NOT NULL,
  `flat_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `person_to_meet` varchar(255) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `in_datetime` datetime DEFAULT NULL,
  `out_remark` text DEFAULT NULL,
  `out_datetime` datetime DEFAULT NULL,
  `is_in_out` enum('in','out') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allotments`
--
ALTER TABLE `allotments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flat_id` (`flat_id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flat_id` (`flat_id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flat_id` (`flat_id`);

--
-- Indexes for table `flats`
--
ALTER TABLE `flats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flat_id` (`flat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allotments`
--
ALTER TABLE `allotments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `flats`
--
ALTER TABLE `flats`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `allotments`
--
ALTER TABLE `allotments`
  ADD CONSTRAINT `allotments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `allotments_ibfk_2` FOREIGN KEY (`flat_id`) REFERENCES `flats` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`flat_id`) REFERENCES `flats` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `complaints`
--
ALTER TABLE `complaints`
  ADD CONSTRAINT `complaints_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `complaints_ibfk_2` FOREIGN KEY (`flat_id`) REFERENCES `flats` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `visitors`
--
ALTER TABLE `visitors`
  ADD CONSTRAINT `visitors_ibfk_1` FOREIGN KEY (`flat_id`) REFERENCES `flats` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;