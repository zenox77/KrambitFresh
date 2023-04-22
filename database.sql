-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.27-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.4.0.6659
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for nopixel
CREATE DATABASE IF NOT EXISTS `nopixel` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `nopixel`;

-- Dumping structure for table nopixel.adminlogs
CREATE TABLE IF NOT EXISTS `adminlogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PlayerName` varchar(50) NOT NULL,
  `PlayerHex` varchar(100) NOT NULL,
  `Module` varchar(100) NOT NULL,
  `Title` text NOT NULL,
  `MetaData` text DEFAULT NULL,
  `DTInserted` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=456 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nopixel.adminlogs: ~29 rows (approximately)
INSERT INTO `adminlogs` (`id`, `PlayerName`, `PlayerHex`, `Module`, `Title`, `MetaData`, `DTInserted`) VALUES
	(2, '', 'steam:1100001200daeaa', 'Bennys', 'Repair', '{"amount":"43"}', '2023-04-19 08:31:45'),
	(3, '', 'steam:1100001200daeaa', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 08:32:00'),
	(4, '', 'steam:1100001200daeaa', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 08:32:02'),
	(5, '', 'steam:1100001200daeaa', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 08:32:07'),
	(6, '', 'steam:1100001200daeaa', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 08:32:09'),
	(7, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"15000","type":"turbo"}', '2023-04-19 08:32:10'),
	(8, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 08:32:16'),
	(9, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 08:32:19'),
	(10, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 08:32:26'),
	(11, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 08:45:17'),
	(12, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 08:45:23'),
	(13, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 08:45:30'),
	(14, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 08:45:40'),
	(15, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 08:45:53'),
	(16, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 08:45:59'),
	(17, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 08:46:09'),
	(18, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 08:46:13'),
	(19, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 08:46:23'),
	(20, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 08:46:28'),
	(21, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 08:46:31'),
	(22, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 08:46:37'),
	(23, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 08:46:40'),
	(24, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 08:46:47'),
	(25, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 08:46:52'),
	(26, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 08:46:54'),
	(27, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 08:47:10'),
	(28, '', 'steam:11000010a428d0b', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 08:51:04'),
	(29, '', 'steam:11000010a428d0b', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 08:52:00'),
	(30, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 11:49:09'),
	(31, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 11:57:23'),
	(32, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 11:57:26'),
	(33, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 11:57:31'),
	(34, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"turbo","amount":"15000"}', '2023-04-19 11:57:40'),
	(35, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"wheels","amount":"400"}', '2023-04-19 11:57:55'),
	(36, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"oldlivery","amount":"100"}', '2023-04-19 11:57:59'),
	(37, '', 'steam:11000010a428d0b', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:02:29'),
	(38, '', 'steam:11000010a428d0b', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:02:32'),
	(39, '', 'steam:11000010a428d0b', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:02:33'),
	(40, '', 'steam:11000010a428d0b', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:02:34'),
	(41, '', 'steam:11000010a428d0b', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:02:36'),
	(42, '', 'steam:11000010a428d0b', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:02:43'),
	(43, '', 'steam:11000010a428d0b', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:02:45'),
	(44, '', 'steam:11000010a428d0b', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:02:46'),
	(45, '', 'steam:11000010a428d0b', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:02:48'),
	(46, '', 'steam:11000010a428d0b', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:02:50'),
	(47, '', 'steam:11000010a428d0b', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:02:55'),
	(48, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"windowtint","amount":"400"}', '2023-04-19 12:03:06'),
	(49, '', 'steam:11000010a428d0b', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:03:09'),
	(50, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"plateindex","amount":"1000"}', '2023-04-19 12:03:24'),
	(51, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2023-04-19 12:18:45'),
	(52, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:25:45'),
	(53, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:25:49'),
	(54, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:25:56'),
	(55, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:26:00'),
	(56, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:26:05'),
	(57, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:26:09'),
	(58, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:26:14'),
	(59, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:26:17'),
	(60, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:26:20'),
	(61, '', 'steam:1100001200daeaa', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 12:26:29'),
	(62, '', 'steam:1100001200daeaa', 'Bennys', 'Performance', '{"amount":"0"}', '2023-04-19 12:26:30'),
	(63, '', 'steam:1100001200daeaa', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 12:26:31'),
	(64, '', 'steam:1100001200daeaa', 'Bennys', 'Performance', '{"amount":"0"}', '2023-04-19 12:26:32'),
	(65, '', 'steam:1100001200daeaa', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 12:26:33'),
	(66, '', 'steam:1100001200daeaa', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 12:26:35'),
	(67, '', 'steam:1100001200daeaa', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 12:26:38'),
	(68, '', 'steam:1100001200daeaa', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 12:26:39'),
	(69, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"turbo","amount":"15000"}', '2023-04-19 12:26:41'),
	(70, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2023-04-19 12:26:49'),
	(71, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2023-04-19 12:26:59'),
	(72, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:27:08'),
	(73, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"wheels","amount":"400"}', '2023-04-19 12:27:54'),
	(74, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"windowtint","amount":"400"}', '2023-04-19 12:29:43'),
	(75, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2023-04-19 12:29:57'),
	(76, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2023-04-19 12:30:07'),
	(77, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2023-04-19 12:30:18'),
	(78, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2023-04-19 12:31:27'),
	(79, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:32:48'),
	(80, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2023-04-19 12:32:55'),
	(81, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:37:27'),
	(82, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:37:33'),
	(83, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:37:38'),
	(84, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:38:01'),
	(85, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:38:12'),
	(86, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:38:19'),
	(87, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:38:26'),
	(88, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:38:33'),
	(89, '', 'steam:110000109cdee63', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 12:38:39'),
	(90, '', 'steam:110000109cdee63', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 12:38:40'),
	(91, '', 'steam:110000109cdee63', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 12:38:42'),
	(92, '', 'steam:110000109cdee63', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 12:38:44'),
	(93, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"turbo","amount":"15000"}', '2023-04-19 12:38:46'),
	(94, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"windowtint","amount":"400"}', '2023-04-19 12:38:57'),
	(95, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"type":"windowtint","amount":"400"}', '2023-04-19 12:53:38'),
	(96, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 12:53:42'),
	(97, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 12:53:44'),
	(98, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 12:53:46'),
	(99, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 12:53:48'),
	(100, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"type":"turbo","amount":"15000"}', '2023-04-19 12:53:50'),
	(101, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-19 12:53:53'),
	(102, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"type":"windowtint","amount":"400"}', '2023-04-19 13:00:54'),
	(103, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"type":"plateindex","amount":"1000"}', '2023-04-19 13:01:00'),
	(104, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"type":"turbo","amount":"15000"}', '2023-04-19 13:01:08'),
	(105, '', 'steam:11000010a428d0b', 'Bennys', 'Repair', '{"amount":"8"}', '2023-04-19 13:58:04'),
	(106, '', 'steam:11000010a428d0b', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 13:58:18'),
	(107, '', 'steam:11000010a428d0b', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 13:58:23'),
	(108, '', 'steam:11000010a428d0b', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 13:58:26'),
	(109, '', 'steam:11000010a428d0b', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 13:58:29'),
	(110, '', 'steam:11000010a428d0b', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 13:58:34'),
	(111, '', 'steam:11000010a428d0b', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 13:58:35'),
	(112, '', 'steam:11000010a428d0b', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 13:58:37'),
	(113, '', 'steam:11000010a428d0b', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 13:58:39'),
	(114, '', 'steam:11000010a428d0b', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 13:58:46'),
	(115, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 14:14:42'),
	(116, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 14:14:54'),
	(117, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 14:15:10'),
	(118, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 14:15:16'),
	(119, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"15000","type":"turbo"}', '2023-04-19 14:15:22'),
	(120, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"windowtint"}', '2023-04-19 14:15:37'),
	(121, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"wheels"}', '2023-04-19 14:16:14'),
	(122, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"1000","type":"plateindex"}', '2023-04-19 14:16:23'),
	(123, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 14:25:15'),
	(124, '', 'steam:110000109c8bc79', 'Weapons', 'Create Throwable Cash', '{"amount":1}', '2023-04-19 14:30:40'),
	(125, '', 'steam:110000109c8bc79', 'Weapons', 'Create Throwable Cash', '{"amount":1}', '2023-04-19 14:30:48'),
	(126, '', 'steam:110000109c8bc79', 'Weapons', 'Create Throwable Cash', '{"amount":1}', '2023-04-19 14:30:49'),
	(127, '', 'steam:110000109c8bc79', 'Weapons', 'Create Throwable Cash', '{"amount":1}', '2023-04-19 14:30:50'),
	(128, '', 'steam:110000109c8bc79', 'Weapons', 'Get thrown money', '{"victim":"1","victimName":"you"}', '2023-04-19 14:30:56'),
	(129, '', 'steam:110000109c8bc79', 'Weapons', 'Get thrown money', '{"victim":"4","victimName":"HEEPZTER"}', '2023-04-19 14:31:01'),
	(130, '', 'steam:110000109c8bc79', 'Weapons', 'Get thrown money', '{"victim":"4","victimName":"HEEPZTER"}', '2023-04-19 14:31:08'),
	(131, '', 'steam:110000109cdee63', 'Weapons', 'Create Throwable Cash', '{"amount":100000}', '2023-04-19 14:31:11'),
	(132, '', 'steam:11000010a428d0b', 'Weapons', 'Create Throwable Cash', '{"amount":1}', '2023-04-19 14:31:12'),
	(133, '', 'steam:110000109c8bc79', 'Weapons', 'Create Throwable Cash', '{"amount":1}', '2023-04-19 14:31:15'),
	(134, '', 'steam:110000109cdee63', 'Weapons', 'Get thrown money', '{"victim":"5","victimName":"me"}', '2023-04-19 14:31:18'),
	(135, '', 'steam:110000109c8bc79', 'Weapons', 'Get thrown money', '{"victim":"4","victimName":"HEEPZTER"}', '2023-04-19 14:31:22'),
	(136, '', 'steam:110000109cdee63', 'Weapons', 'Create Throwable Cash', '{"amount":100000}', '2023-04-19 14:31:30'),
	(137, '', 'steam:110000109c8bc79', 'Weapons', 'Create Throwable Cash', '{"amount":100}', '2023-04-19 14:31:31'),
	(138, '', 'steam:110000109c8bc79', 'Weapons', 'Get thrown money', '{"victim":"4","victimName":"HEEPZTER"}', '2023-04-19 14:31:41'),
	(139, '', 'steam:110000109c8bc79', 'Weapons', 'Create Throwable Cash', '{"amount":100}', '2023-04-19 14:32:11'),
	(140, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 14:32:22'),
	(141, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 14:32:26'),
	(142, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 14:32:27'),
	(143, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 14:32:30'),
	(144, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 14:32:33'),
	(145, '', 'steam:11000010df02b0f', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 14:47:17'),
	(146, '', 'steam:11000010df02b0f', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 14:47:22'),
	(147, '', 'steam:11000010df02b0f', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 14:47:25'),
	(148, '', 'steam:11000010df02b0f', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 14:47:28'),
	(149, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"15000","type":"turbo"}', '2023-04-19 14:47:31'),
	(150, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 14:47:46'),
	(151, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 14:47:47'),
	(152, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 14:47:49'),
	(153, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 14:47:54'),
	(154, '', 'steam:1100001200daeaa', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 14:48:02'),
	(155, '', 'steam:1100001200daeaa', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 14:48:03'),
	(156, '', 'steam:1100001200daeaa', 'Bennys', 'Performance', '{"amount":"0"}', '2023-04-19 14:48:04'),
	(157, '', 'steam:1100001200daeaa', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 14:48:06'),
	(158, '', 'steam:1100001200daeaa', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 14:48:07'),
	(159, '', 'steam:1100001200daeaa', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 14:48:09'),
	(160, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"15000","type":"turbo"}', '2023-04-19 14:48:13'),
	(161, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2023-04-19 14:48:33'),
	(162, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"1000","type":"plateindex"}', '2023-04-19 14:52:50'),
	(163, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 14:57:50'),
	(164, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 14:58:05'),
	(165, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 14:58:08'),
	(166, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 14:58:10'),
	(167, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 14:58:11'),
	(168, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"1000","type":"plateindex"}', '2023-04-19 14:58:14'),
	(169, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2023-04-19 14:58:18'),
	(170, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"wheels"}', '2023-04-19 14:58:32'),
	(171, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2023-04-19 14:58:37'),
	(172, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"100","type":"headlights"}', '2023-04-19 14:58:37'),
	(173, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"500","type":"xenoncolours"}', '2023-04-19 14:58:44'),
	(174, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2023-04-19 14:58:45'),
	(175, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"400","type":"wheels"}', '2023-04-19 14:59:03'),
	(176, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 14:59:23'),
	(177, '', 'steam:110000109cdee63', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 14:59:27'),
	(178, '', 'steam:110000109cdee63', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 14:59:28'),
	(179, '', 'steam:110000109cdee63', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 14:59:30'),
	(180, '', 'steam:110000109cdee63', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 14:59:31'),
	(181, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"15000","type":"turbo"}', '2023-04-19 14:59:33'),
	(182, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"windowtint"}', '2023-04-19 14:59:37'),
	(183, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"wheels"}', '2023-04-19 14:59:47'),
	(184, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"1000","type":"plateindex"}', '2023-04-19 14:59:54'),
	(185, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"15000","type":"turbo"}', '2023-04-19 14:59:59'),
	(186, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2023-04-19 15:27:07'),
	(187, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"wheels"}', '2023-04-19 15:29:18'),
	(188, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"wheels"}', '2023-04-19 15:35:09'),
	(189, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"wheels"}', '2023-04-19 15:35:44'),
	(190, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2023-04-19 15:36:05'),
	(191, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"wheels"}', '2023-04-19 15:36:36'),
	(192, '', 'steam:1100001029a4487', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 15:48:15'),
	(193, '', 'steam:1100001029a4487', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 15:48:26'),
	(194, '', 'steam:1100001029a4487', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 15:48:32'),
	(195, '', 'steam:1100001029a4487', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 15:48:36'),
	(196, '', 'steam:1100001029a4487', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 15:48:40'),
	(197, '', 'steam:1100001029a4487', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 15:49:02'),
	(198, '', 'steam:1100001029a4487', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 15:49:06'),
	(199, '', 'steam:1100001029a4487', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 15:49:09'),
	(200, '', 'steam:1100001029a4487', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 15:49:11'),
	(201, '', 'steam:1100001029a4487', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 15:49:15'),
	(202, '', 'steam:1100001029a4487', 'Bennys', 'Other', '{"amount":"15000","type":"turbo"}', '2023-04-19 15:49:23'),
	(203, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 15:51:53'),
	(204, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 15:51:59'),
	(205, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 15:52:01'),
	(206, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 15:52:06'),
	(207, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 15:52:11'),
	(208, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 15:52:18'),
	(209, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 15:52:20'),
	(210, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 15:52:36'),
	(211, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 15:52:47'),
	(212, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 15:52:49'),
	(213, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 15:52:53'),
	(214, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 15:53:03'),
	(215, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 15:53:23'),
	(216, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"15000","type":"turbo"}', '2023-04-19 15:53:29'),
	(217, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2023-04-19 15:53:39'),
	(218, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"windowtint"}', '2023-04-19 15:53:51'),
	(219, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"100","type":"headlights"}', '2023-04-19 15:53:54'),
	(220, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"500","type":"xenoncolours"}', '2023-04-19 15:54:00'),
	(221, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"wheels"}', '2023-04-19 15:54:07'),
	(222, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"1000","type":"plateindex"}', '2023-04-19 15:54:12'),
	(223, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 15:58:51'),
	(224, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2023-04-19 15:58:58'),
	(225, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2023-04-19 15:59:04'),
	(226, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"400","type":"windowtint"}', '2023-04-19 15:59:26'),
	(227, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"500","type":"xenoncolours"}', '2023-04-19 16:03:40'),
	(228, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 16:04:40'),
	(229, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 16:04:42'),
	(230, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 16:04:43'),
	(231, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 16:04:44'),
	(232, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"400","type":"wheels"}', '2023-04-19 16:12:25'),
	(233, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"400","type":"wheels"}', '2023-04-19 16:12:59'),
	(234, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"600","type":"customwheels"}', '2023-04-19 16:13:02'),
	(235, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"600","type":"customwheels"}', '2023-04-19 16:13:35'),
	(236, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"400","type":"wheels"}', '2023-04-19 16:15:18'),
	(237, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"400","type":"wheels"}', '2023-04-19 16:16:28'),
	(238, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 16:27:05'),
	(239, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 16:27:10'),
	(240, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 16:27:15'),
	(241, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 16:27:24'),
	(242, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 16:27:34'),
	(243, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 16:27:43'),
	(244, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 16:27:48'),
	(245, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 16:27:52'),
	(246, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 16:27:55'),
	(247, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 16:28:10'),
	(248, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"15000","type":"turbo"}', '2023-04-19 16:28:35'),
	(249, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"100","type":"neonside"}', '2023-04-19 16:29:08'),
	(250, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"100","type":"neonside"}', '2023-04-19 16:29:11'),
	(251, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"100","type":"neonside"}', '2023-04-19 16:29:14'),
	(252, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"100","type":"neonside"}', '2023-04-19 16:29:17'),
	(253, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"500","type":"neoncolours"}', '2023-04-19 16:29:21'),
	(254, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"500","type":"xenoncolours"}', '2023-04-19 16:29:36'),
	(255, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"500","type":"xenoncolours"}', '2023-04-19 16:29:40'),
	(256, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"100","type":"headlights"}', '2023-04-19 16:29:43'),
	(257, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"wheels"}', '2023-04-19 16:29:59'),
	(258, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"1000","type":"plateindex"}', '2023-04-19 16:30:18'),
	(259, '', 'steam:11000010a428d0b', 'Bennys', 'Repair', '{"amount":"9"}', '2023-04-19 16:32:36'),
	(260, '', 'steam:11000010df02b0f', 'Bennys', 'Repair', '{"amount":"56"}', '2023-04-19 16:48:15'),
	(261, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 17:45:40'),
	(262, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 17:45:45'),
	(263, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 17:45:48'),
	(264, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 17:45:55'),
	(265, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 17:46:13'),
	(266, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 17:46:23'),
	(267, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 17:46:31'),
	(268, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 17:46:36'),
	(269, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 17:46:42'),
	(270, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 17:46:54'),
	(271, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 17:47:03'),
	(272, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 17:47:13'),
	(273, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 17:47:22'),
	(274, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 17:47:26'),
	(275, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 17:47:36'),
	(276, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 17:47:41'),
	(277, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 17:47:51'),
	(278, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"windowtint"}', '2023-04-19 17:48:02'),
	(279, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 18:32:41'),
	(280, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 18:32:46'),
	(281, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-19 18:32:58'),
	(282, '', 'steam:11000010df02b0f', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 20:17:10'),
	(283, '', 'steam:11000010df02b0f', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 20:17:16'),
	(284, '', 'steam:11000010df02b0f', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 20:17:19'),
	(285, '', 'steam:11000010df02b0f', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-19 20:17:22'),
	(286, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"400","type":"wheels"}', '2023-04-20 11:44:33'),
	(287, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2023-04-20 11:45:00'),
	(288, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-20 11:45:08'),
	(289, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2023-04-20 11:45:41'),
	(290, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"400","type":"windowtint"}', '2023-04-20 11:46:20'),
	(291, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2023-04-20 11:49:50'),
	(292, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2023-04-20 11:50:28'),
	(293, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2023-04-20 12:40:55'),
	(294, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-20 13:00:58'),
	(295, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-20 13:01:02'),
	(296, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-20 13:01:03'),
	(297, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-20 13:01:04'),
	(298, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"15000","type":"turbo"}', '2023-04-20 13:01:06'),
	(299, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2023-04-20 13:01:20'),
	(300, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2023-04-20 13:01:24'),
	(301, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"400","type":"wheels"}', '2023-04-20 13:02:29'),
	(302, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2023-04-20 13:02:50'),
	(303, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2023-04-20 13:03:05'),
	(304, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2023-04-20 13:03:24'),
	(305, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"1000","type":"plateindex"}', '2023-04-20 13:03:45'),
	(306, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"100","type":"headlights"}', '2023-04-20 13:04:30'),
	(307, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"500","type":"xenoncolours"}', '2023-04-20 13:04:35'),
	(308, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-20 13:15:40'),
	(309, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"15000","type":"turbo"}', '2023-04-20 13:16:01'),
	(310, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2023-04-20 13:16:13'),
	(311, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2023-04-20 13:17:07'),
	(312, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2023-04-20 13:17:18'),
	(313, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2023-04-20 13:17:23'),
	(314, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"windowtint"}', '2023-04-20 13:17:30'),
	(315, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"wheels"}', '2023-04-20 13:17:44'),
	(316, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"1000","type":"plateindex"}', '2023-04-20 13:17:49'),
	(317, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 13:49:06'),
	(318, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-20 13:49:09'),
	(319, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-20 13:49:10'),
	(320, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-20 13:49:11'),
	(321, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-20 13:49:13'),
	(322, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2023-04-20 13:49:23'),
	(323, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2023-04-20 13:49:31'),
	(324, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2023-04-20 13:49:36'),
	(325, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"type":"windowtint","amount":"400"}', '2023-04-20 13:49:49'),
	(326, '', 'steam:11000010a428d0b', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 13:55:27'),
	(327, '', 'steam:11000010a428d0b', 'Bennys', 'Other', '{"type":"turbo","amount":"15000"}', '2023-04-20 13:58:29'),
	(328, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 13:58:49'),
	(329, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2023-04-20 13:59:06'),
	(330, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2023-04-20 13:59:31'),
	(331, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"wheels","amount":"400"}', '2023-04-20 14:00:46'),
	(332, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:01:27'),
	(333, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:01:33'),
	(334, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:01:52'),
	(335, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-20 14:01:58'),
	(336, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:01:58'),
	(337, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-20 14:02:00'),
	(338, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"0"}', '2023-04-20 14:02:00'),
	(339, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-20 14:02:02'),
	(340, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:02:04'),
	(341, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-20 14:02:05'),
	(342, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-20 14:02:07'),
	(343, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:02:12'),
	(344, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:02:15'),
	(345, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2023-04-20 14:02:22'),
	(346, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:02:48'),
	(347, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:04:41'),
	(348, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:04:48'),
	(349, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:04:52'),
	(350, '', 'steam:11000010a428d0b', 'Spikes', 'Add Spikes', '{"pos":"[{\\"x\\":1337.9937744140626,\\"y\\":-562.8372802734375,\\"z\\":73.95230102539063},{\\"x\\":1334.6806640625,\\"y\\":-563.9654541015625,\\"z\\":73.96721649169922},{\\"x\\":1331.367431640625,\\"y\\":-565.0936889648438,\\"z\\":73.98213195800781}]","heading":"108.80492401123047"}', '2023-04-20 14:04:59'),
	(351, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:05:03'),
	(352, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:05:07'),
	(353, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:05:10'),
	(354, '', 'steam:11000010a428d0b', 'Spikes', 'Add Spikes', '{"pos":"[{\\"x\\":1337.096923828125,\\"y\\":-561.4703369140625,\\"z\\":73.9211196899414},{\\"x\\":1335.92236328125,\\"y\\":-558.17333984375,\\"z\\":73.93604278564453},{\\"x\\":1334.747802734375,\\"y\\":-554.8763427734375,\\"z\\":73.95097351074219}]","heading":"19.60956382751465"}', '2023-04-20 14:05:10'),
	(355, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:05:13'),
	(356, '', 'steam:1100001200daeaa', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-20 14:05:19'),
	(357, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"wheels","amount":"400"}', '2023-04-20 14:05:34'),
	(358, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2023-04-20 14:06:36'),
	(359, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2023-04-20 14:09:05'),
	(360, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:11:06'),
	(361, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:11:15'),
	(362, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:11:20'),
	(363, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:11:22'),
	(364, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:11:28'),
	(365, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:11:33'),
	(366, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"turbo","amount":"15000"}', '2023-04-20 14:11:38'),
	(367, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2023-04-20 14:11:50'),
	(368, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"headlights","amount":"100"}', '2023-04-20 14:11:57'),
	(369, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"xenoncolours","amount":"500"}', '2023-04-20 14:11:59'),
	(370, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"wheels","amount":"400"}', '2023-04-20 14:12:13'),
	(371, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"plateindex","amount":"1000"}', '2023-04-20 14:12:30'),
	(372, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:13:15'),
	(373, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:13:18'),
	(374, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:13:19'),
	(375, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:13:20'),
	(376, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:13:22'),
	(377, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:13:23'),
	(378, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:13:27'),
	(379, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:13:30'),
	(380, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:13:33'),
	(381, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:13:35'),
	(382, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:13:36'),
	(383, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:13:40'),
	(384, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:13:50'),
	(385, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:13:51'),
	(386, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:13:52'),
	(387, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:13:53'),
	(388, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:13:54'),
	(389, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:13:56'),
	(390, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:14:01'),
	(391, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:14:06'),
	(392, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:14:10'),
	(393, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2023-04-20 14:14:16'),
	(394, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2023-04-20 14:14:25'),
	(395, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"wheels","amount":"400"}', '2023-04-20 14:14:29'),
	(396, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"wheels","amount":"400"}', '2023-04-20 14:14:47'),
	(397, '', 'steam:1100001200daeaa', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-20 14:15:01'),
	(398, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"type":"windowtint","amount":"400"}', '2023-04-20 14:15:44'),
	(399, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:16:29'),
	(400, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:16:41'),
	(401, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2023-04-20 14:16:53'),
	(402, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2023-04-20 14:16:54'),
	(403, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"type":"plateindex","amount":"1000"}', '2023-04-20 14:17:47'),
	(404, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:27:35'),
	(405, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2023-04-20 14:28:18'),
	(406, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-20 14:28:50'),
	(407, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-20 14:28:52'),
	(408, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-20 14:28:53'),
	(409, '', 'steam:110000109c8bc79', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-20 14:28:55'),
	(410, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2023-04-20 14:29:03'),
	(411, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"type":"windowtint","amount":"400"}', '2023-04-20 14:29:22'),
	(412, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"type":"wheels","amount":"400"}', '2023-04-20 14:29:44'),
	(413, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-20 15:55:48'),
	(414, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-20 15:55:51'),
	(415, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-20 15:55:55'),
	(416, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"15000","type":"turbo"}', '2023-04-20 15:55:56'),
	(417, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"100","type":"neonside"}', '2023-04-20 15:56:10'),
	(418, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"100","type":"neonside"}', '2023-04-20 15:56:13'),
	(419, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"100","type":"neonside"}', '2023-04-20 15:56:16'),
	(420, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"500","type":"neoncolours"}', '2023-04-20 15:56:21'),
	(421, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-20 15:56:21'),
	(422, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-20 15:56:25'),
	(423, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"100","type":"neonside"}', '2023-04-20 15:56:28'),
	(424, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-20 15:56:35'),
	(425, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"100","type":"headlights"}', '2023-04-20 15:56:36'),
	(426, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"500","type":"xenoncolours"}', '2023-04-20 15:56:43'),
	(427, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-20 15:56:43'),
	(428, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-20 15:58:05'),
	(429, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"15000","type":"turbo"}', '2023-04-20 15:58:13'),
	(430, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"windowtint"}', '2023-04-20 15:58:25'),
	(431, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"100","type":"headlights"}', '2023-04-20 15:58:28'),
	(432, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"500","type":"xenoncolours"}', '2023-04-20 15:58:31'),
	(433, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"400","type":"wheels"}', '2023-04-20 15:58:48'),
	(434, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"1000","type":"plateindex"}', '2023-04-20 15:58:54'),
	(435, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-20 16:01:31'),
	(436, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-20 16:10:02'),
	(437, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"15000","type":"turbo"}', '2023-04-20 16:10:21'),
	(438, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"100","type":"headlights"}', '2023-04-20 16:10:26'),
	(439, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"15000","type":"turbo"}', '2023-04-20 16:10:56'),
	(440, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-20 16:15:50'),
	(441, '', 'steam:1100001200daeaa', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-20 16:15:54'),
	(442, '', 'steam:1100001200daeaa', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-20 16:15:58'),
	(443, '', 'steam:1100001200daeaa', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-20 16:15:59'),
	(444, '', 'steam:1100001200daeaa', 'Bennys', 'Performance', '{"amount":"10450"}', '2023-04-20 16:16:01'),
	(445, '', 'steam:1100001200daeaa', 'Bennys', 'Other', '{"amount":"15000","type":"turbo"}', '2023-04-20 16:16:02'),
	(446, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"15000","type":"turbo"}', '2023-04-20 16:23:05'),
	(447, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-20 16:23:48'),
	(448, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-20 16:23:57'),
	(449, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-20 16:24:00'),
	(450, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-20 16:24:05'),
	(451, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2023-04-20 16:24:08'),
	(452, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"400","type":"wheels"}', '2023-04-20 16:24:33'),
	(453, '', 'steam:11000010df02b0f', 'Bennys', 'Other', '{"amount":"15000","type":"turbo"}', '2023-04-20 16:29:54'),
	(454, '', 'steam:110000109c8bc79', 'Bennys', 'Other', '{"amount":"15000","type":"turbo"}', '2023-04-20 16:30:11'),
	(455, '', 'steam:110000109cdee63', 'Bennys', 'Other', '{"amount":"15000","type":"turbo"}', '2023-04-20 16:30:13');

-- Dumping structure for table nopixel.bank_transactions
CREATE TABLE IF NOT EXISTS `bank_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(40) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `target` varchar(50) NOT NULL,
  `label` varchar(255) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL,
  `iden` varchar(50) NOT NULL DEFAULT '',
  `type` varchar(50) NOT NULL DEFAULT 'income',
  `date` varchar(50) DEFAULT NULL,
  `business_id` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.bank_transactions: ~13 rows (approximately)
INSERT INTO `bank_transactions` (`id`, `identifier`, `sender`, `target`, `label`, `amount`, `iden`, `type`, `date`, `business_id`, `transaction_id`) VALUES
	(45, '0', 'Tommy Warren', 'Tommy Warren', 'yo mum', 12121, 'DEPOSIT', 'pos', '2023-04-19T16:05:48', 'mandem', '1bf86f7b-26b3-4331-ba82-9a1ebd4029d2'),
	(46, '0', 'Tommy Warren', 'Tommy Warren', 'yo mum', 12121, 'DEPOSIT', 'pos', '2023-04-19T16:05:49', 'mandem', '89104609-5a99-4993-9018-a3295b7d2165'),
	(47, '0', 'Tommy Warren', 'Tommy Warren', 'yo mum', 1233, 'DEPOSIT', 'pos', '2023-04-19T16:05:57', 'mandem', '9aa5a2d2-7a7f-4e2d-ac3b-40a50d62363b'),
	(48, '0', 'burgershot', 'Tommy Warren', 'yo mom', 1406, 'PURCHASE', 'pos', 'Wed Apr 19 04:32:36 2023', 'burger_shot', '2d7fb523-6fe8-4d23-a0e3-ddf7bb3b39f3'),
	(49, '48', 'Tommy Warren', 'burgershot', 'yo mom', 1406, 'PURCHASE', 'neg', 'Wed Apr 19 04:32:36 2023', NULL, '2d7fb523-6fe8-4d23-a0e3-ddf7bb3b39f3'),
	(50, '51', 'Mike Hock', 'Mike Hock', '', 100000, 'WITHDRAW', 'neg', '2023-04-19T20:07:48', NULL, 'a0bf43c5-9075-4585-8caa-12c59862bd73'),
	(51, '51', 'Mike Hock', 'Mike Hock', 'ASDASDASDASDADSA', 1000000, 'WITHDRAW', 'neg', '2023-04-19T20:08:14', NULL, '10af0596-4ae5-4c41-bee5-2f530272c9b3'),
	(52, '51', 'Mike Hock', 'Tommy Warren', 'ASDDSAD', 1000000, 'TRANSFER', 'neg', '2023-04-19T20:08:26', NULL, '3c240334-ed3d-4522-bcc5-1ed7593af27b'),
	(53, '48', 'Mike Hock', 'Tommy Warren', 'ASDDSAD', 1000000, 'TRANSFER', 'pos', '2023-04-19T20:08:26', NULL, '3c240334-ed3d-4522-bcc5-1ed7593af27b'),
	(54, '0', 'Premium Deluxe Autos', 'Mike Hock', 'Purchase made by Mike Hock', 1150, 'PURCHASE', 'pos', 'Wed Apr 19 08:10:40 2023', 'pdm', '770f5952-f6fe-4c4e-b30d-f973cd5c1b01'),
	(55, '51', 'Mike Hock', 'Premium Deluxe Autos', 'Thanks for your order at Premium Deluxe Autos', 1150, 'PURCHASE', 'neg', 'Wed Apr 19 08:10:40 2023', NULL, '770f5952-f6fe-4c4e-b30d-f973cd5c1b01'),
	(56, '54', 'Moe Wu', 'Moe Wu', '', 1, 'WITHDRAW', 'neg', '2023-04-19T22:53:28', NULL, '56c2f6a3-0a1a-4405-aee6-e99156fe5593'),
	(57, '54', 'Moe Wu', 'Moe Wu', '', 24999, 'WITHDRAW', 'neg', '2023-04-19T22:53:46', NULL, '842e3fc2-8c8c-4574-908d-7dd8359d1239'),
	(58, '0', 'burgershot', 'Mike Hock', 'dog', 1150000, 'PURCHASE', 'pos', 'Wed Apr 19 12:54:29 2023', 'burger_shot', '8a724292-d3dc-4cc6-977f-2ccc47e53f02'),
	(59, '51', 'Mike Hock', 'burgershot', 'dog', 1150000, 'PURCHASE', 'neg', 'Wed Apr 19 12:54:29 2023', NULL, '8a724292-d3dc-4cc6-977f-2ccc47e53f02'),
	(60, '51', 'Mike Hock', 'burgershot', '', 115, 'PURCHASE', 'neg', 'Wed Apr 19 12:56:28 2023', NULL, '6c9fa9cd-e326-4c7e-bb72-6c6f35ee023e'),
	(61, '0', 'burgershot', 'Mike Hock', '', 115, 'PURCHASE', 'pos', 'Wed Apr 19 12:56:28 2023', 'burger_shot', '6c9fa9cd-e326-4c7e-bb72-6c6f35ee023e'),
	(62, '55', 'Tommy Oliver', 'Tommy Oliver', '', 10000000, 'WITHDRAW', 'neg', '2023-04-20T05:51:10', NULL, '23f2e1ab-d8f0-4619-a9bf-11d5f0658254'),
	(63, '56', 'Phuc Ka', 'Phuc Ka', '', 10000000, 'DEPOSIT', 'pos', '2023-04-21T01:33:22', NULL, '591fc115-b9cb-4877-b3c0-8b649b36a83c'),
	(64, '54', 'Moe Wu', 'Moe Wu', '', 99999999, 'DEPOSIT', 'pos', '2023-04-21T01:35:19', NULL, '965cabff-bc01-4164-9e12-ee9d9bf837cf'),
	(65, '0', 'Police', 'Tommy Oliver', 'Purchase made by Tommy Oliver', 2300, 'PURCHASE', 'pos', 'Thu Apr 20 14:02:11 2023', 'police', '0d5ca223-6c38-4853-8a0a-4ee693425192'),
	(66, '55', 'Tommy Oliver', 'Police', 'Thanks for your order at Police', 2300, 'PURCHASE', 'neg', 'Thu Apr 20 14:02:11 2023', NULL, '0d5ca223-6c38-4853-8a0a-4ee693425192');

-- Dumping structure for table nopixel.banlisthistory
CREATE TABLE IF NOT EXISTS `banlisthistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(50) DEFAULT NULL,
  `identifier` varchar(25) DEFAULT NULL,
  `liveid` varchar(21) DEFAULT NULL,
  `xblid` varchar(21) DEFAULT NULL,
  `discord` varchar(30) DEFAULT NULL,
  `playerip` varchar(25) DEFAULT NULL,
  `targetplayername` varchar(32) DEFAULT NULL,
  `sourceplayername` varchar(32) DEFAULT NULL,
  `reason` varchar(255) NOT NULL,
  `timeat` int(11) NOT NULL,
  `added` varchar(40) NOT NULL,
  `expiration` int(11) NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table nopixel.banlisthistory: ~0 rows (approximately)

-- Dumping structure for table nopixel.bans
CREATE TABLE IF NOT EXISTS `bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expire` int(11) NOT NULL DEFAULT 0,
  `banid` varchar(50) NOT NULL DEFAULT '0',
  `steam` varchar(50) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '0',
  `license` varchar(50) NOT NULL DEFAULT '0',
  `license2` varchar(50) NOT NULL DEFAULT '0',
  `reason` varchar(50) NOT NULL DEFAULT '0',
  `bannedby` varchar(50) NOT NULL DEFAULT '0',
  `xbox` varchar(50) NOT NULL DEFAULT '0',
  `live` varchar(50) NOT NULL DEFAULT '0',
  `discord` varchar(50) NOT NULL DEFAULT '0',
  `cfx` varchar(50) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '0',
  `token` varchar(50) NOT NULL DEFAULT '0',
  `bannedon` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.bans: ~0 rows (approximately)

-- Dumping structure for table nopixel.boosting
CREATE TABLE IF NOT EXISTS `boosting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `vehicle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `expires` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `units` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `ExtraVin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `coords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.boosting: ~19 rows (approximately)
INSERT INTO `boosting` (`id`, `identifier`, `vehicle`, `type`, `owner`, `expires`, `units`, `ExtraVin`, `coords`) VALUES
	(62, '55', 'panto', 'D', 'Nopixel', '19202', '5', '100', '{"y":-3195.090087890625,"x":757.0399780273438,"z":5.65000009536743}'),
	(63, '48', 'issi2', 'D', 'Nopixel', '19183', '5', '100', '{"y":-1559.969970703125,"x":1000.72998046875,"z":30.34000015258789}'),
	(64, '48', 'blista', 'D', 'Nopixel', '15873', '5', '100', '{"y":-1559.969970703125,"x":1000.72998046875,"z":30.34000015258789}'),
	(65, '55', 'issi2', 'D', 'Nopixel', '19147', '5', '100', '{"y":-658.2069702148438,"x":-1219.7900390625,"z":40.35762023925781}'),
	(66, '55', 'rhapsody', 'D', 'Nopixel', '17051', '5', '100', '{"y":-228.1179656982422,"x":974.4304809570313,"z":69.77107238769531}'),
	(67, '55', 'panto', 'D', 'Nopixel', '18908', '5', '100', '{"y":-2360.89990234375,"x":845.47998046875,"z":29.92000007629394}'),
	(68, '55', 'blista', 'D', 'Nopixel', '15718', '5', '100', '{"y":-1513.1199951171876,"x":952.8200073242188,"z":30.68000030517578}'),
	(69, '48', 'blista', 'D', 'Nopixel', '12908', '5', '100', '{"y":356.5299987792969,"x":-753.77001953125,"z":87.44000244140625}'),
	(70, '48', 'panto', 'D', 'Nopixel', '16525', '5', '100', '{"y":88.37262725830078,"x":80.01072692871094,"z":78.57487487792969}'),
	(71, '48', 'issi2', 'D', 'Nopixel', '17550', '5', '100', '{"y":-3059.199951171875,"x":253.19000244140626,"z":5.3600001335144}'),
	(72, '48', 'issi2', 'D', 'Nopixel', '17680', '5', '100', '{"y":-3116.4599609375,"x":1204.27001953125,"z":5.11999988555908}'),
	(73, '48', 'rhapsody', 'D', 'Nopixel', '15479', '5', '100', '{"y":83.47309875488281,"x":-69.75252532958985,"z":71.50944519042969}'),
	(74, '48', 'rhapsody', 'D', 'Nopixel', '15817', '5', '100', '{"y":88.37262725830078,"x":80.01072692871094,"z":78.57487487792969}'),
	(75, '48', 'panto', 'D', 'Nopixel', '17773', '5', '100', '{"y":-228.1179656982422,"x":974.4304809570313,"z":69.77107238769531}'),
	(76, '48', 'blista', 'D', 'Nopixel', '14766', '5', '100', '{"y":-1559.969970703125,"x":1000.72998046875,"z":30.34000015258789}'),
	(77, '48', 'rhapsody', 'D', 'Nopixel', '16723', '5', '100', '{"y":-1559.969970703125,"x":1000.72998046875,"z":30.34000015258789}'),
	(78, '48', 'blista', 'D', 'Nopixel', '15255', '5', '100', '{"y":-1513.1199951171876,"x":952.8200073242188,"z":30.68000030517578}'),
	(79, '48', 'issi2', 'D', 'Nopixel', '19621', '5', '100', '{"y":6588.66943359375,"x":10.32895946502685,"z":32.46984100341797}'),
	(80, '48', 'panto', 'D', 'Nopixel', '19137', '5', '100', '{"y":-2360.89990234375,"x":845.47998046875,"z":29.92000007629394}'),
	(81, '48', 'neon', 'A', 'Nopixel', '12035', '85', '100', '{"y":88.37262725830078,"z":78.57487487792969,"x":80.01072692871094}'),
	(82, '48', 'turismo2', 'S', 'Nopixel', '12720', '150', '100', '{"y":-1496.56005859375,"z":29.65999984741211,"x":942.02001953125}'),
	(83, '48', 'stingergt', 'S', 'Nopixel', '13726', '150', '100', '{"y":6588.66943359375,"z":32.46984100341797,"x":10.32895946502685}'),
	(84, '48', 'warrener', 'B', 'Nopixel', '13588', '35', '100', '{"y":-1559.969970703125,"z":30.34000015258789,"x":1000.72998046875}'),
	(85, '48', 'ztype', 'S', 'Nopixel', '15538', '150', '100', '{"y":-1496.56005859375,"z":29.65999984741211,"x":942.02001953125}'),
	(86, '48', 'elegy2', 'A', 'Nopixel', '16378', '85', '100', '{"y":-3195.090087890625,"z":5.65000009536743,"x":757.0399780273438}'),
	(87, '48', 'fusilade', 'A', 'Nopixel', '14055', '85', '100', '{"y":-1559.969970703125,"z":30.34000015258789,"x":1000.72998046875}'),
	(88, '48', 'neon', 'A', 'Nopixel', '14443', '85', '100', '{"y":-2684.300048828125,"z":5.63999986648559,"x":344.1300048828125}'),
	(89, '48', 'zorrusso', 'S+', 'Nopixel', '18528', '250', '100', '{"y":356.5299987792969,"z":87.44000244140625,"x":-753.77001953125}'),
	(90, '48', 'stanier', 'B', 'Nopixel', '14522', '35', '100', '{"y":-3116.4599609375,"z":5.11999988555908,"x":1204.27001953125}'),
	(91, '48', 'fusilade', 'A', 'Nopixel', '15218', '85', '100', '{"y":-228.1179656982422,"z":69.77107238769531,"x":974.4304809570313}'),
	(92, '48', 'jester', 'A', 'Nopixel', '16656', '85', '100', '{"y":-193.8946075439453,"z":37.28368759155273,"x":-775.9652709960938}'),
	(93, '48', 'turismor', 'S+', 'Nopixel', '17945', '250', '100', '{"y":83.47309875488281,"z":71.50944519042969,"x":-69.75252532958985}'),
	(94, '48', 'fusilade', 'A', 'Nopixel', '15974', '85', '100', '{"y":-2524.97998046875,"z":27.8799991607666,"x":1015.0800170898438}'),
	(95, '48', 'fusilade', 'A', 'Nopixel', '12440', '85', '100', '{"x":819.72998046875,"z":23.23999977111816,"y":-2403.300048828125}'),
	(96, '48', 'torero', 'S', 'Nopixel', '11274', '150', '100', '{"x":1000.72998046875,"z":30.34000015258789,"y":-1559.969970703125}'),
	(97, '48', 'stingergt', 'S', 'Nopixel', '10379', '150', '100', '{"x":344.1300048828125,"z":5.63999986648559,"y":-2684.300048828125}'),
	(98, '48', 'warrener', 'B', 'Nopixel', '10584', '35', '100', '{"x":845.47998046875,"z":29.92000007629394,"y":-2360.89990234375}'),
	(99, '48', 'warrener', 'B', 'Nopixel', '10927', '35', '100', '{"x":757.0399780273438,"z":5.65000009536743,"y":-3195.090087890625}'),
	(100, '48', 'premier', 'B', 'Nopixel', '11118', '35', '100', '{"x":-1662.4200439453126,"z":44.41999816894531,"y":-384.55999755859377}'),
	(101, '48', 'neon', 'A', 'Nopixel', '14972', '85', '100', '{"x":-775.9652709960938,"z":37.28368759155273,"y":-193.8946075439453}'),
	(102, '48', 'neon', 'A', 'Nopixel', '15369', '85', '100', '{"x":974.4304809570313,"z":69.77107238769531,"y":-228.1179656982422}'),
	(103, '48', 'fusilade', 'A', 'Nopixel', '15077', '85', '100', '{"x":1075.72998046875,"z":29.8700008392334,"y":-2323.89990234375}'),
	(104, '48', 'elegy2', 'A', 'Nopixel', '14889', '85', '100', '{"x":-775.9652709960938,"z":37.28368759155273,"y":-193.8946075439453}');

-- Dumping structure for table nopixel.boosting_gne
CREATE TABLE IF NOT EXISTS `boosting_gne` (
  `gne` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.boosting_gne: ~1 rows (approximately)
INSERT INTO `boosting_gne` (`gne`) VALUES
	('1111');

-- Dumping structure for table nopixel.boosting_users
CREATE TABLE IF NOT EXISTS `boosting_users` (
  `identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `gne` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `cooldown` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.boosting_users: ~3 rows (approximately)
INSERT INTO `boosting_users` (`identifier`, `level`, `gne`, `cooldown`) VALUES
	('55', '800', '975', NULL),
	('48', '800', '1005', NULL),
	('54', '800', '0', NULL);

-- Dumping structure for table nopixel.boost_queue
CREATE TABLE IF NOT EXISTS `boost_queue` (
  `identifier` varchar(60) NOT NULL,
  `pSrc` int(11) DEFAULT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nopixel.boost_queue: ~0 rows (approximately)

-- Dumping structure for table nopixel.bulletclub_leaderboard
CREATE TABLE IF NOT EXISTS `bulletclub_leaderboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `difficulty` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `score` int(255) DEFAULT NULL,
  `cid` int(255) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.bulletclub_leaderboard: ~0 rows (approximately)

-- Dumping structure for table nopixel.businesses
CREATE TABLE IF NOT EXISTS `businesses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business_id` varchar(255) NOT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `employees` longtext DEFAULT NULL,
  `roles` longtext DEFAULT NULL,
  `bank` int(255) DEFAULT 0,
  `bank_id` int(8) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.businesses: ~34 rows (approximately)
INSERT INTO `businesses` (`id`, `business_id`, `business_name`, `employees`, `roles`, `bank`, `bank_id`) VALUES
	(4, 'tuner_shop', 'Tuner Shop', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 3913, 19379317),
	(5, 'hayes_autos', 'Hayes Autos', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 68304454),
	(6, 'harmony_repairs', 'Harmony Repairs', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"48","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 182, 93626194),
	(7, 'ottos_autos', 'Ottos Autos', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 82826893),
	(8, 'uwu_cafe', 'Uwu Cafe', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 2578, 20562480),
	(9, 'pdm', 'Premium Deluxe Autos', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"48","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 83318, 23167245),
	(10, 'jacksons_autos', 'Jacksons Autos', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 128340, 85397904),
	(11, 'maldinis', 'Maldinis', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 2080, 10392069),
	(12, 'gallery', 'Art Gallery', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"55","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 3110, 54021356),
	(13, 'white_widow', 'White Widow', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 6939634),
	(17, 'burger_shot', 'burgershot', '[{"rank":5,"role":"Owner","cid":"19"},{"rank":5,"role":"Owner","cid":"16"},{"rank":5,"role":"Owner","cid":"48"},{"rank":0,"role":"Employee","cid":"51"},{"rank":0,"role":"Employee","cid":"50"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 1150121, 35350753),
	(18, 'winery', 'winery', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 34735735),
	(19, 'rooster', 'Rooster', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 458678645),
	(20, 'fastlane', 'Fastlane', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 21474836),
	(21, 'state', 'state', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 45453453),
	(22, 'police', 'Police', '[{"rank":5,"role":"Owner","cid":"19"},{"rank":5,"role":"Owner","cid":"20"},{"rank":5,"role":"Owner","cid":"51"},{"rank":0,"role":"Chief Of Police","cid":"48"},{"rank":0,"role":"Solo Cadet","cid":"56"}]', '[{"can_hire":true,"key_access":true,"can_fire":true,"role_manage":true,"bank_access":true,"role_create":true,"name":"Owner","stash_access":true,"craft_access":true,"charge_access":true,"logs_access":true},{"charge_access":false,"key_access":true,"can_fire":false,"role_manage":false,"bank_access":false,"role_create":false,"name":"Employee","stash_access":true,"craft_access":true,"can_hire":false},{"charge_access":true,"key_access":true,"craft_access":true,"role_manage":true,"bank_access":true,"role_create":false,"name":"Chief Of Police","can_fire":true,"can_hire":true,"stash_access":true,"logs_access":true},{"charge_access":false,"key_access":true,"craft_access":false,"role_manage":false,"bank_access":false,"role_create":false,"name":"Cadet","can_fire":false,"stash_access":true,"can_hire":false,"logs_access":false},{"charge_access":false,"key_access":true,"craft_access":false,"role_manage":false,"bank_access":false,"role_create":false,"name":"Solo Cadet","can_fire":false,"can_hire":false,"stash_access":true,"logs_access":false}]', 2300, 7831234),
	(23, 'red_circle', 'Red Circle', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 4534893),
	(24, 'cosmic_cannabis', 'Cosmic Cannabis', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 6969420),
	(25, 'casino', 'Casino', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 45637986),
	(26, 'bennys', 'Bennys', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 68786786),
	(27, 'car_shop', 'Car Shop', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 97856454),
	(28, 'hydra_incorporation', 'Hydra Inc', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 4586786),
	(29, 'doc', 'Doctor', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"54","rank":5,"role":"Owner"},{"cid":"56","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 67394545),
	(30, 'warriors_table', 'Warriors Table', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 7984651),
	(31, 'skybar', 'Skybar', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 4253698),
	(32, 'mandem', 'Mandem', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 78789789),
	(33, 'tavern', 'Tavern', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 3365214),
	(34, 'recycle_center', 'Recycle Center', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 45864534),
	(35, 'high_table', 'High Table', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 89673453),
	(36, 'mtf', 'MTF', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 6697984),
	(37, 'ace_industries', 'Ace Industries', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 6697984),
	(38, 'the_diamond', 'thediamond', '[{"cid":"19","role":"Owner","rank":5}]', '[{"name":"Owner","charge_access":true,"bank_access":true,"role_manage":true,"role_create":true,"key_access":true,"stash_access":true,"craft_access":true,"can_hire":true,"can_fire":true},{"name":"Employee","charge_access":false,"bank_access":false,"role_manage":false,"role_create":false,"key_access":true,"stash_access":true,"craft_access":true,"can_hire":false,"can_fire":false}]', 0, 37055546),
	(39, 'JewelDragon', 'Jewel Dragon', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 2095, 68546541),
	(40, 'saints', 'Saints', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 3573573);

-- Dumping structure for table nopixel.characters
CREATE TABLE IF NOT EXISTS `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) NOT NULL DEFAULT 'John',
  `last_name` varchar(50) NOT NULL DEFAULT 'Doe',
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dob` varchar(50) DEFAULT 'NULL',
  `cash` int(9) DEFAULT 500,
  `bank` int(9) NOT NULL DEFAULT 25000,
  `phone_number` varchar(15) DEFAULT NULL,
  `story` text NOT NULL,
  `new` int(1) NOT NULL DEFAULT 1,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `gender` int(1) NOT NULL DEFAULT 0,
  `job` varchar(50) DEFAULT 'unemployed',
  `jail_time` int(11) NOT NULL DEFAULT 0,
  `dirty_money` int(11) NOT NULL DEFAULT 0,
  `gang_type` int(11) NOT NULL DEFAULT 0,
  `jail_time_mobster` int(11) unsigned zerofill NOT NULL DEFAULT 00000000000,
  `judge_type` int(11) NOT NULL DEFAULT 0,
  `iswjob` int(11) NOT NULL DEFAULT 0,
  `metaData` varchar(1520) DEFAULT '{}',
  `stress_level` int(11) DEFAULT 0,
  `bones` mediumtext DEFAULT '{}',
  `emotes` varchar(4160) DEFAULT '{}',
  `paycheck` int(11) DEFAULT 0,
  `stocks` mediumtext DEFAULT NULL,
  `rehab` int(12) DEFAULT 0,
  `meta` text DEFAULT 'move_m@casual@d',
  `dna` text DEFAULT '{}',
  `contacts` longtext DEFAULT NULL,
  `messages` longtext DEFAULT NULL,
  `accounts` longtext DEFAULT NULL,
  `gallery` longtext DEFAULT NULL,
  `wallpaper` longtext DEFAULT NULL,
  `ammo` longtext DEFAULT NULL,
  `licenses` longtext NOT NULL DEFAULT '[{"license":"Weapon","issuedDate":"","issuedBy":"","issued":0},{"license":"Hunting","issuedDate":"","issuedBy":"","issued":0},{"license":"Business","issuedDate":"","issuedBy":"","issued":0},{"license":"Drivers","issuedDate":"","issuedBy":"","issued":1},{"license":"Fishing","issuedDate":"","issuedBy":"","issued":0},{"license":"Bar","issuedDate":"","issuedBy":"","issued":0},{"license":"Pilot","issuedDate":"","issuedBy":"","issued":0}]',
  `Shungite` longtext NOT NULL DEFAULT '0',
  `tgb` longtext NOT NULL DEFAULT '0',
  `dvd` longtext NOT NULL DEFAULT '0',
  `chips` tinytext NOT NULL DEFAULT '0',
  `bank_id` int(8) DEFAULT NULL,
  `profilepic` varchar(255) DEFAULT NULL,
  `information` longtext DEFAULT NULL,
  `alias` longtext DEFAULT NULL,
  `jail` varchar(50) DEFAULT 'new',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.characters: ~9 rows (approximately)
INSERT INTO `characters` (`id`, `owner`, `first_name`, `last_name`, `date_created`, `dob`, `cash`, `bank`, `phone_number`, `story`, `new`, `deleted`, `gender`, `job`, `jail_time`, `dirty_money`, `gang_type`, `jail_time_mobster`, `judge_type`, `iswjob`, `metaData`, `stress_level`, `bones`, `emotes`, `paycheck`, `stocks`, `rehab`, `meta`, `dna`, `contacts`, `messages`, `accounts`, `gallery`, `wallpaper`, `ammo`, `licenses`, `Shungite`, `tgb`, `dvd`, `chips`, `bank_id`, `profilepic`, `information`, `alias`, `jail`) VALUES
	(48, 'steam:110000112a5b10a', 'Tommy', 'Warren', '2023-04-20 20:31:25', '1999-04-20', 108989777, 11830561, '3321838378', 'Default story - new char system', 1, 0, 0, 'unemployed', -2, 0, 0, 00000000000, 0, 0, '{"thirst":0,"health":192,"hunger":0,"armour":0}', 35, '[{"zone":0,"maxhit":false,"timer":0,"hitcount":0,"offset1":0.35,"boneIndex":11816,"part":"Pelvis","applied":false,"injuryType":4,"offset2":0.35},{"zone":4,"maxhit":false,"timer":0,"hitcount":0,"offset1":0.35,"boneIndex":58271,"part":"Left Thigh","applied":false,"injuryType":4,"offset2":0.8},{"zone":1,"maxhit":false,"timer":0,"hitcount":0,"offset1":0.45,"boneIndex":47495,"part":"Mouth","applied":false,"injuryType":1,"offset2":0.35},{"zone":4,"maxhit":true,"timer":0,"hitcount":0,"offset1":0.35,"boneIndex":14201,"part":"Left Foot","applied":false,"injuryType":1,"offset2":0.2},{"zone":4,"maxhit":false,"timer":0,"hitcount":0,"offset1":0.35,"boneIndex":46078,"part":"Left Knee","applied":false,"injuryType":4,"offset2":0.55},{"zone":5,"maxhit":false,"timer":0,"hitcount":0,"offset1":0.35,"boneIndex":51826,"part":"Right Thigh","applied":false,"injuryType":4,"offset2":0.8},{"zone":0,"maxhit":false,"timer":0,"hitcount":0,"offset1":0.25,"boneIndex":24816,"part":"Spine Lower","applied":false,"injuryType":5,"offset2":0.35},{"zone":5,"maxhit":true,"timer":0,"hitcount":0,"offset1":0.35,"boneIndex":52301,"part":"Right Foot","applied":false,"injuryType":1,"offset2":0.2},{"zone":5,"maxhit":false,"timer":0,"hitcount":0,"offset1":0.35,"boneIndex":16335,"part":"Right Knee","applied":false,"injuryType":4,"offset2":0.55},{"zone":0,"maxhit":false,"timer":0,"hitcount":0,"offset1":0.25,"boneIndex":24817,"part":"Spine Mid","applied":false,"injuryType":5,"offset2":0.55},{"zone":2,"maxhit":true,"timer":0,"hitcount":0,"offset1":0.35,"boneIndex":60309,"part":"Left Hand","applied":false,"injuryType":1,"offset2":0.2},{"zone":2,"maxhit":false,"timer":0,"hitcount":0,"offset1":0.35,"boneIndex":22711,"part":"Left Elbow","applied":false,"injuryType":3,"offset2":0.75},{"zone":3,"maxhit":true,"timer":0,"hitcount":0,"offset1":0.35,"boneIndex":57005,"part":"Right Hand","applied":false,"injuryType":1,"offset2":0.2},{"zone":3,"maxhit":false,"timer":0,"hitcount":0,"offset1":0.35,"boneIndex":2992,"part":"Right Elbow","applied":false,"injuryType":3,"offset2":0.75},{"zone":0,"maxhit":false,"timer":0,"hitcount":0,"offset1":0.25,"boneIndex":39317,"part":"Neck","applied":false,"injuryType":5,"offset2":0.95},{"zone":1,"maxhit":false,"timer":0,"hitcount":0,"offset1":0.35,"boneIndex":31086,"part":"Head","applied":false,"injuryType":2,"offset2":0.75},{"zone":0,"maxhit":false,"timer":0,"hitcount":0,"offset1":0.25,"boneIndex":24818,"part":"Spine High","applied":false,"injuryType":5,"offset2":0.85},{"zone":0,"maxhit":false,"timer":0,"hitcount":0,"offset1":0.15,"boneIndex":64729,"part":"Left Clavicle","applied":false,"injuryType":3,"offset2":0.75},{"zone":2,"maxhit":true,"timer":0,"hitcount":0,"offset1":0.35,"boneIndex":26610,"part":"Left Finger Pinky","applied":false,"injuryType":1,"offset2":0.2},{"zone":2,"maxhit":true,"timer":0,"hitcount":0,"offset1":0.35,"boneIndex":26611,"part":"Left Finger Index","applied":false,"injuryType":1,"offset2":0.2},{"zone":2,"maxhit":true,"timer":0,"hitcount":0,"offset1":0.35,"boneIndex":26612,"part":"Left Finger Middle","applied":false,"injuryType":1,"offset2":0.2},{"zone":2,"maxhit":true,"timer":0,"hitcount":0,"offset1":0.35,"boneIndex":26613,"part":"Left Finger Ring","applied":false,"injuryType":1,"offset2":0.2},{"zone":2,"maxhit":true,"timer":0,"hitcount":0,"offset1":0.35,"boneIndex":26614,"part":"Left Finger Thumb","applied":false,"injuryType":1,"offset2":0.2},{"zone":0,"maxhit":false,"timer":0,"hitcount":0,"offset1":0.35,"boneIndex":10706,"part":"Right Clavicle","applied":false,"injuryType":3,"offset2":0.75},{"zone":3,"maxhit":true,"timer":0,"hitcount":0,"offset1":0.35,"boneIndex":58866,"part":"Right Finger Pinky","applied":false,"injuryType":1,"offset2":0.2},{"zone":3,"maxhit":true,"timer":0,"hitcount":0,"offset1":0.35,"boneIndex":58867,"part":"Right Finger Index","applied":false,"injuryType":1,"offset2":0.2},{"zone":3,"maxhit":true,"timer":0,"hitcount":0,"offset1":0.35,"boneIndex":58868,"part":"Right Finger Middle","applied":false,"injuryType":1,"offset2":0.2},{"zone":3,"maxhit":true,"timer":0,"hitcount":0,"offset1":0.35,"boneIndex":58869,"part":"Right Finger Ring","applied":false,"injuryType":1,"offset2":0.2},{"zone":3,"maxhit":true,"timer":0,"hitcount":0,"offset1":0.35,"boneIndex":58870,"part":"Right Finger Thumb","applied":false,"injuryType":1,"offset2":0.2},{"zone":1,"maxhit":false,"timer":0,"hitcount":0,"offset1":0.55,"boneIndex":21550,"part":"Face Left CheekBone","applied":false,"injuryType":1,"offset2":0.45},{"zone":1,"maxhit":false,"timer":0,"hitcount":0,"offset1":0.35,"boneIndex":19336,"part":"Face Right CheekBone","applied":false,"injuryType":1,"offset2":0.45},{"zone":1,"maxhit":false,"timer":0,"hitcount":0,"offset1":0.45,"boneIndex":37193,"part":"Forehead","applied":false,"injuryType":2,"offset2":0.75},{"zone":1,"maxhit":true,"timer":0,"hitcount":0,"offset1":0.45,"boneIndex":61839,"part":"Face UpperLip","applied":false,"injuryType":1,"offset2":0.35},{"zone":1,"maxhit":true,"timer":0,"hitcount":0,"offset1":0.45,"boneIndex":20623,"part":"Face LowerLip","applied":false,"injuryType":1,"offset2":0.35}]', '{}', 11100, NULL, 0, 'move_m@casual@d', '{}', NULL, NULL, NULL, NULL, NULL, NULL, '[{"license":"Weapon","issuedDate":"","issuedBy":"","issued":0},{"license":"Hunting","issuedDate":"","issuedBy":"","issued":0},{"license":"Business","issuedDate":"","issuedBy":"","issued":0},{"license":"Drivers","issuedDate":"","issuedBy":"","issued":1},{"license":"Fishing","issuedDate":"","issuedBy":"","issued":0},{"license":"Bar","issuedDate":"","issuedBy":"","issued":0},{"license":"Pilot","issuedDate":"","issuedBy":"","issued":0}]', '2878', '111', '111', '0', 85575749, NULL, NULL, NULL, 'new'),
	(50, 'steam:1100001200daeaa', 'Lewis', 'Smith', '2023-04-20 20:30:22', '2003-12-20', 1110050173, 2136736703, '8066101074', 'Default story - new char system', 1, 0, 0, 'unemployed', -2, 0, 0, 00000000000, 0, 0, '{"thirst":28,"health":200,"hunger":36,"armour":0}', 42, '[{"applied":false,"maxhit":false,"part":"Pelvis","boneIndex":11816,"injuryType":4,"offset1":0.35,"offset2":0.35,"timer":0,"zone":0,"hitcount":0},{"applied":false,"maxhit":false,"part":"Left Thigh","boneIndex":58271,"injuryType":4,"offset1":0.35,"offset2":0.8,"timer":0,"zone":4,"hitcount":0},{"applied":false,"maxhit":false,"part":"Mouth","boneIndex":47495,"injuryType":1,"offset1":0.45,"offset2":0.35,"timer":0,"zone":1,"hitcount":0},{"applied":false,"maxhit":true,"part":"Left Foot","boneIndex":14201,"injuryType":1,"offset1":0.35,"offset2":0.2,"timer":0,"zone":4,"hitcount":0},{"applied":false,"maxhit":false,"part":"Left Knee","boneIndex":46078,"injuryType":4,"offset1":0.35,"offset2":0.55,"timer":0,"zone":4,"hitcount":0},{"applied":false,"maxhit":false,"part":"Right Thigh","boneIndex":51826,"injuryType":4,"offset1":0.35,"offset2":0.8,"timer":0,"zone":5,"hitcount":0},{"applied":false,"maxhit":false,"part":"Spine Lower","boneIndex":24816,"injuryType":5,"offset1":0.25,"offset2":0.35,"timer":0,"zone":0,"hitcount":0},{"applied":false,"maxhit":true,"part":"Right Foot","boneIndex":52301,"injuryType":1,"offset1":0.35,"offset2":0.2,"timer":0,"zone":5,"hitcount":0},{"applied":false,"maxhit":false,"part":"Right Knee","boneIndex":16335,"injuryType":4,"offset1":0.35,"offset2":0.55,"timer":0,"zone":5,"hitcount":0},{"applied":false,"maxhit":false,"part":"Spine Mid","boneIndex":24817,"injuryType":5,"offset1":0.25,"offset2":0.55,"timer":0,"zone":0,"hitcount":0},{"applied":false,"maxhit":true,"part":"Left Hand","boneIndex":60309,"injuryType":1,"offset1":0.35,"offset2":0.2,"timer":0,"zone":2,"hitcount":0},{"applied":false,"maxhit":false,"part":"Left Elbow","boneIndex":22711,"injuryType":3,"offset1":0.35,"offset2":0.75,"timer":0,"zone":2,"hitcount":0},{"applied":false,"maxhit":true,"part":"Right Hand","boneIndex":57005,"injuryType":1,"offset1":0.35,"offset2":0.2,"timer":0,"zone":3,"hitcount":0},{"applied":false,"maxhit":false,"part":"Right Elbow","boneIndex":2992,"injuryType":3,"offset1":0.35,"offset2":0.75,"timer":0,"zone":3,"hitcount":0},{"applied":false,"maxhit":false,"part":"Neck","boneIndex":39317,"injuryType":5,"offset1":0.25,"offset2":0.95,"timer":0,"zone":0,"hitcount":0},{"applied":false,"maxhit":false,"part":"Head","boneIndex":31086,"injuryType":2,"offset1":0.35,"offset2":0.75,"timer":0,"zone":1,"hitcount":0},{"applied":false,"maxhit":false,"part":"Spine High","boneIndex":24818,"injuryType":5,"offset1":0.25,"offset2":0.85,"timer":0,"zone":0,"hitcount":0},{"applied":false,"maxhit":false,"part":"Left Clavicle","boneIndex":64729,"injuryType":3,"offset1":0.15,"offset2":0.75,"timer":0,"zone":0,"hitcount":0},{"applied":false,"maxhit":true,"part":"Left Finger Pinky","boneIndex":26610,"injuryType":1,"offset1":0.35,"offset2":0.2,"timer":0,"zone":2,"hitcount":0},{"applied":false,"maxhit":true,"part":"Left Finger Index","boneIndex":26611,"injuryType":1,"offset1":0.35,"offset2":0.2,"timer":0,"zone":2,"hitcount":0},{"applied":false,"maxhit":true,"part":"Left Finger Middle","boneIndex":26612,"injuryType":1,"offset1":0.35,"offset2":0.2,"timer":0,"zone":2,"hitcount":0},{"applied":false,"maxhit":true,"part":"Left Finger Ring","boneIndex":26613,"injuryType":1,"offset1":0.35,"offset2":0.2,"timer":0,"zone":2,"hitcount":0},{"applied":false,"maxhit":true,"part":"Left Finger Thumb","boneIndex":26614,"injuryType":1,"offset1":0.35,"offset2":0.2,"timer":0,"zone":2,"hitcount":0},{"applied":false,"maxhit":false,"part":"Right Clavicle","boneIndex":10706,"injuryType":3,"offset1":0.35,"offset2":0.75,"timer":0,"zone":0,"hitcount":0},{"applied":false,"maxhit":true,"part":"Right Finger Pinky","boneIndex":58866,"injuryType":1,"offset1":0.35,"offset2":0.2,"timer":0,"zone":3,"hitcount":0},{"applied":false,"maxhit":true,"part":"Right Finger Index","boneIndex":58867,"injuryType":1,"offset1":0.35,"offset2":0.2,"timer":0,"zone":3,"hitcount":0},{"applied":false,"maxhit":true,"part":"Right Finger Middle","boneIndex":58868,"injuryType":1,"offset1":0.35,"offset2":0.2,"timer":0,"zone":3,"hitcount":0},{"applied":false,"maxhit":true,"part":"Right Finger Ring","boneIndex":58869,"injuryType":1,"offset1":0.35,"offset2":0.2,"timer":0,"zone":3,"hitcount":0},{"applied":false,"maxhit":true,"part":"Right Finger Thumb","boneIndex":58870,"injuryType":1,"offset1":0.35,"offset2":0.2,"timer":0,"zone":3,"hitcount":0},{"applied":false,"maxhit":false,"part":"Face Left CheekBone","boneIndex":21550,"injuryType":1,"offset1":0.55,"offset2":0.45,"timer":0,"zone":1,"hitcount":0},{"applied":false,"maxhit":false,"part":"Face Right CheekBone","boneIndex":19336,"injuryType":1,"offset1":0.35,"offset2":0.45,"timer":0,"zone":1,"hitcount":0},{"applied":false,"maxhit":false,"part":"Forehead","boneIndex":37193,"injuryType":2,"offset1":0.45,"offset2":0.75,"timer":0,"zone":1,"hitcount":0},{"applied":false,"maxhit":true,"part":"Face UpperLip","boneIndex":61839,"injuryType":1,"offset1":0.45,"offset2":0.35,"timer":0,"zone":1,"hitcount":0},{"applied":false,"maxhit":true,"part":"Face LowerLip","boneIndex":20623,"injuryType":1,"offset1":0.45,"offset2":0.35,"timer":0,"zone":1,"hitcount":0}]', '{}', 1200, NULL, 0, '"\\"move_m@alien\\""', '{}', NULL, NULL, NULL, NULL, NULL, NULL, '[{"license":"Weapon","issuedDate":"","issuedBy":"","issued":0},{"license":"Hunting","issuedDate":"","issuedBy":"","issued":0},{"license":"Business","issuedDate":"","issuedBy":"","issued":0},{"license":"Drivers","issuedDate":"","issuedBy":"","issued":1},{"license":"Fishing","issuedDate":"","issuedBy":"","issued":0},{"license":"Bar","issuedDate":"","issuedBy":"","issued":0},{"license":"Pilot","issuedDate":"","issuedBy":"","issued":0}]', '99990', '1111', '0', '0', 55855634, NULL, NULL, NULL, 'new'),
	(51, 'steam:11000010a428d0b', 'Mike', 'Hock', '2023-04-20 19:09:07', '1999-12-30', 9565804, 208342277, '5522155761', 'Default story - new char system', 1, 0, 0, 'unemployed', 0, 0, 0, 00000000000, 0, 0, '{"armour":0,"hunger":0,"health":190,"thirst":0}', 25, '[{"offset2":0.35,"injuryType":4,"offset1":0.35,"timer":0,"boneIndex":11816,"maxhit":false,"applied":false,"part":"Pelvis","zone":0,"hitcount":0},{"offset2":0.8,"injuryType":4,"offset1":0.35,"timer":0,"boneIndex":58271,"maxhit":false,"applied":false,"part":"Left Thigh","zone":4,"hitcount":0},{"offset2":0.35,"injuryType":1,"offset1":0.45,"timer":0,"boneIndex":47495,"maxhit":false,"applied":false,"part":"Mouth","zone":1,"hitcount":0},{"offset2":0.2,"injuryType":1,"offset1":0.35,"timer":0,"boneIndex":14201,"maxhit":true,"applied":false,"part":"Left Foot","zone":4,"hitcount":0},{"offset2":0.55,"injuryType":4,"offset1":0.35,"timer":0,"boneIndex":46078,"maxhit":false,"applied":false,"part":"Left Knee","zone":4,"hitcount":0},{"offset2":0.8,"injuryType":4,"offset1":0.35,"timer":0,"boneIndex":51826,"maxhit":false,"applied":false,"part":"Right Thigh","zone":5,"hitcount":0},{"offset2":0.35,"injuryType":5,"offset1":0.25,"timer":0,"boneIndex":24816,"maxhit":false,"applied":false,"part":"Spine Lower","zone":0,"hitcount":0},{"offset2":0.2,"injuryType":1,"offset1":0.35,"timer":0,"boneIndex":52301,"maxhit":true,"applied":false,"part":"Right Foot","zone":5,"hitcount":0},{"offset2":0.55,"injuryType":4,"offset1":0.35,"timer":0,"boneIndex":16335,"maxhit":false,"applied":false,"part":"Right Knee","zone":5,"hitcount":0},{"offset2":0.55,"injuryType":5,"offset1":0.25,"timer":0,"boneIndex":24817,"maxhit":false,"applied":false,"part":"Spine Mid","zone":0,"hitcount":0},{"offset2":0.2,"injuryType":1,"offset1":0.35,"timer":0,"boneIndex":60309,"maxhit":true,"applied":false,"part":"Left Hand","zone":2,"hitcount":0},{"offset2":0.75,"injuryType":3,"offset1":0.35,"timer":0,"boneIndex":22711,"maxhit":false,"applied":false,"part":"Left Elbow","zone":2,"hitcount":0},{"offset2":0.2,"injuryType":1,"offset1":0.35,"timer":0,"boneIndex":57005,"maxhit":true,"applied":false,"part":"Right Hand","zone":3,"hitcount":0},{"offset2":0.75,"injuryType":3,"offset1":0.35,"timer":0,"boneIndex":2992,"maxhit":false,"applied":false,"part":"Right Elbow","zone":3,"hitcount":0},{"offset2":0.95,"injuryType":5,"offset1":0.25,"timer":0,"boneIndex":39317,"maxhit":false,"applied":false,"part":"Neck","zone":0,"hitcount":0},{"offset2":0.75,"injuryType":2,"offset1":0.35,"timer":0,"boneIndex":31086,"maxhit":false,"applied":false,"part":"Head","zone":1,"hitcount":0},{"offset2":0.85,"injuryType":5,"offset1":0.25,"timer":0,"boneIndex":24818,"maxhit":false,"applied":false,"part":"Spine High","zone":0,"hitcount":0},{"offset2":0.75,"injuryType":3,"offset1":0.15,"timer":0,"boneIndex":64729,"maxhit":false,"applied":false,"part":"Left Clavicle","zone":0,"hitcount":0},{"offset2":0.2,"injuryType":1,"offset1":0.35,"timer":0,"boneIndex":26610,"maxhit":true,"applied":false,"part":"Left Finger Pinky","zone":2,"hitcount":0},{"offset2":0.2,"injuryType":1,"offset1":0.35,"timer":0,"boneIndex":26611,"maxhit":true,"applied":false,"part":"Left Finger Index","zone":2,"hitcount":0},{"offset2":0.2,"injuryType":1,"offset1":0.35,"timer":0,"boneIndex":26612,"maxhit":true,"applied":false,"part":"Left Finger Middle","zone":2,"hitcount":0},{"offset2":0.2,"injuryType":1,"offset1":0.35,"timer":0,"boneIndex":26613,"maxhit":true,"applied":false,"part":"Left Finger Ring","zone":2,"hitcount":0},{"offset2":0.2,"injuryType":1,"offset1":0.35,"timer":0,"boneIndex":26614,"maxhit":true,"applied":false,"part":"Left Finger Thumb","zone":2,"hitcount":0},{"offset2":0.75,"injuryType":3,"offset1":0.35,"timer":0,"boneIndex":10706,"maxhit":false,"applied":false,"part":"Right Clavicle","zone":0,"hitcount":0},{"offset2":0.2,"injuryType":1,"offset1":0.35,"timer":0,"boneIndex":58866,"maxhit":true,"applied":false,"part":"Right Finger Pinky","zone":3,"hitcount":0},{"offset2":0.2,"injuryType":1,"offset1":0.35,"timer":0,"boneIndex":58867,"maxhit":true,"applied":false,"part":"Right Finger Index","zone":3,"hitcount":0},{"offset2":0.2,"injuryType":1,"offset1":0.35,"timer":0,"boneIndex":58868,"maxhit":true,"applied":false,"part":"Right Finger Middle","zone":3,"hitcount":0},{"offset2":0.2,"injuryType":1,"offset1":0.35,"timer":0,"boneIndex":58869,"maxhit":true,"applied":false,"part":"Right Finger Ring","zone":3,"hitcount":0},{"offset2":0.2,"injuryType":1,"offset1":0.35,"timer":0,"boneIndex":58870,"maxhit":true,"applied":false,"part":"Right Finger Thumb","zone":3,"hitcount":0},{"offset2":0.45,"injuryType":1,"offset1":0.55,"timer":0,"boneIndex":21550,"maxhit":false,"applied":false,"part":"Face Left CheekBone","zone":1,"hitcount":0},{"offset2":0.45,"injuryType":1,"offset1":0.35,"timer":0,"boneIndex":19336,"maxhit":false,"applied":false,"part":"Face Right CheekBone","zone":1,"hitcount":0},{"offset2":0.75,"injuryType":2,"offset1":0.45,"timer":0,"boneIndex":37193,"maxhit":false,"applied":false,"part":"Forehead","zone":1,"hitcount":0},{"offset2":0.35,"injuryType":1,"offset1":0.45,"timer":0,"boneIndex":61839,"maxhit":true,"applied":false,"part":"Face UpperLip","zone":1,"hitcount":0},{"offset2":0.35,"injuryType":1,"offset1":0.45,"timer":0,"boneIndex":20623,"maxhit":true,"applied":false,"part":"Face LowerLip","zone":1,"hitcount":0}]', '{}', 8015, NULL, 0, '"default"', '{}', NULL, NULL, NULL, NULL, NULL, NULL, '[{"license":"Weapon","issuedDate":"","issuedBy":"","issued":0},{"license":"Hunting","issuedDate":"","issuedBy":"","issued":0},{"license":"Business","issuedDate":"","issuedBy":"","issued":0},{"license":"Drivers","issuedDate":"","issuedBy":"","issued":1},{"license":"Fishing","issuedDate":"","issuedBy":"","issued":0},{"license":"Bar","issuedDate":"","issuedBy":"","issued":0},{"license":"Pilot","issuedDate":"","issuedBy":"","issued":0}]', '9990', '111', '0', '0', 43312252, NULL, NULL, NULL, 'new'),
	(52, 'steam:11000010bacad64', 'lex', 'lex', '2023-04-20 18:51:47', '2000-01-01', 1110432560, 1110432560, '9152526855', 'Default story - new char system', 1, 0, 0, 'unemployed', 0, 0, 0, 00000000000, 0, 0, '{"armour":0,"hunger":51,"health":200,"thirst":35}', 5, '{}', '{}', 2000, NULL, 0, 'move_m@casual@d', '{}', NULL, NULL, NULL, NULL, NULL, NULL, '[{"license":"Weapon","issuedDate":"","issuedBy":"","issued":0},{"license":"Hunting","issuedDate":"","issuedBy":"","issued":0},{"license":"Business","issuedDate":"","issuedBy":"","issued":0},{"license":"Drivers","issuedDate":"","issuedBy":"","issued":1},{"license":"Fishing","issuedDate":"","issuedBy":"","issued":0},{"license":"Bar","issuedDate":"","issuedBy":"","issued":0},{"license":"Pilot","issuedDate":"","issuedBy":"","issued":0}]', '0', '111', '0', '0', NULL, NULL, NULL, NULL, 'new'),
	(53, 'steam:110000117b2ed6c', 'Daniel', 'Nagger', '2023-04-20 18:04:18', '2000-01-01', 1110429560, 1110432560, '9899597167', 'Default story - new char system', 1, 0, 0, 'unemployed', 0, 0, 0, 00000000000, 0, 0, '{"thirst":82,"health":200,"armour":0,"hunger":82}', 0, '{}', '{}', 400, NULL, 0, 'move_m@casual@d', '{}', NULL, NULL, NULL, NULL, NULL, NULL, '[{"license":"Weapon","issuedDate":"","issuedBy":"","issued":0},{"license":"Hunting","issuedDate":"","issuedBy":"","issued":0},{"license":"Business","issuedDate":"","issuedBy":"","issued":0},{"license":"Drivers","issuedDate":"","issuedBy":"","issued":1},{"license":"Fishing","issuedDate":"","issuedBy":"","issued":0},{"license":"Bar","issuedDate":"","issuedBy":"","issued":0},{"license":"Pilot","issuedDate":"","issuedBy":"","issued":0}]', '0', '122', '0', '0', NULL, NULL, NULL, NULL, 'new'),
	(54, 'steam:110000109c8bc79', 'Moe', 'Wu', '2023-04-20 20:32:32', '2000-01-01', 999545058, 99249999, '8487243652', 'Default story - new char system', 1, 0, 0, 'unemployed', 0, 0, 0, 00000000000, 0, 0, '{"thirst":72,"health":135,"hunger":76,"armour":0}', 0, '{}', '{}', 4025, NULL, 0, '"\\"move_m@casual@a\\""', '{}', NULL, NULL, NULL, NULL, NULL, NULL, '[{"license":"Weapon","issuedDate":"","issuedBy":"","issued":0},{"license":"Hunting","issuedDate":"","issuedBy":"","issued":0},{"license":"Business","issuedDate":"","issuedBy":"","issued":0},{"license":"Drivers","issuedDate":"","issuedBy":"","issued":1},{"license":"Fishing","issuedDate":"","issuedBy":"","issued":0},{"license":"Bar","issuedDate":"","issuedBy":"","issued":0},{"license":"Pilot","issuedDate":"","issuedBy":"","issued":0}]', '0', '0123', '0', '0', 98794653, NULL, NULL, NULL, 'new'),
	(55, 'steam:1100001029a4487', 'Tommy', 'Oliver', '2023-04-20 20:23:06', '1993-12-28', 317930300, 1098929957, '3664855957', 'Default story - new char system', 1, 0, 0, 'unemployed', 0, 0, 0, 00000000000, 0, 0, '{"thirst":37,"health":189,"hunger":42,"armour":0}', 0, '[{"offset2":0.35,"applied":false,"part":"Pelvis","injuryType":4,"hitcount":0,"zone":0,"timer":0,"offset1":0.35,"maxhit":false,"boneIndex":11816},{"offset2":0.8,"applied":false,"part":"Left Thigh","injuryType":4,"hitcount":0,"zone":4,"timer":0,"offset1":0.35,"maxhit":false,"boneIndex":58271},{"offset2":0.35,"applied":false,"part":"Mouth","injuryType":1,"hitcount":0,"zone":1,"timer":0,"offset1":0.45,"maxhit":false,"boneIndex":47495},{"offset2":0.2,"applied":false,"part":"Left Foot","injuryType":1,"hitcount":0,"zone":4,"timer":0,"offset1":0.35,"maxhit":true,"boneIndex":14201},{"offset2":0.55,"applied":false,"part":"Left Knee","injuryType":4,"hitcount":0,"zone":4,"timer":0,"offset1":0.35,"maxhit":false,"boneIndex":46078},{"offset2":0.8,"applied":false,"part":"Right Thigh","injuryType":4,"hitcount":0,"zone":5,"timer":0,"offset1":0.35,"maxhit":false,"boneIndex":51826},{"offset2":0.35,"applied":false,"part":"Spine Lower","injuryType":5,"hitcount":0,"zone":0,"timer":0,"offset1":0.25,"maxhit":false,"boneIndex":24816},{"offset2":0.2,"applied":false,"part":"Right Foot","injuryType":1,"hitcount":0,"zone":5,"timer":0,"offset1":0.35,"maxhit":true,"boneIndex":52301},{"offset2":0.55,"applied":false,"part":"Right Knee","injuryType":4,"hitcount":0,"zone":5,"timer":0,"offset1":0.35,"maxhit":false,"boneIndex":16335},{"offset2":0.55,"applied":false,"part":"Spine Mid","injuryType":5,"hitcount":0,"zone":0,"timer":0,"offset1":0.25,"maxhit":false,"boneIndex":24817},{"offset2":0.2,"applied":false,"part":"Left Hand","injuryType":1,"hitcount":0,"zone":2,"timer":0,"offset1":0.35,"maxhit":true,"boneIndex":60309},{"offset2":0.75,"applied":false,"part":"Left Elbow","injuryType":3,"hitcount":0,"zone":2,"timer":0,"offset1":0.35,"maxhit":false,"boneIndex":22711},{"offset2":0.2,"applied":false,"part":"Right Hand","injuryType":1,"hitcount":0,"zone":3,"timer":0,"offset1":0.35,"maxhit":true,"boneIndex":57005},{"offset2":0.75,"applied":false,"part":"Right Elbow","injuryType":3,"hitcount":0,"zone":3,"timer":0,"offset1":0.35,"maxhit":false,"boneIndex":2992},{"offset2":0.95,"applied":false,"part":"Neck","injuryType":5,"hitcount":0,"zone":0,"timer":0,"offset1":0.25,"maxhit":false,"boneIndex":39317},{"offset2":0.75,"applied":false,"part":"Head","injuryType":2,"hitcount":0,"zone":1,"timer":0,"offset1":0.35,"maxhit":false,"boneIndex":31086},{"offset2":0.85,"applied":false,"part":"Spine High","injuryType":5,"hitcount":0,"zone":0,"timer":0,"offset1":0.25,"maxhit":false,"boneIndex":24818},{"offset2":0.75,"applied":false,"part":"Left Clavicle","injuryType":3,"hitcount":0,"zone":0,"timer":0,"offset1":0.15,"maxhit":false,"boneIndex":64729},{"offset2":0.2,"applied":false,"part":"Left Finger Pinky","injuryType":1,"hitcount":0,"zone":2,"timer":0,"offset1":0.35,"maxhit":true,"boneIndex":26610},{"offset2":0.2,"applied":false,"part":"Left Finger Index","injuryType":1,"hitcount":0,"zone":2,"timer":0,"offset1":0.35,"maxhit":true,"boneIndex":26611},{"offset2":0.2,"applied":false,"part":"Left Finger Middle","injuryType":1,"hitcount":0,"zone":2,"timer":0,"offset1":0.35,"maxhit":true,"boneIndex":26612},{"offset2":0.2,"applied":false,"part":"Left Finger Ring","injuryType":1,"hitcount":0,"zone":2,"timer":0,"offset1":0.35,"maxhit":true,"boneIndex":26613},{"offset2":0.2,"applied":false,"part":"Left Finger Thumb","injuryType":1,"hitcount":0,"zone":2,"timer":0,"offset1":0.35,"maxhit":true,"boneIndex":26614},{"offset2":0.75,"applied":false,"part":"Right Clavicle","injuryType":3,"hitcount":0,"zone":0,"timer":0,"offset1":0.35,"maxhit":false,"boneIndex":10706},{"offset2":0.2,"applied":false,"part":"Right Finger Pinky","injuryType":1,"hitcount":0,"zone":3,"timer":0,"offset1":0.35,"maxhit":true,"boneIndex":58866},{"offset2":0.2,"applied":false,"part":"Right Finger Index","injuryType":1,"hitcount":0,"zone":3,"timer":0,"offset1":0.35,"maxhit":true,"boneIndex":58867},{"offset2":0.2,"applied":false,"part":"Right Finger Middle","injuryType":1,"hitcount":0,"zone":3,"timer":0,"offset1":0.35,"maxhit":true,"boneIndex":58868},{"offset2":0.2,"applied":false,"part":"Right Finger Ring","injuryType":1,"hitcount":0,"zone":3,"timer":0,"offset1":0.35,"maxhit":true,"boneIndex":58869},{"offset2":0.2,"applied":false,"part":"Right Finger Thumb","injuryType":1,"hitcount":0,"zone":3,"timer":0,"offset1":0.35,"maxhit":true,"boneIndex":58870},{"offset2":0.45,"applied":false,"part":"Face Left CheekBone","injuryType":1,"hitcount":0,"zone":1,"timer":0,"offset1":0.55,"maxhit":false,"boneIndex":21550},{"offset2":0.45,"applied":false,"part":"Face Right CheekBone","injuryType":1,"hitcount":0,"zone":1,"timer":0,"offset1":0.35,"maxhit":false,"boneIndex":19336},{"offset2":0.75,"applied":false,"part":"Forehead","injuryType":2,"hitcount":0,"zone":1,"timer":0,"offset1":0.45,"maxhit":false,"boneIndex":37193},{"offset2":0.35,"applied":false,"part":"Face UpperLip","injuryType":1,"hitcount":0,"zone":1,"timer":0,"offset1":0.45,"maxhit":true,"boneIndex":61839},{"offset2":0.35,"applied":false,"part":"Face LowerLip","injuryType":1,"hitcount":0,"zone":1,"timer":0,"offset1":0.45,"maxhit":true,"boneIndex":20623}]', '{}', 7900, NULL, 0, '"\\"move_m@quick\\""', '{}', NULL, NULL, NULL, NULL, NULL, NULL, '[{"license":"Weapon","issuedDate":"","issuedBy":"","issued":0},{"license":"Hunting","issuedDate":"","issuedBy":"","issued":0},{"license":"Business","issuedDate":"","issuedBy":"","issued":0},{"license":"Drivers","issuedDate":"","issuedBy":"","issued":1},{"license":"Fishing","issuedDate":"","issuedBy":"","issued":0},{"license":"Bar","issuedDate":"","issuedBy":"","issued":0},{"license":"Pilot","issuedDate":"","issuedBy":"","issued":0}]', '990', '111', '0', '0', 44262242, 'https://cdn.discordapp.com/attachments/1050887012003094610/1084444308846956574/image0.gif', 'THIS MAN WEIGHS 300KG AT THE VERY LEAST', NULL, 'new'),
	(56, 'steam:110000109cdee63', 'Phuc', 'Ka', '2023-04-20 20:32:13', '2000-01-01', 1889716129, 9273331, '1167297363', 'Default story - new char system', 1, 0, 0, 'unemployed', 0, 0, 0, 00000000000, 0, 0, '{"thirst":0,"health":177,"hunger":0,"armour":0}', 0, '[{"zone":0,"injuryType":4,"applied":false,"hitcount":0,"offset1":0.35,"boneIndex":11816,"part":"Pelvis","timer":0,"maxhit":false,"offset2":0.35},{"zone":4,"injuryType":4,"applied":false,"hitcount":0,"offset1":0.35,"boneIndex":58271,"part":"Left Thigh","timer":0,"maxhit":false,"offset2":0.8},{"zone":1,"injuryType":1,"applied":false,"hitcount":0,"offset1":0.45,"boneIndex":47495,"part":"Mouth","timer":0,"maxhit":false,"offset2":0.35},{"zone":4,"injuryType":1,"applied":false,"hitcount":0,"offset1":0.35,"boneIndex":14201,"part":"Left Foot","timer":0,"maxhit":true,"offset2":0.2},{"zone":4,"injuryType":4,"applied":false,"hitcount":0,"offset1":0.35,"boneIndex":46078,"part":"Left Knee","timer":0,"maxhit":false,"offset2":0.55},{"zone":5,"injuryType":4,"applied":false,"hitcount":0,"offset1":0.35,"boneIndex":51826,"part":"Right Thigh","timer":0,"maxhit":false,"offset2":0.8},{"zone":0,"injuryType":5,"applied":false,"hitcount":0,"offset1":0.25,"boneIndex":24816,"part":"Spine Lower","timer":0,"maxhit":false,"offset2":0.35},{"zone":5,"injuryType":1,"applied":false,"hitcount":0,"offset1":0.35,"boneIndex":52301,"part":"Right Foot","timer":0,"maxhit":true,"offset2":0.2},{"zone":5,"injuryType":4,"applied":false,"hitcount":0,"offset1":0.35,"boneIndex":16335,"part":"Right Knee","timer":0,"maxhit":false,"offset2":0.55},{"zone":0,"injuryType":5,"applied":false,"hitcount":0,"offset1":0.25,"boneIndex":24817,"part":"Spine Mid","timer":0,"maxhit":false,"offset2":0.55},{"zone":2,"injuryType":1,"applied":false,"hitcount":0,"offset1":0.35,"boneIndex":60309,"part":"Left Hand","timer":0,"maxhit":true,"offset2":0.2},{"zone":2,"injuryType":3,"applied":false,"hitcount":0,"offset1":0.35,"boneIndex":22711,"part":"Left Elbow","timer":0,"maxhit":false,"offset2":0.75},{"zone":3,"injuryType":1,"applied":false,"hitcount":0,"offset1":0.35,"boneIndex":57005,"part":"Right Hand","timer":0,"maxhit":true,"offset2":0.2},{"zone":3,"injuryType":3,"applied":false,"hitcount":0,"offset1":0.35,"boneIndex":2992,"part":"Right Elbow","timer":0,"maxhit":false,"offset2":0.75},{"zone":0,"injuryType":5,"applied":false,"hitcount":0,"offset1":0.25,"boneIndex":39317,"part":"Neck","timer":0,"maxhit":false,"offset2":0.95},{"zone":1,"injuryType":2,"applied":false,"hitcount":0,"offset1":0.35,"boneIndex":31086,"part":"Head","timer":0,"maxhit":false,"offset2":0.75},{"zone":0,"injuryType":5,"applied":false,"hitcount":0,"offset1":0.25,"boneIndex":24818,"part":"Spine High","timer":0,"maxhit":false,"offset2":0.85},{"zone":0,"injuryType":3,"applied":false,"hitcount":0,"offset1":0.15,"boneIndex":64729,"part":"Left Clavicle","timer":0,"maxhit":false,"offset2":0.75},{"zone":2,"injuryType":1,"applied":false,"hitcount":0,"offset1":0.35,"boneIndex":26610,"part":"Left Finger Pinky","timer":0,"maxhit":true,"offset2":0.2},{"zone":2,"injuryType":1,"applied":false,"hitcount":0,"offset1":0.35,"boneIndex":26611,"part":"Left Finger Index","timer":0,"maxhit":true,"offset2":0.2},{"zone":2,"injuryType":1,"applied":false,"hitcount":0,"offset1":0.35,"boneIndex":26612,"part":"Left Finger Middle","timer":0,"maxhit":true,"offset2":0.2},{"zone":2,"injuryType":1,"applied":false,"hitcount":0,"offset1":0.35,"boneIndex":26613,"part":"Left Finger Ring","timer":0,"maxhit":true,"offset2":0.2},{"zone":2,"injuryType":1,"applied":false,"hitcount":0,"offset1":0.35,"boneIndex":26614,"part":"Left Finger Thumb","timer":0,"maxhit":true,"offset2":0.2},{"zone":0,"injuryType":3,"applied":false,"hitcount":0,"offset1":0.35,"boneIndex":10706,"part":"Right Clavicle","timer":0,"maxhit":false,"offset2":0.75},{"zone":3,"injuryType":1,"applied":false,"hitcount":0,"offset1":0.35,"boneIndex":58866,"part":"Right Finger Pinky","timer":0,"maxhit":true,"offset2":0.2},{"zone":3,"injuryType":1,"applied":false,"hitcount":0,"offset1":0.35,"boneIndex":58867,"part":"Right Finger Index","timer":0,"maxhit":true,"offset2":0.2},{"zone":3,"injuryType":1,"applied":false,"hitcount":0,"offset1":0.35,"boneIndex":58868,"part":"Right Finger Middle","timer":0,"maxhit":true,"offset2":0.2},{"zone":3,"injuryType":1,"applied":false,"hitcount":0,"offset1":0.35,"boneIndex":58869,"part":"Right Finger Ring","timer":0,"maxhit":true,"offset2":0.2},{"zone":3,"injuryType":1,"applied":false,"hitcount":0,"offset1":0.35,"boneIndex":58870,"part":"Right Finger Thumb","timer":0,"maxhit":true,"offset2":0.2},{"zone":1,"injuryType":1,"applied":false,"hitcount":0,"offset1":0.55,"boneIndex":21550,"part":"Face Left CheekBone","timer":0,"maxhit":false,"offset2":0.45},{"zone":1,"injuryType":1,"applied":false,"hitcount":0,"offset1":0.35,"boneIndex":19336,"part":"Face Right CheekBone","timer":0,"maxhit":false,"offset2":0.45},{"zone":1,"injuryType":2,"applied":false,"hitcount":0,"offset1":0.45,"boneIndex":37193,"part":"Forehead","timer":0,"maxhit":false,"offset2":0.75},{"zone":1,"injuryType":1,"applied":false,"hitcount":0,"offset1":0.45,"boneIndex":61839,"part":"Face UpperLip","timer":0,"maxhit":true,"offset2":0.35},{"zone":1,"injuryType":1,"applied":false,"hitcount":0,"offset1":0.45,"boneIndex":20623,"part":"Face LowerLip","timer":0,"maxhit":true,"offset2":0.35}]', '{}', 8450, NULL, 0, '"\\"move_m@quick\\""', '{}', NULL, NULL, NULL, NULL, NULL, NULL, '[{"license":"Weapon","issuedDate":"","issuedBy":"","issued":0},{"license":"Hunting","issuedDate":"","issuedBy":"","issued":0},{"license":"Business","issuedDate":"","issuedBy":"","issued":0},{"license":"Drivers","issuedDate":"","issuedBy":"","issued":1},{"license":"Fishing","issuedDate":"","issuedBy":"","issued":0},{"license":"Bar","issuedDate":"","issuedBy":"","issued":0},{"license":"Pilot","issuedDate":"","issuedBy":"","issued":0}]', '0', '11', '0', '0', 81785238, NULL, NULL, NULL, 'new'),
	(57, 'steam:11000010df02b0f', 'zoomie', 'a', '2023-04-20 20:29:54', '2000-01-01', 1899930529, 24316, '331115722', 'Default story - new char system', 1, 0, 0, 'unemployed', 0, 0, 0, 00000000000, 0, 0, '{"thirst":4,"health":155,"hunger":2,"armour":0}', 0, '[{"maxhit":false,"offset1":0.35,"offset2":0.35,"injuryType":4,"boneIndex":11816,"applied":false,"zone":0,"hitcount":0,"part":"Pelvis","timer":0},{"maxhit":false,"offset1":0.35,"offset2":0.8,"injuryType":4,"boneIndex":58271,"applied":false,"zone":4,"hitcount":0,"part":"Left Thigh","timer":0},{"maxhit":false,"offset1":0.45,"offset2":0.35,"injuryType":1,"boneIndex":47495,"applied":false,"zone":1,"hitcount":0,"part":"Mouth","timer":0},{"maxhit":true,"offset1":0.35,"offset2":0.2,"injuryType":1,"boneIndex":14201,"applied":false,"zone":4,"hitcount":0,"part":"Left Foot","timer":0},{"maxhit":false,"offset1":0.35,"offset2":0.55,"injuryType":4,"boneIndex":46078,"applied":false,"zone":4,"hitcount":0,"part":"Left Knee","timer":0},{"maxhit":false,"offset1":0.35,"offset2":0.8,"injuryType":4,"boneIndex":51826,"applied":false,"zone":5,"hitcount":0,"part":"Right Thigh","timer":0},{"maxhit":false,"offset1":0.25,"offset2":0.35,"injuryType":5,"boneIndex":24816,"applied":false,"zone":0,"hitcount":0,"part":"Spine Lower","timer":0},{"maxhit":true,"offset1":0.35,"offset2":0.2,"injuryType":1,"boneIndex":52301,"applied":false,"zone":5,"hitcount":0,"part":"Right Foot","timer":0},{"maxhit":false,"offset1":0.35,"offset2":0.55,"injuryType":4,"boneIndex":16335,"applied":false,"zone":5,"hitcount":0,"part":"Right Knee","timer":0},{"maxhit":false,"offset1":0.25,"offset2":0.55,"injuryType":5,"boneIndex":24817,"applied":false,"zone":0,"hitcount":0,"part":"Spine Mid","timer":0},{"maxhit":true,"offset1":0.35,"offset2":0.2,"injuryType":1,"boneIndex":60309,"applied":false,"zone":2,"hitcount":0,"part":"Left Hand","timer":0},{"maxhit":false,"offset1":0.35,"offset2":0.75,"injuryType":3,"boneIndex":22711,"applied":false,"zone":2,"hitcount":0,"part":"Left Elbow","timer":0},{"maxhit":true,"offset1":0.35,"offset2":0.2,"injuryType":1,"boneIndex":57005,"applied":false,"zone":3,"hitcount":0,"part":"Right Hand","timer":0},{"maxhit":false,"offset1":0.35,"offset2":0.75,"injuryType":3,"boneIndex":2992,"applied":false,"zone":3,"hitcount":0,"part":"Right Elbow","timer":0},{"maxhit":false,"offset1":0.25,"offset2":0.95,"injuryType":5,"boneIndex":39317,"applied":false,"zone":0,"hitcount":0,"part":"Neck","timer":0},{"maxhit":false,"offset1":0.35,"offset2":0.75,"injuryType":2,"boneIndex":31086,"applied":false,"zone":1,"hitcount":0,"part":"Head","timer":0},{"maxhit":false,"offset1":0.25,"offset2":0.85,"injuryType":5,"boneIndex":24818,"applied":false,"zone":0,"hitcount":0,"part":"Spine High","timer":0},{"maxhit":false,"offset1":0.15,"offset2":0.75,"injuryType":3,"boneIndex":64729,"applied":false,"zone":0,"hitcount":0,"part":"Left Clavicle","timer":0},{"maxhit":true,"offset1":0.35,"offset2":0.2,"injuryType":1,"boneIndex":26610,"applied":false,"zone":2,"hitcount":0,"part":"Left Finger Pinky","timer":0},{"maxhit":true,"offset1":0.35,"offset2":0.2,"injuryType":1,"boneIndex":26611,"applied":false,"zone":2,"hitcount":0,"part":"Left Finger Index","timer":0},{"maxhit":true,"offset1":0.35,"offset2":0.2,"injuryType":1,"boneIndex":26612,"applied":false,"zone":2,"hitcount":0,"part":"Left Finger Middle","timer":0},{"maxhit":true,"offset1":0.35,"offset2":0.2,"injuryType":1,"boneIndex":26613,"applied":false,"zone":2,"hitcount":0,"part":"Left Finger Ring","timer":0},{"maxhit":true,"offset1":0.35,"offset2":0.2,"injuryType":1,"boneIndex":26614,"applied":false,"zone":2,"hitcount":0,"part":"Left Finger Thumb","timer":0},{"maxhit":false,"offset1":0.35,"offset2":0.75,"injuryType":3,"boneIndex":10706,"applied":false,"zone":0,"hitcount":0,"part":"Right Clavicle","timer":0},{"maxhit":true,"offset1":0.35,"offset2":0.2,"injuryType":1,"boneIndex":58866,"applied":false,"zone":3,"hitcount":0,"part":"Right Finger Pinky","timer":0},{"maxhit":true,"offset1":0.35,"offset2":0.2,"injuryType":1,"boneIndex":58867,"applied":false,"zone":3,"hitcount":0,"part":"Right Finger Index","timer":0},{"maxhit":true,"offset1":0.35,"offset2":0.2,"injuryType":1,"boneIndex":58868,"applied":false,"zone":3,"hitcount":0,"part":"Right Finger Middle","timer":0},{"maxhit":true,"offset1":0.35,"offset2":0.2,"injuryType":1,"boneIndex":58869,"applied":false,"zone":3,"hitcount":0,"part":"Right Finger Ring","timer":0},{"maxhit":true,"offset1":0.35,"offset2":0.2,"injuryType":1,"boneIndex":58870,"applied":false,"zone":3,"hitcount":0,"part":"Right Finger Thumb","timer":0},{"maxhit":false,"offset1":0.55,"offset2":0.45,"injuryType":1,"boneIndex":21550,"applied":false,"zone":1,"hitcount":0,"part":"Face Left CheekBone","timer":0},{"maxhit":false,"offset1":0.35,"offset2":0.45,"injuryType":1,"boneIndex":19336,"applied":false,"zone":1,"hitcount":0,"part":"Face Right CheekBone","timer":0},{"maxhit":false,"offset1":0.45,"offset2":0.75,"injuryType":2,"boneIndex":37193,"applied":false,"zone":1,"hitcount":0,"part":"Forehead","timer":0},{"maxhit":true,"offset1":0.45,"offset2":0.35,"injuryType":1,"boneIndex":61839,"applied":false,"zone":1,"hitcount":0,"part":"Face UpperLip","timer":0},{"maxhit":true,"offset1":0.45,"offset2":0.35,"injuryType":1,"boneIndex":20623,"applied":false,"zone":1,"hitcount":0,"part":"Face LowerLip","timer":0}]', '{}', 6900, NULL, 0, 'move_m@casual@d', '{}', NULL, NULL, NULL, NULL, NULL, NULL, '[{"license":"Weapon","issuedDate":"","issuedBy":"","issued":0},{"license":"Hunting","issuedDate":"","issuedBy":"","issued":0},{"license":"Business","issuedDate":"","issuedBy":"","issued":0},{"license":"Drivers","issuedDate":"","issuedBy":"","issued":1},{"license":"Fishing","issuedDate":"","issuedBy":"","issued":0},{"license":"Bar","issuedDate":"","issuedBy":"","issued":0},{"license":"Pilot","issuedDate":"","issuedBy":"","issued":0}]', '0', '111', '0', '0', NULL, NULL, NULL, NULL, 'new');

-- Dumping structure for table nopixel.characters_cars
CREATE TABLE IF NOT EXISTS `characters_cars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `character_name` varchar(50) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `purchase_price` float DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `data` text NOT NULL,
  `wheelfitment` longtext NOT NULL DEFAULT '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}',
  `vehicle_state` text DEFAULT NULL,
  `fuel` int(11) DEFAULT 100,
  `name` varchar(50) DEFAULT NULL,
  `engine_damage` bigint(19) DEFAULT 1000,
  `body_damage` bigint(20) DEFAULT 1000,
  `degredation` longtext DEFAULT '100,100,100,100,100,100,100,100',
  `current_garage` varchar(50) DEFAULT NULL,
  `server_number` varchar(50) DEFAULT NULL,
  `vin` varchar(50) DEFAULT '0',
  `financed` int(11) DEFAULT 0,
  `isfinanced` int(11) DEFAULT 0,
  `isTuner` int(11) DEFAULT 0,
  `last_payment` int(11) DEFAULT 0,
  `phone_number` text DEFAULT NULL,
  `coords` varchar(255) DEFAULT NULL,
  `license_plate` varchar(255) NOT NULL DEFAULT '',
  `harness` varchar(50) DEFAULT '0',
  `nitrous` varchar(50) DEFAULT '0',
  `payments_left` int(3) DEFAULT 0,
  `StrikeTime` int(3) DEFAULT 0,
  `strikes` int(3) DEFAULT 0,
  `vehiclepic` varchar(255) DEFAULT NULL,
  `information` longtext DEFAULT NULL,
  `current_model` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.characters_cars: ~22 rows (approximately)
INSERT INTO `characters_cars` (`id`, `character_name`, `cid`, `purchase_price`, `model`, `data`, `wheelfitment`, `vehicle_state`, `fuel`, `name`, `engine_damage`, `body_damage`, `degredation`, `current_garage`, `server_number`, `vin`, `financed`, `isfinanced`, `isTuner`, `last_payment`, `phone_number`, `coords`, `license_plate`, `harness`, `nitrous`, `payments_left`, `StrikeTime`, `strikes`, `vehiclepic`, `information`, `current_model`) VALUES
	(56, NULL, 48, 115000, 'gauntlet', 'null', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 39, 'GAUNTLET', 998, 973, '98,97,99,98,98,98,100,95', 'C', NULL, '0', 0, 0, 0, 0, NULL, '[-303.1075134277344,-988.0169067382813,30.66361808776855]', '53TNV341', '0', '0', 0, 0, 0, NULL, NULL, NULL),
	(57, NULL, 50, 115000, 'gauntlet', 'null', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 74, 'GAUNTLET', 1000, 1000, '99,99,100,100,100,100,99,100', 'C', NULL, '0', 0, 0, 0, 0, NULL, '[1268.94189453125,-660.0872192382813,67.32606506347656]', '64LBS414', '0', '0', 0, 0, 0, NULL, NULL, NULL),
	(58, NULL, 51, 172500, 'Vectre', 'null', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 60, 'VECTRE', 1000, 887, '100,100,100,100,100,100,100,100', 'Full Impound', NULL, '0', 0, 0, 0, 0, NULL, NULL, '90QEJ931', '0', '0', 0, 0, 0, NULL, NULL, NULL),
	(59, NULL, 50, 143750, 'zr350', '{"oldLiveries":-1,"plateIndex":0,"tint":-1,"extracolors":[0,0],"dashColour":2,"extras":[0,0,0,0,0,0,0,0,0,0,0,0],"mods":{"1":5,"2":0,"3":13,"4":0,"5":1,"6":3,"7":3,"8":3,"9":3,"10":3,"11":-1,"12":-1,"13":-1,"14":-1,"15":-1,"16":-1,"17":false,"18":false,"19":false,"20":false,"21":false,"22":false,"23":-1,"24":-1,"25":-1,"26":-1,"27":3,"28":-1,"29":3,"30":3,"31":-1,"32":13,"33":15,"34":-1,"35":-1,"36":-1,"37":-1,"38":-1,"39":-1,"40":-1,"41":-1,"42":-1,"43":-1,"44":-1,"45":-1,"46":-1,"47":-1,"48":10,"0":11},"colors":[0,0],"interColour":156,"lights":[255,0,255],"smokecolor":[255,255,255],"platestyle":0,"neon":{"1":false,"2":false,"3":false,"0":false},"wheeltype":0,"xenonColor":255}', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 0, 'ZR350', 826, 755, '99,99,100,100,100,99,98,99', 'Impound Lot', NULL, '0', 0, 0, 0, 0, NULL, '[-53.48335266113281,-1117.2003173828126,26.05742645263672]', '70GZU793', '0', '0', 0, 0, 0, NULL, NULL, NULL),
	(60, NULL, 50, 115000, 'gauntlet', 'null', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 0, 'GAUNTLET', 1000, 1000, '100,100,100,100,100,100,100,100', 'C', NULL, '0', 0, 0, 0, 0, NULL, '[-59.52072525024414,-1116.7672119140626,26.01676750183105]', '99WSB925', '0', '0', 0, 0, 0, NULL, NULL, NULL),
	(61, NULL, 51, 143750, 'zr350', '{"interColour":156,"plateIndex":0,"wheeltype":0,"colors":[0,0],"oldLiveries":-1,"tint":-1,"smokecolor":[255,255,255],"mods":{"1":5,"2":1,"3":-1,"4":-1,"5":-1,"6":-1,"7":-1,"8":-1,"9":-1,"10":-1,"11":2,"12":2,"13":2,"14":-1,"15":2,"16":-1,"17":false,"18":1,"19":false,"20":false,"21":false,"22":false,"23":-1,"24":-1,"25":-1,"26":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"34":-1,"35":-1,"36":-1,"37":-1,"38":-1,"39":-1,"40":-1,"41":-1,"42":-1,"43":-1,"44":-1,"45":-1,"46":-1,"47":-1,"48":-1,"0":15},"dashColour":32,"neon":{"1":false,"2":false,"3":false,"0":false},"xenonColor":255,"platestyle":0,"lights":[255,0,255],"extracolors":[0,0],"extras":[0,0,0,0,0,0,0,0,0,0,0,0]}', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 0, 'ZR350', 982, 754, '99,99,100,98,100,99,97,96', 'C', NULL, '0', 0, 0, 0, 0, NULL, '[-255.42071533203126,-881.2587280273438,30.38369750976562]', '53HFO407', '0', '0', 0, 0, 0, NULL, NULL, NULL),
	(62, NULL, 51, 0, 'npolvic', 'null', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 0, 'npolvic', 1000, 1000, '100,100,100,100,99,100,100,100', 'Impound Lot', NULL, '0', 0, 0, 0, 0, NULL, '[452.585205078125,-976.123291015625,25.51084899902343]', '08NRW086', '0', '0', 0, 0, 0, NULL, NULL, NULL),
	(63, NULL, 51, 0, 'npolexp', 'null', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 0, 'npolexp', 1000, 997, '100,100,100,100,100,100,100,100', 'Impound Lot', NULL, '0', 0, 0, 0, 0, NULL, '[-295.3756103515625,-987.3021240234375,30.50206756591797]', '20NKY906', '0', '0', 0, 0, 0, NULL, NULL, NULL),
	(64, NULL, 50, 115000, 'gauntlet', 'null', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 100, 'GAUNTLET', 1000, 1000, '100,100,100,100,100,100,100,100', 'C', NULL, '0', 0, 0, 0, 0, NULL, NULL, '33HIN924', '0', '0', 0, 0, 0, NULL, NULL, NULL),
	(65, NULL, 50, 115000, 'gauntlet', 'null', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 0, 'GAUNTLET', 1000, 1000, '100,100,100,100,100,100,100,100', 'C', NULL, '0', 0, 0, 0, 0, NULL, NULL, '39DLL376', '0', '0', 0, 0, 0, NULL, NULL, NULL),
	(66, NULL, 51, 5750, 'flatbed', 'null', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 0, 'FLATBED', 1000, 885, '100,100,100,100,100,100,99,100', 'C', NULL, '0', 0, 0, 0, 0, NULL, '[-31.1578140258789,-1090.674560546875,26.51437950134277]', '77KWD732', '0', '0', 0, 0, 0, NULL, NULL, NULL),
	(67, NULL, 51, 5750, 'flatbed', 'null', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 0, 'FLATBED', 957, 759, '100,100,100,99,100,100,100,100', 'C', NULL, '0', 0, 0, 0, 0, NULL, '[-167.813720703125,-1152.260009765625,23.69183540344238]', '88WFW538', '0', '0', 0, 0, 0, NULL, NULL, NULL),
	(68, NULL, 50, 115000, 'gauntlet', 'null', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 74, 'GAUNTLET', 989, 886, '100,100,100,100,100,100,100,99', 'C', NULL, '0', 0, 0, 0, 0, NULL, '[-297.3410949707031,-987.6687622070313,30.66262435913086]', '94FMH663', '0', '0', 0, 0, 0, NULL, NULL, NULL),
	(69, NULL, 48, 0, 'npolvic', '{"oldLiveries":-1,"plateIndex":4,"smokecolor":[255,255,255],"colors":[112,0],"dashColour":0,"extras":[1,1,1,0,1,1,1,0,0,0,0,0],"mods":{"1":0,"2":-1,"3":-1,"4":-1,"5":1,"6":-1,"7":-1,"8":-1,"9":-1,"10":-1,"11":-1,"12":-1,"13":-1,"14":-1,"15":-1,"16":-1,"17":false,"18":false,"19":false,"20":false,"21":false,"22":false,"23":-1,"24":-1,"25":-1,"26":-1,"27":-1,"28":0,"29":0,"30":0,"31":-1,"32":0,"33":-1,"34":-1,"35":-1,"36":-1,"37":2,"38":-1,"39":-1,"40":-1,"41":-1,"42":-1,"43":0,"44":-1,"45":-1,"46":-1,"47":-1,"48":0,"0":0},"neon":{"1":false,"2":false,"3":false,"0":false},"interColour":0,"extracolors":[0,0],"lights":[255,0,255],"platestyle":4,"tint":-1,"wheeltype":1,"xenonColor":255}', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 65, 'npolvic', 1000, 1000, '100,100,100,100,100,100,100,100', 'Police Personal', NULL, '0', 0, 0, 0, 0, NULL, '[436.875244140625,-986.47412109375,25.50919914245605]', '26ELC126', '0', '0', 0, 0, 0, NULL, NULL, NULL),
	(70, NULL, 51, 0, 'npolstang', '{"oldLiveries":-1,"plateIndex":0,"smokecolor":[255,255,255],"colors":[141,141],"dashColour":111,"extras":[1,1,1,1,1,1,0,0,0,0,0,0],"mods":{"1":1,"2":2,"3":0,"4":-1,"5":1,"6":0,"7":-1,"8":-1,"9":-1,"10":0,"11":-1,"12":-1,"13":-1,"14":-1,"15":-1,"16":-1,"17":false,"18":false,"19":false,"20":false,"21":false,"22":false,"23":-1,"24":-1,"25":-1,"26":-1,"27":-1,"28":0,"29":0,"30":0,"31":-1,"32":-1,"33":-1,"34":-1,"35":-1,"36":-1,"37":2,"38":-1,"39":-1,"40":-1,"41":-1,"42":-1,"43":0,"44":-1,"45":-1,"46":-1,"47":-1,"48":0,"0":2},"neon":{"1":false,"2":false,"3":false,"0":false},"interColour":111,"extracolors":[66,0],"lights":[255,0,255],"platestyle":0,"tint":-1,"wheeltype":7,"xenonColor":255}', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 0, 'npolstang', 985, 549, '99,100,99,100,99,100,100,99', 'Police Department', NULL, '0', 0, 0, 0, 0, NULL, '[401.2813720703125,-993.0068359375,28.76689338684082]', '42JYF697', '0', '0', 0, 0, 0, NULL, NULL, NULL),
	(71, NULL, 51, 0, 'npolvic', '{"mods":{"1":0,"2":-1,"3":-1,"4":-1,"5":1,"6":-1,"7":-1,"8":-1,"9":-1,"10":-1,"11":-1,"12":-1,"13":-1,"14":-1,"15":-1,"16":-1,"17":false,"18":false,"19":false,"20":false,"21":false,"22":false,"23":-1,"24":-1,"25":-1,"26":-1,"27":-1,"28":0,"29":0,"30":0,"31":-1,"32":0,"33":-1,"34":-1,"35":-1,"36":-1,"37":2,"38":-1,"39":-1,"40":-1,"41":-1,"42":-1,"43":0,"44":-1,"45":-1,"46":-1,"47":-1,"48":0,"0":0},"dashColour":112,"smokecolor":[255,255,255],"neon":{"1":false,"2":false,"3":false,"0":false},"oldLiveries":-1,"tint":-1,"wheeltype":1,"extracolors":[0,0],"colors":[112,0],"xenonColor":255,"lights":[255,0,255],"plateIndex":4,"platestyle":4,"interColour":0,"extras":[1,1,1,0,1,1,0,0,0,0,0,0]}', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 0, 'npolvic', 1000, 555, '100,99,100,99,98,100,100,100', 'Police Department', NULL, '0', 0, 0, 0, 0, NULL, '[153.93856811523438,6628.65380859375,31.54530906677246]', '67KSQ492', '0', '0', 0, 0, 0, NULL, NULL, NULL),
	(72, NULL, 48, 115000, 'gauntlet', 'null', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 74, 'GAUNTLET', 1000, 1000, '100,100,100,100,100,100,100,100', 'C', NULL, '0', 0, 0, 0, 0, NULL, '[-304.5498962402344,-988.572998046875,30.66343879699707]', '66UKF765', '0', '0', 0, 0, 0, NULL, NULL, NULL),
	(73, NULL, 48, 181700, 'furia', 'null', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 0, 'FURIA', 1000, 949, '100,100,100,100,99,100,100,100', 'C', NULL, '0', 0, 0, 0, 0, NULL, '[310.5169982910156,-1120.4771728515626,28.78456878662109]', '44IFS182', '0', '0', 0, 0, 0, NULL, NULL, NULL),
	(74, NULL, 57, 0, 'npolvic', '{"dashColour":112,"extras":[1,1,0,0,0,0,0,0,0,0,0,0],"mods":{"1":0,"2":-1,"3":-1,"4":-1,"5":1,"6":-1,"7":-1,"8":0,"9":0,"10":-1,"11":2,"12":2,"13":2,"14":-1,"15":2,"16":-1,"17":false,"18":false,"19":false,"20":false,"21":false,"22":false,"23":-1,"24":-1,"25":-1,"26":-1,"27":-1,"28":0,"29":0,"30":0,"31":-1,"32":0,"33":-1,"34":-1,"35":-1,"36":-1,"37":1,"38":-1,"39":-1,"40":-1,"41":-1,"42":0,"43":0,"44":5,"45":7,"46":-1,"47":-1,"48":0,"0":0},"plateIndex":3,"wheeltype":1,"extracolors":[0,0],"interColour":0,"tint":3,"colors":[112,0],"smokecolor":[255,255,255],"platestyle":3,"xenonColor":255,"neon":{"1":false,"2":false,"3":false,"0":false},"lights":[255,0,255],"oldLiveries":-1}', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 0, 'npolvic', 1000, 712, '96,94,96,98,89,99,96,94', 'C', NULL, '0', 0, 0, 0, 0, NULL, '[-52.96079635620117,-1078.2357177734376,26.75357246398925]', '01AJO859', '0', '0', 0, 0, 0, NULL, NULL, NULL),
	(75, NULL, 48, 0, 'npolvic', '{"neon":{"1":false,"2":false,"3":false,"0":false},"extras":[1,0,0,0,0,1,0,0,0,0,0,0],"oldLiveries":-1,"colors":[112,0],"dashColour":112,"interColour":0,"plateIndex":4,"extracolors":[0,0],"platestyle":4,"wheeltype":1,"lights":[255,0,255],"mods":{"1":0,"2":-1,"3":-1,"4":-1,"5":-1,"6":-1,"7":-1,"8":-1,"9":-1,"10":-1,"11":-1,"12":-1,"13":-1,"14":-1,"15":-1,"16":-1,"17":false,"18":false,"19":false,"20":false,"21":false,"22":false,"23":-1,"24":-1,"25":-1,"26":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"34":-1,"35":-1,"36":-1,"37":-1,"38":-1,"39":-1,"40":-1,"41":-1,"42":-1,"43":-1,"44":-1,"45":-1,"46":-1,"47":-1,"48":0,"0":0},"smokecolor":[255,255,255],"tint":-1,"xenonColor":255}', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 65, 'npolvic', 1000, 1000, '99,99,100,100,100,100,100,99', 'Police Personal', NULL, '0', 0, 0, 0, 0, NULL, '[0.0,0.0,0.0]', '41VQP180', '0', '0', 0, 0, 0, NULL, NULL, NULL),
	(76, NULL, 48, 0, 'npolexp', 'null', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 56, 'npolexp', 995, 901, '99,99,100,100,100,100,100,100', 'Police Shared', NULL, '0', 0, 0, 0, 0, NULL, '[446.176025390625,-986.3200073242188,25.12352180480957]', '22GJJ488', '0', '0', 0, 0, 0, NULL, NULL, NULL),
	(77, NULL, 57, 0, 'npolvic', 'null', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 0, 'npolvic', 1000, 109, '100,100,100,100,100,100,100,99', 'Police Department', NULL, '0', 0, 0, 0, 0, NULL, '[426.296630859375,-976.3321533203125,25.51125144958496]', '46LOD088', '0', '0', 0, 0, 0, NULL, NULL, NULL),
	(78, NULL, 50, 0, 'frogger', 'null', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 100, 'frogger', 1000, 1000, '100,100,100,100,100,100,100,100', 'C', NULL, '0', 0, 0, 0, 0, NULL, NULL, 'I6R2Z59T', '0', '0', 0, 0, 0, NULL, NULL, NULL),
	(79, NULL, 54, 0, 'npolexp', '{"smokecolor":[255,255,255],"plateIndex":3,"colors":[112,112],"wheeltype":4,"dashColour":0,"neon":{"1":false,"2":false,"3":false,"0":false},"extras":[0,0,0,0,1,1,0,0,0,0,0,0],"tint":0,"extracolors":[0,0],"platestyle":3,"lights":[255,255,255],"interColour":0,"xenonColor":255,"oldLiveries":-1,"mods":{"1":-1,"2":-1,"3":-1,"4":-1,"5":-1,"6":-1,"7":-1,"8":-1,"9":-1,"10":-1,"11":2,"12":2,"13":2,"14":-1,"15":2,"16":-1,"17":false,"18":false,"19":false,"20":false,"21":false,"22":false,"23":0,"24":-1,"25":-1,"26":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":0,"33":-1,"34":-1,"35":-1,"36":-1,"37":-1,"38":-1,"39":-1,"40":-1,"41":-1,"42":-1,"43":-1,"44":-1,"45":-1,"46":-1,"47":-1,"48":-1,"0":1}}', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 0, 'npolexp', 781, 0, '99,100,100,99,98,100,98,98', 'Police Department', NULL, '0', 0, 0, 0, 0, NULL, '[829.275390625,-996.03759765625,26.03355026245117]', '26SAL275', '0', '0', 0, 0, 0, NULL, NULL, NULL);

-- Dumping structure for table nopixel.characters_clothes
CREATE TABLE IF NOT EXISTS `characters_clothes` (
  `cid` int(11) DEFAULT NULL,
  `assExist` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.characters_clothes: ~0 rows (approximately)

-- Dumping structure for table nopixel.characters_gangs
CREATE TABLE IF NOT EXISTS `characters_gangs` (
  `owner` varchar(50) NOT NULL,
  `cid` int(11) NOT NULL,
  `gang` varchar(50) DEFAULT 'none',
  `rank` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.characters_gangs: ~0 rows (approximately)

-- Dumping structure for table nopixel.characters_houses
CREATE TABLE IF NOT EXISTS `characters_houses` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(50) DEFAULT '[]',
  `name` varchar(50) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `tier` int(11) DEFAULT NULL,
  `owned` varchar(50) DEFAULT NULL,
  `coords` text DEFAULT NULL,
  `hasgarage` varchar(50) DEFAULT 'false',
  `garage` varchar(200) DEFAULT '[]',
  `keyholders` text DEFAULT NULL,
  `decorations` longtext DEFAULT NULL,
  `stash` text DEFAULT NULL,
  `outfit` text DEFAULT NULL,
  `logout` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table nopixel.characters_houses: 0 rows
/*!40000 ALTER TABLE `characters_houses` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters_houses` ENABLE KEYS */;

-- Dumping structure for table nopixel.characters_house_plants
CREATE TABLE IF NOT EXISTS `characters_house_plants` (
  `id` int(11) NOT NULL,
  `houseid` varchar(50) DEFAULT '11111',
  `plants` varchar(65000) DEFAULT '[]'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table nopixel.characters_house_plants: 0 rows
/*!40000 ALTER TABLE `characters_house_plants` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters_house_plants` ENABLE KEYS */;

-- Dumping structure for table nopixel.characters_weapons
CREATE TABLE IF NOT EXISTS `characters_weapons` (
  `id` int(11) NOT NULL DEFAULT 0,
  `type` varchar(255) DEFAULT NULL,
  `ammo` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.characters_weapons: ~6 rows (approximately)
INSERT INTO `characters_weapons` (`id`, `type`, `ammo`) VALUES
	(48, '-1878508229', 145),
	(48, '2034517757', 0),
	(50, '1950175060', 37),
	(55, '1950175060', 132),
	(51, '2034517757', 0),
	(51, '1950175060', 0),
	(48, '1359393852', 0),
	(56, '1950175060', 0),
	(56, '1411692055', 0),
	(54, '357983224', 0),
	(50, '1970280428', 150),
	(48, '1411692055', 0),
	(48, '218444191', 74),
	(54, '218444191', 49),
	(51, '-435287898', 0),
	(51, '1003688881', 0),
	(54, '-1252571416', 0),
	(56, '-1252571416', 0),
	(51, '-1252571416', 0),
	(57, '2034517757', 0),
	(48, '357983224', 1),
	(57, '1950175060', 0),
	(54, '-1526023308', -1),
	(56, '1359393852', 0),
	(55, '357983224', 1),
	(52, '1916856719', 91),
	(52, '218444191', 0),
	(51, '-1575030772', 0),
	(50, '218444191', 0),
	(52, '-226717603', 0),
	(48, '1950175060', 0),
	(52, '1950175060', 50),
	(51, '1820140472', 0);

-- Dumping structure for table nopixel.character_carkeys
CREATE TABLE IF NOT EXISTS `character_carkeys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `plate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.character_carkeys: ~0 rows (approximately)

-- Dumping structure for table nopixel.character_current
CREATE TABLE IF NOT EXISTS `character_current` (
  `cid` int(11) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `drawables` mediumtext DEFAULT NULL,
  `props` mediumtext DEFAULT NULL,
  `drawtextures` mediumtext DEFAULT NULL,
  `proptextures` mediumtext DEFAULT NULL,
  `assExists` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.character_current: ~9 rows (approximately)
INSERT INTO `character_current` (`cid`, `model`, `drawables`, `props`, `drawtextures`, `proptextures`, `assExists`) VALUES
	(48, '1885233650', '{"4":["legs",0],"3":["torsos",0],"2":["hair",0],"1":["masks",0],"0":["face",1],"11":["jackets",0],"10":["decals",0],"9":["vest",0],"8":["undershirts",0],"7":["neck",0],"6":["shoes",1],"5":["bags",0]}', '{"4":["lhand",-1],"3":["mouth",-1],"2":["earrings",-1],"1":["glasses",-1],"0":["hats",2],"7":["braclets",-1],"6":["watches",-1],"5":["rhand",-1]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",2],["neck",0],["undershirts",1],["vest",0],["decals",0],["jackets",1]]', '[["hats",0],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', NULL),
	(49, '-1868718465', '{"1":["masks",0],"2":["hair",0],"3":["torsos",0],"4":["legs",0],"5":["bags",0],"6":["shoes",0],"7":["neck",0],"8":["undershirts",0],"9":["vest",0],"10":["decals",0],"11":["jackets",0],"0":["face",0]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",-1]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",0],["neck",0],["undershirts",0],["vest",0],["decals",0],["jackets",0]]', '[["hats",-1],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', NULL),
	(50, '1885233650', '{"1":["masks",0],"2":["hair",5],"3":["torsos",0],"4":["legs",130],"5":["bags",0],"6":["shoes",12],"7":["neck",0],"8":["undershirts",15],"9":["vest",0],"10":["decals",0],"11":["jackets",319],"0":["face",0]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",46]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",0],["neck",0],["undershirts",0],["vest",0],["decals",0],["jackets",0]]', '[["hats",0],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', NULL),
	(51, '1885233650', '{"1":["masks",0],"2":["hair",75],"3":["torsos",0],"4":["legs",129],"5":["bags",0],"6":["shoes",25],"7":["neck",-1],"8":["undershirts",122],"9":["vest",-1],"10":["decals",22],"11":["jackets",316],"0":["face",0]}', '{"1":["glasses",5],"2":["earrings",3],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",104]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",1],["bags",0],["shoes",0],["neck",0],["undershirts",0],["vest",0],["decals",0],["jackets",8]]', '[["hats",20],["glasses",7],["earrings",0],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', NULL),
	(52, '1885233650', '{"1":["masks",0],"2":["hair",7],"3":["torsos",0],"4":["legs",0],"5":["bags",0],"6":["shoes",1],"7":["neck",0],"8":["undershirts",0],"9":["vest",0],"10":["decals",0],"11":["jackets",0],"0":["face",0]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",-1]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",2],["neck",0],["undershirts",1],["vest",0],["decals",0],["jackets",11]]', '[["hats",-1],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', NULL),
	(53, '1885233650', '{"1":["masks",0],"2":["hair",2],"3":["torsos",0],"4":["legs",26],"5":["bags",0],"6":["shoes",77],"7":["neck",0],"8":["undershirts",106],"9":["vest",0],"10":["decals",0],"11":["jackets",355],"0":["face",0]}', '{"1":["glasses",7],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",20],"7":["braclets",-1],"0":["hats",-1]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",8],["neck",0],["undershirts",0],["vest",0],["decals",0],["jackets",16]]', '[["hats",-1],["glasses",0],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",0],["braclets",-1]]', NULL),
	(54, '1885233650', '{"1":["masks",0],"2":["hair",73],"3":["torsos",0],"4":["legs",130],"5":["bags",0],"6":["shoes",25],"7":["neck",-1],"8":["undershirts",122],"9":["vest",27],"10":["decals",0],"11":["jackets",319],"0":["face",0]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",6],"7":["braclets",-1],"0":["hats",-1]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",1],["bags",0],["shoes",0],["neck",0],["undershirts",0],["vest",9],["decals",0],["jackets",8]]', '[["hats",-1],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",1],["braclets",-1]]', NULL),
	(55, '1885233650', '{"1":["masks",0],"2":["hair",48],"3":["torsos",17],"4":["legs",130],"5":["bags",47],"6":["shoes",25],"7":["neck",31],"8":["undershirts",122],"9":["vest",14],"10":["decals",-1],"11":["jackets",316],"0":["face",0]}', '{"1":["glasses",5],"2":["earrings",23],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",143]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",1],["bags",0],["shoes",0],["neck",2],["undershirts",0],["vest",0],["decals",0],["jackets",8]]', '[["hats",0],["glasses",4],["earrings",1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', NULL),
	(56, '1885233650', '{"1":["masks",0],"2":["hair",3],"3":["torsos",1],"4":["legs",1],"5":["bags",0],"6":["shoes",4],"7":["neck",94],"8":["undershirts",0],"9":["vest",0],"10":["decals",0],"11":["jackets",7],"0":["face",0]}', '{"1":["glasses",33],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",142]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",2],["neck",0],["undershirts",1],["vest",0],["decals",0],["jackets",2]]', '[["hats",0],["glasses",11],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', NULL),
	(57, '1885233650', '{"1":["masks",0],"2":["hair",0],"3":["torsos",0],"4":["legs",0],"5":["bags",0],"6":["shoes",1],"7":["neck",0],"8":["undershirts",0],"9":["vest",0],"10":["decals",0],"11":["jackets",0],"0":["face",0]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",4]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",2],["neck",0],["undershirts",1],["vest",0],["decals",0],["jackets",11]]', '[["hats",0],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', NULL);

-- Dumping structure for table nopixel.character_face
CREATE TABLE IF NOT EXISTS `character_face` (
  `cid` int(11) DEFAULT NULL,
  `hairColor` mediumtext DEFAULT NULL,
  `headBlend` mediumtext DEFAULT NULL,
  `headOverlay` mediumtext DEFAULT NULL,
  `headStructure` mediumtext DEFAULT NULL,
  `headFade` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.character_face: ~9 rows (approximately)
INSERT INTO `character_face` (`cid`, `hairColor`, `headBlend`, `headOverlay`, `headStructure`, `headFade`) VALUES
	(48, '[1,1]', '{"shapeMix":0.0,"skinSecond":0,"shapeFirst":0,"hasParent":false,"skinFirst":15,"shapeSecond":0,"skinMix":1.0,"skinThird":0,"thirdMix":0.0,"shapeThird":0}', '[{"name":"Blemishes","overlayOpacity":1.0,"firstColour":0,"colourType":0,"secondColour":0,"overlayValue":255},{"name":"FacialHair","overlayOpacity":0.0,"firstColour":0,"colourType":1,"secondColour":0,"overlayValue":255},{"name":"Eyebrows","overlayOpacity":1.0,"firstColour":0,"colourType":1,"secondColour":0,"overlayValue":255},{"name":"Ageing","overlayOpacity":1.0,"firstColour":0,"colourType":0,"secondColour":0,"overlayValue":255},{"name":"Makeup","overlayOpacity":1.0,"firstColour":0,"colourType":2,"secondColour":0,"overlayValue":255},{"name":"Blush","overlayOpacity":1.0,"firstColour":0,"colourType":2,"secondColour":0,"overlayValue":255},{"name":"Complexion","overlayOpacity":1.0,"firstColour":0,"colourType":0,"secondColour":0,"overlayValue":255},{"name":"SunDamage","overlayOpacity":1.0,"firstColour":0,"colourType":0,"secondColour":0,"overlayValue":255},{"name":"Lipstick","overlayOpacity":1.0,"firstColour":0,"colourType":2,"secondColour":0,"overlayValue":255},{"name":"MolesFreckles","overlayOpacity":1.0,"firstColour":0,"colourType":0,"secondColour":0,"overlayValue":255},{"name":"ChestHair","overlayOpacity":1.0,"firstColour":0,"colourType":1,"secondColour":0,"overlayValue":255},{"name":"BodyBlemishes","overlayOpacity":1.0,"firstColour":0,"colourType":0,"secondColour":0,"overlayValue":255},{"name":"AddBodyBlemishes","overlayOpacity":1.0,"firstColour":0,"colourType":0,"secondColour":0,"overlayValue":255}]', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]', '"0"'),
	(49, '[-1,-1]', '[]', '[]', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]', '"0"'),
	(50, '[1,1]', '{"shapeThird":0,"thirdMix":0.0,"shapeFirst":0,"shapeSecond":0,"hasParent":false,"skinFirst":15,"shapeMix":0.0,"skinThird":0,"skinSecond":0,"skinMix":1.0}', '[{"colourType":0,"secondColour":0,"overlayValue":255,"firstColour":0,"overlayOpacity":1.0,"name":"Blemishes"},{"colourType":1,"secondColour":0,"overlayValue":255,"firstColour":0,"overlayOpacity":0.0,"name":"FacialHair"},{"colourType":1,"secondColour":0,"overlayValue":255,"firstColour":0,"overlayOpacity":1.0,"name":"Eyebrows"},{"colourType":0,"secondColour":0,"overlayValue":255,"firstColour":0,"overlayOpacity":1.0,"name":"Ageing"},{"colourType":2,"secondColour":0,"overlayValue":255,"firstColour":0,"overlayOpacity":1.0,"name":"Makeup"},{"colourType":2,"secondColour":0,"overlayValue":255,"firstColour":0,"overlayOpacity":1.0,"name":"Blush"},{"colourType":0,"secondColour":0,"overlayValue":255,"firstColour":0,"overlayOpacity":1.0,"name":"Complexion"},{"colourType":0,"secondColour":0,"overlayValue":255,"firstColour":0,"overlayOpacity":1.0,"name":"SunDamage"},{"colourType":2,"secondColour":0,"overlayValue":255,"firstColour":0,"overlayOpacity":1.0,"name":"Lipstick"},{"colourType":0,"secondColour":0,"overlayValue":255,"firstColour":0,"overlayOpacity":1.0,"name":"MolesFreckles"},{"colourType":1,"secondColour":0,"overlayValue":255,"firstColour":0,"overlayOpacity":1.0,"name":"ChestHair"},{"colourType":0,"secondColour":0,"overlayValue":255,"firstColour":0,"overlayOpacity":1.0,"name":"BodyBlemishes"},{"colourType":0,"secondColour":0,"overlayValue":255,"firstColour":0,"overlayOpacity":1.0,"name":"AddBodyBlemishes"}]', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]', '"0"'),
	(51, '[1,1]', '{"skinSecond":0,"thirdMix":0.0,"shapeFirst":0,"shapeSecond":0,"hasParent":false,"skinFirst":15,"skinMix":1.0,"skinThird":0,"shapeMix":0.0,"shapeThird":0}', '[{"colourType":0,"secondColour":0,"overlayValue":255,"firstColour":0,"overlayOpacity":1.0,"name":"Blemishes"},{"colourType":1,"secondColour":0,"overlayValue":255,"firstColour":0,"overlayOpacity":0.0,"name":"FacialHair"},{"colourType":1,"secondColour":0,"overlayValue":255,"firstColour":0,"overlayOpacity":1.0,"name":"Eyebrows"},{"colourType":0,"secondColour":0,"overlayValue":255,"firstColour":0,"overlayOpacity":1.0,"name":"Ageing"},{"colourType":2,"secondColour":0,"overlayValue":255,"firstColour":0,"overlayOpacity":1.0,"name":"Makeup"},{"colourType":2,"secondColour":0,"overlayValue":255,"firstColour":0,"overlayOpacity":1.0,"name":"Blush"},{"colourType":0,"secondColour":0,"overlayValue":255,"firstColour":0,"overlayOpacity":1.0,"name":"Complexion"},{"colourType":0,"secondColour":0,"overlayValue":255,"firstColour":0,"overlayOpacity":1.0,"name":"SunDamage"},{"colourType":2,"secondColour":0,"overlayValue":255,"firstColour":0,"overlayOpacity":1.0,"name":"Lipstick"},{"colourType":0,"secondColour":0,"overlayValue":255,"firstColour":0,"overlayOpacity":1.0,"name":"MolesFreckles"},{"colourType":1,"secondColour":0,"overlayValue":255,"firstColour":0,"overlayOpacity":1.0,"name":"ChestHair"},{"colourType":0,"secondColour":0,"overlayValue":255,"firstColour":0,"overlayOpacity":1.0,"name":"BodyBlemishes"},{"colourType":0,"secondColour":0,"overlayValue":255,"firstColour":0,"overlayOpacity":1.0,"name":"AddBodyBlemishes"}]', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]', '"0"'),
	(52, '[1,1]', '{"skinSecond":0,"shapeFirst":0,"skinThird":0,"shapeSecond":0,"hasParent":false,"shapeThird":0,"shapeMix":0.0,"thirdMix":0.0,"skinFirst":15,"skinMix":1.0}', '[{"overlayValue":255,"overlayOpacity":1.0,"colourType":0,"name":"Blemishes","firstColour":0,"secondColour":0},{"overlayValue":255,"overlayOpacity":0.0,"colourType":1,"name":"FacialHair","firstColour":0,"secondColour":0},{"overlayValue":255,"overlayOpacity":1.0,"colourType":1,"name":"Eyebrows","firstColour":0,"secondColour":0},{"overlayValue":255,"overlayOpacity":1.0,"colourType":0,"name":"Ageing","firstColour":0,"secondColour":0},{"overlayValue":255,"overlayOpacity":1.0,"colourType":2,"name":"Makeup","firstColour":0,"secondColour":0},{"overlayValue":255,"overlayOpacity":1.0,"colourType":2,"name":"Blush","firstColour":0,"secondColour":0},{"overlayValue":255,"overlayOpacity":1.0,"colourType":0,"name":"Complexion","firstColour":0,"secondColour":0},{"overlayValue":255,"overlayOpacity":1.0,"colourType":0,"name":"SunDamage","firstColour":0,"secondColour":0},{"overlayValue":255,"overlayOpacity":1.0,"colourType":2,"name":"Lipstick","firstColour":0,"secondColour":0},{"overlayValue":255,"overlayOpacity":1.0,"colourType":0,"name":"MolesFreckles","firstColour":0,"secondColour":0},{"overlayValue":255,"overlayOpacity":1.0,"colourType":1,"name":"ChestHair","firstColour":0,"secondColour":0},{"overlayValue":255,"overlayOpacity":1.0,"colourType":0,"name":"BodyBlemishes","firstColour":0,"secondColour":0},{"overlayValue":255,"overlayOpacity":1.0,"colourType":0,"name":"AddBodyBlemishes","firstColour":0,"secondColour":0}]', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]', '"0"'),
	(53, '[3,1]', '{"shapeMix":0.0,"skinSecond":0,"shapeFirst":0,"hasParent":false,"skinFirst":15,"shapeSecond":0,"skinMix":1.0,"skinThird":0,"shapeThird":0,"thirdMix":0.0}', '[{"name":"Blemishes","overlayOpacity":1.0,"colourType":0,"firstColour":0,"secondColour":0,"overlayValue":255},{"name":"FacialHair","overlayOpacity":0.0,"colourType":1,"firstColour":0,"secondColour":0,"overlayValue":255},{"name":"Eyebrows","overlayOpacity":1.0,"colourType":1,"firstColour":0,"secondColour":0,"overlayValue":255},{"name":"Ageing","overlayOpacity":1.0,"colourType":0,"firstColour":0,"secondColour":0,"overlayValue":255},{"name":"Makeup","overlayOpacity":1.0,"colourType":2,"firstColour":0,"secondColour":0,"overlayValue":255},{"name":"Blush","overlayOpacity":1.0,"colourType":2,"firstColour":0,"secondColour":0,"overlayValue":255},{"name":"Complexion","overlayOpacity":1.0,"colourType":0,"firstColour":0,"secondColour":0,"overlayValue":255},{"name":"SunDamage","overlayOpacity":1.0,"colourType":0,"firstColour":0,"secondColour":0,"overlayValue":255},{"name":"Lipstick","overlayOpacity":1.0,"colourType":2,"firstColour":0,"secondColour":0,"overlayValue":255},{"name":"MolesFreckles","overlayOpacity":1.0,"colourType":0,"firstColour":0,"secondColour":0,"overlayValue":255},{"name":"ChestHair","overlayOpacity":1.0,"colourType":1,"firstColour":0,"secondColour":0,"overlayValue":255},{"name":"BodyBlemishes","overlayOpacity":1.0,"colourType":0,"firstColour":0,"secondColour":0,"overlayValue":255},{"name":"AddBodyBlemishes","overlayOpacity":1.0,"colourType":0,"firstColour":0,"secondColour":0,"overlayValue":255}]', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]', '"0"'),
	(54, '[29,29]', '{"skinSecond":0,"thirdMix":0.0,"shapeFirst":0,"shapeSecond":0,"hasParent":false,"skinFirst":15,"skinMix":1.0,"shapeMix":0.0,"shapeThird":0,"skinThird":0}', '[{"colourType":0,"firstColour":0,"overlayValue":255,"secondColour":0,"overlayOpacity":1.0,"name":"Blemishes"},{"colourType":1,"firstColour":0,"overlayValue":11,"secondColour":0,"overlayOpacity":1.0,"name":"FacialHair"},{"colourType":1,"firstColour":0,"overlayValue":2,"secondColour":0,"overlayOpacity":1.0,"name":"Eyebrows"},{"colourType":0,"firstColour":0,"overlayValue":255,"secondColour":0,"overlayOpacity":1.0,"name":"Ageing"},{"colourType":2,"firstColour":0,"overlayValue":255,"secondColour":0,"overlayOpacity":1.0,"name":"Makeup"},{"colourType":2,"firstColour":0,"overlayValue":255,"secondColour":0,"overlayOpacity":1.0,"name":"Blush"},{"colourType":0,"firstColour":0,"overlayValue":255,"secondColour":0,"overlayOpacity":1.0,"name":"Complexion"},{"colourType":0,"firstColour":0,"overlayValue":255,"secondColour":0,"overlayOpacity":1.0,"name":"SunDamage"},{"colourType":2,"firstColour":0,"overlayValue":255,"secondColour":0,"overlayOpacity":1.0,"name":"Lipstick"},{"colourType":0,"firstColour":0,"overlayValue":255,"secondColour":0,"overlayOpacity":1.0,"name":"MolesFreckles"},{"colourType":1,"firstColour":0,"overlayValue":255,"secondColour":0,"overlayOpacity":1.0,"name":"ChestHair"},{"colourType":0,"firstColour":0,"overlayValue":255,"secondColour":0,"overlayOpacity":1.0,"name":"BodyBlemishes"},{"colourType":0,"firstColour":0,"overlayValue":255,"secondColour":0,"overlayOpacity":1.0,"name":"AddBodyBlemishes"}]', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]', '"0"'),
	(55, '[3,30]', '{"skinSecond":0,"thirdMix":0.0,"shapeFirst":0,"shapeSecond":0,"hasParent":false,"skinFirst":15,"shapeMix":0.0,"shapeThird":0,"skinMix":1.0,"skinThird":0}', '[{"colourType":0,"secondColour":0,"overlayValue":255,"name":"Blemishes","overlayOpacity":1.0,"firstColour":0},{"colourType":1,"secondColour":2,"overlayValue":7,"name":"FacialHair","overlayOpacity":1.0,"firstColour":2},{"colourType":1,"secondColour":0,"overlayValue":31,"name":"Eyebrows","overlayOpacity":1.0,"firstColour":0},{"colourType":0,"secondColour":0,"overlayValue":255,"name":"Ageing","overlayOpacity":1.0,"firstColour":0},{"colourType":2,"secondColour":0,"overlayValue":255,"name":"Makeup","overlayOpacity":1.0,"firstColour":0},{"colourType":2,"secondColour":0,"overlayValue":255,"name":"Blush","overlayOpacity":1.0,"firstColour":0},{"colourType":0,"secondColour":0,"overlayValue":255,"name":"Complexion","overlayOpacity":1.0,"firstColour":0},{"colourType":0,"secondColour":0,"overlayValue":255,"name":"SunDamage","overlayOpacity":1.0,"firstColour":0},{"colourType":2,"secondColour":0,"overlayValue":255,"name":"Lipstick","overlayOpacity":1.0,"firstColour":0},{"colourType":0,"secondColour":0,"overlayValue":255,"name":"MolesFreckles","overlayOpacity":1.0,"firstColour":0},{"colourType":1,"secondColour":0,"overlayValue":255,"name":"ChestHair","overlayOpacity":1.0,"firstColour":0},{"colourType":0,"secondColour":0,"overlayValue":255,"name":"BodyBlemishes","overlayOpacity":1.0,"firstColour":0},{"colourType":0,"secondColour":0,"overlayValue":255,"name":"AddBodyBlemishes","overlayOpacity":1.0,"firstColour":0}]', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]', '"0"'),
	(56, '[1,1]', '{"skinSecond":0,"thirdMix":0.0,"shapeFirst":0,"shapeSecond":0,"hasParent":false,"skinFirst":15,"skinMix":1.0,"shapeThird":0,"skinThird":0,"shapeMix":0.0}', '[{"colourType":0,"name":"Blemishes","overlayValue":255,"secondColour":0,"overlayOpacity":1.0,"firstColour":0},{"colourType":1,"name":"FacialHair","overlayValue":255,"secondColour":0,"overlayOpacity":0.0,"firstColour":0},{"colourType":1,"name":"Eyebrows","overlayValue":255,"secondColour":0,"overlayOpacity":1.0,"firstColour":0},{"colourType":0,"name":"Ageing","overlayValue":255,"secondColour":0,"overlayOpacity":1.0,"firstColour":0},{"colourType":2,"name":"Makeup","overlayValue":255,"secondColour":0,"overlayOpacity":1.0,"firstColour":0},{"colourType":2,"name":"Blush","overlayValue":255,"secondColour":0,"overlayOpacity":1.0,"firstColour":0},{"colourType":0,"name":"Complexion","overlayValue":255,"secondColour":0,"overlayOpacity":1.0,"firstColour":0},{"colourType":0,"name":"SunDamage","overlayValue":255,"secondColour":0,"overlayOpacity":1.0,"firstColour":0},{"colourType":2,"name":"Lipstick","overlayValue":255,"secondColour":0,"overlayOpacity":1.0,"firstColour":0},{"colourType":0,"name":"MolesFreckles","overlayValue":255,"secondColour":0,"overlayOpacity":1.0,"firstColour":0},{"colourType":1,"name":"ChestHair","overlayValue":255,"secondColour":0,"overlayOpacity":1.0,"firstColour":0},{"colourType":0,"name":"BodyBlemishes","overlayValue":255,"secondColour":0,"overlayOpacity":1.0,"firstColour":0},{"colourType":0,"name":"AddBodyBlemishes","overlayValue":255,"secondColour":0,"overlayOpacity":1.0,"firstColour":0}]', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]', '"0"'),
	(57, '[1,1]', '{"skinSecond":0,"skinFirst":15,"shapeFirst":0,"thirdMix":0.0,"shapeSecond":0,"shapeThird":0,"shapeMix":0.0,"skinThird":0,"hasParent":false,"skinMix":1.0}', '[{"colourType":0,"name":"Blemishes","firstColour":0,"overlayOpacity":1.0,"overlayValue":255,"secondColour":0},{"colourType":1,"name":"FacialHair","firstColour":0,"overlayOpacity":0.0,"overlayValue":255,"secondColour":0},{"colourType":1,"name":"Eyebrows","firstColour":0,"overlayOpacity":1.0,"overlayValue":255,"secondColour":0},{"colourType":0,"name":"Ageing","firstColour":0,"overlayOpacity":1.0,"overlayValue":255,"secondColour":0},{"colourType":2,"name":"Makeup","firstColour":0,"overlayOpacity":1.0,"overlayValue":255,"secondColour":0},{"colourType":2,"name":"Blush","firstColour":0,"overlayOpacity":1.0,"overlayValue":255,"secondColour":0},{"colourType":0,"name":"Complexion","firstColour":0,"overlayOpacity":1.0,"overlayValue":255,"secondColour":0},{"colourType":0,"name":"SunDamage","firstColour":0,"overlayOpacity":1.0,"overlayValue":255,"secondColour":0},{"colourType":2,"name":"Lipstick","firstColour":0,"overlayOpacity":1.0,"overlayValue":255,"secondColour":0},{"colourType":0,"name":"MolesFreckles","firstColour":0,"overlayOpacity":1.0,"overlayValue":255,"secondColour":0},{"colourType":1,"name":"ChestHair","firstColour":0,"overlayOpacity":1.0,"overlayValue":255,"secondColour":0},{"colourType":0,"name":"BodyBlemishes","firstColour":0,"overlayOpacity":1.0,"overlayValue":255,"secondColour":0},{"colourType":0,"name":"AddBodyBlemishes","firstColour":0,"overlayOpacity":1.0,"overlayValue":255,"secondColour":0}]', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]', '"0"');

-- Dumping structure for table nopixel.character_hospital_patients
CREATE TABLE IF NOT EXISTS `character_hospital_patients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `illness` varchar(50) NOT NULL DEFAULT 'none',
  `level` int(11) NOT NULL DEFAULT 0,
  `time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.character_hospital_patients: ~0 rows (approximately)

-- Dumping structure for table nopixel.character_housing
CREATE TABLE IF NOT EXISTS `character_housing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `housing_id` int(11) NOT NULL,
  `Street` text NOT NULL,
  `assigned` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.character_housing: ~0 rows (approximately)

-- Dumping structure for table nopixel.character_housing_keys
CREATE TABLE IF NOT EXISTS `character_housing_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `housing_id` int(11) NOT NULL,
  `giver` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.character_housing_keys: ~0 rows (approximately)

-- Dumping structure for table nopixel.character_motel
CREATE TABLE IF NOT EXISTS `character_motel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `building_type` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.character_motel: ~9 rows (approximately)
INSERT INTO `character_motel` (`id`, `cid`, `building_type`) VALUES
	(56, 48, 3),
	(57, 49, 1),
	(58, 50, 1),
	(59, 51, 3),
	(60, 52, 1),
	(61, 53, 1),
	(62, 54, 3),
	(63, 55, 3),
	(64, 56, 3),
	(65, 57, 1);

-- Dumping structure for table nopixel.character_outfits
CREATE TABLE IF NOT EXISTS `character_outfits` (
  `cid` int(11) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `slot` int(11) DEFAULT NULL,
  `drawables` text DEFAULT '{}',
  `props` text DEFAULT '{}',
  `drawtextures` text DEFAULT '{}',
  `proptextures` text DEFAULT '{}',
  `hairColor` text DEFAULT '{}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.character_outfits: ~0 rows (approximately)
INSERT INTO `character_outfits` (`cid`, `model`, `name`, `slot`, `drawables`, `props`, `drawtextures`, `proptextures`, `hairColor`) VALUES
	(55, '1885233650', 'Tommy', 1, '{"1":["masks",0],"2":["hair",48],"3":["torsos",15],"4":["legs",4],"5":["bags",0],"6":["shoes",4],"7":["neck",0],"8":["undershirts",15],"9":["vest",0],"10":["decals",0],"11":["jackets",205],"0":["face",0]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",142]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",1],["neck",0],["undershirts",0],["vest",0],["decals",0],["jackets",0]]', '[["hats",0],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', '[3,30]'),
	(48, '1885233650', 'dolela', 1, '{"1":["masks",0],"2":["hair",0],"3":["torsos",0],"4":["legs",0],"5":["bags",0],"6":["shoes",1],"7":["neck",0],"8":["undershirts",0],"9":["vest",0],"10":["decals",0],"11":["jackets",0],"0":["face",1]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",2]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",2],["neck",0],["undershirts",1],["vest",0],["decals",0],["jackets",1]]', '[["hats",0],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', '[1,1]'),
	(55, '1885233650', 'Officer', 2, '{"1":["masks",0],"2":["hair",48],"3":["torsos",17],"4":["legs",130],"5":["bags",47],"6":["shoes",25],"7":["neck",31],"8":["undershirts",122],"9":["vest",14],"10":["decals",-1],"11":["jackets",316],"0":["face",0]}', '{"1":["glasses",5],"2":["earrings",23],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",143]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",1],["bags",0],["shoes",0],["neck",2],["undershirts",0],["vest",0],["decals",0],["jackets",8]]', '[["hats",0],["glasses",4],["earrings",1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', '[3,30]');

-- Dumping structure for table nopixel.character_passes
CREATE TABLE IF NOT EXISTS `character_passes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `rank` int(11) NOT NULL DEFAULT 1,
  `name` text NOT NULL,
  `giver` text NOT NULL,
  `pass_type` text NOT NULL,
  `business_name` text NOT NULL,
  `bank` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.character_passes: ~1 rows (approximately)
INSERT INTO `character_passes` (`id`, `cid`, `rank`, `name`, `giver`, `pass_type`, `business_name`, `bank`) VALUES
	(2, 48, 5, 'awda', 'awdawd', 'police', 'police', 0);

-- Dumping structure for table nopixel.character_presets
CREATE TABLE IF NOT EXISTS `character_presets` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` int(255) DEFAULT NULL,
  `drawables` mediumtext DEFAULT NULL,
  `props` mediumtext DEFAULT NULL,
  `drawtextures` mediumtext DEFAULT NULL,
  `proptextures` mediumtext DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.character_presets: ~0 rows (approximately)

-- Dumping structure for table nopixel.character_tattoos
CREATE TABLE IF NOT EXISTS `character_tattoos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT 0,
  `tattoos` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table nopixel.character_tattoos: ~9 rows (approximately)
INSERT INTO `character_tattoos` (`id`, `cid`, `tattoos`) VALUES
	(5, 48, '[]'),
	(6, 49, '{}'),
	(7, 50, '[]'),
	(8, 51, '[]'),
	(9, 52, '{}'),
	(10, 53, '[]'),
	(11, 54, '[]'),
	(12, 55, '[[-1201369729,547139312],[-975527441,893288510],[1529191571,718674880]]'),
	(13, 56, '[]'),
	(14, 57, '{}');

-- Dumping structure for table nopixel.debt_logs
CREATE TABLE IF NOT EXISTS `debt_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT 0,
  `biller` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `number` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.debt_logs: ~0 rows (approximately)

-- Dumping structure for table nopixel.driving_tests
CREATE TABLE IF NOT EXISTS `driving_tests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `icid` int(11) DEFAULT NULL,
  `instructor` varchar(255) DEFAULT NULL,
  `timestamp` text DEFAULT NULL,
  `points` varchar(255) DEFAULT '0',
  `passed` varchar(255) DEFAULT 'false',
  `results` text DEFAULT '{}',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.driving_tests: ~0 rows (approximately)

-- Dumping structure for table nopixel.general_variables
CREATE TABLE IF NOT EXISTS `general_variables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` text DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.general_variables: ~0 rows (approximately)

-- Dumping structure for table nopixel.group_banking
CREATE TABLE IF NOT EXISTS `group_banking` (
  `group_type` mediumtext DEFAULT NULL,
  `bank` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.group_banking: ~0 rows (approximately)

-- Dumping structure for table nopixel.hospital_patients
CREATE TABLE IF NOT EXISTS `hospital_patients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `illness` text NOT NULL DEFAULT '',
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.hospital_patients: ~9 rows (approximately)
INSERT INTO `hospital_patients` (`id`, `cid`, `level`, `illness`, `time`) VALUES
	(56, 48, 0, 'none', 0),
	(57, 49, 0, 'none', 0),
	(58, 50, 0, 'none', 0),
	(59, 51, 0, 'none', 0),
	(60, 52, 0, 'none', 0),
	(61, 53, 0, 'none', 0),
	(62, 54, 0, 'none', 0),
	(63, 55, 0, 'none', 0),
	(64, 56, 0, 'none', 0),
	(65, 57, 0, 'none', 0);

-- Dumping structure for table nopixel.houses
CREATE TABLE IF NOT EXISTS `houses` (
  `id` int(11) NOT NULL DEFAULT 0,
  `cid` int(11) NOT NULL DEFAULT 0,
  `model` text DEFAULT '',
  `data` text DEFAULT '{}',
  `furniture` text DEFAULT '{}',
  `mykeys` text NOT NULL DEFAULT '{}',
  `house_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.houses: ~0 rows (approximately)

-- Dumping structure for table nopixel.housing
CREATE TABLE IF NOT EXISTS `housing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hid` varchar(50) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `information` text DEFAULT NULL,
  `objects` text DEFAULT NULL,
  `last_payment` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Lock',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.housing: ~1 rows (approximately)
INSERT INTO `housing` (`id`, `hid`, `cid`, `information`, `objects`, `last_payment`, `status`) VALUES
	(4, 'mp46', 48, '{"backdoor_coordinates":{"internal":{"x":0.0,"y":0.0,"z":0.0},"external":{"x":0.0,"y":0.0,"z":0.0}},"crafting_offset":{"x":0.0,"y":0.0,"z":0.0},"garage_coordinates":{"x":1214.6246337890626,"y":-665.727294921875,"z":62.03178405761719,"w":281.1714172363281},"charChanger_offset":{"x":4.812255859375,"y":2.57904052734375,"z":1.01525020599365},"inventory_offset":{"x":1.037841796875,"y":1.08074951171875,"z":1.01525020599365},"origin_offset":{"x":0.0,"y":0.0,"z":0.0}}', '{}', 1681891982, 'Unlock'),
	(6, 'mp62', 56, '{"inventory_offset":{"x":0.0,"y":0.0,"z":0.0},"garage_coordinates":{"x":1308.56591796875,"y":-533.3794555664063,"z":70.70143127441406,"w":347.8626708984375},"charChanger_offset":{"x":0.0,"y":0.0,"z":0.0},"origin_offset":{"x":0.0,"y":0.0,"z":0.0},"backdoor_coordinates":{"internal":{"x":0.0,"y":0.0,"z":0.0},"external":{"x":0.0,"y":0.0,"z":0.0}}}', '[{"quat":"{\\"y\\":0.0,\\"x\\":0.0,\\"w\\":1.0,\\"z\\":0.0}","id":-1,"changed":true,"realName":"v_res_d_highchair","dataK":1,"coords":"{\\"y\\":-519.9068603515625,\\"x\\":1307.055419921875,\\"z\\":15.0178518295288}","model":-1987538561}]', 1682012775, 'Unlock'),
	(7, 'mp64', 55, '{"inventory_offset":{"x":0.0,"y":0.0,"z":0.0},"garage_coordinates":{"x":0.0,"y":0.0,"z":0.0,"w":0.0},"charChanger_offset":{"x":0.0,"y":0.0,"z":0.0},"origin_offset":{"x":0.0,"y":0.0,"z":0.0},"backdoor_coordinates":{"external":{"x":0.0,"y":0.0,"z":0.0},"internal":{"x":0.0,"y":0.0,"z":0.0}}}', 'null', 1682012795, 'Unlock'),
	(8, 'mp63', 51, '{"inventory_offset":{"x":0.0,"y":0.0,"z":0.0},"garage_coordinates":{"x":0.0,"y":0.0,"z":0.0,"w":0.0},"charChanger_offset":{"x":0.0,"y":0.0,"z":0.0},"origin_offset":{"x":0.0,"y":0.0,"z":0.0},"backdoor_coordinates":{"external":{"x":0.0,"y":0.0,"z":0.0},"internal":{"x":0.0,"y":0.0,"z":0.0}}}', '{}', 1682012805, 'Unlock'),
	(9, 'mp71', 54, '{"inventory_offset":{"x":0.0,"y":0.0,"z":0.0},"garage_coordinates":{"x":1295.5428466796876,"y":-566.3937377929688,"z":70.59640502929688,"w":348.1943664550781},"charChanger_offset":{"x":0.0,"y":0.0,"z":0.0},"origin_offset":{"x":0.0,"y":0.0,"z":0.0},"backdoor_coordinates":{"external":{"x":0.0,"y":0.0,"z":0.0},"internal":{"x":0.0,"y":0.0,"z":0.0}}}', '{}', 1682012809, 'Lock'),
	(10, 'mp70', 50, '{"inventory_offset":{"x":0.0,"y":0.0,"z":0.0},"garage_coordinates":{"x":1313.083251953125,"y":-588.55908203125,"z":72.513427734375,"w":154.32713317871095},"origin_offset":{"x":0.0,"y":0.0,"z":0.0},"backdoor_coordinates":{"external":{"x":0.0,"y":0.0,"z":0.0},"internal":{"x":0.0,"y":0.0,"z":0.0}},"charChanger_offset":{"x":0.0,"y":0.0,"z":0.0}}', '[{"quat":"{\\"w\\":0.70710694789886,\\"z\\":-0.70710659027099,\\"y\\":0.0,\\"x\\":0.0}","id":-1,"dataK":1,"realName":"ex_prop_ex_tv_flat_01","changed":true,"coords":"{\\"z\\":15.6736135482788,\\"y\\":-586.9000244140625,\\"x\\":1329.9000244140626}","model":608950395}]', 1682012811, 'Unlock');

-- Dumping structure for table nopixel.housing_keys
CREATE TABLE IF NOT EXISTS `housing_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hid` varchar(50) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.housing_keys: ~1 rows (approximately)
INSERT INTO `housing_keys` (`id`, `hid`, `cid`) VALUES
	(3, 'mp46', 51),
	(4, 'dpf-2', 56);

-- Dumping structure for table nopixel.housing_price
CREATE TABLE IF NOT EXISTS `housing_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hid` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.housing_price: ~0 rows (approximately)

-- Dumping structure for table nopixel.jobs_whitelist
CREATE TABLE IF NOT EXISTS `jobs_whitelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `job` varchar(50) DEFAULT 'unemployed',
  `rank` int(11) DEFAULT 0,
  `callsign` varchar(255) NOT NULL DEFAULT '0',
  `nickname` varchar(50) NOT NULL DEFAULT '',
  `dept` varchar(50) NOT NULL DEFAULT 'police',
  `badgeImage` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.jobs_whitelist: ~7 rows (approximately)
INSERT INTO `jobs_whitelist` (`id`, `owner`, `cid`, `job`, `rank`, `callsign`, `nickname`, `dept`, `badgeImage`) VALUES
	(41, 'awdawd', 48, 'police', 5, '4202', 'your mom', 'police', NULL),
	(42, 'awdawd', 52, 'police', 7, '420', 'adada', 'police', NULL),
	(43, 'awdawd', 51, 'police', 7, '301', 'awdawd', 'police', NULL),
	(44, '2qeq2e', 54, 'ems', 5, '0', 'awdawd', 'ems', NULL),
	(45, 'awdawd', 56, 'ems', 5, '01', 'awdad', 'ems', NULL),
	(46, 'wadawd', 57, 'police', 5, '057', 'awdadw', 'police', NULL),
	(47, 'awdaw', 55, 'police', 5, '111', '', 'police', NULL),
	(48, NULL, 54, 'police', 2, '188', '', 'police', NULL);

-- Dumping structure for table nopixel.logs
CREATE TABLE IF NOT EXISTS `logs` (
  `Type` text DEFAULT NULL,
  `Steam` varchar(255) DEFAULT NULL,
  `Date` timestamp NULL DEFAULT current_timestamp(),
  `Log` text DEFAULT NULL,
  `Cid` varchar(50) DEFAULT NULL,
  `Data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.logs: ~0 rows (approximately)

-- Dumping structure for table nopixel.mdw_charges
CREATE TABLE IF NOT EXISTS `mdw_charges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `charges` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.mdw_charges: ~0 rows (approximately)

-- Dumping structure for table nopixel.mdw_evidence
CREATE TABLE IF NOT EXISTS `mdw_evidence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `identifier` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `cid` int(255) DEFAULT NULL,
  `incidentId` int(255) DEFAULT NULL,
  `tags` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.mdw_evidence: ~3 rows (approximately)
INSERT INTO `mdw_evidence` (`id`, `type`, `identifier`, `description`, `cid`, `incidentId`, `tags`) VALUES
	(2155, '', '', '', 51, 837, NULL),
	(2156, '', '', '', 51, 837, NULL),
	(2157, 'casing', 'awdada', 'awdawd', 51, 837, NULL);

-- Dumping structure for table nopixel.mdw_incidents
CREATE TABLE IF NOT EXISTS `mdw_incidents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `unix` varchar(255) DEFAULT NULL,
  `info` longtext DEFAULT NULL,
  `evidence` longtext DEFAULT NULL,
  `officers` longtext DEFAULT NULL,
  `persons` longtext DEFAULT NULL,
  `tags` longtext DEFAULT NULL,
  `vehicles` longtext DEFAULT NULL,
  `criminals` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=839 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.mdw_incidents: ~1 rows (approximately)
INSERT INTO `mdw_incidents` (`id`, `title`, `author`, `unix`, `info`, `evidence`, `officers`, `persons`, `tags`, `vehicles`, `criminals`) VALUES
	(837, 'Your mader die', 'Tommy Warren', '1681906965', 'mike hawk die', '[{"identifier":"","type":"","id":"6056","description":"","cid":"51"},{"identifier":"","type":"","id":"0442","description":"","cid":"51"},{"identifier":"awdada","type":"casing","id":"8998","description":"awdawd","cid":"51"}]', 'null', 'null', NULL, NULL, NULL),
	(838, 'TOMMY IS BIG', 'Mike Hock', '1681923515', 'HE WEIGHS 300KG', 'null', '[{"cid":51,"name":"Mike Hock","callsign":"101"}]', '[{"cid":55,"name":"Tommy Oliver"}]', NULL, NULL, '[{"cid":55,"warrant":false,"charges":[],"fine":0,"name":"Tommy Oliver","months":0,"guilty":false,"processed":false,"points":0,"warrantdate":0}]');

-- Dumping structure for table nopixel.mdw_incidents_ems
CREATE TABLE IF NOT EXISTS `mdw_incidents_ems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `unix` varchar(255) DEFAULT NULL,
  `info` longtext DEFAULT NULL,
  `ems` longtext DEFAULT NULL,
  `persons` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.mdw_incidents_ems: ~0 rows (approximately)

-- Dumping structure for table nopixel.mdw_warrants
CREATE TABLE IF NOT EXISTS `mdw_warrants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(255) DEFAULT 0,
  `incidentid` int(255) DEFAULT 0,
  `expiry` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.mdw_warrants: ~1 rows (approximately)
INSERT INTO `mdw_warrants` (`id`, `cid`, `incidentid`, `expiry`) VALUES
	(125, 51, 0, '1682771093'),
	(128, 52, 0, NULL);

-- Dumping structure for table nopixel.phone_yp
CREATE TABLE IF NOT EXISTS `phone_yp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `job` varchar(500) DEFAULT NULL,
  `phonenumber` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.phone_yp: ~0 rows (approximately)

-- Dumping structure for table nopixel.playerstattoos
CREATE TABLE IF NOT EXISTS `playerstattoos` (
  `identifier` int(11) DEFAULT NULL,
  `tattoos` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.playerstattoos: ~0 rows (approximately)

-- Dumping structure for table nopixel.player_logs
CREATE TABLE IF NOT EXISTS `player_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `steamid` varchar(255) DEFAULT NULL,
  `log` longtext DEFAULT NULL,
  `date` longtext DEFAULT NULL,
  `cid` int(255) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.player_logs: ~0 rows (approximately)

-- Dumping structure for table nopixel.player_prio
CREATE TABLE IF NOT EXISTS `player_prio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `steam_id` varchar(50) DEFAULT NULL,
  `prioType` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.player_prio: ~8 rows (approximately)
INSERT INTO `player_prio` (`id`, `steam_id`, `prioType`) VALUES
	(11, 'steam:110000112a5b10a', 0),
	(12, 'steam:1100001200daeaa', 0),
	(13, 'steam:11000010a428d0b', 0),
	(14, 'steam:11000010bacad64', 0),
	(15, 'steam:110000117b2ed6c', 0),
	(16, 'steam:110000109c8bc79', 0),
	(17, 'steam:1100001029a4487', 0),
	(18, 'steam:110000109cdee63', 0),
	(19, 'steam:11000010df02b0f', 0);

-- Dumping structure for table nopixel.racing_races
CREATE TABLE IF NOT EXISTS `racing_races` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `creator` varchar(255) NOT NULL,
  `distance` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `checkpoints` longtext NOT NULL,
  `fastest_time` int(11) DEFAULT 0,
  `fastest_name` varchar(255) DEFAULT 'N/A',
  `races` int(11) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.racing_races: ~0 rows (approximately)

-- Dumping structure for table nopixel.racing_tracks
CREATE TABLE IF NOT EXISTS `racing_tracks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checkPoints` text DEFAULT NULL,
  `track_names` text DEFAULT NULL,
  `creator` text DEFAULT NULL,
  `distance` text DEFAULT NULL,
  `races` text DEFAULT '0',
  `fastest_car` text DEFAULT NULL,
  `fastest_name` text DEFAULT NULL,
  `fastest_lap` int(11) DEFAULT NULL,
  `fastest_sprint` int(11) DEFAULT NULL,
  `fastest_sprint_name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `data` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.racing_tracks: ~21 rows (approximately)
INSERT INTO `racing_tracks` (`id`, `checkPoints`, `track_names`, `creator`, `distance`, `races`, `fastest_car`, `fastest_name`, `fastest_lap`, `fastest_sprint`, `fastest_sprint_name`, `description`, `data`, `type`) VALUES
	(1, '[{"y":-2605.67,"x":1259.73,"flare1x":1257.51,"z":43.36,"flare2y":-2614.69,"dist":9.0,"flare2x":1262.22,"flare1y":-2597.31,"start":true,"flare1z":43.97,"flare2z":44.03},{"y":-2575.16,"x":1047.62,"flare1x":1046.03,"z":36.69,"flare2y":-2583.34,"dist":8.0,"flare2x":1049.31,"flare1y":-2567.68,"start":false,"flare1z":37.37,"flare2z":37.3},{"y":-2658.28,"x":313.2,"flare1x":313.99,"z":18.02,"flare2y":-2666.57,"dist":8.0,"flare2x":312.43,"flare1y":-2650.66,"start":false,"flare1z":18.94,"flare2z":18.37},{"y":-2548.69,"x":-82.82,"flare1x":-78.96,"z":37.57,"flare2y":-2555.27,"dist":7.5,"flare2x":-87.1,"flare1y":-2542.67,"start":false,"flare1z":38.24,"flare2z":38.18},{"y":-2008.36,"x":-850.9,"flare1x":-845.49,"z":26.32,"flare2y":-2015.69,"dist":9.0,"flare2x":-856.7,"flare1y":-2001.61,"start":false,"flare1z":26.97,"flare2z":26.95},{"y":-1225.58,"x":156.56,"flare1x":155.57,"z":36.34,"flare2y":-1210.26,"dist":15.0,"flare2x":157.54,"flare1y":-1240.19,"start":false,"flare1z":36.96,"flare2z":37.0},{"y":-1233.78,"x":972.96,"flare1x":968.2,"z":41.02,"flare2y":-1225.33,"dist":9.5,"flare2x":978.05,"flare1y":-1241.56,"start":false,"flare1z":41.34,"flare2z":42.02},{"y":-1737.4,"x":1104.86,"flare1x":1111.14,"z":34.32,"flare2y":-1719.73,"dist":18.5,"flare2x":1098.29,"flare1y":-1754.43,"start":false,"flare1z":35.06,"flare2z":34.87},{"y":-943.98,"x":1988.49,"flare1x":1981.54,"z":77.76,"flare2y":-938.38,"dist":9.0,"flare2x":1995.98,"flare1y":-949.12,"start":false,"flare1z":78.36,"flare2z":78.44},{"y":-1621.03,"x":1808.5,"flare1x":1800.49,"z":117.19,"flare2y":-1617.48,"dist":9.0,"flare2x":1817.15,"flare1y":-1624.29,"start":false,"flare1z":117.82,"flare2z":117.84},{"y":-2335.48,"x":1695.06,"flare1x":1686.41,"z":102.29,"flare2y":-2334.98,"dist":9.0,"flare2x":1704.39,"flare1y":-2335.74,"start":false,"flare1z":103.07,"flare2z":102.81},{"y":-2577.73,"x":1522.81,"flare1x":1519.16,"z":50.67,"flare2y":-2586.12,"dist":9.0,"flare2x":1526.94,"flare1y":-2569.89,"start":false,"flare1z":51.35,"flare2z":51.29}]', 'Oil Rig', 'James Hollow', '8098', '31', '', '', 0, 0, '', 'Race from the rigs through to the city', NULL, ''),
	(5, '[{"flare2z":31.58,"flare2x":1904.84,"flare1x":1889.27,"x":1896.85,"flare1y":3861.69,"z":30.5,"flare1z":31.56,"flare2y":3836.06,"start":true,"y":3849.18,"dist":15.0},{"flare2z":32.95,"flare2x":1745.38,"flare1x":1731.07,"x":1737.7,"flare1y":3767.93,"z":32.03,"flare1z":33.25,"flare2y":3741.56,"start":false,"y":3754.87,"dist":15.0},{"flare2z":34.07,"flare2x":1435.06,"flare1x":1424.47,"x":1429.17,"flare1y":3609.02,"z":33.07,"flare1z":34.22,"flare2y":3580.95,"start":false,"y":3595.16,"dist":15.0},{"flare2z":36.35,"flare2x":335.87,"flare1x":318.07,"x":326.3,"flare1y":3455.47,"z":34.35,"flare1z":34.51,"flare2y":3431.4,"start":false,"y":3443.43,"dist":15.0},{"flare2z":41.76,"flare2x":231.82,"flare1x":201.82,"x":216.45,"flare1y":3136.14,"z":40.43,"flare1z":41.25,"flare2y":3136.36,"start":false,"y":3135.56,"dist":15.0},{"flare2z":54.28,"flare2x":54.99,"flare1x":41.06,"x":47.59,"flare1y":2867.93,"z":52.97,"flare1z":53.77,"flare2y":2819.91,"start":false,"y":2844.18,"dist":25.0},{"flare2z":47.14,"flare2x":-196.9,"flare1x":-178.4,"x":-187.91,"flare1y":2891.05,"z":45.89,"flare1z":46.82,"flare2y":2844.6,"start":false,"y":2868.33,"dist":25.0},{"flare2z":38.68,"flare2x":-438.69,"flare1x":-468.55,"x":-454.33,"flare1y":2824.82,"z":37.13,"flare1z":37.71,"flare2y":2784.73,"start":false,"y":2804.7,"dist":25.0},{"flare2z":44.36,"flare2x":-557.63,"flare1x":-606.86,"x":-582.72,"flare1y":2694.57,"z":41.52,"flare1z":40.85,"flare2y":2686.57,"start":false,"y":2690.16,"dist":25.0},{"flare2z":53.1,"flare2x":-607.95,"flare1x":-625.96,"x":-617.66,"flare1y":2493.54,"z":52.94,"flare1z":54.82,"flare2y":2446.92,"start":false,"y":2470.34,"dist":25.0},{"flare2z":70.35,"flare2x":-735.68,"flare1x":-768.31,"x":-752.62,"flare1y":2341.16,"z":70.56,"flare1z":72.77,"flare2y":2303.35,"start":false,"y":2322.19,"dist":25.0},{"flare2z":111.51,"flare2x":-779.44,"flare1x":-814.43,"x":-797.37,"flare1y":2129.72,"z":109.39,"flare1z":109.39,"flare2y":2094.08,"start":false,"y":2112.0,"dist":25.0},{"flare2z":160.89,"flare2x":-753.96,"flare1x":-779.08,"x":-767.05,"flare1y":1869.18,"z":160.12,"flare1z":161.39,"flare2y":1825.96,"start":false,"y":1847.69,"dist":25.0},{"flare2z":194.44,"flare2x":-826.51,"flare1x":-832.9,"x":-829.53,"flare1y":1647.94,"z":193.38,"flare1z":194.41,"flare2y":1697.53,"start":false,"y":1672.34,"dist":25.0},{"flare2z":229.59,"flare2x":-769.64,"flare1x":-818.49,"x":-794.5,"flare1y":1501.68,"z":227.67,"flare1z":227.81,"flare2y":1491.16,"start":false,"y":1496.2,"dist":25.0},{"flare2z":260.12,"flare2x":-755.63,"flare1x":-804.9,"x":-780.57,"flare1y":1237.35,"z":259.19,"flare1z":260.39,"flare2y":1245.84,"start":false,"y":1241.19,"dist":25.0},{"flare2z":238.12,"flare2x":-657.77,"flare1x":-656.39,"x":-656.63,"flare1y":971.19,"z":237.13,"flare1z":238.25,"flare2y":1021.17,"start":false,"y":995.82,"dist":25.0},{"flare2z":236.11,"flare2x":-424.94,"flare1x":-386.84,"x":-405.31,"flare1y":900.13,"z":234.03,"flare1z":234.16,"flare2y":932.45,"start":false,"y":916.26,"dist":25.0},{"flare2z":232.42,"flare2x":-360.92,"flare1x":-343.32,"x":-351.84,"flare1y":940.58,"z":231.5,"flare1z":232.71,"flare2y":987.37,"start":false,"y":963.68,"dist":25.0},{"flare2z":229.67,"flare2x":-329.48,"flare1x":-376.26,"x":-353.29,"flare1y":933.55,"z":228.68,"flare1z":229.88,"flare2y":915.91,"start":false,"y":924.67,"dist":25.0},{"flare2z":216.43,"flare2x":-351.9,"flare1x":-356.99,"x":-354.14,"flare1y":739.24,"z":214.89,"flare1z":215.55,"flare2y":788.97,"start":false,"y":763.69,"dist":25.0},{"flare2z":208.04,"flare2x":-169.43,"flare1x":-188.34,"x":-178.71,"flare1y":662.87,"z":206.44,"flare1z":206.99,"flare2y":709.15,"start":false,"y":685.54,"dist":25.0},{"flare2z":206.96,"flare2x":-56.23,"flare1x":-36.03,"x":-45.7,"flare1y":580.56,"z":205.46,"flare1z":206.12,"flare2y":626.29,"start":false,"y":603.21,"dist":25.0},{"flare2z":208.19,"flare2x":92.14,"flare1x":96.37,"x":94.57,"flare1y":607.87,"z":205.47,"flare1z":204.93,"flare2y":657.58,"start":false,"y":632.37,"dist":25.0},{"flare2z":192.75,"flare2x":260.8,"flare1x":287.27,"x":274.6,"flare1y":805.42,"z":190.11,"flare1z":189.75,"flare2y":847.73,"start":false,"y":826.5,"dist":25.0},{"flare2z":197.15,"flare2x":483.18,"flare1x":469.08,"x":476.41,"flare1y":846.73,"z":196.23,"flare1z":197.46,"flare2y":894.69,"start":false,"y":870.25,"dist":25.0},{"flare2z":208.06,"flare2x":714.38,"flare1x":744.0,"x":729.73,"flare1y":782.61,"z":205.52,"flare1z":205.14,"flare2y":822.79,"start":false,"y":802.62,"dist":25.0},{"flare2z":233.77,"flare2x":907.8,"flare1x":901.42,"x":904.87,"flare1y":965.91,"z":233.89,"flare1z":236.23,"flare2y":1015.44,"start":false,"y":990.28,"dist":25.0},{"flare2z":199.32,"flare2x":982.6,"flare1x":940.67,"x":961.09,"flare1y":845.57,"z":198.22,"flare1z":199.44,"flare2y":818.34,"start":false,"y":831.78,"dist":25.0},{"flare2z":162.2,"flare2x":982.3,"flare1x":1019.65,"x":1001.47,"flare1y":639.06,"z":159.83,"flare1z":159.68,"flare2y":672.2,"start":false,"y":655.62,"dist":25.0},{"flare2z":122.97,"flare2x":1163.94,"flare1x":1119.93,"x":1141.51,"flare1y":674.91,"z":121.37,"flare1z":122.03,"flare2y":651.21,"start":false,"y":663.05,"dist":25.0},{"flare2z":93.42,"flare2x":1099.89,"flare1x":1062.58,"x":1080.76,"flare1y":561.06,"z":93.41,"flare1z":95.53,"flare2y":527.84,"start":false,"y":544.44,"dist":25.0},{"flare2z":95.18,"flare2x":1053.93,"flare1x":1024.16,"x":1038.92,"flare1y":455.58,"z":93.06,"flare1z":93.13,"flare2y":495.7,"start":false,"y":475.27,"dist":25.0},{"flare2z":91.63,"flare2x":1141.76,"flare1x":1108.64,"x":1125.06,"flare1y":376.32,"z":89.62,"flare1z":89.78,"flare2y":413.73,"start":false,"y":394.66,"dist":25.0},{"flare2z":88.57,"flare2x":1169.3,"flare1x":1208.94,"x":1189.61,"flare1y":424.52,"z":87.58,"flare1z":88.77,"flare2y":454.99,"start":false,"y":439.79,"dist":25.0},{"flare2z":78.88,"flare2x":1371.6,"flare1x":1409.61,"x":1391.23,"flare1y":655.9,"z":77.64,"flare1z":78.59,"flare2y":688.39,"start":false,"y":672.31,"dist":25.0},{"flare2z":76.62,"flare2x":1518.61,"flare1x":1563.23,"x":1541.49,"flare1y":882.73,"z":75.6,"flare1z":76.71,"flare2y":905.29,"start":false,"y":894.32,"dist":25.0},{"flare2z":83.5,"flare2x":1618.79,"flare1x":1666.78,"x":1643.29,"flare1y":1155.26,"z":82.25,"flare1z":83.12,"flare2y":1169.29,"start":false,"y":1162.68,"dist":25.0},{"flare2z":84.0,"flare2x":1716.24,"flare1x":1764.28,"x":1740.74,"flare1y":1513.09,"z":82.77,"flare1z":83.7,"flare2y":1526.96,"start":false,"y":1520.35,"dist":25.0},{"flare2z":79.73,"flare2x":1908.31,"flare1x":1894.02,"x":1901.38,"flare1y":1604.7,"z":78.66,"flare1z":79.76,"flare2y":1652.62,"start":false,"y":1628.21,"dist":25.0},{"flare2z":75.07,"flare2x":2119.48,"flare1x":2078.35,"x":2098.84,"flare1y":1367.54,"z":73.63,"flare1z":74.34,"flare2y":1395.96,"start":false,"y":1381.2,"dist":25.0},{"flare2z":74.99,"flare2x":2187.97,"flare1x":2144.57,"x":2166.21,"flare1y":1257.86,"z":73.95,"flare1z":75.05,"flare2y":1282.69,"start":false,"y":1269.65,"dist":25.0},{"flare2z":59.32,"flare2x":2366.39,"flare1x":2400.76,"x":2384.11,"flare1y":1175.16,"z":58.76,"flare1z":60.39,"flare2y":1211.46,"start":false,"y":1193.32,"dist":25.0},{"flare2z":29.06,"flare2x":2517.96,"flare1x":2567.95,"x":2543.32,"flare1y":1625.72,"z":27.72,"flare1z":28.56,"flare2y":1624.89,"start":false,"y":1625.81,"dist":25.0},{"flare2z":20.06,"flare2x":2514.6,"flare1x":2564.47,"x":2539.87,"flare1y":2019.39,"z":18.13,"flare1z":18.38,"flare2y":2016.28,"start":false,"y":2018.52,"dist":25.0},{"flare2z":22.64,"flare2x":2579.18,"flare1x":2628.88,"x":2604.46,"flare1y":2404.81,"z":21.12,"flare1z":21.7,"flare2y":2410.19,"start":false,"y":2408.03,"dist":25.0},{"flare2z":45.61,"flare2x":2492.19,"flare1x":2534.08,"x":2513.06,"flare1y":2775.78,"z":44.1,"flare1z":44.7,"flare2y":2748.5,"start":false,"y":2762.98,"dist":25.0},{"flare2z":44.88,"flare2x":2236.04,"flare1x":2243.36,"x":2239.1,"flare1y":3037.24,"z":43.25,"flare1z":43.79,"flare2y":2987.79,"start":false,"y":3012.98,"dist":25.0},{"flare2z":44.74,"flare2x":1870.02,"flare1x":1908.14,"x":1888.92,"flare1y":3214.35,"z":43.96,"flare1z":45.33,"flare2y":3182.01,"start":false,"y":3198.93,"dist":25.0},{"flare2z":36.27,"flare2x":1686.23,"flare1x":1729.7,"x":1708.19,"flare1y":3500.9,"z":35.25,"flare1z":36.38,"flare2y":3476.21,"start":false,"y":3488.92,"dist":25.0},{"flare2z":34.79,"flare2x":1807.84,"flare1x":1833.09,"x":1820.96,"flare1y":3559.2,"z":33.42,"flare1z":34.2,"flare2y":3602.36,"start":false,"y":3580.64,"dist":25.0},{"flare2z":32.02,"flare2x":2028.82,"flare1x":2052.73,"x":2041.15,"flare1y":3687.04,"z":31.2,"flare1z":32.52,"flare2y":3730.95,"start":false,"y":3708.79,"dist":25.0},{"flare2z":31.55,"flare2x":1974.54,"flare1x":2017.9,"x":1996.37,"flare1y":3849.84,"z":30.42,"flare1z":31.43,"flare2y":3824.93,"start":false,"y":3837.87,"dist":25.0},{"flare2z":31.48,"flare2x":1949.82,"flare1x":1927.34,"x":1938.31,"flare1y":3895.49,"z":30.42,"flare1z":31.51,"flare2y":3850.83,"start":false,"y":3873.44,"dist":25.0}]', 'Sandy test cars', 'Zak Garfield', '13232', '6', '', '', 0, 0, '', 'For testing cars', NULL, ''),
	(6, '[{"y":-1038.9,"dist":8.0,"flare1x":-1566.18,"flare2z":6.43,"flare1y":-1044.98,"flare2x":-1556.36,"start":true,"z":5.62,"flare1z":6.7,"x":-1561.57,"flare2y":-1032.35},{"y":-1333.87,"dist":6.5,"flare1x":-1314.04,"flare2z":4.02,"flare1y":-1339.62,"flare2x":-1318.35,"start":false,"z":2.96,"flare1z":3.83,"x":-1316.17,"flare2y":-1327.35},{"y":-1370.17,"dist":14.0,"flare1x":-1213.36,"flare2z":3.39,"flare1y":-1382.38,"flare2x":-1225.6,"start":false,"z":2.46,"flare1z":3.44,"x":-1219.41,"flare2y":-1357.2},{"y":-1129.78,"dist":20.5,"flare1x":-783.33,"flare2z":9.97,"flare1y":-1139.9,"flare2x":-747.78,"start":false,"z":9.01,"flare1z":9.97,"x":-765.93,"flare2y":-1119.47},{"y":-1190.88,"dist":16.0,"flare1x":-503.02,"flare2z":19.39,"flare1y":-1197.77,"flare2x":-474.2,"start":false,"z":18.22,"flare1z":18.98,"x":-488.99,"flare2y":-1183.85},{"y":-1412.23,"dist":18.5,"flare1x":-257.46,"flare2z":30.57,"flare1y":-1412.64,"flare2x":-294.45,"start":false,"z":29.6,"flare1z":30.55,"x":-275.59,"flare2y":-1411.59},{"y":-884.8,"dist":17.5,"flare1x":-201.02,"flare2z":28.68,"flare1y":-869.39,"flare2x":-216.48,"start":false,"z":27.68,"flare1z":28.59,"x":-208.49,"flare2y":-900.8},{"y":-797.89,"dist":4.0,"flare1x":-450.08,"flare2z":29.8,"flare1y":-797.78,"flare2x":-458.08,"start":false,"z":28.85,"flare1z":29.81,"x":-453.71,"flare2y":-797.81},{"y":-577.05,"dist":6.0,"flare1x":-735.95,"flare2z":29.39,"flare1y":-571.42,"flare2x":-736.02,"start":false,"z":28.44,"flare1z":29.39,"x":-735.88,"flare2y":-583.42},{"y":-817.75,"dist":10.0,"flare1x":-754.52,"flare2z":22.39,"flare1y":-817.37,"flare2x":-734.55,"start":false,"z":21.24,"flare1z":22.0,"x":-744.9,"flare2y":-818.37},{"y":-916.53,"dist":8.0,"flare1x":-1119.08,"flare2z":2.2,"flare1y":-912.48,"flare2x":-1132.75,"start":false,"z":1.07,"flare1z":1.87,"x":-1125.54,"flare2y":-920.78},{"y":-897.08,"dist":17.5,"flare1x":-1278.56,"flare2z":10.65,"flare1y":-888.04,"flare2x":-1308.39,"start":false,"z":9.7,"flare1z":10.65,"x":-1293.1,"flare2y":-906.34},{"y":-423.57,"dist":7.0,"flare1x":-1831.38,"flare2z":43.67,"flare1y":-418.36,"flare2x":-1840.21,"start":false,"z":42.69,"flare1z":43.63,"x":-1835.47,"flare2y":-429.22},{"y":-446.59,"dist":11.0,"flare1x":-2022.25,"flare2z":10.64,"flare1y":-454.69,"flare2x":-2007.83,"start":false,"z":9.75,"flare1z":10.78,"x":-2015.36,"flare2y":-438.07},{"y":-873.77,"dist":8.5,"flare1x":-1591.4,"flare2z":9.43,"flare1y":-868.62,"flare2x":-1578.39,"start":false,"z":8.48,"flare1z":9.45,"x":-1585.12,"flare2y":-879.56},{"y":-974.1,"dist":8.5,"flare1x":-1644.04,"flare2z":6.88,"flare1y":-980.28,"flare2x":-1632.86,"start":false,"z":5.94,"flare1z":6.91,"x":-1638.77,"flare2y":-967.47}]', 'Beach Race', 'James Hollow', '5272', '4', '', '', 0, 0, '', 'Race through the beach and the city!', NULL, ''),
	(7, '[{"flare1z":32.26,"flare2x":-182.42,"start":true,"flare2z":31.67,"flare2y":-1504.03,"dist":6.0,"flare1y":-1511.78,"z":31.07,"y":-1508.12,"x":-177.57,"flare1x":-173.28},{"flare1z":32.46,"flare2x":-121.03,"start":false,"flare2z":32.67,"flare2y":-1437.92,"dist":4.5,"flare1y":-1445.07,"z":31.64,"y":-1441.79,"x":-123.99,"flare1x":-126.5},{"flare1z":28.51,"flare2x":5.48,"start":false,"flare2z":28.48,"flare2y":-1535.97,"dist":8.5,"flare1y":-1548.78,"z":27.58,"y":-1542.66,"x":-0.35,"flare1x":-5.7},{"flare1z":28.48,"flare2x":15.8,"start":false,"flare2z":28.5,"flare2y":-1524.45,"dist":20.5,"flare1y":-1550.93,"z":27.57,"y":-1537.92,"x":31.73,"flare1x":47.1},{"flare1z":28.57,"flare2x":108.94,"start":false,"flare2z":28.41,"flare2y":-1388.52,"dist":20.5,"flare1y":-1373.26,"z":27.57,"y":-1380.75,"x":128.3,"flare1x":146.99},{"flare1z":28.53,"flare2x":35.54,"start":false,"flare2z":28.51,"flare2y":-1270.91,"dist":8.0,"flare1y":-1254.99,"z":27.6,"y":-1262.59,"x":36.38,"flare1x":37.14},{"flare1z":36.44,"flare2x":-82.61,"start":false,"flare2z":36.44,"flare2y":-1219.32,"dist":15.0,"flare1y":-1249.31,"z":35.53,"y":-1234.68,"x":-82.15,"flare1x":-81.71},{"flare1z":40.68,"flare2x":572.91,"start":false,"flare2z":41.29,"flare2y":-1203.13,"dist":7.5,"flare1y":-1202.88,"z":40.06,"y":-1202.99,"x":580.78,"flare1x":587.9},{"flare1z":37.41,"flare2x":198.73,"start":false,"flare2z":37.18,"flare2y":-1168.41,"dist":6.0,"flare1y":-1156.42,"z":36.39,"y":-1162.06,"x":198.76,"flare1x":198.81},{"flare1z":28.48,"flare2x":34.34,"start":false,"flare2z":28.47,"flare2y":-1149.94,"dist":14.0,"flare1y":-1121.96,"z":27.56,"y":-1135.59,"x":34.96,"flare1x":35.55},{"flare1z":24.95,"flare2x":-109.32,"start":false,"flare2z":24.94,"flare2y":-1124.36,"dist":15.5,"flare1y":-1126.83,"z":24.03,"y":-1125.62,"x":-93.5,"flare1x":-78.42},{"flare1z":28.02,"flare2x":-30.15,"start":false,"flare2z":28.19,"flare2y":-1009.64,"dist":7.0,"flare1y":-1022.84,"z":27.18,"y":-1016.59,"x":-32.6,"flare1x":-34.82},{"flare1z":28.54,"flare2x":23.04,"start":false,"flare2z":28.51,"flare2y":-1031.06,"dist":7.0,"flare1y":-1035.96,"z":27.61,"y":-1033.64,"x":29.94,"flare1x":36.15},{"flare1z":28.51,"flare2x":30.59,"start":false,"flare2z":28.44,"flare2y":-945.95,"dist":7.0,"flare1y":-951.26,"z":27.57,"y":-948.73,"x":37.42,"flare1x":43.55},{"flare1z":29.91,"flare2x":67.74,"start":false,"flare2z":29.93,"flare2y":-849.93,"dist":7.0,"flare1y":-836.55,"z":29.0,"y":-842.89,"x":69.9,"flare1x":71.86},{"flare1z":30.79,"flare2x":15.7,"start":false,"flare2z":30.7,"flare2y":-786.49,"dist":13.0,"flare1y":-793.23,"z":29.83,"y":-789.95,"x":28.61,"flare1x":40.81},{"flare1z":30.11,"flare2x":94.12,"start":false,"flare2z":31.38,"flare2y":-601.93,"dist":21.5,"flare1y":-561.83,"z":29.82,"y":-581.53,"x":101.98,"flare1x":109.59},{"flare1z":30.79,"flare2x":32.2,"start":false,"flare2z":30.78,"flare2y":-668.43,"dist":7.5,"flare1y":-663.36,"z":29.87,"y":-665.77,"x":24.8,"flare1x":18.08},{"flare1z":34.67,"flare2x":-126.75,"start":false,"flare2z":34.12,"flare2y":-670.8,"dist":7.5,"flare1y":-656.57,"z":33.49,"y":-663.34,"x":-124.27,"flare1x":-122.01},{"flare1z":32.47,"flare2x":-263.02,"start":false,"flare2z":32.41,"flare2y":-624.06,"dist":7.5,"flare1y":-609.07,"z":31.53,"y":-616.2,"x":-263.3,"flare1x":-263.52},{"flare1z":33.11,"flare2x":-340.9,"start":false,"flare2z":33.11,"flare2y":-719.6,"dist":8.0,"flare1y":-718.66,"z":32.2,"y":-719.11,"x":-349.25,"flare1x":-356.87},{"flare1z":30.89,"flare2x":-380.43,"start":false,"flare2z":30.65,"flare2y":-858.02,"dist":15.0,"flare1y":-828.36,"z":29.86,"y":-842.83,"x":-378.1,"flare1x":-375.87},{"flare1z":29.15,"flare2x":-487.21,"start":false,"flare2z":29.55,"flare2y":-862.88,"dist":13.0,"flare1y":-861.05,"z":28.43,"y":-861.96,"x":-500.54,"flare1x":-513.14},{"flare1z":20.09,"flare2x":-469.12,"start":false,"flare2z":19.63,"flare2y":-1206.59,"dist":13.0,"flare1y":-1211.62,"z":18.95,"y":-1209.17,"x":-482.23,"flare1x":-494.62},{"flare1z":30.45,"flare2x":-259.22,"start":false,"flare2z":30.45,"flare2y":-1448.23,"dist":16.5,"flare1y":-1449.12,"z":29.53,"y":-1448.69,"x":-276.08,"flare1x":-292.21},{"flare1z":17.84,"flare2x":-333.06,"start":false,"flare2z":17.89,"flare2y":-1651.63,"dist":5.5,"flare1y":-1660.58,"z":16.95,"y":-1656.41,"x":-336.47,"flare1x":-339.46},{"flare1z":32.45,"flare2x":-232.51,"start":false,"flare2z":31.75,"flare2y":-1722.22,"dist":5.5,"flare1y":-1714.64,"z":31.21,"y":-1718.19,"x":-228.28,"flare1x":-224.57},{"flare1z":32.99,"flare2x":-242.62,"start":false,"flare2z":32.56,"flare2y":-1574.35,"dist":5.5,"flare1y":-1581.15,"z":31.87,"y":-1577.97,"x":-238.03,"flare1x":-233.99}]', 'South Side', 'James Hollow', '4785', '2', '', '', 0, 0, '', 'Don&#39;t get shot!', NULL, ''),
	(8, '[{"flare1x":-1203.59,"flare1y":-563.86,"y":-569.83,"start":true,"flare2x":-1193.42,"flare2y":-576.22,"flare1z":26.5,"flare2z":26.51,"z":25.69,"x":-1198.79,"dist":8.0},{"flare1x":-1432.68,"flare1y":-719.28,"y":-733.88,"start":false,"flare2x":-1435.28,"flare2y":-749.16,"flare1z":22.96,"flare2z":22.53,"z":21.94,"x":-1434.04,"dist":15.0},{"flare1x":-1728.59,"flare1y":-547.59,"y":-562.12,"start":false,"flare2x":-1724.38,"flare2y":-577.29,"flare1z":36.8,"flare2z":36.64,"z":35.91,"x":-1726.62,"dist":15.0},{"flare1x":-2034.07,"flare1y":-370.31,"y":-388.27,"start":false,"flare2x":-2028.31,"flare2y":-406.84,"flare1z":10.95,"flare2z":9.76,"z":9.55,"x":-2031.32,"dist":18.5},{"flare1x":-3045.98,"flare1y":234.79,"y":224.5,"start":false,"flare2x":-3057.13,"flare2y":213.55,"flare1z":15.8,"flare2z":15.0,"z":14.6,"x":-3051.47,"dist":12.0},{"flare1x":-3082.77,"flare1y":737.43,"y":743.28,"start":false,"flare2x":-3094.77,"flare2y":749.47,"flare1z":20.34,"flare2z":20.05,"z":19.39,"x":-3088.47,"dist":8.5},{"flare1x":-3173.76,"flare1y":919.12,"y":908.25,"start":false,"flare2x":-3182.24,"flare2y":896.68,"flare1z":13.67,"flare2z":13.93,"z":12.98,"x":-3177.96,"dist":12.0},{"flare1x":-3114.34,"flare1y":1308.59,"y":1320.21,"start":false,"flare2x":-3112.34,"flare2y":1332.51,"flare1z":19.23,"flare2z":19.42,"z":18.51,"x":-3113.29,"dist":12.0},{"flare1x":-3111.47,"flare1y":1299.57,"y":1296.44,"start":false,"flare2x":-3075.0,"flare2y":1293.36,"flare1z":19.56,"flare2z":19.31,"z":18.62,"x":-3093.58,"dist":18.5},{"flare1x":-3075.42,"flare1y":1178.18,"y":1187.7,"start":false,"flare2x":-3079.0,"flare2y":1197.86,"flare1z":20.38,"flare2z":20.29,"z":19.52,"x":-3077.09,"dist":10.0},{"flare1x":-2673.49,"flare1y":1496.32,"y":1505.57,"start":false,"flare2x":-2667.71,"flare2y":1515.47,"flare1z":114.03,"flare2z":113.82,"z":113.13,"x":-2670.66,"dist":10.0},{"flare1x":-2121.0,"flare1y":951.95,"y":960.21,"start":false,"flare2x":-2110.77,"flare2y":969.14,"flare1z":183.93,"flare2z":183.98,"z":183.14,"x":-2115.98,"dist":10.0},{"flare1x":-1769.36,"flare1y":815.5,"y":822.64,"start":false,"flare2x":-1756.11,"flare2y":830.42,"flare1z":140.0,"flare2z":141.22,"z":139.78,"x":-1762.91,"dist":10.0},{"flare1x":-1777.15,"flare1y":802.03,"y":793.29,"start":false,"flare2x":-1759.59,"flare2y":784.23,"flare1z":138.75,"flare2z":138.83,"z":137.97,"x":-1768.68,"dist":12.5},{"flare1x":-1875.47,"flare1y":131.83,"y":146.02,"start":false,"flare2x":-1852.54,"flare2y":160.86,"flare1z":79.23,"flare2z":79.55,"z":78.57,"x":-1864.14,"dist":18.5},{"flare1x":-1816.31,"flare1y":153.1,"y":155.48,"start":false,"flare2x":-1832.6,"flare2y":157.87,"flare1z":76.25,"flare2z":77.22,"z":75.9,"x":-1824.1,"dist":8.5},{"flare1x":-1519.37,"flare1y":228.81,"y":236.69,"start":false,"flare2x":-1515.27,"flare2y":245.29,"flare1z":59.92,"flare2z":60.75,"z":59.5,"x":-1517.3,"dist":8.5},{"flare1x":-1466.79,"flare1y":241.88,"y":249.59,"start":false,"flare2x":-1483.55,"flare2y":257.63,"flare1z":60.97,"flare2z":60.75,"z":60.05,"x":-1474.87,"dist":11.5},{"flare1x":-1103.63,"flare1y":390.18,"y":399.22,"start":false,"flare2x":-1100.8,"flare2y":408.97,"flare1z":68.31,"flare2z":68.68,"z":67.67,"x":-1102.17,"dist":9.5},{"flare1x":-1087.39,"flare1y":365.36,"y":365.0,"start":false,"flare2x":-1066.39,"flare2y":364.82,"flare1z":67.82,"flare2z":67.74,"z":66.96,"x":-1077.23,"dist":10.5},{"flare1x":-1087.68,"flare1y":192.48,"y":198.78,"start":false,"flare2x":-1053.06,"flare2y":205.51,"flare1z":60.31,"flare2z":60.89,"z":59.77,"x":-1070.65,"dist":18.5},{"flare1x":-811.73,"flare1y":-286.41,"y":-291.67,"start":false,"flare2x":-772.1,"flare2y":-296.93,"flare1z":36.06,"flare2z":36.42,"z":35.43,"x":-792.26,"dist":20.5},{"flare1x":-775.06,"flare1y":-347.48,"y":-328.8,"start":false,"flare2x":-759.83,"flare2y":-309.42,"flare1z":35.53,"flare2z":36.02,"z":34.96,"x":-767.49,"dist":20.5},{"flare1x":-242.08,"flare1y":-430.94,"y":-415.96,"start":false,"flare2x":-214.81,"flare2y":-400.37,"flare1z":29.05,"flare2z":30.86,"z":29.13,"x":-228.62,"dist":20.5},{"flare1x":-253.08,"flare1y":-720.33,"y":-725.46,"start":false,"flare2x":-228.17,"flare2y":-730.69,"flare1z":32.21,"flare2z":33.23,"z":31.89,"x":-240.98,"dist":13.5},{"flare1x":-314.69,"flare1y":-833.62,"y":-851.01,"start":false,"flare2x":-320.93,"flare2y":-869.08,"flare1z":30.95,"flare2z":30.86,"z":30.09,"x":-317.84,"dist":18.0},{"flare1x":-611.29,"flare1y":-809.01,"y":-819.46,"start":false,"flare2x":-629.21,"flare2y":-830.53,"flare1z":24.71,"flare2z":24.42,"z":23.75,"x":-620.1,"dist":14.0},{"flare1x":-621.88,"flare1y":-681.86,"y":-680.97,"start":false,"flare2x":-653.84,"flare2y":-680.19,"flare1z":30.63,"flare2z":30.59,"z":29.8,"x":-637.52,"dist":16.0},{"flare1x":-667.53,"flare1y":-643.28,"y":-658.95,"start":false,"flare2x":-667.88,"flare2y":-675.28,"flare1z":30.74,"flare2z":30.61,"z":29.86,"x":-667.8,"dist":16.0},{"flare1x":-838.85,"flare1y":-624.11,"y":-631.82,"start":false,"flare2x":-866.35,"flare2y":-639.95,"flare1z":29.76,"flare2z":25.68,"z":26.95,"x":-852.38,"dist":16.0},{"flare1x":-994.54,"flare1y":-439.1,"y":-447.79,"start":false,"flare2x":-985.64,"flare2y":-457.01,"flare1z":36.67,"flare2z":37.03,"z":36.03,"x":-990.32,"dist":10.0}]', 'Movie Set Race', 'Jason Anderson', '9574', '2', '', '', 0, 0, '', 'Movie Set Race', NULL, ''),
	(10, '[{"flare2y":-1473.39,"x":678.24,"flare1z":8.89,"start":true,"dist":19.5,"flare2z":8.89,"flare1y":-1463.09,"y":-1468.19,"z":7.97,"flare1x":696.63,"flare2x":659.01},{"flare2y":-1261.59,"x":617.68,"flare1z":9.06,"start":false,"dist":19.5,"flare2z":8.86,"flare1y":-1259.43,"y":-1260.55,"z":8.04,"flare1x":636.73,"flare2x":597.79},{"flare2y":-1023.86,"x":619.15,"flare1z":9.57,"start":false,"dist":19.5,"flare2z":9.57,"flare1y":-1024.85,"y":-1024.28,"z":8.65,"flare1x":638.22,"flare2x":599.23},{"flare2y":-647.42,"x":629.54,"flare1z":13.02,"start":false,"dist":9.5,"flare2z":12.82,"flare1y":-655.77,"y":-651.84,"z":12.01,"flare1x":637.72,"flare2x":620.66},{"flare2y":-406.66,"x":927.11,"flare1z":39.55,"start":false,"dist":6.5,"flare2z":40.14,"flare1y":-419.42,"y":-413.48,"z":38.89,"flare1x":928.32,"flare2x":925.92},{"flare2y":-265.62,"x":1065.7,"flare1z":57.56,"start":false,"dist":7.5,"flare2z":51.02,"flare1y":-255.21,"y":-260.23,"z":53.54,"flare1x":1069.74,"flare2x":1061.15},{"flare2y":-393.38,"x":920.85,"flare1z":40.99,"start":false,"dist":6.0,"flare2z":40.51,"flare1y":-381.69,"y":-387.12,"z":39.85,"flare1x":919.56,"flare2x":922.24},{"flare2y":-624.03,"x":580.53,"flare1z":13.33,"start":false,"dist":10.5,"flare2z":13.3,"flare1y":-618.84,"y":-621.27,"z":12.4,"flare1x":570.75,"flare2x":591.1},{"flare2y":-1014.78,"x":567.31,"flare1z":9.62,"start":false,"dist":15.5,"flare2z":9.61,"flare1y":-1015.53,"y":-1015.1,"z":8.7,"flare1x":552.24,"flare2x":583.23},{"flare2y":-1477.93,"x":623.43,"flare1z":8.87,"start":false,"dist":17.5,"flare2z":8.92,"flare1y":-1487.5,"y":-1482.77,"z":7.98,"flare1x":607.02,"flare2x":640.68}]', 'Drag Strip', 'Jimmy Nagata', '2944', '0', '', '', 0, 0, '', 'Simple drag race', NULL, ''),
	(11, '[{"flare2z":19.27,"flare1z":19.32,"y":-2535.32,"dist":8.0,"flare2y":-2539.25,"flare2x":-1037.41,"flare1y":-2531.33,"start":true,"z":18.72,"flare1x":-1051.31,"x":-1044.85},{"flare2z":18.75,"flare1z":19.43,"y":-2671.76,"dist":7.5,"flare2y":-2668.35,"flare2x":-887.0,"flare1y":-2674.96,"start":false,"z":18.53,"flare1x":-873.56,"x":-879.89},{"flare2z":13.45,"flare1z":12.16,"y":-2469.42,"dist":7.5,"flare2y":-2473.12,"flare2x":-813.59,"flare1y":-2466.93,"start":false,"z":12.19,"flare1x":-799.99,"x":-806.55},{"flare2z":12.56,"flare1z":12.48,"y":-2134.57,"dist":7.0,"flare2y":-2129.86,"flare2x":-697.98,"flare1y":-2139.35,"start":false,"z":11.95,"flare1x":-687.69,"x":-692.23},{"flare2z":26.82,"flare1z":26.1,"y":-2085.23,"dist":7.0,"flare2y":-2077.77,"flare2x":-561.44,"flare1y":-2091.74,"start":false,"z":25.86,"flare1x":-562.1,"x":-561.25},{"flare2z":24.96,"flare1z":25.04,"y":-2070.09,"dist":9.5,"flare2y":-2073.57,"flare2x":-174.07,"flare1y":-2067.09,"start":false,"z":24.43,"flare1x":-156.21,"x":-164.79},{"flare2z":27.21,"flare1z":27.39,"y":-1878.61,"dist":9.5,"flare2y":-1886.72,"flare2x":-211.25,"flare1y":-1871.63,"start":false,"z":26.75,"flare1x":-199.71,"x":-205.53},{"flare2z":29.33,"flare1z":29.97,"y":-1711.5,"dist":9.5,"flare2y":-1719.51,"flare2x":-163.34,"flare1y":-1704.44,"start":false,"z":29.1,"flare1x":-151.78,"x":-157.54},{"flare2z":32.81,"flare1z":32.89,"y":-1503.61,"dist":19.5,"flare2y":-1518.28,"flare2x":-163.01,"flare1y":-1489.74,"start":false,"z":32.27,"flare1x":-136.43,"x":-149.54},{"flare2z":22.6,"flare1z":21.74,"y":-1160.1,"dist":17.5,"flare2y":-1157.29,"flare2x":-292.4,"flare1y":-1163.95,"start":false,"z":21.59,"flare1x":-258.05,"x":-274.68},{"flare2z":28.52,"flare1z":28.41,"y":-906.04,"dist":17.0,"flare2y":-889.74,"flare2x":-141.89,"flare1y":-921.5,"start":false,"z":27.89,"flare1x":-154.01,"x":-148.02},{"flare2z":26.46,"flare1z":26.3,"y":-965.2,"dist":6.5,"flare2y":-967.22,"flare2x":-120.72,"flare1y":-963.01,"start":false,"z":25.8,"flare1x":-133.02,"x":-127.35},{"flare2z":26.08,"flare1z":26.71,"y":-1045.04,"dist":11.0,"flare2y":-1033.65,"flare2x":-130.88,"flare1y":-1055.61,"start":false,"z":25.83,"flare1x":-132.08,"x":-131.35},{"flare2z":28.23,"flare1z":27.97,"y":-1016.61,"dist":9.0,"flare2y":-1007.8,"flare2x":-30.2,"flare1y":-1024.48,"start":false,"z":27.52,"flare1x":-36.96,"x":-33.55},{"flare2z":28.64,"flare1z":28.38,"y":-1013.11,"dist":19.5,"flare2y":-994.35,"flare2x":142.84,"flare1y":-1030.93,"start":false,"z":27.93,"flare1x":129.3,"x":136.12},{"flare2z":27.02,"flare1z":29.89,"y":-1186.86,"dist":22.5,"flare2y":-1183.74,"flare2x":239.67,"flare1y":-1189.1,"start":false,"z":27.89,"flare1x":195.09,"x":217.04},{"flare2z":31.41,"flare1z":31.44,"y":-1345.07,"dist":22.5,"flare2y":-1327.75,"flare2x":376.66,"flare1y":-1361.12,"start":false,"z":30.84,"flare1x":346.47,"x":361.64},{"flare2z":28.74,"flare1z":28.11,"y":-1426.49,"dist":12.0,"flare2y":-1426.2,"flare2x":447.53,"flare1y":-1426.56,"start":false,"z":27.84,"flare1x":423.54,"x":435.1},{"flare2z":28.56,"flare1z":28.28,"y":-1657.01,"dist":15.5,"flare2y":-1670.16,"flare2x":81.45,"flare1y":-1643.71,"start":false,"z":27.84,"flare1x":65.28,"x":72.43},{"flare2z":16.41,"flare1z":16.39,"y":-1894.49,"dist":13.0,"flare2y":-1904.4,"flare2x":-470.69,"flare1y":-1885.11,"start":false,"z":15.82,"flare1x":-488.13,"x":-479.75},{"flare2z":14.02,"flare1z":14.26,"y":-2171.29,"dist":13.0,"flare2y":-2180.31,"flare2x":-753.4,"flare1y":-2162.49,"start":false,"z":13.58,"flare1x":-772.33,"x":-763.33}]', 'Get Deported', 'Zak Garfield', '5366', '0', '', '', 0, 0, '', 'Airport race', NULL, ''),
	(14, '[{"x":82.71,"y":-1851.23,"z":23.01,"flare2x":86.5,"flare1y":-1856.46,"flare1x":79.55,"start":true,"flare2y":-1845.51,"flare2z":24.39,"dist":6.5,"flare1z":23.52},{"x":225.3,"y":-1921.53,"z":22.19,"flare2x":227.85,"flare1y":-1932.94,"flare1x":223.17,"start":false,"flare2y":-1909.44,"flare2z":23.86,"dist":12.0,"flare1z":22.43},{"x":231.53,"y":-1921.34,"z":22.48,"flare2x":229.22,"flare1y":-1932.73,"flare1x":233.88,"start":false,"flare2y":-1909.2,"flare2z":23.85,"dist":12.0,"flare1z":22.99},{"x":284.04,"y":-1869.95,"z":25.16,"flare2x":277.21,"flare1y":-1874.93,"flare1x":290.47,"start":false,"flare2y":-1864.31,"flare2z":26.3,"dist":8.5,"flare1z":25.9},{"x":378.45,"y":-1756.64,"z":27.58,"flare2x":371.71,"flare1y":-1761.82,"flare1x":384.72,"start":false,"flare2y":-1750.88,"flare2z":28.67,"dist":8.5,"flare1z":28.35},{"x":466.44,"y":-1650.9,"z":27.64,"flare2x":456.86,"flare1y":-1658.91,"flare1x":475.56,"start":false,"flare2y":-1642.32,"flare2z":28.49,"dist":12.5,"flare1z":28.63},{"x":469.35,"y":-1645.79,"z":27.62,"flare2x":457.47,"flare1y":-1650.25,"flare1x":480.65,"start":false,"flare2y":-1640.91,"flare2z":28.34,"dist":12.5,"flare1z":28.75},{"x":468.46,"y":-1643.0,"z":27.57,"flare2x":451.41,"flare1y":-1639.7,"flare1x":484.78,"start":false,"flare2y":-1646.21,"flare2z":28.28,"dist":17.0,"flare1z":28.71},{"x":463.79,"y":-1636.91,"z":27.54,"flare2x":452.42,"flare1y":-1624.19,"flare1x":474.52,"start":false,"flare2y":-1650.03,"flare2z":28.47,"dist":17.0,"flare1z":28.46},{"x":398.43,"y":-1578.7,"z":27.61,"flare2x":388.58,"flare1y":-1567.95,"flare1x":407.61,"start":false,"flare2y":-1589.83,"flare2z":28.54,"dist":14.5,"flare1z":28.53},{"x":326.49,"y":-1519.81,"z":27.57,"flare2x":312.65,"flare1y":-1502.69,"flare1x":339.69,"start":false,"flare2y":-1537.34,"flare2z":27.46,"dist":22.0,"flare1z":29.5},{"x":318.89,"y":-1513.5,"z":27.59,"flare2x":302.64,"flare1y":-1498.68,"flare1x":334.65,"start":false,"flare2y":-1528.86,"flare2z":28.52,"dist":22.0,"flare1z":28.52},{"x":242.14,"y":-1446.73,"z":27.59,"flare2x":230.82,"flare1y":-1432.31,"flare1x":253.14,"start":false,"flare2y":-1461.82,"flare2z":28.5,"dist":18.5,"flare1z":28.53},{"x":156.79,"y":-1396.01,"z":27.56,"flare2x":147.84,"flare1y":-1380.11,"flare1x":165.53,"start":false,"flare2y":-1412.61,"flare2z":28.48,"dist":18.5,"flare1z":28.48},{"x":106.29,"y":-1368.39,"z":27.6,"flare2x":90.9,"flare1y":-1347.46,"flare1x":121.1,"start":false,"flare2y":-1389.8,"flare2z":28.55,"dist":26.0,"flare1z":28.51},{"x":102.03,"y":-1364.14,"z":27.61,"flare2x":82.24,"flare1y":-1347.07,"flare1x":121.16,"start":false,"flare2y":-1381.55,"flare2z":28.65,"dist":26.0,"flare1z":28.42},{"x":99.01,"y":-1358.78,"z":27.61,"flare2x":76.63,"flare1y":-1345.08,"flare1x":120.68,"start":false,"flare2y":-1372.73,"flare2z":28.56,"dist":26.0,"flare1z":28.52},{"x":96.27,"y":-1352.04,"z":27.61,"flare2x":71.61,"flare1y":-1342.92,"flare1x":120.23,"start":false,"flare2y":-1361.37,"flare2z":28.56,"dist":26.0,"flare1z":28.5},{"x":90.95,"y":-1338.98,"z":27.61,"flare2x":68.03,"flare1y":-1326.24,"flare1x":113.2,"start":false,"flare2y":-1352.01,"flare2z":28.55,"dist":26.0,"flare1z":28.52},{"x":69.62,"y":-1305.29,"z":27.81,"flare2x":53.06,"flare1y":-1296.37,"flare1x":85.41,"start":false,"flare2y":-1314.33,"flare2z":28.75,"dist":18.5,"flare1z":28.72},{"x":59.47,"y":-1264.05,"z":27.61,"flare2x":37.35,"flare1y":-1267.0,"flare1x":80.9,"start":false,"flare2y":-1260.73,"flare2z":28.55,"dist":22.0,"flare1z":28.51},{"x":60.79,"y":-1165.8,"z":27.6,"flare2x":38.47,"flare1y":-1164.34,"flare1x":82.38,"start":false,"flare2y":-1167.12,"flare2z":28.52,"dist":22.0,"flare1z":28.52},{"x":59.16,"y":-1142.16,"z":27.6,"flare2x":37.48,"flare1y":-1136.73,"flare1x":80.11,"start":false,"flare2y":-1147.61,"flare2z":28.59,"dist":22.0,"flare1z":28.47},{"x":53.18,"y":-1134.39,"z":27.6,"flare2x":39.62,"flare1y":-1117.09,"flare1x":66.19,"start":false,"flare2y":-1152.17,"flare2z":28.5,"dist":22.0,"flare1z":28.55},{"x":44.99,"y":-1132.21,"z":27.59,"flare2x":45.44,"flare1y":-1110.58,"flare1x":44.41,"start":false,"flare2y":-1154.57,"flare2z":28.45,"dist":22.0,"flare1z":28.59},{"x":10.09,"y":-1135.82,"z":26.95,"flare2x":11.69,"flare1y":-1114.22,"flare1x":8.71,"start":false,"flare2y":-1158.12,"flare2z":28.04,"dist":22.0,"flare1z":27.73},{"x":-96.23,"y":-1138.95,"z":24.12,"flare2x":-95.25,"flare1y":-1117.33,"flare1x":-97.31,"start":false,"flare2y":-1161.29,"flare2z":25.1,"dist":22.0,"flare1z":24.98},{"x":-267.47,"y":-1137.97,"z":21.37,"flare2x":-268.14,"flare1y":-1116.33,"flare1x":-267.05,"start":false,"flare2y":-1160.32,"flare2z":22.33,"dist":22.0,"flare1z":22.26},{"x":-278.92,"y":-1146.71,"z":21.35,"flare2x":-258.43,"flare1y":-1138.3,"flare1x":-298.85,"start":false,"flare2y":-1155.69,"flare2z":22.4,"dist":22.0,"flare1z":22.15},{"x":-279.35,"y":-1153.48,"z":21.34,"flare2x":-256.99,"flare1y":-1152.79,"flare1x":-300.98,"start":false,"flare2y":-1153.94,"flare2z":22.29,"dist":22.0,"flare1z":22.24},{"x":-272.11,"y":-1422.52,"z":29.58,"flare2x":-253.43,"flare1y":-1434.2,"flare1x":-290.32,"start":false,"flare2y":-1410.23,"flare2z":30.45,"dist":22.0,"flare1z":30.55},{"x":-260.88,"y":-1431.35,"z":29.6,"flare2x":-251.68,"flare1y":-1451.05,"flare1x":-269.83,"start":false,"flare2y":-1410.97,"flare2z":30.51,"dist":22.0,"flare1z":30.55},{"x":-235.08,"y":-1438.07,"z":29.62,"flare2x":-227.48,"flare1y":-1458.41,"flare1x":-242.44,"start":false,"flare2y":-1417.03,"flare2z":30.55,"dist":22.0,"flare1z":30.53},{"x":-228.51,"y":-1442.85,"z":29.62,"flare2x":-213.45,"flare1y":-1458.7,"flare1x":-243.24,"start":false,"flare2y":-1426.32,"flare2z":30.47,"dist":22.0,"flare1z":30.62},{"x":-220.63,"y":-1450.29,"z":29.67,"flare2x":-205.27,"flare1y":-1466.0,"flare1x":-235.52,"start":false,"flare2y":-1434.04,"flare2z":30.59,"dist":22.0,"flare1z":30.6},{"x":-133.05,"y":-1523.09,"z":32.45,"flare2x":-114.71,"flare1y":-1529.26,"flare1x":-150.64,"start":false,"flare2y":-1516.87,"flare2z":33.23,"dist":19.0,"flare1z":33.52},{"x":-132.4,"y":-1528.66,"z":32.5,"flare2x":-113.05,"flare1y":-1528.43,"flare1x":-151.03,"start":false,"flare2y":-1529.02,"flare2z":32.98,"dist":19.0,"flare1z":33.85},{"x":-134.12,"y":-1535.22,"z":32.5,"flare2x":-116.71,"flare1y":-1527.19,"flare1x":-150.93,"start":false,"flare2y":-1543.7,"flare2z":33.81,"dist":19.0,"flare1z":33.04},{"x":-144.08,"y":-1723.34,"z":28.28,"flare2x":-131.23,"flare1y":-1737.25,"flare1x":-156.48,"start":false,"flare2y":-1708.86,"flare2z":29.33,"dist":19.0,"flare1z":29.08},{"x":-135.74,"y":-1729.92,"z":28.4,"flare2x":-126.39,"flare1y":-1746.19,"flare1x":-144.84,"start":false,"flare2y":-1712.98,"flare2z":29.58,"dist":19.0,"flare1z":29.08},{"x":-121.45,"y":-1735.75,"z":28.43,"flare2x":-116.57,"flare1y":-1753.81,"flare1x":-126.1,"start":false,"flare2y":-1717.02,"flare2z":29.4,"dist":19.0,"flare1z":29.31},{"x":-112.8,"y":-1736.64,"z":28.41,"flare2x":-113.32,"flare1y":-1755.27,"flare1x":-112.33,"start":false,"flare2y":-1717.29,"flare2z":29.21,"dist":19.0,"flare1z":29.46},{"x":-101.38,"y":-1733.85,"z":28.11,"flare2x":-107.72,"flare1y":-1751.52,"flare1x":-95.46,"start":false,"flare2y":-1715.56,"flare2z":28.78,"dist":19.0,"flare1z":29.29},{"x":-77.26,"y":-1725.9,"z":27.59,"flare2x":-81.59,"flare1y":-1744.2,"flare1x":-73.7,"start":false,"flare2y":-1707.03,"flare2z":28.4,"dist":19.0,"flare1z":28.62},{"x":-64.36,"y":-1726.16,"z":27.6,"flare2x":-56.3,"flare1y":-1743.06,"flare1x":-72.21,"start":false,"flare2y":-1708.55,"flare2z":28.52,"dist":19.0,"flare1z":28.52},{"x":-56.84,"y":-1731.08,"z":27.45,"flare2x":-50.12,"flare1y":-1739.16,"flare1x":-62.95,"start":false,"flare2y":-1722.54,"flare2z":28.39,"dist":10.5,"flare1z":28.37},{"x":-2.07,"y":-1778.34,"z":27.09,"flare2x":4.41,"flare1y":-1783.12,"flare1x":-8.01,"start":false,"flare2y":-1773.06,"flare2z":28.3,"dist":8.0,"flare1z":27.75}]', 'Grove Street', 'Jeffery  Hayes', '2502', '0', '', '', 0, 0, '', '', NULL, ''),
	(15, '[{"flare1x":1185.49,"flare2z":34.86,"y":-2573.85,"z":33.89,"x":1179.1,"flare2y":-2579.7,"flare1z":34.73,"flare2x":1172.45,"start":true,"dist":8.5,"flare1y":-2568.79},{"flare1x":836.98,"flare2z":51.45,"y":-2612.91,"z":50.58,"x":837.89,"flare2y":-2620.08,"flare1z":51.46,"flare2x":839.55,"start":false,"dist":7.0,"flare1y":-2606.32},{"flare1x":118.79,"flare2z":19.04,"y":-2649.66,"z":18.39,"x":115.6,"flare2y":-2664.21,"flare1z":19.47,"flare2x":112.65,"start":false,"dist":14.5,"flare1y":-2635.87},{"flare1x":-901.42,"flare2z":30.53,"y":-1887.98,"z":29.04,"x":-920.41,"flare2y":-1885.95,"flare1z":29.32,"flare2x":-940.16,"start":false,"dist":19.5,"flare1y":-1890.3},{"flare1x":-385.42,"flare2z":37.61,"y":-1407.23,"z":36.71,"x":-404.53,"flare2y":-1406.33,"flare1z":37.57,"flare2x":-424.36,"start":false,"dist":19.5,"flare1y":-1408.5},{"flare1x":-387.96,"flare2z":36.71,"y":-660.2,"z":35.6,"x":-396.1,"flare2y":-660.48,"flare1z":36.27,"flare2x":-404.95,"start":false,"dist":8.5,"flare1y":-660.32},{"flare1x":-412.88,"flare2z":32.8,"y":-496.13,"z":31.93,"x":-418.63,"flare2y":-502.7,"flare1z":32.83,"flare2x":-424.56,"start":false,"dist":8.5,"flare1y":-490.35},{"flare1x":-1394.72,"flare2z":10.34,"y":-756.45,"z":9.44,"x":-1391.73,"flare2y":-782.07,"flare1z":10.3,"flare2x":-1388.25,"start":false,"dist":25.5,"flare1y":-731.48},{"flare1x":-1852.92,"flare2z":10.63,"y":-557.94,"z":9.96,"x":-1863.85,"flare2y":-577.44,"flare1z":11.05,"flare2x":-1874.77,"start":false,"dist":22.0,"flare1y":-539.25},{"flare1x":-2616.98,"flare2z":18.91,"y":-111.34,"z":17.92,"x":-2628.9,"flare2y":-122.26,"flare1z":18.71,"flare2x":-2641.06,"start":false,"dist":16.0,"flare1y":-101.19},{"flare1x":-3183.49,"flare2z":13.69,"y":909.82,"z":12.83,"x":-3184.65,"flare2y":902.02,"flare1z":13.73,"flare2x":-3185.49,"start":false,"dist":7.5,"flare1y":916.88},{"flare1x":-2631.3,"flare2z":15.79,"y":2735.05,"z":14.98,"x":-2644.41,"flare2y":2733.74,"flare1z":15.94,"flare2x":-2658.2,"start":false,"dist":13.5,"flare1y":2736.03},{"flare1x":-2223.46,"flare2z":45.47,"y":4273.02,"z":44.65,"x":-2240.79,"flare2y":4283.33,"flare1z":45.58,"flare2x":-2258.91,"start":false,"dist":20.5,"flare1y":4262.73},{"flare1x":-1894.33,"flare2z":56.23,"y":4617.26,"z":55.32,"x":-1902.16,"flare2y":4626.12,"flare1z":56.17,"flare2x":-1910.77,"start":false,"dist":12.0,"flare1y":4608.64},{"flare1x":-1264.69,"flare2z":49.83,"y":5262.78,"z":48.9,"x":-1264.28,"flare2y":5278.63,"flare1z":49.77,"flare2x":-1264.28,"start":false,"dist":15.5,"flare1y":5247.63},{"flare1x":-761.69,"flare2z":33.86,"y":5496.16,"z":33.09,"x":-769.62,"flare2y":5509.45,"flare1z":34.07,"flare2x":-778.26,"start":false,"dist":15.5,"flare1y":5483.25},{"flare1x":-140.66,"flare2z":30.29,"y":6229.17,"z":29.5,"x":-149.26,"flare2y":6238.67,"flare1z":30.48,"flare2x":-158.64,"start":false,"dist":13.0,"flare1y":6219.89},{"flare1x":1209.79,"flare2z":20.09,"y":6488.71,"z":19.21,"x":1210.58,"flare2y":6504.06,"flare1z":20.1,"flare2x":1210.98,"start":false,"dist":15.0,"flare1y":6474.08},{"flare1x":1575.04,"flare2z":24.38,"y":6402.23,"z":23.51,"x":1578.12,"flare2y":6410.57,"flare1z":24.39,"flare2x":1581.08,"start":false,"dist":8.5,"flare1y":6394.68},{"flare1x":2107.22,"flare2z":50.01,"y":6030.66,"z":49.13,"x":2112.11,"flare2y":6037.98,"flare1z":50.0,"flare2x":2117.08,"start":false,"dist":8.5,"flare1y":6024.13},{"flare1x":2479.97,"flare2z":43.94,"y":5532.05,"z":43.06,"x":2501.7,"flare2y":5542.05,"flare1z":43.95,"flare2x":2523.9,"start":false,"dist":24.0,"flare1y":5522.69},{"flare1x":2900.83,"flare2z":51.93,"y":3936.89,"z":50.16,"x":2926.68,"flare2y":3941.19,"flare1z":50.17,"flare2x":2953.18,"start":false,"dist":26.5,"flare1y":3933.09},{"flare1x":1982.87,"flare2z":53.83,"y":2564.57,"z":52.96,"x":1990.24,"flare2y":2558.2,"flare1z":53.85,"flare2x":1998.4,"start":false,"dist":10.0,"flare1y":2570.81},{"flare1x":2014.31,"flare2z":74.74,"y":1526.51,"z":73.89,"x":2030.34,"flare2y":1534.57,"flare1z":74.8,"flare2x":2046.82,"start":false,"dist":18.0,"flare1y":1519.11},{"flare1x":2395.29,"flare2z":83.02,"y":1009.46,"z":83.49,"x":2408.7,"flare2y":1021.62,"flare1z":85.65,"flare2x":2422.35,"start":false,"dist":18.0,"flare1y":998.03},{"flare1x":2408.06,"flare2z":85.3,"y":-216.64,"z":84.41,"x":2420.86,"flare2y":-223.75,"flare1z":85.31,"flare2x":2434.47,"start":false,"dist":15.0,"flare1y":-209.5},{"flare1x":1383.61,"flare2z":54.03,"y":-1081.87,"z":51.72,"x":1395.57,"flare2y":-1094.29,"flare1z":51.24,"flare2x":1408.34,"start":false,"dist":17.5,"flare1y":-1069.68},{"flare1x":985.5,"flare2z":53.06,"y":-1179.1,"z":51.9,"x":986.28,"flare2y":-1186.85,"flare1z":52.57,"flare2x":987.59,"start":false,"dist":7.5,"flare1y":-1172.0},{"flare1x":545.59,"flare2z":41.76,"y":-1187.19,"z":40.34,"x":545.38,"flare2y":-1204.04,"flare1z":40.72,"flare2x":545.58,"start":false,"dist":16.5,"flare1y":-1171.05},{"flare1x":-281.06,"flare2z":36.7,"y":-1199.56,"z":35.53,"x":-280.72,"flare2y":-1207.87,"flare1z":36.14,"flare2x":-279.92,"start":false,"dist":8.0,"flare1y":-1191.92},{"flare1x":-438.2,"flare2z":44.81,"y":-1249.31,"z":44.15,"x":-431.68,"flare2y":-1250.38,"flare1z":45.25,"flare2x":-424.42,"start":false,"dist":7.0,"flare1y":-1247.95},{"flare1x":-640.79,"flare2z":36.52,"y":-1722.83,"z":35.6,"x":-637.47,"flare2y":-1741.8,"flare1z":36.45,"flare2x":-633.62,"start":false,"dist":19.0,"flare1y":-1704.48},{"flare1x":-500.49,"flare2z":61.12,"y":-2270.46,"z":60.25,"x":-492.03,"flare2y":-2257.7,"flare1z":61.13,"flare2x":-483.49,"start":false,"dist":15.0,"flare1y":-2282.42},{"flare1x":615.32,"flare2z":43.5,"y":-2658.7,"z":43.2,"x":612.01,"flare2y":-2645.94,"flare1z":44.6,"flare2x":608.16,"start":false,"dist":13.0,"flare1y":-2670.91},{"flare1x":1238.71,"flare2z":40.23,"y":-2532.78,"z":38.73,"x":1232.29,"flare2y":-2517.48,"flare1z":39.0,"flare2x":1225.24,"start":false,"dist":16.5,"flare1y":-2547.58}]', 'Goliath', 'Jimmy Nagata', '29340', '2', '', '', 0, 0, '', 'Massive race across the city', NULL, ''),
	(16, '[{"flare2x":-247.22,"flare2z":28.57,"start":true,"z":27.74,"x":-254.05,"flare2y":-1252.73,"flare1z":28.54,"y":-1252.95,"flare1x":-260.22,"dist":6.5,"flare1y":-1253.01},{"flare2x":-302.58,"flare2z":30.63,"start":false,"z":29.77,"x":-302.62,"flare2y":-1449.9,"flare1z":30.54,"y":-1430.56,"flare1x":-302.5,"dist":19.0,"flare1y":-1411.9},{"flare2x":-544.11,"flare2z":27.59,"start":false,"z":27.7,"x":-524.83,"flare2y":-1351.07,"flare1z":29.4,"y":-1351.71,"flare1x":-506.18,"dist":19.0,"flare1y":-1352.49},{"flare2x":-521.04,"flare2z":18.41,"start":false,"z":17.88,"x":-506.65,"flare2y":-1158.71,"flare1z":18.96,"y":-1155.16,"flare1x":-492.85,"dist":14.5,"flare1y":-1151.93},{"flare2x":-501.81,"flare2z":23.49,"start":false,"z":23.87,"x":-491.32,"flare2y":-1094.55,"flare1z":25.82,"y":-1111.91,"flare1x":-481.26,"dist":20.0,"flare1y":-1128.79},{"flare2x":-299.13,"flare2z":22.57,"start":false,"z":21.72,"x":-299.62,"flare2y":-1123.45,"flare1z":22.51,"y":-1139.78,"flare1x":-300.28,"dist":16.0,"flare1y":-1155.43},{"flare2x":-258.76,"flare2z":22.32,"start":false,"z":21.51,"x":-277.1,"flare2y":-1165.48,"flare1z":22.32,"y":-1165.55,"flare1x":-294.76,"dist":18.0,"flare1y":-1165.46},{"flare2x":-249.95,"flare2z":30.52,"start":false,"z":29.69,"x":-248.11,"flare2y":-1299.28,"flare1z":30.49,"y":-1306.9,"flare1x":-246.58,"dist":7.5,"flare1y":-1313.9},{"flare2x":-119.25,"flare2z":28.53,"start":false,"z":27.73,"x":-119.26,"flare2y":-1288.81,"flare1z":28.56,"y":-1296.65,"flare1x":-119.42,"dist":7.5,"flare1y":-1303.81},{"flare2x":-87.3,"flare2z":28.51,"start":false,"z":27.72,"x":-87.4,"flare2y":-1253.44,"flare1z":28.55,"y":-1261.27,"flare1x":-87.66,"dist":7.5,"flare1y":-1268.44},{"flare2x":-44.15,"flare2z":28.55,"start":false,"z":27.74,"x":-37.32,"flare2y":-1250.36,"flare1z":28.55,"y":-1250.1,"flare1x":-31.16,"dist":6.5,"flare1y":-1250.02},{"flare2x":-54.66,"flare2z":27.94,"start":false,"z":27.13,"x":-54.65,"flare2y":-1226.36,"flare1z":27.94,"y":-1222.02,"flare1x":-54.49,"dist":4.0,"flare1y":-1218.36},{"flare2x":-84.12,"flare2z":26.84,"start":false,"z":25.91,"x":-84.32,"flare2y":-1205.07,"flare1z":26.64,"y":-1200.73,"flare1x":-84.32,"dist":4.0,"flare1y":-1197.08},{"flare2x":-123.65,"flare2z":25.0,"start":false,"z":24.22,"x":-104.38,"flare2y":-1159.26,"flare1z":25.07,"y":-1160.82,"flare1x":-85.79,"dist":19.0,"flare1y":-1162.5},{"flare2x":-57.33,"flare2z":28.65,"start":false,"z":27.83,"x":-39.33,"flare2y":-962.26,"flare1z":28.64,"y":-969.32,"flare1x":-22.02,"dist":19.0,"flare1y":-976.29},{"flare2x":31.3,"flare2z":28.6,"start":false,"z":27.74,"x":36.43,"flare2y":-947.32,"flare1z":28.51,"y":-948.82,"flare1x":40.86,"dist":5.0,"flare1y":-950.28},{"flare2x":86.75,"flare2z":30.65,"start":false,"z":29.83,"x":91.77,"flare2y":-807.64,"flare1z":30.64,"y":-811.52,"flare1x":96.15,"dist":6.0,"flare1y":-815.11},{"flare2x":272.5,"flare2z":28.58,"start":false,"z":27.76,"x":266.38,"flare2y":-834.14,"flare1z":28.56,"y":-851.96,"flare1x":260.32,"dist":18.5,"flare1y":-869.08},{"flare2x":279.68,"flare2z":28.59,"start":false,"z":27.74,"x":297.76,"flare2y":-825.92,"flare1z":28.52,"y":-831.2,"flare1x":315.15,"dist":18.5,"flare1y":-836.45},{"flare2x":384.52,"flare2z":28.58,"start":false,"z":27.75,"x":383.08,"flare2y":-665.24,"flare1z":28.54,"y":-676.48,"flare1x":381.57,"dist":11.0,"flare1y":-687.04},{"flare2x":451.05,"flare2z":27.45,"start":false,"z":26.07,"x":458.38,"flare2y":-663.09,"flare1z":26.37,"y":-663.38,"flare1x":464.99,"dist":7.0,"flare1y":-663.82},{"flare2x":448.41,"flare2z":27.74,"start":false,"z":26.92,"x":448.48,"flare2y":-593.86,"flare1z":27.73,"y":-584.02,"flare1x":448.7,"dist":9.5,"flare1y":-574.86},{"flare2x":431.21,"flare2z":28.05,"start":false,"z":27.26,"x":424.38,"flare2y":-662.16,"flare1z":28.08,"y":-662.41,"flare1x":418.21,"dist":6.5,"flare1y":-662.52},{"flare2x":394.17,"flare2z":28.54,"start":false,"z":27.7,"x":394.2,"flare2y":-765.77,"flare1z":28.49,"y":-755.44,"flare1x":394.39,"dist":10.0,"flare1y":-745.78},{"flare2x":369.85,"flare2z":28.53,"start":false,"z":27.71,"x":363.52,"flare2y":-792.95,"flare1z":28.51,"y":-792.86,"flare1x":357.86,"dist":6.0,"flare1y":-792.63},{"flare2x":416.64,"flare2z":28.54,"start":false,"z":27.87,"x":405.82,"flare2y":-890.97,"flare1z":28.82,"y":-890.5,"flare1x":395.67,"dist":10.5,"flare1y":-889.89},{"flare2x":386.82,"flare2z":29.05,"start":false,"z":27.73,"x":387.07,"flare2y":-965.71,"flare1z":28.07,"y":-954.87,"flare1x":387.46,"dist":10.5,"flare1y":-944.74},{"flare2x":273.86,"flare2z":28.6,"start":false,"z":27.82,"x":274.3,"flare2y":-963.59,"flare1z":28.65,"y":-951.76,"flare1x":274.89,"dist":11.5,"flare1y":-940.61},{"flare2x":193.89,"flare2z":28.6,"start":false,"z":27.79,"x":199.09,"flare2y":-1049.64,"flare1z":28.61,"y":-1034.68,"flare1x":204.23,"dist":15.5,"flare1y":-1020.42},{"flare2x":-166.83,"flare2z":28.59,"start":false,"z":27.77,"x":-160.94,"flare2y":-917.6,"flare1z":28.58,"y":-901.29,"flare1x":-155.11,"dist":17.0,"flare1y":-885.68},{"flare2x":-201.27,"flare2z":29.06,"start":false,"z":28.21,"x":-210.69,"flare2y":-992.87,"flare1z":29.06,"y":-1003.23,"flare1x":-220.1,"dist":14.0,"flare1y":-1013.6},{"flare2x":-199.48,"flare2z":29.54,"start":false,"z":27.68,"x":-211.51,"flare2y":-1044.49,"flare1z":27.5,"y":-1040.06,"flare1x":-222.8,"dist":12.5,"flare1y":-1035.72}]', 'City Centre Tour', 'Jason Anderson', '3736', '0', '', '', 0, 0, '', 'A fairly short track quickly going through the city centre. \n\n(Starting line at the railway tracks under the bridge outside OG Benny&#39;s)', NULL, ''),
	(17, '[{"flare1z":33.28,"flare2z":33.27,"y":3666.99,"flare1x":1864.52,"x":1861.74,"start":true,"dist":6.5,"flare2y":3672.93,"z":32.16,"flare1y":3661.55,"flare2x":1858.23},{"flare1z":31.93,"flare2z":31.98,"y":3700.9,"flare1x":1924.13,"x":1921.51,"start":false,"dist":6.5,"flare2y":3706.6,"z":30.84,"flare1y":3695.36,"flare2x":1917.6},{"flare1z":31.63,"flare2z":31.7,"y":3737.13,"flare1x":1952.24,"x":1946.87,"start":false,"dist":6.5,"flare2y":3733.31,"z":30.56,"flare1y":3740.04,"flare2x":1941.12},{"flare1z":31.61,"flare2z":31.66,"y":3802.71,"flare1x":1914.55,"x":1908.99,"start":false,"dist":6.5,"flare2y":3798.9,"z":30.53,"flare1y":3805.29,"flare2x":1903.23},{"flare1z":32.34,"flare2z":32.42,"y":3886.07,"flare1x":1878.08,"x":1872.06,"start":false,"dist":6.5,"flare2y":3883.87,"z":31.27,"flare1y":3887.19,"flare2x":1865.51},{"flare1z":32.31,"flare2z":32.41,"y":3934.15,"flare1x":1865.53,"x":1859.53,"start":false,"dist":6.5,"flare2y":3932.07,"z":31.25,"flare1y":3935.32,"flare2x":1852.95},{"flare1z":32.33,"flare2z":32.32,"y":3948.7,"flare1x":1882.4,"x":1883.13,"start":false,"dist":6.5,"flare2y":3955.6,"z":31.21,"flare1y":3942.62,"flare2x":1883.07},{"flare1z":31.63,"flare2z":31.61,"y":3871.37,"flare1x":1970.47,"x":1976.02,"start":false,"dist":6.5,"flare2y":3875.38,"z":30.51,"flare1y":3868.75,"flare2x":1981.65},{"flare1z":31.61,"flare2z":31.63,"y":3775.13,"flare1x":2025.75,"x":2031.29,"start":false,"dist":6.5,"flare2y":3778.95,"z":30.51,"flare1y":3772.52,"flare2x":2037.05},{"flare1z":32.33,"flare2z":32.4,"y":3729.96,"flare1x":2051.85,"x":2057.19,"start":false,"dist":6.5,"flare2y":3733.74,"z":31.25,"flare1y":3726.99,"flare2x":2062.96},{"flare1z":32.34,"flare2z":32.31,"y":3747.73,"flare1x":2112.8,"x":2110.4,"start":false,"dist":6.5,"flare2y":3753.63,"z":31.22,"flare1y":3742.09,"flare2x":2106.81},{"flare1z":33.46,"flare2z":33.47,"y":3827.93,"flare1x":2251.66,"x":2248.99,"start":false,"dist":6.5,"flare2y":3833.59,"z":32.36,"flare1y":3822.41,"flare2x":2245.02},{"flare1z":35.23,"flare2z":35.31,"y":3926.46,"flare1x":2396.46,"x":2392.52,"start":false,"dist":6.5,"flare2y":3930.88,"z":34.17,"flare1y":3921.75,"flare2x":2387.19},{"flare1z":37.21,"flare2z":37.33,"y":4084.98,"flare1x":2494.9,"x":2489.66,"start":false,"dist":6.5,"flare2y":4087.35,"z":36.17,"flare1y":4081.76,"flare2x":2483.16},{"flare1z":41.97,"flare2z":42.01,"y":4275.17,"flare1x":2604.25,"x":2599.94,"start":false,"dist":6.5,"flare2y":4278.88,"z":40.9,"flare1y":4270.79,"flare2x":2594.08},{"flare1z":48.35,"flare2z":48.1,"y":4397.88,"flare1x":2757.75,"x":2756.51,"start":false,"dist":6.5,"flare2y":4404.42,"z":47.12,"flare1y":4391.89,"flare2x":2754.29},{"flare1z":49.24,"flare2z":49.27,"y":4338.22,"flare1x":2791.75,"x":2797.71,"start":false,"dist":6.5,"flare2y":4340.95,"z":48.15,"flare1y":4336.75,"flare2x":2804.06},{"flare1z":49.46,"flare2z":49.45,"y":4172.41,"flare1x":2853.24,"x":2859.25,"start":false,"dist":6.5,"flare2y":4175.35,"z":48.35,"flare1y":4171.1,"flare2x":2865.53},{"flare1z":51.34,"flare2z":51.31,"y":3923.98,"flare1x":2910.38,"x":2916.53,"start":false,"dist":6.5,"flare2y":3925.27,"z":50.22,"flare1y":3924.33,"flare2x":2923.34},{"flare1z":51.94,"flare2z":51.95,"y":3642.49,"flare1x":2864.99,"x":2870.67,"start":false,"dist":6.5,"flare2y":3641.45,"z":50.84,"flare1y":3644.85,"flare2x":2877.53},{"flare1z":55.25,"flare2z":55.39,"y":3391.3,"flare1x":2769.91,"x":2775.19,"start":false,"dist":6.5,"flare2y":3389.49,"z":54.21,"flare1y":3394.51,"flare2x":2781.9},{"flare1z":53.16,"flare2z":53.14,"y":3214.42,"flare1x":2682.76,"x":2687.61,"start":false,"dist":6.5,"flare2y":3211.87,"z":52.01,"flare1y":3218.26,"flare2x":2694.08},{"flare1z":43.29,"flare2z":43.31,"y":3056.34,"flare1x":2546.94,"x":2549.94,"start":false,"dist":6.5,"flare2y":3051.28,"z":42.16,"flare1y":3061.72,"flare2x":2554.68},{"flare1z":44.2,"flare2z":44.72,"y":2984.34,"flare1x":2425.1,"x":2427.38,"start":false,"dist":6.5,"flare2y":2978.67,"z":43.42,"flare1y":2990.05,"flare2x":2431.37},{"flare1z":48.18,"flare2z":48.01,"y":2965.86,"flare1x":2359.59,"x":2355.78,"start":false,"dist":6.5,"flare2y":2959.86,"z":46.98,"flare1y":2970.65,"flare2x":2352.34},{"flare1z":44.66,"flare2z":44.67,"y":3025.16,"flare1x":2179.85,"x":2177.71,"start":false,"dist":6.5,"flare2y":3018.31,"z":43.56,"flare1y":3030.92,"flare2x":2176.69},{"flare1z":46.34,"flare2z":46.47,"y":3102.44,"flare1x":2011.82,"x":2007.94,"start":false,"dist":6.5,"flare2y":3096.21,"z":45.29,"flare1y":3107.21,"flare2x":2004.91},{"flare1z":45.56,"flare2z":45.6,"y":3178.43,"flare1x":1912.97,"x":1908.3,"start":false,"dist":6.5,"flare2y":3173.01,"z":44.47,"flare1y":3182.41,"flare2x":1903.99},{"flare1z":41.79,"flare2z":41.88,"y":3309.08,"flare1x":1817.02,"x":1811.43,"start":false,"dist":6.5,"flare2y":3305.2,"z":40.7,"flare1y":3311.59,"flare2x":1805.71},{"flare1z":37.24,"flare2z":37.26,"y":3437.58,"flare1x":1743.95,"x":1738.21,"start":false,"dist":6.5,"flare2y":3433.61,"z":36.17,"flare1y":3439.81,"flare2x":1732.53},{"flare1z":35.78,"flare2z":35.9,"y":3500.51,"flare1x":1709.14,"x":1703.8,"start":false,"dist":6.5,"flare2y":3496.85,"z":34.73,"flare1y":3503.49,"flare2x":1697.96},{"flare1z":35.78,"flare2z":35.84,"y":3494.59,"flare1x":1667.24,"x":1669.18,"start":false,"dist":6.5,"flare2y":3488.48,"z":34.7,"flare1y":3500.41,"flare2x":1672.41},{"flare1z":35.86,"flare2z":35.8,"y":3482.99,"flare1x":1552.93,"x":1551.5,"start":false,"dist":6.5,"flare2y":3476.07,"z":34.72,"flare1y":3488.96,"flare2x":1551.24},{"flare1z":35.2,"flare2z":35.21,"y":3507.35,"flare1x":1422.01,"x":1419.93,"start":false,"dist":6.5,"flare2y":3500.5,"z":34.1,"flare1y":3513.13,"flare2x":1418.93},{"flare1z":34.63,"flare2z":34.59,"y":3531.73,"flare1x":1298.76,"x":1297.27,"start":false,"dist":6.5,"flare2y":3524.85,"z":33.5,"flare1y":3537.67,"flare2x":1296.57},{"flare1z":34.45,"flare2z":34.5,"y":3549.83,"flare1x":1303.04,"x":1301.62,"start":false,"dist":6.5,"flare2y":3556.34,"z":33.36,"flare1y":3543.88,"flare2x":1299.34},{"flare1z":34.15,"flare2z":34.16,"y":3612.94,"flare1x":1478.17,"x":1476.43,"start":false,"dist":6.5,"flare2y":3619.28,"z":33.05,"flare1y":3607.08,"flare2x":1473.7},{"flare1z":33.81,"flare2z":33.68,"y":3661.43,"flare1x":1584.23,"x":1581.76,"start":false,"dist":6.5,"flare2y":3667.24,"z":32.64,"flare1y":3655.82,"flare2x":1578.03},{"flare1z":34.2,"flare2z":34.2,"y":3646.5,"flare1x":1614.05,"x":1619.44,"start":false,"dist":6.5,"flare2y":3650.4,"z":33.11,"flare1y":3643.6,"flare2x":1625.13},{"flare1z":34.72,"flare2z":34.88,"y":3571.5,"flare1x":1655.33,"x":1660.84,"start":false,"dist":6.5,"flare2y":3575.39,"z":33.69,"flare1y":3568.82,"flare2x":1666.55},{"flare1z":34.87,"flare2z":34.92,"y":3567.28,"flare1x":1692.42,"x":1689.73,"start":false,"dist":6.5,"flare2y":3573.08,"z":33.79,"flare1y":3561.78,"flare2x":1685.99},{"flare1z":33.37,"flare2z":33.33,"y":3664.97,"flare1x":1860.87,"x":1857.99,"start":false,"dist":6.5,"flare2y":3670.84,"z":32.24,"flare1y":3659.59,"flare2x":1854.37}]', 'LSPD Trial Pt1', 'Zak Garfield', '5287', '0', '', '', 0, 0, '', 'Don&#39;t Use Sport Mode For This Course!', NULL, ''),
	(18, '[{"flare2z":5.41,"flare1y":-2598.55,"start":true,"flare2x":590.6,"x":600.98,"flare1z":5.4,"dist":11.5,"y":-2603.63,"z":4.3,"flare2y":-2609.44,"flare1x":610.86},{"flare2z":5.42,"flare1y":-2574.1,"start":false,"flare2x":579.07,"x":583.72,"flare1z":5.41,"dist":5.5,"y":-2576.69,"z":4.32,"flare2y":-2580.33,"flare1x":588.13},{"flare2z":5.27,"flare1y":-2535.92,"start":false,"flare2x":535.11,"x":536.99,"flare1z":5.27,"dist":3.5,"y":-2538.24,"z":4.17,"flare2y":-2541.67,"flare1x":539.11},{"flare2z":6.3,"flare1y":-2480.96,"start":false,"flare2x":444.6,"x":448.46,"flare1z":6.41,"dist":5.5,"y":-2484.2,"z":5.28,"flare2y":-2488.67,"flare1x":452.45},{"flare2z":9.72,"flare1y":-2426.82,"start":false,"flare2x":436.0,"x":441.13,"flare1z":9.87,"dist":5.5,"y":-2423.43,"z":8.72,"flare2y":-2420.49,"flare1x":444.99},{"flare2z":13.46,"flare1y":-2426.62,"start":false,"flare2x":507.76,"x":504.96,"flare1z":13.44,"dist":5.5,"y":-2422.46,"z":12.34,"flare2y":-2417.26,"flare1x":501.98},{"flare2z":14.45,"flare1y":-2452.3,"start":false,"flare2x":518.97,"x":515.59,"flare1z":14.49,"dist":3.0,"y":-2452.61,"z":13.36,"flare2y":-2452.11,"flare1x":512.97},{"flare2z":13.5,"flare1y":-2488.65,"start":false,"flare2x":463.38,"x":462.73,"flare1z":13.48,"dist":3.0,"y":-2491.28,"z":12.37,"flare2y":-2494.64,"flare1x":463.05},{"flare2z":5.48,"flare1y":-2500.28,"start":false,"flare2x":350.68,"x":348.95,"flare1z":5.35,"dist":6.0,"y":-2505.89,"z":4.28,"flare2y":-2512.07,"flare1x":348.47},{"flare2z":5.12,"flare1y":-2532.28,"start":false,"flare2x":262.13,"x":259.14,"flare1z":5.14,"dist":6.0,"y":-2537.67,"z":4.02,"flare2y":-2543.35,"flare1x":257.51},{"flare2z":5.3,"flare1y":-2547.36,"start":false,"flare2x":198.13,"x":195.33,"flare1z":5.12,"dist":6.0,"y":-2552.76,"z":4.09,"flare2y":-2558.53,"flare1x":193.76},{"flare2z":5.29,"flare1y":-2579.05,"start":false,"flare2x":162.9,"x":158.3,"flare1z":5.29,"dist":6.0,"y":-2583.62,"z":4.18,"flare2y":-2588.09,"flare1x":155.0},{"flare2z":5.25,"flare1y":-2608.64,"start":false,"flare2x":51.86,"x":50.74,"flare1z":5.32,"dist":6.0,"y":-2614.28,"z":4.18,"flare2y":-2620.6,"flare1x":50.87},{"flare2z":5.31,"flare1y":-2614.88,"start":false,"flare2x":-23.4,"x":-24.49,"flare1z":5.27,"dist":6.0,"y":-2620.52,"z":4.18,"flare2y":-2626.84,"flare1x":-24.36},{"flare2z":5.28,"flare1y":-2617.13,"start":false,"flare2x":-127.78,"x":-128.43,"flare1z":5.29,"dist":6.0,"y":-2622.74,"z":4.18,"flare2y":-2629.13,"flare1x":-127.84},{"flare2z":5.35,"flare1y":-2617.66,"start":false,"flare2x":-232.92,"x":-233.46,"flare1z":5.33,"dist":6.0,"y":-2623.27,"z":4.23,"flare2y":-2629.66,"flare1x":-232.98},{"flare2z":5.34,"flare1y":-2612.35,"start":false,"flare2x":-277.01,"x":-272.82,"flare1z":5.35,"dist":4.0,"y":-2612.99,"z":4.24,"flare2y":-2614.34,"flare1x":-269.26},{"flare2z":5.39,"flare1y":-2574.72,"start":false,"flare2x":-284.96,"x":-280.89,"flare1z":5.21,"dist":6.0,"y":-2578.63,"z":4.19,"flare2y":-2583.57,"flare1x":-276.85},{"flare2z":5.28,"flare1y":-2513.01,"start":false,"flare2x":-364.59,"x":-361.0,"flare1z":5.29,"dist":6.0,"y":-2516.99,"z":4.18,"flare2y":-2522.32,"flare1x":-357.01},{"flare2z":5.28,"flare1y":-2445.27,"start":false,"flare2x":-447.78,"x":-444.11,"flare1z":5.3,"dist":6.0,"y":-2449.31,"z":4.18,"flare2y":-2454.57,"flare1x":-440.2},{"flare2z":5.29,"flare1y":-2440.9,"start":false,"flare2x":-431.8,"x":-435.67,"flare1z":5.3,"dist":6.0,"y":-2436.8,"z":4.19,"flare2y":-2431.7,"flare1x":-439.51},{"flare2z":5.28,"flare1y":-2500.38,"start":false,"flare2x":-362.79,"x":-366.54,"flare1z":5.29,"dist":6.0,"y":-2496.46,"z":4.18,"flare2y":-2491.25,"flare1x":-370.58},{"flare2z":5.4,"flare1y":-2559.18,"start":false,"flare2x":-291.7,"x":-294.74,"flare1z":5.19,"dist":6.0,"y":-2554.83,"z":4.18,"flare2y":-2549.18,"flare1x":-298.32},{"flare2z":5.29,"flare1y":-2548.65,"start":false,"flare2x":-226.21,"x":-225.48,"flare1z":5.3,"dist":6.0,"y":-2543.02,"z":4.19,"flare2y":-2536.66,"flare1x":-225.66},{"flare2z":5.29,"flare1y":-2553.01,"start":false,"flare2x":-186.51,"x":-192.9,"flare1z":5.31,"dist":6.0,"y":-2553.33,"z":4.19,"flare2y":-2553.02,"flare1x":-198.51},{"flare2z":5.34,"flare1y":-2603.54,"start":false,"flare2x":-187.58,"x":-193.91,"flare1z":5.25,"dist":6.0,"y":-2603.48,"z":4.19,"flare2y":-2602.51,"flare1x":-199.53},{"flare2z":5.27,"flare1y":-2628.77,"start":false,"flare2x":-158.35,"x":-157.97,"flare1z":5.31,"dist":6.0,"y":-2623.17,"z":4.18,"flare2y":-2616.77,"flare1x":-158.42},{"flare2z":5.31,"flare1y":-2628.24,"start":false,"flare2x":-78.15,"x":-77.2,"flare1z":5.26,"dist":6.0,"y":-2622.62,"z":4.18,"flare2y":-2616.25,"flare1x":-77.75},{"flare2z":5.32,"flare1y":-2624.09,"start":false,"flare2x":1.5,"x":2.86,"flare1z":5.25,"dist":6.0,"y":-2618.44,"z":4.18,"flare2y":-2612.15,"flare1x":2.68},{"flare2z":5.31,"flare1y":-2615.25,"start":false,"flare2x":94.84,"x":96.17,"flare1z":5.27,"dist":6.0,"y":-2609.61,"z":4.18,"flare2y":-2603.32,"flare1x":96.11},{"flare2z":5.31,"flare1y":-2580.58,"start":false,"flare2x":163.06,"x":167.95,"flare1z":5.27,"dist":6.0,"y":-2576.07,"z":4.18,"flare2y":-2571.9,"flare1x":171.35},{"flare2z":5.13,"flare1y":-2550.51,"start":false,"flare2x":233.91,"x":235.75,"flare1z":5.15,"dist":6.0,"y":-2544.92,"z":4.04,"flare2y":-2538.78,"flare1x":236.4},{"flare2z":5.72,"flare1y":-2511.24,"start":false,"flare2x":356.59,"x":357.75,"flare1z":5.78,"dist":6.0,"y":-2505.63,"z":4.66,"flare2y":-2499.32,"flare1x":357.95},{"flare2z":14.79,"flare1y":-2508.76,"start":false,"flare2x":495.62,"x":496.4,"flare1z":14.73,"dist":6.0,"y":-2503.14,"z":13.66,"flare2y":-2496.77,"flare1x":495.88},{"flare2z":16.38,"flare1y":-2507.69,"start":false,"flare2x":631.31,"x":632.46,"flare1z":16.56,"dist":6.0,"y":-2502.05,"z":15.39,"flare2y":-2495.7,"flare1x":631.77},{"flare2z":19.39,"flare1y":-2520.34,"start":false,"flare2x":698.96,"x":696.9,"flare1z":19.3,"dist":4.0,"y":-2517.51,"z":18.23,"flare2y":-2513.61,"flare1x":694.63},{"flare2z":18.42,"flare1y":-2570.63,"start":false,"flare2x":735.29,"x":728.89,"flare1z":18.4,"dist":6.0,"y":-2571.14,"z":17.28,"flare2y":-2570.86,"flare1x":723.29},{"flare2z":5.9,"flare1y":-2743.27,"start":false,"flare2x":732.07,"x":725.69,"flare1z":5.92,"dist":6.0,"y":-2743.9,"z":4.8,"flare2y":-2743.09,"flare1x":720.07},{"flare2z":5.66,"flare1y":-2773.5,"start":false,"flare2x":705.88,"x":706.26,"flare1z":5.68,"dist":6.0,"y":-2779.02,"z":4.56,"flare2y":-2785.41,"flare1x":707.31},{"flare2z":5.24,"flare1y":-2767.87,"start":false,"flare2x":673.95,"x":675.54,"flare1z":5.29,"dist":6.0,"y":-2773.03,"z":4.17,"flare2y":-2779.24,"flare1x":677.78},{"flare2z":5.46,"flare1y":-2736.79,"start":false,"flare2x":652.92,"x":658.82,"flare1z":5.46,"dist":6.0,"y":-2738.06,"z":4.35,"flare2y":-2740.57,"flare1x":664.31},{"flare2z":5.39,"flare1y":-2603.5,"start":false,"flare2x":596.03,"x":601.44,"flare1z":5.38,"dist":6.0,"y":-2605.7,"z":4.28,"flare2y":-2609.13,"flare1x":606.62}]', 'LSPD Trial Pt2', 'Zak Garfield', '3189', '0', '', '', 0, 0, '', 'Use Sport Mode!', NULL, ''),
	(19, '[{"flare2z":28.07,"flare1y":-547.46,"start":true,"flare2x":429.95,"x":434.84,"flare1z":27.99,"dist":5.5,"y":-544.32,"z":26.92,"flare2y":-541.04,"flare1x":438.88},{"flare2z":28.49,"flare1y":-467.54,"start":false,"flare2x":490.9,"x":496.05,"flare1z":28.5,"dist":5.5,"y":-463.91,"z":27.42,"flare2y":-460.95,"flare1x":499.7},{"flare2z":37.44,"flare1y":-315.93,"start":false,"flare2x":602.49,"x":607.79,"flare1z":37.52,"dist":5.5,"y":-312.42,"z":36.42,"flare2y":-309.73,"flare1x":611.58},{"flare2z":52.95,"flare1y":-115.69,"start":false,"flare2x":721.82,"x":728.38,"flare1z":52.55,"dist":6.5,"y":-112.08,"z":51.7,"flare2y":-109.78,"flare1x":733.39},{"flare2z":68.23,"flare1y":81.4,"start":false,"flare2x":838.95,"x":845.1,"flare1z":67.79,"dist":6.5,"y":85.72,"z":66.94,"flare2y":88.98,"flare1x":849.5},{"flare2z":79.28,"flare1y":236.16,"start":false,"flare2x":960.41,"x":966.28,"flare1z":78.7,"dist":6.5,"y":240.88,"z":77.92,"flare2y":244.62,"flare1x":970.26},{"flare2z":82.79,"flare1y":409.63,"start":false,"flare2x":1126.79,"x":1132.24,"flare1z":83.06,"dist":6.5,"y":414.48,"z":81.82,"flare2y":418.76,"flare1x":1136.03},{"flare2z":79.67,"flare1y":592.68,"start":false,"flare2x":1312.44,"x":1317.78,"flare1z":79.39,"dist":6.5,"y":597.8,"z":78.42,"flare2y":602.26,"flare1x":1321.23},{"flare2z":77.08,"flare1y":730.05,"start":false,"flare2x":1436.4,"x":1442.07,"flare1z":77.06,"dist":6.5,"y":734.16,"z":75.96,"flare2y":738.11,"flare1x":1446.6},{"flare2z":75.95,"flare1y":750.65,"start":false,"flare2x":1467.15,"x":1471.55,"flare1z":77.15,"dist":6.5,"y":755.87,"z":75.49,"flare2y":761.16,"flare1x":1474.7},{"flare2z":76.74,"flare1y":823.13,"start":false,"flare2x":1519.83,"x":1524.46,"flare1z":76.74,"dist":4.5,"y":825.55,"z":75.63,"flare2y":827.26,"flare1x":1527.83},{"flare2z":76.85,"flare1y":910.6,"start":false,"flare2x":1555.13,"x":1560.05,"flare1z":76.84,"dist":4.5,"y":911.77,"z":75.75,"flare2y":911.93,"flare1x":1564.03},{"flare2z":79.27,"flare1y":1038.47,"start":false,"flare2x":1596.92,"x":1603.73,"flare1z":79.49,"dist":6.5,"y":1041.43,"z":78.3,"flare2y":1042.86,"flare1x":1609.16},{"flare2z":83.6,"flare1y":1168.56,"start":false,"flare2x":1638.47,"x":1645.41,"flare1z":83.67,"dist":6.5,"y":1171.02,"z":82.56,"flare2y":1171.64,"flare1x":1651.1},{"flare2z":85.91,"flare1y":1387.25,"start":false,"flare2x":1687.32,"x":1694.32,"flare1z":86.09,"dist":6.5,"y":1389.44,"z":84.87,"flare2y":1389.32,"flare1x":1700.15},{"flare2z":83.67,"flare1y":1580.86,"start":false,"flare2x":1722.11,"x":1728.09,"flare1z":83.67,"dist":5.5,"y":1582.72,"z":82.55,"flare2y":1582.79,"flare1x":1732.94},{"flare2z":80.29,"flare1y":1786.2,"start":false,"flare2x":1762.77,"x":1768.75,"flare1z":80.36,"dist":5.5,"y":1788.35,"z":79.2,"flare2y":1788.59,"flare1x":1773.5},{"flare2z":72.49,"flare1y":2079.29,"start":false,"flare2x":1822.95,"x":1828.93,"flare1z":72.5,"dist":5.5,"y":2081.12,"z":71.34,"flare2y":2081.05,"flare1x":1833.81},{"flare2z":59.06,"flare1y":2265.92,"start":false,"flare2x":1853.63,"x":1859.64,"flare1z":59.06,"dist":5.5,"y":2268.37,"z":57.88,"flare2y":2268.68,"flare1x":1864.27},{"flare2z":53.88,"flare1y":2441.01,"start":false,"flare2x":1920.38,"x":1926.14,"flare1z":53.85,"dist":5.5,"y":2444.12,"z":52.76,"flare2y":2445.73,"flare1x":1930.32},{"flare2z":51.65,"flare1y":2620.48,"start":false,"flare2x":2078.1,"x":2083.67,"flare1z":51.62,"dist":7.0,"y":2626.2,"z":50.49,"flare2y":2631.17,"flare1x":2087.14},{"flare2z":41.22,"flare1y":2804.41,"start":false,"flare2x":2301.06,"x":2306.25,"flare1z":41.11,"dist":7.0,"y":2810.16,"z":40.03,"flare2y":2815.5,"flare1x":2309.6},{"flare2z":40.68,"flare1y":2965.55,"start":false,"flare2x":2496.77,"x":2502.58,"flare1z":40.52,"dist":7.0,"y":2971.15,"z":39.5,"flare2y":2975.85,"flare1x":2506.26},{"flare2z":46.55,"flare1y":3076.01,"start":false,"flare2x":2612.21,"x":2618.47,"flare1z":46.44,"dist":7.0,"y":3081.2,"z":45.44,"flare2y":3085.28,"flare1x":2622.7},{"flare2z":55.39,"flare1y":3368.78,"start":false,"flare2x":2786.89,"x":2794.0,"flare1z":55.36,"dist":7.0,"y":3371.51,"z":54.27,"flare2y":3373.59,"flare1x":2800.04},{"flare2z":55.46,"flare1y":3415.38,"start":false,"flare2x":2762.54,"x":2765.17,"flare1z":55.28,"dist":7.0,"y":3409.47,"z":54.26,"flare2y":3402.55,"flare1x":2768.14},{"flare2z":55.06,"flare1y":3439.89,"start":false,"flare2x":2705.92,"x":2707.33,"flare1z":55.08,"dist":4.5,"y":3436.28,"z":53.97,"flare2y":3431.57,"flare1x":2709.34},{"flare2z":54.82,"flare1y":3464.98,"start":false,"flare2x":2644.96,"x":2646.31,"flare1z":54.77,"dist":4.5,"y":3461.4,"z":53.67,"flare2y":3456.66,"flare1x":2648.4},{"flare2z":54.32,"flare1y":3481.93,"start":false,"flare2x":2635.52,"x":2640.27,"flare1z":54.01,"dist":4.5,"y":3483.7,"z":53.02,"flare2y":3484.92,"flare1x":2644.0},{"flare2z":51.22,"flare1y":3539.15,"start":false,"flare2x":2659.98,"x":2664.58,"flare1z":51.16,"dist":4.5,"y":3541.37,"z":50.05,"flare2y":3543.11,"flare1x":2668.07},{"flare2z":50.19,"flare1y":3542.17,"start":false,"flare2x":2695.96,"x":2694.54,"flare1z":51.36,"dist":4.5,"y":3545.84,"z":49.71,"flare2y":3550.5,"flare1x":2692.75},{"flare2z":54.04,"flare1y":3511.06,"start":false,"flare2x":2773.15,"x":2771.53,"flare1z":53.97,"dist":4.5,"y":3514.69,"z":52.91,"flare2y":3519.32,"flare1x":2769.59},{"flare2z":54.26,"flare1y":3490.83,"start":false,"flare2x":2793.34,"x":2788.53,"flare1z":54.44,"dist":4.5,"y":3489.21,"z":53.26,"flare2y":3488.2,"flare1x":2784.74},{"flare2z":55.24,"flare1y":3438.92,"start":false,"flare2x":2766.92,"x":2763.7,"flare1z":55.3,"dist":4.5,"y":3435.4,"z":54.17,"flare2y":3431.7,"flare1x":2761.54},{"flare2z":55.43,"flare1y":3410.75,"start":false,"flare2x":2755.5,"x":2753.71,"flare1z":55.58,"dist":4.5,"y":3414.29,"z":54.39,"flare2y":3418.87,"flare1x":2751.62},{"flare2z":55.36,"flare1y":3385.11,"start":false,"flare2x":2776.64,"x":2770.43,"flare1z":55.39,"dist":6.5,"y":3381.81,"z":54.27,"flare2y":3378.8,"flare1x":2765.27},{"flare2z":55.29,"flare1y":3309.9,"start":false,"flare2x":2742.8,"x":2736.2,"flare1z":55.25,"dist":6.5,"y":3306.24,"z":54.15,"flare2y":3304.01,"flare1x":2731.21},{"flare2z":49.66,"flare1y":3150.23,"start":false,"flare2x":2646.9,"x":2640.7,"flare1z":49.91,"dist":6.5,"y":3145.69,"z":48.63,"flare2y":3142.47,"flare1x":2636.48},{"flare2z":43.39,"flare1y":3063.0,"start":false,"flare2x":2557.73,"x":2554.34,"flare1z":43.65,"dist":5.0,"y":3058.5,"z":42.38,"flare2y":3054.22,"flare1x":2552.96},{"flare2z":41.74,"flare1y":3033.94,"start":false,"flare2x":2513.15,"x":2509.56,"flare1z":41.69,"dist":5.0,"y":3029.59,"z":40.59,"flare2y":3025.48,"flare1x":2507.82},{"flare2z":48.66,"flare1y":2963.12,"start":false,"flare2x":2383.74,"x":2380.41,"flare1z":48.47,"dist":5.0,"y":2959.2,"z":47.45,"flare2y":2954.96,"flare1x":2377.98},{"flare2z":48.48,"flare1y":2943.98,"start":false,"flare2x":2365.51,"x":2361.08,"flare1z":48.27,"dist":5.0,"y":2940.77,"z":47.26,"flare2y":2937.67,"flare1x":2357.76},{"flare2z":42.2,"flare1y":2873.24,"start":false,"flare2x":2306.61,"x":2301.87,"flare1z":41.9,"dist":5.0,"y":2869.82,"z":40.89,"flare2y":2867.13,"flare1x":2298.69},{"flare2z":45.13,"flare1y":2764.57,"start":false,"flare2x":2202.48,"x":2197.8,"flare1z":45.2,"dist":6.0,"y":2759.76,"z":44.09,"flare2y":2755.34,"flare1x":2194.81},{"flare2z":50.69,"flare1y":2672.37,"start":false,"flare2x":2087.94,"x":2083.13,"flare1z":50.68,"dist":6.0,"y":2667.36,"z":49.61,"flare2y":2663.03,"flare1x":2080.41},{"flare2z":53.35,"flare1y":2612.67,"start":false,"flare2x":2019.61,"x":2014.54,"flare1z":53.27,"dist":6.0,"y":2607.72,"z":52.22,"flare2y":2603.67,"flare1x":2011.67},{"flare2z":53.88,"flare1y":2460.58,"start":false,"flare2x":1889.1,"x":1883.03,"flare1z":53.84,"dist":6.0,"y":2456.17,"z":52.75,"flare2y":2453.69,"flare1x":1879.28},{"flare2z":58.73,"flare1y":2258.25,"start":false,"flare2x":1803.91,"x":1797.38,"flare1z":58.66,"dist":6.0,"y":2255.64,"z":57.64,"flare2y":2255.46,"flare1x":1792.24},{"flare2z":65.07,"flare1y":2092.78,"start":false,"flare2x":1779.28,"x":1772.78,"flare1z":65.13,"dist":6.0,"y":2090.83,"z":64.05,"flare2y":2091.48,"flare1x":1767.35},{"flare2z":71.89,"flare1y":1926.81,"start":false,"flare2x":1760.76,"x":1754.27,"flare1z":71.89,"dist":6.0,"y":1924.94,"z":70.83,"flare2y":1925.57,"flare1x":1748.82},{"flare2z":80.68,"flare1y":1683.06,"start":false,"flare2x":1733.02,"x":1726.5,"flare1z":80.6,"dist":6.0,"y":1680.99,"z":79.57,"flare2y":1681.37,"flare1x":1721.14},{"flare2z":84.39,"flare1y":1509.06,"start":false,"flare2x":1706.26,"x":1699.77,"flare1z":84.16,"dist":6.0,"y":1506.94,"z":83.16,"flare2y":1506.93,"flare1x":1694.45},{"flare2z":85.97,"flare1y":1390.4,"start":false,"flare2x":1686.41,"x":1679.89,"flare1z":86.11,"dist":6.0,"y":1388.02,"z":84.97,"flare2y":1388.06,"flare1x":1674.65},{"flare2z":81.38,"flare1y":1108.45,"start":false,"flare2x":1617.0,"x":1610.59,"flare1z":81.47,"dist":6.0,"y":1105.57,"z":80.29,"flare2y":1104.57,"flare1x":1605.65},{"flare2z":77.8,"flare1y":974.89,"start":false,"flare2x":1568.1,"x":1561.74,"flare1z":77.81,"dist":6.0,"y":971.88,"z":76.68,"flare2y":970.63,"flare1x":1556.88},{"flare2z":76.27,"flare1y":811.94,"start":false,"flare2x":1481.87,"x":1475.74,"flare1z":76.45,"dist":6.0,"y":807.81,"z":75.27,"flare2y":805.54,"flare1x":1471.72},{"flare2z":79.63,"flare1y":593.08,"start":false,"flare2x":1290.19,"x":1284.85,"flare1z":79.67,"dist":6.0,"y":588.06,"z":78.57,"flare2y":584.29,"flare1x":1282.02},{"flare2z":82.2,"flare1y":446.15,"start":false,"flare2x":1143.01,"x":1137.61,"flare1z":82.72,"dist":6.0,"y":441.46,"z":81.39,"flare2y":437.87,"flare1x":1134.34},{"flare2z":79.92,"flare1y":264.23,"start":false,"flare2x":967.86,"x":962.38,"flare1z":80.76,"dist":6.0,"y":259.78,"z":79.21,"flare2y":256.34,"flare1x":958.85},{"flare2z":72.59,"flare1y":161.89,"start":false,"flare2x":880.96,"x":875.09,"flare1z":73.39,"dist":6.0,"y":157.52,"z":71.84,"flare2y":154.71,"flare1x":871.38},{"flare2z":63.32,"flare1y":24.29,"start":false,"flare2x":783.47,"x":777.42,"flare1z":64.07,"dist":6.0,"y":20.2,"z":62.55,"flare2y":17.8,"flare1x":773.4},{"flare2z":44.75,"flare1y":-190.82,"start":false,"flare2x":668.23,"x":662.1,"flare1z":45.25,"dist":6.0,"y":-194.9,"z":43.85,"flare2y":-197.13,"flare1x":658.04},{"flare2z":35.28,"flare1y":-329.01,"start":false,"flare2x":578.14,"x":572.12,"flare1z":35.38,"dist":6.0,"y":-333.57,"z":34.13,"flare2y":-336.2,"flare1x":568.52},{"flare2z":28.48,"flare1y":-456.78,"start":false,"flare2x":482.88,"x":476.88,"flare1z":28.07,"dist":6.0,"y":-461.31,"z":27.1,"flare2y":-463.95,"flare1x":473.26},{"flare2z":28.15,"flare1y":-573.12,"start":false,"flare2x":402.98,"x":397.57,"flare1z":27.94,"dist":6.0,"y":-576.72,"z":26.92,"flare2y":-580.16,"flare1x":393.26},{"flare2z":28.03,"flare1y":-577.97,"start":false,"flare2x":378.11,"x":377.44,"flare1z":28.01,"dist":4.5,"y":-582.09,"z":26.91,"flare2y":-586.95,"flare1x":377.59},{"flare2z":28.01,"flare1y":-612.57,"start":false,"flare2x":368.01,"x":365.42,"flare1z":28.1,"dist":4.5,"y":-609.41,"z":26.96,"flare2y":-605.25,"flare1x":362.78},{"flare2z":28.16,"flare1y":-599.37,"start":false,"flare2x":392.99,"x":398.59,"flare1z":27.99,"dist":6.0,"y":-595.86,"z":26.96,"flare2y":-592.73,"flare1x":402.99},{"flare2z":28.16,"flare1y":-553.82,"start":false,"flare2x":425.97,"x":431.34,"flare1z":27.96,"dist":6.0,"y":-550.2,"z":26.94,"flare2y":-546.71,"flare1x":435.64}]', 'LSPD Trial Pt3', 'Zak Garfield', '10174', '1', '', '', 0, 0, '', 'Use Sport Mode!', NULL, ''),
	(20, '[{"flare2x":2605.98,"flare2z":106.17,"dist":6.5,"flare1z":106.14,"z":105.16,"x":2612.12,"y":451.75,"flare2y":451.53,"start":true,"flare1y":452.02,"flare1x":2618.97},{"flare2x":2422.27,"flare2z":82.79,"dist":7.5,"flare1z":82.19,"z":81.5,"x":2428.21,"y":1029.02,"flare2y":1025.05,"start":false,"flare1y":1033.17,"flare1x":2434.87},{"flare2x":2442.21,"flare2z":52.32,"dist":7.5,"flare1z":52.27,"z":51.24,"x":2448.13,"y":1264.15,"flare2y":1268.2,"start":false,"flare1y":1258.73,"flare1x":2453.83},{"flare2x":2531.45,"flare2z":19.07,"dist":8.5,"flare1z":19.11,"z":18.09,"x":2539.61,"y":2048.49,"flare2y":2047.53,"start":false,"flare1y":2047.29,"flare1x":2548.45},{"flare2x":2464.02,"flare2z":47.69,"dist":6.5,"flare1z":47.66,"z":46.68,"x":2468.97,"y":2831.81,"flare2y":2828.17,"start":false,"flare1y":2835.58,"flare1x":2474.69},{"flare2x":2456.1,"flare2z":47.8,"dist":8.0,"flare1z":47.39,"z":46.6,"x":2462.41,"y":2883.54,"flare2y":2887.86,"start":false,"flare1y":2878.59,"flare1x":2469.13},{"flare2x":2916.89,"flare2z":51.9,"dist":11.5,"flare1z":51.83,"z":50.86,"x":2928.01,"y":3757.38,"flare2y":3758.87,"start":false,"flare1y":3753.31,"flare1x":2939.21},{"flare2x":2803.99,"flare2z":48.77,"dist":15.0,"flare1z":48.74,"z":47.76,"x":2817.97,"y":4379.08,"flare2y":4374.7,"start":false,"flare1y":4383.67,"flare1x":2832.62},{"flare2x":2840.78,"flare2z":48.33,"dist":9.0,"flare1z":48.33,"z":47.33,"x":2843.8,"y":4422.86,"flare2y":4430.96,"start":false,"flare1y":4414.04,"flare1x":2846.91},{"flare2x":2968.31,"flare2z":52.35,"dist":9.0,"flare1z":51.8,"z":51.08,"x":2976.67,"y":4633.01,"flare2y":4630.6,"start":false,"flare1y":4634.04,"flare1x":2985.97},{"flare2x":2794.72,"flare2z":34.95,"dist":9.0,"flare1z":34.58,"z":33.7,"x":2802.04,"y":4910.96,"flare2y":4906.31,"start":false,"flare1y":4914.98,"flare1x":2810.5},{"flare2x":2707.0,"flare2z":43.97,"dist":9.0,"flare1z":43.53,"z":42.76,"x":2710.51,"y":5124.84,"flare2y":5116.94,"start":false,"flare1y":5133.21,"flare1x":2714.68},{"flare2x":2381.09,"flare2z":51.62,"dist":9.0,"flare1z":51.61,"z":50.65,"x":2389.71,"y":5191.3,"flare2y":5190.56,"start":false,"flare1y":5191.56,"flare1x":2399.06},{"flare2x":2183.02,"flare2z":60.24,"dist":9.0,"flare1z":60.31,"z":59.26,"x":2185.67,"y":5218.11,"flare2y":5209.86,"start":false,"flare1y":5226.71,"flare1x":2189.34},{"flare2x":2004.98,"flare2z":41.82,"dist":9.0,"flare1z":41.9,"z":40.85,"x":1998.54,"y":5093.66,"flare2y":5099.44,"start":false,"flare1y":5087.87,"flare1x":1991.19},{"flare2x":2202.96,"flare2z":44.03,"dist":9.0,"flare1z":44.06,"z":43.04,"x":2194.44,"y":4813.95,"flare2y":4812.48,"start":false,"flare1y":4815.91,"flare1x":2185.29},{"flare2x":2231.28,"flare2z":39.03,"dist":9.0,"flare1z":39.11,"z":38.05,"x":2229.85,"y":4737.48,"flare2y":4746.02,"start":false,"flare1y":4728.41,"flare1x":2227.54},{"flare2x":2477.13,"flare2z":36.58,"dist":9.0,"flare1z":36.57,"z":35.58,"x":2469.94,"y":4171.7,"flare2y":4176.54,"start":false,"flare1y":4167.27,"flare1x":2461.7},{"flare2x":2577.02,"flare2z":41.21,"dist":9.0,"flare1z":41.26,"z":40.25,"x":2584.44,"y":4253.72,"flare2y":4258.21,"start":false,"flare1y":4247.82,"flare1x":2591.72},{"flare2x":2815.97,"flare2z":49.32,"dist":11.5,"flare1z":49.46,"z":48.4,"x":2805.67,"y":4311.17,"flare2y":4315.49,"start":false,"flare1y":4307.64,"flare1x":2794.35},{"flare2x":2204.78,"flare2z":45.22,"dist":12.5,"flare1z":45.01,"z":44.17,"x":2196.29,"y":2758.64,"flare2y":2749.85,"start":false,"flare1y":2769.5,"flare1x":2189.32},{"flare2x":1885.12,"flare2z":53.99,"dist":12.5,"flare1z":53.14,"z":52.56,"x":1873.79,"y":2403.26,"flare2y":2398.65,"start":false,"flare1y":2410.49,"flare1x":1863.12},{"flare2x":2544.43,"flare2z":106.43,"dist":8.5,"flare1z":106.68,"z":105.61,"x":2536.9,"y":627.32,"flare2y":630.62,"start":false,"flare1y":626.05,"flare1x":2528.06},{"flare2x":2534.43,"flare2z":100.89,"dist":8.5,"flare1z":100.89,"z":99.82,"x":2526.21,"y":142.82,"flare2y":142.08,"start":false,"flare1y":146.24,"flare1x":2517.95},{"flare2x":2385.25,"flare2z":84.29,"dist":8.0,"flare1z":84.32,"z":83.3,"x":2379.15,"y":-244.94,"flare2y":-249.57,"start":false,"flare1y":-239.31,"flare1x":2372.97},{"flare2x":2483.74,"flare2z":68.28,"dist":9.0,"flare1z":68.46,"z":67.35,"x":2478.48,"y":-516.47,"flare2y":-509.57,"start":false,"flare1y":-523.04,"flare1x":2471.79},{"flare2x":1450.07,"flare2z":61.3,"dist":9.0,"flare1z":61.38,"z":60.24,"x":1444.2,"y":-1526.31,"flare2y":-1532.74,"start":false,"flare1y":-1518.16,"flare1x":1439.51},{"flare2x":1113.19,"flare2z":33.85,"dist":12.0,"flare1z":34.01,"z":32.93,"x":1124.01,"y":-1682.71,"flare2y":-1687.04,"start":false,"flare1y":-1678.12,"flare1x":1135.47},{"flare2x":1076.95,"flare2z":28.87,"dist":12.0,"flare1z":28.7,"z":27.79,"x":1088.58,"y":-1413.83,"flare2y":-1414.64,"start":false,"flare1y":-1414.06,"flare1x":1100.94},{"flare2x":1144.63,"flare2z":38.39,"dist":12.0,"flare1z":40.54,"z":38.46,"x":1150.9,"y":-1223.06,"flare2y":-1213.31,"start":false,"flare1y":-1234.09,"flare1x":1156.44},{"flare2x":2570.66,"flare2z":98.09,"dist":6.5,"flare1z":98.05,"z":97.09,"x":2576.66,"y":186.66,"flare2y":188.01,"start":false,"flare1y":184.68,"flare1x":2583.22}]', 'Redline Rush', 'Zak Garfield', '16908', '1', '', '', 0, 0, '', 'Head to the Highway Store on the right side of the map for a rush! Long straights and sharp corners perfect for high speeds!', NULL, ''),
	(21, '[{"flare2x":2695.06,"flare2z":23.92,"dist":7.5,"flare1x":2680.07,"start":true,"flare1z":23.76,"z":23.22,"flare2y":1683.13,"x":2687.19,"y":1682.76,"flare1y":1682.66},{"flare2x":2696.42,"flare2z":23.68,"dist":6.5,"flare1x":2683.43,"start":false,"flare1z":23.79,"z":23.13,"flare2y":1604.63,"x":2689.56,"y":1604.26,"flare1y":1604.18},{"flare2x":2696.98,"flare2z":23.63,"dist":6.5,"flare1x":2683.99,"start":false,"flare1z":23.83,"z":23.13,"flare2y":1473.85,"x":2690.13,"y":1473.49,"flare1y":1473.41},{"flare2x":2696.4,"flare2z":23.79,"dist":6.5,"flare1x":2683.41,"start":false,"flare1z":23.82,"z":23.19,"flare2y":1402.31,"x":2689.54,"y":1401.86,"flare1y":1401.7},{"flare2x":2695.13,"flare2z":23.73,"dist":5.0,"flare1x":2685.13,"start":false,"flare1z":23.78,"z":23.14,"flare2y":1384.53,"x":2689.77,"y":1384.3,"flare1y":1384.36}]', 'Drag Line', 'Jimmy Nagata', '597', '0', '', '', 0, 0, '', 'A really simple drag line', NULL, ''),
	(22, '[{"flare2x":823.17,"flare1y":1267.68,"y":1275.3,"x":823.87,"flare1z":359.62,"z":359.0,"flare1x":824.25,"flare2z":359.61,"start":true,"flare2y":1283.65,"dist":8.0},{"flare2x":422.01,"flare1y":1178.08,"y":1177.98,"x":413.77,"flare1z":244.31,"z":243.73,"flare1x":406.11,"flare2z":244.73,"start":false,"flare2y":1179.85,"dist":8.0},{"flare2x":443.55,"flare1y":887.82,"y":880.65,"x":445.89,"flare1z":197.24,"z":196.69,"flare1x":448.51,"flare2z":197.38,"start":false,"flare2y":872.6,"dist":8.0},{"flare2x":213.28,"flare1y":795.08,"y":787.64,"x":210.81,"flare1z":203.82,"z":203.37,"flare1x":209.1,"flare2z":204.06,"start":false,"flare2y":779.63,"dist":8.0},{"flare2x":23.16,"flare1y":639.07,"y":631.5,"x":20.9,"flare1z":206.44,"z":205.9,"flare1x":19.84,"flare2z":206.59,"start":false,"flare2y":623.42,"dist":8.0},{"flare2x":-595.6,"flare1y":689.58,"y":682.21,"x":-594.33,"flare1z":147.31,"z":146.77,"flare1x":-592.32,"flare2z":147.38,"start":false,"flare2y":673.92,"dist":8.0},{"flare2x":-606.07,"flare1y":733.14,"y":740.51,"x":-607.51,"flare1z":180.01,"z":179.72,"flare1x":-609.35,"flare2z":180.62,"start":false,"flare2y":748.79,"dist":8.0},{"flare2x":-777.67,"flare1y":834.16,"y":826.52,"x":-779.43,"flare1z":207.86,"z":207.01,"flare1x":-780.03,"flare2z":207.57,"start":false,"flare2y":818.34,"dist":8.0},{"flare2x":-1462.62,"flare1y":531.8,"y":524.28,"x":-1464.82,"flare1z":117.63,"z":116.75,"flare1x":-1466.18,"flare2z":117.07,"start":false,"flare2y":516.22,"dist":8.0},{"flare2x":-1630.51,"flare1y":553.67,"y":546.34,"x":-1633.44,"flare1z":130.54,"z":130.18,"flare1x":-1635.5,"flare2z":131.05,"start":false,"flare2y":538.48,"dist":8.0},{"flare2x":-1664.53,"flare1y":499.6,"y":501.77,"x":-1669.75,"flare1z":127.94,"z":127.39,"flare1x":-1674.39,"flare2z":128.07,"start":false,"flare2y":504.48,"dist":5.5},{"flare2x":-1696.37,"flare1y":493.72,"y":491.46,"x":-1691.26,"flare1z":127.93,"z":127.39,"flare1x":-1686.67,"flare2z":128.1,"start":false,"flare2y":488.54,"dist":5.5},{"flare2x":-1887.68,"flare1y":449.95,"y":444.78,"x":-1885.58,"flare1z":117.86,"z":117.13,"flare1x":-1883.34,"flare2z":117.67,"start":false,"flare2y":438.77,"dist":6.0},{"flare2x":-1951.13,"flare1y":325.23,"y":326.46,"x":-1962.72,"flare1z":88.83,"z":88.41,"flare1x":-1973.79,"flare2z":89.27,"start":false,"flare2y":329.16,"dist":11.5},{"flare2x":-1591.3,"flare1y":-273.71,"y":-274.25,"x":-1614.17,"flare1z":51.87,"z":51.44,"flare1x":-1636.29,"flare2z":52.25,"start":false,"flare2y":-274.41,"dist":22.5},{"flare2x":-1848.09,"flare1y":-298.51,"y":-302.82,"x":-1843.61,"flare1z":42.88,"z":42.37,"flare1x":-1839.24,"flare2z":43.01,"start":false,"flare2y":-308.04,"dist":6.5},{"flare2x":-1845.18,"flare1y":-417.38,"y":-413.14,"x":-1849.09,"flare1z":44.63,"z":44.06,"flare1x":-1853.55,"flare2z":44.8,"start":false,"flare2y":-407.44,"dist":6.5},{"flare2x":-1145.14,"flare1y":-1309.84,"y":-1303.88,"x":-1146.45,"flare1z":4.62,"z":3.7,"flare1x":-1147.97,"flare2z":3.98,"start":false,"flare2y":-1297.17,"dist":6.5},{"flare2x":-987.19,"flare1y":-1161.94,"y":-1165.03,"x":-980.4,"flare1z":3.34,"z":2.64,"flare1x":-973.96,"flare2z":3.16,"start":false,"flare2y":-1169.01,"dist":7.5},{"flare2x":-1047.34,"flare1y":-1025.8,"y":-1019.45,"x":-1043.17,"flare1z":1.33,"z":0.66,"flare1x":-1039.9,"flare2z":1.22,"start":false,"flare2y":-1012.78,"dist":7.5},{"flare2x":-947.87,"flare1y":-973.76,"y":-972.3,"x":-951.09,"flare1z":1.31,"z":0.71,"flare1x":-953.86,"flare2z":1.32,"start":false,"flare2y":-970.14,"dist":3.5},{"flare2x":-845.5,"flare1y":-1028.41,"y":-1022.86,"x":-841.8,"flare1z":12.38,"z":11.83,"flare1x":-839.17,"flare2z":12.44,"start":false,"flare2y":-1017.05,"dist":6.5},{"flare2x":-522.08,"flare1y":-974.16,"y":-975.93,"x":-539.38,"flare1z":22.68,"z":22.03,"flare1x":-555.91,"flare2z":22.61,"start":false,"flare2y":-977.48,"dist":17.0},{"flare2x":-701.62,"flare1y":-1376.33,"y":-1382.23,"x":-708.67,"flare1z":4.42,"z":3.83,"flare1x":-714.97,"flare2z":4.47,"start":false,"flare2y":-1388.41,"dist":9.0}]', 'Drift Hill Sprint', 'Zak Garfield', '10079', '7', '', '', 0, 0, '', 'Head to Drift Hill. Fast paced race!', NULL, ''),
	(23, '[{"flare2x":-798.5,"flare1y":5538.42,"y":5535.67,"start":true,"flare1z":33.11,"z":32.05,"dist":9.5,"flare2z":33.02,"flare2y":5533.0,"flare1x":-780.28,"x":-789.75},{"flare2x":-758.6,"flare1y":5711.69,"y":5714.33,"start":false,"flare1z":19.76,"z":18.73,"dist":6.5,"flare2z":19.72,"flare2y":5716.59,"flare1x":-746.56,"x":-752.89},{"flare2x":-657.46,"flare1y":6024.2,"y":6027.46,"start":false,"flare1z":8.17,"z":7.19,"dist":6.5,"flare2z":8.22,"flare2y":6030.29,"flare1x":-645.98,"x":-652.01},{"flare2x":-591.38,"flare1y":6077.01,"y":6083.81,"start":false,"flare1z":9.97,"z":8.45,"dist":6.5,"flare2z":8.98,"flare2y":6089.89,"flare1x":-592.87,"x":-592.04},{"flare2x":-440.68,"flare1y":6091.71,"y":6094.46,"start":false,"flare1z":30.78,"z":29.81,"dist":9.5,"flare2z":30.84,"flare2y":6096.9,"flare1x":-422.41,"x":-431.87},{"flare2x":-394.7,"flare1y":6178.46,"y":6173.08,"start":false,"flare1z":30.63,"z":29.79,"dist":7.0,"flare2z":30.94,"flare2y":6168.15,"flare1x":-385.24,"x":-390.25},{"flare2x":-327.45,"flare1y":6341.24,"y":6346.19,"start":false,"flare1z":29.69,"z":28.59,"dist":7.0,"flare2z":29.5,"flare2y":6350.46,"flare1x":-316.92,"x":-322.37},{"flare2x":-170.48,"flare1y":6490.05,"y":6494.13,"start":false,"flare1z":29.2,"z":28.0,"dist":7.0,"flare2z":28.83,"flare2y":6497.73,"flare1x":-158.79,"x":-164.9},{"flare2x":55.56,"flare1y":6626.11,"y":6631.67,"start":false,"flare1z":30.95,"z":29.82,"dist":7.0,"flare2z":30.73,"flare2y":6636.76,"flare1x":46.48,"x":51.3},{"flare2x":104.71,"flare1y":6479.95,"y":6467.35,"start":false,"flare1z":30.64,"z":29.54,"dist":16.5,"flare2z":30.45,"flare2y":6455.37,"flare1x":82.7,"x":93.9},{"flare2x":-130.19,"flare1y":6247.94,"y":6236.27,"start":false,"flare1z":30.27,"z":29.38,"dist":16.5,"flare2z":30.5,"flare2y":6225.41,"flare1x":-154.29,"x":-142.13},{"flare2x":-246.33,"flare1y":6172.98,"y":6167.61,"start":false,"flare1z":30.63,"z":29.75,"dist":7.5,"flare2z":30.87,"flare2y":6162.65,"flare1x":-235.45,"x":-241.19},{"flare2x":-286.1,"flare1y":6246.59,"y":6254.62,"start":false,"flare1z":30.62,"z":29.7,"dist":10.0,"flare2z":30.78,"flare2y":6262.02,"flare1x":-273.38,"x":-279.92},{"flare2x":-140.74,"flare1y":6326.5,"y":6332.81,"start":false,"flare1z":30.98,"z":29.82,"dist":9.0,"flare2z":30.7,"flare2y":6338.71,"flare1x":-153.97,"x":-147.05},{"flare2x":-108.28,"flare1y":6272.07,"y":6260.32,"start":false,"flare1z":30.26,"z":29.38,"dist":16.0,"flare2z":30.51,"flare2y":6249.16,"flare1x":-130.62,"x":-119.24},{"flare2x":-339.91,"flare1y":6035.69,"y":6025.6,"start":false,"flare1z":30.37,"z":29.39,"dist":15.5,"flare2z":30.42,"flare2y":6016.04,"flare1x":-363.89,"x":-351.66},{"flare2x":-536.85,"flare1y":5742.35,"y":5734.93,"start":false,"flare1z":35.94,"z":34.86,"dist":14.5,"flare2z":35.79,"flare2y":5727.96,"flare1x":-562.03,"x":-549.16},{"flare2x":-733.76,"flare1y":5525.86,"y":5513.02,"start":false,"flare1z":35.03,"z":34.1,"dist":14.5,"flare2z":35.19,"flare2y":5500.87,"flare1x":-748.48,"x":-741.01}]', 'Paleto Circuit', 'Jimmy Nagata', '3481', '0', '', '', 0, 0, '', 'A race around the great little town of Paleto!', NULL, ''),
	(24, '[{"flare2x":-664.78,"flare1y":-1371.34,"y":-1361.21,"x":-664.64,"flare1z":9.63,"z":9.01,"flare1x":-664.69,"flare2z":9.6,"start":true,"flare2y":-1350.34,"dist":10.5},{"flare2x":-537.98,"flare1y":-1186.89,"y":-1177.45,"x":-533.82,"flare1z":18.6,"z":17.67,"flare1x":-530.13,"flare2z":17.93,"start":false,"flare2y":-1167.43,"dist":10.5},{"flare2x":-447.64,"flare1y":-1456.29,"y":-1455.28,"x":-457.39,"flare1z":28.6,"z":28.22,"flare1x":-466.45,"flare2z":29.06,"start":false,"flare2y":-1453.64,"dist":9.5},{"flare2x":-620.49,"flare1y":-2192.74,"y":-2185.8,"x":-625.33,"flare1z":51.89,"z":51.45,"flare1x":-631.31,"flare2z":52.09,"start":false,"flare2y":-2177.13,"dist":9.5},{"flare2x":255.98,"flare1y":-2712.13,"y":-2716.01,"x":246.76,"flare1z":17.61,"z":16.79,"flare1x":238.47,"flare2z":17.19,"start":false,"flare2y":-2719.51,"dist":9.5},{"flare2x":235.25,"flare1y":-3076.02,"y":-3069.87,"x":228.32,"flare1z":4.82,"z":4.18,"flare1x":221.56,"flare2z":4.75,"start":false,"flare2y":-3062.84,"dist":9.5},{"flare2x":311.55,"flare1y":-3172.6,"y":-3173.55,"x":301.7,"flare1z":4.98,"z":4.43,"flare1x":292.63,"flare2z":5.12,"start":false,"flare2y":-3174.29,"dist":9.5},{"flare2x":211.65,"flare1y":-3318.86,"y":-3327.99,"x":211.44,"flare1z":5.0,"z":4.34,"flare1x":211.9,"flare2z":4.9,"start":false,"flare2y":-3337.86,"dist":9.5},{"flare2x":200.81,"flare1y":-2955.31,"y":-2950.01,"x":215.91,"flare1z":5.08,"z":4.5,"flare1x":230.08,"flare2z":5.14,"start":false,"flare2y":-2945.1,"dist":15.5},{"flare2x":152.47,"flare1y":-2599.34,"y":-2607.85,"x":153.66,"flare1z":5.19,"z":4.58,"flare1x":155.09,"flare2z":5.19,"start":false,"flare2y":-2617.15,"dist":9.0},{"flare2x":240.44,"flare1y":-2405.19,"y":-2396.98,"x":232.07,"flare1z":6.41,"z":5.82,"flare1x":223.84,"flare2z":6.49,"start":false,"flare2y":-2387.86,"dist":12.0},{"flare2x":927.31,"flare1y":-2470.27,"y":-2462.77,"x":927.07,"flare1z":27.54,"z":27.12,"flare1x":925.64,"flare2z":27.93,"start":false,"flare2y":-2454.37,"dist":8.0},{"flare2x":1315.29,"flare1y":-2035.31,"y":-2023.16,"x":1321.91,"flare1z":46.05,"z":45.77,"flare1x":1326.91,"flare2z":46.59,"start":false,"flare2y":-2010.94,"dist":13.5},{"flare2x":1324.75,"flare1y":-1707.9,"y":-1714.32,"x":1321.5,"flare1z":54.29,"z":53.69,"flare1x":1319.76,"flare2z":54.43,"start":false,"flare2y":-1720.98,"dist":7.0},{"flare2x":1116.93,"flare1y":-1680.91,"y":-1684.09,"x":1125.14,"flare1z":34.08,"z":33.39,"flare1x":1133.19,"flare2z":34.0,"start":false,"flare2y":-1688.62,"dist":9.0},{"flare2x":1245.2,"flare1y":-1190.57,"y":-1182.22,"x":1249.29,"flare1z":48.11,"z":47.6,"flare1x":1251.62,"flare2z":48.2,"start":false,"flare2y":-1173.75,"dist":9.0},{"flare2x":2399.96,"flare1y":-469.34,"y":-463.57,"x":2396.67,"flare1z":71.12,"z":70.51,"flare1x":2393.4,"flare2z":71.12,"start":false,"flare2y":-456.97,"dist":7.0},{"flare2x":2412.82,"flare1y":-446.88,"y":-449.77,"x":2417.52,"flare1z":70.9,"z":70.29,"flare1x":2421.76,"flare2z":70.9,"start":false,"flare2y":-453.3,"dist":5.5},{"flare2x":2604.14,"flare1y":377.52,"y":377.99,"x":2610.0,"flare1z":107.53,"z":106.91,"flare1x":2615.11,"flare2z":107.52,"start":false,"flare2y":378.27,"dist":5.5}]', 'Shark Attack!', 'Zak Garfield', '12151', '0', '', '', 0, 0, '', 'There is a shark! best you swim away!', NULL, ''),
	(25, '[{"flare2x":2379.06,"flare1y":5119.67,"y":5112.85,"start":true,"flare1z":46.67,"z":45.67,"dist":10.0,"flare2z":46.69,"flare2y":5106.58,"flare1x":2363.95,"x":2371.74},{"flare2x":2182.47,"flare1y":4923.58,"y":4918.21,"start":false,"flare1z":40.03,"z":39.01,"dist":7.0,"flare2z":40.01,"flare2y":4913.44,"flare1x":2172.83,"x":2177.86},{"flare2x":2063.7,"flare1y":5016.78,"y":5012.04,"start":false,"flare1z":40.24,"z":39.24,"dist":7.0,"flare2z":40.24,"flare2y":5007.67,"flare1x":2074.33,"x":2068.71},{"flare2x":1904.12,"flare1y":5135.07,"y":5129.24,"start":false,"flare1z":44.91,"z":43.92,"dist":7.0,"flare2z":44.92,"flare2y":5124.13,"flare1x":1895.39,"x":1899.87},{"flare2x":1709.29,"flare1y":4973.87,"y":4966.99,"start":false,"flare1z":43.51,"z":42.43,"dist":7.0,"flare2z":43.39,"flare2y":4960.83,"flare1x":1704.2,"x":1706.8},{"flare2x":1682.16,"flare1y":4829.23,"y":4830.05,"start":false,"flare1z":41.27,"z":40.25,"dist":10.0,"flare2z":41.24,"flare2y":4830.92,"flare1x":1662.23,"x":1672.56},{"flare2x":1745.16,"flare1y":4586.16,"y":4592.42,"start":false,"flare1z":39.73,"z":38.75,"dist":8.5,"flare2z":39.79,"flare2y":4598.25,"flare1x":1733.21,"x":1739.48},{"flare2x":1877.59,"flare1y":4575.73,"y":4584.46,"start":false,"flare1z":35.83,"z":34.76,"dist":8.5,"flare2z":35.7,"flare2y":4592.45,"flare1x":1880.63,"x":1879.11},{"flare2x":2128.52,"flare1y":4740.89,"y":4748.22,"start":false,"flare1z":40.39,"z":39.41,"dist":7.5,"flare2z":40.44,"flare2y":4754.85,"flare1x":2134.01,"x":2131.19},{"flare2x":2372.41,"flare1y":4675.46,"y":4680.37,"start":false,"flare1z":35.23,"z":34.21,"dist":7.5,"flare2z":35.19,"flare2y":4685.04,"flare1x":2360.87,"x":2367.01},{"flare2x":2452.42,"flare1y":4607.18,"y":4612.75,"start":false,"flare1z":36.16,"z":35.1,"dist":7.5,"flare2z":36.06,"flare2y":4617.73,"flare1x":2463.09,"x":2457.54},{"flare2x":2599.31,"flare1y":4694.2,"y":4698.15,"start":false,"flare1z":32.48,"z":31.39,"dist":5.5,"flare2z":32.32,"flare2y":4701.72,"flare1x":2591.28,"x":2595.6},{"flare2x":2583.81,"flare1y":4640.26,"y":4636.43,"start":false,"flare1z":32.72,"z":31.81,"dist":5.5,"flare2z":32.89,"flare2y":4633.15,"flare1x":2575.42,"x":2579.85},{"flare2x":2579.23,"flare1y":4579.41,"y":4583.44,"start":false,"flare1z":32.86,"z":31.72,"dist":5.5,"flare2z":32.6,"flare2y":4587.13,"flare1x":2571.4,"x":2575.65},{"flare2x":2693.01,"flare1y":4465.12,"y":4469.16,"start":false,"flare1z":40.12,"z":39.2,"dist":5.5,"flare2z":40.27,"flare2y":4472.88,"flare1x":2685.22,"x":2689.45},{"flare2x":2701.66,"flare1y":4520.53,"y":4519.63,"start":false,"flare1z":40.58,"z":39.52,"dist":5.5,"flare2z":40.47,"flare2y":4518.46,"flare1x":2712.46,"x":2706.67},{"flare2x":2676.51,"flare1y":4690.92,"y":4690.09,"start":false,"flare1z":38.73,"z":37.62,"dist":5.5,"flare2z":38.57,"flare2y":4688.78,"flare1x":2687.3,"x":2681.49},{"flare2x":2642.73,"flare1y":4780.58,"y":4776.11,"start":false,"flare1z":32.71,"z":31.72,"dist":5.5,"flare2z":32.74,"flare2y":4772.03,"flare1x":2649.65,"x":2645.86},{"flare2x":2622.63,"flare1y":4806.59,"y":4802.43,"start":false,"flare1z":32.79,"z":31.8,"dist":5.5,"flare2z":32.82,"flare2y":4798.72,"flare1x":2630.31,"x":2626.19},{"flare2x":2543.14,"flare1y":4895.88,"y":4899.83,"start":false,"flare1z":36.72,"z":35.76,"dist":5.5,"flare2z":36.82,"flare2y":4903.15,"flare1x":2551.4,"x":2547.07},{"flare2x":2633.6,"flare1y":4945.23,"y":4951.01,"start":false,"flare1z":43.7,"z":42.86,"dist":5.5,"flare2z":44.01,"flare2y":4956.07,"flare1x":2635.45,"x":2634.5},{"flare2x":2636.1,"flare1y":4974.77,"y":4972.59,"start":false,"flare1z":43.99,"z":43.0,"dist":23.5,"flare2z":44.03,"flare2y":4970.37,"flare1x":2682.89,"x":2659.13},{"flare2x":2545.69,"flare1y":5098.46,"y":5090.63,"start":false,"flare1z":43.49,"z":42.46,"dist":7.5,"flare2z":43.45,"flare2y":5083.51,"flare1x":2544.51,"x":2545.07},{"flare2x":2401.4,"flare1y":5146.55,"y":5140.48,"start":false,"flare1z":46.8,"z":45.65,"dist":10.0,"flare2z":46.53,"flare2y":5134.92,"flare1x":2385.13,"x":2393.53}]', 'Grapeseed Circuit', 'Jimmy Nagata', '3475', '0', '', '', 0, 0, '', 'A race around the mighty town of Grapeseed!', NULL, ''),
	(26, '[{"flare1x":-121.48,"y":-2118.07,"x":-119.17,"z":14.81,"flare1z":15.76,"flare1y":-2112.0,"flare2y":-2124.17,"flare2x":-116.91,"flare2z":15.76,"dist":6.5,"start":true},{"flare1x":-85.4,"y":-2118.83,"x":-87.12,"z":14.81,"flare1z":15.76,"flare1y":-2123.53,"flare2y":-2114.12,"flare2x":-88.77,"flare2z":15.76,"dist":5.0,"start":false},{"flare1x":-21.62,"y":-2085.27,"x":-23.96,"z":14.81,"flare1z":15.76,"flare1y":-2080.85,"flare2y":-2089.66,"flare2x":-26.35,"flare2z":15.76,"dist":5.0,"start":false},{"flare1x":-93.54,"y":-2073.1,"x":-98.31,"z":15.53,"flare1z":16.48,"flare1y":-2071.59,"flare2y":-2074.54,"flare2x":-103.09,"flare2z":16.48,"dist":5.0,"start":false},{"flare1x":-42.3,"y":-2009.83,"x":-49.81,"z":16.12,"flare1z":17.04,"flare1y":-2007.07,"flare2y":-2012.53,"flare2x":-57.34,"flare2z":17.11,"dist":8.0,"start":false},{"flare1x":-94.97,"y":-2007.45,"x":-95.61,"z":16.12,"flare1z":17.07,"flare1y":-1999.48,"flare2y":-2015.42,"flare2x":-96.31,"flare2z":17.07,"dist":8.0,"start":false}]', 'GO Kart', 'James Hollow', '418', '2', NULL, 'nil', 41340, NULL, NULL, 'Race for only GO Karts', NULL, ''),
	(27, '[{"flare1x":-770.46,"flare1y":281.1,"flare2x":-771.77,"flare2y":296.04,"flare1z":84.92,"dist":7.5,"flare2z":85.05,"z":84.09,"x":-771.28,"start":true,"y":288.9},{"flare1x":-659.48,"flare1y":243.14,"flare2x":-645.45,"flare2y":248.44,"flare1z":80.62,"dist":7.5,"flare2z":80.66,"z":79.74,"x":-652.19,"start":false,"y":246.03},{"flare1x":-635.72,"flare1y":171.89,"flare2x":-635.77,"flare2y":180.51,"flare1z":61.35,"dist":4.5,"flare2z":63.94,"z":61.83,"x":-635.89,"start":false,"y":176.47},{"flare1x":-529.83,"flare1y":177.7,"flare2x":-529.16,"flare2y":193.13,"flare1z":68.59,"dist":8.0,"flare2z":72.74,"z":69.87,"x":-529.59,"start":false,"y":185.69},{"flare1x":-426.66,"flare1y":215.35,"flare2x":-437.66,"flare2y":215.62,"flare1z":81.26,"dist":5.5,"flare2z":81.33,"z":80.36,"x":-432.5,"start":false,"y":215.31},{"flare1x":-406.39,"flare1y":259.54,"flare2x":-417.32,"flare2y":260.74,"flare1z":82.4,"dist":5.5,"flare2z":82.39,"z":81.5,"x":-412.21,"start":false,"y":260.05},{"flare1x":-511.74,"flare1y":308.95,"flare2x":-512.22,"flare2y":299.98,"flare1z":82.58,"dist":4.5,"flare2z":82.1,"z":81.42,"x":-511.86,"start":false,"y":304.11},{"flare1x":-523.25,"flare1y":366.71,"flare2x":-537.25,"flare2y":366.93,"flare1z":83.27,"dist":7.0,"flare2z":83.06,"z":82.25,"x":-530.59,"start":false,"y":366.68},{"flare1x":-510.83,"flare1y":655.3,"flare2x":-509.22,"flare2y":667.08,"flare1z":138.79,"dist":6.0,"flare2z":140.39,"z":138.73,"x":-510.12,"start":false,"y":661.52},{"flare1x":-99.77,"flare1y":617.31,"flare2x":-109.52,"flare2y":610.32,"flare1z":207.57,"dist":6.0,"flare2z":207.51,"z":206.64,"x":-104.85,"start":false,"y":613.51},{"flare1x":-387.96,"flare1y":790.6,"flare2x":-398.45,"flare2y":784.77,"flare1z":220.83,"dist":6.0,"flare2z":220.94,"z":219.98,"x":-393.43,"start":false,"y":787.39},{"flare1x":-354.8,"flare1y":970.08,"flare2x":-349.62,"flare2y":956.0,"flare1z":232.64,"dist":7.5,"flare2z":232.62,"z":231.73,"x":-351.97,"start":false,"y":962.77},{"flare1x":-726.61,"flare1y":973.49,"flare2x":-708.14,"flare2y":977.98,"flare1z":237.21,"dist":9.5,"flare2z":237.27,"z":236.35,"x":-717.08,"start":false,"y":975.95},{"flare1x":-680.45,"flare1y":914.42,"flare2x":-671.96,"flare2y":931.41,"flare1z":231.11,"dist":9.5,"flare2z":231.09,"z":230.22,"x":-676.15,"start":false,"y":923.27},{"flare1x":-551.61,"flare1y":679.06,"flare2x":-555.71,"flare2y":666.72,"flare1z":143.98,"dist":6.5,"flare2z":144.0,"z":143.08,"x":-553.64,"start":false,"y":672.52},{"flare1x":-686.94,"flare1y":683.62,"flare2x":-673.99,"flare2y":684.67,"flare1z":152.73,"dist":6.5,"flare2z":152.38,"z":151.67,"x":-680.13,"start":false,"y":684.26},{"flare1x":-1059.43,"flare1y":794.39,"flare2x":-1058.53,"flare2y":781.42,"flare1z":165.82,"dist":6.5,"flare2z":165.88,"z":164.96,"x":-1058.87,"start":false,"y":787.58},{"flare1x":-1449.29,"flare1y":532.86,"flare2x":-1448.19,"flare2y":520.0,"flare1z":118.63,"dist":6.5,"flare2z":117.03,"z":116.89,"x":-1448.61,"start":false,"y":526.08},{"flare1x":-1704.48,"flare1y":503.79,"flare2x":-1701.89,"flare2y":491.05,"flare1z":128.45,"dist":6.5,"flare2z":128.6,"z":127.62,"x":-1702.98,"start":false,"y":497.12},{"flare1x":-1882.9,"flare1y":454.25,"flare2x":-1888.25,"flare2y":438.12,"flare1z":117.4,"dist":8.5,"flare2z":118.04,"z":116.85,"x":-1885.58,"start":false,"y":445.84},{"flare1x":-1991.11,"flare1y":521.9,"flare2x":-1968.92,"flare2y":515.84,"flare1z":107.55,"dist":11.5,"flare2z":107.48,"z":106.63,"x":-1979.65,"start":false,"y":518.89},{"flare1x":-1813.48,"flare1y":148.21,"flare2x":-1834.79,"flare2y":156.6,"flare1z":75.66,"dist":11.5,"flare2z":77.74,"z":75.83,"x":-1824.47,"start":false,"y":152.42},{"flare1x":-1505.61,"flare1y":226.76,"flare2x":-1500.55,"flare2y":241.9,"flare1z":59.27,"dist":8.0,"flare2z":60.37,"z":58.95,"x":-1503.1,"start":false,"y":234.68},{"flare1x":-1417.89,"flare1y":197.61,"flare2x":-1392.84,"flare2y":173.16,"flare1z":57.63,"dist":17.5,"flare2z":57.46,"z":56.65,"x":-1405.04,"start":false,"y":185.24},{"flare1x":-1492.86,"flare1y":-100.33,"flare2x":-1472.14,"flare2y":-128.53,"flare1z":50.23,"dist":17.5,"flare2z":50.25,"z":49.34,"x":-1482.19,"start":false,"y":-114.62},{"flare1x":-1728.85,"flare1y":-542.89,"flare2x":-1709.24,"flare2y":-513.91,"flare1z":36.58,"dist":17.5,"flare2z":36.73,"z":35.76,"x":-1718.97,"start":false,"y":-528.04},{"flare1x":-1399.7,"flare1y":-732.45,"flare2x":-1409.44,"flare2y":-718.52,"flare1z":22.98,"dist":8.5,"flare2z":23.31,"z":22.25,"x":-1404.88,"start":false,"y":-725.29},{"flare1x":-1209.42,"flare1y":-589.58,"flare2x":-1220.28,"flare2y":-576.5,"flare1z":26.69,"dist":8.5,"flare2z":26.43,"z":25.66,"x":-1215.17,"start":false,"y":-582.86},{"flare1x":-966.9,"flare1y":-452.65,"flare2x":-941.08,"flare2y":-439.45,"flare1z":37.06,"dist":14.5,"flare2z":37.07,"z":36.17,"x":-953.75,"start":false,"y":-445.78},{"flare1x":-817.3,"flare1y":-673.25,"flare2x":-815.6,"flare2y":-642.3,"flare1z":27.31,"dist":15.5,"flare2z":27.62,"z":26.57,"x":-816.57,"start":false,"y":-657.43},{"flare1x":-235.95,"flare1y":-651.54,"flare2x":-269.12,"flare2y":-637.55,"flare1z":32.49,"dist":18.0,"flare2z":32.58,"z":31.63,"x":-252.9,"start":false,"y":-644.54},{"flare1x":-228.48,"flare1y":-636.85,"flare2x":-221.45,"flare2y":-618.13,"flare1z":32.41,"dist":10.0,"flare2z":32.86,"z":31.74,"x":-224.98,"start":false,"y":-627.13},{"flare1x":-91.06,"flare1y":-684.09,"flare2x":-85.86,"flare2y":-670.02,"flare1z":34.27,"dist":7.5,"flare2z":34.69,"z":33.59,"x":-88.47,"start":false,"y":-676.69},{"flare1x":62.89,"flare1y":-636.69,"flare2x":69.22,"flare2y":-616.67,"flare1z":30.93,"dist":10.5,"flare2z":30.93,"z":30.03,"x":66.03,"start":false,"y":-626.31},{"flare1x":75.16,"flare1y":-548.98,"flare2x":70.89,"flare2y":-564.39,"flare1z":32.06,"dist":8.0,"flare2z":31.76,"z":30.99,"x":73.07,"start":false,"y":-557.06},{"flare1x":-41.3,"flare1y":-531.1,"flare2x":-70.94,"flare2y":-519.06,"flare1z":39.64,"dist":16.0,"flare2z":39.65,"z":38.75,"x":-56.49,"start":false,"y":-525.08},{"flare1x":49.62,"flare1y":-304.86,"flare2x":60.09,"flare2y":-278.9,"flare1z":46.72,"dist":14.0,"flare2z":46.73,"z":45.83,"x":54.86,"start":false,"y":-291.52},{"flare1x":331.93,"flare1y":-406.1,"flare2x":340.79,"flare2y":-382.72,"flare1z":44.49,"dist":12.5,"flare2z":44.49,"z":43.59,"x":336.36,"start":false,"y":-394.05},{"flare1x":489.75,"flare1y":-141.18,"flare2x":484.66,"flare2y":-165.5,"flare1z":57.18,"dist":12.5,"flare2z":54.46,"z":54.87,"x":487.29,"start":false,"y":-153.72},{"flare1x":430.73,"flare1y":-109.05,"flare2x":405.28,"flare2y":-95.16,"flare1z":65.91,"dist":14.5,"flare2z":66.45,"z":65.26,"x":417.63,"start":false,"y":-102.08},{"flare1x":550.71,"flare1y":259.16,"flare2x":545.2,"flare2y":243.08,"flare1z":102.28,"dist":8.5,"flare2z":102.47,"z":101.48,"x":547.97,"start":false,"y":250.75},{"flare1x":465.26,"flare1y":265.9,"flare2x":474.48,"flare2y":262.05,"flare1z":102.34,"dist":5.0,"flare2z":102.34,"z":101.44,"x":470.23,"start":false,"y":263.97},{"flare1x":412.98,"flare1y":236.38,"flare2x":409.46,"flare2y":227.02,"flare1z":102.41,"dist":5.0,"flare2z":102.44,"z":101.53,"x":411.22,"start":false,"y":231.34},{"flare1x":387.57,"flare1y":257.91,"flare2x":384.25,"flare2y":248.47,"flare1z":102.22,"dist":5.0,"flare2z":102.27,"z":101.35,"x":385.92,"start":false,"y":252.83},{"flare1x":217.59,"flare1y":291.12,"flare2x":213.8,"flare2y":281.86,"flare1z":104.78,"dist":5.0,"flare2z":104.78,"z":103.88,"x":215.69,"start":false,"y":286.13},{"flare1x":96.18,"flare1y":294.74,"flare2x":105.63,"flare2y":291.46,"flare1z":109.18,"dist":5.0,"flare2z":109.26,"z":108.32,"x":101.27,"start":false,"y":293.12},{"flare1x":79.33,"flare1y":260.02,"flare2x":67.8,"flare2y":226.97,"flare1z":108.55,"dist":17.5,"flare2z":108.44,"z":107.59,"x":73.58,"start":false,"y":243.13}]', 'Through out the city', 'Luca Salieri', '10718', '8', NULL, 'nil', 0, 361107, 'nil', '', NULL, '');

-- Dumping structure for table nopixel.sprays
CREATE TABLE IF NOT EXISTS `sprays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` float(8,4) NOT NULL,
  `y` float(8,4) NOT NULL,
  `z` float(8,4) NOT NULL,
  `rx` float(8,4) NOT NULL,
  `ry` float(8,4) NOT NULL,
  `rz` float(8,4) NOT NULL,
  `scale` float(8,4) NOT NULL,
  `text` varchar(32) NOT NULL,
  `font` varchar(32) NOT NULL,
  `color` int(3) NOT NULL,
  `interior` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nopixel.sprays: ~0 rows (approximately)

-- Dumping structure for table nopixel.stash
CREATE TABLE IF NOT EXISTS `stash` (
  `owner_cid` int(11) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `x` int(122) DEFAULT NULL,
  `y` int(122) DEFAULT NULL,
  `z` int(122) DEFAULT NULL,
  `g_x` int(122) DEFAULT NULL,
  `g_y` int(122) DEFAULT NULL,
  `g_z` int(122) DEFAULT NULL,
  `owner_pin` int(11) DEFAULT NULL,
  `guest_pin` int(11) DEFAULT NULL,
  `useGarage` int(11) DEFAULT NULL,
  `tier` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.stash: ~0 rows (approximately)

-- Dumping structure for table nopixel.stocks
CREATE TABLE IF NOT EXISTS `stocks` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` decimal(10,2) NOT NULL DEFAULT 0.00,
  `change` decimal(10,2) NOT NULL DEFAULT 0.00,
  `amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nopixel.stocks: ~0 rows (approximately)

-- Dumping structure for table nopixel.stocks_characters
CREATE TABLE IF NOT EXISTS `stocks_characters` (
  `cid` int(11) NOT NULL,
  `SHUNG` decimal(10,2) NOT NULL DEFAULT 0.00,
  `STRAMM` decimal(10,2) DEFAULT 0.00,
  `STRLSC` decimal(10,2) DEFAULT 0.00,
  `STR711` decimal(10,2) DEFAULT 0.00,
  `STRBOA` decimal(10,2) DEFAULT 0.00,
  `STRCLS` decimal(10,2) DEFAULT 0.00,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `cid` (`cid`),
  CONSTRAINT `cid_stocks_characters_fk` FOREIGN KEY (`cid`) REFERENCES `characters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nopixel.stocks_characters: ~0 rows (approximately)

-- Dumping structure for table nopixel.storage_units
CREATE TABLE IF NOT EXISTS `storage_units` (
  `id` longtext DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  `given_access` varchar(50) DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.storage_units: ~0 rows (approximately)
INSERT INTO `storage_units` (`id`, `data`, `given_access`) VALUES
	('2', '{"storage_owner":48,"purchase_price":70000}', '[]'),
	('4', '{"storage_owner":51,"purchase_price":70000}', '[4]');

-- Dumping structure for table nopixel.tablet_queue
CREATE TABLE IF NOT EXISTS `tablet_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT 0,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table nopixel.tablet_queue: ~0 rows (approximately)

-- Dumping structure for table nopixel.transaction_history
CREATE TABLE IF NOT EXISTS `transaction_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` text NOT NULL,
  `trans_id` int(11) NOT NULL,
  `account` text NOT NULL,
  `amount` int(11) NOT NULL,
  `trans_type` text NOT NULL,
  `receiver` text NOT NULL,
  `message` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table nopixel.transaction_history: ~0 rows (approximately)

-- Dumping structure for table nopixel.tweets
CREATE TABLE IF NOT EXISTS `tweets` (
  `handle` longtext NOT NULL,
  `message` varchar(500) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `attachment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.tweets: ~0 rows (approximately)

-- Dumping structure for table nopixel.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hex_id` varchar(100) DEFAULT NULL,
  `steam_id` varchar(50) DEFAULT NULL,
  `community_id` varchar(100) DEFAULT NULL,
  `license` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'Uknown',
  `ip` varchar(50) NOT NULL DEFAULT 'Uknown',
  `rank` varchar(50) NOT NULL DEFAULT 'owner',
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `controls` text DEFAULT '{}',
  `settings` text DEFAULT '{}',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.users: ~9 rows (approximately)
INSERT INTO `users` (`id`, `hex_id`, `steam_id`, `community_id`, `license`, `name`, `ip`, `rank`, `date_created`, `controls`, `settings`) VALUES
	(21, 'steam:110000112a5b10a', 'STEAM_0:0:156424325', '76561198273114380', 'license:4b7adbf9cd79eba861735b260aa128ea01fc96c4', 'zenox', '0.0.0.0', 'dev', '2023-04-19 07:24:30', '{"generalPhone":"P","vehicleSearch":"G","helivision":"INPUTAIM","housingMain":"H","newsTools":"H","devnoclip":"F2","switchRadioEmergency":"9","generalMenu":"F1","loudSpeaker":"-","devcloak":"F3","vehicleSnavigate":"R","heliCam":"E","housingSecondary":"G","vehicleBelt":"B","newsNormal":"E","generalScoreboard":"U","generalChat":"T","actionBar":"Z","generalUseSecondary":"ENTER","radiovolumeup":"]","handheld":"LEFTSHIFT+P","generalTackle":"LEFTSHIFT+E","showDispatchLog":"z","helispotlight":"G","vehicleDoors":"L","vehicleSlights":"Q","generalProp":"7","devmenu":"F5","helilockon":"SPACE","generalUseThird":"G","vehicleSsound":"LEFTALT","tokoptt":"CAPS","devmarker":"F6","generalUseSecondaryWorld":"F","helirappel":"X","generalEscapeMenu":"ESC","generalUse":"E","distanceChange":"G","generalInventory":"TAB","vehicleCruise":"X","vehicleHotwire":"H","carStereo":"LEFTALT+P","radiotoggle":",","radiovolumedown":"[","tokoToggle":"LEFTCTRL","movementCrouch":"X","newsMovie":"M","movementCrawl":"Z"}', '{}'),
	(22, 'steam:1100001200daeaa', 'STEAM_0:0:268883797', '76561198498033330', 'license:86a9bc28cced827bf64d8a6656dd2d8d37faf30b', 'dark', '0.0.0.0', 'dev', '2023-04-19 08:22:30', '{"generalPhone":"P","helirappel":"X","generalUse":"E","housingMain":"H","newsTools":"H","handheld":"LEFTSHIFT+P","carStereo":"LEFTALT+P","generalMenu":"F1","loudSpeaker":"-","devcloak":"F3","vehicleSnavigate":"R","heliCam":"E","devmenu":"F5","vehicleBelt":"B","newsNormal":"E","switchRadioEmergency":"9","generalChat":"T","radiovolumeup":"]","generalUseSecondary":"ENTER","movementCrawl":"Z","generalProp":"7","devmarker":"F6","showDispatchLog":"z","helispotlight":"G","vehicleDoors":"L","actionBar":"Z","helivision":"INPUTAIM","radiotoggle":",","housingSecondary":"G","vehicleCruise":"X","generalTackle":"LEFTSHIFT+E","tokoptt":"CAPS","helilockon":"SPACE","generalUseSecondaryWorld":"F","generalUseThird":"G","generalEscapeMenu":"ESC","devnoclip":"F2","distanceChange":"G","generalInventory":"TAB","vehicleSsound":"LEFTALT","vehicleSlights":"Q","movementCrouch":"X","vehicleHotwire":"H","radiovolumedown":"[","tokoToggle":"LEFTCTRL","vehicleSearch":"G","newsMovie":"M","generalScoreboard":"U"}', '{}'),
	(23, 'steam:11000010a428d0b', 'STEAM_0:1:86066821', '76561198132399380', 'license:2601ac28b43a4d2cff9766e55796d6661af1712a', 'HEEPZTER', '0.0.0.0', 'dev', '2023-04-19 09:34:23', '{"devmarker":"F6","tokoToggle":"LEFTCTRL","generalMenu":"F1","distanceChange":"G","showDispatchLog":"z","helispotlight":"G","generalUse":"E","devmenu":"F5","vehicleSlights":"Q","generalUseThird":"G","handheld":"LEFTSHIFT+P","movementCrawl":"Z","newsTools":"H","heliCam":"E","generalUseSecondaryWorld":"F","generalProp":"7","housingMain":"H","generalInventory":"TAB","newsNormal":"E","tokoptt":"CAPS","actionBar":"Z","generalUseSecondary":"ENTER","vehicleDoors":"L","housingSecondary":"G","vehicleCruise":"X","switchRadioEmergency":"9","generalTackle":"LEFTSHIFT+E","generalPhone":"P","vehicleSnavigate":"R","radiovolumedown":"[","radiotoggle":",","newsMovie":"M","movementCrouch":"X","vehicleBelt":"B","generalChat":"T","generalEscapeMenu":"ESC","helilockon":"SPACE","loudSpeaker":"-","carStereo":"LEFTALT+P","devnoclip":"F2","radiovolumeup":"]","helirappel":"X","devcloak":"F3","vehicleSsound":"LEFTALT","vehicleHotwire":"H","helivision":"INPUTAIM","vehicleSearch":"G","generalScoreboard":"U"}', '{}'),
	(24, 'steam:11000010bacad64', 'STEAM_0:0:97932978', '76561198156131680', 'license:f61d629cd0531297e7ced601c058ef167cdcdd48', 'notfgod', '0.0.0.0', 'dev', '2023-04-19 12:04:29', '{"housingMain":"H","devnoclip":"F2","generalMenu":"F1","generalInventory":"TAB","vehicleBelt":"B","helivision":"INPUTAIM","vehicleCruise":"X","showDispatchLog":"z","generalTackle":"LEFTSHIFT+E","heliCam":"E","vehicleSnavigate":"R","generalUseSecondary":"ENTER","vehicleSearch":"G","radiovolumedown":"[","housingSecondary":"G","movementCrawl":"Z","handheld":"LEFTSHIFT+P","tokoptt":"CAPS","generalScoreboard":"U","helilockon":"SPACE","generalUseThird":"G","actionBar":"Z","helirappel":"X","vehicleDoors":"L","radiovolumeup":"]","distanceChange":"G","newsMovie":"M","generalUse":"E","devmarker":"F6","vehicleSlights":"Q","vehicleSsound":"LEFTALT","helispotlight":"G","movementCrouch":"X","newsTools":"H","generalPhone":"P","devcloak":"F3","loudSpeaker":"-","vehicleHotwire":"H","radiotoggle":",","newsNormal":"E","generalUseSecondaryWorld":"F","tokoToggle":"LEFTCTRL","generalChat":"T","switchRadioEmergency":"9","devmenu":"F5","carStereo":"LEFTALT+P","generalProp":"7","generalEscapeMenu":"ESC"}', '{}'),
	(25, 'steam:110000117b2ed6c', 'STEAM_0:0:198801078', '76561198357867890', 'license:3a8603bcd13e78277a7550eb03173a8d80f0d0ce', 'Daniel', '0.0.0.0', 'dev', '2023-04-19 12:57:25', '{"generalChat":"T","movementCrawl":"Z","generalProp":"7","distanceChange":"G","vehicleSnavigate":"R","generalUseThird":"G","generalUseSecondary":"ENTER","housingSecondary":"G","vehicleCruise":"X","devmarker":"F6","devmenu":"F5","switchRadioEmergency":"9","helispotlight":"G","generalEscapeMenu":"ESC","vehicleHotwire":"H","movementCrouch":"X","devcloak":"F3","newsMovie":"M","generalUse":"E","generalScoreboard":"U","vehicleDoors":"L","showDispatchLog":"z","housingMain":"H","helilockon":"SPACE","tokoptt":"CAPS","devnoclip":"F2","generalInventory":"TAB","heliCam":"E","helivision":"INPUTAIM","carStereo":"LEFTALT+P","radiovolumeup":"]","loudSpeaker":"-","vehicleSlights":"Q","generalMenu":"F1","generalTackle":"LEFTSHIFT+E","vehicleSsound":"LEFTALT","generalUseSecondaryWorld":"F","handheld":"LEFTSHIFT+P","actionBar":"Z","generalPhone":"P","radiovolumedown":"[","newsNormal":"E","vehicleBelt":"B","helirappel":"X","radiotoggle":",","newsTools":"H","vehicleSearch":"G","tokoToggle":"LEFTCTRL"}', '{}'),
	(26, 'steam:110000109c8bc79', 'STEAM_0:1:82075196', '76561198124416130', 'license:8dfe767bf06e502269233140660a9774ed756175', 'me', '0.0.0.0', 'dev', '2023-04-19 13:13:07', '{"generalPhone":"P","devmarker":"F6","generalUse":"E","housingMain":"H","newsTools":"H","handheld":"LEFTSHIFT+P","switchRadioEmergency":"9","generalMenu":"F1","loudSpeaker":"-","devcloak":"F3","vehicleSnavigate":"R","heliCam":"E","housingSecondary":"G","vehicleBelt":"B","newsNormal":"E","vehicleHotwire":"H","generalChat":"T","vehicleCruise":"X","generalUseSecondary":"ENTER","generalUseThird":"G","newsMovie":"M","vehicleSlights":"Q","showDispatchLog":"z","helispotlight":"G","vehicleDoors":"L","actionBar":"Z","helirappel":"X","helivision":"INPUTAIM","vehicleSearch":"G","devmenu":"F5","generalTackle":"LEFTSHIFT+E","tokoptt":"CAPS","helilockon":"SPACE","generalUseSecondaryWorld":"F","generalScoreboard":"U","generalEscapeMenu":"ESC","devnoclip":"F2","distanceChange":"G","generalInventory":"TAB","vehicleSsound":"LEFTALT","carStereo":"LEFTALT+P","movementCrouch":"X","movementCrawl":"Z","radiovolumedown":"[","tokoToggle":"LEFTCTRL","generalProp":"7","radiovolumeup":"]","radiotoggle":","}', '{}'),
	(27, 'steam:1100001029a4487', 'STEAM_0:1:21832259', '76561198003930240', 'license:555ef57f8eec7f19748cb0607444897ed714f112', 'Kurosaki', '0.0.0.0', 'dev', '2023-04-19 13:15:48', '{"generalPhone":"P","vehicleSearch":"G","generalUse":"E","housingMain":"H","newsTools":"H","handheld":"LEFTSHIFT+P","switchRadioEmergency":"9","generalMenu":"F1","loudSpeaker":"-","devcloak":"F3","vehicleSnavigate":"R","heliCam":"E","devmenu":"F5","vehicleBelt":"B","newsNormal":"E","helivision":"INPUTAIM","generalChat":"T","generalUseThird":"G","generalUseSecondary":"ENTER","movementCrawl":"Z","helilockon":"SPACE","actionBar":"Z","showDispatchLog":"z","helispotlight":"G","vehicleDoors":"L","vehicleSlights":"Q","helirappel":"X","generalScoreboard":"U","generalTackle":"LEFTSHIFT+E","devnoclip":"F2","newsMovie":"M","tokoptt":"CAPS","housingSecondary":"G","generalUseSecondaryWorld":"F","vehicleSsound":"LEFTALT","generalEscapeMenu":"ESC","devmarker":"F6","distanceChange":"G","generalInventory":"TAB","vehicleCruise":"X","generalProp":"7","carStereo":"LEFTALT+P","vehicleHotwire":"H","radiovolumedown":"[","tokoToggle":"LEFTCTRL","movementCrouch":"X","radiovolumeup":"]","radiotoggle":","}', '{}'),
	(28, 'steam:110000109cdee63', 'STEAM_0:1:82245425', '76561198124756580', 'license:6f0cbbb18ef13791392c98498cbe430d787e1c71', 'you', '0.0.0.0', 'dev', '2023-04-19 13:28:51', '{"generalPhone":"P","devmarker":"F6","helivision":"INPUTAIM","housingMain":"H","newsTools":"H","generalTackle":"LEFTSHIFT+E","vehicleHotwire":"H","generalMenu":"F1","loudSpeaker":"-","devcloak":"F3","vehicleSnavigate":"R","heliCam":"E","devmenu":"F5","vehicleBelt":"B","newsNormal":"E","radiovolumeup":"]","generalChat":"T","vehicleSlights":"Q","generalUseSecondary":"ENTER","vehicleCruise":"X","helilockon":"SPACE","carStereo":"LEFTALT+P","showDispatchLog":"z","helispotlight":"G","vehicleDoors":"L","actionBar":"Z","movementCrawl":"Z","devnoclip":"F2","helirappel":"X","newsMovie":"M","housingSecondary":"G","tokoptt":"CAPS","generalUseThird":"G","generalUseSecondaryWorld":"F","generalUse":"E","generalEscapeMenu":"ESC","radiotoggle":",","distanceChange":"G","generalInventory":"TAB","vehicleSsound":"LEFTALT","handheld":"LEFTSHIFT+P","switchRadioEmergency":"9","movementCrouch":"X","radiovolumedown":"[","tokoToggle":"LEFTCTRL","vehicleSearch":"G","generalProp":"7","generalScoreboard":"U"}', '{}'),
	(29, 'steam:11000010df02b0f', 'STEAM_0:1:116921735', '76561198194109200', 'license:c42ac73eeb81492c25a8235d91d6293ce0137217', 'Zoomie', '0.0.0.0', 'dev', '2023-04-19 18:00:33', '{"generalPhone":"P","vehicleSearch":"G","helivision":"INPUTAIM","housingMain":"H","newsTools":"H","devnoclip":"F2","switchRadioEmergency":"9","generalMenu":"F1","loudSpeaker":"-","devcloak":"F3","vehicleSnavigate":"R","heliCam":"E","housingSecondary":"G","vehicleBelt":"B","newsNormal":"E","radiotoggle":",","generalChat":"T","generalTackle":"LEFTSHIFT+E","generalUseSecondary":"ENTER","devmarker":"F6","vehicleSlights":"Q","generalUse":"E","showDispatchLog":"z","helispotlight":"G","vehicleDoors":"L","actionBar":"Z","helirappel":"X","vehicleHotwire":"H","movementCrouch":"X","vehicleSsound":"LEFTALT","carStereo":"LEFTALT+P","helilockon":"SPACE","devmenu":"F5","generalUseSecondaryWorld":"F","newsMovie":"M","generalEscapeMenu":"ESC","handheld":"LEFTSHIFT+P","distanceChange":"G","generalInventory":"TAB","vehicleCruise":"X","tokoptt":"CAPS","generalScoreboard":"U","generalUseThird":"G","radiovolumedown":"[","tokoToggle":"LEFTCTRL","generalProp":"7","radiovolumeup":"]","movementCrawl":"Z"}', '{}');

-- Dumping structure for table nopixel.user_apartment
CREATE TABLE IF NOT EXISTS `user_apartment` (
  `room` int(11) NOT NULL AUTO_INCREMENT,
  `roomType` int(1) DEFAULT NULL,
  `cid` mediumtext NOT NULL,
  `mykeys` varchar(50) NOT NULL DEFAULT '[]',
  `ilness` mediumtext NOT NULL DEFAULT 'Alive',
  `isImprisoned` mediumtext NOT NULL DEFAULT '0',
  `isClothesSpawn` mediumtext NOT NULL DEFAULT 'true',
  `cash` int(11) DEFAULT 0,
  PRIMARY KEY (`room`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.user_apartment: ~0 rows (approximately)

-- Dumping structure for table nopixel.user_bans
CREATE TABLE IF NOT EXISTS `user_bans` (
  `name` longtext NOT NULL DEFAULT '',
  `license` longtext NOT NULL DEFAULT '',
  `discord` longtext NOT NULL DEFAULT '',
  `ip` longtext NOT NULL DEFAULT '',
  `reason` longtext NOT NULL,
  `expire` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `bannedby` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.user_bans: ~0 rows (approximately)

-- Dumping structure for table nopixel.user_boat
CREATE TABLE IF NOT EXISTS `user_boat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) DEFAULT '{}',
  `boat_name` varchar(255) DEFAULT '{}',
  `boat_model` varchar(255) DEFAULT '{}',
  `boat_price` varchar(255) DEFAULT '{}',
  `boat_plate` varchar(255) DEFAULT '{}',
  `boat_state` varchar(255) DEFAULT '{}',
  `boat_colorprimary` varchar(255) DEFAULT '{}',
  `boat_colorsecondary` varchar(255) DEFAULT '{}',
  `boat_pearlescentcolor` varchar(255) DEFAULT '{}',
  `boat_wheelcolor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.user_boat: ~0 rows (approximately)

-- Dumping structure for table nopixel.user_contacts
CREATE TABLE IF NOT EXISTS `user_contacts` (
  `identifier` varchar(40) NOT NULL,
  `name` longtext NOT NULL,
  `number` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.user_contacts: ~1 rows (approximately)
INSERT INTO `user_contacts` (`identifier`, `name`, `number`) VALUES
	('56', 'heep', '5522155761'),
	('51', 'asd', '1167297363'),
	('48', 'awdawd', '3664855957'),
	('55', 'asd', '3321838378'),
	('57', 'kevin', '3321838378');

-- Dumping structure for table nopixel.user_inventory2
CREATE TABLE IF NOT EXISTS `user_inventory2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `item_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `quality` int(11) NOT NULL DEFAULT 100,
  `information` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `slot` int(11) NOT NULL,
  `dropped` tinyint(4) NOT NULL DEFAULT 0,
  `creationDate` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4470 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table nopixel.user_inventory2: ~569 rows (approximately)
INSERT INTO `user_inventory2` (`id`, `name`, `item_id`, `quality`, `information`, `slot`, `dropped`, `creationDate`) VALUES
	(1757, 'housing-mp46', '1834241177', 100, '{"cartridge":"48-KWt-546","serial":"48","quality":"Good"}', 2, 0, 1681892457735),
	(1763, 'ply-49', 'mobilephone', 100, '{}', 40, 0, 1681892641586),
	(1764, 'ply-49', 'sandwich', 100, '{}', 5, 0, 1681892641587),
	(1765, 'ply-49', 'sandwich', 100, '{}', 5, 0, 1681892641587),
	(1766, 'ply-49', 'sandwich', 100, '{}', 5, 0, 1681892641587),
	(1767, 'ply-49', 'lockpick', 100, '{}', 4, 0, 1681892641586),
	(1768, 'ply-49', 'lockpick', 100, '{}', 4, 0, 1681892641586),
	(1769, 'ply-49', 'water', 100, '{}', 2, 0, 1681892641587),
	(1770, 'ply-49', 'water', 100, '{}', 2, 0, 1681892641587),
	(1771, 'ply-49', 'water', 100, '{}', 2, 0, 1681892641587),
	(1772, 'ply-49', 'water', 100, '{}', 2, 0, 1681892641587),
	(1773, 'ply-49', 'repairkit', 100, '{}', 3, 0, 1681892641587),
	(1774, 'ply-49', 'repairkit', 100, '{}', 3, 0, 1681892641587),
	(1775, 'ply-49', 'idcard', 100, '{"Identifier":"49","Name":"ben","Surname":"jirou","Sex":"M","DOB":"2001-09-11"}', 39, 0, 1681892641586),
	(1777, 'ply-50', 'mobilephone', 100, '{}', 40, 0, 1681892957306),
	(1786, 'ply-50', 'idcard', 100, '{"Identifier":"50","Name":"Lewis","Surname":"Smith","Sex":"M","DOB":"2003-12-20"}', 39, 0, 1681892957306),
	(1788, 'housing-mp46', 'nightvisiongoggles', 100, '{}', 1, 0, 1681893218798),
	(1797, 'ply-51', 'mobilephone', 100, '{}', 37, 0, 1681897018366),
	(1799, 'ply-51', 'lockpick', 65, '{}', 4, 0, 1681022018367),
	(1808, 'ply-51', 'idcard', 100, '{"Identifier":"51","Name":"Mike","Surname":"Hock","Sex":"M","DOB":"1999-12-30"}', 36, 0, 1681897018367),
	(1881, 'ply-51', 'plastic', 100, '{}', 12, 0, 1681897507927),
	(1882, 'ply-51', 'plastic', 100, '{}', 12, 0, 1681897507927),
	(1883, 'ply-51', 'plastic', 100, '{}', 12, 0, 1681897507927),
	(1884, 'ply-51', 'plastic', 100, '{}', 12, 0, 1681897507927),
	(1885, 'ply-51', 'plastic', 100, '{}', 12, 0, 1681897507927),
	(1886, 'ply-51', 'rubber', 100, '{}', 8, 0, 1681897507927),
	(1887, 'ply-51', 'rubber', 100, '{}', 8, 0, 1681897507927),
	(1888, 'ply-51', 'plastic', 100, '{}', 12, 0, 1681897564992),
	(1889, 'ply-51', 'plastic', 100, '{}', 12, 0, 1681897564992),
	(1890, 'ply-51', 'plastic', 100, '{}', 12, 0, 1681897564992),
	(1891, 'ply-51', 'rubber', 100, '{}', 8, 0, 1681897564993),
	(1892, 'ply-51', 'rubber', 100, '{}', 8, 0, 1681897564993),
	(1893, 'ply-51', 'rubber', 100, '{}', 8, 0, 1681897564993),
	(1894, 'ply-51', 'rubber', 100, '{}', 8, 0, 1681897564993),
	(1895, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1896, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1897, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1898, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1899, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1900, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1901, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1902, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1903, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1904, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1905, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1906, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1907, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1908, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1909, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1910, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1911, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1912, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1913, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1914, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1915, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1916, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1917, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1918, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1919, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1920, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1921, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1922, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1923, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1924, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1925, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1926, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1927, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1928, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1929, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1930, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1931, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1932, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1933, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1934, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1935, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1936, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1937, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1938, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1939, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1940, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1941, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1942, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1943, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1944, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1945, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1946, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1947, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1948, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1949, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1950, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1951, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1952, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1953, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1954, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1955, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1956, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1957, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1958, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1959, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1960, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1961, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1962, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1963, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1964, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897713544),
	(1971, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897871648),
	(1972, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897871648),
	(1973, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897871648),
	(1974, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897871648),
	(1975, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897871648),
	(1976, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897871648),
	(1977, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897871648),
	(1978, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897871648),
	(1979, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897871648),
	(1980, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897871648),
	(1981, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897871648),
	(1982, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897871648),
	(1997, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897943177),
	(1998, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897943177),
	(1999, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897943177),
	(2000, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897943177),
	(2001, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897943177),
	(2002, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897943177),
	(2003, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897943177),
	(2004, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897943177),
	(2005, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897943177),
	(2006, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897943177),
	(2007, 'ply-51', 'recyclablematerial', 100, '{}', 9, 0, 1681897943177),
	(2113, 'ply-51', 'qualityscales', 100, '{}', 14, 0, 1681905132946),
	(2114, 'ply-51', 'weedq', 100, '{}', 11, 0, 1681905163978),
	(2122, 'ply-52', 'mobilephone', 100, '{}', 6, 0, 1681906541323),
	(2123, 'ply-52', 'lockpick', 100, '{}', 4, 0, 1681906541324),
	(2124, 'ply-52', 'lockpick', 100, '{}', 4, 0, 1681906541324),
	(2125, 'ply-52', 'lockpick', 100, '{}', 4, 0, 1681906541324),
	(2126, 'ply-52', 'lockpick', 100, '{}', 4, 0, 1681906541324),
	(2129, 'ply-52', 'repairkit', 100, '{}', 7, 0, 1681906541325),
	(2130, 'ply-52', 'repairkit', 100, '{}', 7, 0, 1681906541325),
	(2131, 'ply-52', 'repairkit', 100, '{}', 7, 0, 1681906541325),
	(2134, 'ply-52', 'idcard', 100, '{"Identifier":"52","Name":"lex","Surname":"lex","Sex":"M","DOB":"2000-01-01"}', 10, 0, 1681906541323),
	(2135, 'housing-mp46', 'rentalpapers', 100, '{}', 3, 0, 1681906544670),
	(2149, 'ply-51', 'maleseed', 100, '{}', 17, 0, 1681909688475),
	(2151, 'ply-53', 'mobilephone', 100, '{}', 2, 0, 1681909868196),
	(2153, 'ply-53', 'lockpick', 95, '{}', 4, 0, 1681784868197),
	(2154, 'ply-53', 'lockpick', 100, '{}', 4, 0, 1681909868197),
	(2155, 'ply-53', 'lockpick', 100, '{}', 4, 0, 1681909868197),
	(2156, 'ply-53', 'water', 100, '{}', 6, 0, 1681909868198),
	(2157, 'ply-53', 'water', 100, '{}', 6, 0, 1681909868198),
	(2158, 'ply-53', 'water', 100, '{}', 6, 0, 1681909868198),
	(2159, 'ply-53', 'sandwich', 100, '{}', 5, 0, 1681909868197),
	(2160, 'ply-53', 'sandwich', 100, '{}', 5, 0, 1681909868197),
	(2161, 'ply-53', 'sandwich', 100, '{}', 5, 0, 1681909868197),
	(2162, 'ply-53', 'repairkit', 100, '{}', 7, 0, 1681909868198),
	(2163, 'ply-53', 'repairkit', 100, '{}', 7, 0, 1681909868198),
	(2164, 'ply-53', 'repairkit', 100, '{}', 7, 0, 1681909868198),
	(2165, 'ply-53', 'repairkit', 100, '{}', 7, 0, 1681909868198),
	(2166, 'ply-53', 'idcard', 100, '{"Identifier":"53","Name":"Daniel","Surname":"Nagger","Sex":"M","DOB":"2000-01-01"}', 3, 0, 1681909868197),
	(2168, 'ply-54', 'mobilephone', 100, '{}', 8, 0, 1681910252070),
	(2178, 'ply-54', 'repairkit', 100, '{}', 7, 0, 1681910252071),
	(2179, 'ply-54', 'repairkit', 100, '{}', 7, 0, 1681910252071),
	(2180, 'ply-54', 'repairkit', 100, '{}', 7, 0, 1681910252071),
	(2181, 'ply-54', 'idcard', 100, '{"Identifier":"54","Name":"Moe","Surname":"Wu","Sex":"M","DOB":"2000-01-01"}', 10, 0, 1681910252070),
	(2182, 'ply-51', 'lockpick', 100, '{}', 4, 0, 1681910285167),
	(2183, 'ply-51', 'lockpick', 100, '{}', 4, 0, 1681910286229),
	(2190, 'ply-55', 'mobilephone', 100, '{}', 40, 0, 1681910662004),
	(2193, 'ply-55', 'sandwich', 100, '{}', 23, 0, 1681910662005),
	(2194, 'ply-55', 'sandwich', 100, '{}', 23, 0, 1681910662005),
	(2195, 'ply-55', 'sandwich', 100, '{}', 23, 0, 1681910662005),
	(2196, 'ply-55', 'sandwich', 100, '{}', 23, 0, 1681910662005),
	(2205, 'ply-55', 'idcard', 100, '{"Identifier":"55","Name":"Tommy","Surname":"Oliver","Sex":"M","DOB":"1993-12-28"}', 39, 0, 1681910662004),
	(2207, 'ply-56', 'mobilephone', 100, '{}', 5, 0, 1681911202646),
	(2260, 'ply-55', '4191993645', 100, '{"cartridge":"55-UxA-804","serial":"55","quality":"Good"}', 20, 0, 1681912241820),
	(2265, 'ply-55', 'cigar', 100, '{}', 30, 0, 1681912496180),
	(2266, 'ply-55', 'cigar', 100, '{}', 30, 0, 1681912496180),
	(2267, 'ply-55', 'cigar', 100, '{}', 30, 0, 1681912496180),
	(2268, 'ply-55', 'lawnchair', 100, '{}', 8, 0, 1681912560061),
	(2269, 'ply-54', 'lawnchair', 100, '{}', 11, 0, 1681912560312),
	(2273, 'ply-54', 'lockpick', 70, '{}', 5, 0, 1681162933844),
	(2274, 'ply-54', 'lockpick', 100, '{}', 5, 0, 1681912933844),
	(2275, 'ply-54', 'lockpick', 100, '{}', 5, 0, 1681912933844),
	(2276, 'Trunk-08DGX560', 'weedpackage', 100, '{}', 1, 0, 1681914102587),
	(2277, 'Trunk-08DGX560', 'weedpackage', 100, '{}', 2, 0, 1681914103195),
	(2278, 'Trunk-08DGX560', 'weedpackage', 100, '{}', 3, 0, 1681914103296),
	(2288, 'ply-51', '-120179019', 87, '{"cartridge":"51-CDI-372","serial":"51","quality":"Good"}', 1, 0, 1681589174435),
	(2289, 'ply-51', '-820634585', 100, '{"cartridge":"51-lRy-74","serial":"51","quality":"Good"}', 19, 0, 1681914187917),
	(2290, 'ply-51', 'radio', 100, '{}', 40, 0, 1681914189691),
	(2291, 'ply-51', 'watch', 100, '{}', 39, 0, 1681914194903),
	(2344, 'ply-51', 'taserammo', 100, '{}', 20, 0, 1681914211920),
	(2345, 'ply-51', 'taserammo', 100, '{}', 20, 0, 1681914211920),
	(2346, 'ply-51', 'taserammo', 100, '{}', 20, 0, 1681914211920),
	(2351, 'Trunk-08DGX560', 'methpackage', 100, '{}', 4, 0, 1681914364679),
	(2352, 'ply-55', 'pixellaptop', 100, '{}', 12, 0, 1681914413671),
	(2353, 'ply-55', 'vpnxj', 100, '{}', 13, 0, 1681914421325),
	(2358, 'ply-55', 'maleseed', 100, '{}', 18, 0, 1681914480946),
	(2363, 'ply-55', 'heistusb4', 100, '{}', 5, 0, 1681914662042),
	(2369, 'ply-51', 'racingusb3', 100, '{}', 21, 0, 1681915139282),
	(2370, 'ply-51', 'racingusb0', 100, '{}', 22, 0, 1681915159241),
	(2371, 'Glovebox-43PLC085', 'trackerdisabler', 100, '{}', 1, 0, 1681915165048),
	(2374, 'ply-51', 'vpnxj', 100, '{}', 38, 0, 1681915196979),
	(2376, 'ply-51', 'racingusb2', 100, '{}', 25, 0, 1681915246237),
	(2382, 'ply-55', 'trackerdisabler', 100, '{}', 19, 0, 1681915332483),
	(2563, 'ply-56', 'vpnxja', 100, '{}', 15, 0, 1681916836745),
	(2564, 'ply-56', 'vpnxj', 100, '{}', 9, 0, 1681916839274),
	(2609, 'Trunk-04OLJ858', 'darkmarketpackage', 100, '{}', 2, 0, 1681917205166),
	(2610, 'Trunk-04OLJ858', 'darkmarketpackage', 100, '{}', 1, 0, 1681917277966),
	(2612, 'Trunk-04OLJ858', 'darkmarketpackage', 100, '{}', 3, 0, 1681917312117),
	(2613, 'Trunk-04OLJ858', 'darkmarketpackage', 100, '{}', 4, 0, 1681917348591),
	(2614, 'Trunk-04OLJ858', 'darkmarketpackage', 100, '{}', 5, 0, 1681917383962),
	(2615, 'Trunk-04OLJ858', 'darkmarketpackage', 100, '{}', 6, 0, 1681917414890),
	(2616, 'Trunk-04OLJ858', 'darkmarketpackage', 100, '{}', 7, 0, 1681917443562),
	(2617, 'Trunk-04OLJ858', 'darkmarketpackage', 100, '{}', 8, 0, 1681917497316),
	(2618, 'Trunk-04OLJ858', 'darkmarketpackage', 100, '{}', 9, 0, 1681917552725),
	(2621, 'ply-55', 'oxy', 100, '{}', 15, 0, 1681917773595),
	(2622, 'ply-55', 'oxy', 100, '{}', 15, 0, 1681917773595),
	(2623, 'storage-burger_warmer', 'murdermeal', 100, '{}', 1, 0, 1681917964300),
	(2632, 'murdermeal-2623', 'heartstopper', 100, '{}', 1, 0, 1681918050343),
	(2637, 'murdermeal-2623', 'fries', 100, '{}', 3, 0, 1681918156981),
	(2640, 'murdermeal-2623', 'softdrink', 100, '{}', 2, 0, 1681918245835),
	(2641, 'murdermeal-2623', 'vanillaicecream', 100, '{}', 4, 0, 1681918272154),
	(2642, 'murdermeal-2623', 'mshake', 100, '{}', 5, 0, 1681918312070),
	(2676, 'ply-55', 'joint2', 100, '{}', 7, 0, 1681920733919),
	(2677, 'ply-55', 'joint2', 100, '{}', 7, 0, 1681920734069),
	(2686, 'ply-51', 'umbrella', 100, '{}', 18, 0, 1681921894951),
	(2688, 'ply-51', 'fishingrod', 100, '{}', 6, 0, 1681921909163),
	(2698, 'ply-55', '1692590063', 100, '{"cartridge":"55-tpM-589","serial":"55","quality":"Good"}', 34, 0, 1681922189383),
	(2873, 'ply-48', '-1768145561', 65, '{"cartridge":"48-jBa-901","serial":"48","quality":"Good"}', 3, 0, 1681050236055),
	(2885, 'ply-54', 'advlockpick', 79, '{}', 6, 0, 1681401042297),
	(2886, 'ply-56', 'advlockpick', 79, '{}', 10, 0, 1681401042652),
	(2898, 'ply-50', 'vpnxj', 100, '{}', 38, 0, 1681926237858),
	(2900, 'Trunk-42NQM643', 'stolentv', 100, '{}', 1, 0, 1681926294944),
	(2901, 'Glovebox-66HKH828', 'stolen8ctchain', 100, '{}', 1, 0, 1681926372489),
	(2903, 'Glovebox-66HKH828', 'stolennokia', 100, '{}', 2, 0, 1681926379630),
	(2907, 'Trunk-60JJI432', 'stolenmicrowave', 100, '{}', 1, 0, 1681926406956),
	(2909, 'Trunk-60JJI432', 'stolenmicrowave', 100, '{}', 1, 0, 1681926483511),
	(2910, 'Trunk-60JJI432', 'stolentv', 100, '{}', 2, 0, 1681926553063),
	(2920, 'ply-57', 'vpnxj', 100, '{}', 14, 0, 1681928433390),
	(2924, 'ply-57', 'lockpick', 95, '{}', 9, 0, 1681803508725),
	(2925, 'ply-57', 'lockpick', 100, '{}', 9, 0, 1681928508725),
	(2928, 'ply-57', 'sandwich', 100, '{}', 6, 0, 1681928508725),
	(2929, 'ply-57', 'sandwich', 100, '{}', 6, 0, 1681928508725),
	(2931, 'ply-57', 'water', 100, '{}', 7, 0, 1681928508725),
	(2932, 'ply-57', 'repairkit', 100, '{}', 10, 0, 1681928508725),
	(2933, 'ply-57', 'repairkit', 100, '{}', 10, 0, 1681928508725),
	(2934, 'ply-57', 'repairkit', 100, '{}', 10, 0, 1681928508725),
	(2935, 'ply-57', 'mobilephone', 100, '{}', 5, 0, 1681928508724),
	(2936, 'ply-57', 'idcard', 100, '{"Identifier":"57","Name":"zoomie","Surname":"a","Sex":"M","DOB":"2000-01-01"}', 15, 0, 1681928508724),
	(3377, 'ply-55', 'joint', 100, '{}', 3, 0, 1681932578570),
	(3378, 'ply-55', 'joint', 100, '{}', 3, 0, 1681932578570),
	(3379, 'ply-55', 'joint', 100, '{}', 3, 0, 1681932578570),
	(3405, 'ply-57', 'pixellaptop', 100, '{}', 8, 0, 1681932824761),
	(3406, 'ply-54', 'pixellaptop', 97, '{}', 2, 0, 1681857826119),
	(3407, 'ply-57', 'civradio', 100, '{}', 11, 0, 1681932826220),
	(3408, 'ply-55', 'civradio', 100, '{}', 38, 0, 1681932828850),
	(3411, 'ply-54', 'civradio', 100, '{}', 9, 0, 1681933033419),
	(3413, 'ply-54', 'vpnxj', 100, '{}', 14, 0, 1681933632708),
	(3419, 'Trunk-43TAY426', 'stolenmicrowave', 100, '{}', 1, 0, 1681933942622),
	(3421, 'Trunk-28OFF909', 'heistusb5', 100, '{}', 3, 0, 1681933964344),
	(3423, 'Trunk-43TAY426', 'stolenmicrowave', 100, '{}', 1, 0, 1681934005562),
	(3425, 'Trunk-43TAY426', 'stolentv', 100, '{}', 2, 0, 1681934068192),
	(3426, 'Trunk-43TAY426', 'stoleniphone', 100, '{}', 3, 0, 1681934145026),
	(3427, 'Trunk-43TAY426', 'stoleniphone', 100, '{}', 3, 0, 1681934151607),
	(3428, 'Trunk-43TAY426', 'stolenoakleys', 100, '{}', 4, 0, 1681934186634),
	(3429, 'Trunk-28OFF909', 'stolen8ctchain', 100, '{}', 2, 0, 1681934208780),
	(3455, 'ply-55', 'ruby', 100, '{}', 11, 0, 1681935380887),
	(3456, 'ply-55', 'ruby', 100, '{}', 11, 0, 1681935380887),
	(3457, 'ply-55', 'ruby', 100, '{}', 11, 0, 1681935380887),
	(3458, 'ply-55', 'ruby', 100, '{}', 11, 0, 1681935380887),
	(3459, 'ply-55', 'ruby', 100, '{}', 11, 0, 1681935380887),
	(3466, 'ply-55', 'craftedgemjade', 100, '{}', 25, 0, 1681935478134),
	(3470, 'ply-55', 'idcard', 100, '{"Identifier":"55","Name":"Tommy","Surname":"Oliver","Sex":"M","DOB":"1993-12-28"}', 29, 0, 1681935829190),
	(3500, 'ply-56', '1923739240', 100, '{"cartridge":"56-OgO-134","serial":"56","quality":"Good"}', 3, 0, 1681937109956),
	(3527, 'ply-48', '-1169823560', 100, '{"cartridge":"48-iVv-396","serial":"48","quality":"Good"}', 6, 0, 1681938516950),
	(3528, 'ply-48', '-1169823560', 100, '{"cartridge":"48-iVv-396","serial":"48","quality":"Good"}', 6, 0, 1681938516950),
	(3529, 'ply-48', '-1169823560', 100, '{"cartridge":"48-iVv-396","serial":"48","quality":"Good"}', 6, 0, 1681938516950),
	(3530, 'ply-48', '-1169823560', 100, '{"cartridge":"48-iVv-396","serial":"48","quality":"Good"}', 6, 0, 1681938516950),
	(3533, 'ply-55', '-1716589765', 34, '{"cartridge":"55-NUW-500","serial":"55","quality":"Good"}', 1, 0, 1680290498970),
	(3548, 'ply-54', 'rifleammo', 100, '{}', 13, 0, 1681940601930),
	(3549, 'ply-54', 'rifleammo', 100, '{}', 13, 0, 1681940601930),
	(3550, 'ply-54', 'rifleammo', 100, '{}', 13, 0, 1681940601930),
	(3551, 'ply-54', 'rifleammo', 100, '{}', 13, 0, 1681940601930),
	(3552, 'ply-54', 'rifleammo', 100, '{}', 13, 0, 1681940601930),
	(3553, 'ply-54', 'rifleammo', 100, '{}', 13, 0, 1681940601930),
	(3554, 'ply-54', 'rifleammo', 100, '{}', 13, 0, 1681940601930),
	(3563, 'ply-57', '-820634585', 100, '{"cartridge":"57-hWU-903","serial":"57","quality":"Good"}', 1, 0, 1681941141945),
	(3572, 'ply-54', '-1355376991', 36, '{"cartridge":"54-qxF-836","serial":"54","quality":"Good"}', 4, 0, 1680341317173),
	(3573, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3574, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3575, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3576, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3577, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3578, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3579, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3580, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3581, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3582, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3583, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3584, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3585, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3586, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3587, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3588, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3589, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3590, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3591, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3592, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3593, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3594, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3595, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3596, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3597, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3598, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3599, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3600, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3601, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3602, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3603, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3604, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3605, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3606, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3607, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3608, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3609, 'motel-3-48', 'inkset', 100, '{}', 2, 0, 1681941581674),
	(3610, 'motel-3-48', 'inkedmoneybag', 100, '{}', 1, 0, 1681941581674),
	(3611, 'ply-55', 'heistusb1', 100, '{}', 14, 0, 1681941629599),
	(3673, 'ply-51', 'drill', 100, '{}', 7, 0, 1681942069472),
	(3802, 'ply-51', 'pistolammo', 100, '{}', 5, 0, 1681943683418),
	(3803, 'ply-51', 'pistolammo', 100, '{}', 5, 0, 1681943683569),
	(3804, 'ply-51', 'pistolammo', 100, '{}', 5, 0, 1681943683719),
	(3805, 'ply-51', 'pistolammo', 100, '{}', 5, 0, 1681943683923),
	(3806, 'ply-57', '2343591895', 100, '{"cartridge":"57-Xku-477","serial":"57","quality":"Good"}', 4, 0, 1681943688897),
	(3807, 'ply-51', '2343591895', 100, '{"cartridge":"51-jZF-633","serial":"51","quality":"Good"}', 16, 0, 1681943696242),
	(3813, 'ply-51', 'evidence', 100, '{"Identifier":{"b":15,"g":15,"r":15},"type":"vehiclefragment","other":"(r:15, g:15, b:15) Colored Vehicle Fragment"}', 10, 0, 1681943715010),
	(3814, 'ply-57', 'np_evidence_marker_light_blue', 100, '{}', 13, 0, 1681943723542),
	(3815, 'ply-57', 'np_evidence_marker_light_blue', 100, '{}', 13, 0, 1681943723542),
	(3816, 'ply-57', 'np_evidence_marker_light_blue', 100, '{}', 13, 0, 1681943723542),
	(3817, 'ply-57', 'np_evidence_marker_light_blue', 100, '{}', 13, 0, 1681943723542),
	(3818, 'ply-57', 'np_evidence_marker_light_blue', 100, '{}', 13, 0, 1681943723542),
	(3819, 'ply-51', 'evidence', 100, '{"Identifier":"54-qxF-836","type":"projectile","other":-1355376991}', 13, 0, 1681943725213),
	(3820, 'ply-51', 'evidence', 100, '{"Identifier":"DNA-57","type":"blood","other":"Partial Human DNA"}', 15, 0, 1681943739634),
	(3823, 'ply-57', 'taserammo', 100, '{}', 20, 0, 1681944116424),
	(3824, 'ply-57', 'taserammo', 100, '{}', 20, 0, 1681944116424),
	(3825, 'ply-57', 'taserammo', 100, '{}', 20, 0, 1681944116424),
	(3826, 'ply-57', 'camera', 100, '{}', 19, 0, 1681944120852),
	(3828, 'ply-57', 'IFAK', 100, '{}', 3, 0, 1681944127481),
	(3829, 'ply-57', 'IFAK', 100, '{}', 3, 0, 1681944127481),
	(3830, 'ply-57', 'IFAK', 100, '{}', 3, 0, 1681944127481),
	(3831, 'ply-57', 'IFAK', 100, '{}', 3, 0, 1681944127481),
	(3832, 'ply-57', '-120179019', 76, '{"cartridge":"57-pzj-765","serial":"57","quality":"Good"}', 17, 0, 1681344222823),
	(3846, 'ply-54', 'joint2', 100, '{}', 3, 0, 1681944356939),
	(3847, 'ply-54', 'joint2', 100, '{}', 3, 0, 1681944356939),
	(3848, 'ply-54', 'joint2', 100, '{}', 3, 0, 1681944356939),
	(3849, 'ply-54', 'joint2', 100, '{}', 3, 0, 1681944356939),
	(3850, 'ply-54', 'joint2', 100, '{}', 3, 0, 1681944356939),
	(3851, 'ply-54', 'joint2', 100, '{}', 3, 0, 1681944356939),
	(3852, 'ply-54', 'joint2', 100, '{}', 3, 0, 1681944356939),
	(3872, 'ply-56', 'joint', 100, '{}', 4, 0, 1681944724000),
	(3903, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681997996092),
	(3904, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681997996092),
	(3905, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681997996092),
	(3906, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681997996092),
	(3907, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681997996092),
	(3908, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681997996092),
	(3909, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681997996092),
	(3910, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681997996092),
	(3911, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681997996092),
	(3912, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681997996092),
	(3913, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681997996092),
	(3914, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681997996092),
	(3915, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681997996092),
	(3916, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681997996092),
	(3917, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681997996092),
	(3918, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681997996092),
	(3919, 'Trunk-61KCM033', 'stolen8ctchain', 100, '{}', 1, 0, 1681997996092),
	(3920, 'Trunk-61KCM033', 'stolen8ctchain', 100, '{}', 1, 0, 1681997996092),
	(3921, 'Trunk-61KCM033', 'stolen8ctchain', 100, '{}', 1, 0, 1681997996092),
	(3922, 'Trunk-61KCM033', 'stolen8ctchain', 100, '{}', 1, 0, 1681997996092),
	(3923, 'Trunk-61KCM033', 'stolen8ctchain', 100, '{}', 1, 0, 1681997996092),
	(3924, 'Trunk-61KCM033', 'stolen8ctchain', 100, '{}', 1, 0, 1681997996092),
	(3925, 'Trunk-61KCM033', 'stolen8ctchain', 100, '{}', 1, 0, 1681997996092),
	(3926, 'Trunk-61KCM033', 'stolen8ctchain', 100, '{}', 1, 0, 1681997996092),
	(3927, 'Trunk-61KCM033', 'stolen8ctchain', 100, '{}', 1, 0, 1681997996092),
	(3928, 'Trunk-61KCM033', 'stolen8ctchain', 100, '{}', 1, 0, 1681997996092),
	(3929, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998007690),
	(3930, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998007690),
	(3931, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998007690),
	(3932, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998007690),
	(3933, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998007690),
	(3934, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998007690),
	(3935, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998007690),
	(3936, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998007690),
	(3937, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998007690),
	(3938, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998007690),
	(3939, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998007690),
	(3940, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998007690),
	(3941, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998007690),
	(3942, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998007690),
	(3943, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998007690),
	(3944, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998007690),
	(3945, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998007690),
	(3946, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998007690),
	(3947, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998007690),
	(3948, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998007690),
	(3949, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998007690),
	(3950, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998007690),
	(3951, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998007690),
	(3952, 'Trunk-61KCM033', 'stolen8ctchain', 100, '{}', 1, 0, 1681998007690),
	(3953, 'Trunk-61KCM033', 'stolen8ctchain', 100, '{}', 1, 0, 1681998007690),
	(3954, 'Trunk-61KCM033', 'stolen8ctchain', 100, '{}', 1, 0, 1681998007690),
	(3955, 'Trunk-61KCM033', 'stolen8ctchain', 100, '{}', 1, 0, 1681998007690),
	(3956, 'Trunk-61KCM033', 'stolen8ctchain', 100, '{}', 1, 0, 1681998007690),
	(3957, 'Trunk-61KCM033', 'stolen8ctchain', 100, '{}', 1, 0, 1681998007690),
	(3958, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998016203),
	(3959, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998016203),
	(3960, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998016203),
	(3961, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998016203),
	(3962, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998016203),
	(3963, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998016203),
	(3964, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998016203),
	(3965, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998016203),
	(3966, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998016203),
	(3967, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998016203),
	(3968, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998016203),
	(3969, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998016203),
	(3970, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998016203),
	(3971, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998016203),
	(3972, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998016203),
	(3973, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998016203),
	(3974, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998016203),
	(3975, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998016203),
	(3976, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998016203),
	(3977, 'Trunk-61KCM033', 'stolen8ctchain', 100, '{}', 1, 0, 1681998016204),
	(3978, 'Trunk-61KCM033', 'stolen8ctchain', 100, '{}', 1, 0, 1681998016204),
	(3979, 'Trunk-61KCM033', 'stolen8ctchain', 100, '{}', 1, 0, 1681998016204),
	(3980, 'Trunk-61KCM033', 'stolen8ctchain', 100, '{}', 1, 0, 1681998016204),
	(3981, 'Trunk-61KCM033', 'stolen8ctchain', 100, '{}', 1, 0, 1681998016204),
	(3982, 'Trunk-61KCM033', 'stolen8ctchain', 100, '{}', 1, 0, 1681998016204),
	(3983, 'Trunk-61KCM033', 'stolen8ctchain', 100, '{}', 1, 0, 1681998016204),
	(3984, 'Trunk-61KCM033', 'stolen8ctchain', 100, '{}', 1, 0, 1681998016204),
	(3985, 'Trunk-61KCM033', 'stolen8ctchain', 100, '{}', 1, 0, 1681998016204),
	(3986, 'Trunk-61KCM033', 'stolen8ctchain', 100, '{}', 1, 0, 1681998016204),
	(3988, 'Trunk-61KCM033', 'valuablegoods', 100, '{}', 5, 0, 1681998049236),
	(3989, 'Trunk-61KCM033', 'valuablegoods', 100, '{}', 5, 0, 1681998049236),
	(3990, 'Trunk-61KCM033', 'valuablegoods', 100, '{}', 5, 0, 1681998049236),
	(3991, 'Trunk-61KCM033', 'valuablegoods', 100, '{}', 5, 0, 1681998049236),
	(3992, 'Trunk-61KCM033', 'valuablegoods', 100, '{}', 5, 0, 1681998049236),
	(3993, 'Trunk-61KCM033', 'valuablegoods', 100, '{}', 5, 0, 1681998049236),
	(3994, 'Trunk-61KCM033', 'valuablegoods', 100, '{}', 5, 0, 1681998049236),
	(3995, 'Trunk-61KCM033', 'goldbar', 100, '{}', 4, 0, 1681998049236),
	(3996, 'Trunk-61KCM033', 'goldbar', 100, '{}', 4, 0, 1681998049236),
	(3997, 'Trunk-61KCM033', 'goldbar', 100, '{}', 4, 0, 1681998049236),
	(3998, 'Trunk-61KCM033', 'goldbar', 100, '{}', 4, 0, 1681998049236),
	(3999, 'Trunk-61KCM033', 'goldbar', 100, '{}', 4, 0, 1681998049236),
	(4000, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998049237),
	(4001, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998049237),
	(4002, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998049237),
	(4003, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998049237),
	(4004, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998049237),
	(4005, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998049237),
	(4006, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998049237),
	(4007, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998049237),
	(4008, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998049237),
	(4009, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998049237),
	(4010, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998049237),
	(4011, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998049237),
	(4012, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998049237),
	(4013, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998049237),
	(4014, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998049237),
	(4015, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998049237),
	(4016, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998049237),
	(4017, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998049237),
	(4018, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998049237),
	(4019, 'Trunk-61KCM033', 'valuablegoods', 100, '{}', 5, 0, 1681998089974),
	(4020, 'Trunk-61KCM033', 'valuablegoods', 100, '{}', 5, 0, 1681998089974),
	(4021, 'Trunk-61KCM033', 'valuablegoods', 100, '{}', 5, 0, 1681998089974),
	(4022, 'Trunk-61KCM033', 'valuablegoods', 100, '{}', 5, 0, 1681998089974),
	(4023, 'Trunk-61KCM033', 'valuablegoods', 100, '{}', 5, 0, 1681998089974),
	(4024, 'Trunk-61KCM033', 'valuablegoods', 100, '{}', 5, 0, 1681998089974),
	(4025, 'Trunk-61KCM033', 'valuablegoods', 100, '{}', 5, 0, 1681998089974),
	(4026, 'Trunk-61KCM033', 'valuablegoods', 100, '{}', 5, 0, 1681998089974),
	(4027, 'Trunk-61KCM033', 'valuablegoods', 100, '{}', 5, 0, 1681998089974),
	(4028, 'Trunk-61KCM033', 'valuablegoods', 100, '{}', 5, 0, 1681998089974),
	(4029, 'Trunk-61KCM033', 'valuablegoods', 100, '{}', 5, 0, 1681998089974),
	(4030, 'Trunk-61KCM033', 'valuablegoods', 100, '{}', 5, 0, 1681998089974),
	(4031, 'Trunk-61KCM033', 'valuablegoods', 100, '{}', 5, 0, 1681998089974),
	(4032, 'Trunk-61KCM033', 'valuablegoods', 100, '{}', 5, 0, 1681998089974),
	(4033, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4034, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4035, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4036, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4037, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4038, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4039, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4040, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4041, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4042, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4043, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4044, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4045, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4046, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4047, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4048, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4049, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4050, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4051, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4052, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4053, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4054, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4055, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4056, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4057, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4058, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4059, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4060, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4061, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4062, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4063, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4064, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4065, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4066, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4067, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4068, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4069, 'Trunk-61KCM033', 'goldcoin', 100, '{}', 2, 0, 1681998089975),
	(4070, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998089975),
	(4071, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998089975),
	(4072, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998089975),
	(4073, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998089975),
	(4074, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998089975),
	(4075, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998089975),
	(4076, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998089975),
	(4077, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998089975),
	(4078, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998089975),
	(4079, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998089975),
	(4080, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998089975),
	(4081, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998089975),
	(4082, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998089975),
	(4083, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998089975),
	(4084, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998089975),
	(4085, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998089975),
	(4086, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998089975),
	(4087, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998089975),
	(4088, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998089975),
	(4089, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998089975),
	(4090, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998089975),
	(4091, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998089975),
	(4092, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998089975),
	(4093, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998089975),
	(4094, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998089975),
	(4095, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998089975),
	(4096, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998089975),
	(4097, 'Trunk-61KCM033', 'valuablegoods', 100, '{}', 5, 0, 1681998129807),
	(4098, 'Trunk-61KCM033', 'valuablegoods', 100, '{}', 5, 0, 1681998129807),
	(4099, 'Trunk-61KCM033', 'valuablegoods', 100, '{}', 5, 0, 1681998129807),
	(4100, 'Trunk-61KCM033', 'valuablegoods', 100, '{}', 5, 0, 1681998129807),
	(4101, 'Trunk-61KCM033', 'valuablegoods', 100, '{}', 5, 0, 1681998129807),
	(4102, 'Trunk-61KCM033', 'valuablegoods', 100, '{}', 5, 0, 1681998129807),
	(4103, 'Trunk-61KCM033', 'goldbar', 100, '{}', 4, 0, 1681998129808),
	(4104, 'Trunk-61KCM033', 'goldbar', 100, '{}', 4, 0, 1681998129808),
	(4105, 'Trunk-61KCM033', 'goldbar', 100, '{}', 4, 0, 1681998129808),
	(4106, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998129808),
	(4107, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998129808),
	(4108, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998129808),
	(4109, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998129808),
	(4110, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998129808),
	(4111, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998129808),
	(4112, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998129808),
	(4113, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998129808),
	(4114, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998129808),
	(4115, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998129808),
	(4116, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998129808),
	(4117, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998129808),
	(4118, 'Trunk-61KCM033', 'rolexwatch', 100, '{}', 3, 0, 1681998129808),
	(4128, 'Trunk-61KCM033', 'heistlaptop3', 100, '{"id":4337118,"_hideKeys":["id"]}', 18, 0, 1681998701936),
	(4129, 'Trunk-61KCM033', 'heistlaptop4', 100, '{"id":4922352,"_hideKeys":["id"]}', 17, 0, 1681998853519),
	(4130, 'Trunk-61KCM033', 'heistlaptop2', 100, '{"id":283551,"_hideKeys":["id"]}', 16, 0, 1681998860050),
	(4134, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4135, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4136, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4137, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4138, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4139, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4140, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4141, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4142, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4143, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4144, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4145, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4146, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4147, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4148, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4149, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4150, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4151, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4152, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4153, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4154, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4155, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4156, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4157, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4158, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4159, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4160, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4161, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4162, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4163, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4164, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4165, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4166, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4167, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4168, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4169, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4170, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4171, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4172, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4173, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4174, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4175, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4176, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4177, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4178, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4179, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4180, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4181, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4182, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4183, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4184, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4185, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4186, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4187, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4188, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4189, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4190, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4191, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4192, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4193, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4194, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4195, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4196, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4197, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4198, 'Trunk-61KCM033', 'markedbills', 100, '{}', 7, 0, 1681999006463),
	(4199, 'Trunk-61KCM033', 'heistusb2', 100, '{}', 6, 0, 1681999006464),
	(4258, 'ply-52', '-2009644972', 73, '{"cartridge":"52-asZ-96","serial":"52","quality":"Good"}', 11, 0, 1681325389200),
	(4270, 'ply-48', 'mobilephone', 100, '{}', 8, 0, 1682000465507),
	(4271, 'ply-48', 'radio', 100, '{}', 5, 0, 1682000518371),
	(4272, 'ply-48', 'radio', 100, '{}', 7, 0, 1682000518931),
	(4274, 'ply-52', 'paintballs', 100, '{}', 8, 0, 1682000560839),
	(4275, 'ply-52', 'paintballs', 100, '{}', 8, 0, 1682000562047),
	(4276, 'ply-52', 'paintballs', 100, '{}', 8, 0, 1682000562249),
	(4277, 'ply-48', 'pixellaptop', 100, '{}', 4, 0, 1682000582170),
	(4309, 'ply-48', 'thermitecharge', 100, '{}', 9, 0, 1682005128221),
	(4310, 'ply-48', 'thermitecharge', 100, '{}', 9, 0, 1682005128374),
	(4313, 'ply-52', '1192676223', 60, '{"cartridge":"52-UBy-730","serial":"52","quality":"Good"}', 1, 0, 1681008620786),
	(4324, 'ply-52', 'joint', 100, '{}', 9, 0, 1682008799468),
	(4325, 'ply-52', 'joint', 100, '{}', 9, 0, 1682008799568),
	(4326, 'ply-52', 'joint', 100, '{}', 9, 0, 1682008799719),
	(4327, 'ply-52', 'joint', 100, '{}', 9, 0, 1682008799869),
	(4328, 'ply-52', 'joint', 100, '{}', 9, 0, 1682008800022),
	(4329, 'ply-52', 'joint', 100, '{}', 9, 0, 1682008800173),
	(4330, 'ply-52', 'joint', 100, '{}', 9, 0, 1682008800325),
	(4331, 'ply-52', 'joint', 100, '{}', 9, 0, 1682008800425),
	(4332, 'ply-52', 'joint', 100, '{}', 9, 0, 1682008800576),
	(4333, 'ply-55', 'safecrackingkit', 100, '{}', 9, 0, 1682009202666),
	(4334, 'ply-52', 'safecrackingkit', 100, '{}', 5, 0, 1682009305192),
	(4335, 'ply-55', 'coke5g', 97, '{}', 10, 0, 1681934434125),
	(4336, 'ply-55', 'coke5g', 100, '{}', 10, 0, 1682009434125),
	(4340, 'ply-55', 'heistlaptop3', 100, '{"id":5638529,"_hideKeys":["id"]}', 6, 0, 1682010943543),
	(4343, 'ply-55', 'bobcatsecuritycard', 100, '{}', 16, 0, 1682011031301),
	(4358, 'ply-51', '324215364', 100, '{"cartridge":"51-AqT-573","serial":"51","quality":"Good"}', 3, 0, 1682015229803),
	(4375, 'ply-48', '-1716589765', 87, '{"cartridge":"48-sZe-700","serial":"48","quality":"Good"}', 2, 0, 1681691120362),
	(4382, 'ply-56', '-1716589765', 74, '{"cartridge":"56-CsZ-399","serial":"56","quality":"Good"}', 1, 0, 1681366230159),
	(4391, 'ply-56', 'pistolammo', 100, '{}', 6, 0, 1682016234360),
	(4392, 'ply-56', 'pistolammo', 100, '{}', 6, 0, 1682016234360),
	(4393, 'ply-52', '-1074790547', 100, '{"cartridge":"52-bcz-431","serial":"52","quality":"Good"}', 13, 0, 1682016247229),
	(4398, 'ply-52', 'rifleammo', 100, '{}', 12, 0, 1682016289864),
	(4412, 'ply-57', '-1716589765', 89, '{"cartridge":"57-ZKO-79","serial":"57","quality":"Good"}', 2, 0, 1681741391106),
	(4418, 'ply-52', 'spellbook-roar', 100, '{}', 2, 0, 1682016426249),
	(4420, 'ply-57', 'pistolammo', 100, '{}', 12, 0, 1682016482611),
	(4421, 'ply-57', 'pistolammo', 100, '{}', 12, 0, 1682016482611),
	(4422, 'ply-57', 'pistolammo', 100, '{}', 12, 0, 1682016482611),
	(4423, 'ply-57', 'pistolammo', 100, '{}', 12, 0, 1682016482611),
	(4430, 'ply-54', '1192676223', 96, '{"cartridge":"54-yQD-274","serial":"54","quality":"Good"}', 1, 0, 1681916596636),
	(4434, 'ply-50', 'pistolammo', 100, '{}', 3, 0, 1682016669583),
	(4435, 'ply-50', 'pistolammo', 100, '{}', 3, 0, 1682016669734),
	(4436, 'ply-50', 'pistolammo', 100, '{}', 3, 0, 1682016669885),
	(4438, 'ply-50', '-1716589765', 85, '{"cartridge":"50-jIG-828","serial":"50","quality":"Good"}', 1, 0, 1681641896921),
	(4469, 'ply-55', 'advlockpick', 94, '{}', 2, 0, 1681871022221);

-- Dumping structure for table nopixel.user_licenses
CREATE TABLE IF NOT EXISTS `user_licenses` (
  `cid` longtext NOT NULL,
  `type` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.user_licenses: ~63 rows (approximately)
INSERT INTO `user_licenses` (`cid`, `type`, `status`) VALUES
	('48', 'Weapon', 1),
	('48', 'Driver', 1),
	('48', 'Hunting', 0),
	('48', 'Fishing', 0),
	('48', 'Pilot', 1),
	('48', 'Business', 0),
	('48', 'Bar', 0),
	('49', 'Driver', 1),
	('49', 'Hunting', 0),
	('49', 'Weapon', 0),
	('49', 'Fishing', 0),
	('49', 'Pilot', 0),
	('49', 'Business', 0),
	('49', 'Bar', 0),
	('50', 'Driver', 1),
	('50', 'Hunting', 0),
	('50', 'Weapon', 1),
	('50', 'Fishing', 0),
	('50', 'Pilot', 1),
	('50', 'Business', 0),
	('50', 'Bar', 0),
	('51', 'Weapon', 1),
	('51', 'Hunting', 0),
	('51', 'Driver', 1),
	('51', 'Fishing', 0),
	('51', 'Pilot', 0),
	('51', 'Business', 1),
	('51', 'Bar', 0),
	('52', 'Weapon', 0),
	('52', 'Driver', 1),
	('52', 'Hunting', 0),
	('52', 'Fishing', 0),
	('52', 'Pilot', 0),
	('52', 'Business', 0),
	('52', 'Bar', 0),
	('53', 'Weapon', 0),
	('53', 'Driver', 1),
	('53', 'Hunting', 0),
	('53', 'Fishing', 0),
	('53', 'Pilot', 0),
	('53', 'Bar', 0),
	('53', 'Business', 0),
	('54', 'Driver', 1),
	('54', 'Weapon', 0),
	('54', 'Hunting', 0),
	('54', 'Fishing', 0),
	('54', 'Business', 0),
	('54', 'Pilot', 0),
	('54', 'Bar', 0),
	('55', 'Weapon', 1),
	('55', 'Hunting', 0),
	('55', 'Driver', 1),
	('55', 'Fishing', 0),
	('55', 'Business', 0),
	('55', 'Pilot', 0),
	('55', 'Bar', 0),
	('56', 'Weapon', 0),
	('56', 'Driver', 1),
	('56', 'Hunting', 0),
	('56', 'Pilot', 0),
	('56', 'Fishing', 0),
	('56', 'Bar', 0),
	('56', 'Business', 0),
	('57', 'Driver', 1),
	('57', 'Weapon', 0),
	('57', 'Hunting', 0),
	('57', 'Fishing', 0),
	('57', 'Pilot', 0),
	('57', 'Business', 0),
	('57', 'Bar', 0);

-- Dumping structure for table nopixel.user_messages
CREATE TABLE IF NOT EXISTS `user_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nopixel.user_messages: 8 rows
/*!40000 ALTER TABLE `user_messages` DISABLE KEYS */;
INSERT INTO `user_messages` (`id`, `sender`, `receiver`, `message`, `date`, `isRead`) VALUES
	(2, '3321838378', '1167297363', 'dawdawda', '2023-04-19 14:51:08', 0),
	(3, '3321838378', '1167297363', 'dawdawda', '2023-04-19 14:51:13', 1),
	(4, '1167297363', '3321838378', 'asdasfaesdfgsd', '2023-04-19 14:51:20', 0),
	(5, '1167297363', '3321838378', '\n', '2023-04-19 14:51:21', 0),
	(6, '1167297363', '3321838378', '\n', '2023-04-19 14:51:28', 0),
	(7, '1167297363', '3321838378', '\n', '2023-04-19 14:51:28', 0),
	(8, '1167297363', '3321838378', '\n', '2023-04-19 14:51:29', 1),
	(9, '1167297363', '3321838378', '\n', '2023-04-19 14:51:29', 0),
	(10, '1167297363', '5522155761', 'a', '2023-04-19 16:47:33', 1);
/*!40000 ALTER TABLE `user_messages` ENABLE KEYS */;

-- Dumping structure for table nopixel.user_priors
CREATE TABLE IF NOT EXISTS `user_priors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(255) NOT NULL,
  `charge` varchar(255) DEFAULT NULL,
  `times` int(255) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.user_priors: ~0 rows (approximately)

-- Dumping structure for table nopixel.user_settings
CREATE TABLE IF NOT EXISTS `user_settings` (
  `hex_id` varchar(255) NOT NULL DEFAULT '',
  `settings` varchar(255) DEFAULT '{}',
  PRIMARY KEY (`hex_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.user_settings: ~0 rows (approximately)

-- Dumping structure for table nopixel.variables
CREATE TABLE IF NOT EXISTS `variables` (
  `name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nopixel.variables: ~0 rows (approximately)

-- Dumping structure for table nopixel.vehicle_display
CREATE TABLE IF NOT EXISTS `vehicle_display` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(60) NOT NULL,
  `name` varchar(60) NOT NULL,
  `commission` int(11) NOT NULL DEFAULT 10,
  `baseprice` int(11) NOT NULL DEFAULT 25,
  `price` int(11) DEFAULT 25000,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- Dumping data for table nopixel.vehicle_display: ~0 rows (approximately)

-- Dumping structure for table nopixel.vehicle_mdt
CREATE TABLE IF NOT EXISTS `vehicle_mdt` (
  `dbid` int(11) NOT NULL,
  `plate` varchar(255) DEFAULT NULL,
  `notes` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT 'https://cdn.discordapp.com/attachments/832371566859124821/881624386317201498/Screenshot_1607.png',
  `code` int(11) DEFAULT 0,
  `stolen` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.vehicle_mdt: ~0 rows (approximately)

-- Dumping structure for table nopixel.vip_list
CREATE TABLE IF NOT EXISTS `vip_list` (
  `id` int(11) DEFAULT NULL,
  `steamid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.vip_list: ~0 rows (approximately)

-- Dumping structure for table nopixel.weed
CREATE TABLE IF NOT EXISTS `weed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender` int(11) NOT NULL,
  `coords` varchar(255) NOT NULL,
  `strain` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `last_harvest` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.weed: ~0 rows (approximately)

-- Dumping structure for table nopixel.weed_plants
CREATE TABLE IF NOT EXISTS `weed_plants` (
  `id` int(11) DEFAULT 0,
  `coords` varchar(500) DEFAULT '',
  `seed` varchar(255) DEFAULT NULL,
  `growth` varchar(50) DEFAULT '0',
  `owner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.weed_plants: ~0 rows (approximately)

-- Dumping structure for table nopixel.wenmo_logs
CREATE TABLE IF NOT EXISTS `wenmo_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT 0,
  `numfrom` varchar(10) DEFAULT '0',
  `numto` varchar(10) DEFAULT '0',
  `amount` int(11) DEFAULT 0,
  `comment` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.wenmo_logs: ~0 rows (approximately)

-- Dumping structure for table nopixel._business_logs
CREATE TABLE IF NOT EXISTS `_business_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) DEFAULT NULL,
  `data_type` varchar(50) DEFAULT NULL,
  `data_info` varchar(50) DEFAULT NULL,
  `business_id` varchar(50) DEFAULT NULL,
  `data_date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel._business_logs: ~14 rows (approximately)
INSERT INTO `_business_logs` (`id`, `user_name`, `data_type`, `data_info`, `business_id`, `data_date`) VALUES
	(5, 'Tommy Warren', 'Created Role', '', 'harmony_repairs', 'Wednesday, 04 April 2023'),
	(6, 'Tommy Warren', 'Created Role', 'Your mom role', 'harmony_repairs', 'Wednesday, 04 April 2023'),
	(7, 'Tommy Warren', 'Created Role', 'ONLY DARK ROLE', 'harmony_repairs', 'Wednesday, 04 April 2023'),
	(8, 'Tommy Warren', 'Created Role', 'Only for dark', 'pdm', 'Wednesday, 04 April 2023'),
	(9, 'Tommy Warren', 'Created Role', 'Niga', 'police', 'Wednesday, 04 April 2023'),
	(10, 'Tommy Warren', 'Created Role', 'Leautenantotne', 'police', 'Wednesday, 04 April 2023'),
	(11, 'Tommy Warren', 'Created Role', 'Leautenantotne', 'police', 'Wednesday, 04 April 2023'),
	(12, 'Tommy Warren', 'Created Role', 'Chief', 'police', 'Wednesday, 04 April 2023'),
	(13, 'Tommy Warren', 'Created Role', 'Heep Only', 'burger_shot', 'Wednesday, 04 April 2023'),
	(14, 'Mike Hock', 'Created Role', 'Cadet', 'police', 'Wednesday, 04 April 2023'),
	(15, 'Mike Hock', 'Created Role', 'Solo Cadet', 'police', 'Wednesday, 04 April 2023'),
	(16, 'Mike Hock', 'Created Role', 'Solo Cadet', 'police', 'Wednesday, 04 April 2023'),
	(17, 'Mike Hock', 'Created Role', 'Chief of Police', 'police', 'Wednesday, 04 April 2023'),
	(18, 'Tommy Warren', 'Edited Role', 'Heep Only', 'burger_shot', 'Wednesday, 04 April 2023'),
	(19, 'Mike Hock', 'Created Role', 'Chief Of Police', 'police', 'Wednesday, 04 April 2023'),
	(20, 'Mike Hock', 'Created Role', 'Chief Of Police', 'police', 'Wednesday, 04 April 2023'),
	(21, 'Mike Hock', 'Created Role', 'Cadet', 'police', 'Wednesday, 04 April 2023'),
	(22, 'Mike Hock', 'Created Role', 'Solo Cadet', 'police', 'Wednesday, 04 April 2023');

-- Dumping structure for table nopixel._cameras
CREATE TABLE IF NOT EXISTS `_cameras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `coords` longtext DEFAULT NULL,
  `rotation` varchar(50) DEFAULT NULL,
  `cid` longtext DEFAULT NULL,
  `ownerCid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel._cameras: ~0 rows (approximately)

-- Dumping structure for table nopixel._character_crypto_wallet
CREATE TABLE IF NOT EXISTS `_character_crypto_wallet` (
  `id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel._character_crypto_wallet: ~0 rows (approximately)

-- Dumping structure for table nopixel._phone_contact
CREATE TABLE IF NOT EXISTS `_phone_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `character_id` int(10) unsigned NOT NULL,
  `name` varchar(70) DEFAULT NULL,
  `number` char(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel._phone_contact: ~0 rows (approximately)

-- Dumping structure for table nopixel._phone_message
CREATE TABLE IF NOT EXISTS `_phone_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number_from` char(50) NOT NULL DEFAULT '0',
  `number_to` char(50) NOT NULL DEFAULT '0',
  `message` varchar(255) DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel._phone_message: ~0 rows (approximately)

-- Dumping structure for table nopixel._scenes
CREATE TABLE IF NOT EXISTS `_scenes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coords` varchar(1020) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `color` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `distance` float NOT NULL,
  `font` varchar(50) NOT NULL,
  `caret` varchar(50) NOT NULL,
  `solid` varchar(50) NOT NULL,
  `background` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nopixel._scenes: ~0 rows (approximately)

-- Dumping structure for table nopixel._transaction_log
CREATE TABLE IF NOT EXISTS `_transaction_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(36) NOT NULL DEFAULT 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxx',
  `payee_account_id` int(11) DEFAULT NULL,
  `receiver_account_id` int(11) DEFAULT NULL,
  `change` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `triggered_by` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT unix_timestamp(),
  `tax_level` int(11) NOT NULL,
  `tax_category` int(11) NOT NULL,
  `transaction_type` enum('deposit','withdraw','transfer','payslip','venmo','purchase','forfeiture','grant') NOT NULL DEFAULT 'deposit',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `transaction_id` (`transaction_id`) USING BTREE,
  KEY `transaction_log_ibfk_3` (`payee_account_id`) USING BTREE,
  KEY `transaction_log_ibfk_2` (`payee_account_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel._transaction_log: ~0 rows (approximately)

-- Dumping structure for table nopixel._twats
CREATE TABLE IF NOT EXISTS `_twats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `character_id` int(11) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `text` text DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel._twats: ~0 rows (approximately)

-- Dumping structure for table nopixel._weed
CREATE TABLE IF NOT EXISTS `_weed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coords` varchar(1020) NOT NULL,
  `strain` varchar(50) NOT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT 0,
  `last_harvest` int(11) NOT NULL DEFAULT 0,
  `timestamp` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table nopixel._weed: ~2 rows (approximately)
INSERT INTO `_weed` (`id`, `coords`, `strain`, `gender`, `last_harvest`, `timestamp`) VALUES
	(2, '{"x":36.71557998657226,"y":-1893.505126953125,"z":21.16382980346679}', '{"p":0.6,"water":0.7,"n":0.6,"k":0.6}', 0, 1682012545, 1681914508);

-- Dumping structure for table nopixel._yellowpages
CREATE TABLE IF NOT EXISTS `_yellowpages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `character_id` int(11) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `text` text DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel._yellowpages: ~0 rows (approximately)

-- Dumping structure for table nopixel.__banking_logs
CREATE TABLE IF NOT EXISTS `__banking_logs` (
  `cid` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `reason` longtext NOT NULL,
  `withdraw` int(11) DEFAULT NULL,
  `business` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.__banking_logs: ~0 rows (approximately)

-- Dumping structure for table nopixel.__diamondsports
CREATE TABLE IF NOT EXISTS `__diamondsports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(50) NOT NULL DEFAULT '0',
  `date` varchar(50) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '0',
  `location` varchar(50) NOT NULL DEFAULT '0',
  `timezoneAbbreviation` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.__diamondsports: ~1 rows (approximately)
INSERT INTO `__diamondsports` (`id`, `time`, `date`, `name`, `location`, `timezoneAbbreviation`) VALUES
	(8, '1', '20', 'Tommy Fat', 'Changi Airport', '0');

-- Dumping structure for table nopixel.__documents
CREATE TABLE IF NOT EXISTS `__documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) NOT NULL DEFAULT '0',
  `text` longtext NOT NULL DEFAULT '',
  `type` varchar(50) DEFAULT 'Notes',
  `authorized` longtext DEFAULT NULL,
  `temporary` int(11) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.__documents: ~4 rows (approximately)
INSERT INTO `__documents` (`id`, `owner`, `title`, `text`, `type`, `authorized`, `temporary`) VALUES
	(17, 48, 'Driver License', '<p><span><strong><span style=\'font-size:15px;\'>Issued to</span></strong><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;Name: Tommy Warren&nbsp;&nbsp;</span></span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;ID: 48&nbsp;&nbsp;</span></span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;Sex: Male&nbsp;&nbsp;</span></span><br><strong><span style=\'font-size:15px;\'>Issued by</span></strong><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;Name: State Account&nbsp;&nbsp;</span></span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;Date: 2023-04-19&nbsp;&nbsp;</span></span></p>', 'Licenses', '[]', 0),
	(18, 48, 'Your mom is fat', '<p>i rape ur mom</p>\n<p>&nbsp;</p>', 'Documents', '[{"cid":"55"}]', 0),
	(19, 48, 'Weapon License', '<p><span><strong><span style=\'font-size:15px;\'>Issued to</span></strong><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;Name: Tommy Warren&nbsp;&nbsp;</span></span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;ID: 48&nbsp;&nbsp;</span></span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;Sex: Male&nbsp;&nbsp;</span></span><br><strong><span style=\'font-size:15px;\'>Issued by</span></strong><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;Name: State Account&nbsp;&nbsp;</span></span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;Date: 2023-04-19&nbsp;&nbsp;</span></span></p>', 'Licenses', '[]', 0),
	(20, 50, 'IMPORTANT!!!!', '<p>heezpter is fucking ass at driving</p>', 'Notes', NULL, 0);

-- Dumping structure for table nopixel.__housedata
CREATE TABLE IF NOT EXISTS `__housedata` (
  `cid` int(11) DEFAULT NULL,
  `house_id` int(11) DEFAULT NULL,
  `house_model` int(11) DEFAULT NULL,
  `data` longtext NOT NULL DEFAULT '{}',
  `upfront` int(11) DEFAULT NULL,
  `housename` longtext DEFAULT NULL,
  `garages` longtext NOT NULL DEFAULT '{}',
  `furniture` longtext NOT NULL DEFAULT '{}',
  `status` mediumtext NOT NULL DEFAULT 'locked',
  `force_locked` mediumtext NOT NULL DEFAULT 'unlocked',
  `due` int(11) DEFAULT NULL,
  `overall` int(11) DEFAULT NULL,
  `payments` int(11) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `can_pay` mediumtext NOT NULL DEFAULT 'true'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table nopixel.__housedata: ~0 rows (approximately)

-- Dumping structure for table nopixel.__housekeys
CREATE TABLE IF NOT EXISTS `__housekeys` (
  `cid` int(11) DEFAULT NULL,
  `house_id` int(11) DEFAULT NULL,
  `house_model` int(11) DEFAULT NULL,
  `housename` longtext DEFAULT NULL,
  `name` mediumtext NOT NULL,
  `garages` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table nopixel.__housekeys: ~0 rows (approximately)

-- Dumping structure for table nopixel.__objects
CREATE TABLE IF NOT EXISTS `__objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) NOT NULL,
  `coordinates` longtext DEFAULT NULL,
  `metaData` longtext DEFAULT NULL,
  `randomId` int(255) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.__objects: ~4 rows (approximately)
INSERT INTO `__objects` (`id`, `model`, `coordinates`, `metaData`, `randomId`) VALUES
	(135, 'prop_spycam', '{"x":-1238.318115234375,"y":-898.6561279296875,"z":11.065223693847656,"h":{"x":0,"y":0,"z":117.42247772216797}}', '{"sealed":false,"_hideKeys":["cid","id","type","sealed","created_at","grapes"],"name":"Unnamed","grapes":[],"type":"vinewood_grape_barrel","cid":48}', 3639),
	(136, ' apa_mp_apa_yacht_launcher_01a', '{"x":-1174.831298828125,"y":-878.0656127929688,"z":13.30186653137207,"h":{"x":0,"y":0,"z":-59.00001907348633}}', '{}', 6617),
	(137, 'apa_mp_apa_yacht_launcher_01a', '{"x":-1174.8663330078125,"y":-877.9254150390625,"z":13.303132057189941,"h":{"x":0,"y":0,"z":-55.687870025634766}}', '{}', 3315),
	(138, 'apa_mp_h_acc_plant_palm_01', '{"x":-1172.008056640625,"y":-878.0422973632812,"z":13.116787910461426,"h":{"x":0,"y":0,"z":12.049955368041992}}', '{}', 5527),
	(149, 'prop_gas_pump_1d', '{"x":273.9660949707031,"y":-1268.5858154296875,"z":28.301651000976562,"h":{"x":0,"y":0,"z":89}}', '{}', 5594),
	(150, 'prop_gas_pump_1d', '{"x":273.8686828613281,"y":-1262.95263671875,"z":28.301651000976562,"h":{"x":0,"y":0,"z":90.91140747070312}}', '{}', 410),
	(151, 'prop_gas_pump_1d', '{"x":273.9242248535156,"y":-1254.4610595703125,"z":28.301651000976562,"h":{"x":0,"y":0,"z":87.99999237060547}}', '{}', 6697),
	(152, 'prop_spycam', '{"x":-751.9306030273438,"y":426.1552429199219,"z":45.072139739990234,"h":{"x":0,"y":0,"z":36}}', '{"type":"vinewood_grape_barrel","cid":48,"_hideKeys":["cid","id","type","sealed","created_at","grapes"],"grapes":[],"sealed":false,"name":"Unnamed"}', 6576),
	(153, 'prop_gas_pump_1d', '{"x":265.1926574707031,"y":-1254.838623046875,"z":28.301651000976562,"h":{"x":0,"y":0,"z":89.09548950195312}}', '{}', 1159),
	(154, 'prop_gas_pump_1d', '{"x":265.2400817871094,"y":-1262.828125,"z":28.301651000976562,"h":{"x":0,"y":0,"z":89}}', '{}', 4011),
	(155, 'prop_gas_pump_1d', '{"x":265.2589111328125,"y":-1268.658935546875,"z":28.301651000976562,"h":{"x":0,"y":0,"z":90}}', '{}', 3954),
	(156, 'prop_gas_pump_1d', '{"x":256.6759033203125,"y":-1268.6463623046875,"z":28.301651000976562,"h":{"x":0,"y":0,"z":90.62063598632812}}', '{}', 6657),
	(157, 'prop_gas_pump_1d', '{"x":256.5419616699219,"y":-1262.917724609375,"z":28.301651000976562,"h":{"x":0,"y":0,"z":-91.00000762939453}}', '{}', 2392),
	(158, 'prop_gas_pump_1d', '{"x":256.5751037597656,"y":-1254.6761474609375,"z":28.301651000976562,"h":{"x":0,"y":0,"z":-94.00000762939453}}', '{}', 5918),
	(159, 'prop_air_terlight_01a', '{"x":-2074.905517578125,"y":-223.45742797851562,"z":20.192218780517578,"h":{"x":3.1511805057525635,"y":4.127145290374756,"z":-128.35873413085938}}', '{}', 9029),
	(160, 'prop_sign_road_09c', '{"x":-2072.33740234375,"y":-221.57276916503906,"z":20.638580322265625,"h":{"x":6.041786193847656,"y":0.4213879108428955,"z":-73.02226257324219}}', '{}', 6298),
	(161, 'prop_gas_pump_1d', '{"x":-2106.217041015625,"y":-325.4659423828125,"z":12.177316665649414,"h":{"x":0,"y":0,"z":-95.00000762939453}}', '{}', 9243),
	(162, 'prop_gas_pump_1d', '{"x":-2097.669189453125,"y":-326.3056335449219,"z":12.177316665649414,"h":{"x":0,"y":0,"z":-100.57925415039062}}', '{}', 2204),
	(163, 'prop_gas_pump_1d', '{"x":-2105.418701171875,"y":-318.9359130859375,"z":12.177316665649414,"h":{"x":0,"y":0,"z":-94.28723907470703}}', '{}', 5393),
	(164, 'prop_gas_pump_1d', '{"x":-2096.930419921875,"y":-319.8742370605469,"z":12.177316665649414,"h":{"x":0,"y":0,"z":84.99999237060547}}', '{}', 6650),
	(165, 'prop_gas_pump_1d', '{"x":-2096.155517578125,"y":-311.9187316894531,"z":12.177316665649414,"h":{"x":0,"y":0,"z":-96}}', '{}', 8500),
	(166, 'prop_gas_pump_1d', '{"x":-2104.774169921875,"y":-310.9201354980469,"z":12.177316665649414,"h":{"x":0,"y":0,"z":-95.00000762939453}}', '{}', 647),
	(167, 'prop_gas_pump_1d', '{"x":-2087.12353515625,"y":-312.8347473144531,"z":12.177316665649414,"h":{"x":0,"y":0,"z":86.90154266357422}}', '{}', 9882),
	(168, 'prop_gas_pump_1d', '{"x":-2088.01708984375,"y":-321.1039123535156,"z":12.177316665649414,"h":{"x":0,"y":0,"z":80.99999237060547}}', '{}', 1596),
	(169, 'prop_gas_pump_1d', '{"x":-2088.662109375,"y":-327.34735107421875,"z":12.177316665649414,"h":{"x":0,"y":0,"z":85.67593383789062}}', '{}', 6027);

-- Dumping structure for table nopixel.__scenes
CREATE TABLE IF NOT EXISTS `__scenes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coords` longtext NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `distance` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `caret` varchar(255) DEFAULT NULL,
  `font` varchar(255) DEFAULT NULL,
  `solid` varchar(255) DEFAULT NULL,
  `background` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.__scenes: ~0 rows (approximately)

-- Dumping structure for table nopixel.__vehiclemods
CREATE TABLE IF NOT EXISTS `__vehiclemods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `durability` int(11) DEFAULT NULL,
  `license_plate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nopixel.__vehiclemods: ~0 rows (approximately)
INSERT INTO `__vehiclemods` (`id`, `durability`, `license_plate`) VALUES
	(30, 80, '48ZIE066');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
