-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Creato il: Lug 08, 2023 alle 04:32
-- Versione del server: 5.7.39
-- Versione PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brandgames`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(35) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Schiller-McClure', '2023-07-06 12:09:55', '2023-07-06 12:09:55', NULL),
(2, 'Hayes and Sons', '2023-07-06 12:09:55', '2023-07-06 12:09:55', NULL),
(3, 'Wuckert PLC', '2023-07-06 12:09:55', '2023-07-06 12:09:55', NULL),
(4, 'Lowe-Wuckert', '2023-07-06 12:09:55', '2023-07-06 12:09:55', NULL),
(5, 'Quitzon-Mayer', '2023-07-06 12:09:55', '2023-07-06 12:09:55', NULL),
(6, 'Halvorson, Murphy and Kling', '2023-07-06 12:09:55', '2023-07-06 12:09:55', NULL),
(7, 'Little-Gaylord', '2023-07-06 12:09:55', '2023-07-06 12:09:55', NULL),
(8, 'Herzog Group', '2023-07-06 12:09:55', '2023-07-06 12:09:55', NULL),
(9, 'Bailey Group', '2023-07-06 12:09:55', '2023-07-06 12:09:55', NULL),
(10, 'Altenwerth-Reinger', '2023-07-06 12:09:55', '2023-07-06 12:09:55', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `brand_games`
--

CREATE TABLE `brand_games` (
  `id` int(11) NOT NULL,
  `launchcode` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `new` tinyint(1) NOT NULL DEFAULT '1',
  `blocked` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `brand_games`
--

INSERT INTO `brand_games` (`id`, `launchcode`, `brand_id`, `category_id`, `hot`, `new`, `blocked`, `created_at`, `updated_at`) VALUES
(5, 1, 5, 3, 0, 0, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(6, 2, 6, 18, 0, 0, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(7, 3, 9, 6, 1, 0, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(8, 4, 10, 10, 0, 1, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(9, 5, 6, 13, 1, 1, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(10, 6, 5, 15, 1, 1, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(11, 7, 2, 19, 0, 1, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(12, 8, 3, 9, 1, 1, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(13, 9, 2, 9, 1, 1, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(14, 10, 7, 18, 1, 1, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(15, 11, 3, 3, 0, 1, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(16, 12, 6, 16, 0, 0, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(17, 13, 7, 17, 1, 0, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(18, 14, 6, 15, 1, 1, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(19, 15, 4, 5, 0, 1, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(20, 16, 7, 18, 0, 0, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(21, 17, 9, 19, 0, 0, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(22, 18, 4, 1, 1, 0, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(23, 19, 6, 6, 0, 1, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(24, 20, 4, 7, 0, 0, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(25, 21, 9, 18, 1, 1, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(26, 22, 6, 10, 1, 0, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(27, 23, 2, 13, 0, 1, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(28, 24, 6, 17, 0, 1, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(29, 25, 2, 8, 1, 0, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(30, 26, 3, 6, 1, 1, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(31, 27, 2, 4, 1, 1, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(32, 28, 3, 5, 0, 0, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(33, 29, 1, 11, 1, 0, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(34, 30, 7, 1, 0, 0, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(35, 31, 2, 12, 0, 1, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(36, 32, 2, 15, 0, 1, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(37, 33, 10, 3, 1, 1, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(38, 34, 7, 7, 1, 1, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(39, 35, 3, 5, 1, 0, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(40, 36, 1, 6, 1, 1, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(41, 37, 6, 14, 0, 0, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(42, 38, 4, 14, 0, 1, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(43, 39, 7, 8, 1, 0, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(44, 40, 8, 15, 1, 0, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(45, 41, 6, 14, 0, 0, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(46, 42, 1, 6, 0, 0, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(47, 43, 1, 6, 1, 0, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(48, 44, 3, 9, 0, 0, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(49, 45, 1, 11, 0, 1, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(50, 46, 9, 6, 0, 1, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(51, 47, 7, 15, 0, 1, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(52, 48, 9, 19, 0, 0, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(53, 49, 7, 14, 0, 0, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(54, 50, 10, 11, 1, 1, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(55, 51, 10, 11, 1, 1, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(56, 52, 2, 2, 1, 1, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(57, 53, 7, 16, 0, 0, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(58, 54, 8, 15, 0, 0, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(59, 55, 1, 8, 1, 1, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(60, 56, 3, 15, 1, 0, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(61, 57, 7, 11, 0, 1, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(62, 58, 1, 11, 0, 1, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(63, 59, 4, 3, 0, 0, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(64, 60, 8, 17, 0, 0, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(65, 61, 3, 1, 1, 1, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(66, 62, 5, 12, 1, 0, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(67, 63, 9, 18, 1, 0, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(68, 64, 3, 16, 1, 0, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(69, 65, 1, 4, 0, 0, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(70, 66, 8, 9, 0, 1, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(71, 67, 3, 16, 0, 1, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(72, 68, 4, 15, 1, 0, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(73, 69, 9, 8, 1, 0, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(74, 70, 5, 12, 1, 0, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(75, 71, 3, 19, 1, 1, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(76, 72, 2, 18, 0, 0, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(77, 73, 8, 16, 0, 1, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(78, 74, 6, 5, 0, 0, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(79, 75, 3, 15, 1, 0, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(80, 76, 2, 2, 1, 0, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(81, 77, 8, 2, 0, 1, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(82, 78, 10, 5, 1, 0, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(83, 79, 2, 16, 0, 1, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(84, 80, 4, 8, 0, 1, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(85, 81, 3, 11, 0, 1, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(86, 82, 5, 10, 1, 0, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(87, 83, 8, 19, 0, 0, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(88, 84, 9, 7, 1, 1, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(89, 85, 2, 14, 0, 0, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(90, 86, 6, 9, 0, 0, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(91, 87, 8, 5, 1, 0, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(92, 88, 7, 15, 1, 1, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(93, 89, 8, 3, 1, 0, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(94, 90, 8, 7, 1, 0, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(95, 91, 5, 8, 0, 0, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(96, 92, 3, 19, 1, 1, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(97, 93, 9, 11, 0, 1, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(98, 94, 10, 17, 0, 0, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(99, 95, 1, 14, 1, 1, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(100, 96, 2, 19, 1, 1, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(101, 97, 7, 16, 0, 1, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(102, 98, 3, 2, 0, 0, 0, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(103, 99, 4, 18, 1, 1, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(104, 100, 4, 10, 0, 0, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(105, 101, 7, 12, 1, 0, 1, '2023-07-06 12:59:27', '2023-07-06 12:59:27'),
(106, 69, 2, 1, 0, 0, 0, '2023-07-06 16:36:39', NULL),
(107, 7, 1, 3, 0, 0, 0, '2023-07-06 16:36:49', NULL),
(108, 25, 4, 1, 0, 0, 0, '2023-07-06 16:37:28', NULL),
(110, 24, 7, 19, 0, 0, 0, '2023-07-06 16:37:43', NULL),
(111, 33, 9, 15, 0, 0, 0, '2023-07-06 16:37:45', NULL),
(113, 9, 4, 15, 0, 0, 0, '2023-07-06 16:37:47', NULL),
(114, 11, 2, 12, 0, 0, 0, '2023-07-06 16:37:47', NULL),
(115, 72, 8, 3, 0, 0, 0, '2023-07-06 16:37:48', NULL),
(116, 21, 4, 9, 0, 0, 0, '2023-07-06 16:37:49', NULL),
(117, 41, 3, 4, 0, 0, 0, '2023-07-06 16:37:49', NULL),
(118, 18, 6, 6, 0, 0, 0, '2023-07-06 16:37:50', NULL),
(119, 14, 1, 19, 0, 0, 0, '2023-07-06 16:37:50', NULL),
(120, 74, 2, 16, 0, 0, 0, '2023-07-06 16:37:51', NULL),
(121, 34, 9, 19, 0, 0, 0, '2023-07-06 16:37:52', NULL),
(122, 83, 6, 10, 0, 0, 0, '2023-07-06 16:37:52', NULL),
(123, 22, 2, 9, 0, 0, 0, '2023-07-06 16:37:53', NULL),
(124, 85, 7, 16, 0, 0, 0, '2023-07-06 16:37:53', NULL),
(125, 83, 1, 12, 0, 0, 0, '2023-07-06 16:37:54', NULL),
(126, 46, 7, 9, 0, 0, 0, '2023-07-06 16:37:54', NULL),
(127, 43, 2, 7, 0, 0, 0, '2023-07-06 16:37:55', NULL),
(128, 16, 9, 10, 0, 0, 0, '2023-07-06 16:37:55', NULL),
(129, 42, 7, 12, 0, 0, 0, '2023-07-06 16:37:56', NULL),
(130, 40, 2, 15, 0, 0, 0, '2023-07-06 16:37:57', NULL),
(131, 47, 3, 14, 0, 0, 0, '2023-07-06 16:37:57', NULL),
(132, 91, 2, 17, 0, 0, 0, '2023-07-06 16:37:58', NULL),
(133, 45, 5, 2, 0, 0, 0, '2023-07-06 16:37:58', NULL),
(134, 56, 9, 18, 0, 0, 0, '2023-07-06 16:37:59', NULL),
(135, 27, 9, 19, 0, 0, 0, '2023-07-06 16:37:59', NULL),
(136, 38, 8, 3, 0, 0, 0, '2023-07-06 16:38:00', NULL),
(137, 99, 5, 14, 0, 0, 0, '2023-07-06 16:38:00', NULL),
(138, 70, 3, 1, 0, 0, 0, '2023-07-06 16:38:00', NULL),
(139, 62, 4, 6, 0, 0, 0, '2023-07-06 16:38:00', NULL),
(140, 31, 6, 4, 0, 0, 0, '2023-07-06 16:38:01', NULL),
(141, 53, 9, 6, 0, 0, 0, '2023-07-06 16:38:01', NULL),
(142, 89, 6, 4, 0, 0, 0, '2023-07-06 16:38:01', NULL),
(143, 88, 9, 6, 0, 0, 0, '2023-07-06 16:38:01', NULL),
(144, 23, 5, 18, 0, 0, 0, '2023-07-06 16:38:02', NULL),
(147, 46, 8, 11, 0, 0, 0, '2023-07-06 16:38:02', NULL),
(148, 66, 1, 7, 0, 0, 0, '2023-07-06 16:38:03', NULL),
(149, 13, 8, 15, 0, 0, 0, '2023-07-06 16:38:03', NULL),
(150, 93, 3, 9, 0, 0, 0, '2023-07-06 16:38:03', NULL),
(151, 32, 4, 15, 0, 0, 0, '2023-07-06 16:38:04', NULL),
(152, 37, 1, 2, 0, 0, 0, '2023-07-06 16:38:04', NULL),
(153, 45, 3, 15, 0, 0, 0, '2023-07-06 16:38:04', NULL),
(154, 70, 4, 1, 0, 0, 0, '2023-07-06 16:38:04', NULL),
(155, 93, 7, 14, 0, 0, 0, '2023-07-06 16:38:05', NULL),
(156, 59, 3, 15, 0, 0, 0, '2023-07-06 16:38:05', NULL),
(157, 33, 5, 6, 0, 0, 0, '2023-07-06 16:38:05', NULL),
(158, 96, 9, 12, 0, 0, 0, '2023-07-06 16:38:05', NULL),
(159, 9, 9, 9, 0, 0, 0, '2023-07-06 16:38:06', NULL),
(161, 30, 1, 8, 0, 0, 0, '2023-07-06 16:38:06', NULL),
(162, 9, 6, 19, 0, 0, 0, '2023-07-06 16:38:06', NULL),
(163, 44, 9, 5, 0, 0, 0, '2023-07-06 16:38:07', NULL),
(164, 79, 4, 7, 0, 0, 0, '2023-07-06 16:38:07', NULL),
(168, 74, 9, 6, 0, 0, 0, '2023-07-06 16:38:08', NULL),
(170, 62, 7, 12, 0, 0, 0, '2023-07-06 16:39:03', NULL),
(171, 45, 6, 16, 0, 0, 0, '2023-07-06 16:39:09', NULL),
(175, 56, 7, 17, 0, 0, 0, '2023-07-06 16:39:12', NULL),
(176, 71, 1, 17, 0, 0, 0, '2023-07-06 16:39:13', NULL),
(178, 27, 6, 5, 0, 0, 0, '2023-07-06 16:39:14', NULL),
(179, 3, 2, 13, 0, 0, 0, '2023-07-06 16:39:14', NULL),
(180, 83, 3, 17, 0, 0, 0, '2023-07-06 16:39:14', NULL),
(181, 5, 7, 11, 0, 0, 0, '2023-07-06 16:39:15', NULL),
(182, 7, 3, 4, 0, 0, 0, '2023-07-06 16:39:15', NULL),
(183, 59, 5, 13, 0, 0, 0, '2023-07-06 16:39:15', NULL),
(184, 95, 4, 18, 0, 0, 0, '2023-07-06 16:39:15', NULL),
(185, 60, 3, 12, 0, 0, 0, '2023-07-06 16:39:16', NULL),
(186, 43, 8, 17, 0, 0, 0, '2023-07-06 16:39:16', NULL),
(187, 25, 8, 9, 0, 0, 0, '2023-07-06 16:39:16', NULL),
(190, 14, 4, 8, 0, 0, 0, '2023-07-06 16:39:17', NULL),
(192, 13, 3, 5, 0, 0, 0, '2023-07-06 16:39:17', NULL),
(193, 45, 7, 6, 0, 0, 0, '2023-07-06 16:39:18', NULL),
(194, 50, 9, 4, 0, 0, 0, '2023-07-06 16:39:18', NULL),
(195, 52, 4, 13, 0, 0, 0, '2023-07-06 16:39:18', NULL),
(196, 76, 7, 9, 0, 0, 0, '2023-07-06 16:39:19', NULL),
(197, 32, 9, 11, 0, 0, 0, '2023-07-06 16:39:19', NULL),
(198, 86, 2, 5, 0, 0, 0, '2023-07-06 16:39:19', NULL),
(199, 95, 6, 4, 0, 0, 0, '2023-07-06 16:39:19', NULL),
(202, 5, 4, 18, 0, 0, 0, '2023-07-06 16:39:20', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `countries`
--

CREATE TABLE `countries` (
  `iso` char(2) NOT NULL,
  `country` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `countries`
--

INSERT INTO `countries` (`iso`, `country`, `created_at`, `updated_at`, `deleted_at`) VALUES
('AT', 'Austria', '2023-07-06 14:42:43', NULL, NULL),
('BE', 'Belgium', '2023-07-06 14:42:43', NULL, NULL),
('CY', 'Ciprus', '2023-07-06 14:42:43', NULL, NULL),
('ES', 'Spain', '2023-07-06 14:45:21', NULL, NULL),
('FR', 'France', '2023-07-06 14:43:44', NULL, NULL),
('HU', 'Hungary', '2023-07-06 14:43:44', NULL, NULL),
('IT', 'Italy', '2023-07-06 14:44:45', NULL, NULL),
('LU', 'Luxemburg', '2023-07-06 14:44:45', NULL, NULL),
('MC', 'Monaco', '2023-07-06 14:44:45', NULL, NULL),
('NO', 'Norway', '2023-07-06 14:45:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `games`
--

CREATE TABLE `games` (
  `launchcode` int(11) NOT NULL,
  `name` varchar(35) NOT NULL,
  `game_provider_id` int(11) NOT NULL,
  `rtp` decimal(5,2) NOT NULL DEFAULT '0.00',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `games`
--

INSERT INTO `games` (`launchcode`, `name`, `game_provider_id`, `rtp`, `created_at`, `updated_at`, `deleted_at`) VALUES
(0, 'senger.sigrid', 2, '0.80', '2023-07-06 14:27:34', '2023-07-06 14:27:34', NULL),
(1, 'alejandra.mclaughlin', 3, '0.60', '2023-07-06 12:50:42', '2023-07-06 12:50:42', NULL),
(2, 'friesen.zane', 1, '0.40', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(3, 'vdietrich', 6, '0.40', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(4, 'nhettinger', 10, '0.60', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(5, 'donnelly.ofelia', 7, '0.50', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(6, 'hosea96', 5, '0.30', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(7, 'alyce99', 1, '0.30', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(8, 'kkeeling', 6, '0.10', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(9, 'carroll.bergnaum', 3, '0.10', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(10, 'orutherford', 8, '0.80', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(11, 'odie16', 8, '0.70', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(12, 'kilback.nona', 6, '0.40', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(13, 'tyler.feil', 4, '0.60', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(14, 'furman.kris', 9, '0.30', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(15, 'bernardo.armstrong', 10, '0.20', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(16, 'smith.nash', 3, '0.10', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(17, 'juana.sipes', 6, '0.20', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(18, 'wendy77', 3, '0.30', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(19, 'bauch.shemar', 10, '0.00', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(20, 'plebsack', 5, '0.00', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(21, 'earline.mohr', 8, '0.60', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(22, 'legros.aurelia', 9, '0.70', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(23, 'madalyn.legros', 7, '0.10', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(24, 'mariela88', 4, '0.60', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(25, 'sipes.peyton', 10, '0.20', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(26, 'bhegmann', 6, '0.40', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(27, 'jefferey88', 2, '0.30', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(28, 'mohr.betsy', 8, '0.30', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(29, 'shayne70', 2, '0.70', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(30, 'heaney.princess', 3, '0.90', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(31, 'nicolette18', 6, '0.80', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(32, 'anita.hudson', 1, '0.60', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(33, 'general55', 2, '0.00', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(34, 'alvena69', 2, '0.30', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(35, 'jarret.anderson', 2, '0.70', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(36, 'hirthe.krystel', 4, '0.30', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(37, 'nichole34', 1, '0.80', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(38, 'aurelie.hintz', 4, '0.10', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(39, 'elangosh', 1, '0.90', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(40, 'gabrielle.tromp', 5, '0.30', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(41, 'hoyt.pouros', 8, '0.30', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(42, 'oortiz', 6, '0.80', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(43, 'conrad29', 1, '0.50', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(44, 'randall.botsford', 6, '0.10', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(45, 'raynor.estelle', 7, '0.60', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(46, 'graciela.reichel', 5, '0.00', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(47, 'aileen.macejkovic', 2, '0.90', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(48, 'otho38', 10, '0.50', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(49, 'wyman99', 6, '0.70', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(50, 'johnson.cyrus', 1, '0.60', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(51, 'marilie.collier', 5, '0.80', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(52, 'rkunze', 4, '0.00', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(53, 'hbruen', 10, '0.30', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(54, 'noemi.schimmel', 9, '0.00', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(55, 'libbie92', 9, '0.50', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(56, 'joe74', 3, '0.00', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(57, 'medhurst.lourdes', 10, '0.30', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(58, 'schinner.orval', 7, '0.00', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(59, 'ledner.arnaldo', 2, '0.90', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(60, 'obogan', 9, '0.20', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(61, 'harber.johnathan', 10, '0.10', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(62, 'yrunte', 6, '0.20', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(63, 'lmiller', 1, '0.80', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(64, 'andre.sporer', 1, '0.50', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(65, 'dach.alexandria', 2, '0.90', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(66, 'wilkinson.hector', 7, '0.40', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(67, 'tshanahan', 6, '0.70', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(68, 'schulist.alexanne', 9, '0.30', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(69, 'roberts.velva', 10, '0.90', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(70, 'enos.senger', 6, '0.30', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(71, 'madelynn.breitenberg', 1, '0.90', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(72, 'laura.schamberger', 9, '0.30', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(73, 'hrutherford', 3, '0.00', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(74, 'blake.hettinger', 10, '0.60', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(75, 'idouglas', 5, '0.10', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(76, 'bcartwright', 6, '0.10', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(77, 'nadia16', 9, '0.40', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(78, 'lillie23', 1, '0.90', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(79, 'bartell.mariam', 5, '0.30', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(80, 'cole.thea', 3, '0.20', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(81, 'josefina31', 2, '0.10', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(82, 'maximillia.prohaska', 3, '0.70', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(83, 'ifadel', 10, '0.10', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(84, 'orodriguez', 1, '0.20', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(85, 'mpfeffer', 9, '0.50', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(86, 'julie91', 3, '0.60', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(87, 'raphael.strosin', 5, '0.70', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(88, 'albertha12', 6, '0.00', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(89, 'heller.helene', 8, '0.30', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(90, 'iroob', 1, '0.50', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(91, 'robel.eleanora', 3, '0.60', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(92, 'wolff.justina', 4, '0.10', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(93, 'joesph.corwin', 1, '0.60', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(94, 'cjacobi', 5, '0.20', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(95, 'schultz.manley', 10, '0.50', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(96, 'josinski', 7, '0.90', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(97, 'marks.vaughn', 4, '0.60', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(98, 'rodrigo79', 2, '0.90', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(99, 'mccullough.bethany', 3, '0.20', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(100, 'glehner', 5, '0.00', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL),
(101, 'dschimmel', 7, '0.80', '2023-07-06 12:51:15', '2023-07-06 12:51:15', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `game_categories`
--

CREATE TABLE `game_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(35) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `game_categories`
--

