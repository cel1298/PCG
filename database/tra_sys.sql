-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2025 at 08:50 AM
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
-- Database: `tra_sys`
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
(375, 'admin.user', '2025-04-30 09:29:32', 'logged out'),
(376, 'admin.user', '2025-04-30 09:29:37', 'logged In'),
(377, 'admin.user', '2025-04-30 09:43:10', 'logged out'),
(378, 'register.user', '2025-04-30 09:43:14', 'logged In'),
(379, 'register.user', '2025-04-30 10:38:25', 'logged out'),
(380, 'admin.user', '2025-04-30 10:38:34', 'logged In'),
(381, 'admin.user', '2025-04-30 10:38:39', 'logged out'),
(382, 'register.user', '2025-04-30 10:38:42', 'logged In'),
(383, 'register.user', '2025-04-30 10:57:44', 'logged out'),
(384, 'admin.user', '2025-04-30 10:57:53', 'logged In'),
(385, 'register.user', '2025-04-30 11:09:03', 'logged In'),
(386, 'admin.user', '2025-04-30 11:35:37', 'logged out'),
(387, 'normal.user', '2025-04-30 11:35:41', 'logged In'),
(388, 'normal.user', '2025-04-30 11:44:33', 'logged out'),
(389, 'admin.user', '2025-04-30 11:44:40', 'logged In'),
(390, 'admin.user', '2025-05-02 08:43:01', 'logged In'),
(391, 'admin.user', '2025-05-02 08:44:14', 'logged out'),
(392, 'register.user', '2025-05-02 08:44:18', 'logged In'),
(393, 'register.user', '2025-05-02 08:44:43', 'logged out'),
(394, 'normal.user', '2025-05-02 08:44:48', 'logged In'),
(395, 'register.user', '2025-05-02 08:49:08', 'logged In'),
(396, 'normal.user', '2025-05-02 09:49:33', 'logged out'),
(397, 'admin.user', '2025-05-02 09:49:40', 'logged In'),
(398, 'register.user', '2025-05-02 10:09:23', 'logged out'),
(399, 'normal.user', '2025-05-02 10:09:31', 'logged In'),
(400, 'admin.user', '2025-05-02 10:23:12', 'logged out'),
(401, 'register.user', '2025-05-02 10:23:16', 'logged In'),
(402, 'normal.user', '2025-05-02 10:24:58', 'requested to borrow file 947393 '),
(403, 'register.user', '2025-05-02 10:25:22', 'Borrowed file 947393'),
(404, 'normal.user', '2025-05-02 10:28:10', 'requested to return file 2424324'),
(405, 'normal.user', '2025-05-02 10:52:49', 'logged out'),
(406, 'admin.user', '2025-05-02 10:52:53', 'logged In'),
(407, 'register.user', '2025-05-02 10:54:46', 'logged out'),
(408, 'register.user', '2025-05-02 10:54:55', 'logged In'),
(409, 'register.user', '2025-05-02 10:55:00', 'logged out'),
(410, 'normal.user', '2025-05-02 10:55:04', 'logged In'),
(411, 'normal.user', '2025-05-02 10:56:21', 'logged out'),
(412, 'admin.user', '2025-05-02 10:56:27', 'logged In'),
(413, 'admin.user', '2025-05-02 11:13:16', 'logged out'),
(414, 'normal.user', '2025-05-02 11:13:20', 'logged In'),
(415, 'normal.user', '2025-05-02 11:13:44', 'logged out'),
(416, 'register.user', '2025-05-02 11:13:50', 'logged In'),
(417, 'register.user', '2025-05-02 11:20:59', 'logged out'),
(418, 'normal.user', '2025-05-02 11:21:02', 'logged In'),
(419, 'normal.user', '2025-05-05 09:24:02', 'logged In'),
(420, 'normal.user', '2025-05-05 09:24:13', 'logged out'),
(421, 'admin.user', '2025-05-05 09:24:21', 'logged In'),
(422, 'normal.user', '2025-05-05 10:13:09', 'logged In'),
(423, 'normal.user', '2025-05-05 11:39:15', 'logged out'),
(424, 'register.user', '2025-05-05 11:39:19', 'logged In'),
(425, 'admin.user', '2025-05-05 11:55:55', 'logged out'),
(426, 'normal.user', '2025-05-05 11:55:58', 'logged In'),
(427, 'normal.user', '2025-05-05 11:59:15', 'logged out'),
(428, 'admin.user', '2025-05-05 11:59:20', 'logged In'),
(429, 'admin.user', '2025-05-05 12:06:16', 'logged out'),
(430, 'register.user', '2025-05-05 12:06:20', 'logged In'),
(431, 'register.user', '2025-05-05 12:09:42', 'registered file 1998 with name Anunaki for Operation Division Region'),
(432, 'admin.user', '2025-05-05 12:19:19', 'logged In'),
(433, 'register.user', '2025-05-05 12:25:13', 'Edit File Anunaki with TIN Number 1998 for Operation Division Region'),
(434, 'register.user', '2025-05-05 12:25:21', 'Edit File Anunaki with TIN Number 1998 for Operation Division Region'),
(435, 'register.user', '2025-05-05 12:25:51', 'Edit File Anunaki with TIN Number 1998 for Operation Division Region'),
(436, 'register.user', '2025-05-05 12:27:47', 'Edit File Anunaki with TIN Number 1998 for Operation Division Region'),
(437, 'admin.user', '2025-05-05 13:43:46', 'logged out'),
(438, 'register.user', '2025-05-05 13:43:53', 'logged In'),
(439, 'register.user', '2025-05-05 13:59:05', 'logged out'),
(440, 'normal.user', '2025-05-05 13:59:09', 'logged In'),
(441, 'register.user', '2025-05-05 14:00:35', 'logged out'),
(442, 'admin.user', '2025-05-05 14:00:42', 'logged In'),
(443, 'admin.user', '2025-05-05 14:00:57', 'logged out'),
(444, 'register.user', '2025-05-05 14:01:01', 'logged In'),
(445, 'register.user', '2025-05-05 16:40:38', 'logged out'),
(446, 'normal.user', '2025-05-05 16:40:42', 'logged In'),
(447, 'normal.user', '2025-05-05 16:48:48', 'requested to borrow file 1998 '),
(448, 'normal.user', '2025-05-05 16:49:15', 'logged out'),
(449, 'admin.user', '2025-05-05 16:49:21', 'logged In'),
(450, 'admin.user', '2025-05-05 16:53:48', 'Edit User gilbert.gilbert from Administration Division Region'),
(451, 'admin.user', '2025-05-05 16:57:28', 'Edit User smith.Doe from Navigation / Communication Division'),
(452, 'normal.user', '2025-05-05 17:24:50', 'logged out'),
(453, 'register.user', '2025-05-05 17:24:53', 'logged In'),
(454, 'admin.user', '2025-05-06 11:20:43', 'logged In'),
(455, 'admin.user', '2025-05-08 10:33:41', 'logged In'),
(456, 'register.user', '2025-05-08 10:34:51', 'logged In'),
(457, 'register.user', '2025-05-08 10:45:40', 'registered file 890349 with name CORNBEEF for Operation Division Region'),
(458, 'register.user', '2025-05-08 10:48:58', 'registered file 923402 with name dr for Operation Division Region'),
(459, 'register.user', '2025-05-08 10:50:48', 'registered file 783948 with name qweqwe for Operation Division Region'),
(460, 'register.user', '2025-05-08 10:59:00', 'registered file 892304298 with name Ole-Ole for Operation Division Region'),
(461, 'admin.user', '2025-05-08 11:02:56', 'logged out'),
(462, 'normal.user', '2025-05-08 11:03:02', 'logged In'),
(463, 'normal.user', '2025-05-08 11:04:13', 'requested to borrow file 892304298 '),
(464, 'admin.user', '2025-05-15 14:35:00', 'logged In'),
(465, 'normal.user', '2025-05-15 14:35:01', 'logged In'),
(466, 'admin.user', '2025-05-15 15:17:28', 'logged In'),
(467, 'admin.user', '2025-05-16 11:37:06', 'logged In'),
(468, 'admin.user', '2025-05-17 10:27:09', 'Edit User celso1.vailoces from Operation Division'),
(469, 'celso1.vailoces', '2025-05-17 10:28:52', 'logged In'),
(470, 'celso1.vailoces', '2025-05-17 10:28:56', 'logged out'),
(471, 'register.user', '2025-05-17 10:47:45', 'logged In'),
(472, 'register.user', '2025-05-17 10:52:15', 'registered file 787898 with name AFSAT - Doc for Operation Division Region'),
(473, 'register.user', '2025-05-17 11:31:03', 'logged out'),
(474, 'normal.user', '2025-05-17 11:31:06', 'logged In'),
(475, 'admin.user', '2025-05-17 11:34:23', 'logged In'),
(476, 'admin.user', '2025-05-17 11:42:54', 'Registered new normal user - cardo.dalisay  (Operation Division) '),
(477, 'normal.user', '2025-05-17 11:43:11', 'logged out'),
(478, 'cardo.dalisay', '2025-05-17 11:43:23', 'logged In'),
(479, 'cardo.dalisay', '2025-05-17 11:43:38', 'logged out'),
(480, 'register.user', '2025-05-17 11:51:31', 'logged In'),
(481, 'register.user', '2025-05-17 12:03:20', 'Edit File Ole-Ole with TIN Number 892304298 for Operation Division Region'),
(482, 'register.user', '2025-05-17 12:03:31', 'Edit File Ole-Ole with TIN Number 892304298 for Operation Division Region'),
(483, 'register.user', '2025-05-17 12:04:21', 'registered file 837391 with name kwek kwek for Operation Division Region'),
(484, 'register.user', '2025-05-17 12:04:38', 'Edit File kwek kwek with TIN Number 837391 for Operation Division Region'),
(485, 'register.user', '2025-05-17 12:04:57', 'Edit File AFSAT - Doc with TIN Number 787898 for Operation Division Region'),
(486, 'admin.user', '2025-05-17 12:56:03', 'logged out'),
(487, 'admin.user', '2025-05-17 12:56:07', 'logged In'),
(488, 'admin.user', '2025-05-17 12:56:33', 'Registered new administrator user - John.smith  (Operation Division) '),
(489, 'admin.user', '2025-05-17 12:56:40', 'logged out'),
(490, 'john.smith', '2025-05-17 12:56:47', 'logged In'),
(491, 'John.smith', '2025-05-17 12:57:38', 'Registered new normal user - john.john  (Operation Division) '),
(492, 'register.user', '2025-05-17 12:57:45', 'logged out'),
(493, 'john.john', '2025-05-17 12:57:53', 'logged In'),
(494, 'John.smith', '2025-05-17 12:58:35', 'logged out'),
(495, 'john.smith', '2025-05-17 12:58:44', 'logged In'),
(496, 'John.smith', '2025-05-17 12:58:59', 'logged out'),
(497, 'john.smith', '2025-05-17 13:01:03', 'logged In'),
(498, 'John.smith', '2025-05-17 13:01:29', 'Registered new administrator user - carla.smith  (Operation Division) '),
(499, 'john.john', '2025-05-17 13:01:37', 'logged out'),
(500, 'carla.smith', '2025-05-17 13:01:42', 'logged In'),
(501, 'carla.smith', '2025-05-17 13:02:54', 'Registered new register user - stanley.smith  (Operation Division) '),
(502, 'carla.smith', '2025-05-17 13:03:00', 'logged out'),
(503, 'stanley.smith', '2025-05-17 13:03:06', 'logged In'),
(504, 'stanley.smith', '2025-05-17 13:04:25', 'registered file 07070707070707 with name This Is Only An Example Document Name for Operation Divisio'),
(505, 'stanley.smith', '2025-05-17 13:04:40', 'Edit File This Is Only An Example Document Name with TIN Number 07070707070707 for Operation Divisio'),
(506, 'stanley.smith', '2025-05-17 13:04:47', 'logged out'),
(507, 'john.john', '2025-05-17 13:04:53', 'logged In'),
(508, 'john.john', '2025-05-17 13:05:21', 'requested to borrow file 07070707070707 '),
(509, 'john.john', '2025-05-17 13:05:28', 'logged out'),
(510, 'register.user', '2025-05-17 13:05:31', 'logged In'),
(511, 'register.user', '2025-05-17 13:05:49', 'logged out'),
(512, 'john.john', '2025-05-17 13:05:55', 'logged In'),
(513, 'john.john', '2025-05-17 14:55:25', 'logged out'),
(514, 'register.user', '2025-05-17 14:55:30', 'logged In'),
(515, 'John.smith', '2025-05-17 14:57:41', 'logged out'),
(516, 'register.user', '2025-05-17 14:57:52', 'logged out'),
(517, 'admin.user', '2025-05-17 15:06:56', 'logged In'),
(518, 'admin.user', '2025-05-17 15:09:20', 'Registered new administrator user - john.smith1  (Operation Division) '),
(519, 'admin.user', '2025-05-17 15:09:24', 'logged out'),
(520, 'john.smith1', '2025-05-17 15:11:10', 'logged In'),
(521, 'john.smith1', '2025-05-17 15:12:06', 'logged In'),
(522, 'john.smith1', '2025-05-17 15:13:34', 'logged In'),
(523, 'normal.user', '2025-05-17 15:24:33', 'logged In'),
(524, 'john.smith1', '2025-05-17 15:28:26', 'logged out'),
(525, 'register.user', '2025-05-17 15:29:04', 'logged In'),
(526, 'register.user', '2025-05-17 15:29:20', 'Edit File This Is Only An Example Document Name with TIN Number 07070707070707 for Operation Divisio'),
(527, 'register.user', '2025-05-17 15:29:40', 'Edit File This Is Only An Example Document Name with TIN Number 07070707070707 for Operation Divisio'),
(528, 'register.user', '2025-05-17 15:31:31', 'registered file 738293 with name Procedures Manual for Operation Division Region'),
(529, 'normal.user', '2025-05-17 15:32:09', 'requested to borrow file 738293 '),
(530, 'register.user', '2025-05-17 15:32:45', 'Borrowed file 738293'),
(531, 'register.user', '2025-05-17 15:33:31', 'Borrowed file 07070707070707'),
(532, 'normal.user', '2025-05-17 15:33:43', 'requested to return file 738293'),
(533, 'register.user', '2025-05-17 15:35:37', 'Returned file 738293'),
(534, 'normal.user', '2025-05-17 15:36:23', 'requested to borrow file 738293 '),
(535, 'register.user', '2025-05-17 15:36:33', 'Borrowed file 738293'),
(536, 'normal.user', '2025-05-17 15:36:54', 'requested to return file 738293'),
(537, 'register.user', '2025-05-17 15:38:12', 'Returned file 738293'),
(538, 'register.user', '2025-05-17 15:40:11', 'logged out'),
(539, 'admin.user', '2025-05-17 15:40:16', 'logged In'),
(540, 'admin.user', '2025-05-17 15:42:17', 'logged out'),
(541, 'register.user', '2025-05-17 15:42:20', 'logged In'),
(542, 'admin.user', '2025-05-19 16:55:17', 'logged In'),
(543, 'admin.user', '2025-05-23 16:37:02', 'logged In'),
(544, 'admin.user', '2025-05-23 16:37:18', 'logged out'),
(545, 'register.user', '2025-05-23 16:37:22', 'logged In'),
(546, 'normal.user', '2025-05-23 16:37:44', 'logged In'),
(547, 'normal.user', '2025-05-23 16:43:03', 'logged out'),
(548, 'admin.user', '2025-05-23 16:43:07', 'logged In'),
(549, 'admin.user', '2025-05-23 17:07:50', 'logged out'),
(550, 'normal.user', '2025-05-23 17:07:56', 'logged In'),
(551, 'register.user', '2025-05-23 17:11:52', 'logged out'),
(552, 'normal.user', '2025-05-23 17:11:56', 'logged In'),
(553, 'normal.user', '2025-05-23 17:24:07', 'requested to borrow file 892304298 '),
(554, 'normal.user', '2025-05-23 17:24:31', 'logged out'),
(555, 'register.user', '2025-05-23 17:24:36', 'logged In'),
(556, 'register.user', '2025-05-23 17:24:42', 'Borrowed file 892304298'),
(557, 'normal.user', '2025-05-23 17:25:36', 'requested to borrow file 837391 '),
(558, 'register.user', '2025-05-23 17:25:48', 'Borrowed file 837391'),
(559, 'normal.user', '2025-05-23 17:26:40', 'requested to borrow file 787898 '),
(560, 'register.user', '2025-05-23 17:26:50', 'Borrowed file 787898'),
(561, 'register.user', '2025-05-23 17:31:57', 'registered file 112233 with name File Repo for Operation Division Region'),
(562, 'normal.user', '2025-05-23 17:32:10', 'requested to borrow file 112233 '),
(563, 'register.user', '2025-05-23 17:32:24', 'Borrowed file 112233'),
(564, 'normal.user', '2025-05-23 17:35:37', 'requested to return file 112233'),
(565, 'register.user', '2025-05-23 17:35:43', 'Returned file 112233'),
(566, 'normal.user', '2025-05-23 17:35:51', 'requested to borrow file 112233 '),
(567, 'register.user', '2025-05-23 17:36:00', 'Borrowed file 112233'),
(568, 'register.user', '2025-05-23 17:39:41', 'registered file 1998 with name carl for Operation Division Region'),
(569, 'normal.user', '2025-05-23 17:39:53', 'requested to borrow file 1998 '),
(570, 'register.user', '2025-05-23 17:40:05', 'Borrowed file 1998'),
(571, 'register.user', '2025-05-24 09:58:58', 'logged In'),
(572, 'register.user', '2025-05-24 10:01:04', 'registered file 2025005 with name TRANING EXAM for Operation Division Region'),
(573, 'normal.user', '2025-05-24 10:01:29', 'logged In'),
(574, 'normal.user', '2025-05-24 10:01:54', 'requested to return file 1998'),
(575, 'register.user', '2025-05-24 10:02:06', 'Returned file 1998'),
(576, 'admin.user', '2025-05-24 11:36:03', 'logged In'),
(577, 'register.user', '2025-05-24 11:36:38', 'logged out'),
(578, 'normal.user', '2025-05-24 11:36:45', 'logged In'),
(579, 'normal.user', '2025-05-24 11:54:18', 'logged out'),
(580, 'register.user', '2025-05-24 11:54:23', 'logged In'),
(581, 'register.user', '2025-05-24 12:29:45', 'logged out'),
(582, 'normal.user', '2025-05-24 12:29:50', 'logged In'),
(583, 'normal.user', '2025-05-24 12:37:32', 'logged out'),
(584, 'register.user', '2025-05-24 12:37:36', 'logged In'),
(585, 'register.user', '2025-05-24 12:38:36', 'logged out'),
(586, 'normal.user', '2025-05-24 12:38:41', 'logged In'),
(587, 'normal.user', '2025-05-24 12:42:41', 'logged out'),
(588, 'register.user', '2025-05-24 12:42:45', 'logged In'),
(589, 'admin.user', '2025-05-24 12:47:42', 'logged out'),
(590, 'normal.user', '2025-05-24 12:47:46', 'logged In'),
(591, 'normal.user', '2025-05-24 13:57:53', 'logged In'),
(592, 'normal.user', '2025-05-24 14:14:17', 'logged out'),
(593, 'admin.user', '2025-05-24 14:14:44', 'logged In'),
(594, 'admin.user', '2025-05-24 14:15:44', 'logged out'),
(595, 'register.user', '2025-05-24 14:16:23', 'logged out'),
(596, 'register.user', '2025-05-24 14:31:16', 'logged In'),
(597, 'register.user', '2025-05-24 14:31:21', 'logged out'),
(598, 'register.user', '2025-05-24 14:38:22', 'logged In'),
(599, 'register.user', '2025-05-24 14:38:32', 'logged out'),
(600, 'admin.user', '2025-05-24 14:40:32', 'logged In'),
(601, 'admin.user', '2025-05-24 14:40:45', 'logged out'),
(602, 'normal.user', '2025-05-24 14:40:49', 'logged In'),
(603, 'normal.user', '2025-05-24 14:47:15', 'logged out'),
(604, 'admin.user', '2025-05-24 14:47:57', 'logged In'),
(605, 'register.user', '2025-05-24 14:48:03', 'logged In'),
(606, 'register.user', '2025-05-24 14:49:23', 'logged out'),
(607, 'normal.user', '2025-05-24 14:49:27', 'logged In');

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
(16, '678754', '112233', '2025-05-23 17:32:24', 'returned', '2025-05-23 17:35:43'),
(18, '678754', '1998', '2025-05-23 17:40:05', 'returned', '2025-05-24 10:02:06');

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
(14, '020202', 'john.john', '07070707070707', 'confirmed', '2025-05-17 07:33:31'),
(15, '678754', 'normal.user', '738293', 'confirmed', '2025-05-17 07:32:45'),
(16, '678754', 'normal.user', '738293', 'confirmed', '2025-05-17 07:36:33'),
(17, '678754', 'normal.user', '892304298', 'confirmed', '2025-05-23 09:24:42'),
(18, '678754', 'normal.user', '837391', 'confirmed', '2025-05-23 09:25:48'),
(19, '678754', 'normal.user', '787898', 'confirmed', '2025-05-23 09:26:50'),
(20, '678754', 'normal.user', '112233', 'confirmed', '2025-05-23 09:32:24'),
(21, '678754', 'normal.user', '112233', 'confirmed', '2025-05-23 09:36:00'),
(22, '678754', 'normal.user', '1998', 'confirmed', '2025-05-23 09:40:05');

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
(1833, '112233', 'File Repo', 'borrowed', 'entity', 'objection', 'Arthur', 'Patrol Zone', 'Operation Division'),
(1834, '1998', 'carl', 'returned', 'individual', 'examination', 'lou', 'Exclusion Zone', 'Operation Division'),
(1835, '2025005', 'TRANING EXAM', 'returned', 'entity', 'audit', 'Commander Officer', 'Containment', 'Operation Division');

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
(4, '678754', 'normal.user', '738293', 'confirmed', '2025-05-17 07:35:37', ''),
(5, '678754', 'normal.user', '738293', 'confirmed', '2025-05-17 07:38:12', ''),
(6, '678754', 'normal.user', '112233', 'confirmed', '2025-05-23 09:35:43', ''),
(7, '678754', 'normal.user', '1998', 'confirmed', '2025-05-24 02:02:06', '');

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
(68, 'normal.user', '123', 'normal', 'user', '678754', 'normal', 'Operation Division', 'yes'),
(69, 'register.user', '123', 'register', 'user', '645634', 'register', 'Operation Division', 'no'),
(70, 'supervisor.user', '123', 'supervisor', 'user', '465645', 'supervisor', 'Security / Intelligence Division', 'no'),
(71, 'qwe.qwe', '123', 'qwe', 'qwe', '345656', 'supervisor', 'Operation Division', 'no'),
(72, 'Charls.Darwin', '123', 'Charls', 'Darwin', '777777', 'normal', 'Navigation / Communication Division', 'no'),
(73, 'norm.user', '123', 'norm', 'user', '555555', 'normal', 'Operation Division', 'no'),
(74, 'glaiza.mustapha', '123', 'glaiza', 'mustapha', '787890', 'normal', 'Security / Intelligence Division', 'no'),
(75, 'normal.personel', '123', 'normal', 'personel', '767676', 'normal', 'Navigation / Communication Division', 'no'),
(76, 'norms.user', '123', 'norms', 'user', '909090', 'normal', 'Navigation / Communication Division', 'no'),
(77, 'celso.vailoces', '123', 'celso', 'vailoces', '000999', 'normal', 'Operation Division', 'no'),
(78, 'celso1.vailoces', '12345', 'celso1', 'vailoces', '000001', 'normal', 'Operation Division', 'no'),
(81, 'normal.user3', '123', 'normal', 'user3', '090665', 'normal', 'Operation Division', 'no'),
(82, 'gilbert.gilbert', '123', 'gilbert', 'gilbert', '010203', 'normal', 'Administration Division', 'no'),
(83, 'gilbert.flores', '123', 'gilbert', 'flores', '1122', 'normal', 'Operation Division', 'yes'),
(84, 'admin.user', '123', 'admin', 'user', '120598', 'administrator', 'Operation Division', 'yes'),
(85, 'John.Doe', '12345', 'John', 'Doe', '729347', 'administrator', 'Operation Division', ''),
(86, 'smith.Doe', '12345', 'smith', 'Doe', '0739370', 'normal', 'Navigation / Communication Division', ''),
(87, 'karen.dutch', '123', 'karen', 'dutch', '485928', 'register', 'Operation Division', 'no'),
(88, 'cardo.dalisay', '123', 'cardo', 'dalisay', '724', 'normal', 'Operation Division', 'no'),
(89, 'John.smith', '123', 'John', 'smith', '010101', 'administrator', 'Operation Division', 'no'),
(90, 'john.john', '123', 'john', 'john', '020202', 'normal', 'Operation Division', 'no'),
(91, 'carla.smith', '123', 'carla', 'smith', '030303', 'administrator', 'Operation Division', 'no'),
(92, 'stanley.smith', '123', 'stanley', 'smith', '040404', 'register', 'Operation Division', 'no'),
(93, 'john.smith1', '123', 'john', 'smith1', '54321', 'administrator', 'Operation Division', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `id` int(11) NOT NULL,
  `fname` text NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`id`, `fname`, `name`) VALUES
