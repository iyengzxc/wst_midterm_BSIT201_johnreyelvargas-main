-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2023 at 04:34 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatroom`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `Id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `message` varchar(100) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`Id`, `account_id`, `message`, `timestamp`) VALUES
(1, 1, 'hello', '2023-05-16 19:10:11'),
(2, 1, 'kamusta kana?', '2023-05-16 19:10:54'),
(3, 1, 'asdasd', '2023-05-16 20:07:08'),
(4, 1, 'asdasdssd', '2023-05-16 20:08:00'),
(5, 1, 'asd', '2023-05-16 20:11:14'),
(6, 2, 'asd', '2023-05-16 20:11:25'),
(7, 2, 'asd', '2023-05-16 20:11:58'),
(8, 1, 'asdasdasd', '2023-05-16 20:13:13'),
(9, 2, 'hello', '2023-05-16 20:20:22'),
(10, 1, 'hi', '2023-05-16 20:26:20'),
(11, 1, 'asd', '2023-05-16 20:36:15'),
(12, 1, 'asd', '2023-05-16 20:37:04'),
(13, 1, 'hi', '2023-05-16 20:39:36'),
(14, 1, 'asd', '2023-05-16 20:40:44'),
(15, 2, 'asdasd', '2023-05-16 20:44:11'),
(16, 2, 'hi', '2023-05-16 21:10:34'),
(17, 1, 'kamusta ka', '2023-05-16 21:10:42'),
(18, 1, 'lodicakes', '2023-05-16 21:10:47'),
(19, 1, 'asd', '2023-05-16 21:10:55'),
(20, 2, 'kamusta ka', '2023-05-16 21:11:28'),
(21, 1, 'eto oks lang', '2023-05-16 21:11:36'),
(22, 1, 'hi', '2023-05-16 21:13:59'),
(23, 1, 'paanoi to mag susunod sunod', '2023-05-16 21:15:31'),
(24, 1, 'asdasd', '2023-05-16 21:19:36'),
(25, 1, 'asdasd', '2023-05-16 21:22:04'),
(26, 2, 'asd', '2023-05-16 21:22:07'),
(27, 1, 'asd', '2023-05-16 21:23:51'),
(28, 1, 'asd', '2023-05-16 21:25:22'),
(29, 1, 'hahaha', '2023-05-16 21:29:08'),
(30, 2, 'edi wow', '2023-05-16 21:29:15'),
(31, 1, 'nagawa din AHAHAH', '2023-05-16 21:30:34'),
(32, 2, 'galing mo e', '2023-05-16 21:30:41'),
(33, 1, 'hello', '2023-05-16 21:32:52'),
(34, 1, 'tawa ka muna', '2023-05-16 21:33:42'),
(35, 2, 'yoko nga ', '2023-05-16 21:33:55'),
(36, 1, 'asdasdasd', '2023-05-17 09:54:37'),
(37, 2, 'asdasd', '2023-05-17 09:55:30'),
(38, 1, 'ASas', '2023-05-17 09:55:35'),
(39, 2, 'ASasasdasd', '2023-05-17 09:55:55'),
(40, 1, 'asdasdsad', '2023-05-17 09:56:01'),
(41, 1, 'ASasASASDASD', '2023-05-17 10:47:55'),
(42, 1, 'asdasd', '2023-05-17 11:42:45'),
(43, 1, 'asdasd', '2023-05-17 11:43:59'),
(44, 1, 'asdsdad', '2023-05-17 11:47:41'),
(45, 1, 'asdasd', '2023-05-17 11:50:52'),
(46, 1, 'asdasd', '2023-05-17 11:58:14'),
(47, 1, 'asdasd', '2023-05-17 12:02:47'),
(48, 1, 'asdasdasdadasd', '2023-05-17 12:09:38'),
(49, 1, 'asdasdasd', '2023-05-17 12:16:22'),
(50, 1, 'asdasd', '2023-05-17 12:39:57'),
(51, 1, 'asdasdasdasda', '2023-05-17 12:40:01'),
(52, 1, 'asdasd', '2023-05-17 12:52:00'),
(53, 1, 'asdasd', '2023-05-17 13:00:34'),
(54, 2, 'asdasd', '2023-05-17 13:20:33'),
(55, 2, 'hi', '2023-05-17 13:20:48'),
(56, 1, 'asdasd', '2023-05-17 13:51:03'),
(57, 1, 'asdasdasdad', '2023-05-17 14:55:00'),
(58, 1, 'HAHAHA', '2023-05-18 02:10:06'),
(59, 2, 'wla ako magawa', '2023-05-18 02:11:14'),
(60, 2, 'hirap ako sa registration form', '2023-05-18 02:11:26'),
(61, 2, 'asdasdad', '2023-05-18 02:26:38'),
(62, 2, 'paano na to', '2023-05-18 02:27:30'),
(63, 1, 'di ko na din alam e', '2023-05-18 02:27:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `account_id` (`account_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