INSERT INTO `game_categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Vel cum', '2023-07-06 14:10:37', '2023-07-06 14:10:37', NULL),
(2, 'Id odit', '2023-07-06 14:10:37', '2023-07-06 14:10:37', NULL),
(3, 'Nihil rerum eius', '2023-07-06 14:10:37', '2023-07-06 14:10:37', NULL),
(4, 'Accusamus alias aut', '2023-07-06 14:10:37', '2023-07-06 14:10:37', NULL),
(5, 'Sit corporis dolor', '2023-07-06 14:10:37', '2023-07-06 14:10:37', NULL),
(6, 'Impedit earum', '2023-07-06 14:10:37', '2023-07-06 14:10:37', NULL),
(7, 'Nam labore', '2023-07-06 14:10:37', '2023-07-06 14:10:37', NULL),
(8, 'Eaque quis', '2023-07-06 14:10:37', '2023-07-06 14:10:37', NULL),
(9, 'Numquam nobis modi', '2023-07-06 14:10:37', '2023-07-06 14:10:37', NULL),
(10, 'Explicabo ex omnis', '2023-07-06 14:10:37', '2023-07-06 14:10:37', NULL),
(11, 'Quia beatae dolorem', '2023-07-06 14:10:37', '2023-07-06 14:10:37', NULL),
(12, 'Aut pariatur veniam', '2023-07-06 14:10:37', '2023-07-06 14:10:37', NULL),
(13, 'Eveniet atque', '2023-07-06 14:10:37', '2023-07-06 14:10:37', NULL),
(14, 'Omnis sed quia', '2023-07-06 14:10:37', '2023-07-06 14:10:37', NULL),
(15, 'Sequi facere vel', '2023-07-06 14:10:37', '2023-07-06 14:10:37', NULL),
(16, 'Quasi vel sit', '2023-07-06 14:10:37', '2023-07-06 14:10:37', NULL),
(17, 'Quaerat et dolorem', '2023-07-06 14:10:37', '2023-07-06 14:10:37', NULL),
(18, 'Cupiditate laborum', '2023-07-06 14:10:37', '2023-07-06 14:10:37', NULL),
(19, 'Culpa accusamus', '2023-07-06 14:10:37', '2023-07-06 14:10:37', NULL),
(20, 'Et consequatur', '2023-07-06 14:10:37', '2023-07-06 14:10:37', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `game_country_blocks`
--

CREATE TABLE `game_country_blocks` (
  `id` int(11) NOT NULL,
  `launchcode` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL DEFAULT '0',
  `country_iso` char(2) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `game_country_blocks`
--

INSERT INTO `game_country_blocks` (`id`, `launchcode`, `brand_id`, `country_iso`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 'LU', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(2, 2, 6, 'IT', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(3, 3, 9, 'CY', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(4, 4, 10, 'HU', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(5, 6, 5, 'LU', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(6, 7, 2, 'HU', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(7, 9, 2, 'FR', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(8, 11, 3, 'NO', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(9, 15, 4, 'AT', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(10, 16, 7, 'HU', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(11, 19, 6, 'IT', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(12, 20, 4, 'CY', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(13, 22, 6, 'BE', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(14, 24, 6, 'NO', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(15, 25, 2, 'CY', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(16, 27, 2, 'IT', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(17, 29, 1, 'FR', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(18, 30, 7, 'FR', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(19, 31, 2, 'NO', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(20, 33, 10, 'IT', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(21, 35, 3, 'IT', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(22, 37, 6, 'NO', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(23, 38, 4, 'CY', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(24, 39, 7, 'MC', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(25, 41, 6, 'HU', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(26, 42, 1, 'AT', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(27, 43, 1, 'LU', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(28, 46, 9, 'LU', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(29, 47, 7, 'AT', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(30, 48, 9, 'AT', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(31, 49, 7, 'IT', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(32, 51, 10, 'NO', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(33, 55, 1, 'LU', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(34, 57, 7, 'BE', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(35, 63, 9, 'CY', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(36, 64, 3, 'IT', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(37, 65, 1, 'CY', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(38, 67, 3, 'FR', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(39, 69, 9, 'BE', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(40, 70, 5, 'MC', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(41, 71, 3, 'MC', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(42, 72, 2, 'AT', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(43, 73, 8, 'HU', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(44, 77, 8, 'NO', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(45, 80, 4, 'ES', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(46, 83, 8, 'LU', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(47, 84, 9, 'HU', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(48, 89, 8, 'MC', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(49, 90, 8, 'HU', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(50, 93, 9, 'LU', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(51, 94, 10, 'HU', '2023-07-06 13:19:45', '2023-07-06 13:19:45'),
(52, 98, 3, 'BE', '2023-07-06 13:19:45', '2023-07-06 13:19:45');

-- --------------------------------------------------------

--
-- Struttura della tabella `game_providers`
--

CREATE TABLE `game_providers` (
  `id` int(11) NOT NULL,
  `name` varchar(35) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `game_providers`
--

INSERT INTO `game_providers` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Prov A', '2023-07-06 12:06:07', '2023-07-06 10:05:56', '2023-07-06 10:05:56'),
(2, 'Prov B', '2023-07-06 12:06:07', '2023-07-06 10:05:56', '2023-07-06 10:05:56'),
(3, 'Balistreri-Roob', '2023-07-06 12:25:44', '2023-07-06 12:25:44', NULL),
(4, 'Sauer and Sons', '2023-07-06 12:25:44', '2023-07-06 12:25:44', NULL),
(5, 'Windler LLC', '2023-07-06 12:25:44', '2023-07-06 12:25:44', NULL),
(6, 'Gerhold, Emmerich and Greenfelder', '2023-07-06 12:25:44', '2023-07-06 12:25:44', NULL),
(7, 'Bradtke, Padberg and Jacobson', '2023-07-06 12:25:44', '2023-07-06 12:25:44', NULL),
(8, 'Deckow, Steuber and Halvorson', '2023-07-06 12:25:44', '2023-07-06 12:25:44', NULL),
(9, 'Hartmann-Runte', '2023-07-06 12:25:44', '2023-07-06 12:25:44', NULL),
(10, 'Koch, Roob and Williamson', '2023-07-06 12:25:44', '2023-07-06 12:25:44', NULL),
(11, 'Kohler-Fadel', '2023-07-06 12:25:44', '2023-07-06 12:25:44', NULL),
(12, 'Hodkiewicz Ltd', '2023-07-06 12:25:44', '2023-07-06 12:25:44', NULL);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `brand_games`
--
ALTER TABLE `brand_games`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `launchcode` (`launchcode`,`brand_id`) USING BTREE,
  ADD KEY `brandid` (`brand_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indici per le tabelle `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`iso`);

--
-- Indici per le tabelle `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`launchcode`) USING BTREE,
  ADD KEY `game_provider_id` (`game_provider_id`);