(78, '20250524065610_ako.jpg', 'ako.jpg'),
(79, '20250524065617_LogixSys Document.pdf', 'LogixSys Document.pdf'),
(80, '20250524065624_CSS2.docx', 'CSS2.docx'),
(81, '20250524065637_ITPE 103 2-A.xlsx', 'ITPE 103 2-A.xlsx'),
(82, '20250524070319_Doc15.pdf', 'Doc15.pdf'),
(83, '20250524070404_Tutorial Grade.pdf', 'Tutorial Grade.pdf'),
(84, '20250524070848_blue-futuristic-networking-technology-vector_53876-151537.avif', 'blue-futuristic-networking-technology-vector_53876-151537.avif'),
(85, '20250524072759_Screenshot 2025-04-25 172347.png', 'Screenshot 2025-04-25 172347.png'),
(86, '20250524073512_image2 (1).png', 'image2 (1).png'),
(87, '20250524074624_tra_sys.sql', 'tra_sys.sql'),
(88, '20250524080345_dd486808-322d-4f55-bb50-4395f86aea06.pdf', 'dd486808-322d-4f55-bb50-4395f86aea06.pdf'),
(89, '20250524084853_account-security.png', 'account-security.png');

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
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=608;

--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `borrow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `borrow_request`
--
ALTER TABLE `borrow_request`
  MODIFY `not_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1836;

--
-- AUTO_INCREMENT for table `return_request`
--
ALTER TABLE `return_request`
  MODIFY `not_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
