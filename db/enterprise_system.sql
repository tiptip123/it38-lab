-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2025 at 08:54 AM
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
-- Database: `enterprise_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_ID_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `attendance_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `login_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `login_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_logs`
--

INSERT INTO `login_logs` (`login_id`, `user_id`, `login_time`) VALUES
(1, 1, '2025-02-10 22:23:16'),
(2, 2, '2025-02-10 22:24:06'),
(3, 1, '2025-02-10 22:25:28'),
(4, 1, '2025-02-10 22:28:52'),
(5, 6, '2025-02-03 15:42:45'),
(6, 6, '2025-02-03 15:47:10'),
(7, 6, '2025-02-03 15:48:05'),
(8, 7, '2025-02-03 15:50:31'),
(9, 6, '2025-02-10 15:15:59'),
(10, 1, '2025-03-10 14:53:43'),
(11, 1, '2025-03-10 15:10:25'),
(12, 3, '2025-03-10 15:11:26'),
(13, 3, '2025-03-10 15:12:40'),
(14, 3, '2025-03-10 15:23:56'),
(15, 3, '2025-03-10 15:37:47'),
(16, 3, '2025-03-10 15:38:45'),
(17, 3, '2025-03-10 15:39:38'),
(18, 3, '2025-03-10 15:41:20'),
(19, 3, '2025-03-10 15:45:33'),
(20, 3, '2025-03-10 15:47:47'),
(21, 3, '2025-03-10 15:49:29'),
(22, 3, '2025-03-10 15:50:49'),
(23, 3, '2025-03-10 15:53:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` enum('admin','user') NOT NULL DEFAULT 'user',
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `user_type`, `last_login`, `created_at`) VALUES
(1, 'admin', '$2y$10$CQIwhgeWPPQULdNxYC2F0.do.9YaLA4ukKdXsM8HXttaxMBd5Zu.O', 'admin', '2025-03-10 15:10:25', '2025-02-10 14:23:05'),
(2, 'tiptip', '$2y$10$sadnmpAX4b.K3iujn77luOMtR3bDACSAUlVYvcoE/XWaZbmTFH0vC', 'user', '2025-02-10 22:24:06', '2025-02-10 14:23:58'),
(3, 'tipot', '$2y$10$JA9MwHXPm9le2nVOlAGQmuhuypTrHoNAdRw31J1/gTf4aC9BvApxC', 'user', '2025-03-10 15:53:30', '2025-03-10 07:11:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_ID_id`);

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_ID_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