--
-- Indici per le tabelle `game_categories`
--
ALTER TABLE `game_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `game_country_blocks`
--
ALTER TABLE `game_country_blocks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `launchcode` (`launchcode`,`brand_id`,`country_iso`) USING BTREE,
  ADD KEY `country_iso` (`country_iso`);

--
-- Indici per le tabelle `game_providers`
--
ALTER TABLE `game_providers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `brand_games`
--
ALTER TABLE `brand_games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT per la tabella `game_categories`
--
ALTER TABLE `game_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT per la tabella `game_country_blocks`
--
ALTER TABLE `game_country_blocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT per la tabella `game_providers`
--
ALTER TABLE `game_providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `brand_games`
--
ALTER TABLE `brand_games`
  ADD CONSTRAINT `brand_games_ibfk_1` FOREIGN KEY (`launchcode`) REFERENCES `games` (`launchcode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `brand_games_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `brand_games_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `game_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `games_ibfk_1` FOREIGN KEY (`game_provider_id`) REFERENCES `game_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `game_country_blocks`
--
ALTER TABLE `game_country_blocks`
  ADD CONSTRAINT `game_country_blocks_ibfk_1` FOREIGN KEY (`launchcode`) REFERENCES `games` (`launchcode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `game_country_blocks_ibfk_2` FOREIGN KEY (`country_iso`) REFERENCES `countries` (`iso`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
