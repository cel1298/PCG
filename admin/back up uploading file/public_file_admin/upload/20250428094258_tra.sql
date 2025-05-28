-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2025 at 11:03 AM
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
-- Database: `tra`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(47, 'salum.ali', '2025-01-24 13:21:11', 'requested to borrow file 898989 '),
(48, 'juma.ndihagule', '2025-01-24 13:24:39', 'logged out'),
(49, 'tash.18', '2025-01-24 13:40:18', 'logged In'),
(50, 'tash.18', '2025-01-24 13:40:35', 'Registered new administrator user - celz.vailoces  (zanzibar) Region'),
(51, 'tash.18', '2025-01-24 13:40:39', 'logged out'),
(52, 'celz.vailoces', '2025-01-24 13:40:45', 'logged In'),
(53, 'celz.vailoces', '2025-01-24 13:41:12', 'Registered new register user - register.user  (pemba) Region'),
(54, 'celz.vailoces', '2025-01-24 13:41:23', 'Registered new normal user - normal.user  (pemba) Region'),
(55, 'celz.vailoces', '2025-01-24 13:41:30', 'logged out'),
(56, 'register.user', '2025-01-24 13:41:50', 'logged In'),
(57, 'register.user', '2025-01-24 13:42:21', 'registered file 345346 with name crime file for pemba Region'),
(58, 'register.user', '2025-01-24 13:42:25', 'logged out'),
(59, 'normal.user', '2025-01-24 13:42:31', 'logged In'),
(60, '', '2025-01-24 13:44:29', 'logged out'),
(61, 'asha.keis', '2025-01-24 13:44:33', 'logged In'),
(62, 'asha.keis', '2025-01-24 13:45:00', 'logged out'),
(63, 'normal.user', '2025-01-24 13:45:07', 'logged In'),
(64, 'normal.user', '2025-01-24 13:45:16', 'logged out'),
(65, 'celz.vailoces', '2025-01-24 13:45:31', 'logged In'),
(66, 'celz.vailoces', '2025-01-24 13:45:46', 'Registered new supervisor user - supervisor.user  (zanzibar) Region'),
(67, 'celz.vailoces', '2025-01-24 13:45:49', 'logged out'),
(68, 'supervisor.user', '2025-01-24 13:46:09', 'logged In'),
(69, 'supervisor.user', '2025-01-24 13:46:30', 'logged out'),
(70, 'celz.vailoces', '2025-01-24 13:48:51', 'logged In'),
(71, 'celz.vailoces', '2025-01-24 13:48:55', 'logged out'),
(72, 'normal.user', '2025-01-24 13:49:02', 'logged In'),
(73, 'normal.user', '2025-01-24 13:49:16', 'logged out'),
(74, 'register.user', '2025-01-24 13:49:22', 'logged In'),
(75, 'register.user', '2025-01-24 13:50:05', 'registered file 567567 with name pagod for pemba Region'),
(76, 'register.user', '2025-01-24 13:50:09', 'logged out'),
(77, 'normal.user', '2025-01-24 13:50:16', 'logged In'),
(78, 'normal.user', '2025-01-24 13:50:28', 'logged out'),
(79, 'celz.vailoces', '2025-01-24 13:50:34', 'logged In'),
(80, 'celz.vailoces', '2025-01-24 13:56:27', 'logged out'),
(81, 'supervisor.user', '2025-01-24 13:56:41', 'logged In'),
(82, 'asha.keis', '2025-01-24 13:58:41', 'logged In'),
(83, 'asha.keis', '2025-01-24 13:59:01', 'logged out'),
(84, 'supervisor.user', '2025-01-24 14:00:15', 'logged In'),
(85, 'supervisor.user', '2025-01-24 14:00:54', 'logged out'),
(86, 'register.user', '2025-01-24 14:01:53', 'logged In'),
(87, 'register.user', '2025-01-24 14:01:57', 'Borrowed file 898989'),
(88, 'register.user', '2025-01-24 14:02:25', 'registered file 90909 with name mmmmmmm for pemba Region'),
(89, 'register.user', '2025-01-24 14:02:28', 'logged out'),
(90, 'normal.user', '2025-01-24 14:02:36', 'logged In'),
(91, 'normal.user', '2025-01-24 14:02:46', 'logged out'),
(92, 'supervisor.user', '2025-01-24 14:02:53', 'logged In'),
(93, 'supervisor.user', '2025-01-24 14:03:07', 'logged out'),
(94, 'supervisor.user', '2025-01-24 14:03:13', 'logged In'),
(95, 'supervisor.user', '2025-01-24 14:03:17', 'logged out'),
(96, 'normal.user', '2025-01-24 14:03:23', 'logged In'),
(97, 'normal.user', '2025-01-24 14:03:42', 'requested to borrow file 90909 '),
(98, 'normal.user', '2025-01-24 14:03:44', 'logged out'),
(99, 'celz.vailoces', '2025-01-24 14:03:54', 'logged In'),
(100, 'celz.vailoces', '2025-01-24 14:04:05', 'logged out'),
(101, 'register.user', '2025-01-24 14:04:11', 'logged In'),
(102, 'register.user', '2025-01-24 14:05:44', 'logged out'),
(103, 'normal.user', '2025-01-24 14:05:49', 'logged In'),
(104, 'normal.user', '2025-01-24 14:05:55', 'logged out'),
(105, 'register.user', '2025-01-24 14:06:10', 'logged In'),
(106, 'register.user', '2025-01-24 14:06:14', 'Borrowed file 90909'),
(107, 'register.user', '2025-01-24 14:06:15', 'logged out'),
(108, 'normal.user', '2025-01-24 14:06:20', 'logged In'),
(109, 'normal.user', '2025-01-24 14:06:35', 'logged out'),
(110, 'mbarouk.ussi', '2025-01-24 14:07:17', 'logged In'),
(111, 'mbarouk.ussi', '2025-01-24 14:07:41', 'Registered new administrator user - celz.vailoces  (Operation Division) Region'),
(112, 'mbarouk.ussi', '2025-01-24 14:08:06', 'Registered new normal user - normal.user  (Operation Division) Region'),
(113, 'mbarouk.ussi', '2025-01-24 14:08:16', 'Registered new register user - register.user  (Operation Division) Region'),
(114, 'mbarouk.ussi', '2025-01-24 14:08:21', 'logged out'),
(115, 'celz.vailoces', '2025-01-24 14:08:26', 'logged In'),
(116, 'celz.vailoces', '2025-01-24 14:08:52', 'logged out'),
(117, 'register.user', '2025-01-24 14:08:57', 'logged In'),
(118, 'register.user', '2025-01-24 14:09:24', 'registered file 46567567 with name qqqqqqqqqqqqq for Operation Division Region'),
(119, 'register.user', '2025-01-24 14:09:38', 'registered file 2424324 with name wewewewewewewewew for Operation Division Region'),
(120, 'register.user', '2025-01-24 14:09:41', 'logged out'),
(121, 'normal.user', '2025-01-24 14:09:46', 'logged In'),
(122, 'normal.user', '2025-01-24 14:10:07', 'requested to borrow file 2424324 '),
(123, 'normal.user', '2025-01-24 14:10:12', 'logged out'),
(124, 'register.user', '2025-01-24 14:10:21', 'logged In'),
(125, 'register.user', '2025-01-24 14:10:31', 'logged out'),
(126, 'celz.vailoces', '2025-01-24 14:10:45', 'logged In'),
(127, 'celz.vailoces', '2025-01-24 14:11:04', 'Registered new supervisor user - supervisor.user  (Security / Intelligence Division) Region'),
(128, 'celz.vailoces', '2025-01-24 14:11:12', 'logged out'),
(129, 'supervisor.user', '2025-01-24 14:11:18', 'logged In'),
(130, 'supervisor.user', '2025-01-24 14:11:29', 'logged out'),
(131, 'celz.vailoces', '2025-01-24 14:11:41', 'logged In'),
(132, 'celz.vailoces', '2025-01-24 14:12:06', 'Registered new supervisor user - qwe.qwe  (Operation Division) Region'),
(133, 'celz.vailoces', '2025-01-24 14:12:09', 'logged out'),
(134, 'qwe.qwe', '2025-01-24 14:12:14', 'logged In'),
(135, 'qwe.qwe', '2025-01-24 14:12:36', 'requested to borrow file 46567567 '),
(136, 'qwe.qwe', '2025-01-24 14:12:46', 'logged out'),
(137, 'register.user', '2025-01-24 14:12:51', 'logged In'),
(138, 'register.user', '2025-01-24 14:12:58', 'Borrowed file 46567567'),
(139, 'register.user', '2025-01-24 14:13:01', 'Borrowed file 2424324'),
(140, 'register.user', '2025-01-24 14:13:03', 'logged out'),
(141, 'qwe.qwe', '2025-01-24 14:13:10', 'logged In'),
(142, 'qwe.qwe', '2025-01-24 14:13:46', 'requested to return file 46567567'),
(143, 'qwe.qwe', '2025-01-24 14:13:50', 'logged out'),
(144, 'register.user', '2025-01-24 14:13:55', 'logged In'),
(145, 'register.user', '2025-01-24 14:14:39', 'Returned file 46567567'),
(146, 'register.user', '2025-01-24 14:14:51', 'logged out'),
(147, 'celz.vailoces', '2025-01-24 14:16:20', 'logged In'),
(148, 'normal.user', '2025-01-24 14:21:27', 'logged In'),
(149, 'normal.user', '2025-01-24 14:21:32', 'logged out'),
(150, 'normal.user', '2025-01-24 14:21:38', 'logged In'),
(151, 'celz.vailoces', '2025-01-24 14:34:36', 'logged out'),
(152, 'register.user', '2025-01-24 14:34:42', 'logged In'),
(153, 'register.user', '2025-01-24 14:35:11', 'registered file 4556866563 with name hahahaha for Operation Division Region'),
(154, 'normal.user', '2025-01-24 14:36:34', 'requested to borrow file 4556866563 '),
(155, 'register.user', '2025-01-24 14:40:10', 'Borrowed file 4556866563'),
(156, 'normal.user', '2025-01-24 14:40:56', 'logged out'),
(157, 'celz.vailoces', '2025-01-24 14:41:02', 'logged In'),
(158, 'celz.vailoces', '2025-01-24 14:42:16', 'logged out'),
(159, 'supervisor.user', '2025-01-24 14:42:25', 'logged In'),
(160, 'register.user', '2025-01-24 14:44:20', 'registered file 45657678 with name oooooooo for Operation Division Region'),
(161, 'supervisor.user', '2025-01-24 14:45:29', 'logged out'),
(162, 'celz.vailoces', '2025-01-24 14:45:36', 'logged In'),
(163, 'celz.vailoces', '2025-01-24 14:46:30', 'logged out'),
(164, 'normal.user', '2025-01-24 14:46:36', 'logged In'),
(165, 'register.user', '2025-01-24 14:46:58', 'registered file 987654 with name yyyyyy for Operation Division Region'),
(166, 'normal.user', '2025-01-24 14:48:03', 'logged out'),
(167, 'celz.vailoces', '2025-01-24 14:48:08', 'logged In'),
(168, 'register.user', '2025-01-24 14:54:17', 'registered file 0989778776 with name zzzzzz for Operation Division Region'),
(169, 'celz.vailoces', '2025-01-24 14:54:41', 'logged out'),
(170, 'normal.user', '2025-01-24 14:54:50', 'logged In'),
(171, 'normal.user', '2025-01-24 14:56:18', 'logged out'),
(172, 'normal.user', '2025-01-24 14:56:51', 'logged In'),
(173, 'normal.user', '2025-01-24 14:57:22', 'requested to return file 4556866563'),
(174, 'register.user', '2025-01-24 14:57:54', 'Returned file 4556866563'),
(175, 'register.user', '2025-01-24 15:07:05', 'logged out'),
(176, 'celz.vailoces', '2025-01-24 15:07:11', 'logged In'),
(177, 'normal.user', '2025-01-24 15:08:04', 'logged out'),
(178, 'register.user', '2025-01-24 15:08:12', 'logged In'),
(179, 'register.user', '2025-01-24 15:14:21', 'registered file 839349990 with name Goods Transport for Operation Division Region'),
(180, 'register.user', '2025-01-24 15:19:16', 'logged out'),
(181, 'normal.user', '2025-01-24 15:19:22', 'logged In'),
(182, 'normal.user', '2025-01-24 15:19:25', 'logged out'),
(183, 'register.user', '2025-01-24 15:19:33', 'logged In'),
(184, 'celz.vailoces', '2025-01-24 15:24:37', 'logged out'),
(185, 'normal.user', '2025-01-24 15:24:43', 'logged In'),
(186, 'register.user', '2025-01-24 15:26:01', 'registered file 923492849 with name Personels Assets for Operation Division Region'),
(187, 'normal.user', '2025-01-24 15:26:11', 'requested to borrow file 923492849 '),
(188, 'register.user', '2025-01-24 15:56:29', 'registered file 98867565 with name Equipment for Operation Division Region'),
(189, 'normal.user', '2025-01-24 15:57:05', 'requested to borrow file 98867565 '),
(190, 'register.user', '2025-01-24 15:58:13', 'logged out'),
(191, 'normal.user', '2025-01-24 15:58:24', 'logged In'),
(192, 'normal.user', '2025-01-24 16:02:12', 'logged out'),
(193, 'celz.vailoces', '2025-01-24 16:02:29', 'logged In'),
(194, 'celz.vailoces', '2025-01-24 16:12:40', 'Registered new normal user - Charls.Darwin  (Navigation / Communication Division) Region'),
(195, 'celz.vailoces', '2025-01-24 16:12:44', 'logged out'),
(196, 'Charls.Darwin', '2025-01-24 16:12:53', 'logged In'),
(197, 'Charls.Darwin', '2025-01-24 16:13:01', 'logged out'),
(198, 'Charls.Darwin', '2025-01-24 16:13:38', 'logged In'),
(199, 'Charls.Darwin', '2025-01-24 16:14:12', 'logged out'),
(200, 'register.user', '2025-01-24 16:15:13', 'logged In'),
(201, 'normal.user', '2025-01-24 16:16:06', 'logged out'),
(202, 'Charls.Darwin', '2025-01-24 16:16:13', 'logged In'),
(203, 'register.user', '2025-01-24 16:16:38', 'registered file 45732345 with name sarasara for Operation Division Region'),
(204, 'register.user', '2025-01-24 16:18:46', 'registered file 1111123322 with name ccccccccccccc for Operation Division Region'),
(205, 'Charls.Darwin', '2025-01-24 16:19:01', 'logged out'),
(206, 'celz.vailoces', '2025-01-24 16:19:07', 'logged In'),
(207, 'celz.vailoces', '2025-01-24 16:19:32', 'Registered new normal user - norm.user  (Operation Division) Region'),
(208, 'celz.vailoces', '2025-01-24 16:19:38', 'logged out'),
(209, 'norm.user', '2025-01-24 16:19:43', 'logged In'),
(210, 'norm.user', '2025-01-24 16:20:44', 'logged out'),
(211, 'celz.vailoces', '2025-01-24 16:20:57', 'logged In'),
(212, 'celz.vailoces', '2025-01-24 16:21:24', 'Registered new normal user - glaiza.mustapha  (Security / Intelligence Division) Region'),
(213, 'celz.vailoces', '2025-01-24 16:21:26', 'logged out'),
(214, 'glaiza.mustapha', '2025-01-24 16:21:34', 'logged In'),
(215, 'glaiza.mustapha', '2025-01-24 16:22:03', 'logged out'),
(216, 'celz.vailoces', '2025-01-24 16:22:08', 'logged In'),
(217, 'celz.vailoces', '2025-01-24 16:22:37', 'Registered new normal user - normal.personel  (Navigation / Communication Division) Region'),
(218, 'celz.vailoces', '2025-01-24 16:22:41', 'logged out'),
(219, 'normal.personel', '2025-01-24 16:22:48', 'logged In'),
(220, 'normal.personel', '2025-01-24 16:23:06', 'logged out'),
(221, 'celz.vailoces', '2025-01-24 16:23:12', 'logged In'),
(222, 'celz.vailoces', '2025-01-24 16:23:32', 'Registered new normal user - norms.user  (Navigation / Communication Division) Region'),
(223, 'celz.vailoces', '2025-01-24 16:23:34', 'logged out'),
(224, 'norms.user', '2025-01-24 16:23:40', 'logged In'),
(225, 'norms.user', '2025-01-24 16:23:52', 'logged out'),
(226, 'celz.vailoces', '2025-01-24 16:23:58', 'logged In'),
(227, 'celz.vailoces', '2025-01-24 16:24:18', 'Registered new normal user - celso.vailoces  (Operation Division) Region'),
(228, 'celz.vailoces', '2025-01-24 16:24:21', 'logged out'),
(229, 'celso.vailoces', '2025-01-24 16:24:26', 'logged In'),
(230, 'celso.vailoces', '2025-01-24 16:26:54', 'logged out'),
(231, 'register.user', '2025-01-24 16:27:08', 'logged out'),
(232, 'celz.vailoces', '2025-01-24 16:27:18', 'logged In'),
(233, 'celz.vailoces', '2025-01-24 16:27:38', 'Registered new normal user - celso1.vailoces  (Administration Division) Region'),
(234, 'celso1.vailoces', '2025-01-24 16:27:45', 'logged In'),
(235, 'celso1.vailoces', '2025-01-24 16:30:08', 'logged out'),
(236, 'register.user', '2025-01-24 16:30:15', 'logged In'),
(237, 'celz.vailoces', '2025-01-24 16:32:22', 'Registered new normal user - sara.sara  (zanzibar) Region'),
(238, 'register.user', '2025-01-24 16:32:28', 'logged out'),
(239, 'sara.sara', '2025-01-24 16:32:33', 'logged In'),
(240, 'celz.vailoces', '2025-01-24 16:33:32', 'logged out'),
(241, 'register.user', '2025-01-24 16:33:42', 'logged In'),
(242, 'register.user', '2025-01-24 16:34:34', 'registered file 45234 with name Fishman Island for Operation Division Region'),
(243, 'sara.sara', '2025-01-24 16:35:27', 'logged out'),
(244, 'normal.user', '2025-01-24 16:35:39', 'logged In'),
(245, 'register.user', '2025-01-24 16:36:31', 'logged out'),
(246, 'celz.vailoces', '2025-01-24 16:36:40', 'logged In'),
(247, 'celz.vailoces', '2025-01-24 16:36:59', 'Registered new normal user - normal.user2  (zanzibar) Region'),
(248, 'celz.vailoces', '2025-01-24 16:37:02', 'logged out'),
(249, 'normal.user2', '2025-01-24 16:37:07', 'logged In'),
(250, 'normal.user2', '2025-01-24 16:37:26', 'logged out'),
(251, 'celz.vailoces', '2025-01-24 16:37:37', 'logged In'),
(252, 'celz.vailoces', '2025-01-24 16:37:58', 'Registered new normal user - normal.user3  (Operation Division) Region'),
(253, 'celz.vailoces', '2025-01-24 16:38:05', 'logged out'),
(254, 'normal.user3', '2025-01-24 16:38:20', 'logged In'),
(255, 'normal.user3', '2025-01-24 16:39:31', 'logged out'),
(256, 'celz.vailoces', '2025-01-24 16:39:35', 'logged In'),
(257, 'celz.vailoces', '2025-01-24 16:40:40', 'logged out'),
(258, 'register.user', '2025-01-24 16:40:45', 'logged In'),
(259, 'register.user', '2025-01-24 16:51:00', 'logged out'),
(260, 'celz.vailoces', '2025-01-24 16:51:07', 'logged In'),
(261, 'celz.vailoces', '2025-01-24 16:51:42', 'Registered new normal user - gilbert.gilbert  (Operation Division) Region'),
(262, 'normal.user', '2025-01-24 16:51:46', 'logged out'),
(263, 'gilbert.gilbert', '2025-01-24 16:51:58', 'logged In'),
(264, 'gilbert.gilbert', '2025-01-24 17:28:41', 'logged out'),
(265, 'register.user', '2025-01-24 17:28:58', 'logged In'),
(266, 'register.user', '2025-01-24 17:31:48', 'registered file 4438 with name CostGuard for Operation Division Region'),
(267, 'celz.vailoces', '2025-01-24 17:33:39', 'logged out'),
(268, 'celz.vailoces', '2025-01-24 17:34:18', 'logged In'),
(269, 'celz.vailoces', '2025-01-24 17:34:54', 'Registered new normal user - gilbert.flores  (Operation Division) Region'),
(270, 'celz.vailoces', '2025-01-24 17:35:07', 'logged out'),
(271, 'gilbert.flores', '2025-01-24 17:35:14', 'logged In'),
(272, 'gilbert.flores', '2025-01-24 17:38:50', 'requested to borrow file 4438 '),
(273, 'register.user', '2025-01-24 17:39:09', 'Borrowed file 4438'),
(274, 'gilbert.flores', '2025-01-24 17:46:21', 'requested to borrow file 45234 '),
(275, 'register.user', '2025-01-24 17:46:53', 'Borrowed file 45234'),
(276, 'gilbert.flores', '2025-01-24 17:52:24', 'requested to borrow file 839349990 ');

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `borrow_id` int(11) NOT NULL,
  `employee_number` varchar(100) NOT NULL,
  `tin_number` varchar(100) NOT NULL,
  `date_borrow` datetime NOT NULL,
  `file_status` varchar(100) NOT NULL,
  `date_return` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`borrow_id`, `employee_number`, `tin_number`, `date_borrow`, `file_status`, `date_return`) VALUES
(3, '345656', '46567567', '2025-01-24 14:12:58', 'returned', '2025-01-24 14:14:39'),
(4, '678754', '2424324', '2025-01-24 14:13:01', 'borrowed', '0000-00-00 00:00:00'),
(5, '678754', '4556866563', '2025-01-24 14:40:10', 'returned', '2025-01-24 14:57:54'),
(6, '1122', '4438', '2025-01-24 17:39:09', 'borrowed', '0000-00-00 00:00:00'),
(7, '1122', '45234', '2025-01-24 17:46:53', 'borrowed', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `borrow_request`
--

CREATE TABLE `borrow_request` (
  `not_id` int(11) NOT NULL,
  `employee_number` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `tin_number` varchar(50) NOT NULL,
  `status` varchar(60) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `borrow_request`
--

INSERT INTO `borrow_request` (`not_id`, `employee_number`, `username`, `tin_number`, `status`, `time`) VALUES
(3, '678754', 'normal.user', '2424324', 'confirmed', '2025-01-24 06:13:01'),
(4, '345656', 'qwe.qwe', '46567567', 'confirmed', '2025-01-24 06:12:58'),
(5, '678754', 'normal.user', '4556866563', 'confirmed', '2025-01-24 06:40:10'),
(6, '678754', 'normal.user', '923492849', 'not_confirmed', '2025-01-24 07:26:11'),
(7, '678754', 'normal.user', '98867565', 'not_confirmed', '2025-01-24 07:57:05'),
(8, '1122', 'gilbert.flores', '4438', 'confirmed', '2025-01-24 09:39:09'),
(9, '1122', 'gilbert.flores', '45234', 'confirmed', '2025-01-24 09:46:53'),
(10, '1122', 'gilbert.flores', '839349990', 'not_confirmed', '2025-01-24 09:52:24');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `file_id` int(11) NOT NULL,
  `tin_number` varchar(100) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `file_type` varchar(50) NOT NULL,
  `file_category` varchar(50) NOT NULL,
  `trade_name` varchar(50) NOT NULL,
  `block` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`file_id`, `tin_number`, `file_name`, `status`, `file_type`, `file_category`, `trade_name`, `block`, `region`) VALUES
(1751, '300-101-526', 'COCO DE MER HOTEL LTD', 'returned', 'entity', 'main', '', 'Mjini Magharibi', 'zanzibar'),
(1806, '898989', 'SRA', 'borrowed', 'individual', 'main', 'sdfsdfs', 'north unguja block', 'zanzibar'),
(1809, '90909', 'mmmmmmm', 'borrowed', 'individual', 'audit', 'mmmmm', 'north pemba block', 'pemba'),
(1810, '46567567', 'qqqqqqqqqqqqq', 'returned', 'entity', 'audit', 'qqqqqqqqqqqqq', 'north pemba block', 'Operation Division'),
(1811, '2424324', 'wewewewewewewewew', 'borrowed', 'individual', 'examination', 'wewewewewewe', 'south pemba block', 'Operation Division'),
(1812, '4556866563', 'hahahaha', 'returned', 'individual', 'objection', 'hahahah', 'north pemba block', 'Operation Division'),
(1813, '45657678', 'oooooooo', 'returned', 'individual', 'examination', 'sfdhf', 'north pemba block', 'Operation Division'),
(1814, '987654', 'yyyyyy', 'returned', 'individual', 'main', 'tytytytyt', 'north pemba block', 'Operation Division'),
(1815, '0989778776', 'zzzzzz', 'returned', 'entity', 'objection', 'fghgdfgd', 'south pemba block', 'Operation Division'),
(1816, '839349990', 'Goods Transport', 'returned', 'individual', 'objection', 'Philippine Sea Transport, Inc.', 'north pemba block', 'Operation Division'),
(1817, '923492849', 'Personels Assets', 'returned', 'individual', 'main', 'Goods.INC', 'south pemba block', 'Operation Division'),
(1818, '98867565', 'Equipment', 'returned', 'entity', 'audit', 'RXR Equipment.Inc', 'north unguja block', 'Operation Division'),
(1819, '45732345', 'sarasara', 'returned', 'entity', 'objection', '45634534', 'south pemba block', 'Operation Division'),
(1820, '1111123322', 'ccccccccccccc', 'returned', 'individual', 'main', 'qeqweqweq', 'north pemba block', 'Operation Division'),
(1821, '45234', 'Fishman Island', 'borrowed', 'entity', 'main', 'One-Peace', 'north pemba block', 'Operation Division'),
(1822, '4438', 'CostGuard', 'borrowed', 'individual', 'examination', 'IT department', 'south Block Lot 2', 'Operation Division');

-- --------------------------------------------------------

--
-- Table structure for table `return_request`
--

CREATE TABLE `return_request` (
  `not_id` int(11) NOT NULL,
  `employee_number` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `tin_number` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `return_request`
--

INSERT INTO `return_request` (`not_id`, `employee_number`, `username`, `tin_number`, `status`, `time`, `remarks`) VALUES
(1, '345656', 'qwe.qwe', '46567567', 'confirmed', '2025-01-24 06:14:39', 'i will return this'),
(2, '678754', 'normal.user', '4556866563', 'confirmed', '2025-01-24 06:57:54', 'i shall return');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `emplnumber` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `region` varchar(50) NOT NULL,
  `online` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `username`, `password`, `firstname`, `lastname`, `emplnumber`, `status`, `region`, `online`) VALUES
(67, 'celz.vailoces', '123', 'celz', 'vailoces', '465464', 'administrator', 'Operation Division', 'no'),
(68, 'normal.user', '123', 'normal', 'user', '678754', 'normal', 'Operation Division', 'no'),
(69, 'register.user', '123', 'register', 'user', '645634', 'register', 'Operation Division', 'yes'),
(70, 'supervisor.user', '123', 'supervisor', 'user', '465645', 'supervisor', 'Security / Intelligence Division', 'no'),
(71, 'qwe.qwe', '123', 'qwe', 'qwe', '345656', 'supervisor', 'Operation Division', 'no'),
(72, 'Charls.Darwin', '123', 'Charls', 'Darwin', '777777', 'normal', 'Navigation / Communication Division', 'no'),
(73, 'norm.user', '123', 'norm', 'user', '555555', 'normal', 'Operation Division', 'no'),
(74, 'glaiza.mustapha', '123', 'glaiza', 'mustapha', '787890', 'normal', 'Security / Intelligence Division', 'no'),
(75, 'normal.personel', '123', 'normal', 'personel', '767676', 'normal', 'Navigation / Communication Division', 'no'),
(76, 'norms.user', '123', 'norms', 'user', '909090', 'normal', 'Navigation / Communication Division', 'no'),
(77, 'celso.vailoces', '123', 'celso', 'vailoces', '000999', 'normal', 'Operation Division', 'no'),
(78, 'celso1.vailoces', '123', 'celso1', 'vailoces', '222222', 'normal', 'Administration Division', 'no'),
(81, 'normal.user3', '123', 'normal', 'user3', '090665', 'normal', 'Operation Division', 'no'),
(82, 'gilbert.gilbert', '123', 'gilbert', 'gilbert', '000000', 'normal', 'Operation Division', 'no'),
(83, 'gilbert.flores', '123', 'gilbert', 'flores', '1122', 'normal', 'Operation Division', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`borrow_id`);

--
-- Indexes for table `borrow_request`
--
ALTER TABLE `borrow_request`
  ADD PRIMARY KEY (`not_id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `return_request`
--
ALTER TABLE `return_request`
  ADD PRIMARY KEY (`not_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `borrow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `borrow_request`
--
ALTER TABLE `borrow_request`
  MODIFY `not_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1823;

--
-- AUTO_INCREMENT for table `return_request`
--
ALTER TABLE `return_request`
  MODIFY `not_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
