-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2022 at 12:59 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `premium`
--

-- --------------------------------------------------------

--
-- Table structure for table `addon_account`
--

CREATE TABLE `addon_account` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addon_account`
--

INSERT INTO `addon_account` (`id`, `name`, `label`, `shared`) VALUES
(2, 'society_police', 'Police', 1),
(3, 'society_taxi', 'Taxi', 1),
(4, 'society_realestateagent', 'Agent immobilier', 1),
(9, 'society_cardealer', 'Cardealer', 1),
(10, 'society_ambulance', 'EMS', 1),
(11, 'property_black_money', 'Money Sale Property', 0),
(13, 'bank_savings', 'Bank Savings', 0),
(15, 'society_ambulance', 'EMS', 1),
(24, 'society_mafia', 'Mafia', 1),
(26, 'caution', 'caution', 0),
(27, 'society_mechanic', 'Mechanic', 1),
(30, 'society_fsgang', 'fsgang', 1),
(31, 'society_fueler', 'Fueler', 1),
(32, 'society_tailor', 'Tailor', 1),
(33, 'society_unemployed', 'Unemployed', 1),
(34, 'society_lumberjack', 'Lumberjack', 1),
(35, 'society_slaughterer', 'Butcher', 1),
(39, 'society_resto', 'Polo', 1),
(40, 'society_fastfood', 'FastFoody', 1),
(41, 'society_offdutyfastfood', 'Off-Duty', 1),
(42, 'society_McDonalds', 'McDonalds Employee', 1),
(43, 'society_ccd', 'CCD', 1),
(44, 'society_ccd', 'CCD', 1),
(48, 'society_boulangerie', 'Boulangerie', 1),
(49, 'society_brasseur', 'Brasseur', 1),
(50, 'society_orpailleurs', 'Orpailleurs', 1),
(51, 'society_weedjob', 'weedjob', 1),
(52, 'society_unicorn', 'Vanilla unicorn', 1),
(53, 'society_unicorn', 'Vanilla unicorn', 1),
(54, 'society_unicorn', 'Vanilla unicorn', 1),
(55, 'society_weed', 'weedjob', 1),
(56, 'society_kfc', 'KFC', 1),
(57, 'society_gotur', 'Götür', 1),
(58, 'vault_black_money', 'Money Vault', 0),
(59, 'society_police_black_money', 'Police Black Money', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'society_police', 4345061, NULL),
(2, 'society_taxi', 0, NULL),
(3, 'society_realestateagent', 2875, NULL),
(6, 'society_cardealer', 509758, NULL),
(7, 'society_ambulance', 70140820, NULL),
(321, 'society_mafia', 0, NULL),
(322, 'property_black_money', 0, 'Char1steam:11000013d4486db'),
(323, 'bank_savings', 0, 'Char1steam:11000013d4486db'),
(324, 'caution', 0, 'Char1steam:11000013d4486db'),
(325, 'society_mechanic', 280507678, NULL),
(331, 'property_black_money', 0, 'Char1steam:1100001468829f9'),
(332, 'bank_savings', 0, 'Char1steam:1100001468829f9'),
(333, 'caution', 0, 'Char1steam:1100001468829f9'),
(334, 'bank_savings', 0, 'steam:110000135fcc80a'),
(335, 'caution', 0, 'steam:110000135fcc80a'),
(336, 'property_black_money', 0, 'steam:110000135fcc80a'),
(337, 'society_fsgang', 0, NULL),
(338, 'property_black_money', 0, 'steam:11000014be047a9'),
(339, 'bank_savings', 0, 'steam:11000014be047a9'),
(340, 'caution', 0, 'steam:11000014be047a9'),
(341, 'property_black_money', 0, 'steam:11000014aaf8ab6'),
(342, 'caution', 0, 'steam:11000014aaf8ab6'),
(343, 'bank_savings', 0, 'steam:11000014aaf8ab6'),
(344, 'property_black_money', 0, 'steam:11000010ceae59d'),
(345, 'bank_savings', 0, 'steam:11000010ceae59d'),
(346, 'caution', 0, 'steam:11000010ceae59d'),
(347, 'property_black_money', 0, 'steam:110000140dcae16'),
(348, 'bank_savings', 0, 'steam:110000140dcae16'),
(349, 'caution', 0, 'steam:110000140dcae16'),
(350, 'society_unemployed', 0, NULL),
(351, 'society_fueler', 0, NULL),
(352, 'society_tailor', 0, NULL),
(353, 'society_slaughterer', 0, NULL),
(354, 'society_lumberjack', 0, NULL),
(355, 'property_black_money', 0, 'steam:11000014420dda9'),
(356, 'bank_savings', 0, 'steam:11000014420dda9'),
(357, 'caution', 0, 'steam:11000014420dda9'),
(358, 'society_burgershot', 0, NULL),
(359, 'society_mcdonalds', 0, NULL),
(360, 'society_resto', 498415, NULL),
(361, 'society_offdutyfastfood', 0, NULL),
(362, 'society_fastfood', 0, NULL),
(363, 'property_black_money', 0, 'Char1steam:11000014bb77bcd'),
(364, 'bank_savings', 0, 'Char1steam:11000014bb77bcd'),
(365, 'caution', 0, 'Char1steam:11000014bb77bcd'),
(366, 'property_black_money', 0, 'steam:11000011cc0ec0b'),
(367, 'bank_savings', 0, 'steam:11000011cc0ec0b'),
(368, 'caution', 0, 'steam:11000011cc0ec0b'),
(369, 'property_black_money', 0, 'steam:11000014ef9bcc2'),
(370, 'bank_savings', 0, 'steam:11000014ef9bcc2'),
(371, 'caution', 0, 'steam:11000014ef9bcc2'),
(372, 'property_black_money', 0, 'steam:11000014adb8632'),
(373, 'caution', 0, 'steam:11000014adb8632'),
(374, 'bank_savings', 0, 'steam:11000014adb8632'),
(375, 'society_ccd', 78179438, NULL),
(379, 'society_unicorn', 46850, NULL),
(380, 'society_boulangerie', 0, NULL),
(381, 'society_brasseur', 0, NULL),
(382, 'society_orpailleurs', 0, NULL),
(389, 'property_black_money', 0, 'Char1steam:1100001472bccb5'),
(390, 'bank_savings', 0, 'Char1steam:1100001472bccb5'),
(391, 'caution', 0, 'Char1steam:1100001472bccb5'),
(392, 'society_weedjob', 43954, NULL),
(393, 'society_weed', 0, NULL),
(400, 'property_black_money', 0, 'Char1:110000142bdf425'),
(401, 'bank_savings', 0, 'Char1:110000142bdf425'),
(402, 'caution', 0, 'Char1:110000142bdf425'),
(415, 'property_black_money', 0, 'Char1steam:1100001468829f9'),
(416, 'caution', 0, 'Char1steam:1100001468829f9'),
(417, 'bank_savings', 0, 'Char1steam:1100001468829f9'),
(418, 'property_black_money', 0, 'steam:110000142bdf425'),
(419, 'bank_savings', 0, 'steam:110000142bdf425'),
(420, 'caution', 0, 'steam:110000142bdf425'),
(421, 'property_black_money', 0, 'steam:11000014abc7198'),
(422, 'bank_savings', 0, 'steam:11000014abc7198'),
(423, 'caution', 0, 'steam:11000014abc7198'),
(424, 'bank_savings', 0, 'Char1steam:11000014d8c241b'),
(425, 'caution', 0, 'Char1steam:11000014d8c241b'),
(426, 'property_black_money', 0, 'Char1steam:11000014d8c241b'),
(427, 'property_black_money', 0, 'steam:11000011418b975'),
(428, 'bank_savings', 0, 'steam:11000011418b975'),
(429, 'caution', 0, 'steam:11000011418b975'),
(433, 'property_black_money', 0, 'steam:11000014b2e0811'),
(434, 'bank_savings', 0, 'steam:11000014b2e0811'),
(435, 'caution', 0, 'steam:11000014b2e0811'),
(436, 'property_black_money', 0, 'steam:1100001472bccb5'),
(437, 'bank_savings', 0, 'steam:1100001472bccb5'),
(438, 'caution', 0, 'steam:1100001472bccb5'),
(439, 'bank_savings', 0, 'steam:11000014de33ad2'),
(440, 'property_black_money', 0, 'steam:11000014de33ad2'),
(441, 'caution', 0, 'steam:11000014de33ad2'),
(442, 'property_black_money', 0, 'steam:11000014d8c241b'),
(443, 'bank_savings', 0, 'steam:11000014d8c241b'),
(444, 'caution', 0, 'steam:11000014d8c241b'),
(445, 'property_black_money', 0, 'steam:1100001468829f9'),
(446, 'bank_savings', 0, 'steam:1100001468829f9'),
(447, 'caution', 2000, 'steam:1100001468829f9'),
(448, 'property_black_money', 0, 'steam:110000145d04c36'),
(449, 'bank_savings', 0, 'steam:110000145d04c36'),
(450, 'caution', 0, 'steam:110000145d04c36'),
(451, 'property_black_money', 0, 'steam:11000013c9eb983'),
(452, 'bank_savings', 0, 'steam:11000013c9eb983'),
(453, 'caution', 0, 'steam:11000013c9eb983'),
(454, 'society_kfc', 0, NULL),
(455, 'property_black_money', 0, 'steam:11000013b33f973'),
(456, 'bank_savings', 0, 'steam:11000013b33f973'),
(457, 'caution', 0, 'steam:11000013b33f973'),
(458, 'property_black_money', 0, 'steam:1100001424bdaac'),
(459, 'bank_savings', 0, 'steam:1100001424bdaac'),
(460, 'caution', 0, 'steam:1100001424bdaac'),
(461, 'property_black_money', 0, 'steam:1100001419dbb7f'),
(462, 'caution', 0, 'steam:1100001419dbb7f'),
(463, 'bank_savings', 0, 'steam:1100001419dbb7f'),
(464, 'property_black_money', 0, 'steam:11000014ad2648c'),
(465, 'bank_savings', 0, 'steam:11000014ad2648c'),
(466, 'caution', 0, 'steam:11000014ad2648c'),
(467, 'bank_savings', 0, 'steam:11000013f7dc792'),
(468, 'property_black_money', 0, 'steam:11000013f7dc792'),
(469, 'caution', 0, 'steam:11000013f7dc792'),
(470, 'bank_savings', 0, 'steam:11000013508796f'),
(471, 'property_black_money', 0, 'steam:11000013508796f'),
(472, 'caution', 0, 'steam:11000013508796f'),
(473, 'property_black_money', 0, 'steam:110000140bed131'),
(474, 'bank_savings', 0, 'steam:110000140bed131'),
(475, 'caution', 0, 'steam:110000140bed131'),
(476, 'property_black_money', 0, 'steam:11000014e54d683'),
(477, 'bank_savings', 0, 'steam:11000014e54d683'),
(478, 'caution', 0, 'steam:11000014e54d683'),
(479, 'property_black_money', 0, 'steam:11000013d9aecf5'),
(480, 'caution', 0, 'steam:11000013d9aecf5'),
(481, 'bank_savings', 0, 'steam:11000013d9aecf5'),
(482, 'property_black_money', 0, 'steam:11000013ff9a7a7'),
(483, 'bank_savings', 0, 'steam:11000013ff9a7a7'),
(484, 'caution', 0, 'steam:11000013ff9a7a7'),
(485, 'bank_savings', 0, 'steam:11000014a064e27'),
(486, 'property_black_money', 0, 'steam:11000014a064e27'),
(487, 'caution', 0, 'steam:11000014a064e27'),
(488, 'caution', 0, 'steam:11000014bb77bcd'),
(489, 'property_black_money', 0, 'steam:11000014bb77bcd'),
(490, 'bank_savings', 0, 'steam:11000014bb77bcd'),
(491, 'society_gotur', 0, NULL),
(492, 'bank_savings', 0, 'steam:110000144d7020e'),
(493, 'property_black_money', 0, 'steam:110000144d7020e'),
(494, 'caution', 0, 'steam:110000144d7020e'),
(495, 'property_black_money', 0, 'steam:11000014292f4b2'),
(496, 'bank_savings', 0, 'steam:11000014292f4b2'),
(497, 'caution', 0, 'steam:11000014292f4b2'),
(498, 'property_black_money', 0, 'steam:1100001442255b5'),
(499, 'bank_savings', 0, 'steam:1100001442255b5'),
(500, 'caution', 0, 'steam:1100001442255b5'),
(501, 'property_black_money', 0, 'steam:11000013d4486db'),
(502, 'bank_savings', 0, 'steam:11000013d4486db'),
(503, 'caution', 0, 'steam:11000013d4486db'),
(504, 'property_black_money', 0, 'steam:1100001468a4d74'),
(505, 'bank_savings', 0, 'steam:1100001468a4d74'),
(506, 'caution', 0, 'steam:1100001468a4d74'),
(507, 'society_police_black_money', 0, NULL),
(508, 'vault_black_money', 0, 'steam:1100001468a4d74');

-- --------------------------------------------------------

--
-- Table structure for table `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addon_inventory`
--

INSERT INTO `addon_inventory` (`id`, `name`, `label`, `shared`) VALUES
(1, 'society_police', 'Police', 1),
(2, 'society_taxi', 'Taxi', 1),
(3, 'society_weazel', 'Weazel News', 1),
(4, 'property', 'Property', 0),
(5, 'society_cardealer', 'Cardealer', 1),
(6, 'society_ambulance', 'EMS', 1),
(17, 'society_mafia', 'Mafia', 1),
(18, 'society_weazelnews', 'Weazel News', 1),
(19, 'society_mechanic', 'Mechanic', 1),
(21, 'housing', 'Housing', 0),
(22, 'property', 'Property', 0),
(23, 'society_fsgang', 'fsgang', 1),
(24, 'society_fueler', 'Fueler', 1),
(25, 'society_tailor', 'Tailor', 1),
(26, 'society_unemployed', 'Unemployed', 1),
(27, 'society_lumberjack', 'Lumberjack', 1),
(28, 'society_slaughterer', 'Butcher', 1),
(33, 'society_resto', 'Polo', 1),
(34, 'society_fastfood', 'FastFoody', 1),
(35, 'society_McDonalds', 'McDonalds Employee', 1),
(36, 'society_offdutyfastfood', 'Off-Duty', 1),
(37, 'society_ccd', 'CCD', 1),
(38, 'society_ccd', 'CCD', 1),
(45, 'society_boulangerie', 'Boulangerie', 1),
(46, 'society_brasseur', 'Brasseur', 1),
(47, 'society_orpailleurs', 'Orpailleurs', 1),
(48, 'society_weedjob', 'weedjob', 1),
(49, 'society_weedjob_fridge', 'weedjob (frigo)', 1),
(50, 'society_unicorn', 'Vanilla unicorn', 1),
(51, 'unicorn_bar', 'Vanilla unicorn - bar', 1),
(52, 'society_unicorn', 'Vanilla unicorn', 1),
(53, 'unicorn_bar', 'Vanilla unicorn - bar', 1),
(54, 'society_unicorn', 'Vanilla unicorn', 1),
(55, 'unicorn_bar', 'Vanilla unicorn - bar', 1),
(56, 'society_weed', 'weedjob', 1),
(57, 'society_kfc', 'KFC', 1),
(58, 'society_kfc_fridge', 'KFC Fridge', 1),
(59, 'society_gotur', 'Götür', 1),
(60, 'vault', 'Vault', 0);

-- --------------------------------------------------------

--
-- Table structure for table `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addon_inventory_items`
--

INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
(15, 'society_mechanic', 'bread', 0, NULL),
(16, 'society_fastfood', 'burger', 0, NULL),
(17, 'society_unicorn_fridge', 'ice', 40, NULL),
(18, 'society_unicorn_fridge', 'rum', 10, NULL),
(19, 'society_unicorn_fridge', 'rhum', 20, NULL),
(20, 'society_unicorn_fridge', 'icedtea', 20, NULL),
(21, 'society_unicorn_fridge', 'icetea', 20, NULL),
(22, 'society_unicorn', 'icetea', 20, NULL),
(23, 'society_unicorn_fridge', 'tequila', 20, NULL),
(24, 'unicorn_bar', 'mint', -10, NULL),
(25, 'unicorn_bar', 'sugar', -2, NULL),
(26, 'unicorn_bar', 'water', 0, NULL),
(27, 'unicorn_bar', 'bourbon', 0, NULL),
(28, 'unicorn_bar', 'vodka', 6, NULL),
(29, 'unicorn_bar', 'cointreau', 0, NULL),
(30, 'unicorn_bar', 'fresh_mix', 0, NULL),
(31, 'unicorn_bar', 'cranberry_juice', 0, NULL),
(32, 'unicorn_bar', 'lime', 0, NULL),
(33, 'unicorn_bar', 'ice', -1, NULL),
(34, 'unicorn_bar', 'white_rum', -2, NULL),
(35, 'unicorn_bar', 'club_soda', -1, NULL),
(36, 'unicorn_bar', 'light_rum', 2, NULL),
(37, 'unicorn_bar', 'gold_rum', 2, NULL),
(38, 'unicorn_bar', 'dark_rum', 2, NULL),
(39, 'unicorn_bar', 'curacao', 1, NULL),
(40, 'unicorn_bar', 'syrup', 1, NULL),
(41, 'unicorn_bar', 'cachaca', 0, NULL),
(42, 'unicorn_bar', 'limeade', 0, NULL),
(43, 'unicorn_bar', 'tequila', 0, NULL),
(44, 'unicorn_bar', 'triple_sec', 0, NULL),
(45, 'unicorn_bar', 'coconut_milk', 0, NULL),
(46, 'unicorn_bar', 'pineapple_juice', 0, NULL),
(47, 'society_police', 'armor', 4993, NULL),
(48, 'society_weedjob_fridge', 'afghan', 30, NULL),
(49, 'society_weedjob_fridge', 'joint', 51, NULL),
(50, 'society_weedjob_fridge', 'whitewidow', 0, NULL),
(51, 'society_weedjob_fridge', 'weed', 3, NULL),
(52, 'society_mechanic', 'joint', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `allhousing`
--

CREATE TABLE `allhousing` (
  `id` int(11) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `ownername` varchar(50) NOT NULL,
  `owned` tinyint(4) NOT NULL,
  `price` int(11) NOT NULL,
  `resalepercent` int(11) NOT NULL,
  `resalejob` varchar(50) NOT NULL,
  `entry` longtext DEFAULT NULL,
  `garage` longtext DEFAULT NULL,
  `furniture` longtext DEFAULT NULL,
  `shell` varchar(50) NOT NULL,
  `interior` varchar(50) NOT NULL,
  `shells` longtext DEFAULT NULL,
  `doors` longtext DEFAULT NULL,
  `housekeys` longtext DEFAULT NULL,
  `wardrobe` longtext DEFAULT NULL,
  `inventory` longtext DEFAULT NULL,
  `inventorylocation` longtext DEFAULT NULL,
  `mortgage_owed` int(11) NOT NULL DEFAULT 0,
  `last_repayment` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `arrests_list`
--

CREATE TABLE `arrests_list` (
  `id` int(11) NOT NULL,
  `json_data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `baninfo`
--

CREATE TABLE `baninfo` (
  `id` int(11) NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `playername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `baninfo`
--

INSERT INTO `baninfo` (`id`, `license`, `identifier`, `liveid`, `xblid`, `discord`, `playerip`, `playername`) VALUES
(1, 'license:3425d5ce2164c011a6e02f86284b8b3a0f203841', 'steam:11000013d4486db', NULL, NULL, 'discord:580257498196344833', 'ip:154.85.76.189', 'Ahsan Qureshi'),
(2, 'license:6f4147c7a60c893c6d467b55dd54cc98be4c5ee7', 'steam:110000142bdf425', 'live:1899947230901117', NULL, 'discord:581563125241741320', 'ip:116.74.23.255', 'Tiger'),
(3, 'license:8a5b23ff06c424d19219403c140537d4f94b55c0', 'steam:1100001468829f9', 'live:914797971471288', 'xbl:2535439412443356', NULL, 'ip:39.34.186.75', 'Baasha Bhai'),
(4, 'license:b24e47156bd258fb619a3e8375041a687320fb35', 'steam:110000135fcc80a', 'live:1055521727643251', NULL, 'discord:859125081681559563', 'ip:157.40.152.155', 'Devxd5'),
(5, 'license:b4ffc760a1be669dda7a2d2111afa000318c3129', 'steam:11000014be047a9', NULL, NULL, 'discord:920735340996751370', 'ip:45.116.232.32', 'ZAID KHAN'),
(6, 'license:2043218613ff17bfa1c902675653e955040330cd', 'steam:11000014aaf8ab6', NULL, NULL, NULL, 'ip:191.254.118.116', '_vitxzz_'),
(7, 'license:d570fee9247df8f6d95a7b0840d9f6b1ddc92fa3', 'steam:11000010ceae59d', NULL, NULL, 'discord:758413634366865469', 'ip:219.91.220.107', 'shadow'),
(8, 'license:23304b103b88a4f1ecd7dc1e52abdc103d0e170b', 'steam:110000140dcae16', NULL, NULL, 'discord:571541042319327254', 'ip:42.201.146.14', 'STARRR'),
(9, 'license:0f0c0de296b2b4e0e0316e55b10bd962eb5cd2ec', 'steam:11000014420dda9', NULL, NULL, 'discord:914251855259902004', 'ip:73.55.209.215', 'SouthParkReggie35'),
(10, 'license:02a1b5f1efd153406308475bc3414fd53a0c8d66', 'steam:11000014bb77bcd', NULL, NULL, 'discord:922203720077418536', 'ip:62.74.10.181', 'GURU'),
(11, 'license:7555f1aa61b3ba695a5cc31ed10a6f8acf3dedf3', 'steam:11000011cc0ec0b', NULL, NULL, 'discord:560787466181672967', 'ip:175.107.211.19', '1'),
(12, 'license:cf5425e5f7d655f0897102ea306c54521c82f41c', 'steam:11000014ef9bcc2', NULL, NULL, 'discord:962598475827142656', 'ip:111.119.187.10', 'MeMe Wala'),
(13, 'license:c920806f43006faf9e0949d91451e07eccc45afa', 'steam:1100001468829f9', 'live:914797971471288', 'xbl:2535439412443356', NULL, 'ip:59.103.216.124', 'Baasha Bhai'),
(14, 'license:5a949dce5ced70d841e560fd7de9c92a6717c7fe', 'steam:11000014adb8632', 'live:844426220320865', 'xbl:2535472316969947', 'discord:881701041744257024', 'ip:103.162.136.155', '????MŪR§ĤÃÐ????'),
(15, 'license:c85f5d49682cedf245d1bcdb1682295eb820f74d', 'steam:11000014abc7198', 'live:914799143712263', NULL, 'discord:898448245418778665', 'ip:104.182.63.160', 'Spyder'),
(16, 'license:d88931c26fa2927e81f1d3bc5418a9142a480749', 'steam:11000011418b975', 'live:844427584386814', 'xbl:2533275031434972', 'discord:332187615640158208', 'ip:70.237.94.136', 'frmrocxs'),
(17, 'license:cd7500f5253be1e80de22954c5b3be3c994bee4b', 'steam:11000014d8c241b', 'live:844425135832191', 'xbl:2535456399889334', 'discord:473324463547482142', 'ip:174.63.161.196', 'NessaLove'),
(18, 'license:1a3bacb4852815007d6099020c98323cd9380f95', 'steam:1100001472bccb5', 'live:1055518614576529', 'xbl:2535411809285822', 'discord:737745401439977513', 'ip:104.11.200.29', 'Regina George'),
(19, 'license:f3d59f46198e359c520aa33f5a5823c741573540', 'steam:11000014de33ad2', NULL, NULL, 'discord:816707709700276324', 'ip:104.13.19.170', 'Pxrcxption'),
(20, 'license:ca518ebb5afa6d9709de50326f7113af50856ceb', 'steam:1100001464aa64b', 'live:1055518965891435', NULL, 'discord:680560144832266249', 'ip:76.107.225.7', 'PiMPsANiyAh'),
(21, 'license:f39a4d60b429e084941da588777fab40d6772680', 'steam:11000014b2e0811', 'live:1829581760001159', 'xbl:2535434805087854', 'discord:625313231396667402', 'ip:82.3.131.195', 'DK_Supra1994'),
(22, 'license:c2b138db574abb553c69ec02650683bef4cde8aa', 'steam:110000145d04c36', 'live:914801300646544', 'xbl:2535444339591947', 'discord:971530002015322173', 'ip:174.204.9.171', 'BealBaller88'),
(23, 'license:2d68821ec92ea7710a98e7d5cc3b3241ec2cbc9d', 'steam:11000013c9eb983', 'live:985156745230199', 'xbl:2533274932279622', 'discord:816398205448749107', 'ip:172.221.106.33', 'Sacredangel62'),
(24, 'license:f7bf634f5ac49111394b047cb31a377071129af7', 'steam:1100001424bdaac', 'live:1055519396003857', NULL, 'discord:852657660435497041', 'ip:137.59.222.27', 'MUZAMIL™'),
(25, 'license:43d03cdd6bbb829c2b949db212460241b1a4a299', 'steam:1100001419dbb7f', 'live:844424995696896', NULL, 'discord:695229208007409744', 'ip:39.62.42.24', 'KHan Bhai'),
(26, 'license:28264eeebd78c18eb36fab402b4494b2c36ff8d0', 'steam:11000014ad2648c', NULL, NULL, 'discord:928196842263576596', 'ip:103.20.0.77', 'Mr Ip'),
(27, 'license:bc076cdca80ba5421991ad5c63149a97c381ba8e', 'steam:11000013f7dc792', 'live:844428679140109', 'xbl:2535438194676235', 'discord:434338306856321024', 'ip:102.39.229.170', 'D R A C O'),
(28, 'license:77c236fe08f424aab5117dfff481f608a77f0755', 'steam:11000013508796f', 'live:1055519192168557', 'xbl:2535469852536880', NULL, 'ip:115.186.169.55', '〆H A N N A Nヅ'),
(29, 'license:91af6ec10c51ac4c2e3be83c48f071c48bb7360f', 'steam:110000140bed131', 'live:1055518904781108', 'xbl:2535453342808553', 'discord:710620389843402782', 'ip:41.0.58.142', 'Vollas01'),
(30, 'license:7c9e5d96becc1d3ec9789ab03bbcb8562ade0860', 'steam:11000014e54d683', NULL, NULL, 'discord:804418829065125909', 'ip:101.53.234.62', 'insominicbro'),
(31, 'license:06ffe9fd4b96749703191ff26534dd46a78a13e5', 'steam:11000013d9aecf5', 'live:914798204978382', 'xbl:2535461848578551', 'discord:660947597904838686', 'ip:197.184.175.229', 'Daxxx'),
(32, 'license:5c8726179cb14a49eb9d667aff101d90d78abc70', 'steam:11000013ff9a7a7', 'live:1688853465695394', NULL, 'discord:785853950179016745', 'ip:111.88.122.209', 'جنجوعہ'),
(33, 'license:06b1fb46f7014362ebac94323d989a85c8cb130e', 'steam:11000014a064e27', 'live:985154625828772', 'xbl:2535471345278140', 'discord:765256869861785611', 'ip:41.10.55.2', 'H A T A K E'),
(34, 'license:e23e3191d2fb4d931798505890fd8596bb176bd2', 'steam:110000144d7020e', 'live:1055518711019508', 'xbl:2535409864052797', 'discord:725267962315145326', 'ip:165.49.46.35', 'Mason'),
(35, 'license:0a42276300a24c7218da9c7f82dd389b3640a685', 'steam:11000014292f4b2', 'live:844425575244937', 'xbl:2535451333126580', 'discord:724278389250326612', 'ip:102.64.41.184', 'hencoerasmus5'),
(36, 'license:487a5d91a1e449874a3f238c0daa16daae404ee3', 'steam:1100001442255b5', 'live:1055521625724656', 'xbl:2535423991192980', 'discord:411914179964829697', 'ip:102.220.210.41', 'Obi-Wan_Chenobi'),
(37, 'license:d4b9acacaa2d366baa761b17fe2fe55dc6e01c1f', 'steam:1100001468a4d74', 'live:914797971471288', 'xbl:2535439412443356', 'discord:802113671778009100', 'ip:192.168.100.76', 'Baasha bhai');

-- --------------------------------------------------------

--
-- Table structure for table `banlist`
--

CREATE TABLE `banlist` (
  `license` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `expiration` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `banlisthistory`
--

CREATE TABLE `banlisthistory` (
  `id` int(11) NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` int(11) NOT NULL,
  `added` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `expiration` int(11) NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`id`, `identifier`, `sender`, `target_type`, `target`, `label`, `amount`) VALUES
(25, 'steam:1100001442255b5', 'steam:11000014292f4b2', 'society', 'society_police', 'Fine: Abuse of the horn', 30);

-- --------------------------------------------------------

--
-- Table structure for table `bolos_list`
--

CREATE TABLE `bolos_list` (
  `id` int(11) NOT NULL,
  `json_data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bought_houses`
--

CREATE TABLE `bought_houses` (
  `houseid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bought_houses`
--

INSERT INTO `bought_houses` (`houseid`) VALUES
(7),
(8),
(9),
(10),
(131),
(326);

-- --------------------------------------------------------

--
-- Table structure for table `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cardealer_vehicles`
--

INSERT INTO `cardealer_vehicles` (`id`, `vehicle`, `price`) VALUES
(1, 'AKUMA', 7500),
(2, 'alpha', 60000);

-- --------------------------------------------------------

--
-- Table structure for table `ccdrented_vehicles`
--

CREATE TABLE `ccdrented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ccdvehicles`
--

CREATE TABLE `ccdvehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ccdvehicles`
--

INSERT INTO `ccdvehicles` (`name`, `model`, `price`, `category`) VALUES
(' aston vantage', ' aston_vantage', 1500000, 'sport'),
('Cobra ne Spec', '19gt500', 1500000, 'sport'),
('Bugatti Chiron', '2017chiron', 3000000, 'hyper'),
('LIMO MERC', '2018s650p', 1100000, 'vip'),
('MERC 300', '300sel', 300000, 'vip'),
('370z Nissan', '370z', 1200000, 'sport'),
('Ferarri 488', '488nlargo', 2000000, 'hyper'),
('Honda', '500x', 750000, 'bikes'),
('Posche Spider', '918', 2500000, 'hyper'),
('a45 AMG', 'a45amg', 1200000, 'daily'),
('Audi A6', 'a6tfsi', 900000, 'daily'),
('LaFerrari', 'aperta', 4000000, 'hyper'),
('Audi r8', 'audi_r8', 2000000, 'sport'),
('Audi R8 +', 'audi_r8plus', 3000000, 'hyper'),
('Sudi Sq7', 'audi_sq7_2016', 1300000, 'suv'),
('Bugatti New Spec', 'bdivo', 5000000, 'hyper'),
('BMW', 'bmci', 800000, 'daily'),
('BMW i8', 'bmw_i8', 3500000, 'hyper'),
('MERC Brabus ', 'brabus850', 1600000, 'daily'),
('Suzuki', 'brezza18mg', 500000, 'suv'),
('BT INDIAN Sportscar', 'bt62r', 2200000, 'sport'),
('Bugatti SS', 'bugatti', 2500000, 'hyper'),
('Stingray', 'c8corvette', 2100000, 'sport'),
('Aston New Spec', 'caliburn', 4000000, 'vip'),
('Crysler SUV', 'cesc21', 750000, 'suv'),
('AMG 53 ', 'cls53', 1200000, 'daily'),
('Corvette c7', 'cor_c7', 1200000, 'sport'),
('Hoonigan', 'cosworth', 800000, 'offroad'),
('RR Dawn ', 'dawn', 3000000, 'vip'),
('JEEP DEMONHAWK', 'demonhawk', 950000, 'suv'),
('Dodge Hellcat', 'dodge_hellcat', 1500000, 'sport'),
('AMG e63', 'e63amg', 1200000, 'daily'),
('CHEF Camero', 'exor', 1000000, 'sport'),
('Ford Explorer', 'explorer20', 800000, 'suv'),
('nEW nsx', 'filthynsx', 600000, 'daily'),
('Toyota?JEEP', 'fj40', 600000, 'offroad'),
('Ford GT OLD', 'ford_gt_2005', 1300000, 'sport'),
('FORD GT NEW', 'ford_gt_2017', 1800000, 'hyper'),
('Jaguar ', 'fpacehm', 900000, 'suv'),
('Gwaggon ', 'g65amg', 1500000, 'offroad'),
('Honda', 'goldwing', 1000000, 'bikes'),
('Golf GTI	', 'golfgti	', 500000, 'daily'),
('Mazarati', 'granlb', 1500000, 'sport'),
('Suziki GSX R ', 'gsxr', 1500000, 'bikes'),
('Porshe GT3RS', 'gt3rs', 1900000, 'sport'),
('GT63 Merc', 'gt63', 900000, 'daily'),
('GTR Merc', 'gtrc', 2000000, 'sport'),
('Harley', 'hdiron883', 200000, 'bikes'),
('Lambo Hurucan', 'hevo', 3000000, 'hyper'),
('Hilux', 'hilux', 1000000, 'offroad'),
('Honda Civic', 'honda_civic', 2000000, 'sport'),
('Harley Long ', 'hvrod2', 600000, 'bikes'),
('Ferrari 458', 'italia458', 2000000, 'hyper'),
('JEEP', 'jeepg', 800000, 'offroad'),
('Koneg Jessco', 'jes', 5000000, 'hyper'),
('Keenblock Drift', 'keenblock', 1000000, 'sport'),
('Koenigsegg AgeraR', 'KoenigseggAgeraR', 4000000, 'hyper'),
('Lambo Aventador', 'lambo_aventador', 3000000, 'hyper'),
('EVO Lancer', 'lanex400', 1000000, 'daily'),
('R35 Wide body ', 'lbwk35', 3000000, 'sport'),
('Lexus CL500', 'lexus_lc500', 2000000, 'sport'),
('Lambo Hyura', 'lp610', 3000000, 'hyper'),
('Lambo Wrap ', 'lp700r', 2000000, 'hyper'),
('BMW M2', 'm235', 1000000, 'sport'),
('BMW M4', 'm4', 1000000, 'daily'),
('Electric Mustang', 'mache', 2000000, 'suv'),
('Merc Truck', 'mercxclass', 1200000, 'offroad'),
('MERC GL63', 'merc_gl63', 700000, 'suv'),
('MERC S500', 'merc_s500_2014', 500000, 'daily'),
('Tesla 3', 'model3', 2000000, 'daily'),
('Tesla S', 'models', 2200000, 'daily'),
('Tesla X', 'modelx', 2100000, 'daily'),
('Mazarati', 'mqgts', 700000, 'daily'),
('Mustang ', 'mst', 1500000, 'sport'),
('Merc Future', 'mvisiongt', 4000000, 'vip'),
('Nissan R35', 'nissan_gtr', 2000000, 'sport'),
('Porche Panamera', 'panamera17turbo	', 600000, 'daily'),
('Porshe Cyna', 'pcs18', 2000000, 'suv'),
('Crisler SUV', 'pressuv', 500000, 'suv'),
('RR Wraith', 'p_wraith', 2500000, 'vip'),
('Audi Q8', 'q820', 2000000, 'suv'),
('Dodge ', 'raid', 650000, 'offroad'),
('Ford Raptor', 'raptor150', 1500000, 'offroad'),
('LEXUS ', 'rcf', 300000, 'daily'),
('Tesla Roadster', 'roadster', 4000000, 'sport'),
('RR Phantom', 'rrphantom', 3000000, 'vip'),
('AUDI rs5', 'rs5', 400000, 'daily'),
('Audi RS5', 'rs6c8', 800000, 'daily'),
('Harley', 'rudiharley', 500000, 'bikes'),
('RX7 ', 'rx7cwest', 2000000, 'sport'),
('AMG s65', 's65amg ', 500000, 'daily'),
('Saltflat', 'saltflat', 500000, 'bikes'),
('Lambo Veneno', 'sc18', 5000000, 'vip'),
('Senna', 'senna', 4000000, 'hyper'),
('RR Silver', 'silver67', 1000000, 'vip'),
('R34', 'skyline', 2500000, 'sport'),
('Jeep 6x6', 'strad6x6', 1500000, 'offroad'),
('Supra Mk5', 'supra19', 2500000, 'sport'),
('Supra MK4', 'supra2', 2000000, 'sport'),
('Land Rover', 'svr14', 1500000, 'suv'),
('ThunderBrird', 'tbird64 ', 800000, 'vip'),
('Lambo Terzo', 'terzo', 5000000, 'hyper'),
('MX ', 'tmsm', 500000, 'bikes'),
('Combie Merc', 'v250', 600000, 'suv'),
('v8 VXR', 'v8', 1000000, 'suv'),
('FORD 6x6 ', 'velociraptor', 2000000, 'offroad'),
('Volvo SUV', 'volvoxc90', 500000, 'suv'),
('Bronco ', 'wildtrak', 1500000, 'offroad'),
('Lambo Zentenario', 'zentenario', 3000000, 'hyper'),
('Kawasaki', 'zx10', 250000, 'bikes');

-- --------------------------------------------------------

--
-- Table structure for table `ccdvehicle_categories`
--

CREATE TABLE `ccdvehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ccdvehicle_categories`
--

INSERT INTO `ccdvehicle_categories` (`name`, `label`) VALUES
('bikes', 'Bikes'),
('daily', 'Daily'),
('hyper', 'Hyper'),
('offroad', 'Off Road'),
('sport', 'Sport'),
('suv', 'SUV'),
('vip', 'VIP');

-- --------------------------------------------------------

--
-- Table structure for table `ccdvehicle_sold`
--

CREATE TABLE `ccdvehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ccdvehicle_sold`
--

INSERT INTO `ccdvehicle_sold` (`client`, `model`, `plate`, `soldby`, `date`) VALUES
('Brandon Myburgh', 'gt3rs', 'BJG 276', 'Nathan Cordillo Carvahlo', '2022-07-06 19:02'),
('Gregory House', '500x', 'BPO 202', 'Nathan Cordillo  Carvahlo', '2022-07-03 15:12'),
('Al Capone', 'bmw_m8_2', 'CRS 094', 'Nathan Cordillo Carvahlo', '2022-07-05 20:24'),
('MUZAMIL™', 'sclkuz', 'CXJ 427', 'LeViS171_', '2022-06-21 13:18'),
('MUZAMIL™', 'lamboavj', 'DEG 801', 'LeViS171_', '2022-06-21 13:20'),
('Chris Nw', '370z', 'DPV 244', 'Nathan Cordillo  Carvahlo', '2022-07-03 14:18'),
('Chris Nw', '370z', 'EJK 728', 'Nathan Cordillo  Carvahlo', '2022-07-03 14:15'),
('Chris Nw', '370z', 'EMV 730', 'Nathan Cordillo  Carvahlo', '2022-07-03 14:15'),
('Chris Nw', 'hevo', 'GNG 896', 'Nathan Cordillo  Carvahlo', '2022-07-04 08:27'),
('Chris Nw', '500x', 'IJW 084', 'Nathan Cordillo  Carvahlo', '2022-07-03 14:31'),
('frmrocxs', 'lamboavj', 'JGU 752', 'Spyder', '2022-06-15 22:01'),
('Chris Nw', '370z', 'JUH 407', 'Nathan Cordillo  Carvahlo', '2022-07-03 14:15'),
('Brandon Myburgh', 'lbwk35', 'JZN 946', 'Nathan Cordillo Carvahlo', '2022-07-06 19:23'),
('Chris Nw', 'fj40', 'KSW 790', 'Nathan Cordillo  Carvahlo', '2022-07-03 19:20'),
('Chris Nw', '370z', 'MXM 294', 'Nathan Cordillo  Carvahlo', '2022-07-03 14:15'),
('Chris Bruwer', 'skyline', 'NJO 969', 'Nathan Cordillo Carvahlo', '2022-07-04 14:44'),
('Chris Nw', '2018s650p', 'OOU 546', 'Nathan Cordillo  Carvahlo', '2022-07-03 19:47'),
('Chris Nw', '370z', 'OUT 550', 'Nathan Cordillo  Carvahlo', '2022-07-03 14:15'),
('Chris Nw', '370z', 'QDG 782', 'Nathan Cordillo  Carvahlo', '2022-07-03 14:15'),
('Chris Nw', 'lp610', 'QGU 273', 'Nathan Cordillo  Carvahlo', '2022-07-04 07:54'),
('Chris Bruwer', 'm235', 'QOE 061', 'Nathan Cordillo Carvahlo', '2022-07-04 10:45'),
('Chris Nw', '370z', 'QVY 753', 'Nathan Cordillo  Carvahlo', '2022-07-03 14:16'),
('Brandon Myburgh', '488nlargo', 'RHL 100', 'Nathan Cordillo Carvahlo', '2022-07-07 20:01'),
('MUZAMIL™', 'lamboavj', 'RUI 095', 'LeViS171_', '2022-06-21 13:20'),
('Chris Nw', '370z', 'VAW 434', 'Nathan Cordillo  Carvahlo', '2022-07-03 14:22'),
('Chris Bruwer', 'silver67', 'VBL 901', 'Nathan Cordillo Carvahlo', '2022-07-04 18:24'),
('Chris Nw', '370z', 'VHK 030', 'Nathan Cordillo  Carvahlo', '2022-07-03 14:15'),
('Chris Nw', '370z', 'VQQ 556', 'Nathan Cordillo  Carvahlo', '2022-07-03 14:15'),
('Chris Nw', '370z', 'VZD 717', 'Nathan Cordillo  Carvahlo', '2022-07-03 14:15'),
('sher', 'lxss', 'YFD 509', 'Spyder', '2022-06-15 10:46'),
('Chris Nw', '370z', 'YOT 795', 'Nathan Cordillo  Carvahlo', '2022-07-03 14:15'),
('Chris Nw', '370z', 'ZGM 988', 'Nathan Cordillo  Carvahlo', '2022-07-03 14:15');

-- --------------------------------------------------------

--
-- Table structure for table `ccd_vehicles`
--

CREATE TABLE `ccd_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cd_dispatch`
--

CREATE TABLE `cd_dispatch` (
  `identifier` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `callsign` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cd_dispatch`
--

INSERT INTO `cd_dispatch` (`identifier`, `callsign`) VALUES
('steam:11000014292f4b2', 'Alpha 1'),
('steam:11000013f7dc792', '');

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'f',
  `height` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`identifier`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`) VALUES
('steam:110000142bdf425', 'dhgdf', 'dhdh', '01/01/2000', 'H', '180'),
('steam:11000014abc7198', 'Spyder', 'Webb', '08281998', 'm', '200'),
('steam:110000142bdf425', 'jjdv', 'hzhdh', '01/01/2000', 'H', '180'),
('steam:110000142bdf425', 'Walter', 'White', '01/01/2000', 'M', '180'),
('steam:11000014abc7198', 'Spyder', 'Webb', '08281998', 'm', '200'),
('steam:11000011418b975', 'Onyx', 'Roland', '07/08/1998', 'F', '165.1'),
('steam:1100001468829f9', 'Baasha ', 'Bhai', '04091991', 'M', '200'),
('steam:11000014abc7198', 'Martin', 'Riggs', '05122001', 'm', '200'),
('steam:110000145d04c36', 'Braxton', 'Lynch', '02/18/1990', 'M', '145'),
('steam:11000014de33ad2', 'Christian', 'LakeWood', '08/16/1997', 'M', '185'),
('steam:110000145d04c36', 'David ', 'Brandson', '02/19/1980', 'm', '145'),
('steam:11000014b2e0811', 'Diago ', 'Tyson', '16/20/2000', 'm', '200'),
('steam:11000013c9eb983', 'Raymond', 'Reed', '07071999', 'm', '195'),
('steam:110000142bdf425', 'sgsgd', 'gsGg', '01/01/2000', 'M', '180'),
('steam:1100001468829f9', 'Baasha', 'Bhai', '09041991', 'M', '200'),
('steam:1100001468829f9', 'Baasha', 'Bhai', '09041991', 'M', '200'),
('steam:1100001468829f9', 'Baasha', 'Bhai', '09041991', 'm', '200'),
('steam:11000013b33f973', 'Levis17', '1', '1-9-2005', 'M', '195'),
('steam:1100001424bdaac', 'Muzamil', 'Hussain', '2 2 2000', 'm', '150'),
('steam:1100001419dbb7f', 'Zarak', 'Khan', '05/01/1990', 'M', '180'),
('steam:11000014ad2648c', 'Mr', 'Ip', '24/11/1999', 'm', '200'),
('steam:11000013f7dc792', 'Chris', 'B', '09 09 2002', 'M', '200'),
('steam:11000013f7dc792', 'piet', 'p', '09072002', 'M', '200'),
('steam:110000140bed131', 'Ryno', 'V', '23/12/2000', 'm', '200'),
('steam:11000014e54d683', 'Inam', 'Shykh', '11/11/2000', 'm', '190'),
('steam:11000013d9aecf5', 'Nathan', 'Nell', '29/09/2002', 'M', '170'),
('steam:11000013ff9a7a7', 'Abu', 'Aromeo', '111111', 'm', '69'),
('steam:11000014a064e27', 'Brandon', 'Myburgh', '11 11 2002', 'm', '177'),
('steam:11000014bb77bcd', 'GURU', 'BHAI', '03/06/2001', 'M', '175'),
('steam:11000013f7dc792', 'Chris', 'B', '09072002', 'f', '200'),
('steam:110000142bdf425', 'Walter', 'White', '01/01/2000', 'M', '180');

-- --------------------------------------------------------

--
-- Table structure for table `communityservice`
--

CREATE TABLE `communityservice` (
  `identifier` varchar(100) NOT NULL,
  `actions_remaining` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `datastore`
--

CREATE TABLE `datastore` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datastore`
--

INSERT INTO `datastore` (`id`, `name`, `label`, `shared`) VALUES
(1, 'user_ears', 'Ears', 0),
(2, 'user_glasses', 'Glasses', 0),
(3, 'user_helmet', 'Helmet', 0),
(4, 'user_mask', 'Mask', 0),
(7, 'society_police', 'Police', 1),
(9, 'vault', 'Vault', 0),
(10, 'property', 'Property', 0),
(11, 'society_ambulance', 'EMS', 1),
(13, 'property', 'Property', 0),
(16, 'user_ears', 'Ears', 0),
(17, 'user_glasses', 'Glasses', 0),
(18, 'user_helmet', 'Helmet', 0),
(19, 'user_mask', 'Mask', 0),
(20, 'society_cardealer', 'Cardealer', 0),
(26, 'society_mafia', 'Mafia', 1),
(27, 'property', 'Property', 0),
(28, 'housing', 'Housing', 0),
(29, 'property', 'Property', 0),
(30, 'society_fsgang', 'fsgang', 1),
(31, 'society_fueler', 'Fueler', 1),
(32, 'society_tailor', 'Tailor', 1),
(33, 'society_mechanic', 'Mechanic', 1),
(34, 'society_unemployed', 'Unemployed', 1),
(35, 'society_lumberjack', 'Lumberjack', 1),
(36, 'society_slaughterer', 'Butcher', 1),
(40, 'society_resto', 'Polo', 1),
(41, 'society_fastfood', 'FastFoody', 1),
(42, 'society_McDonalds', 'McDonalds Employee', 1),
(43, 'society_offdutyfastfood', 'Off-Duty', 1),
(44, 'society_unicorn', 'Unicorn', 1),
(47, 'society_boulangerie', 'Boulangerie', 1),
(48, 'society_brasseur', 'Brasseur', 1),
(49, 'society_orpailleurs', 'Orpailleurs', 1),
(50, 'society_weedjob', 'weedjob', 1),
(51, 'society_unicorn', 'Vanilla unicorn', 1),
(52, 'society_unicorn', 'Vanilla unicorn', 1),
(53, 'society_unicorn', 'Vanilla unicorn', 1),
(54, 'society_weed', 'weedjob', 1),
(55, 'society_kfc', 'KFC', 1),
(56, 'vault', 'Vault', 0);

-- --------------------------------------------------------

--
-- Table structure for table `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(728, 'society_police', NULL, '{\"weapons\":[{\"name\":\"WEAPON_SPECIALCARBINE\",\"count\":1},{\"name\":\"WEAPON_ADVANCEDRIFLE\",\"count\":0}]}'),
(730, 'society_ambulance', NULL, '{}'),
(731, 'society_mafia', NULL, '{}'),
(732, 'user_ears', 'Char1steam:11000013d4486db', '{}'),
(733, 'user_helmet', 'Char1steam:11000013d4486db', '{}'),
(734, 'user_mask', 'Char1steam:11000013d4486db', '{}'),
(735, 'user_glasses', 'Char1steam:11000013d4486db', '{}'),
(736, 'vault', 'Char1steam:11000013d4486db', '{}'),
(737, 'society_cardealer', 'Char1steam:11000013d4486db', '{}'),
(738, 'property', 'Char1steam:11000013d4486db', '{}'),
(746, 'user_ears', 'Char1steam:1100001468829f9', '{}'),
(747, 'user_glasses', 'Char1steam:1100001468829f9', '{}'),
(748, 'user_helmet', 'Char1steam:1100001468829f9', '{}'),
(749, 'user_mask', 'Char1steam:1100001468829f9', '{}'),
(750, 'vault', 'Char1steam:1100001468829f9', '{}'),
(751, 'property', 'Char1steam:1100001468829f9', '{\"dressing\":[{\"label\":\"sdfg\",\"skin\":{\"tshirt_2\":0,\"moles_2\":0,\"eyebrows_3\":20,\"bproof_1\":0,\"jaw_1\":0,\"beard_3\":61,\"watches_2\":-1,\"bracelets_1\":-1,\"glasses_2\":5,\"nose_1\":0,\"torso_1\":275,\"cheeks_2\":0,\"nose_4\":0,\"blemishes_1\":0,\"makeup_2\":0,\"helmet_2\":-1,\"pants_1\":31,\"blemishes_2\":0,\"mask_2\":0,\"mask_1\":0,\"jaw_2\":0,\"cheeks_3\":0,\"chain_1\":0,\"lipstick_3\":32,\"bodyb_4\":0,\"bags_1\":0,\"eyebrows_4\":9,\"eye_squint\":0,\"helmet_1\":2,\"beard_2\":0,\"eyebrows_6\":0,\"dad\":0,\"eyebrows_5\":0,\"bracelets_2\":0,\"bodyb_1\":-1,\"shoes_1\":37,\"arms_2\":0,\"hair_2\":5,\"glasses_1\":5,\"sex\":0,\"shoes_2\":0,\"blush_1\":0,\"chin_4\":0,\"blush_3\":\"2\",\"decals_2\":0,\"nose_2\":0,\"nose_5\":0,\"eyebrows_2\":10,\"ears_2\":-1,\"age_2\":0,\"chin_2\":0,\"eye_color\":0,\"bodyb_2\":0,\"sun_1\":0,\"makeup_4\":0,\"lipstick_1\":0,\"bproof_2\":0,\"moles_1\":0,\"mom\":21,\"makeup_3\":0,\"nose_3\":0,\"neck_thickness\":0,\"sun_2\":0,\"blush_2\":0,\"bags_2\":0,\"bodyb_3\":-1,\"chest_2\":0,\"skin_md_weight\":50,\"watches_1\":-1,\"hair_color_1\":34,\"lipstick_2\":0,\"chest_1\":0,\"eyebrows_1\":7,\"chain_2\":0,\"nose_6\":0,\"chin_1\":0,\"beard_4\":0,\"complexion_1\":0,\"complexion_2\":0,\"decals_1\":0,\"tshirt_1\":15,\"torso_2\":6,\"pants_2\":4,\"arms\":0,\"ears_1\":-1,\"makeup_1\":0,\"chest_3\":0,\"lipstick_4\":0,\"cheeks_1\":0,\"chin_3\":0,\"face_md_weight\":50,\"beard_1\":0,\"hair_1\":10,\"age_1\":0,\"lip_thickness\":0,\"hair_color_2\":8}},{\"label\":\"new\",\"skin\":{\"tshirt_2\":6,\"moles_2\":0,\"eyebrows_3\":0,\"bproof_1\":0,\"jaw_1\":0,\"beard_3\":61,\"watches_2\":-1,\"bracelets_1\":-1,\"glasses_2\":0,\"nose_1\":0,\"torso_1\":11,\"cheeks_2\":0,\"nose_4\":0,\"blemishes_1\":0,\"makeup_2\":0,\"helmet_2\":2,\"pants_1\":10,\"blemishes_2\":0,\"sex\":0,\"mask_1\":0,\"lipstick_1\":0,\"cheeks_3\":0,\"chain_1\":0,\"lipstick_3\":32,\"bodyb_4\":0,\"bags_1\":0,\"eyebrows_4\":0,\"eye_squint\":0,\"helmet_1\":7,\"beard_2\":0,\"eyebrows_6\":0,\"dad\":0,\"eyebrows_5\":0,\"bracelets_2\":0,\"makeup_3\":0,\"shoes_1\":10,\"arms_2\":0,\"hair_2\":0,\"glasses_1\":17,\"jaw_2\":0,\"shoes_2\":0,\"blush_1\":0,\"blush_2\":0,\"mask_2\":0,\"blush_3\":\"2\",\"pants_2\":0,\"eyebrows_1\":0,\"cheeks_1\":0,\"makeup_1\":0,\"decals_2\":0,\"chin_2\":0,\"eye_color\":0,\"bodyb_2\":0,\"sun_1\":0,\"makeup_4\":0,\"nose_2\":0,\"bproof_2\":0,\"moles_1\":0,\"mom\":21,\"ears_2\":-1,\"nose_3\":0,\"age_2\":0,\"sun_2\":0,\"complexion_2\":0,\"neck_thickness\":0,\"bodyb_3\":-1,\"chest_2\":0,\"skin_md_weight\":50,\"watches_1\":-1,\"hair_color_1\":0,\"lipstick_4\":0,\"bags_2\":0,\"chain_2\":0,\"lipstick_2\":0,\"nose_6\":0,\"chin_1\":0,\"beard_4\":0,\"complexion_1\":0,\"age_1\":0,\"decals_1\":1,\"bodyb_1\":-1,\"torso_2\":1,\"tshirt_1\":7,\"arms\":0,\"eyebrows_2\":10,\"nose_5\":0,\"chest_3\":0,\"chest_1\":0,\"chin_4\":0,\"chin_3\":0,\"ears_1\":-1,\"beard_1\":0,\"hair_1\":0,\"face_md_weight\":50,\"lip_thickness\":0,\"hair_color_2\":0}}]}'),
(752, 'society_cardealer', 'Char1steam:1100001468829f9', '{}'),
(754, 'housing', 'Char1steam:1100001468829f9', '{}'),
(755, 'user_ears', 'steam:110000135fcc80a', '{}'),
(756, 'user_glasses', 'steam:110000135fcc80a', '{}'),
(757, 'society_cardealer', 'steam:110000135fcc80a', '{}'),
(758, 'user_helmet', 'steam:110000135fcc80a', '{}'),
(759, 'housing', 'steam:110000135fcc80a', '{}'),
(760, 'property', 'steam:110000135fcc80a', '{}'),
(761, 'user_mask', 'steam:110000135fcc80a', '{}'),
(762, 'vault', 'steam:110000135fcc80a', '{}'),
(763, 'society_fsgang', NULL, '{}'),
(764, 'user_ears', 'steam:11000014be047a9', '{}'),
(765, 'user_mask', 'steam:11000014be047a9', '{}'),
(766, 'user_glasses', 'steam:11000014be047a9', '{}'),
(767, 'user_helmet', 'steam:11000014be047a9', '{}'),
(768, 'vault', 'steam:11000014be047a9', '{}'),
(769, 'property', 'steam:11000014be047a9', '{}'),
(770, 'society_cardealer', 'steam:11000014be047a9', '{}'),
(771, 'housing', 'steam:11000014be047a9', '{}'),
(772, 'user_ears', 'steam:11000014aaf8ab6', '{}'),
(773, 'user_glasses', 'steam:11000014aaf8ab6', '{}'),
(774, 'user_helmet', 'steam:11000014aaf8ab6', '{}'),
(775, 'user_mask', 'steam:11000014aaf8ab6', '{}'),
(776, 'vault', 'steam:11000014aaf8ab6', '{}'),
(777, 'property', 'steam:11000014aaf8ab6', '{}'),
(778, 'society_cardealer', 'steam:11000014aaf8ab6', '{}'),
(779, 'housing', 'steam:11000014aaf8ab6', '{}'),
(780, 'user_ears', 'steam:11000010ceae59d', '{}'),
(781, 'user_glasses', 'steam:11000010ceae59d', '{}'),
(782, 'user_helmet', 'steam:11000010ceae59d', '{}'),
(783, 'user_mask', 'steam:11000010ceae59d', '{}'),
(784, 'vault', 'steam:11000010ceae59d', '{}'),
(785, 'property', 'steam:11000010ceae59d', '{}'),
(786, 'society_cardealer', 'steam:11000010ceae59d', '{}'),
(787, 'housing', 'steam:11000010ceae59d', '{}'),
(788, 'user_ears', 'steam:110000140dcae16', '{}'),
(789, 'user_glasses', 'steam:110000140dcae16', '{}'),
(790, 'user_helmet', 'steam:110000140dcae16', '{}'),
(791, 'user_mask', 'steam:110000140dcae16', '{}'),
(792, 'property', 'steam:110000140dcae16', '{}'),
(793, 'vault', 'steam:110000140dcae16', '{}'),
(794, 'society_cardealer', 'steam:110000140dcae16', '{}'),
(795, 'housing', 'steam:110000140dcae16', '{}'),
(796, 'society_fueler', NULL, '{}'),
(797, 'society_tailor', NULL, '{}'),
(798, 'society_unemployed', NULL, '{}'),
(799, 'society_mechanic', NULL, '{}'),
(800, 'society_slaughterer', NULL, '{}'),
(801, 'society_lumberjack', NULL, '{}'),
(802, 'user_mask', 'steam:11000014420dda9', '{}'),
(803, 'user_helmet', 'steam:11000014420dda9', '{}'),
(804, 'user_glasses', 'steam:11000014420dda9', '{}'),
(805, 'user_ears', 'steam:11000014420dda9', '{}'),
(806, 'vault', 'steam:11000014420dda9', '{}'),
(807, 'property', 'steam:11000014420dda9', '{}'),
(808, 'housing', 'steam:11000014420dda9', '{}'),
(809, 'society_cardealer', 'steam:11000014420dda9', '{}'),
(812, 'society_resto', NULL, '{}'),
(813, 'society_McDonalds', NULL, '{}'),
(814, 'society_offdutyfastfood', NULL, '{}'),
(815, 'society_fastfood', NULL, '{}'),
(816, 'user_helmet', 'Char1steam:11000014bb77bcd', '{}'),
(817, 'user_mask', 'Char1steam:11000014bb77bcd', '{}'),
(818, 'vault', 'Char1steam:11000014bb77bcd', '{}'),
(819, 'user_ears', 'Char1steam:11000014bb77bcd', '{}'),
(820, 'society_cardealer', 'Char1steam:11000014bb77bcd', '{}'),
(821, 'housing', 'Char1steam:11000014bb77bcd', '{}'),
(822, 'property', 'Char1steam:11000014bb77bcd', '{}'),
(823, 'user_glasses', 'Char1steam:11000014bb77bcd', '{}'),
(824, 'user_mask', 'steam:11000011cc0ec0b', '{}'),
(825, 'user_helmet', 'steam:11000011cc0ec0b', '{}'),
(826, 'user_glasses', 'steam:11000011cc0ec0b', '{}'),
(827, 'user_ears', 'steam:11000011cc0ec0b', '{}'),
(828, 'society_cardealer', 'steam:11000011cc0ec0b', '{}'),
(829, 'vault', 'steam:11000011cc0ec0b', '{}'),
(830, 'property', 'steam:11000011cc0ec0b', '{}'),
(831, 'housing', 'steam:11000011cc0ec0b', '{}'),
(832, 'user_mask', 'steam:11000014ef9bcc2', '{}'),
(833, 'user_helmet', 'steam:11000014ef9bcc2', '{}'),
(834, 'user_glasses', 'steam:11000014ef9bcc2', '{}'),
(835, 'user_ears', 'steam:11000014ef9bcc2', '{}'),
(836, 'vault', 'steam:11000014ef9bcc2', '{}'),
(837, 'property', 'steam:11000014ef9bcc2', '{}'),
(838, 'society_cardealer', 'steam:11000014ef9bcc2', '{}'),
(839, 'housing', 'steam:11000014ef9bcc2', '{}'),
(840, 'user_helmet', 'steam:11000014adb8632', '{}'),
(841, 'user_glasses', 'steam:11000014adb8632', '{}'),
(842, 'housing', 'steam:11000014adb8632', '{}'),
(843, 'society_cardealer', 'steam:11000014adb8632', '{}'),
(844, 'property', 'steam:11000014adb8632', '{}'),
(845, 'vault', 'steam:11000014adb8632', '{}'),
(846, 'user_ears', 'steam:11000014adb8632', '{}'),
(847, 'user_mask', 'steam:11000014adb8632', '{}'),
(856, 'society_unicorn', NULL, '{}'),
(857, 'society_boulangerie', NULL, '{}'),
(858, 'society_brasseur', NULL, '{}'),
(859, 'society_orpailleurs', NULL, '{}'),
(876, 'user_helmet', 'Char1steam:1100001472bccb5', '{}'),
(877, 'user_glasses', 'Char1steam:1100001472bccb5', '{}'),
(878, 'user_ears', 'Char1steam:1100001472bccb5', '{}'),
(879, 'user_mask', 'Char1steam:1100001472bccb5', '{}'),
(880, 'society_cardealer', 'Char1steam:1100001472bccb5', '{}'),
(881, 'property', 'Char1steam:1100001472bccb5', '{}'),
(882, 'vault', 'Char1steam:1100001472bccb5', '{}'),
(883, 'housing', 'Char1steam:1100001472bccb5', '{}'),
(884, 'society_weedjob', NULL, '{}'),
(885, 'society_weed', NULL, '{}'),
(902, 'user_ears', 'Char1:110000142bdf425', '{}'),
(903, 'user_glasses', 'Char1:110000142bdf425', '{}'),
(904, 'user_helmet', 'Char1:110000142bdf425', '{}'),
(905, 'user_mask', 'Char1:110000142bdf425', '{}'),
(906, 'vault', 'Char1:110000142bdf425', '{}'),
(907, 'property', 'Char1:110000142bdf425', '{}'),
(908, 'housing', 'Char1:110000142bdf425', '{}'),
(909, 'society_cardealer', 'Char1:110000142bdf425', '{}'),
(942, 'user_ears', 'Char1steam:1100001468829f9', '{}'),
(943, 'user_helmet', 'Char1steam:1100001468829f9', '{}'),
(944, 'user_glasses', 'Char1steam:1100001468829f9', '{}'),
(945, 'user_mask', 'Char1steam:1100001468829f9', '{}'),
(946, 'vault', 'Char1steam:1100001468829f9', '{}'),
(947, 'property', 'Char1steam:1100001468829f9', '{}'),
(948, 'society_cardealer', 'Char1steam:1100001468829f9', '{}'),
(949, 'housing', 'Char1steam:1100001468829f9', '{}'),
(950, 'user_ears', 'steam:110000142bdf425', '{}'),
(951, 'user_mask', 'steam:110000142bdf425', '{}'),
(952, 'vault', 'steam:110000142bdf425', '{}'),
(953, 'user_glasses', 'steam:110000142bdf425', '{}'),
(954, 'user_helmet', 'steam:110000142bdf425', '{}'),
(955, 'property', 'steam:110000142bdf425', '{\"dressing\":[{\"skin\":{\"sun_1\":0,\"pants_2\":0,\"beard_3\":0,\"mask_1\":0,\"hair_1\":0,\"hair_color_2\":0,\"chest_2\":0,\"helmet_1\":-1,\"nose_6\":0,\"glasses_1\":0,\"bags_2\":0,\"eyebrows_4\":0,\"arms\":0,\"hair_color_1\":0,\"cheeks_2\":0,\"bodyb_1\":-1,\"ears_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"chin_2\":0,\"tshirt_2\":0,\"blemishes_1\":0,\"nose_4\":0,\"shoes_2\":0,\"bodyb_2\":0,\"beard_2\":0,\"mask_2\":0,\"hair_2\":0,\"torso_1\":3,\"mom\":21,\"lipstick_4\":0,\"moles_1\":0,\"eye_squint\":0,\"eyebrows_6\":0,\"ears_1\":-1,\"decals_2\":0,\"eyebrows_3\":0,\"chest_1\":0,\"chest_3\":0,\"helmet_2\":0,\"bracelets_1\":-1,\"bags_1\":0,\"bodyb_3\":-1,\"complexion_1\":0,\"shoes_1\":0,\"lip_thickness\":0,\"nose_3\":0,\"bproof_1\":0,\"age_1\":0,\"blush_1\":0,\"bracelets_2\":0,\"glasses_2\":0,\"blush_3\":0,\"dad\":0,\"neck_thickness\":0,\"beard_1\":0,\"makeup_4\":0,\"pants_1\":0,\"sun_2\":0,\"lipstick_2\":0,\"bodyb_4\":0,\"face_md_weight\":50,\"beard_4\":0,\"age_2\":0,\"cheeks_1\":0,\"chin_3\":0,\"sex\":0,\"cheeks_3\":0,\"moles_2\":0,\"skin_md_weight\":50,\"jaw_1\":0,\"nose_1\":0,\"chin_4\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_5\":0,\"chin_1\":0,\"tshirt_1\":2,\"decals_1\":0,\"lipstick_1\":0,\"makeup_3\":0,\"nose_5\":0,\"chain_2\":0,\"blemishes_2\":0,\"chain_1\":0,\"makeup_1\":0,\"watches_1\":-1,\"nose_2\":0,\"jaw_2\":0,\"blush_2\":0,\"torso_2\":0,\"arms_2\":0,\"complexion_2\":0,\"watches_2\":0,\"eye_color\":0},\"label\":\"1\"}]}'),
(956, 'society_cardealer', 'steam:110000142bdf425', '{}'),
(957, 'housing', 'steam:110000142bdf425', '{}'),
(958, 'user_ears', 'steam:11000014abc7198', '{}'),
(959, 'user_glasses', 'steam:11000014abc7198', '{}'),
(960, 'user_helmet', 'steam:11000014abc7198', '{}'),
(961, 'vault', 'steam:11000014abc7198', '{}'),
(962, 'user_mask', 'steam:11000014abc7198', '{}'),
(963, 'property', 'steam:11000014abc7198', '{\"dressing\":[{\"label\":\"first\",\"skin\":{\"beard_1\":0,\"ears_2\":0,\"sex\":0,\"hair_1\":0,\"hair_2\":0,\"bproof_2\":0,\"moles_2\":0,\"bproof_1\":0,\"cheeks_2\":0,\"pants_1\":0,\"arms_2\":0,\"lipstick_2\":0,\"beard_2\":0,\"complexion_1\":0,\"nose_6\":0,\"lipstick_1\":0,\"cheeks_1\":0,\"blemishes_1\":0,\"bracelets_1\":-1,\"jaw_2\":0,\"eye_color\":0,\"glasses_2\":0,\"arms\":0,\"bodyb_4\":0,\"hair_color_1\":0,\"headBlend\":{\"skinMix\":0.50999999046325,\"skinSecond\":29,\"shapeSecond\":29,\"skinThird\":0,\"shapeMix\":0.5,\"hasParent\":false,\"shapeThird\":0,\"shapeFirst\":31,\"skinFirst\":31,\"thirdMix\":0.0},\"decals_2\":0,\"chin_2\":0,\"headOverlay\":[{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":0,\"secondColour\":0,\"name\":\"Blemishes\"},{\"firstColour\":0,\"overlayOpacity\":1.0,\"overlayValue\":3,\"colourType\":1,\"secondColour\":0,\"name\":\"FacialHair\"},{\"firstColour\":0,\"overlayOpacity\":1.0,\"overlayValue\":29,\"colourType\":1,\"secondColour\":0,\"name\":\"Eyebrows\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":0,\"secondColour\":0,\"name\":\"Ageing\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":2,\"secondColour\":0,\"name\":\"Makeup\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":2,\"secondColour\":0,\"name\":\"Blush\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":0,\"secondColour\":0,\"name\":\"Complexion\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":0,\"secondColour\":0,\"name\":\"SunDamage\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":2,\"secondColour\":0,\"name\":\"Lipstick\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":0,\"secondColour\":0,\"name\":\"MolesFreckles\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":1,\"secondColour\":0,\"name\":\"ChestHair\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":0,\"secondColour\":0,\"name\":\"BodyBlemishes\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":0,\"secondColour\":0,\"name\":\"AddBodyBlemishes\"}],\"chain_1\":9,\"bodyb_3\":-1,\"blush_3\":0,\"mom\":21,\"chest_3\":0,\"helmet_2\":0,\"nose_3\":0,\"eyebrows_1\":0,\"lip_thickness\":0,\"blemishes_2\":0,\"eyebrows_5\":0,\"chin_4\":0,\"eyebrows_4\":0,\"bags_2\":0,\"shoes_1\":2,\"chest_1\":0,\"pants_2\":9,\"lipstick_4\":0,\"mask_2\":0,\"eyebrows_2\":0,\"torso_2\":2,\"chin_3\":0,\"nose_1\":0,\"sun_1\":0,\"age_1\":0,\"torso_1\":12,\"props\":{\"4\":[\"lhand\",-1],\"5\":[\"rhand\",-1],\"2\":[\"earrings\",14],\"3\":[\"mouth\",-1],\"0\":[\"hats\",29],\"1\":[\"glasses\",0],\"6\":[\"watches\",-1],\"7\":[\"braclets\",-1]},\"eyebrows_3\":0,\"chin_1\":0,\"sun_2\":0,\"drawtextures\":[[\"face\",0],[\"masks\",0],[\"hair\",0],[\"torsos\",0],[\"legs\",12],[\"bags\",0],[\"shoes\",3],[\"neck\",0],[\"undershirts\",0],[\"vest\",0],[\"decals\",0],[\"jackets\",7]],\"nose_4\":0,\"cheeks_3\":0,\"drawables\":{\"4\":[\"legs\",0],\"5\":[\"bags\",5],\"2\":[\"hair\",71],\"3\":[\"torsos\",0],\"8\":[\"undershirts\",15],\"9\":[\"vest\",-1],\"6\":[\"shoes\",21],\"7\":[\"neck\",94],\"0\":[\"face\",0],\"1\":[\"masks\",0],\"11\":[\"jackets\",13],\"10\":[\"decals\",-1]},\"bracelets_2\":0,\"lipstick_3\":0,\"complexion_2\":0,\"dad\":0,\"blush_2\":0,\"nose_5\":0,\"age_2\":0,\"beard_3\":0,\"eye_squint\":0,\"headStructure\":[0.0,0.0,0.0,0.0,0.0,0.20000000298023,0.0,0.0,0.0,0.0,0.0,0.0,0.30000001192092,0.0,0.0,0.0,0.20000000298023,0.0,0.5,0.0],\"chest_2\":0,\"ears_1\":-1,\"helmet_1\":-1,\"decals_1\":0,\"watches_1\":-1,\"hair_color_2\":0,\"blush_1\":0,\"face_md_weight\":50,\"makeup_3\":0,\"shoes_2\":0,\"beard_4\":0,\"glasses_1\":0,\"chain_2\":0,\"moles_1\":0,\"proptextures\":[[\"hats\",1],[\"glasses\",0],[\"earrings\",1],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",-1]],\"tshirt_1\":15,\"neck_thickness\":0,\"mask_1\":0,\"bodyb_1\":-1,\"hairColor\":[3,6],\"tshirt_2\":0,\"jaw_1\":0,\"watches_2\":0,\"nose_2\":0,\"makeup_4\":0,\"bags_1\":5,\"makeup_2\":0,\"bodyb_2\":0,\"model\":1885233650,\"eyebrows_6\":0,\"skin_md_weight\":50,\"makeup_1\":0}},{\"label\":\"red white 4\'s\",\"skin\":{\"beard_1\":3,\"ears_2\":0,\"sex\":0,\"hair_1\":71,\"hair_2\":0,\"chain_2\":0,\"moles_2\":0,\"bproof_1\":0,\"cheeks_2\":0,\"pants_1\":35,\"arms_2\":0,\"lipstick_2\":0,\"mom\":31,\"complexion_1\":0,\"nose_6\":0,\"makeup_2\":0,\"cheeks_1\":0,\"model\":1885233650,\"bracelets_1\":-1,\"jaw_2\":0,\"eye_color\":0,\"glasses_2\":0,\"arms\":0,\"bodyb_4\":0,\"hair_color_1\":3,\"headBlend\":{\"skinMix\":0.50999999046325,\"skinSecond\":29,\"shapeSecond\":29,\"skinThird\":0,\"shapeMix\":0.5,\"hasParent\":false,\"shapeThird\":0,\"shapeFirst\":31,\"skinFirst\":31,\"thirdMix\":0.0},\"decals_2\":0,\"chin_2\":0,\"headOverlay\":[{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":0,\"secondColour\":0,\"name\":\"Blemishes\"},{\"firstColour\":0,\"overlayOpacity\":1.0,\"overlayValue\":3,\"colourType\":1,\"secondColour\":0,\"name\":\"FacialHair\"},{\"firstColour\":0,\"overlayOpacity\":1.0,\"overlayValue\":29,\"colourType\":1,\"secondColour\":0,\"name\":\"Eyebrows\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":0,\"secondColour\":0,\"name\":\"Ageing\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":2,\"secondColour\":0,\"name\":\"Makeup\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":2,\"secondColour\":0,\"name\":\"Blush\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":0,\"secondColour\":0,\"name\":\"Complexion\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":0,\"secondColour\":0,\"name\":\"SunDamage\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":2,\"secondColour\":0,\"name\":\"Lipstick\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":0,\"secondColour\":0,\"name\":\"MolesFreckles\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":1,\"secondColour\":0,\"name\":\"ChestHair\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":0,\"secondColour\":0,\"name\":\"BodyBlemishes\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":0,\"secondColour\":0,\"name\":\"AddBodyBlemishes\"}],\"chain_1\":9,\"lipstick_1\":0,\"blush_3\":0,\"lip_thickness\":4,\"chest_3\":0,\"helmet_2\":0,\"nose_3\":0,\"eyebrows_1\":30,\"blemishes_2\":0,\"eyebrows_5\":0,\"shoes_1\":6,\"jaw_1\":0,\"eyebrows_4\":0,\"bags_2\":0,\"pants_2\":2,\"chest_1\":0,\"mask_2\":0,\"lipstick_4\":0,\"eyebrows_2\":10,\"torso_1\":90,\"bags_1\":5,\"chin_3\":0,\"nose_4\":0,\"sun_1\":0,\"age_1\":0,\"nose_1\":0,\"props\":{\"4\":[\"lhand\",-1],\"5\":[\"rhand\",-1],\"2\":[\"earrings\",14],\"3\":[\"mouth\",-1],\"0\":[\"hats\",29],\"1\":[\"glasses\",0],\"6\":[\"watches\",-1],\"7\":[\"braclets\",-1]},\"eyebrows_3\":2,\"chin_1\":0,\"sun_2\":0,\"drawtextures\":[[\"face\",0],[\"masks\",0],[\"hair\",0],[\"torsos\",0],[\"legs\",12],[\"bags\",0],[\"shoes\",3],[\"neck\",0],[\"undershirts\",0],[\"vest\",0],[\"decals\",0],[\"jackets\",7]],\"beard_2\":10,\"cheeks_3\":0,\"drawables\":{\"4\":[\"legs\",0],\"5\":[\"bags\",5],\"2\":[\"hair\",71],\"3\":[\"torsos\",0],\"8\":[\"undershirts\",15],\"9\":[\"vest\",-1],\"6\":[\"shoes\",21],\"7\":[\"neck\",94],\"0\":[\"face\",0],\"1\":[\"masks\",0],\"11\":[\"jackets\",13],\"10\":[\"decals\",-1]},\"complexion_2\":0,\"lipstick_3\":0,\"bracelets_2\":0,\"dad\":29,\"blush_2\":0,\"nose_5\":0,\"age_2\":0,\"eye_squint\":0,\"decals_1\":0,\"headStructure\":[0.0,0.0,0.0,0.0,0.0,0.20000000298023,0.0,0.0,0.0,0.0,0.0,0.0,0.30000001192092,0.0,0.0,0.0,0.20000000298023,0.0,0.5,0.0],\"chest_2\":0,\"ears_1\":-1,\"helmet_1\":-1,\"face_md_weight\":50,\"watches_1\":-1,\"hair_color_2\":4,\"makeup_3\":0,\"moles_1\":0,\"bodyb_3\":-1,\"shoes_2\":6,\"beard_4\":0,\"glasses_1\":0,\"bproof_2\":0,\"mask_1\":0,\"tshirt_2\":0,\"tshirt_1\":15,\"proptextures\":[[\"hats\",1],[\"glasses\",0],[\"earrings\",1],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",-1]],\"watches_2\":0,\"bodyb_1\":-1,\"hairColor\":[3,6],\"beard_3\":4,\"blemishes_1\":0,\"torso_2\":3,\"nose_2\":0,\"makeup_4\":0,\"skin_md_weight\":50,\"blush_1\":0,\"bodyb_2\":0,\"neck_thickness\":0,\"eyebrows_6\":0,\"chin_4\":6,\"makeup_1\":0}},{\"label\":\"blue rag 3\'s\",\"skin\":{\"mask_2\":0,\"ears_2\":0,\"sex\":0,\"hair_1\":71,\"hair_2\":0,\"bproof_2\":0,\"moles_2\":0,\"bproof_1\":0,\"cheeks_2\":0,\"pants_1\":39,\"arms_2\":0,\"lipstick_2\":0,\"beard_2\":10,\"complexion_1\":0,\"nose_6\":0,\"lipstick_1\":0,\"cheeks_1\":0,\"blemishes_1\":0,\"bracelets_1\":-1,\"jaw_2\":0,\"eye_color\":0,\"glasses_2\":0,\"arms\":0,\"bodyb_4\":0,\"hair_color_1\":3,\"headBlend\":{\"skinMix\":0.50999999046325,\"skinSecond\":29,\"shapeSecond\":29,\"skinThird\":0,\"shapeMix\":0.5,\"hasParent\":false,\"shapeThird\":0,\"shapeFirst\":31,\"skinFirst\":31,\"thirdMix\":0.0},\"decals_2\":0,\"chin_2\":0,\"headOverlay\":[{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":0,\"secondColour\":0,\"name\":\"Blemishes\"},{\"firstColour\":0,\"overlayOpacity\":1.0,\"overlayValue\":3,\"colourType\":1,\"secondColour\":0,\"name\":\"FacialHair\"},{\"firstColour\":0,\"overlayOpacity\":1.0,\"overlayValue\":29,\"colourType\":1,\"secondColour\":0,\"name\":\"Eyebrows\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":0,\"secondColour\":0,\"name\":\"Ageing\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":2,\"secondColour\":0,\"name\":\"Makeup\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":2,\"secondColour\":0,\"name\":\"Blush\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":0,\"secondColour\":0,\"name\":\"Complexion\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":0,\"secondColour\":0,\"name\":\"SunDamage\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":2,\"secondColour\":0,\"name\":\"Lipstick\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":0,\"secondColour\":0,\"name\":\"MolesFreckles\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":1,\"secondColour\":0,\"name\":\"ChestHair\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":0,\"secondColour\":0,\"name\":\"BodyBlemishes\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":0,\"secondColour\":0,\"name\":\"AddBodyBlemishes\"}],\"chain_1\":9,\"mom\":31,\"blush_3\":0,\"torso_1\":3,\"chest_3\":0,\"helmet_2\":2,\"nose_3\":0,\"eyebrows_1\":30,\"beard_3\":4,\"beard_1\":3,\"eyebrows_5\":0,\"chin_4\":6,\"eyebrows_4\":0,\"bags_2\":0,\"shoes_1\":13,\"chest_1\":0,\"pants_2\":1,\"bodyb_3\":-1,\"nose_4\":0,\"eye_squint\":0,\"bags_1\":5,\"chin_3\":0,\"blemishes_2\":0,\"sun_1\":0,\"age_1\":0,\"model\":1885233650,\"props\":{\"4\":[\"lhand\",-1],\"5\":[\"rhand\",-1],\"2\":[\"earrings\",14],\"3\":[\"mouth\",-1],\"0\":[\"hats\",29],\"1\":[\"glasses\",0],\"6\":[\"watches\",-1],\"7\":[\"braclets\",-1]},\"eyebrows_3\":2,\"chin_1\":0,\"headStructure\":[0.0,0.0,0.0,0.0,0.0,0.20000000298023,0.0,0.0,0.0,0.0,0.0,0.0,0.30000001192092,0.0,0.0,0.0,0.20000000298023,0.0,0.5,0.0],\"drawtextures\":[[\"face\",0],[\"masks\",0],[\"hair\",0],[\"torsos\",0],[\"legs\",12],[\"bags\",0],[\"shoes\",3],[\"neck\",0],[\"undershirts\",0],[\"vest\",0],[\"decals\",0],[\"jackets\",7]],\"complexion_2\":0,\"cheeks_3\":0,\"drawables\":{\"4\":[\"legs\",0],\"5\":[\"bags\",5],\"2\":[\"hair\",71],\"3\":[\"torsos\",0],\"8\":[\"undershirts\",15],\"9\":[\"vest\",-1],\"6\":[\"shoes\",21],\"7\":[\"neck\",94],\"0\":[\"face\",0],\"1\":[\"masks\",0],\"11\":[\"jackets\",13],\"10\":[\"decals\",-1]},\"bracelets_2\":0,\"lipstick_3\":0,\"chest_2\":0,\"dad\":29,\"blush_2\":0,\"nose_5\":0,\"age_2\":0,\"face_md_weight\":50,\"decals_1\":0,\"lip_thickness\":4,\"skin_md_weight\":50,\"ears_1\":-1,\"helmet_1\":29,\"sun_2\":0,\"watches_1\":-1,\"hair_color_2\":4,\"makeup_3\":0,\"lipstick_4\":0,\"chain_2\":0,\"shoes_2\":1,\"tshirt_2\":0,\"glasses_1\":0,\"jaw_1\":0,\"blush_1\":0,\"beard_4\":0,\"tshirt_1\":15,\"proptextures\":[[\"hats\",1],[\"glasses\",0],[\"earrings\",1],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",-1]],\"mask_1\":0,\"bodyb_1\":-1,\"hairColor\":[3,6],\"moles_1\":0,\"watches_2\":0,\"nose_1\":0,\"nose_2\":0,\"makeup_4\":0,\"torso_2\":1,\"eyebrows_2\":10,\"bodyb_2\":0,\"makeup_2\":0,\"eyebrows_6\":0,\"neck_thickness\":0,\"makeup_1\":0}},{\"label\":\"concords blue rad\",\"skin\":{\"beard_1\":3,\"ears_2\":0,\"sex\":0,\"hair_1\":71,\"hair_2\":0,\"bproof_2\":0,\"moles_2\":0,\"bproof_1\":0,\"cheeks_2\":0,\"pants_1\":53,\"arms_2\":0,\"lipstick_2\":0,\"mom\":31,\"complexion_1\":0,\"nose_6\":0,\"lipstick_1\":0,\"cheeks_1\":0,\"blemishes_1\":0,\"bracelets_1\":-1,\"jaw_2\":0,\"eye_color\":0,\"glasses_2\":0,\"arms\":0,\"bodyb_4\":0,\"hair_color_1\":3,\"headBlend\":{\"skinMix\":0.50999999046325,\"skinSecond\":29,\"shapeSecond\":29,\"skinThird\":0,\"shapeMix\":0.5,\"hasParent\":false,\"shapeThird\":0,\"shapeFirst\":31,\"skinFirst\":31,\"thirdMix\":0.0},\"decals_2\":0,\"chin_2\":0,\"headOverlay\":[{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":0,\"secondColour\":0,\"name\":\"Blemishes\"},{\"firstColour\":0,\"overlayOpacity\":1.0,\"overlayValue\":3,\"colourType\":1,\"secondColour\":0,\"name\":\"FacialHair\"},{\"firstColour\":0,\"overlayOpacity\":1.0,\"overlayValue\":29,\"colourType\":1,\"secondColour\":0,\"name\":\"Eyebrows\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":0,\"secondColour\":0,\"name\":\"Ageing\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":2,\"secondColour\":0,\"name\":\"Makeup\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":2,\"secondColour\":0,\"name\":\"Blush\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":0,\"secondColour\":0,\"name\":\"Complexion\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":0,\"secondColour\":0,\"name\":\"SunDamage\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":2,\"secondColour\":0,\"name\":\"Lipstick\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":0,\"secondColour\":0,\"name\":\"MolesFreckles\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":1,\"secondColour\":0,\"name\":\"ChestHair\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":0,\"secondColour\":0,\"name\":\"BodyBlemishes\"},{\"firstColour\":0,\"overlayOpacity\":0.0,\"overlayValue\":255,\"colourType\":0,\"secondColour\":0,\"name\":\"AddBodyBlemishes\"}],\"chain_1\":94,\"bodyb_3\":-1,\"blush_3\":0,\"mask_2\":0,\"chest_3\":0,\"helmet_2\":2,\"nose_3\":0,\"eyebrows_1\":30,\"nose_1\":0,\"lip_thickness\":4,\"lipstick_4\":0,\"jaw_1\":0,\"eyebrows_4\":0,\"bags_2\":0,\"beard_4\":0,\"chest_1\":0,\"moles_1\":0,\"complexion_2\":0,\"eyebrows_5\":0,\"shoes_1\":37,\"torso_2\":5,\"chin_3\":0,\"age_2\":0,\"sun_1\":0,\"age_1\":0,\"mask_1\":0,\"props\":{\"4\":[\"lhand\",-1],\"5\":[\"rhand\",-1],\"2\":[\"earrings\",14],\"3\":[\"mouth\",-1],\"0\":[\"hats\",29],\"1\":[\"glasses\",0],\"6\":[\"watches\",-1],\"7\":[\"braclets\",-1]},\"eyebrows_3\":2,\"chin_1\":0,\"headStructure\":[0.0,0.0,0.0,0.0,0.0,0.20000000298023,0.0,0.0,0.0,0.0,0.0,0.0,0.30000001192092,0.0,0.0,0.0,0.20000000298023,0.0,0.5,0.0],\"drawtextures\":[[\"face\",0],[\"masks\",0],[\"hair\",0],[\"torsos\",0],[\"legs\",12],[\"bags\",0],[\"shoes\",3],[\"neck\",0],[\"undershirts\",0],[\"vest\",0],[\"decals\",0],[\"jackets\",7]],\"chest_2\":0,\"cheeks_3\":0,\"drawables\":{\"4\":[\"legs\",0],\"5\":[\"bags\",5],\"2\":[\"hair\",71],\"3\":[\"torsos\",0],\"8\":[\"undershirts\",15],\"9\":[\"vest\",-1],\"6\":[\"shoes\",21],\"7\":[\"neck\",94],\"0\":[\"face\",0],\"1\":[\"masks\",0],\"11\":[\"jackets\",13],\"10\":[\"decals\",-1]},\"blush_2\":0,\"lipstick_3\":0,\"beard_3\":4,\"dad\":29,\"blemishes_2\":0,\"nose_5\":0,\"nose_4\":0,\"beard_2\":10,\"bracelets_2\":0,\"eyebrows_2\":10,\"skin_md_weight\":50,\"ears_1\":-1,\"helmet_1\":29,\"decals_1\":0,\"watches_1\":-1,\"hair_color_2\":4,\"sun_2\":0,\"face_md_weight\":50,\"makeup_3\":0,\"shoes_2\":4,\"tshirt_2\":0,\"glasses_1\":0,\"model\":1885233650,\"chain_2\":0,\"bags_1\":5,\"tshirt_1\":15,\"proptextures\":[[\"hats\",1],[\"glasses\",0],[\"earrings\",1],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",-1]],\"watches_2\":0,\"bodyb_1\":-1,\"pants_2\":1,\"makeup_2\":0,\"chin_4\":6,\"blush_1\":0,\"nose_2\":0,\"makeup_4\":0,\"neck_thickness\":0,\"eye_squint\":0,\"bodyb_2\":0,\"torso_1\":17,\"eyebrows_6\":0,\"hairColor\":[3,6],\"makeup_1\":0}}]}'),
(964, 'society_cardealer', 'steam:11000014abc7198', '{}'),
(965, 'housing', 'steam:11000014abc7198', '{}'),
(966, 'housing', 'steam:11000013d4486db', '{}'),
(967, 'user_ears', 'Char1steam:11000014d8c241b', '{}'),
(968, 'user_glasses', 'Char1steam:11000014d8c241b', '{}'),
(969, 'user_helmet', 'Char1steam:11000014d8c241b', '{}'),
(970, 'vault', 'Char1steam:11000014d8c241b', '{}'),
(971, 'user_mask', 'Char1steam:11000014d8c241b', '{}'),
(972, 'property', 'Char1steam:11000014d8c241b', '{}'),
(973, 'society_cardealer', 'Char1steam:11000014d8c241b', '{}'),
(974, 'housing', 'Char1steam:11000014d8c241b', '{}'),
(975, 'user_ears', 'steam:11000011418b975', '{}'),
(976, 'user_glasses', 'steam:11000011418b975', '{}'),
(977, 'user_mask', 'steam:11000011418b975', '{}'),
(978, 'user_helmet', 'steam:11000011418b975', '{}'),
(979, 'vault', 'steam:11000011418b975', '{}'),
(980, 'property', 'steam:11000011418b975', '{}'),
(981, 'society_cardealer', 'steam:11000011418b975', '{}'),
(982, 'housing', 'steam:11000011418b975', '{}'),
(991, 'user_glasses', 'steam:11000014b2e0811', '{}'),
(992, 'user_ears', 'steam:11000014b2e0811', '{}'),
(993, 'user_helmet', 'steam:11000014b2e0811', '{}'),
(994, 'user_mask', 'steam:11000014b2e0811', '{}'),
(995, 'vault', 'steam:11000014b2e0811', '{}'),
(996, 'property', 'steam:11000014b2e0811', '{}'),
(997, 'society_cardealer', 'steam:11000014b2e0811', '{}'),
(998, 'housing', 'steam:11000014b2e0811', '{}'),
(999, 'user_ears', 'steam:1100001472bccb5', '{}'),
(1000, 'user_helmet', 'steam:1100001472bccb5', '{}'),
(1001, 'vault', 'steam:1100001472bccb5', '{}'),
(1002, 'user_glasses', 'steam:1100001472bccb5', '{}'),
(1003, 'user_mask', 'steam:1100001472bccb5', '{}'),
(1004, 'property', 'steam:1100001472bccb5', '{}'),
(1005, 'society_cardealer', 'steam:1100001472bccb5', '{}'),
(1006, 'housing', 'steam:1100001472bccb5', '{}'),
(1007, 'user_ears', 'steam:11000014de33ad2', '{}'),
(1008, 'user_helmet', 'steam:11000014de33ad2', '{}'),
(1009, 'vault', 'steam:11000014de33ad2', '{}'),
(1010, 'user_mask', 'steam:11000014de33ad2', '{}'),
(1011, 'user_glasses', 'steam:11000014de33ad2', '{}'),
(1012, 'property', 'steam:11000014de33ad2', '{}'),
(1013, 'society_cardealer', 'steam:11000014de33ad2', '{}'),
(1014, 'housing', 'steam:11000014de33ad2', '{}'),
(1015, 'user_ears', 'steam:11000014d8c241b', '{}'),
(1016, 'user_glasses', 'steam:11000014d8c241b', '{}'),
(1017, 'user_helmet', 'steam:11000014d8c241b', '{}'),
(1018, 'user_mask', 'steam:11000014d8c241b', '{}'),
(1019, 'vault', 'steam:11000014d8c241b', '{}'),
(1020, 'property', 'steam:11000014d8c241b', '{}'),
(1021, 'society_cardealer', 'steam:11000014d8c241b', '{}'),
(1022, 'housing', 'steam:11000014d8c241b', '{}'),
(1023, 'user_glasses', 'steam:1100001468829f9', '{}'),
(1024, 'user_ears', 'steam:1100001468829f9', '{}'),
(1025, 'user_mask', 'steam:1100001468829f9', '{}'),
(1026, 'user_helmet', 'steam:1100001468829f9', '{}'),
(1027, 'vault', 'steam:1100001468829f9', '{}'),
(1028, 'property', 'steam:1100001468829f9', '{\"dressing\":[{\"label\":\"df\",\"skin\":{\"eyebrows_3\":0,\"makeup_2\":0,\"bodyb_2\":0,\"lip_thickness\":0,\"beard_1\":0,\"helmet_1\":-1,\"chest_2\":0,\"torso_1\":4,\"arms_2\":0,\"blemishes_2\":0,\"chin_2\":0,\"torso_2\":2,\"hair_1\":0,\"chain_2\":0,\"moles_2\":0,\"dad\":0,\"nose_2\":0,\"mask_2\":0,\"blush_2\":0,\"lipstick_2\":0,\"bags_1\":0,\"eyebrows_6\":0,\"chin_3\":0,\"cheeks_1\":0,\"blush_1\":0,\"eye_color\":0,\"chest_1\":0,\"beard_4\":0,\"bracelets_1\":-1,\"decals_2\":0,\"age_1\":0,\"bags_2\":0,\"bproof_1\":0,\"nose_6\":0,\"pants_1\":10,\"sun_2\":0,\"beard_2\":0,\"eyebrows_1\":0,\"cheeks_3\":0,\"bproof_2\":0,\"chest_3\":0,\"ears_2\":0,\"mom\":21,\"ears_1\":-1,\"watches_1\":-1,\"chain_1\":0,\"shoes_1\":0,\"sex\":0,\"beard_3\":0,\"cheeks_2\":0,\"mask_1\":0,\"complexion_2\":0,\"nose_4\":0,\"jaw_2\":0,\"moles_1\":0,\"arms\":4,\"sun_1\":0,\"tshirt_1\":11,\"hair_color_2\":0,\"skin_md_weight\":50,\"nose_3\":0,\"complexion_1\":0,\"neck_thickness\":0,\"tshirt_2\":4,\"jaw_1\":0,\"chin_1\":0,\"watches_2\":0,\"lipstick_1\":0,\"age_2\":0,\"makeup_1\":0,\"shoes_2\":0,\"eyebrows_2\":0,\"blush_3\":0,\"bracelets_2\":0,\"nose_5\":0,\"glasses_2\":0,\"makeup_3\":0,\"nose_1\":0,\"pants_2\":0,\"hair_color_1\":0,\"eyebrows_5\":0,\"decals_1\":0,\"glasses_1\":0,\"eyebrows_4\":0,\"bodyb_1\":-1,\"bodyb_4\":0,\"eye_squint\":0,\"lipstick_3\":0,\"chin_4\":0,\"face_md_weight\":50,\"helmet_2\":0,\"lipstick_4\":0,\"blemishes_1\":0,\"makeup_4\":0,\"bodyb_3\":-1,\"hair_2\":0}},{\"label\":\"white\",\"skin\":{\"eyebrows_3\":0,\"makeup_2\":0,\"bodyb_2\":0,\"lip_thickness\":0,\"beard_1\":0,\"hair_color_1\":0,\"chest_2\":0,\"torso_1\":29,\"arms_2\":0,\"blemishes_2\":0,\"chin_2\":0,\"torso_2\":5,\"hair_1\":0,\"chain_2\":0,\"moles_2\":0,\"dad\":0,\"nose_2\":0,\"mask_2\":0,\"blush_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"eyebrows_6\":0,\"chin_3\":0,\"cheeks_1\":0,\"blush_1\":0,\"eye_color\":0,\"chest_1\":0,\"mom\":21,\"bracelets_1\":-1,\"decals_2\":0,\"age_1\":0,\"makeup_1\":0,\"bproof_1\":0,\"nose_6\":0,\"pants_1\":20,\"sun_2\":0,\"beard_2\":0,\"beard_3\":0,\"cheeks_3\":0,\"bproof_2\":0,\"nose_1\":0,\"watches_1\":-1,\"helmet_1\":7,\"ears_1\":-1,\"sex\":0,\"chain_1\":0,\"shoes_1\":10,\"blemishes_1\":0,\"arms\":6,\"cheeks_2\":0,\"mask_1\":0,\"complexion_2\":0,\"nose_4\":0,\"jaw_2\":0,\"moles_1\":0,\"skin_md_weight\":50,\"sun_1\":0,\"tshirt_1\":32,\"hair_color_2\":0,\"lipstick_4\":0,\"nose_3\":0,\"complexion_1\":0,\"lipstick_3\":0,\"tshirt_2\":2,\"glasses_1\":5,\"chin_1\":0,\"watches_2\":0,\"nose_5\":0,\"age_2\":0,\"beard_4\":0,\"shoes_2\":7,\"eyebrows_2\":0,\"blush_3\":0,\"bracelets_2\":0,\"jaw_1\":0,\"bags_2\":0,\"makeup_3\":0,\"chest_3\":0,\"pants_2\":0,\"eyebrows_1\":0,\"glasses_2\":7,\"ears_2\":0,\"eye_squint\":0,\"eyebrows_4\":0,\"bodyb_1\":-1,\"bodyb_4\":0,\"chin_4\":0,\"lipstick_1\":0,\"face_md_weight\":50,\"helmet_2\":0,\"decals_1\":0,\"neck_thickness\":0,\"eyebrows_5\":0,\"makeup_4\":0,\"bodyb_3\":-1,\"bags_1\":0}},{\"label\":\"prag\",\"skin\":{\"eyebrows_3\":0,\"makeup_2\":0,\"bodyb_2\":0,\"lip_thickness\":0,\"beard_1\":0,\"helmet_1\":30,\"chest_2\":0,\"torso_1\":153,\"arms_2\":0,\"blemishes_2\":0,\"lipstick_3\":0,\"torso_2\":0,\"hair_1\":0,\"chain_2\":0,\"bracelets_1\":-1,\"dad\":0,\"nose_2\":0,\"mask_2\":0,\"blush_2\":0,\"beard_3\":0,\"bags_1\":0,\"eyebrows_6\":0,\"chin_3\":0,\"cheeks_1\":0,\"blush_1\":0,\"eye_color\":0,\"chest_1\":0,\"mom\":45,\"watches_1\":-1,\"decals_2\":0,\"age_1\":0,\"moles_2\":0,\"bproof_1\":0,\"ears_2\":0,\"pants_1\":97,\"sun_2\":0,\"beard_2\":0,\"nose_6\":0,\"cheeks_3\":0,\"bproof_2\":0,\"nose_1\":0,\"hair_color_1\":0,\"makeup_1\":0,\"ears_1\":-1,\"neck_thickness\":0,\"chain_1\":0,\"shoes_1\":4,\"sex\":1,\"eyebrows_5\":0,\"cheeks_2\":0,\"mask_1\":0,\"complexion_2\":0,\"nose_4\":0,\"jaw_2\":0,\"moles_1\":0,\"chin_2\":0,\"sun_1\":0,\"tshirt_1\":0,\"hair_color_2\":0,\"skin_md_weight\":38,\"nose_3\":0,\"complexion_1\":0,\"chin_4\":0,\"tshirt_2\":0,\"eyebrows_1\":0,\"chin_1\":0,\"watches_2\":0,\"lipstick_1\":0,\"age_2\":0,\"glasses_1\":2,\"shoes_2\":0,\"eyebrows_2\":0,\"blush_3\":0,\"bracelets_2\":0,\"lipstick_4\":0,\"beard_4\":0,\"makeup_3\":0,\"chest_3\":0,\"pants_2\":8,\"hair_2\":0,\"bags_2\":0,\"lipstick_2\":0,\"jaw_1\":0,\"eyebrows_4\":0,\"bodyb_1\":-1,\"bodyb_4\":0,\"eye_squint\":0,\"nose_5\":0,\"face_md_weight\":50,\"helmet_2\":0,\"decals_1\":0,\"arms\":15,\"blemishes_1\":0,\"makeup_4\":0,\"bodyb_3\":-1,\"glasses_2\":2}}]}'),
(1029, 'society_cardealer', 'steam:1100001468829f9', '{}'),
(1030, 'housing', 'steam:1100001468829f9', '{}'),
(1031, 'housing', 'steam:110000145d04c36', '{}'),
(1032, 'vault', 'steam:110000145d04c36', '{}'),
(1033, 'user_glasses', 'steam:110000145d04c36', '{}'),
(1034, 'user_helmet', 'steam:110000145d04c36', '{}'),
(1035, 'user_mask', 'steam:110000145d04c36', '{}'),
(1036, 'user_ears', 'steam:110000145d04c36', '{}'),
(1037, 'property', 'steam:110000145d04c36', '{}'),
(1038, 'society_cardealer', 'steam:110000145d04c36', '{}'),
(1039, 'user_ears', 'steam:11000013c9eb983', '{}'),
(1040, 'user_glasses', 'steam:11000013c9eb983', '{}'),
(1041, 'user_mask', 'steam:11000013c9eb983', '{}'),
(1042, 'user_helmet', 'steam:11000013c9eb983', '{}'),
(1043, 'vault', 'steam:11000013c9eb983', '{}'),
(1044, 'property', 'steam:11000013c9eb983', '{}'),
(1045, 'society_cardealer', 'steam:11000013c9eb983', '{}'),
(1046, 'housing', 'steam:11000013c9eb983', '{}'),
(1047, 'society_kfc', NULL, '{}'),
(1048, 'user_ears', 'steam:11000013b33f973', '{}'),
(1049, 'user_glasses', 'steam:11000013b33f973', '{}'),
(1050, 'user_helmet', 'steam:11000013b33f973', '{}'),
(1051, 'user_mask', 'steam:11000013b33f973', '{}'),
(1052, 'vault', 'steam:11000013b33f973', '{}'),
(1053, 'property', 'steam:11000013b33f973', '{}'),
(1054, 'society_cardealer', 'steam:11000013b33f973', '{}'),
(1055, 'housing', 'steam:11000013b33f973', '{}'),
(1056, 'user_ears', 'steam:1100001424bdaac', '{}'),
(1057, 'user_glasses', 'steam:1100001424bdaac', '{}'),
(1058, 'user_helmet', 'steam:1100001424bdaac', '{}'),
(1059, 'user_mask', 'steam:1100001424bdaac', '{}'),
(1060, 'vault', 'steam:1100001424bdaac', '{}'),
(1061, 'property', 'steam:1100001424bdaac', '{\"dressing\":[{\"skin\":{\"pants_2\":0,\"complexion_1\":0,\"blush_3\":0,\"mask_1\":0,\"eyebrows_4\":0,\"watches_1\":3,\"skin_md_weight\":59,\"moles_1\":0,\"torso_1\":62,\"glasses_1\":0,\"lipstick_1\":0,\"glasses_2\":0,\"hair_color_1\":0,\"eyebrows_2\":3,\"blemishes_1\":0,\"cheeks_2\":0,\"bags_1\":0,\"bproof_2\":0,\"helmet_1\":-1,\"decals_1\":0,\"bodyb_1\":-1,\"pants_1\":24,\"arms\":1,\"cheeks_1\":0,\"watches_2\":0,\"bags_2\":0,\"makeup_2\":0,\"hair_2\":0,\"beard_4\":0,\"nose_2\":0,\"ears_2\":0,\"eye_color\":5,\"blush_1\":0,\"shoes_1\":3,\"neck_thickness\":0,\"mask_2\":0,\"makeup_1\":0,\"chin_3\":0,\"hair_1\":49,\"chain_1\":50,\"chin_4\":0,\"makeup_3\":0,\"lipstick_3\":0,\"eyebrows_3\":0,\"blemishes_2\":0,\"complexion_2\":0,\"arms_2\":0,\"bproof_1\":0,\"eyebrows_6\":0,\"age_1\":0,\"bodyb_3\":-1,\"beard_2\":7,\"eye_squint\":0,\"bracelets_1\":-1,\"dad\":0,\"lipstick_2\":0,\"helmet_2\":0,\"bracelets_2\":0,\"nose_1\":0,\"torso_2\":0,\"eyebrows_5\":0,\"nose_5\":0,\"makeup_4\":0,\"chain_2\":0,\"moles_2\":0,\"shoes_2\":1,\"mom\":22,\"lip_thickness\":0,\"chest_2\":0,\"tshirt_1\":0,\"jaw_2\":0,\"chin_1\":0,\"beard_3\":0,\"cheeks_3\":0,\"chest_1\":0,\"sun_2\":0,\"sex\":0,\"ears_1\":-1,\"sun_1\":0,\"chest_3\":0,\"chin_2\":0,\"decals_2\":0,\"age_2\":0,\"tshirt_2\":0,\"bodyb_2\":0,\"lipstick_4\":0,\"eyebrows_1\":0,\"nose_6\":0,\"beard_1\":3,\"nose_3\":0,\"blush_2\":0,\"hair_color_2\":0,\"nose_4\":0,\"face_md_weight\":50,\"bodyb_4\":0,\"jaw_1\":0},\"label\":\"muzii\"}]}'),
(1062, 'society_cardealer', 'steam:1100001424bdaac', '{}'),
(1063, 'housing', 'steam:1100001424bdaac', '{}'),
(1064, 'user_ears', 'steam:1100001419dbb7f', '{}'),
(1065, 'user_glasses', 'steam:1100001419dbb7f', '{}'),
(1066, 'user_helmet', 'steam:1100001419dbb7f', '{}'),
(1067, 'user_mask', 'steam:1100001419dbb7f', '{}'),
(1068, 'vault', 'steam:1100001419dbb7f', '{}'),
(1069, 'property', 'steam:1100001419dbb7f', '{}'),
(1070, 'society_cardealer', 'steam:1100001419dbb7f', '{}'),
(1071, 'housing', 'steam:1100001419dbb7f', '{}'),
(1072, 'user_glasses', 'steam:11000014ad2648c', '{}'),
(1073, 'user_helmet', 'steam:11000014ad2648c', '{}'),
(1074, 'user_mask', 'steam:11000014ad2648c', '{}'),
(1075, 'user_ears', 'steam:11000014ad2648c', '{}'),
(1076, 'property', 'steam:11000014ad2648c', '{}'),
(1077, 'vault', 'steam:11000014ad2648c', '{}'),
(1078, 'society_cardealer', 'steam:11000014ad2648c', '{}'),
(1079, 'housing', 'steam:11000014ad2648c', '{}'),
(1080, 'user_ears', 'steam:11000013f7dc792', '{}'),
(1081, 'user_helmet', 'steam:11000013f7dc792', '{}'),
(1082, 'vault', 'steam:11000013f7dc792', '{}'),
(1083, 'user_mask', 'steam:11000013f7dc792', '{}'),
(1084, 'housing', 'steam:11000013f7dc792', '{}'),
(1085, 'property', 'steam:11000013f7dc792', '{\"dressing\":[{\"skin\":{\"face_md_weight\":19,\"torso_1\":133,\"eyebrows_6\":0,\"jaw_2\":0,\"eyebrows_4\":3,\"makeup_3\":0,\"hair_color_2\":5,\"nose_3\":0,\"glasses_1\":0,\"watches_1\":6,\"arms\":11,\"sun_2\":0,\"makeup_2\":0,\"beard_3\":29,\"bproof_1\":0,\"mask_1\":140,\"chin_1\":0,\"nose_4\":0,\"ears_1\":-1,\"nose_2\":0,\"chain_2\":2,\"glasses_2\":0,\"lipstick_2\":0,\"lipstick_3\":0,\"cheeks_1\":0,\"watches_2\":0,\"eyebrows_1\":6,\"bodyb_2\":0,\"blush_2\":0,\"age_1\":0,\"decals_2\":0,\"torso_2\":0,\"mom\":44,\"lip_thickness\":0,\"moles_2\":0,\"chain_1\":30,\"complexion_2\":0,\"hair_1\":73,\"shoes_2\":0,\"sex\":0,\"chest_1\":0,\"nose_5\":0,\"lipstick_1\":0,\"ears_2\":0,\"lipstick_4\":0,\"eyebrows_3\":1,\"nose_6\":0,\"skin_md_weight\":50,\"complexion_1\":0,\"beard_2\":10,\"cheeks_3\":0,\"hair_2\":0,\"beard_1\":10,\"eyebrows_5\":0,\"makeup_1\":0,\"makeup_4\":0,\"bodyb_3\":-1,\"pants_1\":49,\"blush_1\":0,\"bracelets_2\":0,\"helmet_2\":1,\"neck_thickness\":0,\"eye_color\":31,\"beard_4\":0,\"decals_1\":0,\"bodyb_1\":-1,\"bags_2\":0,\"arms_2\":0,\"chest_2\":0,\"chin_3\":0,\"bracelets_1\":-1,\"blush_3\":0,\"dad\":8,\"pants_2\":0,\"blemishes_1\":0,\"tshirt_1\":131,\"jaw_1\":0,\"hair_color_1\":27,\"blemishes_2\":0,\"helmet_1\":-1,\"age_2\":0,\"nose_1\":0,\"eye_squint\":0,\"sun_1\":0,\"chin_2\":0,\"bproof_2\":0,\"bodyb_4\":0,\"cheeks_2\":0,\"tshirt_2\":3,\"chin_4\":0,\"mask_2\":0,\"bags_1\":0,\"moles_1\":0,\"eyebrows_2\":0,\"chest_3\":0,\"shoes_1\":30},\"label\":\"Mafia\"},{\"skin\":{\"face_md_weight\":50,\"torso_1\":167,\"eyebrows_6\":0,\"jaw_2\":0,\"eyebrows_4\":0,\"makeup_3\":0,\"hair_color_2\":0,\"nose_3\":0,\"glasses_1\":0,\"watches_1\":6,\"arms\":11,\"sun_2\":0,\"makeup_2\":0,\"beard_3\":0,\"bproof_1\":0,\"mask_1\":126,\"chin_1\":0,\"nose_4\":0,\"ears_1\":-1,\"nose_2\":0,\"chain_2\":2,\"glasses_2\":0,\"lipstick_2\":0,\"lipstick_3\":0,\"cheeks_1\":0,\"lipstick_4\":0,\"eyebrows_1\":0,\"bodyb_2\":0,\"blush_2\":0,\"age_1\":0,\"decals_2\":0,\"torso_2\":3,\"mom\":21,\"lip_thickness\":0,\"moles_2\":0,\"chain_1\":30,\"complexion_2\":0,\"hair_1\":0,\"shoes_2\":0,\"sex\":0,\"chest_1\":0,\"ears_2\":0,\"lipstick_1\":0,\"nose_5\":0,\"makeup_4\":0,\"eyebrows_3\":0,\"nose_6\":0,\"skin_md_weight\":50,\"complexion_1\":0,\"beard_2\":0,\"cheeks_3\":0,\"shoes_1\":6,\"pants_2\":0,\"eyebrows_5\":0,\"beard_1\":0,\"makeup_1\":0,\"bodyb_3\":-1,\"pants_1\":49,\"blush_1\":0,\"helmet_2\":1,\"chin_3\":0,\"neck_thickness\":0,\"bags_1\":0,\"eye_color\":0,\"decals_1\":0,\"bodyb_1\":-1,\"bags_2\":0,\"arms_2\":0,\"chest_2\":0,\"watches_2\":0,\"bracelets_1\":-1,\"blush_3\":0,\"dad\":0,\"beard_4\":0,\"blemishes_1\":0,\"tshirt_1\":75,\"jaw_1\":0,\"hair_color_1\":0,\"eye_squint\":0,\"helmet_1\":-1,\"age_2\":0,\"nose_1\":0,\"chest_3\":0,\"sun_1\":0,\"chin_2\":0,\"bodyb_4\":0,\"bproof_2\":0,\"cheeks_2\":0,\"tshirt_2\":3,\"chin_4\":0,\"mask_2\":0,\"blemishes_2\":0,\"moles_1\":0,\"eyebrows_2\":0,\"hair_2\":0,\"bracelets_2\":0},\"label\":\"Roadman\"},{\"skin\":{\"face_md_weight\":50,\"torso_1\":178,\"eyebrows_6\":0,\"jaw_2\":0,\"eyebrows_4\":0,\"makeup_3\":0,\"hair_color_2\":0,\"nose_3\":0,\"glasses_1\":0,\"watches_1\":6,\"arms\":11,\"sun_2\":0,\"makeup_2\":0,\"beard_3\":0,\"bproof_1\":0,\"mask_1\":91,\"chin_1\":0,\"nose_4\":0,\"ears_1\":-1,\"nose_2\":0,\"chain_2\":2,\"glasses_2\":0,\"lipstick_2\":0,\"lipstick_3\":0,\"cheeks_1\":0,\"lipstick_4\":0,\"eyebrows_1\":0,\"bodyb_2\":0,\"blush_2\":0,\"age_1\":0,\"decals_2\":0,\"torso_2\":4,\"mom\":21,\"lip_thickness\":0,\"moles_2\":0,\"chain_1\":30,\"complexion_2\":0,\"hair_1\":0,\"shoes_2\":12,\"sex\":0,\"chest_1\":0,\"ears_2\":0,\"lipstick_1\":0,\"hair_2\":0,\"eyebrows_3\":0,\"makeup_4\":0,\"nose_6\":0,\"skin_md_weight\":50,\"complexion_1\":0,\"beard_2\":0,\"cheeks_3\":0,\"helmet_2\":1,\"eyebrows_5\":0,\"makeup_1\":0,\"eye_color\":0,\"pants_2\":3,\"bodyb_3\":-1,\"pants_1\":59,\"blush_1\":0,\"bags_1\":0,\"beard_4\":0,\"neck_thickness\":0,\"chin_3\":0,\"dad\":0,\"decals_1\":0,\"bodyb_1\":-1,\"bags_2\":0,\"arms_2\":0,\"watches_2\":0,\"jaw_1\":0,\"chest_2\":0,\"blush_3\":0,\"beard_1\":0,\"shoes_1\":8,\"blemishes_1\":0,\"tshirt_1\":97,\"bracelets_1\":-1,\"hair_color_1\":0,\"eye_squint\":0,\"helmet_1\":-1,\"age_2\":0,\"nose_1\":0,\"blemishes_2\":0,\"sun_1\":0,\"chin_2\":0,\"bodyb_4\":0,\"bproof_2\":0,\"cheeks_2\":0,\"tshirt_2\":4,\"chin_4\":0,\"mask_2\":4,\"eyebrows_2\":0,\"moles_1\":0,\"chest_3\":0,\"nose_5\":0,\"bracelets_2\":0},\"label\":\"Rino\"},{\"skin\":{\"face_md_weight\":72,\"torso_1\":264,\"eyebrows_6\":0,\"jaw_2\":0,\"eyebrows_4\":0,\"makeup_3\":0,\"hair_color_2\":0,\"nose_3\":0,\"glasses_1\":0,\"watches_1\":6,\"arms\":12,\"sun_2\":0,\"makeup_2\":0,\"beard_3\":0,\"bproof_1\":0,\"mask_1\":0,\"chin_1\":0,\"nose_4\":0,\"ears_1\":-1,\"nose_2\":0,\"chain_2\":0,\"glasses_2\":0,\"lipstick_2\":0,\"lipstick_3\":0,\"cheeks_1\":0,\"watches_2\":0,\"eyebrows_1\":0,\"bodyb_2\":0,\"blush_2\":0,\"age_1\":0,\"decals_2\":0,\"torso_2\":0,\"mom\":25,\"lip_thickness\":0,\"moles_2\":0,\"chain_1\":46,\"complexion_2\":0,\"hair_1\":63,\"shoes_2\":3,\"sex\":0,\"chest_1\":0,\"nose_5\":0,\"lipstick_1\":0,\"ears_2\":0,\"eyebrows_3\":0,\"blemishes_2\":0,\"nose_6\":0,\"skin_md_weight\":50,\"complexion_1\":0,\"beard_2\":10,\"cheeks_3\":0,\"bproof_2\":0,\"eye_color\":0,\"eyebrows_5\":0,\"beard_1\":10,\"makeup_1\":0,\"bodyb_3\":-1,\"pants_1\":112,\"blush_1\":0,\"helmet_2\":0,\"beard_4\":0,\"neck_thickness\":0,\"bags_1\":0,\"dad\":44,\"decals_1\":0,\"bodyb_1\":-1,\"bags_2\":0,\"arms_2\":0,\"chin_3\":0,\"makeup_4\":0,\"chest_2\":0,\"blush_3\":0,\"chin_2\":0,\"pants_2\":0,\"blemishes_1\":0,\"tshirt_1\":31,\"bracelets_1\":-1,\"hair_color_1\":27,\"jaw_1\":0,\"helmet_1\":-1,\"age_2\":0,\"nose_1\":0,\"eye_squint\":0,\"sun_1\":0,\"shoes_1\":82,\"lipstick_4\":0,\"bodyb_4\":0,\"cheeks_2\":0,\"tshirt_2\":0,\"chin_4\":0,\"mask_2\":0,\"hair_2\":0,\"moles_1\":0,\"chest_3\":0,\"eyebrows_2\":0,\"bracelets_2\":0},\"label\":\"Mafia Boss\"}]}'),
(1086, 'society_cardealer', 'steam:11000013f7dc792', '{}'),
(1087, 'user_glasses', 'steam:11000013f7dc792', '{}'),
(1088, 'user_glasses', 'steam:11000013508796f', '{}'),
(1089, 'user_ears', 'steam:11000013508796f', '{}'),
(1090, 'user_mask', 'steam:11000013508796f', '{}'),
(1091, 'user_helmet', 'steam:11000013508796f', '{}'),
(1092, 'vault', 'steam:11000013508796f', '{}'),
(1093, 'property', 'steam:11000013508796f', '{}'),
(1094, 'society_cardealer', 'steam:11000013508796f', '{}'),
(1095, 'housing', 'steam:11000013508796f', '{}'),
(1096, 'user_glasses', 'steam:110000140bed131', '{}'),
(1097, 'user_ears', 'steam:110000140bed131', '{}'),
(1098, 'vault', 'steam:110000140bed131', '{}'),
(1099, 'user_mask', 'steam:110000140bed131', '{}'),
(1100, 'user_helmet', 'steam:110000140bed131', '{}'),
(1101, 'property', 'steam:110000140bed131', '{\"dressing\":[{\"label\":\"PD\",\"skin\":{\"cheeks_1\":0,\"eye_color\":0,\"helmet_2\":2,\"arms\":1,\"decals_1\":0,\"shoes_2\":0,\"eye_squint\":0,\"bodyb_3\":-1,\"chin_1\":0,\"sun_1\":0,\"blush_2\":0,\"blush_3\":0,\"makeup_1\":0,\"blemishes_2\":0,\"makeup_4\":0,\"chin_3\":0,\"lipstick_3\":0,\"eyebrows_4\":0,\"ears_1\":-1,\"watches_1\":-1,\"helmet_1\":102,\"skin\":0,\"eyebrows_2\":0,\"lipstick_1\":0,\"nose_1\":0,\"hair_2\":0,\"dad\":0,\"torso_2\":0,\"tshirt_1\":132,\"bracelets_2\":0,\"arms_2\":0,\"nose_3\":0,\"mom\":21,\"beard_3\":0,\"sex\":0,\"nose_4\":0,\"nose_2\":0,\"beard_1\":0,\"lip_thickness\":0,\"chain_2\":0,\"bags_1\":0,\"eyebrows_1\":0,\"bodyb_1\":-1,\"bracelets_1\":-1,\"bproof_1\":33,\"chest_3\":0,\"nose_6\":0,\"nose_5\":0,\"complexion_2\":0,\"neck_thickness\":0,\"torso_1\":263,\"cheeks_2\":0,\"eyebrows_5\":0,\"blemishes_1\":0,\"blush_1\":0,\"bodyb_2\":0,\"chain_1\":0,\"sun_2\":0,\"bproof_2\":0,\"eyebrows_3\":0,\"hair_1\":0,\"age_2\":0,\"hair_color_1\":0,\"face\":0,\"cheeks_3\":0,\"complexion_1\":0,\"lipstick_2\":0,\"makeup_3\":0,\"beard_4\":0,\"mask_1\":0,\"mask_2\":0,\"pants_2\":0,\"face_md_weight\":50,\"glasses_2\":0,\"chest_1\":0,\"chin_4\":0,\"tshirt_2\":0,\"watches_2\":0,\"eyebrows_6\":0,\"bags_2\":0,\"jaw_1\":0,\"chest_2\":0,\"bodyb_4\":0,\"pants_1\":13,\"moles_1\":0,\"glasses_1\":5,\"shoes_1\":67,\"lipstick_4\":0,\"age_1\":0,\"ears_2\":0,\"hair_color_2\":0,\"decals_2\":0,\"chin_2\":0,\"beard_2\":0,\"moles_2\":0,\"makeup_2\":0,\"jaw_2\":0,\"skin_md_weight\":50}}]}'),
(1102, 'society_cardealer', 'steam:110000140bed131', '{}'),
(1103, 'housing', 'steam:110000140bed131', '{}'),
(1104, 'user_ears', 'steam:11000014e54d683', '{}'),
(1105, 'user_glasses', 'steam:11000014e54d683', '{}'),
(1106, 'user_helmet', 'steam:11000014e54d683', '{}'),
(1107, 'user_mask', 'steam:11000014e54d683', '{}'),
(1108, 'vault', 'steam:11000014e54d683', '{}'),
(1109, 'property', 'steam:11000014e54d683', '{}'),
(1110, 'society_cardealer', 'steam:11000014e54d683', '{}'),
(1111, 'housing', 'steam:11000014e54d683', '{}'),
(1112, 'user_ears', 'steam:11000013d9aecf5', '{}'),
(1113, 'user_glasses', 'steam:11000013d9aecf5', '{}'),
(1114, 'user_helmet', 'steam:11000013d9aecf5', '{}'),
(1115, 'user_mask', 'steam:11000013d9aecf5', '{}'),
(1116, 'vault', 'steam:11000013d9aecf5', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(1117, 'property', 'steam:11000013d9aecf5', '{\"dressing\":[{\"label\":\"POEEESSS\",\"skin\":{\"cheeks_1\":0,\"eye_color\":0,\"helmet_2\":0,\"arms\":4,\"decals_1\":0,\"shoes_2\":0,\"nose_5\":0,\"bodyb_3\":-1,\"chest_3\":0,\"sun_1\":0,\"blush_2\":0,\"blush_3\":0,\"makeup_1\":0,\"blemishes_2\":0,\"makeup_4\":0,\"lip_thickness\":0,\"lipstick_3\":0,\"eyebrows_4\":0,\"ears_1\":-1,\"watches_1\":-1,\"helmet_1\":-1,\"moles_2\":0,\"eyebrows_2\":10,\"beard_4\":0,\"nose_1\":0,\"tshirt_2\":0,\"dad\":0,\"torso_2\":0,\"tshirt_1\":130,\"bracelets_2\":0,\"arms_2\":0,\"nose_3\":0,\"mom\":21,\"beard_3\":0,\"sex\":0,\"nose_2\":0,\"beard_1\":10,\"chain_2\":0,\"hair_2\":0,\"eyebrows_1\":0,\"mask_1\":126,\"sun_2\":0,\"bproof_1\":0,\"bracelets_1\":-1,\"eye_squint\":0,\"bproof_2\":0,\"complexion_2\":0,\"cheeks_2\":0,\"torso_1\":53,\"blemishes_1\":0,\"eyebrows_5\":0,\"chin_4\":0,\"blush_1\":0,\"complexion_1\":0,\"chain_1\":0,\"hair_1\":15,\"bags_1\":0,\"eyebrows_3\":0,\"lipstick_1\":0,\"age_2\":0,\"hair_color_1\":29,\"neck_thickness\":0,\"moles_1\":0,\"glasses_2\":0,\"lipstick_2\":0,\"bodyb_2\":0,\"makeup_3\":0,\"bodyb_1\":-1,\"mask_2\":0,\"pants_2\":0,\"face_md_weight\":50,\"chest_2\":0,\"shoes_1\":48,\"ears_2\":0,\"nose_6\":0,\"hair_color_2\":0,\"eyebrows_6\":0,\"bags_2\":0,\"chin_2\":0,\"chin_1\":0,\"bodyb_4\":0,\"pants_1\":24,\"chin_3\":0,\"glasses_1\":0,\"nose_4\":0,\"lipstick_4\":0,\"age_1\":0,\"cheeks_3\":0,\"makeup_2\":0,\"decals_2\":0,\"chest_1\":0,\"beard_2\":10,\"watches_2\":0,\"jaw_1\":0,\"jaw_2\":0,\"skin_md_weight\":50}},{\"label\":\"yes\",\"skin\":{\"cheeks_1\":0,\"eye_color\":5,\"helmet_2\":0,\"arms\":4,\"decals_1\":0,\"shoes_2\":2,\"eye_squint\":3,\"bodyb_3\":-1,\"chin_1\":0,\"sun_1\":0,\"blush_2\":0,\"blush_3\":0,\"makeup_1\":0,\"blemishes_2\":0,\"makeup_4\":0,\"chin_3\":0,\"lipstick_3\":0,\"eyebrows_4\":0,\"ears_1\":-1,\"watches_1\":-1,\"helmet_1\":-1,\"moles_2\":0,\"eyebrows_2\":10,\"beard_4\":0,\"nose_1\":0,\"tshirt_2\":0,\"dad\":0,\"torso_2\":0,\"tshirt_1\":15,\"bracelets_2\":0,\"arms_2\":0,\"nose_3\":0,\"mom\":37,\"beard_3\":0,\"sex\":0,\"nose_2\":0,\"glasses_2\":0,\"chain_2\":0,\"hair_2\":0,\"eyebrows_1\":0,\"mask_1\":72,\"beard_1\":18,\"bproof_1\":0,\"bracelets_1\":-1,\"shoes_1\":72,\"cheeks_2\":0,\"complexion_2\":0,\"nose_5\":0,\"torso_1\":214,\"moles_1\":0,\"eyebrows_5\":0,\"cheeks_3\":0,\"blush_1\":0,\"complexion_1\":0,\"chain_1\":0,\"sun_2\":0,\"chin_4\":0,\"eyebrows_3\":0,\"hair_1\":5,\"age_2\":0,\"hair_color_1\":29,\"neck_thickness\":5,\"bags_1\":0,\"chest_3\":0,\"lipstick_2\":0,\"lipstick_1\":0,\"bodyb_2\":0,\"makeup_3\":0,\"mask_2\":0,\"pants_2\":0,\"face_md_weight\":50,\"nose_6\":0,\"chest_1\":0,\"bodyb_1\":-1,\"ears_2\":0,\"bags_2\":0,\"eyebrows_6\":0,\"watches_2\":0,\"chin_2\":0,\"blemishes_1\":0,\"bodyb_4\":0,\"pants_1\":87,\"chest_2\":0,\"glasses_1\":0,\"bproof_2\":0,\"lipstick_4\":0,\"age_1\":0,\"nose_4\":0,\"lip_thickness\":0,\"decals_2\":0,\"makeup_2\":0,\"beard_2\":10,\"hair_color_2\":0,\"jaw_1\":7,\"jaw_2\":0,\"skin_md_weight\":50}},{\"label\":\"Everyday\",\"skin\":{\"cheeks_1\":0,\"eye_color\":5,\"helmet_2\":0,\"arms\":4,\"decals_1\":0,\"shoes_2\":2,\"eye_squint\":3,\"bodyb_3\":-1,\"chin_1\":0,\"sun_1\":0,\"mask_1\":0,\"blush_3\":0,\"makeup_1\":0,\"blemishes_2\":0,\"makeup_4\":0,\"chin_3\":0,\"lipstick_3\":0,\"eyebrows_4\":0,\"ears_1\":-1,\"watches_1\":-1,\"helmet_1\":-1,\"moles_2\":0,\"eyebrows_2\":10,\"beard_4\":0,\"nose_1\":0,\"hair_2\":0,\"dad\":0,\"torso_2\":0,\"tshirt_1\":15,\"bracelets_2\":0,\"arms_2\":0,\"nose_3\":0,\"mom\":37,\"beard_3\":0,\"sex\":0,\"nose_2\":0,\"glasses_2\":5,\"chain_2\":0,\"nose_4\":0,\"eyebrows_1\":0,\"cheeks_2\":0,\"chest_3\":0,\"bproof_1\":0,\"nose_5\":0,\"bracelets_1\":-1,\"lipstick_1\":0,\"complexion_2\":0,\"nose_6\":0,\"torso_1\":50,\"bags_1\":0,\"eyebrows_5\":0,\"cheeks_3\":0,\"moles_1\":0,\"complexion_1\":0,\"chain_1\":0,\"sun_2\":0,\"hair_1\":5,\"eyebrows_3\":0,\"chin_4\":0,\"age_2\":0,\"hair_color_1\":29,\"neck_thickness\":5,\"beard_1\":18,\"bproof_2\":0,\"lipstick_2\":0,\"bodyb_2\":0,\"makeup_3\":0,\"shoes_1\":27,\"mask_2\":0,\"pants_2\":1,\"face_md_weight\":50,\"ears_2\":0,\"chest_1\":0,\"bodyb_1\":-1,\"lip_thickness\":0,\"blush_2\":0,\"eyebrows_6\":0,\"watches_2\":0,\"chin_2\":0,\"chest_2\":0,\"bodyb_4\":0,\"pants_1\":49,\"makeup_2\":0,\"glasses_1\":5,\"tshirt_2\":0,\"lipstick_4\":0,\"age_1\":0,\"blush_1\":0,\"blemishes_1\":0,\"decals_2\":0,\"hair_color_2\":0,\"beard_2\":10,\"bags_2\":0,\"jaw_1\":7,\"jaw_2\":0,\"skin_md_weight\":50}},{\"label\":\"Suit\",\"skin\":{\"cheeks_1\":0,\"eye_color\":5,\"helmet_2\":0,\"arms\":4,\"decals_1\":0,\"shoes_2\":3,\"eye_squint\":3,\"bodyb_3\":-1,\"chin_1\":0,\"sun_1\":0,\"mask_1\":0,\"blush_3\":0,\"makeup_1\":0,\"blemishes_2\":0,\"makeup_4\":0,\"lip_thickness\":0,\"lipstick_3\":0,\"eyebrows_4\":0,\"ears_1\":-1,\"watches_1\":-1,\"helmet_1\":-1,\"moles_2\":0,\"eyebrows_2\":10,\"beard_4\":0,\"nose_1\":0,\"tshirt_2\":3,\"dad\":0,\"torso_2\":3,\"tshirt_1\":36,\"bracelets_2\":0,\"arms_2\":0,\"nose_3\":0,\"mom\":37,\"beard_3\":0,\"sex\":0,\"bags_1\":0,\"glasses_2\":5,\"chain_2\":0,\"beard_1\":18,\"eyebrows_1\":0,\"nose_2\":0,\"cheeks_2\":0,\"bproof_1\":0,\"bracelets_1\":-1,\"nose_5\":0,\"chest_3\":0,\"complexion_2\":0,\"nose_6\":0,\"torso_1\":184,\"chin_4\":0,\"eyebrows_5\":0,\"cheeks_3\":0,\"blush_1\":0,\"complexion_1\":0,\"chain_1\":100,\"sun_2\":0,\"lipstick_1\":0,\"eyebrows_3\":0,\"hair_1\":15,\"age_2\":0,\"hair_color_1\":29,\"neck_thickness\":5,\"moles_1\":0,\"pants_2\":0,\"lipstick_2\":0,\"chest_1\":0,\"bodyb_2\":0,\"makeup_3\":0,\"mask_2\":0,\"nose_4\":0,\"face_md_weight\":50,\"bodyb_1\":-1,\"shoes_1\":66,\"ears_2\":0,\"hair_2\":0,\"blush_2\":0,\"eyebrows_6\":0,\"bags_2\":0,\"chin_2\":0,\"chest_2\":0,\"bodyb_4\":0,\"pants_1\":79,\"chin_3\":0,\"glasses_1\":5,\"bproof_2\":0,\"lipstick_4\":0,\"age_1\":0,\"makeup_2\":0,\"hair_color_2\":0,\"decals_2\":0,\"watches_2\":0,\"beard_2\":10,\"jaw_1\":7,\"blemishes_1\":0,\"jaw_2\":0,\"skin_md_weight\":50}},{\"label\":\"SUIT 2\",\"skin\":{\"cheeks_1\":0,\"eye_color\":0,\"helmet_2\":0,\"arms\":4,\"decals_1\":0,\"shoes_2\":3,\"eye_squint\":0,\"bodyb_3\":-1,\"chin_1\":0,\"sun_1\":0,\"mask_1\":0,\"blush_3\":0,\"makeup_1\":0,\"blemishes_2\":0,\"makeup_4\":0,\"lip_thickness\":0,\"lipstick_3\":0,\"eyebrows_4\":0,\"ears_1\":-1,\"watches_1\":-1,\"helmet_1\":-1,\"skin\":0,\"makeup_2\":0,\"lipstick_1\":0,\"nose_1\":0,\"hair_2\":0,\"dad\":12,\"torso_2\":5,\"tshirt_1\":41,\"bracelets_2\":0,\"arms_2\":0,\"nose_3\":0,\"mom\":44,\"beard_3\":0,\"sex\":0,\"tshirt_2\":2,\"nose_2\":0,\"beard_1\":10,\"bags_2\":0,\"chain_2\":0,\"bracelets_1\":-1,\"eyebrows_1\":0,\"blemishes_1\":0,\"nose_6\":0,\"bproof_1\":0,\"nose_5\":0,\"bodyb_1\":-1,\"cheeks_2\":0,\"complexion_2\":0,\"cheeks_3\":0,\"torso_1\":192,\"sun_2\":0,\"eyebrows_5\":0,\"chest_3\":0,\"moles_1\":0,\"complexion_1\":0,\"chain_1\":108,\"hair_1\":60,\"bags_1\":0,\"eyebrows_3\":0,\"chin_2\":0,\"age_2\":0,\"hair_color_1\":0,\"face\":0,\"chin_3\":0,\"bodyb_2\":0,\"lipstick_2\":0,\"makeup_3\":0,\"beard_4\":0,\"glasses_2\":5,\"mask_2\":0,\"pants_2\":8,\"face_md_weight\":50,\"neck_thickness\":0,\"chest_1\":0,\"ears_2\":0,\"chin_4\":0,\"blush_2\":0,\"eyebrows_6\":0,\"watches_2\":0,\"jaw_1\":0,\"lipstick_4\":0,\"bodyb_4\":0,\"pants_1\":87,\"chest_2\":0,\"glasses_1\":5,\"shoes_1\":66,\"bproof_2\":0,\"age_1\":0,\"nose_4\":0,\"blush_1\":0,\"decals_2\":0,\"hair_color_2\":0,\"beard_2\":10,\"moles_2\":0,\"eyebrows_2\":0,\"jaw_2\":0,\"skin_md_weight\":30}}]}'),
(1118, 'society_cardealer', 'steam:11000013d9aecf5', '{}'),
(1119, 'housing', 'steam:11000013d9aecf5', '{}'),
(1120, 'user_ears', 'steam:11000013ff9a7a7', '{}'),
(1121, 'user_glasses', 'steam:11000013ff9a7a7', '{}'),
(1122, 'user_helmet', 'steam:11000013ff9a7a7', '{}'),
(1123, 'user_mask', 'steam:11000013ff9a7a7', '{}'),
(1124, 'vault', 'steam:11000013ff9a7a7', '{}'),
(1125, 'society_cardealer', 'steam:11000013ff9a7a7', '{}'),
(1126, 'property', 'steam:11000013ff9a7a7', '{}'),
(1127, 'housing', 'steam:11000013ff9a7a7', '{}'),
(1128, 'user_helmet', 'steam:11000014a064e27', '{}'),
(1129, 'vault', 'steam:11000014a064e27', '{}'),
(1130, 'society_cardealer', 'steam:11000014a064e27', '{}'),
(1131, 'user_mask', 'steam:11000014a064e27', '{}'),
(1132, 'housing', 'steam:11000014a064e27', '{}'),
(1133, 'user_glasses', 'steam:11000014a064e27', '{}'),
(1134, 'user_ears', 'steam:11000014a064e27', '{}'),
(1135, 'property', 'steam:11000014a064e27', '{\"dressing\":[{\"label\":\"poes\",\"skin\":{\"makeup_2\":0,\"bproof_2\":0,\"arms_2\":0,\"chin_4\":0,\"skin_md_weight\":50,\"bags_2\":0,\"complexion_1\":0,\"blush_1\":0,\"mom\":21,\"pants_1\":19,\"nose_3\":0,\"age_1\":0,\"watches_1\":-1,\"chest_1\":0,\"face_md_weight\":50,\"blemishes_2\":0,\"lipstick_4\":0,\"makeup_4\":0,\"chain_1\":0,\"age_2\":0,\"nose_5\":0,\"neck_thickness\":0,\"bodyb_4\":0,\"bags_1\":0,\"lip_thickness\":0,\"hair_2\":0,\"hair_color_2\":0,\"ears_2\":0,\"blush_3\":0,\"nose_4\":0,\"beard_2\":0,\"hair_color_1\":0,\"nose_2\":0,\"decals_1\":0,\"bodyb_2\":0,\"eye_squint\":0,\"tshirt_1\":13,\"chain_2\":0,\"helmet_1\":-1,\"makeup_1\":0,\"hair_1\":0,\"beard_4\":0,\"nose_6\":0,\"complexion_2\":0,\"torso_2\":0,\"lipstick_1\":0,\"eyebrows_6\":0,\"ears_1\":-1,\"chest_2\":0,\"cheeks_1\":0,\"shoes_2\":1,\"sun_1\":0,\"torso_1\":19,\"cheeks_2\":0,\"makeup_3\":0,\"glasses_1\":0,\"mask_1\":8,\"bracelets_2\":0,\"mask_2\":0,\"chin_1\":0,\"moles_2\":0,\"eyebrows_5\":0,\"eyebrows_2\":0,\"dad\":0,\"blush_2\":0,\"glasses_2\":0,\"beard_1\":0,\"arms\":4,\"bodyb_1\":-1,\"beard_3\":0,\"helmet_2\":0,\"bodyb_3\":-1,\"cheeks_3\":0,\"jaw_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"chest_3\":0,\"watches_2\":0,\"eyebrows_1\":0,\"lipstick_3\":0,\"bracelets_1\":-1,\"chin_2\":0,\"eye_color\":0,\"shoes_1\":51,\"sex\":0,\"pants_2\":0,\"blemishes_1\":0,\"sun_2\":0,\"nose_1\":0,\"moles_1\":0,\"bproof_1\":0,\"eyebrows_4\":0,\"jaw_1\":0,\"tshirt_2\":0,\"eyebrows_3\":0,\"chin_3\":0}},{\"label\":\"work\",\"skin\":{\"makeup_2\":0,\"bproof_2\":0,\"arms_2\":0,\"chin_4\":0,\"skin_md_weight\":50,\"skin\":0,\"bags_2\":0,\"complexion_1\":0,\"blush_1\":0,\"mom\":21,\"pants_1\":49,\"nose_3\":0,\"age_1\":0,\"watches_1\":-1,\"chest_1\":0,\"face_md_weight\":50,\"blemishes_2\":0,\"lipstick_4\":0,\"makeup_4\":0,\"chain_1\":0,\"age_2\":0,\"nose_5\":0,\"neck_thickness\":0,\"bodyb_4\":0,\"jaw_2\":0,\"lip_thickness\":0,\"hair_2\":3,\"hair_color_2\":0,\"ears_2\":0,\"blush_3\":0,\"nose_4\":0,\"beard_2\":0,\"hair_color_1\":29,\"nose_2\":0,\"complexion_2\":0,\"decals_1\":0,\"bodyb_2\":0,\"eye_squint\":0,\"tshirt_1\":15,\"chain_2\":0,\"helmet_1\":-1,\"watches_2\":0,\"hair_1\":15,\"beard_4\":0,\"nose_6\":0,\"cheeks_1\":0,\"torso_2\":3,\"lipstick_1\":0,\"eyebrows_6\":0,\"ears_1\":-1,\"chest_2\":0,\"shoes_2\":0,\"eye_color\":0,\"shoes_1\":9,\"torso_1\":112,\"cheeks_2\":0,\"makeup_3\":0,\"glasses_1\":0,\"bodyb_3\":-1,\"bracelets_2\":0,\"bags_1\":0,\"chin_1\":0,\"moles_2\":0,\"eyebrows_5\":0,\"eyebrows_2\":0,\"mask_2\":2,\"blush_2\":0,\"glasses_2\":0,\"mask_1\":25,\"arms\":4,\"face\":0,\"beard_3\":0,\"helmet_2\":0,\"lipstick_2\":0,\"beard_1\":0,\"makeup_1\":0,\"bodyb_1\":-1,\"blemishes_1\":0,\"dad\":0,\"sun_1\":0,\"eyebrows_1\":0,\"lipstick_3\":0,\"decals_2\":0,\"chin_2\":0,\"eyebrows_4\":0,\"chest_3\":0,\"sex\":0,\"pants_2\":3,\"bracelets_1\":-1,\"sun_2\":0,\"nose_1\":0,\"moles_1\":0,\"bproof_1\":0,\"cheeks_3\":0,\"jaw_1\":0,\"tshirt_2\":0,\"eyebrows_3\":0,\"chin_3\":0}}]}'),
(1136, 'user_ears', 'steam:11000014bb77bcd', '{}'),
(1137, 'user_glasses', 'steam:11000014bb77bcd', '{}'),
(1138, 'user_helmet', 'steam:11000014bb77bcd', '{}'),
(1139, 'user_mask', 'steam:11000014bb77bcd', '{}'),
(1140, 'vault', 'steam:11000014bb77bcd', '{}'),
(1141, 'property', 'steam:11000014bb77bcd', '{}'),
(1142, 'society_cardealer', 'steam:11000014bb77bcd', '{}'),
(1143, 'housing', 'steam:11000014bb77bcd', '{}'),
(1144, 'user_ears', 'steam:110000144d7020e', '{}'),
(1145, 'user_glasses', 'steam:110000144d7020e', '{}'),
(1146, 'user_helmet', 'steam:110000144d7020e', '{}'),
(1147, 'user_mask', 'steam:110000144d7020e', '{}'),
(1148, 'vault', 'steam:110000144d7020e', '{}'),
(1149, 'society_cardealer', 'steam:110000144d7020e', '{}'),
(1150, 'housing', 'steam:110000144d7020e', '{}'),
(1151, 'property', 'steam:110000144d7020e', '{}'),
(1152, 'user_ears', 'steam:11000014292f4b2', '{}'),
(1153, 'user_glasses', 'steam:11000014292f4b2', '{}'),
(1154, 'user_helmet', 'steam:11000014292f4b2', '{}'),
(1155, 'user_mask', 'steam:11000014292f4b2', '{}'),
(1156, 'vault', 'steam:11000014292f4b2', '{}'),
(1157, 'property', 'steam:11000014292f4b2', '{\"dressing\":[{\"label\":\"TANGO\",\"skin\":{\"cheeks_1\":0,\"eye_color\":0,\"helmet_2\":0,\"arms\":85,\"decals_1\":0,\"shoes_2\":0,\"eye_squint\":0,\"bodyb_3\":-1,\"chest_3\":0,\"sun_1\":0,\"mask_1\":0,\"blush_3\":0,\"makeup_1\":0,\"blemishes_2\":0,\"makeup_4\":0,\"lip_thickness\":0,\"lipstick_3\":0,\"eyebrows_4\":0,\"ears_1\":-1,\"watches_1\":-1,\"helmet_1\":-1,\"skin\":0,\"makeup_2\":0,\"lipstick_1\":0,\"nose_1\":0,\"hair_2\":0,\"dad\":0,\"torso_2\":0,\"tshirt_1\":15,\"bracelets_2\":0,\"arms_2\":0,\"nose_3\":0,\"mom\":21,\"beard_3\":0,\"sex\":0,\"lipstick_4\":0,\"nose_2\":0,\"ears_2\":0,\"moles_1\":0,\"chain_2\":0,\"hair_1\":0,\"eyebrows_1\":0,\"bracelets_1\":-1,\"nose_6\":0,\"bproof_1\":0,\"pants_2\":0,\"cheeks_2\":0,\"blemishes_1\":0,\"complexion_2\":0,\"sun_2\":0,\"torso_1\":432,\"cheeks_3\":0,\"eyebrows_5\":0,\"chin_4\":0,\"blush_1\":0,\"bodyb_2\":0,\"chain_1\":27,\"bags_1\":0,\"complexion_1\":0,\"eyebrows_3\":0,\"nose_5\":0,\"age_2\":0,\"hair_color_1\":0,\"neck_thickness\":0,\"chin_3\":0,\"makeup_3\":0,\"lipstick_2\":0,\"beard_4\":0,\"chin_1\":0,\"bags_2\":0,\"mask_2\":0,\"nose_4\":0,\"face_md_weight\":50,\"watches_2\":0,\"shoes_1\":8,\"glasses_2\":0,\"blush_2\":0,\"chin_2\":0,\"eyebrows_6\":0,\"chest_2\":0,\"jaw_1\":0,\"face\":0,\"bodyb_1\":-1,\"pants_1\":64,\"tshirt_2\":0,\"glasses_1\":0,\"bodyb_4\":0,\"bproof_2\":0,\"age_1\":0,\"beard_1\":0,\"hair_color_2\":0,\"decals_2\":0,\"moles_2\":0,\"beard_2\":0,\"eyebrows_2\":0,\"chest_1\":0,\"jaw_2\":0,\"skin_md_weight\":50}},{\"label\":\"DOCTOR\",\"skin\":{\"cheeks_1\":0,\"eye_color\":0,\"helmet_2\":0,\"arms\":85,\"decals_1\":42,\"shoes_2\":0,\"eye_squint\":0,\"bodyb_3\":-1,\"chest_3\":0,\"sun_1\":0,\"blush_2\":0,\"blush_3\":0,\"makeup_1\":0,\"blemishes_2\":0,\"makeup_4\":0,\"lip_thickness\":0,\"lipstick_3\":0,\"eyebrows_4\":0,\"ears_1\":-1,\"watches_1\":-1,\"helmet_1\":-1,\"skin\":0,\"eyebrows_2\":0,\"lipstick_1\":0,\"nose_1\":0,\"tshirt_2\":0,\"dad\":0,\"torso_2\":0,\"tshirt_1\":15,\"bracelets_2\":0,\"arms_2\":0,\"nose_3\":0,\"mom\":21,\"beard_3\":0,\"sex\":0,\"makeup_2\":0,\"nose_2\":0,\"ears_2\":0,\"glasses_2\":0,\"chain_2\":0,\"pants_2\":0,\"eyebrows_1\":0,\"sun_2\":0,\"bracelets_1\":-1,\"bproof_1\":0,\"beard_1\":0,\"nose_6\":0,\"moles_1\":0,\"complexion_2\":0,\"cheeks_2\":0,\"torso_1\":411,\"blemishes_1\":0,\"eyebrows_5\":0,\"mask_1\":0,\"blush_1\":0,\"bodyb_2\":0,\"chain_1\":206,\"hair_1\":0,\"bodyb_1\":-1,\"eyebrows_3\":0,\"bags_1\":28,\"age_2\":0,\"hair_color_1\":0,\"face\":0,\"chin_4\":0,\"complexion_1\":0,\"lipstick_2\":0,\"makeup_3\":0,\"beard_4\":0,\"nose_5\":0,\"mask_2\":0,\"nose_4\":0,\"face_md_weight\":50,\"cheeks_3\":0,\"chest_1\":0,\"chin_3\":0,\"chin_1\":0,\"bags_2\":10,\"eyebrows_6\":0,\"watches_2\":0,\"jaw_1\":0,\"chest_2\":0,\"bodyb_4\":0,\"pants_1\":64,\"chin_2\":0,\"glasses_1\":0,\"hair_2\":0,\"lipstick_4\":0,\"age_1\":0,\"bproof_2\":0,\"neck_thickness\":0,\"decals_2\":0,\"hair_color_2\":0,\"beard_2\":0,\"shoes_1\":8,\"moles_2\":0,\"jaw_2\":0,\"skin_md_weight\":50}},{\"label\":\"CHIEF DOCTOR\",\"skin\":{\"cheeks_1\":0,\"eye_color\":0,\"helmet_2\":0,\"arms\":85,\"decals_1\":0,\"shoes_2\":0,\"eye_squint\":0,\"bodyb_3\":-1,\"chest_3\":0,\"sun_1\":0,\"mask_1\":0,\"blush_3\":0,\"makeup_1\":0,\"blemishes_2\":0,\"makeup_4\":0,\"lip_thickness\":0,\"lipstick_3\":0,\"eyebrows_4\":0,\"ears_1\":-1,\"watches_1\":-1,\"helmet_1\":-1,\"skin\":0,\"makeup_2\":0,\"lipstick_1\":0,\"nose_1\":0,\"hair_2\":0,\"dad\":0,\"torso_2\":0,\"tshirt_1\":42,\"bracelets_2\":0,\"arms_2\":0,\"nose_3\":0,\"mom\":21,\"beard_3\":0,\"sex\":0,\"eyebrows_2\":0,\"nose_2\":0,\"glasses_2\":0,\"neck_thickness\":0,\"chain_2\":0,\"bodyb_1\":-1,\"eyebrows_1\":0,\"bracelets_1\":-1,\"watches_2\":0,\"bproof_1\":0,\"nose_6\":0,\"cheeks_2\":0,\"blemishes_1\":0,\"complexion_2\":0,\"sun_2\":0,\"torso_1\":328,\"pants_2\":0,\"eyebrows_5\":0,\"beard_1\":0,\"moles_1\":0,\"bodyb_2\":0,\"chain_1\":206,\"hair_1\":0,\"jaw_1\":0,\"eyebrows_3\":0,\"bags_1\":28,\"age_2\":0,\"hair_color_1\":0,\"face\":0,\"chin_4\":0,\"complexion_1\":0,\"lipstick_2\":0,\"makeup_3\":0,\"beard_4\":0,\"nose_5\":0,\"mask_2\":0,\"nose_4\":0,\"face_md_weight\":50,\"cheeks_3\":0,\"chest_1\":0,\"ears_2\":0,\"blush_2\":0,\"chin_3\":0,\"eyebrows_6\":0,\"bags_2\":10,\"chin_2\":0,\"chin_1\":0,\"bodyb_4\":0,\"pants_1\":64,\"chest_2\":0,\"glasses_1\":0,\"bproof_2\":0,\"lipstick_4\":0,\"age_1\":0,\"blush_1\":0,\"shoes_1\":8,\"decals_2\":0,\"tshirt_2\":0,\"beard_2\":0,\"hair_color_2\":0,\"moles_2\":0,\"jaw_2\":0,\"skin_md_weight\":50}}]}'),
(1158, 'society_cardealer', 'steam:11000014292f4b2', '{}'),
(1159, 'housing', 'steam:11000014292f4b2', '{}'),
(1160, 'user_ears', 'steam:1100001442255b5', '{}'),
(1161, 'user_glasses', 'steam:1100001442255b5', '{}'),
(1162, 'user_helmet', 'steam:1100001442255b5', '{}'),
(1163, 'user_mask', 'steam:1100001442255b5', '{}'),
(1164, 'vault', 'steam:1100001442255b5', '{}'),
(1165, 'housing', 'steam:1100001442255b5', '{}'),
(1166, 'property', 'steam:1100001442255b5', '{\"dressing\":[{\"label\":\"Chief outfit\",\"skin\":{\"eyebrows_2\":10,\"age_1\":0,\"beard_3\":0,\"pants_2\":0,\"hair_color_2\":1,\"chin_1\":0,\"bproof_1\":0,\"moles_2\":0,\"dad\":29,\"lipstick_1\":0,\"chain_2\":0,\"makeup_3\":0,\"ears_1\":-1,\"makeup_2\":0,\"blemishes_1\":0,\"arms\":14,\"decals_1\":0,\"hair_2\":0,\"bracelets_2\":0,\"bodyb_1\":-1,\"cheeks_2\":0,\"skin_md_weight\":50,\"blush_2\":0,\"cheeks_3\":0,\"bracelets_1\":-1,\"chest_1\":0,\"chin_4\":0,\"nose_2\":0,\"shoes_2\":0,\"helmet_1\":50,\"nose_3\":0,\"nose_1\":0,\"chest_2\":0,\"complexion_1\":0,\"complexion_2\":0,\"nose_6\":0,\"mask_2\":0,\"tshirt_1\":37,\"beard_1\":0,\"bags_2\":0,\"moles_1\":0,\"bproof_2\":0,\"eye_squint\":8,\"bodyb_4\":0,\"makeup_4\":0,\"torso_2\":0,\"nose_5\":0,\"blush_1\":0,\"chest_3\":0,\"bodyb_3\":-1,\"neck_thickness\":0,\"eyebrows_1\":2,\"lip_thickness\":0,\"eye_color\":3,\"watches_1\":-1,\"hair_color_1\":3,\"bags_1\":0,\"glasses_2\":0,\"jaw_1\":0,\"mask_1\":0,\"shoes_1\":32,\"chin_3\":0,\"sex\":1,\"mom\":45,\"lipstick_3\":0,\"beard_2\":0,\"eyebrows_5\":0,\"watches_2\":0,\"arms_2\":0,\"eyebrows_4\":0,\"sun_2\":0,\"makeup_1\":0,\"chain_1\":0,\"lipstick_2\":0,\"eyebrows_6\":0,\"decals_2\":0,\"face_md_weight\":50,\"sun_1\":0,\"eyebrows_3\":1,\"age_2\":0,\"chin_2\":0,\"nose_4\":0,\"tshirt_2\":0,\"hair_1\":65,\"blemishes_2\":0,\"cheeks_1\":0,\"pants_1\":38,\"beard_4\":0,\"torso_1\":84,\"glasses_1\":5,\"helmet_2\":0,\"lipstick_4\":0,\"blush_3\":0,\"bodyb_2\":0,\"ears_2\":0,\"jaw_2\":0}},{\"label\":\"officer\",\"skin\":{\"eyebrows_2\":0,\"age_1\":0,\"beard_3\":0,\"pants_2\":0,\"hair_color_2\":0,\"chin_1\":0,\"arms_2\":0,\"moles_2\":0,\"dad\":0,\"lipstick_1\":0,\"chain_2\":0,\"makeup_3\":0,\"glasses_2\":0,\"makeup_2\":0,\"blemishes_1\":0,\"arms\":0,\"decals_1\":1,\"hair_2\":0,\"bracelets_2\":0,\"bodyb_1\":-1,\"cheeks_2\":0,\"skin_md_weight\":50,\"jaw_1\":0,\"cheeks_3\":0,\"bracelets_1\":-1,\"chest_1\":0,\"chin_4\":0,\"lipstick_4\":0,\"shoes_2\":0,\"helmet_1\":-1,\"nose_3\":0,\"nose_1\":0,\"chest_2\":0,\"complexion_1\":0,\"complexion_2\":0,\"nose_6\":0,\"mask_2\":0,\"chest_3\":0,\"lipstick_2\":0,\"bags_2\":0,\"moles_1\":0,\"bproof_2\":0,\"cheeks_1\":0,\"bodyb_4\":0,\"tshirt_1\":53,\"torso_2\":0,\"bproof_1\":3,\"blush_1\":0,\"makeup_4\":0,\"lip_thickness\":0,\"sun_2\":0,\"blush_2\":0,\"bodyb_3\":-1,\"eye_color\":0,\"watches_1\":-1,\"hair_color_1\":0,\"bags_1\":0,\"nose_5\":0,\"neck_thickness\":0,\"eye_squint\":0,\"shoes_1\":67,\"chin_3\":0,\"sex\":0,\"mom\":21,\"beard_4\":0,\"eyebrows_5\":0,\"beard_2\":0,\"watches_2\":0,\"eyebrows_4\":0,\"mask_1\":0,\"nose_2\":0,\"makeup_1\":0,\"chain_1\":0,\"beard_1\":0,\"eyebrows_6\":0,\"eyebrows_1\":0,\"face_md_weight\":50,\"sun_1\":0,\"eyebrows_3\":0,\"age_2\":0,\"chin_2\":0,\"nose_4\":0,\"tshirt_2\":0,\"hair_1\":0,\"decals_2\":0,\"blemishes_2\":0,\"pants_1\":10,\"ears_1\":-1,\"torso_1\":2,\"glasses_1\":0,\"helmet_2\":0,\"lipstick_3\":0,\"blush_3\":0,\"ears_2\":0,\"bodyb_2\":0,\"jaw_2\":0}},{\"label\":\"deputy chief outfit\",\"skin\":{\"eyebrows_2\":0,\"age_1\":0,\"beard_3\":0,\"pants_2\":0,\"hair_color_2\":0,\"chin_1\":0,\"sun_1\":0,\"moles_2\":0,\"dad\":0,\"lipstick_1\":0,\"chain_2\":0,\"makeup_3\":0,\"glasses_2\":0,\"makeup_2\":0,\"blemishes_1\":0,\"arms\":4,\"decals_1\":1,\"hair_2\":0,\"bracelets_2\":0,\"bodyb_1\":-1,\"cheeks_2\":0,\"skin_md_weight\":50,\"blush_2\":0,\"cheeks_3\":0,\"bracelets_1\":-1,\"chest_1\":0,\"chin_4\":0,\"nose_2\":0,\"shoes_2\":0,\"helmet_1\":-1,\"nose_3\":0,\"nose_1\":0,\"chest_2\":0,\"complexion_1\":0,\"complexion_2\":0,\"nose_6\":0,\"mask_2\":0,\"chest_3\":0,\"lipstick_2\":0,\"bags_2\":0,\"tshirt_1\":53,\"bproof_2\":0,\"blemishes_2\":0,\"bodyb_4\":0,\"lipstick_4\":0,\"torso_2\":0,\"makeup_4\":0,\"blush_1\":0,\"moles_1\":0,\"sun_2\":0,\"cheeks_1\":0,\"eyebrows_1\":0,\"lip_thickness\":0,\"eye_color\":0,\"watches_1\":-1,\"hair_color_1\":0,\"bags_1\":0,\"jaw_1\":0,\"eye_squint\":0,\"sex\":0,\"shoes_1\":67,\"chin_3\":0,\"neck_thickness\":0,\"mom\":21,\"lipstick_3\":0,\"eyebrows_5\":0,\"beard_2\":0,\"watches_2\":0,\"eyebrows_4\":0,\"arms_2\":0,\"chain_1\":0,\"makeup_1\":0,\"beard_1\":0,\"bodyb_3\":-1,\"eyebrows_6\":0,\"bproof_1\":3,\"face_md_weight\":50,\"ears_2\":0,\"eyebrows_3\":0,\"age_2\":0,\"chin_2\":0,\"nose_4\":0,\"tshirt_2\":0,\"beard_4\":0,\"hair_1\":0,\"nose_5\":0,\"pants_1\":10,\"mask_1\":0,\"torso_1\":185,\"glasses_1\":0,\"helmet_2\":0,\"bodyb_2\":0,\"blush_3\":0,\"ears_1\":-1,\"decals_2\":0,\"jaw_2\":0}},{\"label\":\"officer 2\",\"skin\":{\"eyebrows_2\":0,\"age_1\":0,\"beard_3\":0,\"pants_2\":0,\"hair_color_2\":0,\"chin_1\":0,\"arms_2\":0,\"moles_2\":0,\"dad\":0,\"lipstick_1\":0,\"chain_2\":0,\"makeup_3\":0,\"glasses_2\":0,\"makeup_2\":0,\"blemishes_1\":0,\"arms\":0,\"decals_1\":1,\"hair_2\":0,\"bracelets_2\":0,\"bodyb_1\":-1,\"cheeks_2\":0,\"skin_md_weight\":50,\"jaw_1\":0,\"cheeks_3\":0,\"bracelets_1\":-1,\"chest_1\":0,\"chin_4\":0,\"lipstick_4\":0,\"shoes_2\":0,\"helmet_1\":-1,\"nose_3\":0,\"nose_1\":0,\"chest_2\":0,\"complexion_1\":0,\"complexion_2\":0,\"nose_6\":0,\"mask_2\":0,\"chest_3\":0,\"chain_1\":0,\"bags_2\":0,\"moles_1\":0,\"bproof_2\":0,\"sun_2\":0,\"bodyb_4\":0,\"sun_1\":0,\"torso_2\":0,\"makeup_4\":0,\"blush_1\":0,\"bodyb_3\":-1,\"tshirt_1\":132,\"lip_thickness\":0,\"blush_2\":0,\"eyebrows_1\":0,\"eye_color\":0,\"watches_1\":-1,\"hair_color_1\":0,\"bags_1\":0,\"cheeks_1\":0,\"neck_thickness\":0,\"beard_2\":0,\"shoes_1\":67,\"mask_1\":0,\"sex\":0,\"mom\":21,\"beard_4\":0,\"nose_5\":0,\"eyebrows_5\":0,\"watches_2\":0,\"eye_squint\":0,\"eyebrows_4\":0,\"decals_2\":0,\"makeup_1\":0,\"nose_2\":0,\"ears_2\":0,\"eyebrows_6\":0,\"beard_1\":0,\"face_md_weight\":50,\"ears_1\":-1,\"eyebrows_3\":0,\"age_2\":0,\"chin_2\":0,\"nose_4\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_1\":0,\"blemishes_2\":0,\"pants_1\":10,\"chin_3\":0,\"torso_1\":216,\"bodyb_2\":0,\"helmet_2\":0,\"lipstick_3\":0,\"blush_3\":0,\"bproof_1\":3,\"glasses_1\":0,\"jaw_2\":0}},{\"label\":\"cadet\",\"skin\":{\"eyebrows_2\":0,\"age_1\":0,\"beard_3\":0,\"pants_2\":0,\"hair_color_2\":0,\"chin_1\":0,\"bproof_1\":16,\"moles_2\":0,\"dad\":0,\"lipstick_1\":0,\"chain_2\":0,\"makeup_3\":0,\"glasses_2\":0,\"makeup_2\":0,\"blemishes_1\":0,\"arms\":5,\"decals_1\":1,\"hair_2\":0,\"bracelets_2\":0,\"bodyb_1\":-1,\"cheeks_2\":0,\"skin_md_weight\":50,\"jaw_1\":0,\"cheeks_3\":0,\"bracelets_1\":-1,\"chest_1\":0,\"chin_4\":0,\"lipstick_4\":0,\"shoes_2\":0,\"helmet_1\":-1,\"nose_3\":0,\"nose_1\":0,\"chest_2\":0,\"complexion_1\":0,\"complexion_2\":0,\"nose_6\":0,\"mask_2\":0,\"tshirt_1\":68,\"chain_1\":0,\"bags_2\":0,\"moles_1\":0,\"bproof_2\":1,\"bodyb_3\":-1,\"bodyb_4\":0,\"beard_4\":0,\"torso_2\":4,\"makeup_4\":0,\"blush_1\":0,\"lipstick_2\":0,\"nose_5\":0,\"blush_2\":0,\"sun_2\":0,\"eyebrows_1\":0,\"eye_color\":0,\"watches_1\":-1,\"hair_color_1\":0,\"bags_1\":0,\"lip_thickness\":0,\"mask_1\":0,\"arms_2\":0,\"shoes_1\":67,\"chin_3\":0,\"eyebrows_5\":0,\"mom\":21,\"lipstick_3\":0,\"sex\":0,\"neck_thickness\":0,\"watches_2\":0,\"beard_2\":0,\"blemishes_2\":0,\"eyebrows_4\":0,\"makeup_1\":0,\"chest_3\":0,\"cheeks_1\":0,\"eyebrows_6\":0,\"beard_1\":0,\"face_md_weight\":50,\"ears_2\":0,\"eyebrows_3\":0,\"age_2\":0,\"chin_2\":0,\"nose_4\":0,\"tshirt_2\":0,\"eye_squint\":0,\"nose_2\":0,\"hair_1\":0,\"pants_1\":10,\"decals_2\":0,\"torso_1\":436,\"bodyb_2\":0,\"helmet_2\":0,\"sun_1\":0,\"blush_3\":0,\"ears_1\":-1,\"glasses_1\":0,\"jaw_2\":0}},{\"label\":\"chief\",\"skin\":{\"eyebrows_2\":10,\"age_1\":0,\"beard_3\":0,\"pants_2\":7,\"hair_color_2\":3,\"chin_1\":0,\"arms_2\":0,\"moles_2\":0,\"dad\":29,\"lipstick_1\":9,\"chain_2\":0,\"makeup_3\":1,\"ears_1\":-1,\"makeup_2\":0,\"blemishes_1\":0,\"arms\":1,\"decals_1\":0,\"hair_2\":0,\"bracelets_2\":0,\"bodyb_1\":-1,\"cheeks_2\":0,\"skin_md_weight\":50,\"jaw_1\":0,\"cheeks_3\":0,\"bracelets_1\":-1,\"chest_1\":0,\"chin_4\":0,\"lipstick_4\":0,\"shoes_2\":1,\"helmet_1\":50,\"nose_3\":0,\"nose_1\":0,\"chest_2\":0,\"complexion_1\":0,\"complexion_2\":0,\"nose_6\":0,\"mask_2\":0,\"chest_3\":0,\"beard_1\":0,\"bags_2\":0,\"glasses_2\":0,\"bproof_2\":1,\"eye_squint\":0,\"bodyb_4\":0,\"makeup_4\":1,\"torso_2\":0,\"tshirt_1\":37,\"blush_1\":0,\"bodyb_3\":-1,\"sun_2\":0,\"moles_1\":0,\"eyebrows_1\":1,\"lip_thickness\":0,\"eye_color\":2,\"watches_1\":-1,\"hair_color_1\":2,\"bags_1\":0,\"blush_2\":0,\"mask_1\":0,\"lipstick_2\":0,\"shoes_1\":73,\"chin_3\":0,\"sex\":1,\"mom\":45,\"beard_4\":0,\"beard_2\":0,\"eyebrows_5\":1,\"watches_2\":0,\"cheeks_1\":0,\"eyebrows_4\":1,\"nose_5\":0,\"makeup_1\":0,\"neck_thickness\":0,\"chain_1\":0,\"eyebrows_6\":0,\"decals_2\":0,\"face_md_weight\":50,\"nose_2\":0,\"eyebrows_3\":1,\"age_2\":0,\"chin_2\":0,\"nose_4\":0,\"tshirt_2\":0,\"hair_1\":65,\"lipstick_3\":19,\"blemishes_2\":0,\"pants_1\":11,\"ears_2\":0,\"torso_1\":97,\"glasses_1\":5,\"helmet_2\":0,\"bproof_1\":3,\"blush_3\":0,\"sun_1\":0,\"bodyb_2\":0,\"jaw_2\":0}},{\"label\":\"Female officer\",\"skin\":{\"eyebrows_2\":10,\"age_1\":0,\"beard_3\":0,\"pants_2\":0,\"hair_color_2\":3,\"chin_1\":0,\"bproof_1\":2,\"moles_2\":0,\"dad\":29,\"lipstick_1\":9,\"chain_2\":0,\"makeup_3\":1,\"ears_1\":-1,\"makeup_2\":0,\"blemishes_1\":0,\"arms\":2,\"decals_1\":0,\"hair_2\":0,\"bracelets_2\":0,\"bodyb_1\":-1,\"cheeks_2\":0,\"skin_md_weight\":50,\"jaw_1\":0,\"cheeks_3\":0,\"bracelets_1\":-1,\"chest_1\":0,\"chin_4\":0,\"lipstick_4\":0,\"shoes_2\":1,\"helmet_1\":-1,\"nose_3\":0,\"nose_1\":0,\"chest_2\":0,\"complexion_1\":0,\"complexion_2\":0,\"nose_6\":0,\"mask_2\":0,\"chest_3\":0,\"chain_1\":0,\"bags_2\":0,\"moles_1\":0,\"bproof_2\":1,\"neck_thickness\":0,\"bodyb_4\":0,\"ears_2\":0,\"torso_2\":0,\"makeup_4\":1,\"blush_1\":0,\"nose_2\":0,\"blush_2\":0,\"eyebrows_1\":1,\"nose_5\":0,\"bodyb_3\":-1,\"eye_color\":2,\"watches_1\":-1,\"hair_color_1\":2,\"bags_1\":0,\"lip_thickness\":0,\"lipstick_2\":0,\"beard_2\":0,\"shoes_1\":77,\"chin_3\":0,\"sex\":1,\"mom\":45,\"beard_4\":0,\"blemishes_2\":0,\"eyebrows_5\":1,\"watches_2\":0,\"eye_squint\":0,\"eyebrows_4\":1,\"tshirt_1\":37,\"makeup_1\":0,\"glasses_2\":0,\"sun_2\":0,\"eyebrows_6\":0,\"sun_1\":0,\"face_md_weight\":50,\"beard_1\":0,\"eyebrows_3\":1,\"age_2\":0,\"chin_2\":0,\"nose_4\":0,\"tshirt_2\":0,\"cheeks_1\":0,\"hair_1\":65,\"mask_1\":0,\"pants_1\":6,\"decals_2\":0,\"torso_1\":84,\"glasses_1\":5,\"helmet_2\":0,\"bodyb_2\":0,\"blush_3\":0,\"lipstick_3\":19,\"arms_2\":0,\"jaw_2\":0}},{\"label\":\"cadet\",\"skin\":{\"eyebrows_2\":10,\"age_1\":0,\"beard_3\":0,\"pants_2\":0,\"hair_color_2\":3,\"chin_1\":0,\"sun_1\":0,\"moles_2\":0,\"dad\":29,\"lipstick_1\":9,\"chain_2\":0,\"makeup_3\":1,\"ears_1\":-1,\"makeup_2\":0,\"blemishes_1\":0,\"arms\":2,\"decals_1\":0,\"hair_2\":0,\"bracelets_2\":0,\"bodyb_1\":-1,\"cheeks_2\":0,\"skin_md_weight\":50,\"jaw_1\":0,\"cheeks_3\":0,\"bracelets_1\":-1,\"chest_1\":0,\"chin_4\":0,\"lipstick_4\":0,\"shoes_2\":1,\"helmet_1\":-1,\"nose_3\":0,\"nose_1\":0,\"chest_2\":0,\"complexion_1\":0,\"complexion_2\":0,\"nose_6\":0,\"mask_2\":0,\"chest_3\":0,\"lipstick_2\":0,\"bags_2\":0,\"tshirt_1\":38,\"bproof_2\":1,\"moles_1\":0,\"bodyb_4\":0,\"blemishes_2\":0,\"torso_2\":0,\"makeup_4\":1,\"blush_1\":0,\"bodyb_3\":-1,\"blush_2\":0,\"cheeks_1\":0,\"eyebrows_1\":1,\"lip_thickness\":0,\"eye_color\":2,\"watches_1\":-1,\"hair_color_1\":2,\"bags_1\":0,\"nose_5\":0,\"arms_2\":0,\"sex\":1,\"shoes_1\":77,\"mask_1\":0,\"eye_squint\":0,\"mom\":45,\"lipstick_3\":19,\"eyebrows_5\":1,\"beard_2\":0,\"watches_2\":0,\"eyebrows_4\":1,\"sun_2\":0,\"ears_2\":0,\"makeup_1\":0,\"nose_2\":0,\"beard_1\":0,\"eyebrows_6\":0,\"chain_1\":0,\"face_md_weight\":50,\"glasses_2\":0,\"eyebrows_3\":1,\"age_2\":0,\"chin_2\":0,\"nose_4\":0,\"tshirt_2\":1,\"beard_4\":0,\"hair_1\":65,\"neck_thickness\":0,\"pants_1\":6,\"decals_2\":0,\"torso_1\":84,\"glasses_1\":5,\"helmet_2\":0,\"chin_3\":0,\"blush_3\":0,\"bproof_1\":0,\"bodyb_2\":0,\"jaw_2\":0}},{\"label\":\"chief me\",\"skin\":{\"eyebrows_2\":10,\"age_1\":0,\"beard_3\":0,\"pants_2\":0,\"hair_color_2\":3,\"chin_1\":0,\"arms_2\":0,\"face\":0,\"moles_2\":0,\"dad\":29,\"lipstick_1\":9,\"chain_2\":0,\"makeup_3\":1,\"glasses_2\":0,\"makeup_2\":0,\"blemishes_1\":0,\"arms\":1,\"decals_1\":0,\"hair_2\":0,\"bracelets_2\":0,\"bodyb_1\":-1,\"cheeks_2\":0,\"skin_md_weight\":50,\"jaw_1\":0,\"cheeks_3\":0,\"bracelets_1\":-1,\"chest_1\":0,\"moles_1\":0,\"lipstick_4\":0,\"shoes_2\":1,\"helmet_1\":50,\"nose_3\":0,\"nose_1\":0,\"chest_2\":0,\"decals_2\":0,\"complexion_1\":0,\"complexion_2\":0,\"nose_6\":0,\"mask_2\":0,\"tshirt_1\":37,\"lipstick_2\":0,\"bags_2\":0,\"cheeks_1\":0,\"bproof_2\":1,\"bproof_1\":3,\"bodyb_4\":0,\"makeup_4\":1,\"torso_2\":0,\"bodyb_3\":-1,\"blush_1\":0,\"chest_3\":0,\"blush_2\":0,\"eyebrows_1\":1,\"lip_thickness\":0,\"chain_1\":0,\"eye_color\":2,\"watches_1\":-1,\"hair_color_1\":2,\"bags_1\":0,\"mask_1\":0,\"chin_4\":0,\"sex\":1,\"shoes_1\":73,\"chin_3\":0,\"sun_2\":0,\"mom\":45,\"lipstick_3\":19,\"eyebrows_5\":1,\"beard_2\":0,\"watches_2\":0,\"sun_1\":0,\"eyebrows_4\":1,\"blemishes_2\":0,\"makeup_1\":0,\"nose_2\":0,\"nose_5\":0,\"eyebrows_6\":0,\"beard_1\":0,\"face_md_weight\":50,\"ears_1\":-1,\"eyebrows_3\":1,\"age_2\":0,\"chin_2\":0,\"nose_4\":0,\"tshirt_2\":0,\"eye_squint\":0,\"beard_4\":0,\"hair_1\":65,\"pants_1\":55,\"ears_2\":0,\"torso_1\":97,\"glasses_1\":5,\"helmet_2\":0,\"neck_thickness\":0,\"blush_3\":0,\"skin\":0,\"bodyb_2\":0,\"jaw_2\":0}},{\"label\":\"chief me\",\"skin\":{\"eyebrows_2\":10,\"age_1\":0,\"beard_3\":0,\"pants_2\":5,\"hair_color_2\":3,\"chin_1\":0,\"arms_2\":0,\"face\":0,\"moles_2\":0,\"hair_1\":65,\"lipstick_1\":9,\"chain_2\":0,\"makeup_3\":1,\"glasses_2\":0,\"makeup_2\":0,\"blemishes_1\":0,\"arms\":2,\"decals_1\":0,\"hair_2\":0,\"bracelets_2\":0,\"bodyb_1\":-1,\"cheeks_2\":0,\"skin_md_weight\":50,\"blush_2\":0,\"cheeks_3\":0,\"bracelets_1\":-1,\"chest_1\":0,\"chin_4\":0,\"lipstick_4\":0,\"shoes_2\":0,\"helmet_1\":50,\"nose_3\":0,\"nose_1\":0,\"chest_2\":0,\"cheeks_1\":0,\"complexion_1\":0,\"complexion_2\":0,\"nose_6\":0,\"mask_2\":0,\"chest_3\":0,\"lipstick_2\":0,\"bags_2\":0,\"chain_1\":0,\"bproof_2\":1,\"dad\":29,\"bodyb_4\":0,\"makeup_4\":1,\"torso_2\":5,\"decals_2\":0,\"blush_1\":0,\"eyebrows_1\":1,\"tshirt_1\":37,\"moles_1\":0,\"bodyb_3\":-1,\"lip_thickness\":0,\"eye_color\":2,\"watches_1\":-1,\"hair_color_1\":2,\"bags_1\":0,\"jaw_1\":0,\"mask_1\":0,\"sex\":1,\"shoes_1\":77,\"chin_3\":0,\"sun_2\":0,\"mom\":45,\"beard_4\":0,\"eyebrows_5\":1,\"beard_2\":0,\"watches_2\":0,\"eyebrows_4\":1,\"blemishes_2\":0,\"nose_2\":0,\"makeup_1\":0,\"nose_5\":0,\"beard_1\":0,\"eyebrows_6\":0,\"sun_1\":0,\"face_md_weight\":50,\"eye_squint\":0,\"eyebrows_3\":1,\"age_2\":0,\"chin_2\":0,\"nose_4\":0,\"tshirt_2\":0,\"ears_1\":-1,\"neck_thickness\":0,\"lipstick_3\":19,\"pants_1\":41,\"bproof_1\":3,\"torso_1\":139,\"ears_2\":0,\"helmet_2\":0,\"glasses_1\":5,\"blush_3\":0,\"skin\":0,\"bodyb_2\":0,\"jaw_2\":0}},{\"label\":\"echo\",\"skin\":{\"eyebrows_2\":10,\"age_1\":0,\"beard_3\":0,\"pants_2\":0,\"hair_color_2\":3,\"chin_1\":0,\"sun_1\":0,\"face\":0,\"moles_2\":0,\"dad\":29,\"lipstick_1\":9,\"chain_2\":0,\"makeup_3\":1,\"glasses_2\":0,\"makeup_2\":0,\"blemishes_1\":0,\"cheeks_1\":0,\"decals_1\":66,\"hair_2\":0,\"bracelets_2\":0,\"bodyb_1\":-1,\"cheeks_2\":0,\"skin_md_weight\":50,\"jaw_1\":0,\"cheeks_3\":0,\"bracelets_1\":-1,\"chest_1\":0,\"chin_4\":0,\"lipstick_4\":0,\"shoes_2\":2,\"helmet_1\":-1,\"nose_3\":0,\"nose_1\":0,\"chest_2\":0,\"bodyb_3\":-1,\"complexion_1\":0,\"complexion_2\":0,\"nose_6\":0,\"mask_2\":0,\"tshirt_1\":10,\"lipstick_2\":0,\"bags_2\":0,\"chest_3\":0,\"bproof_2\":0,\"eye_squint\":0,\"bodyb_4\":0,\"makeup_4\":1,\"torso_2\":0,\"chain_1\":106,\"blush_1\":0,\"moles_1\":0,\"blush_2\":0,\"decals_2\":0,\"eyebrows_1\":1,\"lip_thickness\":0,\"eye_color\":2,\"watches_1\":-1,\"hair_color_1\":2,\"bags_1\":0,\"arms_2\":0,\"mask_1\":0,\"sex\":1,\"shoes_1\":85,\"chin_3\":0,\"hair_1\":65,\"mom\":45,\"beard_4\":0,\"eyebrows_5\":1,\"beard_2\":0,\"watches_2\":0,\"eyebrows_4\":1,\"sun_2\":0,\"blemishes_2\":0,\"makeup_1\":0,\"nose_2\":0,\"nose_5\":0,\"eyebrows_6\":0,\"beard_1\":0,\"face_md_weight\":50,\"ears_2\":0,\"eyebrows_3\":1,\"age_2\":0,\"chin_2\":0,\"nose_4\":0,\"tshirt_2\":0,\"arms\":33,\"ears_1\":-1,\"neck_thickness\":0,\"pants_1\":41,\"lipstick_3\":19,\"torso_1\":63,\"bodyb_2\":0,\"helmet_2\":0,\"bproof_1\":0,\"blush_3\":0,\"skin\":0,\"glasses_1\":5,\"jaw_2\":0}},{\"label\":\"Delta\",\"skin\":{\"eyebrows_2\":10,\"age_1\":0,\"beard_3\":0,\"pants_2\":0,\"hair_color_2\":3,\"chin_1\":0,\"arms_2\":0,\"face\":0,\"moles_2\":0,\"dad\":29,\"lipstick_1\":9,\"chain_2\":0,\"makeup_3\":1,\"glasses_2\":0,\"makeup_2\":0,\"blemishes_1\":0,\"arms\":33,\"decals_1\":66,\"hair_2\":0,\"bracelets_2\":0,\"bodyb_1\":-1,\"cheeks_2\":0,\"skin_md_weight\":50,\"blush_2\":0,\"cheeks_3\":0,\"bracelets_1\":-1,\"chest_1\":0,\"chin_4\":0,\"lipstick_4\":0,\"shoes_2\":2,\"helmet_1\":-1,\"nose_3\":0,\"nose_1\":0,\"chest_2\":0,\"eyebrows_1\":1,\"complexion_1\":0,\"complexion_2\":0,\"nose_6\":0,\"mask_2\":0,\"chest_3\":0,\"lipstick_2\":0,\"bags_2\":0,\"eye_squint\":0,\"bproof_2\":0,\"makeup_4\":1,\"bodyb_4\":0,\"bproof_1\":0,\"torso_2\":1,\"ears_1\":-1,\"blush_1\":0,\"bodyb_3\":-1,\"lip_thickness\":0,\"chain_1\":106,\"nose_2\":0,\"jaw_1\":0,\"eye_color\":2,\"watches_1\":-1,\"hair_color_1\":2,\"bags_1\":0,\"decals_2\":0,\"sex\":1,\"moles_1\":0,\"shoes_1\":85,\"mask_1\":0,\"eyebrows_5\":1,\"mom\":45,\"beard_4\":0,\"beard_2\":0,\"glasses_1\":5,\"watches_2\":0,\"eyebrows_4\":1,\"nose_5\":0,\"sun_2\":0,\"makeup_1\":0,\"sun_1\":0,\"tshirt_1\":10,\"eyebrows_6\":0,\"beard_1\":0,\"face_md_weight\":50,\"blemishes_2\":0,\"eyebrows_3\":1,\"age_2\":0,\"chin_2\":0,\"nose_4\":0,\"tshirt_2\":0,\"lipstick_3\":19,\"hair_1\":65,\"chin_3\":0,\"pants_1\":41,\"neck_thickness\":0,\"torso_1\":286,\"bodyb_2\":0,\"helmet_2\":0,\"cheeks_1\":0,\"blush_3\":0,\"skin\":0,\"ears_2\":0,\"jaw_2\":0}}]}'),
(1167, 'society_cardealer', 'steam:1100001442255b5', '{}'),
(1168, 'user_ears', 'steam:11000013d4486db', '{}'),
(1169, 'user_helmet', 'steam:11000013d4486db', '{}'),
(1170, 'property', 'steam:11000013d4486db', '{}'),
(1171, 'vault', 'steam:11000013d4486db', '{}'),
(1172, 'user_glasses', 'steam:11000013d4486db', '{}'),
(1173, 'user_mask', 'steam:11000013d4486db', '{}'),
(1174, 'society_cardealer', 'steam:11000013d4486db', '{}'),
(1175, 'user_ears', 'steam:1100001468a4d74', '{}'),
(1176, 'user_glasses', 'steam:1100001468a4d74', '{}'),
(1177, 'user_helmet', 'steam:1100001468a4d74', '{}'),
(1178, 'user_mask', 'steam:1100001468a4d74', '{}'),
(1179, 'vault', 'steam:1100001468a4d74', '{}'),
(1180, 'property', 'steam:1100001468a4d74', '{}'),
(1181, 'society_cardealer', 'steam:1100001468a4d74', '{}'),
(1182, 'housing', 'steam:1100001468a4d74', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `doors`
--

CREATE TABLE `doors` (
  `index` int(11) NOT NULL,
  `door` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Abuse of the horn', 30, 0),
(2, 'Cross a continuous line', 40, 0),
(3, 'Circulation contrary to', 250, 0),
(4, 'Unauthorized U-turn', 250, 0),
(5, 'Off-road traffic', 170, 0),
(6, 'Failure to respect safety distances', 30, 0),
(7, 'Dangerous / forbidden stop', 150, 0),
(8, 'Parking awkward / forbidden', 70, 0),
(9, 'Not respecting the priority on the right', 70, 0),
(10, 'Non-compliance with a priority vehicle', 90, 0),
(11, 'Failure to stop', 105, 0),
(12, 'Failure to comply with a red light', 130, 0),
(13, 'Dangerous overtaking', 100, 0),
(14, 'Vehicle not in safe state', 100, 0),
(15, 'Driving without a license', 1500, 0),
(16, 'Hit and run', 800, 0),
(19, 'Driving under speedlimit', 180, 0),
(20, 'Speeding', 300, 0),
(21, 'Obstruction of traffic', 110, 1),
(22, 'Degradation of the public road', 90, 1),
(23, 'Trouble with public order', 90, 1),
(24, 'Obstructing police operation', 130, 1),
(25, 'Insulte envers / entre civils', 75, 1),
(26, 'Outrage to police officer', 110, 1),
(27, 'Verbal threat or intimidation towards civil', 90, 1),
(28, 'Verbal threat or intimidation of a police officer', 150, 1),
(29, 'Illegal protest', 250, 1),
(30, 'Attempted corruption', 1500, 1),
(31, 'Legal Weapon Out in Town', 120, 2),
(32, 'Lethal Weapon Out in Town', 300, 2),
(33, 'Weapon Not Allowed (License Failure)', 600, 2),
(34, 'illegal weapon', 1000, 2),
(35, 'Illegal items', 500, 2),
(36, 'Vehicle Theft', 1800, 2),
(37, 'Sale of drugs', 1500, 2),
(38, 'Drug manufacture', 1500, 2),
(39, '\r\nPossession of drugs', 650, 2),
(40, 'Civil dispute', 1500, 2),
(41, 'Takeover agent of the state', 2000, 2),
(42, 'Special deflection', 650, 2),
(43, 'Store robbing', 1500, 2),
(44, 'Bank robbery', 2500, 2),
(45, 'Civilian shooting', 2000, 3),
(46, 'Shooting on police officer', 2500, 3),
(47, 'Attempted murder on civil', 3000, 3),
(48, 'Attempted murder on officer', 5000, 3),
(49, 'Murder on civil', 10000, 3),
(50, 'Murder on state agent', 30000, 3),
(51, 'Manslaughter', 1800, 3),
(52, 'Business scam', 2000, 2),
(53, 'House Robbery', 2500, 2),
(54, 'Wearing Officers cloth', 50000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_fsgang`
--

CREATE TABLE `fine_types_fsgang` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fine_types_fsgang`
--

INSERT INTO `fine_types_fsgang` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `gas_station_business`
--

CREATE TABLE `gas_station_business` (
  `gas_station_id` varchar(50) NOT NULL DEFAULT '',
  `user_id` varchar(50) NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stock_upgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `truck_upgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `relationship_upgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `money` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_money_earned` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_money_spent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gas_bought` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gas_sold` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `distance_traveled` double UNSIGNED NOT NULL DEFAULT 0,
  `total_visits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `customers` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `timer` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gas_station_business`
--

INSERT INTO `gas_station_business` (`gas_station_id`, `user_id`, `stock`, `price`, `stock_upgrade`, `truck_upgrade`, `relationship_upgrade`, `money`, `total_money_earned`, `total_money_spent`, `gas_bought`, `gas_sold`, `distance_traveled`, `total_visits`, `customers`, `timer`) VALUES
('gas_station_1', 'steam:1100001468829f9', 300, 1000, 5, 5, 5, 1325100, 0, 674900, 300, 0, 6.04, 0, 0, 1651864311);

-- --------------------------------------------------------

--
-- Table structure for table `gas_station_jobs`
--

CREATE TABLE `gas_station_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `gas_station_id` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL,
  `reward` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `progress` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gas_station_jobs`
--

INSERT INTO `gas_station_jobs` (`id`, `gas_station_id`, `name`, `reward`, `amount`, `progress`) VALUES
(1, 'gas_station_1', 'Dilivery boy', 40000, 300, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) NOT NULL,
  `identifier` text DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `label` varchar(255) COLLATE utf8_bin NOT NULL,
  `limit` int(11) NOT NULL DEFAULT -1,
  `rare` int(11) NOT NULL DEFAULT 0,
  `can_remove` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
('access_key', 'Access Key', 1, 0, 1),
('acetone', 'Acetone', 5, 0, 1),
('afghan', 'Afghan', 5, 0, 1),
('alcool', 'Baileys', 5, 0, 1),
('alive_chicken', 'living chicken', 20, 0, 1),
('amnesia', 'Amnesia', 5, 0, 1),
('amphetamines', 'Amphetamines', 100, 0, 1),
('amphetamines_pooch', 'Amphetamines pouch', 50, 0, 1),
('armor', 'Armour', 5, 0, 1),
('balde1', 'Balde 1', 30, 0, 1),
('bandage', 'Bandage', 5, 0, 1),
('bankcard', 'Bank Card', 1, 0, 1),
('beer', 'beer', -1, 0, 1),
('bieredequalite', 'Bière de qualité', -1, 0, 1),
('bieremoyen', 'Bière moyen qualité', -1, 0, 1),
('bieresimple', 'Bière premier prix', -1, 0, 1),
('bolcacahuetes', 'Bol de cacahuètes', 5, 0, 1),
('bolchips', 'Bol de chips', 5, 0, 1),
('bolnoixcajou', 'Bol de noix de cajou', 5, 0, 1),
('bolpistache', 'Bol de pistaches', 5, 0, 1),
('bourbon', 'Bourbon', 1, 0, 1),
('brandy', 'Brandy', 150, 0, 1),
('bread', 'bread', -1, 0, 1),
('burger', 'Bacon Burgare', -1, 0, 1),
('cachaca', 'Cachaca', 1, 0, 1),
('caipirinha', 'Caipirinha', 2, 0, 1),
('cajadecamarones', 'Shrimp Box', 5, 0, 1),
('cajadecangrejos', 'Crab Box', 5, 0, 1),
('camarones', 'Shrimp', 20, 0, 1),
('camera', 'Camera', -1, 0, 1),
('cangrejos', 'Crabs', 20, 0, 1),
('cannabinoid', 'chemicals', 50, 0, 1),
('cannabis', 'Cannabis', 40, 0, 1),
('carokit', 'Kit carosserie', 3, 0, 1),
('carotool', 'outils carosserie', 4, 0, 1),
('cheese', 'Cheese', 5, 0, 1),
('cheesebows', 'OLW Ostbågar', -1, 0, 1),
('chicken', 'Chicken', 5, 0, 1),
('chips', 'Chips', -1, 0, 1),
('cigarett', 'Cigarett', -1, 0, 1),
('cigarette', 'cigarette', 10, 0, 1),
('clip', 'Weapon Clip', -1, 0, 1),
('clothe', 'clothes', 250, 0, 1),
('club_soda', 'Club soda', 1, 0, 1),
('cocacola', 'Coca Cola', -1, 0, 1),
('cocaine_cut', 'Cut Cocaine', -1, 0, 1),
('cocaine_packaged', 'Packaged Cocaine', -1, 0, 1),
('cocaine_uncut', 'Uncut Cocaine', -1, 0, 1),
('coconut_milk', 'Coconut milk', 1, 0, 1),
('coffee', 'Starbucks Coffee', 120, 0, 1),
('cointreau', 'Cointreau', 1, 0, 1),
('coke', 'Cocaine', 50, 0, 1),
('coke_pooch', 'Bag of coke (28G)', 28, 0, 1),
('combo1', 'Combo 1', 30, 0, 1),
('combo2', 'Combo 2', 30, 0, 1),
('combo3', 'Combo 3', 30, 0, 1),
('combo4', 'Combo 4', 30, 0, 1),
('combo5', 'Combo 5', 30, 0, 1),
('condom', 'CONDONES', 100, 0, 1),
('copper', 'copper', 56, 0, 1),
('cosmopolitan', 'Cosmopolitan', 2, 0, 1),
('crack', 'Crack Cocaine', 30, 0, 1),
('crack_pooch', 'Crack pouch', 50, 0, 1),
('cranberry_juice', 'Cranberry juice', 1, 0, 1),
('croquettes', 'Croquettes', 20, 0, 1),
('curacao', 'Orange Curacao liqeur', 1, 0, 1),
('cut_money', 'Counterfeit Cash - Cut', -1, 0, 1),
('cutted_wood', 'cut wood', 20, 0, 1),
('dark_rum', 'Dark rum', 1, 0, 1),
('diamond', 'diamond', 50, 0, 1),
('dj_tip', 'DJ Tips', 15, 0, 1),
('donut', 'Donut', 40, 0, 1),
('drill', 'Drill', -1, 0, 1),
('drpepper', 'Dr. Pepper', 10, 0, 1),
('ecstasy', 'Ecstasy', 100, 0, 1),
('ecstasy_pooch', 'Ecstasy pouch', 50, 0, 1),
('emerald', 'Emerald', 5, 0, 1),
('energy', 'Energy Drink', 10, 0, 1),
('essence', 'gas', 24, 0, 1),
('fabric', 'fabric', 80, 0, 1),
('fanta', 'Fanta Exotic', -1, 0, 1),
('farine', 'Farine', -1, 0, 1),
('fish', 'Fish', 100, 0, 1),
('fishbait', 'Fish Bait', 30, 0, 1),
('fishingrod', 'Fishing Rod', 2, 0, 1),
('fixkit', 'Repairkit', 5, 0, 1),
('fixtool', 'outils réparation', 6, 0, 1),
('fresh_mix', 'Fresh sour mix', 1, 0, 1),
('fried', 'Fried', 20, 0, 1),
('fried_chicken', 'Fried chicken', 80, 0, 1),
('gold', 'gold', 21, 0, 1),
('goldNecklace', 'Gold Necklace', -1, 0, 1),
('gold_rum', 'Gold rum', 1, 0, 1),
('goldbar', 'Gold Bar', 500, 0, 1),
('goldwatch', 'Gold Watch', 5000, 0, 1),
('golem', 'Golem', 5, 0, 1),
('hacking_laptop', 'Hacking Laptop', -1, 0, 1),
('handcuffs', 'handcuffs', -1, 0, 1),
('headbag', 'Head Bag', -1, 0, 1),
('heroine', 'Heroine', 100, 0, 1),
('heroine_pooch', 'Heroine pouch', 50, 0, 1),
('hotdog', 'Hot Dog', 160, 0, 1),
('ice', 'Ice', 1, 0, 1),
('icedtea', 'Iced Tea', 120, 0, 1),
('icetea', 'Ice Tea', 10, 0, 1),
('id_card_f', 'Malicious Access Card', 2, 3, 1),
('iphonex', 'IphoneX', -1, 0, 1),
('iron', 'iron', 42, 0, 1),
('jager', 'Jägermeister', 5, 0, 1),
('jagerbomb', 'Jägerbomb', 5, 0, 1),
('jagercerbere', 'Jäger Cerbère', 3, 0, 1),
('jagermeister', 'Jägermeister', 120, 0, 1),
('jewels', 'Jewels', -1, 0, 1),
('jewlery', 'Jewlery', -1, 0, 1),
('joint', 'Joint', 5, 0, 1),
('journal', 'Journal', 50, 0, 1),
('journaux', 'Paquet de Journaux', 25, 0, 1),
('jusfruit', 'Jus de fruits', 10, 0, 1),
('ketamine', 'Ketamine', 100, 0, 1),
('ketamine_pooch', 'Ketamine pouch', 50, 0, 1),
('key', 'key', -1, 0, 1),
('keycard', 'Keycard', 2, 0, 1),
('keys_master_key', 'Master Key', -1, 0, 1),
('keys_master_key_single_use', 'Master Key (Single Use)', -1, 0, 1),
('keys_missionrow_pd_front', 'Mission Row PD Key (Front)', -1, 0, 1),
('laptop', 'Laptop', -1, 0, 1),
('lean', 'Lean', 100, 0, 1),
('lean_pooch', 'Lean pouch', 50, 0, 1),
('leather', 'Leather', -1, 0, 1),
('lemonada', 'Lemonada', 5, 0, 1),
('levonorgestrel', 'Levonorgestrel', 100, 0, 1),
('licenseplate', 'License plate', -1, 0, 1),
('light_rum', 'Light rum', 1, 0, 1),
('lighter', 'Tändare', -1, 0, 1),
('lime', 'Lime', 1, 0, 1),
('limeade', 'Limeadge', 1, 0, 1),
('limonade', 'Limonade', 10, 0, 1),
('lingot_dor', 'Gold bar', -1, 0, 1),
('lithium', 'Lithium Batteries', 10, 0, 1),
('lockpick', 'lockpick', -1, 0, 1),
('lockpickv2', 'Lockpick (V2)', -1, 0, 1),
('loka', 'Loka Crush', -1, 0, 1),
('lotteryticket', 'Trisslott', -1, 0, 1),
('lowradio', 'Stock Radio', 5, 0, 1),
('lsd', 'Lsd', -1, 0, 1),
('lsd_pooch', 'Pochon de LSD', -1, 0, 1),
('macka', 'Skinkmacka', -1, 0, 1),
('mai_tai', 'Mai Tai', 2, 0, 1),
('malt', 'Malt', -1, 0, 1),
('marabou', 'Marabou Mjölkchoklad', -1, 0, 1),
('margarita', 'Margarita', 2, 0, 1),
('marijuana', 'Bag of Weed', 100, 0, 1),
('marijuana_pooch', 'Marijuana pouch', 50, 0, 1),
('martini', 'Martini blanc', 5, 0, 1),
('meat', 'Meat', 30, 0, 1),
('medikit', 'Medikit', 50, 0, 1),
('mega1', 'Mega 1', 30, 0, 1),
('mega2', 'Mega 2', 30, 0, 1),
('menthe', 'Feuille de menthe', 10, 0, 1),
('meth', 'Meth', 30, 0, 1),
('meth_packaged', 'Packaged Meth', -1, 0, 1),
('meth_pooch', 'Bag of meth (28G)', 28, 0, 1),
('meth_raw', 'Raw Meth', -1, 0, 1),
('methlab', 'Portable Methlab', 1, 0, 1),
('metreshooter', 'Mètre de shooter', 3, 0, 1),
('mifepristone', 'Mifepristone', 100, 0, 1),
('milk_engine', 'Milk Engine', 1, 0, 1),
('milk_package', 'Milk Package', 20, 0, 1),
('mint', 'Mint', 1, 0, 1),
('mint_julep', 'Mint Julep', 2, 0, 1),
('mixapero', 'Mix Apéro', 5, 0, 1),
('mojito', 'Mojito', 5, 0, 1),
('monster', 'Monster', 150, 0, 1),
('morphine', 'Morphine', 100, 0, 1),
('morphine_pooch', 'Morphine pouch', 50, 0, 1),
('myrtealcool', 'Alcool de Myrte', 5, 0, 1),
('net_cracker', 'Net Cracker', 2, 0, 1),
('nitro', 'Car Nitro', 2, 0, 1),
('nuggets1', 'Nuggets 1', 30, 0, 1),
('opium', 'Opium (1G)', 1, 0, 1),
('opium_pooch', 'Bag of opium (28G)', 28, 0, 1),
('oxygen_mask', 'Oxygen Mask', -1, 0, 1),
('packaged_chicken', 'chicken fillet', 100, 0, 1),
('packaged_plank', 'packaged wood', 100, 0, 1),
('painpremierprix', 'Pain premier prix', -1, 0, 1),
('painrater', 'Pain raté', -1, 0, 1),
('paperweed', 'paper weed', 5, 0, 1),
('pastacarbonara', 'Pasta Carbonara', -1, 0, 1),
('patates', 'Potatos', 5, 0, 1),
('pendrive', 'Pendrive\r\n', -1, 0, 1),
('pepite_dor', 'Gold nugget', -1, 0, 1),
('petrol', 'oil', 24, 0, 1),
('petrol_raffin', 'processed oil', 24, 0, 1),
('phone', 'Phone', 1, 0, 1),
('pina_colada', 'Pina Colada', 2, 0, 1),
('pineapple_juice', 'Pineapple juice', 1, 0, 1),
('pizza', 'Kebab Pizza', -1, 0, 1),
('playersafe', 'Safe', -1, 0, 1),
('rakia', 'Rakia', 150, 0, 1),
('redbull', 'Redbull', 150, 0, 1),
('rhum', 'Rhum', 5, 0, 1),
('rhumcoca', 'Rhum-coca', 5, 0, 1),
('rhumfruit', 'Rhum-jus de fruits', 5, 0, 1),
('rice', 'Rice', 100, 0, 1),
('rice_pro', 'Rice Pro', 100, 0, 1),
('ring', 'Gold Ring', -1, 0, 1),
('rolex', 'Rolex', -1, 0, 1),
('rope', 'Rope', 5, 0, 1),
('rum', 'Rum', 150, 0, 1),
('salad', 'Salad', 40, 0, 1),
('saucisson', 'Saucisson', 5, 0, 1),
('secure_card', 'Secure ID Card', 2, 3, 1),
('shark', 'Shark', -1, 0, 1),
('shovel', 'shovel', 4, 0, 1),
('sickle', 'Sickle', 1, 0, 1),
('skunk', 'Skunk', 5, 0, 1),
('slaughtered_chicken', 'slaughtered chicken', 20, 0, 1),
('soda', 'Soda', 5, 0, 1),
('sorted_money', 'Counterfeit Cash - Sorted', -1, 0, 1),
('spice', 'Bag of spice', 50, 0, 1),
('sprite', 'Sprite', -1, 0, 1),
('steel', 'Steel', 25, 0, 1),
('stone', 'stone', 7, 0, 1),
('sugar', 'Sugar', 1, 0, 1),
('syrup', 'Orgeat syrup', 1, 0, 1),
('teqpaf', 'Teq\'paf', 5, 0, 1),
('tequila', 'Tequila', 150, 0, 1),
('testpack', 'PRUEBA DE EMBARAZO', 100, 0, 1),
('thermite', 'Thermite', -1, 0, 1),
('triple_sec', 'Triple sec', 1, 0, 1),
('turtle', 'Sea Turtle', 3, 0, 1),
('turtlebait', 'Turtle Bait', 10, 0, 1),
('unk_bluecan', 'Unknown Blue Can', 1, 0, 1),
('unk_greencan', 'Unknown Green Can', 1, 0, 1),
('unk_redcan', 'Unknown Red Can', 1, 0, 1),
('viagra', 'Viagra', 100, 0, 1),
('vodka', 'vodka', -1, 0, 1),
('vodkaenergy', 'Vodka-Monster', 5, 0, 1),
('vodkafruit', 'Vodka-jus de fruits', 5, 0, 1),
('vodkrb', 'Vodka RedBull', 5, 0, 1),
('washed_stone', 'washed stone', 7, 0, 1),
('water', 'water', -1, 0, 1),
('weed', 'Weed (1G)', 1, 0, 1),
('weed_packaged', 'Packaged Weed', -1, 0, 1),
('weed_pooch', 'Bag of weed (28G)', 28, 0, 1),
('weed_untrimmed', 'Untrimmed Weed', -1, 0, 1),
('whiskey', 'Whiskey', 180, 0, 1),
('whiskycoc', 'Whisky-coca', 5, 0, 1),
('whiskycoca', 'Whisky-coca', 5, 0, 1),
('white_rum', 'White rum', 1, 0, 1),
('whitewidow', 'White Widow', 5, 0, 1),
('wine', 'Wine', 150, 0, 1),
('wood', 'wood', 20, 0, 1),
('wool', 'wool', 40, 0, 1),
('xanax', 'Xanax', -1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobcars`
--

CREATE TABLE `jobcars` (
  `id` int(11) NOT NULL,
  `model` varchar(50) NOT NULL DEFAULT '0',
  `job` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobclothes`
--

CREATE TABLE `jobclothes` (
  `id` int(11) NOT NULL,
  `job` varchar(50) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `skin` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobconfigs`
--

CREATE TABLE `jobconfigs` (
  `id` int(11) NOT NULL,
  `job` varchar(50) DEFAULT NULL,
  `shop` int(11) DEFAULT NULL,
  `car1` varchar(50) DEFAULT NULL,
  `car2` varchar(50) DEFAULT NULL,
  `idman` int(11) DEFAULT NULL,
  `vehmanagement` int(11) DEFAULT NULL,
  `alerts` int(11) DEFAULT NULL,
  `obj` int(11) DEFAULT NULL,
  `handcuff` int(11) DEFAULT NULL,
  `bill` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobitems`
--

CREATE TABLE `jobitems` (
  `id` int(11) NOT NULL,
  `itemType` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `job` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobpoints`
--

CREATE TABLE `jobpoints` (
  `id` int(11) NOT NULL,
  `job` longtext DEFAULT NULL,
  `name` longtext DEFAULT NULL,
  `coords` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `label` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  `handyservice` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `hasapp` int(2) NOT NULL DEFAULT 0,
  `onlyboss` int(2) NOT NULL DEFAULT 0,
  `enable_billing` int(1) DEFAULT 0,
  `can_rob` int(1) DEFAULT 0,
  `can_handcuff` int(1) DEFAULT 0,
  `can_lockpick_cars` int(1) DEFAULT 0,
  `can_wash_vehicles` int(1) DEFAULT 0,
  `can_repair_vehicles` int(1) DEFAULT 0,
  `can_impound_vehicles` int(1) DEFAULT 0,
  `can_check_identity` int(1) DEFAULT 0,
  `can_check_vehicle_owner` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`, `handyservice`, `hasapp`, `onlyboss`, `enable_billing`, `can_rob`, `can_handcuff`, `can_lockpick_cars`, `can_wash_vehicles`, `can_repair_vehicles`, `can_impound_vehicles`, `can_check_identity`, `can_check_vehicle_owner`) VALUES
('McDonalds', 'McDonalds Employee', 1, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ambulance', 'EMS', 1, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('boulangerie', 'Boulangerie', 1, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('brasseur', 'Brasseur', 1, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('busdriver', 'Bus Driver', 1, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('cardealer', 'Cardealer', 1, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ccd', 'CCD', 1, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('clubdj', 'Club DJ', 1, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('farmer', 'Farmer', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('fastfood', 'FastFoody', 1, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('fsgang', 'fsgang', 1, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('fueler', 'Fueler', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('gotur', 'Götür', 1, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('kfc', 'KFC', 1, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('lumberjack', 'Lumberjack', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('mafia', 'Mafia', 1, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('mechanic', 'Mechanic', 1, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('offambulance', 'Off-Duty', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('offdutyfastfood', 'Off-Duty', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('offpolice', 'Off-Duty', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('orpailleurs', 'Orpailleurs', 1, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('police', 'LSPD', 1, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('resto', 'Polo', 1, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('slaughterer', 'Butcher', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('tailor', 'Tailor', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('unemployed', 'Unemployed', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('unicorn', 'Vanilla unicorn', 1, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('weedjob', 'weedjob', 1, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_armories`
--

CREATE TABLE `jobs_armories` (
  `id` int(11) NOT NULL,
  `weapon` varchar(50) NOT NULL,
  `components` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `ammo` int(10) UNSIGNED NOT NULL,
  `tint` int(11) NOT NULL,
  `marker_id` int(11) NOT NULL,
  `identifier` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_data`
--

CREATE TABLE `jobs_data` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `coords` varchar(300) NOT NULL DEFAULT '',
  `min_grade` smallint(6) NOT NULL DEFAULT 0,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `blip_id` int(11) DEFAULT NULL,
  `blip_color` int(11) DEFAULT 0,
  `blip_scale` float DEFAULT 1,
  `label` varchar(50) DEFAULT NULL,
  `marker_type` int(11) DEFAULT 1,
  `marker_scale_x` float DEFAULT 1.5,
  `marker_scale_y` float DEFAULT 1.5,
  `marker_scale_z` float DEFAULT 0.5,
  `marker_color_red` int(3) DEFAULT 150,
  `marker_color_green` int(3) DEFAULT 150,
  `marker_color_blue` int(3) DEFAULT 0,
  `marker_color_alpha` int(3) DEFAULT 50,
  `ped` varchar(50) DEFAULT NULL,
  `ped_heading` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_garages`
--

CREATE TABLE `jobs_garages` (
  `vehicle_id` int(11) NOT NULL,
  `identifier` varchar(100) NOT NULL,
  `marker_id` int(11) NOT NULL,
  `vehicle` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `vehicle_props` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_shops`
--

CREATE TABLE `jobs_shops` (
  `id` int(11) NOT NULL,
  `marker_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_type` varchar(50) NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_wardrobes`
--

CREATE TABLE `jobs_wardrobes` (
  `id` int(11) NOT NULL,
  `identifier` varchar(100) NOT NULL,
  `label` varchar(50) NOT NULL,
  `outfit` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `label` varchar(255) COLLATE utf8_bin NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext COLLATE utf8_bin NOT NULL,
  `skin_female` longtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(32, 'unemployed', 0, 'unemployed', 'unemployed', 1000, '{}', '{}'),
(33, 'cardealer', 0, 'recruit', 'Recruit', 10, '{}', '{}'),
(34, 'cardealer', 1, 'novice', 'Novice', 200, '{}', '{}'),
(35, 'cardealer', 2, 'experienced', 'Experienced', 450, '{}', '{}'),
(36, 'cardealer', 3, 'boss', 'Boss', 1500, '{}', '{}'),
(357, 'mafia', 0, 'rank1', 'New Guy', 1500, '{}', '{}'),
(358, 'mafia', 1, 'rank2', 'Trusted', 1800, '{}', '{}'),
(359, 'mafia', 2, 'rank3', 'Family', 2100, '{}', '{}'),
(360, 'mafia', 3, 'boss', 'Boss', 2700, '{}', '{}'),
(363, 'lumberjack', 0, 'employee', 'Employee', 0, '{}', '{}'),
(365, 'fueler', 0, 'employee', 'Employee', 0, '{}', '{}'),
(367, 'tailor', 0, 'employee', 'Employee', 0, '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),
(369, 'slaughterer', 0, 'employee', 'Employee', 0, '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}'),
(370, 'mechanic', 0, 'recrue', 'Recruit', 1200, '{}', '{}'),
(371, 'mechanic', 1, 'novice', 'Novice', 2000, '{}', '{}'),
(372, 'mechanic', 2, 'experimente', 'Experienced', 2500, '{}', '{}'),
(373, 'mechanic', 3, 'chief', 'Leader', 3000, '{}', '{}'),
(374, 'mechanic', 4, 'boss', 'Boss', 5000, '{}', '{}'),
(379, 'police', 0, 'recruit', 'Officer', 500, '{}', '{}'),
(380, 'police', 1, 'officer', 'Sergeant', 700, '{}', '{}'),
(381, 'police', 2, 'officer', 'Lieutenant', 900, '{}', '{}'),
(382, 'police', 3, 'sergeant', 'Captain', 1100, '{}', '{}'),
(383, 'police', 7, 'boss', 'Chief of police', 10000, '{}', '{}'),
(390, 'fsgang', 0, 'soldato', 'family', 0, '{}', '{}'),
(391, 'fsgang', 1, 'soldato', 'trusted', 0, '{}', '{}'),
(392, 'fsgang', 2, 'capo', 'co-leader', 0, '{}', '{}'),
(393, 'fsgang', 3, 'consigliere', 'leader', 0, '{}', '{}'),
(394, 'fsgang', 4, 'boss', 'Founder', 0, '{}', '{}'),
(395, 'police', 4, 'sergeant', 'Commander', 1300, '{}', '{}'),
(396, 'police', 5, 'lieutenant', 'Deputy chief of police', 1500, '{}', '{}'),
(397, 'police', 6, 'lieutenant', 'Assistant chief of police', 1700, '{}', '{}'),
(402, 'resto', 0, 'recruit', 'D?butant', 20, '{}', '{}'),
(403, 'resto', 1, 'officer', 'Employ?', 40, '{}', '{}'),
(404, 'resto', 2, 'sergeant', 'Responsable', 60, '{}', '{}'),
(405, 'resto', 3, 'lieutenant', 'Sous-PDG', 85, '{}', '{}'),
(406, 'resto', 4, 'boss', 'PDG', 100, '{}', '{}'),
(407, 'fastfood', 0, 'deliveryman', 'DeliveryMan', 5000, '{}', '{}'),
(408, 'fastfood', 1, 'cashier', 'Cashier', 10000, '{}', '{}'),
(409, 'fastfood', 2, 'cooker', 'Cook', 50000, '{}', '{}'),
(410, 'fastfood', 3, 'boss', 'Patron', 60000, '{}', '{}'),
(411, 'offdutyfastfood', 0, 'deliveryman', 'DeliveryMan', 0, '{}', '{}'),
(412, 'offdutyfastfood', 1, 'cashier', 'Cashier', 0, '{}', '{}'),
(413, 'offdutyfastfood', 2, 'cooker', 'Cook', 0, '{}', '{}'),
(414, 'offdutyfastfood', 3, 'boss', 'Patron', 0, '{}', '{}'),
(416, 'busdriver', 0, 'metro', 'Metro', 100, '{}', '{}'),
(418, 'farmer', 0, 'farmer', 'Farmer', 200, '', ''),
(419, 'ccd', 0, 'recruit', 'Job', 1500, '{}', '{}'),
(420, 'ccd', 1, 'boss', 'Boss', 3000, '{}', '{}'),
(421, 'clubdj', 0, 'clubdj', 'Club DJ', 0, '{}', '{}'),
(430, 'boulangerie', 0, 'recrue', 'Intérimaire', 500, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":0,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(431, 'boulangerie', 1, 'novice', 'Boulangerie', 750, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":0,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(432, 'boulangerie', 2, 'cdisenior', 'Chef de chai', 1200, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":0,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(433, 'boulangerie', 3, 'boss', 'Patron', 1600, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":0,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(434, 'brasseur', 0, 'recrue', 'Intérimaire', 500, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(435, 'brasseur', 1, 'novice', 'Brasseur', 750, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(436, 'brasseur', 2, 'cdisenior', 'Chef de chai', 1200, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(437, 'brasseur', 3, 'boss', 'Patron', 1600, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(438, 'orpailleurs', 0, 'recrue', 'Orpailleurs débutant', 500, '{}', '{}'),
(439, 'orpailleurs', 1, 'novice', 'Orpailleurs Semi-Qualifié', 750, '{}', '{}'),
(440, 'orpailleurs', 2, 'cdisenior', 'Orpailleurs Qualifié', 1200, '{}', '{}'),
(441, 'orpailleurs', 3, 'boss', 'Patron Orpailleurs', 1600, '{}', '{}'),
(442, 'weedjob', 0, 'barman', 'Recrue', 300, '{}', '{}'),
(443, 'weedjob', 1, 'dancer', 'Novice', 300, '{}', '{}'),
(444, 'weedjob', 2, 'viceboss', 'Co-gérant', 500, '{}', '{}'),
(445, 'weedjob', 3, 'boss', 'Gérant', 600, '{}', '{}'),
(450, 'unicorn', 0, 'bouncer', 'Bouncer', 100, '{}', '{}'),
(451, 'unicorn', 1, 'bartender', 'Bartender', 125, '{}', '{}'),
(452, 'unicorn', 2, 'dancer', 'Stripper', 150, '{}', '{}'),
(453, 'unicorn', 3, 'boss', 'Boss', 250, '{}', '{}'),
(454, 'kfc', 0, 'recruit', 'Recrue', 100, '{}', '{}'),
(455, 'kfc', 1, 'employer', 'Employé(e)', 100, '{}', '{}'),
(456, 'kfc', 2, 'viceboss', 'Co-gérant', 100, '{}', '{}'),
(457, 'kfc', 3, 'boss', 'Gérant', 100, '{}', '{}'),
(458, 'gotur', 0, 'recrue', 'Recrue', 12, '{}', '{}'),
(459, 'gotur', 1, 'boss', 'Patron', 0, '{}', '{}'),
(465, 'offambulance', 0, 'ambulance', 'Ambulance', 12, '{}', '{}'),
(466, 'offambulance', 1, 'doctor', 'Doctor', 24, '{}', '{}'),
(467, 'offambulance', 2, 'chief_doctor', 'Chief Doctor', 36, '{}', '{}'),
(468, 'offambulance', 3, 'boss', 'Boss', 48, '{}', '{}'),
(469, 'offpolice', 0, 'recruit', 'Officer', 500, '{}', '{}'),
(470, 'offpolice', 1, 'officer', 'Sergeant', 700, '{}', '{}'),
(471, 'offpolice', 2, 'officer', 'Lieutenant', 900, '{}', '{}'),
(472, 'offpolice', 3, 'sergeant', 'Captain', 1100, '{}', '{}'),
(473, 'offpolice', 4, 'sergeant', 'Commander', 1300, '{}', '{}'),
(474, 'offpolice', 5, 'lieutenant', 'Deputy chief of offpolice', 1500, '{}', '{}'),
(475, 'offpolice', 6, 'lieutenant', 'Assistant chief of offpolice', 1700, '{}', '{}'),
(476, 'offpolice', 7, 'boss', 'Chief of offpolice', 10000, '{}', '{}'),
(477, 'ambulance', 0, 'ambulance', 'Ambulance', 2000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(478, 'ambulance', 1, 'doctor', 'Doctor', 4000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(479, 'ambulance', 2, 'chief_doctor', 'Chief Doctor', 6000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(480, 'ambulance', 3, 'boss', 'Boss', 10000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}');

-- --------------------------------------------------------

--
-- Table structure for table `kfc`
--

CREATE TABLE `kfc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `display` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kfc`
--

INSERT INTO `kfc` (`id`, `name`, `display`, `type`, `price`) VALUES
(1, 'combo1', 'Combo 1', 'item', 100),
(2, 'combo2', 'Combo 2', 'item', 150),
(3, 'combo3', 'Combo 3', 'item', 200),
(4, 'combo4', 'Combo 4', 'item', 250),
(5, 'combo5', 'Combo 5', 'item', 300),
(6, 'nuggets1', 'Nuggets 1', 'item', 100),
(7, 'balde1', 'Balde 1', 'item', 1000),
(8, 'mega1', 'Mega 1', 'item', 2000),
(9, 'mega2', 'Mega 2', 'item', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `kicks`
--

CREATE TABLE `kicks` (
  `id` int(10) UNSIGNED NOT NULL,
  `steamid` varchar(250) NOT NULL DEFAULT '0',
  `kicked` int(10) NOT NULL,
  `reason` varchar(250) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `lachee_bus_routes`
--

CREATE TABLE `lachee_bus_routes` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL COMMENT 'Name of the route',
  `multiplier` float NOT NULL DEFAULT 1 COMMENT 'How much more or less this route gives from the standard rate.',
  `minimum_grade` int(11) NOT NULL DEFAULT 0 COMMENT 'Minimum grade needed to do this route',
  `type` varchar(16) NOT NULL DEFAULT 'metro' COMMENT 'type of route (rural, metro, airport)',
  `route` text NOT NULL DEFAULT '[]' COMMENT 'JSON Encoded array of stop ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lachee_bus_routes`
--

INSERT INTO `lachee_bus_routes` (`id`, `name`, `multiplier`, `minimum_grade`, `type`, `route`) VALUES
(1, 'Sandy Shores X-Press', 1.25, 0, 'rural', '[ 38, 40, 38 ]'),
(2, 'Small Metro Route', 0.8, 0, 'metro', '[ 3, 5, 6, 8, 38 ]'),
(3, 'Long Beach Route', 1, 0, 'metro', '[ 27, 28, 29, 30, 36, 37, 49, 14, 8, 38 ]'),
(4, 'Long Rural Route', 1.5, 0, 'rural', '[ 38, 40, 41, 46, 45, 38 ]'),
(5, 'Industry', 1, 0, 'metro', '[ 50, 25, 24, 22, 18, 16, 38 ]'),
(6, 'Medium Metro Route', 1, 0, 'metro', '[ 5, 31, 32, 36, 12, 13, 11, 10, 38 ]');

-- --------------------------------------------------------

--
-- Table structure for table `lachee_bus_stops`
--

CREATE TABLE `lachee_bus_stops` (
  `id` int(11) NOT NULL,
  `hash` varchar(64) NOT NULL COMMENT 'sha1 of model coords',
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `heading` float NOT NULL,
  `qx` float NOT NULL,
  `qy` float NOT NULL,
  `qz` float NOT NULL,
  `name` text NOT NULL,
  `type` varchar(16) NOT NULL DEFAULT 'metro',
  `clear` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lachee_bus_stops`
--

INSERT INTO `lachee_bus_stops` (`id`, `hash`, `x`, `y`, `z`, `heading`, `qx`, `qy`, `qz`, `name`, `type`, `clear`) VALUES
(1, '606dbac7bf2b741aabd73fcd6896b47dc295623f', 355.253, -1063.94, 29.3906, 268.697, 357.955, -1068.46, 29.553, 'Vespucci Blvd  E', 'metro', 0),
(2, 'd9a9f2adb978665aaaefb181db80833bcd940590', 264.899, -1124.19, 29.2119, 88.6775, 256.332, -1119.61, 29.3561, 'Adam\'s Apple Blvd  W', 'metro', 0),
(3, '84e7d3e499860ecf52b39a60a01af0394c08ea35', 308.745, -761.421, 29.2311, 163.148, 0, 0, 0, 'Strawberry Ave  S', 'metro', 0),
(5, '2541990e50d608b1ac0f692a0ee86495fa5d6e59', 118.576, -786.144, 31.419, 70, 0, 0, 0, 'San Andreas Ave  W', 'metro', 0),
(6, '1bb56cfec0f561fd5f4948c0a371d61de419fa56', -171.367, -816.12, 31.166, 159.84, 0, 0, 0, 'Alta St  S', 'metro', 0),
(7, '3032b0b3b26657ae228eeaa9f95e2acc7adc1907', -252.653, -881.766, 30.6868, 249.904, 0, 0, 0, 'Vespucci Blvd  E', 'metro', 0),
(8, '22be07930b5af4b765c8cf5c69d6eeb21ea5336c', -273.329, -827.684, 31.7272, 341.344, 0, 0, 0, 'Peaceful St Vespucci Blvd N', 'metro', 0),
(9, 'f6fab66d76ae2bcca2387bbd72aaf1ca46d8a896', -244.371, -711.837, 33.4295, 160.115, 0, 0, 0, 'Peaceful St San Andreas Ave S', 'metro', 0),
(10, '0ea7892fa2af6d3243442c1f5aa0c4241f178401', -511.119, -667.722, 33.0639, 270.944, 0, 0, 0, 'San Andreas Ave  E', 'metro', 0),
(11, 'f12ec93186728c81e7f69ec6ba3df391344aab6f', -696.408, -668.147, 30.8236, 270, 0, 0, 0, 'San Andreas Ave  E', 'metro', 0),
(12, '19db9f25643eb21c8b7d810a08e741da6daec22b', -707.914, -827.722, 23.4815, 90, 0, 0, 0, 'Vespucci Blvd Ginger St W', 'metro', 0),
(13, 'c1ecfb70c7e8d7f79dba850279e07ecc43ba6c94', -740.696, -755.317, 26.4751, 0.307413, 0, 0, 0, 'Ginger St  N', 'metro', 0),
(14, '0d078595247af6c0fada6343623d65d10e250167', -563.812, -846.385, 27.0341, 270.158, 0, 0, 0, 'Vespucci Blvd  E', 'metro', 0),
(15, '3b5cfda1805900881b3ee7fdc8e61a62ae1cf523', -104.86, -1684.46, 29.2273, 139.742, 0, 0, 0, 'Strawberry Ave Davis Ave SW', 'metro', 0),
(16, '1ab21a0978ae0f5ec7a47f88989cc7243117ce61', 47.9691, -1538.26, 29.3447, 320, 57.2285, -1539.15, 29.2939, 'Strawberry Ave Macdonald St NE', 'metro', 0),
(17, '4ac5fed851cc26272f7b979af5d9900b2f24dee5', 359.368, -1784.53, 28.9633, 320.652, 0, 0, 0, 'Roy Lowenstein Blvd Macdonald St NE', 'metro', 0),
(18, '07280a53c7fd80f35a4e7cc2647b717b1fcaebea', 437.213, -2026.75, 23.3423, 223.246, 0, 0, 0, 'Carson Ave  SE', 'metro', 0),
(19, '897b96365f354c9af0deb80801c5b83a408e9d2f', 770.514, -1750.66, 29.423, 262.533, 0, 0, 0, 'Innocence Blvd  E', 'metro', 0),
(20, '2198b8ed71d670e7adee95daca9e21ad94254a7d', 873.845, -1765.82, 29.7763, 262.765, 0, 0, 0, 'Innocence Blvd Popular St E', 'metro', 0),
(21, 'e2178abe6a79522cc3b22f5ce657e7b84192eebb', 936.563, -1752.85, 31.0723, 87.0086, 0, 0, 0, 'Innocence Blvd Orchardville Ave W', 'metro', 0),
(22, 'aab47fb196ce9e93a45eccb6a30f5f1b8deae7bb', 826.433, -1634.42, 30.5628, 174.695, 0, 0, 0, 'Popular St  S', 'metro', 0),
(23, 'f4db354681f60617f30bd165c4b5e750ec39896c', 807.145, -1356.94, 26.2625, 0.0000915527, 0, 0, 0, 'Popular St Olympic Fwy N', 'metro', 0),
(24, '193f7d50e5915ffac20fbbf6d05a921a60e67e9f', 788.697, -1364.43, 26.451, 178.864, 0, 0, 0, 'Popular St Olympic Fwy S', 'metro', 0),
(25, 'a603e28e691124dca4c71a649416c44751f96cdb', 771.68, -938.991, 25.6343, 185.068, 0, 0, 0, 'Popular St  S', 'metro', 0),
(26, 'f48585aa57199f2b5f547e0f63156c9812330707', 785.05, -780.887, 26.3451, 0.0015564, 0, 0, 0, 'Popular St  N', 'metro', 0),
(27, '93b89d32e11dccad684fca3caec9e4a422d5ac2c', -496.892, 20.1225, 44.8445, 89.5643, 0, 0, 0, 'Hawick Ave Boulevard Del Perro W', 'metro', 0),
(28, '222836a6e73677f9440857db8fe40cff8a1b8caa', -690.275, -6.08575, 38.2245, 111.799, 0, 0, 0, 'Boulevard Del Perro Rockford Dr W', 'metro', 0),
(29, 'aa511d65119bba4bec56722548191ad4349c198c', -933.817, -127.573, 37.5776, 117.067, -936.94, -125.126, 37.761, 'Boulevard Del Perro Mad Wayne Thunder Dr SW', 'metro', 0),
(30, 'ec0b93d0e1e2dc9ad7255992c6deb2f92c8181fc', -1521.73, -464.107, 35.3015, 123.086, 0, 0, 0, 'Boulevard Del Perro  SW', 'metro', 0),
(31, '7207c6aa91c72863f8b50192067177f180df2379', -1161.27, -400.291, 35.695, 98.1812, 0, 0, 0, 'Marathon Ave  E', 'metro', 0),
(32, 'bd5ec2670ffaca92d12c1d6879b9fe36aa002cfc', -1407.29, -568.154, 30.3818, 119.23, 0, 0, 0, 'Marathon Ave Prosperity St SW', 'metro', 0),
(33, 'b2c23d2a7d30e074e9943cd5e9d0a1fd4a3359ab', -1482.15, -634.404, 30.3702, 305.049, 0, 0, 0, 'Marathon Ave Bay City Ave NE', 'metro', 0),
(34, 'ff9cd557c0fc46304cff54f22ccdd15aa65bbcdc', -1431.81, -92.8593, 51.6417, 297.942, 0, 0, 0, 'West Eclipse Blvd Dorset Dr W', 'metro', 0),
(35, '21d8995633601b88a27ac76ba0d26600b34950b6', -685.857, -374.013, 34.1945, 249.108, 0, 0, 0, 'Dorset Dr  NW', 'metro', 0),
(36, '34f5903c441dca2ef19f79bde80ef4cf042d2274', -1213.41, -1213.33, 7.59806, 190.893, 0, 0, 0, 'Bay City Ave Invention Ct S', 'metro', 0),
(37, 'b542f14e6f567b0a1f4dd4ba92832b17cfff1fa4', -1170.57, -1468.27, 4.28024, 215.321, 0, 0, 0, 'Magellan Ave Aguja St SE', 'metro', 0),
(38, 'f4ead5267915187b22d9326376bf5ca71f091f2a', 459.736, -625.933, 28.4958, 32.803, 454.38, -615.18, 28.52, 'Dashound Depo', 'terminal', 10),
(39, '7c995589c412b4f09624472d5f0e8ea5c086d613', 955.993, 168.262, 81.6621, 80.9574, 0, 0, 0, 'Vinewood Racetrack', 'terminal', 10),
(40, '8b4eae6b54124cea9621539630f1d5522284c309', 1933.47, 3716.51, 33.2505, 120.577, 1930.27, 3720.55, 32.84, 'Sandy Shores', 'rural', 0),
(41, '4dd8673dccd951a6069c2984c8d7ec350efd6164', 1183, 2691.27, 38.6443, 89.3957, 1178.59, 2701.63, 38.17, 'Grand Senora Desert', 'rural', 0),
(42, '509367a1a16d3c66b82951ded3bc4c0fefa8dc65', 1661.47, 4854.52, 42.7289, 186.474, 0, 0, 0, 'Grapeseed', 'rural', 5),
(43, '62942aa8353bacc3faaad951654267cacf8afa68', -216.221, 6173.25, 32.042, 135.093, 0, 0, 0, 'Great Ocean Hwy Duluoz Ave NE', 'rural', 0),
(44, '6e2ff4d6d66490d6382c40faa4e1db5e91639f42', -158.371, 6203.29, 32.0361, 314.101, 0, 0, 0, 'Great Ocean Hwy  SW', 'rural', 0),
(45, 'b71bbdebedf4c747a9ffaa2f5f9c0edab63b0513', -2531.68, 2343.37, 33.8786, 32.8264, 0, 0, 0, 'Route 68  NW', 'rural', 0),
(46, '11858727cada5fc0aa97afcfae948abe22bb00c6', -1110.78, 2680.36, 19.6074, 130.767, 0, 0, 0, 'Route 68  SW', 'rural', 0),
(47, '24a29b5732704dd632fcbf5bd36542ba31bdde2e', -1050.06, -2541.1, 13.6495, 149.985, 0, 0, 0, 'Air Emu', 'airport', 0),
(48, '6d15f0bb8c17ac3096e9a3aa4df55639b8d026a8', -1018.91, -2732.03, 13.6565, 239.038, 0, 0, 0, 'Los Santos Air', 'airport', 0),
(49, '46f91ccb127b94a46a13613771e86cf655b8a3a1', -620.165, -921.596, 23.2675, 1.94309, 0, 0, 0, 'Palomino Ave Lindsay Circus N', 'metro', 0),
(50, 'a99e87c613aac315a801fb7f11c59726b6600e34', 160.988, -209.049, 54.1357, 249.776, 0, 0, 0, 'Hawick Ave Alta Pl E', 'metro', 0);

-- --------------------------------------------------------

--
-- Table structure for table `last_pregnant`
--

CREATE TABLE `last_pregnant` (
  `identifier` varchar(255) NOT NULL,
  `pregnant_time` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('boat', 'Boat License'),
('dmv', 'driving School'),
('drive', 'car license'),
('drive_bike', 'bike license'),
('drive_truck', 'truck license'),
('weapon', 'Weapon License'),
('weed_processing', 'Weed Processing License');

-- --------------------------------------------------------

--
-- Table structure for table `meeta_vehicle_trunk`
--

CREATE TABLE `meeta_vehicle_trunk` (
  `id` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `item` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `isweapon` int(11) DEFAULT 0,
  `label_weapon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `okokbilling`
--

CREATE TABLE `okokbilling` (
  `id` int(50) NOT NULL,
  `receiver_identifier` varchar(255) NOT NULL,
  `receiver_name` varchar(255) NOT NULL,
  `author_identifier` varchar(255) NOT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `society` varchar(255) NOT NULL,
  `society_name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `invoice_value` int(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `notes` varchar(255) DEFAULT ' ',
  `sent_date` varchar(255) NOT NULL,
  `limit_pay_date` varchar(255) DEFAULT NULL,
  `fees_amount` int(50) DEFAULT 0,
  `paid_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `okokbilling`
--

INSERT INTO `okokbilling` (`id`, `receiver_identifier`, `receiver_name`, `author_identifier`, `author_name`, `society`, `society_name`, `item`, `invoice_value`, `status`, `notes`, `sent_date`, `limit_pay_date`, `fees_amount`, `paid_date`) VALUES
(1, 'steam:11000013f7dc792', 'Chris Nw', 'steam:110000142bdf425', 'WALTER WHITE', 'society_ambulance', 'EMS', 'gg', 100, 'paid', 'Notes: ff', '2022-06-30 16:45:51', '2022-07-10 16:45:51', 0, '2022-06-30 16:46:21'),
(2, 'steam:110000142bdf425', 'WALTER WHITE', 'steam:11000013f7dc792', 'Chris Nw', 'society_police', 'LSPD', '1', 1, 'paid', 'Notes: 1', '2022-06-30 16:47:41', '2022-07-10 16:47:41', 0, '2022-06-30 16:47:56'),
(3, 'steam:11000013f7dc792', 'Chris Nw', 'steam:11000014292f4b2', 'Gregory House', 'society_ambulance', 'EMS', 'eina', 10000, 'paid', 'Notes: oops', '2022-07-03 14:42:23', '2022-07-13 14:42:23', 0, '2022-07-03 14:42:49'),
(4, 'steam:11000013d9aecf5', 'Nathan Cordillo  Carvahlo', 'steam:11000014292f4b2', 'Gregory House', 'society_ambulance', 'EMS', 'ola', 1000, 'paid', 'Notes: Nothing to add.', '2022-07-03 14:57:00', '2022-07-13 14:57:00', 0, '2022-07-03 14:57:42'),
(5, 'steam:11000013d9aecf5', 'Nathan Cordillo Carvahlo', 'steam:11000014292f4b2', 'Gregory House ', 'society_ambulance', 'EMS', 'ouch', 5000, 'paid', 'Notes: Nothing to add.', '2022-07-06 19:58:55', '2022-07-16 19:58:55', 0, '2022-07-06 19:59:22');

-- --------------------------------------------------------

--
-- Table structure for table `owned_properties`
--

CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `owned_shops`
--

CREATE TABLE `owned_shops` (
  `identifier` varchar(250) DEFAULT NULL,
  `ShopNumber` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT 0,
  `ShopValue` int(11) DEFAULT NULL,
  `LastRobbery` int(11) DEFAULT 0,
  `ShopName` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owned_shops`
--

INSERT INTO `owned_shops` (`identifier`, `ShopNumber`, `money`, `ShopValue`, `LastRobbery`, `ShopName`) VALUES
('0', 1, 0, 280000, 1549643682, '0'),
('0', 2, 0, 220000, 1549643682, '0'),
('0', 3, 0, 235000, 1549643682, '0'),
('0', 4, 0, 285000, 1549643682, '0'),
('0', 5, 0, 135000, 1549643682, '0'),
('0', 6, 0, 235000, 1549643682, '0'),
('0', 7, 0, 160000, 1549643682, '0'),
('0', 8, 0, 275000, 1549643682, '0'),
('0', 9, 0, 265000, 1549643682, '0'),
('0', 10, 0, 300000, 1549643682, '0'),
('0', 12, 0, 145000, 1549643682, '0'),
('0', 13, 0, 145000, 1549643682, '0'),
('0', 14, 0, 280000, 1549643682, '0'),
('0', 15, 0, 300000, 1549643682, '0'),
('0', 16, 0, 435000, 1549643682, '0'),
('0', 18, 0, 235000, 1549643682, '0'),
('0', 11, 0, 225000, 1549643682, '0'),
('0', 19, 0, 150000, 1549643682, '0'),
('0', 20, 0, 165000, 1549643682, '0'),
('0', 17, 0, 150000, 1549643682, '0');

-- --------------------------------------------------------

--
-- Table structure for table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(22) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) NOT NULL DEFAULT '',
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  `garage` varchar(200) DEFAULT 'A',
  `carseller` int(11) DEFAULT 0,
  `damages` varchar(255) NOT NULL DEFAULT '{}',
  `state` tinyint(1) NOT NULL DEFAULT 1,
  `lasthouse` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owned_vehicles`
--

INSERT INTO `owned_vehicles` (`owner`, `plate`, `vehicle`, `type`, `job`, `stored`, `garage`, `carseller`, `damages`, `state`, `lasthouse`) VALUES
('steam:11000013f7dc792', 'ANK 400', '{\"modPlateHolder\":-1,\"modArmor\":-1,\"modEngine\":-1,\"health\":992,\"modTurbo\":false,\"model\":-1532697517,\"modAPlate\":-1,\"modXenon\":false,\"tyreSmokeColor\":[255,255,255],\"wheels\":3,\"modLivery\":-1,\"neonEnabled\":[false,false,false,false],\"modOrnaments\":-1,\"modTransmission\":-1,\"modArchCover\":-1,\"modFender\":-1,\"modStruts\":-1,\"modFrame\":-1,\"modShifterLeavers\":-1,\"modDoorSpeaker\":-1,\"modHydrolic\":-1,\"plate\":\"ANK 400\",\"modHood\":-1,\"modRearBumper\":-1,\"modWindows\":-1,\"modExhaust\":-1,\"modAerials\":-1,\"neonColor\":[255,0,255],\"modTrimA\":-1,\"modSeats\":-1,\"modSideSkirt\":-1,\"modTrunk\":-1,\"pearlescentColor\":18,\"color2\":12,\"modGrille\":-1,\"modSmokeEnabled\":false,\"modFrontWheels\":-1,\"modEngineBlock\":-1,\"modBrakes\":-1,\"modVanityPlate\":-1,\"modSuspension\":-1,\"dirtLevel\":7.57006406784057,\"modRoof\":-1,\"modHorns\":-1,\"modRightFender\":-1,\"plateIndex\":0,\"modTrimB\":-1,\"modSteeringWheel\":-1,\"modFrontBumper\":-1,\"windowTint\":-1,\"extras\":[],\"modSpeakers\":-1,\"color1\":12,\"modDial\":-1,\"modBackWheels\":-1,\"modTank\":-1,\"wheelColor\":158,\"modDashboard\":-1,\"modAirFilter\":-1,\"modSpoilers\":-1}', 'car', '', 1, 'GarageC', 0, '[]', 1, 0),
('steam:1100001468a4d74', 'BAASHA', '{\"modHorns\":-1,\"modDial\":-1,\"modXenon\":false,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modDoorSpeaker\":-1,\"modBackWheels\":-1,\"modTank\":-1,\"modSeats\":-1,\"color2\":107,\"modTurbo\":false,\"dirtLevel\":5.0,\"modGrille\":-1,\"neonEnabled\":[false,false,false,false],\"modArchCover\":-1,\"plate\":\"BAASHA\",\"modLivery\":-1,\"modAPlate\":-1,\"modTransmission\":-1,\"modTrunk\":-1,\"extras\":[],\"modTrimA\":-1,\"modHood\":-1,\"model\":1571346838,\"modFrame\":-1,\"modSpoilers\":-1,\"wheelColor\":1,\"modPlateHolder\":-1,\"modAirFilter\":-1,\"modSpeakers\":-1,\"modExhaust\":-1,\"modSmokeEnabled\":false,\"modArmor\":-1,\"health\":1000,\"modDashboard\":-1,\"modFender\":-1,\"modSideSkirt\":-1,\"wheels\":0,\"modSteeringWheel\":-1,\"color1\":6,\"modTrimB\":-1,\"tyreSmokeColor\":[255,255,255],\"modOrnaments\":-1,\"modEngine\":-1,\"modRearBumper\":-1,\"modRightFender\":-1,\"modAerials\":-1,\"modFrontBumper\":-1,\"modFrontWheels\":-1,\"modRoof\":-1,\"plateIndex\":4,\"modSuspension\":-1,\"modShifterLeavers\":-1,\"windowTint\":-1,\"modWindows\":-1,\"modStruts\":-1,\"pearlescentColor\":0,\"neonColor\":[255,0,255],\"modEngineBlock\":-1,\"modHydrolic\":-1}', 'car', '', 1, 'A', 0, '{}', 1, 0),
('steam:1100001468829f9', 'FWC 387', '{\"modFrontWheels\":-1,\"modFrontBumper\":-1,\"modSuspension\":-1,\"modVanityPlate\":-1,\"modEngineBlock\":-1,\"modRearBumper\":-1,\"color1\":134,\"modTransmission\":-1,\"modDial\":-1,\"modTrimB\":-1,\"modStruts\":-1,\"wheelColor\":156,\"modAerials\":-1,\"modSideSkirt\":-1,\"tyreSmokeColor\":[255,255,255],\"modSpoilers\":-1,\"modHood\":-1,\"modArchCover\":-1,\"modSteeringWheel\":-1,\"dirtLevel\":0.0,\"modHydrolic\":-1,\"modDoorSpeaker\":-1,\"modLivery\":1,\"plateIndex\":4,\"modRoof\":-1,\"modPlateHolder\":-1,\"modGrille\":-1,\"modRightFender\":-1,\"modSmokeEnabled\":false,\"color2\":134,\"modBrakes\":-1,\"modEngine\":-1,\"modFrame\":-1,\"plate\":\"FWC 387\",\"modTurbo\":false,\"modSeats\":-1,\"modTrimA\":-1,\"modOrnaments\":-1,\"health\":1000,\"modHorns\":-1,\"modAirFilter\":-1,\"model\":1836948589,\"wheels\":1,\"neonEnabled\":[false,false,false,false],\"modXenon\":false,\"modTrunk\":-1,\"neonColor\":[255,0,255],\"modFender\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"modBackWheels\":-1,\"extras\":{\"9\":false,\"8\":false,\"12\":false,\"11\":false,\"10\":true,\"3\":false,\"2\":false,\"1\":true,\"7\":false,\"6\":false,\"5\":false,\"4\":false},\"modSpeakers\":-1,\"modWindows\":-1,\"modDashboard\":-1,\"modExhaust\":-1,\"modArmor\":-1,\"modAPlate\":-1,\"windowTint\":-1,\"pearlescentColor\":156}', 'car', 'police', 0, 'A', 0, '{}', 1, 0),
('steam:1100001468a4d74', 'KPJ 199', '{\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"modRearBumper\":-1,\"modRightFender\":-1,\"plateIndex\":0,\"modTurbo\":false,\"modWindows\":-1,\"modVanityPlate\":-1,\"modExhaust\":-1,\"wheelColor\":156,\"modSmokeEnabled\":false,\"modArmor\":-1,\"modEngine\":-1,\"modFrontWheels\":-1,\"modAirFilter\":-1,\"modAerials\":-1,\"modHood\":-1,\"modLivery\":-1,\"modFrontBumper\":-1,\"modSpoilers\":-1,\"model\":-1524783777,\"extras\":{\"1\":true},\"modAPlate\":-1,\"modDial\":-1,\"modTrunk\":-1,\"modSteeringWheel\":-1,\"color1\":142,\"color2\":145,\"modTrimB\":-1,\"modEngineBlock\":-1,\"modBrakes\":-1,\"modDoorSpeaker\":-1,\"modXenon\":false,\"modTank\":-1,\"modTransmission\":-1,\"plate\":\"KPJ 199\",\"modHorns\":-1,\"modGrille\":-1,\"modSuspension\":-1,\"modTrimA\":-1,\"tyreSmokeColor\":[255,255,255],\"modOrnaments\":-1,\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"windowTint\":-1,\"modPlateHolder\":-1,\"modDashboard\":-1,\"neonColor\":[255,0,255],\"modStruts\":-1,\"dirtLevel\":8.0,\"modSpeakers\":-1,\"modFrame\":-1,\"modRoof\":-1,\"health\":1000,\"pearlescentColor\":145,\"modFender\":-1,\"modSeats\":-1,\"modArchCover\":-1,\"wheels\":5,\"modHydrolic\":-1}', 'car', '', 0, 'A', 0, '{}', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phone_business`
--

CREATE TABLE `phone_business` (
  `job` varchar(50) NOT NULL,
  `motd` varchar(255) NOT NULL,
  `motdchanged` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `num` varchar(10) NOT NULL,
  `time` varchar(50) NOT NULL,
  `accepts` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phone_contacts`
--

CREATE TABLE `phone_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(40) NOT NULL,
  `name` longtext NOT NULL,
  `number` longtext NOT NULL,
  `favourite` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `phone_information`
--

CREATE TABLE `phone_information` (
  `id` int(11) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `wallpaper` varchar(255) NOT NULL DEFAULT 'https://cdn.discordapp.com/attachments/717040110641741894/802176415269257236/bright.png',
  `darkmode` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `sender` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `date` varchar(50) NOT NULL DEFAULT 'current_timestamp()',
  `isgps` varchar(500) NOT NULL DEFAULT '0',
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0,
  `isService` varchar(50) NOT NULL DEFAULT '0',
  `isAnonym` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phone_twitter_accounts`
--

CREATE TABLE `phone_twitter_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(50) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '0',
  `userid` varchar(50) NOT NULL DEFAULT '0',
  `avatar` varchar(2555) NOT NULL DEFAULT 'https://cdn4.iconfinder.com/data/icons/small-n-flat/24/user-alt-512.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `phone_twitter_likes`
--

CREATE TABLE `phone_twitter_likes` (
  `identifier` varchar(50) DEFAULT NULL,
  `liked` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `phone_twitter_messages`
--

CREATE TABLE `phone_twitter_messages` (
  `id` int(11) NOT NULL,
  `identifier` varchar(50) NOT NULL DEFAULT '',
  `username` varchar(50) NOT NULL DEFAULT '0',
  `userid` varchar(50) NOT NULL DEFAULT '0',
  `avatar` varchar(2555) NOT NULL DEFAULT '0',
  `date` varchar(50) NOT NULL DEFAULT '0',
  `message` varchar(50) NOT NULL DEFAULT '0',
  `imageurl` varchar(266) NOT NULL DEFAULT '0',
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `playerhousing`
--

CREATE TABLE `playerhousing` (
  `id` int(32) NOT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `rented` tinyint(1) DEFAULT NULL,
  `price` int(32) DEFAULT NULL,
  `wardrobe` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `playersafes`
--

CREATE TABLE `playersafes` (
  `owner` varchar(50) NOT NULL,
  `location` longtext NOT NULL,
  `instance` varchar(50) NOT NULL,
  `inventory` longtext NOT NULL,
  `dirtymoney` int(11) NOT NULL,
  `weapons` longtext NOT NULL,
  `safeid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `playerskins`
--

CREATE TABLE `playerskins` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `skin` text NOT NULL,
  `active` tinyint(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `playerstattoos`
--

CREATE TABLE `playerstattoos` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `tattoos` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playerstattoos`
--

INSERT INTO `playerstattoos` (`id`, `identifier`, `tattoos`) VALUES
(0, 'steam:11000013d4486db', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `player_outfits`
--

CREATE TABLE `player_outfits` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `outfitname` varchar(50) NOT NULL,
  `model` varchar(50) DEFAULT NULL,
  `skin` text DEFAULT NULL,
  `outfitId` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `label` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `label`) VALUES
(50, '80s'),
(51, '90s'),
(53, 'Metal'),
(54, 'Random music'),
(55, 'example');

-- --------------------------------------------------------

--
-- Table structure for table `playlist_songs`
--

CREATE TABLE `playlist_songs` (
  `id` int(11) NOT NULL,
  `playlist` int(11) DEFAULT NULL,
  `link` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playlist_songs`
--

INSERT INTO `playlist_songs` (`id`, `playlist`, `link`) VALUES
(26, 0, 'https://www.youtube.com/watch?v=EYAjqqWuBxg'),
(28, 0, 'https://www.youtube.com/watch?v=yXeJ8ZRActM'),
(29, 54, 'https://www.youtube.com/watch?v=yXeJ8ZRActM'),
(30, 54, 'https://www.youtube.com/watch?v=CYgDUBH2Zro'),
(32, 50, 'https://www.youtube.com/watch?v=CYgDUBH2Zro'),
(33, 54, 'https://www.youtube.com/watch?v=L3wKzyIN1yk'),
(34, 54, 'https://www.youtube.com/watch?v=3dyhpqxsDHk'),
(35, 50, 'https://youtu.be/OulN7vTDq1I');

-- --------------------------------------------------------

--
-- Table structure for table `premium.jobblips`
--

CREATE TABLE `premium.jobblips` (
  `id` int(11) NOT NULL,
  `text` varchar(50) DEFAULT NULL,
  `coords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `sprite` int(11) NOT NULL DEFAULT 0,
  `color` int(11) NOT NULL DEFAULT 0,
  `job` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prop`
--

CREATE TABLE `prop` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT NULL,
  `is_single` tinyint(1) DEFAULT NULL,
  `type` varchar(60) DEFAULT NULL,
  `is_buyable` tinyint(1) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `depends` varchar(60) DEFAULT NULL,
  `is_unique` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prop`
--

INSERT INTO `prop` (`id`, `name`, `label`, `entering`, `inside`, `room_menu`, `ipls`, `is_single`, `type`, `is_buyable`, `price`, `depends`, `is_unique`) VALUES
(20, '2677WhispymoundDrive', '2677 Whispymound Drive', '{\"x\":119.2,\"y\":564.62,\"z\":183.96}', '{\"x\":117.21,\"y\":559.67,\"z\":184.3}', '{\"x\":122.17,\"y\":548.84,\"z\":180.5}', '[]', 1, 'House', 1, 1000000, '0', 1),
(21, '2874HillcrestAvenue', '2874 Hillcrest Avenue', '{\"x\":-853.15,\"y\":695.91,\"z\":148.79}', '{\"x\":-859.97,\"y\":691.07,\"z\":152.86}', '{\"x\":-855.23,\"y\":680.13,\"z\":149.05}', '[]', 1, 'House', 1, 1000000, '0', 1),
(22, '3655WildOatsDrive', '3655 Wild Oats Drive', '{\"x\":-175.29,\"y\":502.37,\"z\":137.42}', '{\"x\":-174.23,\"y\":497.29,\"z\":137.67}', '{\"x\":-167.38,\"y\":487.78,\"z\":133.84}', '[]', 1, 'House', 1, 1000000, '0', 1),
(23, '2862HillcrestAvenue', '2862 Hillcrest Avenue', '{\"x\":-686.07,\"y\":596.35,\"z\":143.64}', '{\"x\":-682.39,\"y\":592.65,\"z\":145.38}', '{\"x\":-671.59,\"y\":587.37,\"z\":141.57}', '[]', 1, 'House', 1, 1000000, '0', 0),
(24, '2133MadWayneThunder', '2133 Mad Wayne Thunder', '{\"x\":-1294.4,\"y\":454.66,\"z\":97.52}', '{\"x\":-1289.97,\"y\":449.55,\"z\":97.9}', '{\"x\":-1286.31,\"y\":438.16,\"z\":94.09}', '[]', 1, 'House', 1, 1000000, '0', 1),
(25, '2868 Hillcrest Avenue', '2868 Hillcrest Avenue', '{\"x\":-752.81,\"y\":620.51,\"z\":142.59}', '{\"x\":-758.55,\"y\":618.94,\"z\":144.15}', '{\"x\":-767.49,\"y\":610.98,\"z\":140.33}', '[]', 1, 'House', 1, 1000000, '0', 0),
(26, '2045NorthConkerAvenue', '2045 North Conker Avenue', '{\"x\":373.06,\"y\":428.48,\"z\":145.69}', '{\"x\":373.43,\"y\":423.41,\"z\":145.91}', '{\"x\":374.58,\"y\":411.65,\"z\":142.1}', '[]', 1, 'House', 1, 1000000, '0', 0),
(27, '2044NorthConkerAvenue', '2044 North Conker Avenue', '{\"x\":347.21,\"y\":440.86,\"z\":147.7}', '{\"x\":341.76,\"y\":437.84,\"z\":149.39}', '{\"x\":334.36,\"y\":428.34,\"z\":145.57}', '[]', 1, 'House', 1, 1000000, '0', 0),
(28, 'EclipseTower', 'Eclipse Tower', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '0', '0', '[]', 1, '0', 1, 0, 'Collector', 0),
(29, 'EclipseTowerApartment', 'Eclipse Tower, Apt', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-784.81,\"y\":323.59,\"z\":212.0}', '{\"x\":-793.33,\"y\":326.62,\"z\":210.8}', '[]', 0, 'Apartment', 1, 525000, 'EclipseTower', 0),
(30, 'EclipseTowerPenthouse', 'Eclipse Tower, Pnt', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-781.84,\"y\":323.68,\"z\":176.8}', '{\"x\":-761.08,\"y\":325.41,\"z\":170.61}', '[]', 0, 'Penthouse', 1, 400000, 'EclipseTower', 0),
(31, 'ModernPenthouse', 'Modern Penthouse', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-774.21,\"y\":341.97,\"z\":196.69}', '{\"x\":-763.33,\"y\":329.09,\"z\":199.49}', 'apa_v_mp_h_01_b', 0, 'Penthouse', 1, 400000, 'EclipseTower', 0),
(32, 'StimmungsvollPenthouse', 'Moody Penthouse', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-774.21,\"y\":341.97,\"z\":196.69}', '{\"x\":-763.33,\"y\":329.09,\"z\":199.49}', 'apa_v_mp_h_02_b', 0, 'Penthouse', 1, 400000, 'EclipseTower', 0),
(33, 'DynastischPenthouse', 'Vibrant Penthouse', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-774.21,\"y\":341.97,\"z\":196.69}', '{\"x\":-763.33,\"y\":329.09,\"z\":199.49}', 'apa_v_mp_h_03_b', 0, 'Penthouse', 1, 400000, 'EclipseTower', 0),
(34, 'PraegnantPenthouse', 'Sharp Penthouse', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-774.21,\"y\":341.97,\"z\":196.69}', '{\"x\":-763.33,\"y\":329.09,\"z\":199.49}', 'apa_v_mp_h_04_b', 0, 'Penthouse', 1, 400000, 'EclipseTower', 0),
(35, 'MonochromePenthouse', 'Monochrome Penthouse', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-774.21,\"y\":341.97,\"z\":196.69}', '{\"x\":-763.33,\"y\":329.09,\"z\":199.49}', 'apa_v_mp_h_05_b', 0, 'Penthouse', 1, 400000, 'EclipseTower', 0),
(36, 'VerfuehrerischPenthouse', 'Seductive Penthouse', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-774.21,\"y\":341.97,\"z\":196.69}', '{\"x\":-763.33,\"y\":329.09,\"z\":199.49}', 'apa_v_mp_h_06_b', 0, 'Penthouse', 1, 400000, 'EclipseTower', 0),
(37, 'MajestetischPenthouse', 'Regal Penthouse', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-774.21,\"y\":341.97,\"z\":196.69}', '{\"x\":-763.33,\"y\":329.09,\"z\":199.49}', 'apa_v_mp_h_07_b', 0, 'Penthouse', 1, 400000, 'EclipseTower', 0),
(38, 'MaritimPenthouse', 'Aqua Penthouse', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-774.21,\"y\":341.97,\"z\":196.69}', '{\"x\":-763.33,\"y\":329.09,\"z\":199.49}', 'apa_v_mp_h_08_b', 0, 'Penthouse', 1, 400000, 'EclipseTower', 0),
(39, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1446.4,\"y\":-539.1,\"z\":34.74}', '0', '0', '[]', 1, '0', 1, 0, 'Collector', 0),
(40, 'DellPerroHeightsApt ', 'Dell Perro Heights, Apt', '{\"x\":-1446.4,\"y\":-539.1,\"z\":34.74}', '{\"x\":-1452.42,\"y\":-540.32,\"z\":74.04}', '{\"x\":-1449.84,\"y\":-548.88,\"z\":72.84}', '[]', 0, 'Apartment', 1, 525000, 'DellPerroHeights', 0),
(41, 'DellPerroHeightsPnt', 'Dell Perro Heights, Pnt', '{\"x\":-1446.4,\"y\":-539.1,\"z\":34.74}', '{\"x\":-1451.33,\"y\":-524.05,\"z\":69.65}', '{\"x\":-1467.42,\"y\":-537.1,\"z\":63.36}', '[]', 0, 'Penthouse', 1, 575000, 'DellPerroHeights', 0),
(42, 'BondsLowApartment', 'Bonds, Apt', '{\"x\":329.1,\"y\":-800.87,\"z\":29.27}', '{\"x\":266.12,\"y\":-1007.05,\"z\":-100.95}', '{\"x\":259.76,\"y\":-1003.94,\"z\":-99.01}', '[]', 1, 'Wohnung', 1, 156000, '0', 0),
(43, 'WeazelPlazaPnt', 'Weazel Plaze, Pnt', '{\"x\":-916.7,\"y\":-450.77,\"z\":39.6}', '{\"x\":-888.86,\"y\":-451.74,\"z\":95.46}', '{\"x\":-899.47,\"y\":-434.26,\"z\":89.26}', '[]', 1, 'Penthouse', 1, 575000, '0', 0),
(44, 'TinselTower', 'Tinsel Tower, Apt', '{\"x\":-618.36,\"y\":36.37,\"z\":43.57}', '{\"x\":-603.21,\"y\":58.93,\"z\":98.2}', '{\"x\":-594.77,\"y\":56.14,\"z\":97.0}', '[]', 1, 'Apartment', 1, 525000, '0', 0),
(45, 'ThePinkCage', 'Pink Cage Hotel', '{\"x\":314.88,\"y\":-227.43,\"z\":54.02}', '{\"x\":151.4,\"y\":-1007.46,\"z\":-99.0}', '{\"x\":152.29,\"y\":-1001.29,\"z\":-99.0}', '[]', 1, 'Hotel', 1, 40000, '0', 0),
(48, 'RichardMajesticApartment', 'Richard Majestic, Apt', '{\"x\":-937.02,\"y\":-379.41,\"z\":38.96}', '{\"x\":-912.82,\"y\":-365.27,\"z\":114.27}', '{\"x\":-903.92,\"y\":-363.59,\"z\":113.07}', '[]', 1, 'Apartment', 1, 525000, '0', 0),
(50, 'MiRd6085', '6085 Milton Road', '{\"x\":-658.87,\"y\":888.0,\"z\":229.24}', '{\"x\":-682.39,\"y\":592.65,\"z\":145.38}', '{\"x\":-671.59,\"y\":587.37,\"z\":141.57}', '[]', 1, 'House', 1, 20000, '0', 1),
(51, 'LakeVWEst', 'Lake Vinewood Est', '{\"x\":-152.43,\"y\":911.2,\"z\":234.65}', '{\"x\":-174.23,\"y\":497.29,\"z\":137.67}', '{\"x\":-167.38,\"y\":487.78,\"z\":133.84}', '[]', 1, 'House', 1, 20000, '0', 1),
(56, 'VWPowerSt', 'PowerSt 0702', '{\"x\":284.71,\"y\":47.19,\"z\":91.66}', '{\"x\":151.4,\"y\":-1007.46,\"z\":-99.0}', '{\"x\":152.29,\"y\":-1001.29,\"z\":-99.0}', '[]', 1, 'Hotel', 1, 320000, '0', 0),
(57, 'LaPuGomaSt', 'La Puerta GomaSt', '{\"x\":-970.14,\"y\":-1431.4,\"z\":6.67}', '{\"x\":151.4,\"y\":-1007.46,\"z\":-99.0}', '{\"x\":152.29,\"y\":-1001.29,\"z\":-99.0}', '[]', 1, 'Hotel', 1, 320000, '0', 0),
(58, 'Tahitian', 'The Tahitian', '{\"x\":-25.50,\"y\":-1556.38,\"z\":29.68}', '{\"x\":151.4,\"y\":-1007.46,\"z\":-99.0}', '{\"x\":152.29,\"y\":-1001.29,\"z\":-99.0}', '[]', 1, 'Hotel', 1, 320000, '0', 0),
(67, 'WhDr3673', '3673 Whispymound Drive', '{\"x\":45.69,\"y\":556.71,\"z\":179.18}', '{\"x\":117.21,\"y\":559.67,\"z\":184.3}', '{\"x\":122.17,\"y\":548.84,\"z\":180.5}', '[]', 1, 'House', 1, 20000, '0', 1),
(68, 'MeSt', 'Melanoma St', '{\"x\":-1114.6,\"y\":-1579.04,\"z\":7.68}', '{\"x\":151.4,\"y\":-1007.46,\"z\":-99.0}', '{\"x\":152.29,\"y\":-1001.29,\"z\":-99.0}', '[]', 1, 'Hotel', 1, 320000, '0', 0),
(69, '1018NRF', '1018 North Rockford', '{\"x\":-1973.91,\"y\":630.68,\"z\":121.54}', '{\"x\":-174.23,\"y\":497.29,\"z\":137.67}', '{\"x\":-167.38,\"y\":487.78,\"z\":133.84}', '[]', 1, 'House', 1, 320000, '0', 1),
(78, 'MazeBank', 'Maze Bank', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '0', '0', '[]', 1, '0', 0, 0, 'Collector', 0),
(79, 'MBO1', 'MB Executive Rich', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '{\"x\":-77.71,\"y\":-829.89,\"z\":243.39}', '{\"x\":-78.1,\"y\":-810.65,\"z\":243.39}', 'ex_dt1_11_office_02b', 0, 'Office', 1, 1200000, 'MazeBank', 0),
(80, 'MBO2', 'MB Executive Cool', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '{\"x\":-77.71,\"y\":-829.89,\"z\":243.39}', '{\"x\":-78.1,\"y\":-810.65,\"z\":243.39}', 'ex_dt1_11_office_02c', 0, 'Office', 1, 1200000, 'MazeBank', 0),
(81, 'MBO3', 'MB Executive Contrast', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '{\"x\":-77.71,\"y\":-829.89,\"z\":243.39}', '{\"x\":-78.1,\"y\":-810.65,\"z\":243.39}', 'ex_dt1_11_office_02a', 0, 'Office', 1, 1200000, 'MazeBank', 0),
(82, 'MBO4', 'MB Old Spice Warm', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '{\"x\":-77.71,\"y\":-829.89,\"z\":243.39}', '{\"x\":-78.1,\"y\":-810.65,\"z\":243.39}', 'ex_dt1_11_office_01a', 0, 'Office', 1, 1200000, 'MazeBank', 0),
(83, 'MBO5', 'MB Old Spice Classical', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '{\"x\":-77.71,\"y\":-829.89,\"z\":243.39}', '{\"x\":-78.1,\"y\":-810.65,\"z\":243.39}', 'ex_dt1_11_office_01b', 0, 'Office', 1, 1200000, 'MazeBank', 0),
(84, 'MBO6', 'MB Old Spice Vintage', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '{\"x\":-77.71,\"y\":-829.89,\"z\":243.39}', '{\"x\":-78.1,\"y\":-810.65,\"z\":243.39}', 'ex_dt1_11_office_01c', 0, 'Office', 1, 1200000, 'MazeBank', 0),
(85, 'MBO7', 'MB Power Broker Ice', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '{\"x\":-77.71,\"y\":-829.89,\"z\":243.39}', '{\"x\":-78.1,\"y\":-810.65,\"z\":243.39}', 'ex_dt1_11_office_03a', 0, 'Office', 1, 1200000, 'MazeBank', 0),
(86, 'MBO8', 'MB Power Broker Conservative', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '{\"x\":-77.71,\"y\":-829.89,\"z\":243.39}', '{\"x\":-78.1,\"y\":-810.65,\"z\":243.39}', 'ex_dt1_11_office_03b', 0, 'Office', 1, 1200000, 'MazeBank', 0),
(87, 'MBO9', 'MB Power Broker Polished', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '{\"x\":-77.71,\"y\":-829.89,\"z\":243.39}', '{\"x\":-78.1,\"y\":-810.65,\"z\":243.39}', 'ex_dt1_11_office_03c', 0, 'Office', 1, 1200000, 'MazeBank', 0),
(88, 'VespucciClubhouse', 'Vespucci Clubhouse', '{\"x\":-1134.61,\"y\":-1568.99,\"z\":4.41}', '{\"x\":997.64,\"y\":-3158.04,\"z\":-38.91}', '{\"x\":1009.89,\"y\":-3168.35,\"z\":-38.89}', '[]', 1, 'ClubHouse', 1, 200000, '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000),
(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000),
(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000),
(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000),
(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000),
(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000),
(7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500),
(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000),
(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000),
(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000),
(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000),
(12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', 1300000),
(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', 1300000),
(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', 1300000),
(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', 1300000),
(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', 1300000),
(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', 1300000),
(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', 1300000),
(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', 1300000),
(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', 1300000),
(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', 1300000),
(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', 1300000),
(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', 1300000),
(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', 1300000),
(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', 1300000),
(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', 1300000),
(28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', 1300000),
(29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', 1300000),
(30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', 1300000),
(31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', 1300000),
(32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', 1300000),
(33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', 1300000),
(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', 1300000),
(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', 1300000),
(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', 1300000),
(37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', 1700000),
(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', 1700000),
(40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000),
(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000);

-- --------------------------------------------------------

--
-- Table structure for table `prop_owner`
--

CREATE TABLE `prop_owner` (
  `id` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  `charactername` varchar(255) DEFAULT NULL,
  `property` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `rented` int(11) DEFAULT NULL,
  `trusted` varchar(1000) DEFAULT NULL,
  `locked` int(11) DEFAULT 1,
  `deposit` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prop_owner`
--

INSERT INTO `prop_owner` (`id`, `owner`, `charactername`, `property`, `price`, `rented`, `trusted`, `locked`, `deposit`) VALUES
(1, 'steam:1100001468829f9', 'Baasha Bhai', 'MonochromePenthouse', 400000, 0, '[]', 1, 0),
(2, 'steam:1100001468829f9', 'Bhai Baasha', 'DellPerroHeightsPnt', 575000, 0, '[]', 1, 0),
(3, 'steam:11000014abc7198', 'Spyder Webb', 'DellPerroHeightsPnt', 575000, 0, '[]', 1, 0),
(7, 'steam:11000014abc7198', 'Spyder Webb', 'MBO6', 1200000, 0, '[]', 1, 0),
(8, 'steam:11000014abc7198', 'Spyder Webb', 'BondsLowApartment', 156000, 0, '[]', 1, 0),
(9, 'steam:11000014abc7198', 'Spyder Webb', 'VWPowerSt', 320000, 0, '[]', 1, 0),
(10, 'steam:11000014abc7198', 'Spyder Webb', '2045NorthConkerAvenue', 1000000, 0, '[]', 1, 0),
(11, 'steam:11000014abc7198', 'Spyder Webb', '1018NRF', 320000, 0, '[]', 1, 0),
(12, 'steam:11000014abc7198', 'Spyder Webb', 'WhDr3673', 20000, 0, '[]', 1, 0),
(13, 'steam:11000014abc7198', 'Spyder Webb', 'LaPuGomaSt', 320000, 0, '[]', 1, 0),
(14, 'steam:11000014abc7198', 'Spyder Webb', 'ThePinkCage', 40000, 0, '[]', 1, 0),
(15, 'steam:11000014abc7198', 'Spyder Webb', 'LakeVWEst', 20000, 0, '[]', 1, 0),
(16, 'steam:11000014abc7198', 'Spyder Webb', 'MiRd6085', 20000, 0, '[]', 1, 0),
(18, 'steam:11000014ad2648c', 'Mr Ip', 'WeazelPlazaPnt', 2875, 1, '[]', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `renzu_clothes`
--

CREATE TABLE `renzu_clothes` (
  `identifier` varchar(64) NOT NULL DEFAULT '',
  `wardrobe` longtext DEFAULT NULL,
  `inventory` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `renzu_clothes`
--

INSERT INTO `renzu_clothes` (`identifier`, `wardrobe`, `inventory`) VALUES
('steam:110000142bdf425', '{\"m\":{\"eye_squint\":0,\"chest_3\":0,\"face_md_weight\":50,\"arms_2\":0,\"beard_4\":0,\"cheeks_2\":0,\"cheeks_3\":0,\"chain_2\":0,\"chin_4\":0,\"tshirt_1\":1,\"bodyb_1\":-1,\"nose_2\":0,\"ears_2\":1,\"bracelets_1\":-1,\"helmet_1\":-1,\"nose_4\":0,\"decals_1\":0,\"eyebrows_6\":0,\"beard_2\":0,\"bags_2\":0,\"lipstick_2\":0,\"bproof_1\":0,\"jaw_1\":0,\"hair_2\":0,\"sun_1\":0,\"jaw_2\":0,\"ears_1\":1,\"nose_5\":0,\"blemishes_2\":0,\"tshirt_2\":0,\"helmet_2\":-1,\"nose_6\":0,\"makeup_3\":0,\"dad\":0,\"skin_md_weight\":50,\"sex\":0,\"chest_2\":0,\"beard_3\":61,\"eye_color\":0,\"eyebrows_4\":0,\"watches_1\":-1,\"hair_color_2\":0,\"bags_1\":0,\"complexion_1\":0,\"chain_1\":0,\"bodyb_3\":-1,\"chest_1\":0,\"moles_2\":0,\"eyebrows_5\":0,\"hair_1\":0,\"age_2\":0,\"chin_2\":0,\"glasses_2\":-1,\"lip_thickness\":0,\"pants_2\":0,\"chin_3\":0,\"makeup_1\":0,\"nose_1\":0,\"eyebrows_3\":0,\"bodyb_4\":0,\"glasses_1\":-1,\"shoes_1\":0,\"beard_1\":0,\"mom\":21,\"lipstick_4\":0,\"chin_1\":0,\"blush_2\":0,\"nose_3\":0,\"blush_3\":\"2\",\"eyebrows_2\":10,\"moles_1\":0,\"cheeks_1\":0,\"decals_2\":0,\"makeup_2\":0,\"pants_1\":0,\"hair_color_1\":0,\"mask_2\":0,\"lipstick_1\":0,\"eyebrows_1\":0,\"bracelets_2\":0,\"blush_1\":0,\"lipstick_3\":32,\"torso_2\":0,\"blemishes_1\":0,\"makeup_4\":0,\"mask_1\":0,\"shoes_2\":0,\"complexion_2\":0,\"neck_thickness\":0,\"bodyb_2\":0,\"bproof_2\":0,\"torso_1\":0,\"sun_2\":0,\"watches_2\":-1,\"arms\":0,\"age_1\":0}}', '{\"SP_M_UPPR_0_0\":{\"compo\":\"arms\",\"draw\":0,\"texture\":0,\"count\":1},\"SP_M_FEET_0_0\":{\"compo\":\"shoes\",\"draw\":0,\"texture\":0,\"count\":1},\"DLC_MP_HEIST_M_EAR1_0\":{\"compo\":\"ears\",\"texture\":0,\"draw\":1,\"count\":1},\"SP_M_ACCS_1_0\":{\"compo\":\"tshirt\",\"texture\":0,\"draw\":1,\"count\":1},\"SP_M_BERD_0_0\":{\"compo\":\"mask\",\"draw\":0,\"texture\":0,\"count\":1},\"SP_M_HAND_0_0\":{\"compo\":\"bags\",\"draw\":0,\"texture\":0,\"count\":1},\"SP_M_TEEF_0_0\":{\"compo\":\"chain\",\"draw\":0,\"texture\":0,\"count\":1},\"SP_M_JBIB_0_0\":{\"compo\":\"torso\",\"draw\":0,\"texture\":0,\"count\":1},\"SP_M_ACCS_0_0\":{\"compo\":\"tshirt\",\"draw\":0,\"texture\":0,\"count\":1},\"SP_M_LOWR_0_0\":{\"compo\":\"pants\",\"draw\":0,\"texture\":0,\"count\":1},\"SP_M_DECL_0_0\":{\"compo\":\"decals\",\"draw\":0,\"texture\":0,\"count\":1}}'),
('steam:1100001468829f9', '[]', '{\"DLC_MP_LUXE2_M_JBIB_1_2\":{\"count\":1,\"texture\":\"2\",\"draw\":\"77\",\"compo\":\"torso\"},\"SP_M_BERD_0_0\":{\"count\":1,\"texture\":0,\"draw\":0,\"compo\":\"mask\"},\"SP_M_FEET_0_0\":{\"count\":1,\"texture\":0,\"draw\":0,\"compo\":\"shoes\"},\"SP_M_JBIB_0_0\":{\"count\":1,\"texture\":0,\"draw\":0,\"compo\":\"torso\"},\"SP_M_HAND_0_0\":{\"count\":1,\"texture\":0,\"draw\":0,\"compo\":\"bags\"},\"SP_M_UPPR_0_0\":{\"count\":1,\"texture\":0,\"draw\":0,\"compo\":\"arms\"},\"SP_M_DECL_0_0\":{\"count\":1,\"texture\":0,\"draw\":0,\"compo\":\"decals\"},\"SP_M_LOWR_0_0\":{\"count\":1,\"texture\":0,\"draw\":0,\"compo\":\"pants\"},\"SP_M_TEEF_0_0\":{\"count\":1,\"texture\":0,\"draw\":0,\"compo\":\"chain\"},\"SP_M_ACCS_0_0\":{\"count\":1,\"texture\":0,\"draw\":0,\"compo\":\"tshirt\"}}'),
('steam:11000014abc7198', '{\"test\":{\"dad\":0,\"lipstick_1\":0,\"glasses_2\":-1,\"makeup_3\":0,\"beard_1\":3,\"torso_2\":0,\"chin_1\":0,\"watches_2\":-1,\"blush_3\":\"2\",\"blemishes_1\":0,\"makeup_4\":0,\"neck_thickness\":0,\"ears_1\":-1,\"pants_2\":0,\"arms_2\":0,\"cheeks_2\":0,\"age_1\":0,\"chest_2\":0,\"chain_1\":0,\"mask_2\":0,\"shoes_2\":3,\"chest_3\":0,\"lip_thickness\":0,\"bodyb_3\":-1,\"cheeks_3\":0,\"lipstick_4\":0,\"eye_color\":0,\"jaw_2\":0,\"lipstick_3\":32,\"nose_1\":0,\"decals_2\":0,\"nose_3\":0,\"pants_1\":0,\"helmet_2\":-1,\"eyebrows_2\":10,\"arms\":0,\"moles_1\":0,\"shoes_1\":42,\"mask_1\":0,\"chin_3\":0,\"blemishes_2\":0,\"moles_2\":0,\"complexion_2\":0,\"tshirt_1\":0,\"beard_2\":10,\"hair_color_2\":0,\"eyebrows_5\":0,\"skin_md_weight\":50,\"blush_2\":0,\"helmet_1\":-1,\"bags_2\":0,\"nose_6\":0,\"tshirt_2\":0,\"bracelets_1\":-1,\"nose_5\":0,\"decals_1\":0,\"sun_1\":0,\"makeup_2\":0,\"face_md_weight\":50,\"bodyb_1\":-1,\"beard_3\":61,\"bodyb_4\":0,\"eyebrows_6\":0,\"sex\":0,\"lipstick_2\":0,\"bodyb_2\":0,\"age_2\":0,\"mom\":21,\"eye_squint\":0,\"chest_1\":0,\"bracelets_2\":0,\"torso_1\":0,\"chin_2\":0,\"complexion_1\":0,\"nose_4\":0,\"chain_2\":0,\"cheeks_1\":0,\"jaw_1\":0,\"glasses_1\":-1,\"hair_1\":59,\"bproof_1\":0,\"makeup_1\":0,\"eyebrows_3\":0,\"nose_2\":0,\"blush_1\":0,\"beard_4\":0,\"eyebrows_4\":0,\"bags_1\":0,\"watches_1\":-1,\"ears_2\":-1,\"sun_2\":0,\"hair_color_1\":2,\"hair_2\":0,\"chin_4\":0,\"eyebrows_1\":20,\"bproof_2\":0}}', '{\"DLC_MP_H3_M_LEGS_1_0\":{\"texture\":\"0\",\"compo\":\"pants\",\"count\":1,\"draw\":\"121\"},\"DLC_MP_LOW2_M_FEET_1_3\":{\"texture\":3,\"count\":1,\"compo\":\"shoes\",\"draw\":42},\"DLC_MP_H4_M_TEETH_8_0\":{\"texture\":\"0\",\"count\":1,\"compo\":\"chain\",\"draw\":\"144\"},\"SP_M_JBIB_0_0\":{\"texture\":0,\"count\":1,\"compo\":\"torso\",\"draw\":0},\"DLC_MP_BEACH_M_JBIB0_0\":{\"texture\":0,\"compo\":\"torso\",\"count\":1,\"draw\":16},\"SP_M_HAND_0_0\":{\"texture\":0,\"compo\":\"bags\",\"count\":1,\"draw\":0},\"SP_M_UPPR_0_0\":{\"texture\":0,\"compo\":\"arms\",\"count\":1,\"draw\":0},\"SP_M_DECL_0_0\":{\"texture\":0,\"compo\":\"decals\",\"count\":1,\"draw\":0},\"DLC_MP_LUXE_M_JBIB_3_2\":{\"texture\":\"2\",\"count\":1,\"compo\":\"torso\",\"draw\":\"73\"},\"SP_M_ACCS_15_0\":{\"texture\":0,\"compo\":\"tshirt\",\"count\":1,\"draw\":15},\"SP_M_FEET_12_0\":{\"texture\":0,\"compo\":\"shoes\",\"count\":1,\"draw\":12},\"DLC_MP_LOW_M_JBIB_7_1\":{\"texture\":\"1\",\"compo\":\"torso\",\"count\":1,\"draw\":\"87\"},\"DLC_MP_LOW_M_JBIB_7_11\":{\"texture\":\"11\",\"count\":1,\"compo\":\"torso\",\"draw\":\"87\"},\"SP_M_TEEF_0_0\":{\"texture\":0,\"compo\":\"chain\",\"count\":1,\"draw\":0},\"SP_M_BERD_0_0\":{\"texture\":0,\"compo\":\"mask\",\"count\":1,\"draw\":0},\"DLC_MP_LUXE_M_FEET_0_0\":{\"texture\":\"0\",\"compo\":\"shoes\",\"count\":1,\"draw\":\"28\"},\"SP_M_LOWR_0_0\":{\"texture\":0,\"compo\":\"pants\",\"count\":1,\"draw\":0},\"SP_M_ACCS_0_0\":{\"texture\":0,\"count\":1,\"compo\":\"tshirt\",\"draw\":0}}');

-- --------------------------------------------------------

--
-- Table structure for table `roda_blips`
--

CREATE TABLE `roda_blips` (
  `identifier` varchar(250) DEFAULT NULL,
  `x` float DEFAULT NULL,
  `y` float DEFAULT NULL,
  `z` float DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `sprite` int(11) DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `blipid` int(11) NOT NULL,
  `universal` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roda_blips`
--

INSERT INTO `roda_blips` (`identifier`, `x`, `y`, `z`, `name`, `sprite`, `color`, `blipid`, `universal`) VALUES
('license:8a5b23ff06c424d19219403c140537d4f94b55c0', 1400.06, 1141.2, 119.08, 'Reggie\'s DEN', 40, 74, 52, 0),
('license:c920806f43006faf9e0949d91451e07eccc45afa', -300.1, 6256.06, 31.52, 'Hen House', 428, 1, 53, 0),
('license:c920806f43006faf9e0949d91451e07eccc45afa', 2525.75, 1992.56, 20.14, 'Big Race Track', 315, 25, 54, 0),
('license:c920806f43006faf9e0949d91451e07eccc45afa', -1134.79, -1741.78, 4.05, 'Custom Cars', 523, 27, 55, 0);

-- --------------------------------------------------------

--
-- Table structure for table `saving_accounts`
--

CREATE TABLE `saving_accounts` (
  `id` varchar(40) CHARACTER SET utf8mb4 DEFAULT NULL,
  `money` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE `shipments` (
  `id` int(11) DEFAULT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `count` varchar(50) DEFAULT NULL,
  `time` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `ShopNumber` int(11) NOT NULL DEFAULT 0,
  `src` varchar(50) NOT NULL,
  `count` int(11) NOT NULL,
  `item` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `territories`
--

CREATE TABLE `territories` (
  `zone` varchar(50) NOT NULL DEFAULT '',
  `control` varchar(50) NOT NULL DEFAULT '',
  `influence` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `trunk_inventory`
--

CREATE TABLE `trunk_inventory` (
  `id` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trunk_inventory`
--

INSERT INTO `trunk_inventory` (`id`, `plate`, `data`, `owned`) VALUES
(4, 'RTJ 104 ', '{\"weapons\":[{\"label\":\"Combat pistol\",\"name\":\"WEAPON_COMBATPISTOL\",\"ammo\":400}]}', 1),
(5, 'AQD 252 ', '{\"weapons\":[{\"label\":\"Pistol\",\"name\":\"WEAPON_PISTOL\",\"ammo\":0}]}', 1),
(10, 'IJX 645 ', '{\"coffre\":[{\"name\":\"fishingrod\",\"count\":1},{\"name\":\"jewels\",\"count\":3},{\"name\":\"goldwatch\",\"count\":2500}]}', 1),
(11, 'YMS 061 ', '{\"coffre\":[]}', 1),
(12, 'BCN 431 ', '{\"coffre\":[{\"count\":1,\"name\":\"marijuana\"}],\"black_money\":[{\"amount\":5000}]}', 1),
(18, 'BAB 847 ', '{\"coffre\":[{\"count\":25,\"name\":\"steel\"},{\"count\":6,\"name\":\"emerald\"}]}', 1),
(20, '84UBE094', '{}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `job` varchar(255) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `firstname` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `status` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `jail` int(11) NOT NULL DEFAULT 0,
  `last_house` int(11) DEFAULT 0,
  `pet` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `loaf_furniture` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `pin` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `tattoos` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `house` longtext COLLATE utf8mb4_bin NOT NULL DEFAULT '{"owns":false,"furniture":[],"houseId":0}',
  `bought_furniture` longtext COLLATE utf8mb4_bin NOT NULL DEFAULT '{}',
  `pregnant` tinyint(1) DEFAULT 0,
  `hotbar` longtext COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `is_dead`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `status`, `phone_number`, `jail`, `last_house`, `pet`, `loaf_furniture`, `pin`, `tattoos`, `weight`, `last_property`, `house`, `bought_furniture`, `pregnant`, `hotbar`) VALUES
(125, 'steam:11000013f7dc792', 'license:bc076cdca80ba5421991ad5c63149a97c381ba8e', 585534, 'D R A C O', '{\"nose_3\":0,\"cheeks_1\":0,\"torso_2\":0,\"blush_3\":\"2\",\"complexion_1\":0,\"glasses_1\":-1,\"lipstick_3\":32,\"eyebrows_2\":10,\"torso_1\":0,\"nose_6\":0,\"neck_thickness\":0,\"chin_4\":0,\"arms_2\":0,\"cheeks_2\":0,\"watches_1\":-1,\"tshirt_1\":0,\"jaw_2\":0,\"makeup_1\":0,\"eye_squint\":0,\"chain_1\":0,\"eyebrows_3\":0,\"makeup_2\":0,\"sex\":0,\"hair_color_2\":0,\"eye_color\":0,\"nose_2\":0,\"ears_1\":-1,\"ears_2\":-1,\"complexion_2\":0,\"beard_2\":0,\"chin_3\":0,\"makeup_3\":0,\"eyebrows_1\":0,\"helmet_2\":-1,\"lipstick_2\":0,\"chin_1\":0,\"lip_thickness\":0,\"beard_1\":0,\"eyebrows_6\":0,\"blush_1\":0,\"helmet_1\":-1,\"age_2\":0,\"moles_2\":0,\"age_1\":0,\"nose_1\":0,\"pants_1\":0,\"shoes_1\":0,\"beard_3\":61,\"chain_2\":0,\"cheeks_3\":0,\"sun_1\":0,\"tshirt_2\":0,\"eyebrows_4\":0,\"hair_2\":0,\"hair_1\":0,\"shoes_2\":0,\"glasses_2\":-1,\"hair_color_1\":0,\"nose_4\":0,\"face_md_weight\":50,\"nose_5\":0,\"moles_1\":0,\"eyebrows_5\":0,\"jaw_1\":0,\"chin_2\":0,\"lipstick_1\":0,\"makeup_4\":0,\"blush_2\":0,\"arms\":0,\"watches_2\":-1,\"sun_2\":0,\"skin_md_weight\":50,\"pants_2\":0}', 'police', 7, '[{\"name\":\"WEAPON_KNUCKLE\",\"label\":\"Knuckledusters\",\"components\":[],\"ammo\":0},{\"name\":\"WEAPON_APPISTOL\",\"label\":\"AP Pistol\",\"components\":[\"clip_extended\",\"flashlight\",\"suppressor\"],\"ammo\":0},{\"name\":\"WEAPON_COMBATPISTOL\",\"label\":\"Combat Pistol\",\"components\":[\"clip_default\"],\"ammo\":0},{\"name\":\"WEAPON_PISTOL\",\"label\":\"Pistol\",\"components\":[\"clip_default\"],\"ammo\":0},{\"name\":\"WEAPON_PISTOL_MK2\",\"label\":\"Pistol MK2\",\"components\":[\"clip_default\"],\"ammo\":0},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"label\":\"Pump Shotgun\",\"components\":[],\"ammo\":27},{\"name\":\"WEAPON_ADVANCEDRIFLE\",\"label\":\"Advanced Rifle\",\"components\":[\"clip_extended\",\"flashlight\",\"scope\",\"suppressor\"],\"ammo\":439},{\"name\":\"WEAPON_COMPACTRIFLE\",\"label\":\"Compact Rifle\",\"components\":[\"clip_default\"],\"ammo\":439},{\"name\":\"WEAPON_SPECIALCARBINE\",\"label\":\"Special Carbine\",\"components\":[\"clip_default\"],\"ammo\":439},{\"name\":\"WEAPON_PETROLCAN\",\"label\":\"Jerrycan\",\"components\":[],\"ammo\":4500}]', '{\"z\":29.40000000000145,\"x\":-1371.0,\"y\":-558.3999999999069}', 7768100, 0, 'superadmin', 0, 'Al', 'Capone', '09.07.2002', 'm', '200', '[{\"val\":0,\"percent\":0.0,\"name\":\"drug\"},{\"val\":380000,\"percent\":38.0,\"name\":\"hunger\"},{\"val\":410000,\"percent\":41.0,\"name\":\"thirst\"}]', NULL, 0, 0, NULL, NULL, '', '[{\"collection\":\"mpbeach_overlays\",\"nameHash\":\"MP_Bea_M_Neck_001\",\"Count\":2},{\"collection\":\"mpbusiness_overlays\",\"nameHash\":\"MP_Buis_M_Neck_000\",\"Count\":2},{\"collection\":\"mpchristmas2_overlays\",\"nameHash\":\"MP_Xmas2_M_Tat_029\",\"Count\":2}]', 1, NULL, '{\"owns\":false,\"furniture\":[],\"houseId\":0}', '{}', 0, NULL),
(126, 'steam:11000014a064e27', 'license:06b1fb46f7014362ebac94323d989a85c8cb130e', 90950, 'H A T A K E', '{\"cheeks_2\":0,\"bracelets_2\":0,\"arms_2\":0,\"hair_color_2\":0,\"moles_2\":0,\"eyebrows_3\":0,\"bodyb_4\":0,\"bproof_1\":0,\"mask_2\":2,\"lipstick_3\":0,\"blemishes_1\":0,\"chin_4\":0,\"ears_2\":0,\"hair_2\":3,\"skin_md_weight\":50,\"hair_color_1\":29,\"face\":0,\"blush_2\":0,\"eye_squint\":0,\"chest_2\":0,\"face_md_weight\":50,\"eyebrows_2\":0,\"arms\":4,\"complexion_2\":0,\"glasses_1\":0,\"beard_2\":0,\"lip_thickness\":0,\"bodyb_2\":0,\"beard_1\":0,\"chest_1\":0,\"pants_2\":3,\"decals_1\":0,\"nose_1\":0,\"age_1\":0,\"nose_6\":0,\"bproof_2\":0,\"moles_1\":0,\"makeup_4\":0,\"eyebrows_5\":0,\"watches_2\":0,\"makeup_2\":0,\"blemishes_2\":0,\"makeup_3\":0,\"watches_1\":-1,\"bracelets_1\":-1,\"helmet_2\":0,\"tshirt_1\":15,\"complexion_1\":0,\"mom\":21,\"neck_thickness\":0,\"lipstick_2\":0,\"lipstick_1\":0,\"makeup_1\":0,\"sun_1\":0,\"beard_4\":0,\"chain_2\":0,\"cheeks_1\":0,\"helmet_1\":-1,\"shoes_2\":0,\"chin_3\":0,\"chain_1\":0,\"skin\":0,\"eyebrows_4\":0,\"bodyb_1\":-1,\"lipstick_4\":0,\"sex\":0,\"eyebrows_1\":0,\"bags_2\":0,\"cheeks_3\":0,\"bags_1\":0,\"nose_2\":0,\"torso_2\":3,\"jaw_2\":0,\"age_2\":0,\"blush_3\":0,\"chin_1\":0,\"mask_1\":25,\"decals_2\":0,\"hair_1\":15,\"ears_1\":-1,\"shoes_1\":9,\"blush_1\":0,\"nose_3\":0,\"torso_1\":112,\"nose_4\":0,\"pants_1\":49,\"eyebrows_6\":0,\"eye_color\":0,\"dad\":0,\"tshirt_2\":0,\"glasses_2\":0,\"bodyb_3\":-1,\"chin_2\":0,\"sun_2\":0,\"nose_5\":0,\"chest_3\":0,\"jaw_1\":0,\"beard_3\":0}', 'mechanic', 4, '[{\"components\":[\"clip_default\"],\"name\":\"WEAPON_PISTOL\",\"ammo\":7,\"label\":\"Pistol\"},{\"components\":[\"clip_default\"],\"name\":\"WEAPON_PISTOL_MK2\",\"ammo\":7,\"label\":\"Pistol MK2\"}]', '{\"x\":-210.79999999998837,\"z\":30.80000000000291,\"y\":-1325.3999999999069}', 2832800, 0, 'user', 1, 'Brandon', 'Myburgh', '11.11.2002', 'm', '180', '[{\"percent\":0.0,\"name\":\"drug\",\"val\":0},{\"percent\":26.21,\"name\":\"hunger\",\"val\":262100},{\"percent\":44.6575,\"name\":\"thirst\",\"val\":446575}]', NULL, 0, 0, NULL, NULL, '', NULL, 1, NULL, '{\"owns\":false,\"furniture\":[],\"houseId\":0}', '{}', 0, NULL),
(127, 'steam:11000013d9aecf5', 'license:06ffe9fd4b96749703191ff26534dd46a78a13e5', 0, 'Daxxx', '{\"makeup_4\":0,\"chain_1\":0,\"ears_2\":-1,\"nose_4\":0,\"neck_thickness\":4,\"eye_color\":1,\"age_1\":0,\"mom\":25,\"hair_2\":0,\"shoes_2\":3,\"arms_2\":0,\"cheeks_2\":-4,\"chin_4\":0,\"eyebrows_5\":10,\"chin_3\":0,\"glasses_2\":1,\"sex\":0,\"watches_2\":-1,\"lipstick_1\":0,\"beard_3\":61,\"hair_color_2\":28,\"hair_1\":126,\"cheeks_3\":-7,\"blush_1\":0,\"nose_1\":-1,\"eyebrows_3\":0,\"sun_1\":0,\"face_md_weight\":68,\"arms\":4,\"pants_2\":0,\"hair_color_1\":28,\"eyebrows_2\":10,\"tshirt_1\":43,\"moles_2\":0,\"skin_md_weight\":50,\"eyebrows_4\":0,\"blush_2\":0,\"tshirt_2\":0,\"helmet_1\":-1,\"lip_thickness\":-3,\"helmet_2\":-1,\"watches_1\":-1,\"makeup_3\":0,\"beard_1\":10,\"chin_2\":0,\"complexion_2\":0,\"torso_2\":5,\"eyebrows_1\":0,\"nose_2\":3,\"eyebrows_6\":0,\"eye_squint\":5,\"jaw_2\":-3,\"pants_1\":87,\"shoes_1\":66,\"nose_5\":0,\"chain_2\":0,\"torso_1\":192,\"makeup_2\":0,\"cheeks_1\":0,\"makeup_1\":0,\"lipstick_2\":0,\"beard_2\":10,\"nose_6\":0,\"jaw_1\":-3,\"chin_1\":3,\"dad\":12,\"moles_1\":0,\"complexion_1\":0,\"sun_2\":0,\"glasses_1\":5,\"blush_3\":\"2\",\"ears_1\":-1,\"nose_3\":3,\"age_2\":0,\"lipstick_3\":32}', 'ccd', 1, '[]', '{\"x\":-826.0,\"y\":-1139.3999999999069,\"z\":7.39999999999963}', 83000, 0, 'user', 0, 'Nathan Cordillo', 'Carvahlo', '09/29/2002', 'm', '170', '[{\"percent\":0.0,\"val\":0,\"name\":\"drug\"},{\"percent\":38.41,\"val\":384100,\"name\":\"hunger\"},{\"percent\":41.3075,\"val\":413075,\"name\":\"thirst\"}]', NULL, 0, 0, NULL, NULL, '', NULL, 1, NULL, '{\"owns\":false,\"furniture\":[],\"houseId\":0}', '{}', 0, NULL),
(128, 'steam:11000014292f4b2', 'license:0a42276300a24c7218da9c7f82dd389b3640a685', 10600, 'hencoerasmus5', '{\"chain_2\":0,\"chain_1\":0,\"ears_2\":-1,\"nose_4\":0,\"neck_thickness\":0,\"eye_color\":0,\"age_1\":0,\"hair_2\":0,\"shoes_2\":2,\"arms_2\":0,\"cheeks_2\":0,\"chin_4\":0,\"eyebrows_5\":0,\"chin_3\":0,\"blush_3\":\"2\",\"sex\":0,\"watches_2\":-1,\"lipstick_1\":0,\"beard_3\":61,\"hair_color_2\":0,\"hair_1\":8,\"cheeks_3\":0,\"glasses_1\":-1,\"nose_1\":0,\"eyebrows_3\":0,\"sun_1\":0,\"face_md_weight\":50,\"arms\":0,\"pants_2\":0,\"hair_color_1\":0,\"eyebrows_2\":10,\"tshirt_1\":0,\"moles_2\":0,\"skin_md_weight\":50,\"eyebrows_4\":0,\"blush_2\":0,\"pants_1\":14,\"helmet_1\":-1,\"lip_thickness\":0,\"helmet_2\":-1,\"complexion_1\":0,\"makeup_3\":0,\"beard_1\":21,\"chin_2\":0,\"complexion_2\":0,\"blush_1\":0,\"nose_2\":0,\"eyebrows_6\":0,\"eye_squint\":0,\"jaw_2\":0,\"chin_1\":0,\"moles_1\":2,\"lipstick_3\":32,\"nose_3\":0,\"makeup_4\":0,\"makeup_2\":0,\"cheeks_1\":0,\"makeup_1\":0,\"lipstick_2\":0,\"eyebrows_1\":0,\"nose_6\":0,\"jaw_1\":0,\"torso_1\":345,\"beard_2\":10,\"torso_2\":2,\"tshirt_2\":0,\"sun_2\":0,\"watches_1\":-1,\"glasses_2\":-1,\"ears_1\":-1,\"shoes_1\":38,\"age_2\":0,\"nose_5\":0}', 'ambulance', 3, '[{\"ammo\":0,\"components\":[\"clip_default\"],\"label\":\"Pistol\",\"name\":\"WEAPON_PISTOL\"},{\"ammo\":0,\"components\":[\"clip_default\"],\"label\":\"Pistol .50\",\"name\":\"WEAPON_PISTOL50\"}]', '{\"z\":4.39999999999963,\"y\":-1702.3999999999069,\"x\":-1152.6000000000932}', 354800, 0, 'superadmin 100', 0, 'Gregory', 'House ', '06082003', 'm', '195', '[{\"percent\":0.0,\"val\":0,\"name\":\"drug\"},{\"percent\":38.21,\"val\":382100,\"name\":\"hunger\"},{\"percent\":31.1575,\"val\":311575,\"name\":\"thirst\"}]', NULL, 0, 0, NULL, NULL, '', NULL, 1, NULL, '{\"owns\":false,\"furniture\":[],\"houseId\":0}', '{}', 0, NULL),
(131, 'steam:1100001442255b5', 'license:487a5d91a1e449874a3f238c0daa16daae404ee3', 9548, 'Obi-Wan_Chenobi', '{\"lipstick_1\":9,\"bodyb_2\":0,\"bags_2\":0,\"jaw_1\":0,\"sun_1\":0,\"ears_1\":-1,\"pants_1\":41,\"arms\":2,\"helmet_2\":0,\"age_2\":0,\"chest_1\":0,\"hair_color_1\":2,\"blemishes_1\":0,\"eye_color\":2,\"chain_2\":0,\"bodyb_3\":-1,\"torso_1\":139,\"nose_5\":0,\"hair_color_2\":3,\"shoes_1\":77,\"makeup_2\":0,\"beard_2\":0,\"chin_4\":0,\"nose_4\":0,\"beard_4\":0,\"dad\":29,\"eye_squint\":0,\"nose_1\":0,\"face\":0,\"helmet_1\":50,\"eyebrows_5\":1,\"skin_md_weight\":50,\"nose_3\":0,\"chain_1\":0,\"eyebrows_1\":1,\"neck_thickness\":0,\"sun_2\":0,\"moles_1\":0,\"eyebrows_2\":10,\"lipstick_3\":19,\"hair_1\":65,\"tshirt_1\":37,\"watches_1\":-1,\"makeup_3\":1,\"nose_6\":0,\"mask_1\":0,\"blush_1\":0,\"bags_1\":0,\"bodyb_4\":0,\"chest_3\":0,\"chin_2\":0,\"makeup_4\":1,\"watches_2\":0,\"chest_2\":0,\"skin\":0,\"eyebrows_6\":0,\"pants_2\":5,\"moles_2\":0,\"arms_2\":0,\"hair_2\":0,\"complexion_1\":0,\"lipstick_2\":0,\"lip_thickness\":0,\"decals_2\":0,\"ears_2\":0,\"shoes_2\":0,\"glasses_2\":0,\"bodyb_1\":-1,\"torso_2\":5,\"makeup_1\":0,\"jaw_2\":0,\"glasses_1\":5,\"bracelets_1\":-1,\"nose_2\":0,\"cheeks_1\":0,\"eyebrows_4\":1,\"bracelets_2\":0,\"bproof_1\":3,\"chin_1\":0,\"blemishes_2\":0,\"sex\":1,\"blush_3\":0,\"decals_1\":0,\"blush_2\":0,\"chin_3\":0,\"bproof_2\":1,\"tshirt_2\":0,\"mom\":45,\"lipstick_4\":0,\"cheeks_3\":0,\"beard_1\":0,\"age_1\":0,\"mask_2\":0,\"complexion_2\":0,\"eyebrows_3\":1,\"beard_3\":0,\"face_md_weight\":50,\"cheeks_2\":0}', 'police', 7, '[{\"ammo\":20,\"name\":\"WEAPON_PUMPSHOTGUN\",\"components\":[],\"label\":\"Pump Shotgun\"}]', '{\"x\":446.19999999995346,\"y\":-988.8000000000466,\"z\":25.40000000000145}', 114000, 0, 'user', 0, 'Valentina ', 'Bruni', '09.09.2002', 'f', '150', '[{\"percent\":0.0,\"val\":0,\"name\":\"drug\"},{\"percent\":26.3,\"val\":263000,\"name\":\"hunger\"},{\"percent\":44.725,\"val\":447250,\"name\":\"thirst\"}]', NULL, 0, 0, NULL, NULL, '', NULL, 1, NULL, '{\"owns\":false,\"furniture\":[],\"houseId\":0}', '{}', 0, NULL),
(132, 'steam:110000140bed131', 'license:91af6ec10c51ac4c2e3be83c48f071c48bb7360f', 0, 'Vollas01', '{\"jaw_1\":0,\"skin\":0,\"blemishes_1\":0,\"pants_1\":13,\"bproof_1\":33,\"bags_1\":0,\"bracelets_2\":0,\"cheeks_2\":0,\"makeup_4\":0,\"sun_2\":0,\"chain_1\":0,\"complexion_2\":0,\"chest_1\":0,\"ears_2\":0,\"chest_3\":0,\"watches_2\":0,\"decals_2\":0,\"watches_1\":-1,\"nose_4\":0,\"pants_2\":0,\"hair_color_2\":0,\"nose_1\":0,\"jaw_2\":0,\"mask_2\":0,\"bodyb_4\":0,\"lipstick_3\":0,\"blemishes_2\":0,\"chin_4\":0,\"eyebrows_5\":0,\"bproof_2\":0,\"tshirt_2\":0,\"beard_1\":0,\"eyebrows_2\":0,\"helmet_1\":102,\"lipstick_1\":0,\"mom\":21,\"face_md_weight\":50,\"dad\":0,\"torso_2\":0,\"beard_3\":0,\"bags_2\":0,\"beard_2\":0,\"tshirt_1\":132,\"age_2\":0,\"moles_2\":0,\"chin_1\":0,\"eyebrows_4\":0,\"eyebrows_6\":0,\"nose_5\":0,\"blush_3\":0,\"hair_color_1\":0,\"chin_3\":0,\"nose_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"cheeks_1\":0,\"glasses_1\":5,\"mask_1\":0,\"neck_thickness\":0,\"shoes_2\":0,\"decals_1\":0,\"hair_1\":0,\"eye_squint\":0,\"chest_2\":0,\"lipstick_4\":0,\"sex\":0,\"complexion_1\":0,\"hair_2\":0,\"cheeks_3\":0,\"chain_2\":0,\"sun_1\":0,\"eyebrows_3\":0,\"nose_3\":0,\"arms\":1,\"moles_1\":0,\"blush_2\":0,\"bodyb_2\":0,\"arms_2\":0,\"chin_2\":0,\"beard_4\":0,\"glasses_2\":0,\"nose_6\":0,\"face\":0,\"helmet_2\":2,\"makeup_2\":0,\"lip_thickness\":0,\"bodyb_1\":-1,\"blush_1\":0,\"lipstick_2\":0,\"bodyb_3\":-1,\"skin_md_weight\":50,\"ears_1\":-1,\"eye_color\":0,\"shoes_1\":67,\"age_1\":0,\"bracelets_1\":-1,\"makeup_1\":0,\"torso_1\":263}', 'police', 7, '[]', '{\"x\":465.19999999995346,\"z\":30.59999999999854,\"y\":-993.0}', 111500, 0, 'user', 0, 'Ryno', 'Volschenk', '01.01.2002', 'm', '200', '[{\"percent\":0.0,\"name\":\"drug\",\"val\":0},{\"percent\":49.11,\"name\":\"hunger\",\"val\":491100},{\"percent\":49.3325,\"name\":\"thirst\",\"val\":493325}]', NULL, 0, 0, NULL, NULL, '', NULL, 1, NULL, '{\"owns\":false,\"furniture\":[],\"houseId\":0}', '{}', 0, NULL),
(133, 'steam:11000013d4486db', 'license:3425d5ce2164c011a6e02f86284b8b3a0f203841', 0, 'Ahsan Qureshi', '{\"lipstick_2\":0,\"lipstick_3\":0,\"makeup_2\":0,\"complexion_2\":0,\"chest_1\":0,\"glasses_2\":0,\"hair_color_2\":0,\"lipstick_1\":0,\"makeup_3\":0,\"ears_2\":0,\"arms\":0,\"watches_2\":0,\"age_1\":0,\"makeup_4\":0,\"beard_2\":0,\"chest_2\":0,\"shoes_1\":0,\"bracelets_2\":0,\"eyebrows_4\":0,\"mask_2\":0,\"face\":0,\"bracelets_1\":-1,\"eyebrows_2\":0,\"eyebrows_3\":0,\"bags_1\":0,\"hair_1\":0,\"helmet_2\":0,\"tshirt_1\":0,\"makeup_1\":0,\"bproof_1\":0,\"sex\":0,\"arms_2\":0,\"sun_2\":0,\"moles_1\":0,\"hair_2\":0,\"decals_2\":0,\"bproof_2\":0,\"mask_1\":0,\"shoes_2\":0,\"ears_1\":-1,\"beard_3\":0,\"glasses_1\":0,\"pants_2\":0,\"decals_1\":0,\"eye_color\":0,\"complexion_1\":0,\"watches_1\":-1,\"torso_2\":0,\"beard_1\":0,\"eyebrows_1\":0,\"pants_1\":0,\"age_2\":0,\"tshirt_2\":0,\"hair_color_1\":0,\"blush_1\":0,\"blush_2\":0,\"blemishes_1\":0,\"torso_1\":0,\"lipstick_4\":0,\"bags_2\":0,\"skin\":0,\"moles_2\":0,\"bodyb_1\":0,\"chain_2\":0,\"bodyb_2\":0,\"helmet_1\":-1,\"blush_3\":0,\"chest_3\":0,\"beard_4\":0,\"blemishes_2\":0,\"chain_1\":0,\"sun_1\":0}', 'unemployed', 0, '[{\"ammo\":24,\"label\":\"Pistol\",\"components\":[\"clip_default\"],\"name\":\"WEAPON_PISTOL\"}]', '{\"x\":289.4000000000233,\"y\":-595.1999999999534,\"z\":43.19999999999709}', 47000, 0, 'user', 0, 'Ahsan', 'Qureshi', '02.02.2000', 'm', '146', '[{\"val\":0,\"percent\":0.0,\"name\":\"drug\"},{\"val\":486100,\"percent\":48.61,\"name\":\"hunger\"},{\"val\":489575,\"percent\":48.95749999999999,\"name\":\"thirst\"}]', NULL, 0, 0, NULL, NULL, '', NULL, 1, NULL, '{\"owns\":false,\"furniture\":[],\"houseId\":0}', '{}', 0, NULL),
(134, 'steam:110000142bdf425', 'license:6f4147c7a60c893c6d467b55dd54cc98be4c5ee7', 999, 'Tiger', '{\"blush_1\":0,\"lipstick_3\":0,\"makeup_2\":0,\"complexion_2\":0,\"chest_1\":0,\"glasses_2\":0,\"hair_color_2\":0,\"lipstick_1\":0,\"bodyb_1\":0,\"ears_2\":0,\"arms\":0,\"watches_2\":0,\"age_1\":0,\"makeup_4\":0,\"beard_2\":0,\"chest_2\":0,\"shoes_1\":0,\"bracelets_2\":0,\"eyebrows_4\":0,\"blush_2\":0,\"face\":0,\"bracelets_1\":-1,\"chain_1\":0,\"eyebrows_3\":0,\"bags_1\":0,\"lipstick_4\":0,\"helmet_2\":0,\"tshirt_1\":0,\"makeup_1\":0,\"bproof_1\":0,\"sex\":0,\"chain_2\":0,\"sun_2\":0,\"moles_1\":0,\"hair_2\":0,\"decals_2\":0,\"bproof_2\":0,\"mask_1\":0,\"shoes_2\":0,\"eyebrows_1\":0,\"beard_3\":0,\"glasses_1\":0,\"pants_2\":0,\"decals_1\":0,\"eye_color\":0,\"complexion_1\":0,\"watches_1\":-1,\"torso_2\":0,\"beard_1\":0,\"bodyb_2\":0,\"pants_1\":0,\"blemishes_2\":0,\"age_2\":0,\"lipstick_2\":0,\"makeup_3\":0,\"skin\":0,\"blemishes_1\":0,\"torso_1\":0,\"ears_1\":-1,\"bags_2\":0,\"tshirt_2\":0,\"moles_2\":0,\"hair_color_1\":0,\"helmet_1\":-1,\"arms_2\":0,\"mask_2\":0,\"sun_1\":0,\"chest_3\":0,\"beard_4\":0,\"eyebrows_2\":0,\"hair_1\":0,\"blush_3\":0}', 'ambulance', 3, '[{\"ammo\":0,\"name\":\"WEAPON_PUMPSHOTGUN\",\"components\":[],\"label\":\"Pump Shotgun\"}]', '{\"z\":29.19999999999709,\"x\":257.0,\"y\":-1268.7999999998138}', 150700, 0, 'superadmin', 0, 'Walter', 'White', '01.01.2000', 'm', '200', '[{\"val\":0,\"percent\":0.0,\"name\":\"drug\"},{\"val\":369900,\"percent\":36.99,\"name\":\"hunger\"},{\"val\":402425,\"percent\":40.2425,\"name\":\"thirst\"}]', NULL, 0, 0, NULL, NULL, '', NULL, 1, NULL, '{\"owns\":false,\"furniture\":[],\"houseId\":0}', '{}', 0, NULL),
(136, 'steam:1100001468829f9', 'license:c920806f43006faf9e0949d91451e07eccc45afa', 9999, 'Baasha Bhai', '{\"torso_2\":0,\"watches_2\":-1,\"eyebrows_3\":0,\"torso_1\":0,\"blush_3\":\"2\",\"watches_1\":-1,\"eyebrows_6\":0,\"eyebrows_4\":0,\"cheeks_3\":0,\"nose_3\":0,\"beard_3\":61,\"complexion_1\":0,\"makeup_4\":0,\"lipstick_3\":32,\"age_1\":0,\"helmet_2\":-1,\"skin_md_weight\":50,\"cheeks_2\":0,\"eye_squint\":0,\"shoes_2\":0,\"lipstick_1\":0,\"chin_1\":0,\"makeup_3\":0,\"blush_2\":0,\"helmet_1\":-1,\"jaw_1\":0,\"shoes_1\":0,\"sun_1\":0,\"sex\":0,\"nose_4\":0,\"nose_6\":0,\"makeup_2\":0,\"hair_color_2\":0,\"chain_1\":0,\"eyebrows_5\":0,\"arms\":0,\"jaw_2\":0,\"moles_2\":0,\"lip_thickness\":0,\"pants_2\":0,\"eyebrows_1\":0,\"ears_1\":-1,\"beard_2\":0,\"complexion_2\":0,\"hair_2\":0,\"chin_4\":0,\"chain_2\":0,\"age_2\":0,\"arms_2\":0,\"face_md_weight\":50,\"hair_color_1\":0,\"eye_color\":0,\"sun_2\":0,\"nose_1\":0,\"tshirt_1\":0,\"eyebrows_2\":10,\"hair_1\":0,\"neck_thickness\":0,\"blush_1\":0,\"glasses_1\":-1,\"chin_3\":0,\"ears_2\":-1,\"makeup_1\":0,\"beard_1\":0,\"nose_5\":0,\"nose_2\":0,\"glasses_2\":-1,\"cheeks_1\":0,\"chin_2\":0,\"moles_1\":0,\"pants_1\":0,\"tshirt_2\":0,\"lipstick_2\":0}', 'police', 7, '[]', '{\"x\":-1791.2000000001863,\"y\":830.1999999999534,\"z\":140.0}', 60000, 0, 'superadmin', 0, 'Baasha', 'Bhai', '04091991', 'm', '200', '[{\"name\":\"drug\",\"percent\":0.0,\"val\":0},{\"name\":\"hunger\",\"percent\":93.63,\"val\":936300},{\"name\":\"thirst\",\"percent\":95.2225,\"val\":952225}]', NULL, 0, 0, NULL, NULL, '', NULL, 1, NULL, '{\"owns\":false,\"furniture\":[],\"houseId\":0}', '{}', 0, NULL),
(137, 'steam:1100001468a4d74', 'license:d4b9acacaa2d366baa761b17fe2fe55dc6e01c1f', 49994800, 'Baasha bhai', '{\"makeup_3\":0,\"sun_2\":0,\"age_2\":0,\"eyebrows_5\":0,\"shoes_2\":2,\"eyebrows_3\":31,\"torso_1\":4,\"hair_1\":4,\"skin_md_weight\":50,\"chain_1\":0,\"makeup_2\":0,\"pants_2\":3,\"lip_thickness\":0,\"neck_thickness\":0,\"blush_1\":0,\"beard_1\":10,\"sex\":0,\"cheeks_1\":0,\"chin_2\":0,\"nose_3\":0,\"eyebrows_6\":0,\"lipstick_1\":0,\"beard_2\":10,\"complexion_2\":0,\"helmet_1\":-1,\"eye_squint\":0,\"blush_2\":0,\"age_1\":0,\"shoes_1\":15,\"face_md_weight\":50,\"makeup_4\":0,\"ears_1\":-1,\"chin_4\":0,\"blush_3\":\"2\",\"lipstick_2\":0,\"glasses_1\":-1,\"beard_3\":2,\"helmet_2\":-1,\"cheeks_3\":0,\"hair_color_1\":40,\"complexion_1\":0,\"chin_1\":0,\"cheeks_2\":0,\"nose_6\":0,\"jaw_1\":0,\"pants_1\":23,\"arms\":1,\"chin_3\":0,\"eye_color\":0,\"nose_1\":0,\"arms_2\":0,\"sun_1\":0,\"nose_5\":0,\"tshirt_2\":3,\"torso_2\":2,\"makeup_1\":0,\"hair_color_2\":0,\"jaw_2\":0,\"watches_2\":-1,\"nose_4\":0,\"glasses_2\":-1,\"moles_1\":0,\"nose_2\":0,\"eyebrows_1\":23,\"eyebrows_2\":10,\"tshirt_1\":25,\"eyebrows_4\":31,\"ears_2\":-1,\"moles_2\":0,\"lipstick_3\":32,\"watches_1\":-1,\"hair_2\":0,\"chain_2\":0}', 'police', 4, '[{\"name\":\"WEAPON_KNIFE\",\"label\":\"Knife\",\"ammo\":0,\"components\":[]},{\"name\":\"WEAPON_NIGHTSTICK\",\"label\":\"Nightstick\",\"ammo\":0,\"components\":[]},{\"name\":\"WEAPON_GOLFCLUB\",\"label\":\"Golf club\",\"ammo\":0,\"components\":[]},{\"name\":\"WEAPON_CROWBAR\",\"label\":\"Crow bar\",\"ammo\":0,\"components\":[]},{\"name\":\"WEAPON_APPISTOL\",\"label\":\"AP pistol\",\"ammo\":0,\"components\":[\"clip_default\"]},{\"name\":\"WEAPON_PISTOL50\",\"label\":\"Pistol .50\",\"ammo\":0,\"components\":[\"clip_default\"]},{\"name\":\"WEAPON_REVOLVER\",\"label\":\"Heavy revolver\",\"ammo\":0,\"components\":[]},{\"name\":\"WEAPON_SNSPISTOL\",\"label\":\"Sns pistol\",\"ammo\":0,\"components\":[\"clip_default\"]},{\"name\":\"WEAPON_HEAVYPISTOL\",\"label\":\"Heavy pistol\",\"ammo\":0,\"components\":[\"clip_default\"]},{\"name\":\"WEAPON_VINTAGEPISTOL\",\"label\":\"Vintage pistol\",\"ammo\":0,\"components\":[\"clip_default\"]},{\"name\":\"WEAPON_MICROSMG\",\"label\":\"Micro SMG\",\"ammo\":9999,\"components\":[\"clip_default\"]},{\"name\":\"WEAPON_SMG\",\"label\":\"SMG\",\"ammo\":9999,\"components\":[\"clip_default\"]},{\"name\":\"WEAPON_ASSAULTSMG\",\"label\":\"Assault SMG\",\"ammo\":9999,\"components\":[\"clip_default\"]},{\"name\":\"WEAPON_MINISMG\",\"label\":\"Mini smg\",\"ammo\":9999,\"components\":[\"clip_default\"]},{\"name\":\"WEAPON_MACHINEPISTOL\",\"label\":\"Machine pistol\",\"ammo\":9999,\"components\":[\"clip_default\"]},{\"name\":\"WEAPON_COMBATPDW\",\"label\":\"Combat pdw\",\"ammo\":9999,\"components\":[\"clip_default\"]},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"label\":\"Pump shotgun\",\"ammo\":9999,\"components\":[]},{\"name\":\"WEAPON_SAWNOFFSHOTGUN\",\"label\":\"Sawed off shotgun\",\"ammo\":9999,\"components\":[]},{\"name\":\"WEAPON_ASSAULTSHOTGUN\",\"label\":\"Assault shotgun\",\"ammo\":9999,\"components\":[\"clip_default\"]},{\"name\":\"WEAPON_BULLPUPSHOTGUN\",\"label\":\"Bullpup shotgun\",\"ammo\":9999,\"components\":[]},{\"name\":\"WEAPON_HEAVYSHOTGUN\",\"label\":\"Heavy shotgun\",\"ammo\":9999,\"components\":[\"clip_default\"]},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"label\":\"Assault rifle\",\"ammo\":0,\"components\":[\"clip_default\"]},{\"name\":\"WEAPON_CARBINERIFLE\",\"label\":\"Carbine rifle\",\"ammo\":0,\"components\":[\"clip_default\"]},{\"name\":\"WEAPON_ADVANCEDRIFLE\",\"label\":\"Advanced rifle\",\"ammo\":0,\"components\":[\"clip_default\"]},{\"name\":\"WEAPON_SPECIALCARBINE\",\"label\":\"Special carbine\",\"ammo\":0,\"components\":[\"clip_default\"]},{\"name\":\"WEAPON_BULLPUPRIFLE\",\"label\":\"Bullpup rifle\",\"ammo\":0,\"components\":[\"clip_default\"]},{\"name\":\"WEAPON_COMBATMG\",\"label\":\"Combat MG\",\"ammo\":0,\"components\":[\"clip_default\"]},{\"name\":\"WEAPON_GUSENBERG\",\"label\":\"Gusenberg sweeper\",\"ammo\":0,\"components\":[\"clip_default\"]},{\"name\":\"WEAPON_SNIPERRIFLE\",\"label\":\"Sniper rifle\",\"ammo\":0,\"components\":[\"scope\"]},{\"name\":\"WEAPON_HEAVYSNIPER\",\"label\":\"Heavy sniper\",\"ammo\":0,\"components\":[\"scope_advanced\"]},{\"name\":\"WEAPON_GRENADELAUNCHER\",\"label\":\"Grenade launcher\",\"ammo\":17,\"components\":[]},{\"name\":\"WEAPON_RPG\",\"label\":\"Rocket launcher\",\"ammo\":14,\"components\":[]},{\"name\":\"WEAPON_MINIGUN\",\"label\":\"Minigun\",\"ammo\":0,\"components\":[]},{\"name\":\"WEAPON_GRENADE\",\"label\":\"Grenade\",\"ammo\":25,\"components\":[]},{\"name\":\"WEAPON_STICKYBOMB\",\"label\":\"Sticky bomb\",\"ammo\":25,\"components\":[]},{\"name\":\"WEAPON_SMOKEGRENADE\",\"label\":\"Smoke grenade\",\"ammo\":25,\"components\":[]},{\"name\":\"WEAPON_BZGAS\",\"label\":\"Bz gas\",\"ammo\":25,\"components\":[]},{\"name\":\"WEAPON_MOLOTOV\",\"label\":\"Molotov cocktail\",\"ammo\":25,\"components\":[]},{\"name\":\"WEAPON_FIREEXTINGUISHER\",\"label\":\"Fire extinguisher\",\"ammo\":2000,\"components\":[]},{\"name\":\"WEAPON_PETROLCAN\",\"label\":\"Jerrycan\",\"ammo\":4500,\"components\":[]},{\"name\":\"WEAPON_BALL\",\"label\":\"Ball\",\"ammo\":1,\"components\":[]},{\"name\":\"WEAPON_BOTTLE\",\"label\":\"Bottle\",\"ammo\":0,\"components\":[]},{\"name\":\"WEAPON_DAGGER\",\"label\":\"Dagger\",\"ammo\":0,\"components\":[]},{\"name\":\"WEAPON_FIREWORK\",\"label\":\"Firework\",\"ammo\":20,\"components\":[]},{\"name\":\"WEAPON_MUSKET\",\"label\":\"Musket\",\"ammo\":9999,\"components\":[]},{\"name\":\"WEAPON_STUNGUN\",\"label\":\"Taser\",\"ammo\":9999,\"components\":[]},{\"name\":\"WEAPON_HOMINGLAUNCHER\",\"label\":\"Homing launcher\",\"ammo\":10,\"components\":[]},{\"name\":\"WEAPON_PROXMINE\",\"label\":\"Proximity mine\",\"ammo\":5,\"components\":[]},{\"name\":\"WEAPON_SNOWBALL\",\"label\":\"Snow ball\",\"ammo\":10,\"components\":[]},{\"name\":\"WEAPON_FLAREGUN\",\"label\":\"Flaregun\",\"ammo\":20,\"components\":[]},{\"name\":\"WEAPON_MARKSMANPISTOL\",\"label\":\"Marksman pistol\",\"ammo\":0,\"components\":[]},{\"name\":\"WEAPON_KNUCKLE\",\"label\":\"Knuckledusters\",\"ammo\":0,\"components\":[]},{\"name\":\"WEAPON_HATCHET\",\"label\":\"Hatchet\",\"ammo\":0,\"components\":[]},{\"name\":\"WEAPON_RAILGUN\",\"label\":\"Railgun\",\"ammo\":20,\"components\":[]},{\"name\":\"WEAPON_MACHETE\",\"label\":\"Machete\",\"ammo\":0,\"components\":[]},{\"name\":\"WEAPON_SWITCHBLADE\",\"label\":\"Switchblade\",\"ammo\":0,\"components\":[]},{\"name\":\"WEAPON_DBSHOTGUN\",\"label\":\"Double barrel shotgun\",\"ammo\":9999,\"components\":[]},{\"name\":\"WEAPON_AUTOSHOTGUN\",\"label\":\"Auto shotgun\",\"ammo\":9999,\"components\":[]},{\"name\":\"WEAPON_BATTLEAXE\",\"label\":\"Battle axe\",\"ammo\":0,\"components\":[]},{\"name\":\"WEAPON_COMPACTLAUNCHER\",\"label\":\"Compact launcher\",\"ammo\":17,\"components\":[]},{\"name\":\"WEAPON_PIPEBOMB\",\"label\":\"Pipe bomb\",\"ammo\":10,\"components\":[]},{\"name\":\"WEAPON_POOLCUE\",\"label\":\"Pool cue\",\"ammo\":0,\"components\":[]},{\"name\":\"WEAPON_WRENCH\",\"label\":\"Pipe wrench\",\"ammo\":0,\"components\":[]},{\"name\":\"WEAPON_FLASHLIGHT\",\"label\":\"Flashlight\",\"ammo\":0,\"components\":[]},{\"name\":\"GADGET_PARACHUTE\",\"label\":\"Parachute\",\"ammo\":0,\"components\":[]},{\"name\":\"WEAPON_FLARE\",\"label\":\"Flare gun\",\"ammo\":25,\"components\":[]},{\"name\":\"WEAPON_DOUBLEACTION\",\"label\":\"Double-Action Revolver\",\"ammo\":0,\"components\":[]}]', '{\"x\":377.8,\"y\":294.6,\"z\":103.2}', 50176600, 100, 'superadmin', 0, 'Bhai', 'Baasha', '1991/04/09', 'm', '200', '[{\"name\":\"hunger\",\"percent\":95.16,\"val\":951600},{\"name\":\"thirst\",\"percent\":89.125,\"val\":891250}]', NULL, 0, 0, NULL, NULL, '15', NULL, 1, NULL, '{\"owns\":false,\"furniture\":[],\"houseId\":0}', '{}', 0, '{\"3\":{\"name\":\"WEAPON_HOMINGLAUNCHER\",\"type\":\"item_weapon\",\"label\":\"Homing launcher\"},\"0\":{\"name\":\"bread\",\"label\":\"bread\",\"type\":\"item_standard\"},\"1\":{\"name\":\"WEAPON_MINIGUN\",\"type\":\"item_weapon\",\"label\":\"Minigun\"},\"2\":{\"name\":\"WEAPON_GRENADELAUNCHER\",\"type\":\"item_weapon\",\"label\":\"Grenade launcher\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `money` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `identifier`, `name`, `money`) VALUES
(56, 'steam:11000013f7dc792', 'black_money', 0),
(57, 'steam:11000013d9aecf5', 'black_money', 0),
(58, 'steam:1100001468829f9', 'black_money', 0),
(59, 'steam:110000142bdf425', 'black_money', 0),
(60, 'steam:1100001468a4d74', 'black_money', 56464);

-- --------------------------------------------------------

--
-- Table structure for table `user_inventory`
--

CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8_bin NOT NULL,
  `item` varchar(255) COLLATE utf8_bin NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_inventory`
--

INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
(8495, 'steam:11000013f7dc792', 'jewlery', 0),
(8496, 'steam:11000013f7dc792', 'whiskycoca', 0),
(8497, 'steam:11000013f7dc792', 'sorted_money', 0),
(8498, 'steam:11000013f7dc792', 'weed_packaged', 0),
(8499, 'steam:11000013f7dc792', 'amphetamines_pooch', 0),
(8500, 'steam:11000013f7dc792', 'lingot_dor', 0),
(8501, 'steam:11000013f7dc792', 'leather', 0),
(8502, 'steam:11000013f7dc792', 'key', 0),
(8503, 'steam:11000013f7dc792', 'energy', 0),
(8504, 'steam:11000013f7dc792', 'keycard', 0),
(8505, 'steam:11000013f7dc792', 'steel', 0),
(8506, 'steam:11000013f7dc792', 'xanax', 0),
(8507, 'steam:11000013f7dc792', 'rice', 0),
(8508, 'steam:11000013f7dc792', 'wood', 0),
(8509, 'steam:11000013f7dc792', 'thermite', 0),
(8510, 'steam:11000013f7dc792', 'net_cracker', 0),
(8511, 'steam:11000013f7dc792', 'nitro', 0),
(8512, 'steam:11000013f7dc792', 'pepite_dor', 0),
(8513, 'steam:11000013f7dc792', 'jewels', 0),
(8514, 'steam:11000013f7dc792', 'bankcard', 0),
(8515, 'steam:11000013f7dc792', 'essence', 0),
(8516, 'steam:11000013f7dc792', 'fish', 0),
(8517, 'steam:11000013f7dc792', 'combo2', 0),
(8518, 'steam:11000013f7dc792', 'myrtealcool', 0),
(8519, 'steam:11000013f7dc792', 'wine', 0),
(8520, 'steam:11000013f7dc792', 'goldbar', 0),
(8521, 'steam:11000013f7dc792', 'painpremierprix', 0),
(8522, 'steam:11000013f7dc792', 'donut', 0),
(8523, 'steam:11000013f7dc792', 'rakia', 0),
(8524, 'steam:11000013f7dc792', 'whitewidow', 0),
(8525, 'steam:11000013f7dc792', 'white_rum', 0),
(8526, 'steam:11000013f7dc792', 'whiskycoc', 0),
(8527, 'steam:11000013f7dc792', 'whiskey', 0),
(8528, 'steam:11000013f7dc792', 'weed_untrimmed', 0),
(8529, 'steam:11000013f7dc792', 'weed_pooch', 0),
(8530, 'steam:11000013f7dc792', 'patates', 0),
(8531, 'steam:11000013f7dc792', 'weed', 0),
(8532, 'steam:11000013f7dc792', 'cranberry_juice', 0),
(8533, 'steam:11000013f7dc792', 'metreshooter', 0),
(8534, 'steam:11000013f7dc792', 'crack_pooch', 0),
(8535, 'steam:11000013f7dc792', 'sugar', 0),
(8536, 'steam:11000013f7dc792', 'jagermeister', 0),
(8537, 'steam:11000013f7dc792', 'cosmopolitan', 0),
(8538, 'steam:11000013f7dc792', 'coke', 0),
(8539, 'steam:11000013f7dc792', 'washed_stone', 0),
(8540, 'steam:11000013f7dc792', 'bread', 0),
(8541, 'steam:11000013f7dc792', 'jagerbomb', 0),
(8542, 'steam:11000013f7dc792', 'vodkrb', 0),
(8543, 'steam:11000013f7dc792', 'cannabis', 0),
(8544, 'steam:11000013f7dc792', 'vodkafruit', 0),
(8545, 'steam:11000013f7dc792', 'nuggets1', 0),
(8546, 'steam:11000013f7dc792', 'drill', 0),
(8547, 'steam:11000013f7dc792', 'alive_chicken', 0),
(8548, 'steam:11000013f7dc792', 'vodka', 0),
(8549, 'steam:11000013f7dc792', 'rhum', 0),
(8550, 'steam:11000013f7dc792', 'vodkaenergy', 0),
(8551, 'steam:11000013f7dc792', 'dj_tip', 0),
(8552, 'steam:11000013f7dc792', 'coffee', 0),
(8553, 'steam:11000013f7dc792', 'turtlebait', 0),
(8554, 'steam:11000013f7dc792', 'turtle', 0),
(8555, 'steam:11000013f7dc792', 'afghan', 0),
(8556, 'steam:11000013f7dc792', 'pendrive', 0),
(8557, 'steam:11000013f7dc792', 'licenseplate', 0),
(8558, 'steam:11000013f7dc792', 'milk_package', 0),
(8559, 'steam:11000013f7dc792', 'testpack', 0),
(8560, 'steam:11000013f7dc792', 'meth_pooch', 0),
(8561, 'steam:11000013f7dc792', 'tequila', 0),
(8562, 'steam:11000013f7dc792', 'chips', 0),
(8563, 'steam:11000013f7dc792', 'mega2', 0),
(8564, 'steam:11000013f7dc792', 'soda', 0),
(8565, 'steam:11000013f7dc792', 'stone', 0),
(8566, 'steam:11000013f7dc792', 'sprite', 0),
(8567, 'steam:11000013f7dc792', 'spice', 0),
(8568, 'steam:11000013f7dc792', 'fishbait', 0),
(8569, 'steam:11000013f7dc792', 'packaged_plank', 0),
(8570, 'steam:11000013f7dc792', 'camarones', 0),
(8571, 'steam:11000013f7dc792', 'combo3', 0),
(8572, 'steam:11000013f7dc792', 'syrup', 0),
(8573, 'steam:11000013f7dc792', 'slaughtered_chicken', 0),
(8574, 'steam:11000013f7dc792', 'skunk', 0),
(8575, 'steam:11000013f7dc792', 'copper', 0),
(8576, 'steam:11000013f7dc792', 'lean_pooch', 0),
(8577, 'steam:11000013f7dc792', 'bolcacahuetes', 0),
(8578, 'steam:11000013f7dc792', 'combo4', 0),
(8579, 'steam:11000013f7dc792', 'bourbon', 0),
(8580, 'steam:11000013f7dc792', 'morphine_pooch', 0),
(8581, 'steam:11000013f7dc792', 'opium_pooch', 0),
(8582, 'steam:11000013f7dc792', 'golem', 0),
(8583, 'steam:11000013f7dc792', 'mojito', 0),
(8584, 'steam:11000013f7dc792', 'sickle', 0),
(8585, 'steam:11000013f7dc792', 'morphine', 0),
(8586, 'steam:11000013f7dc792', 'iron', 0),
(8587, 'steam:11000013f7dc792', 'journaux', 0),
(8588, 'steam:11000013f7dc792', 'shovel', 0),
(8589, 'steam:11000013f7dc792', 'shark', 0),
(8590, 'steam:11000013f7dc792', 'condom', 0),
(8591, 'steam:11000013f7dc792', 'chicken', 0),
(8592, 'steam:11000013f7dc792', 'drpepper', 0),
(8593, 'steam:11000013f7dc792', 'coke_pooch', 0),
(8594, 'steam:11000013f7dc792', 'secure_card', 0),
(8595, 'steam:11000013f7dc792', 'marijuana', 0),
(8596, 'steam:11000013f7dc792', 'saucisson', 0),
(8597, 'steam:11000013f7dc792', 'curacao', 0),
(8598, 'steam:11000013f7dc792', 'bolnoixcajou', 0),
(8599, 'steam:11000013f7dc792', 'balde1', 0),
(8600, 'steam:11000013f7dc792', 'rum', 0),
(8601, 'steam:11000013f7dc792', 'rope', 0),
(8602, 'steam:11000013f7dc792', 'marabou', 0),
(8603, 'steam:11000013f7dc792', 'cut_money', 0),
(8604, 'steam:11000013f7dc792', 'rolex', 0),
(8605, 'steam:11000013f7dc792', 'methlab', 0),
(8606, 'steam:11000013f7dc792', 'mixapero', 0),
(8607, 'steam:11000013f7dc792', 'rice_pro', 0),
(8608, 'steam:11000013f7dc792', 'lean', 0),
(8609, 'steam:11000013f7dc792', 'redbull', 0),
(8610, 'steam:11000013f7dc792', 'wool', 0),
(8611, 'steam:11000013f7dc792', 'rhumfruit', 0),
(8612, 'steam:11000013f7dc792', 'brandy', 0),
(8613, 'steam:11000013f7dc792', 'limonade', 0),
(8614, 'steam:11000013f7dc792', 'club_soda', 0),
(8615, 'steam:11000013f7dc792', 'carotool', 0),
(8616, 'steam:11000013f7dc792', 'keys_missionrow_pd_front', 0),
(8617, 'steam:11000013f7dc792', 'mifepristone', 0),
(8618, 'steam:11000013f7dc792', 'cajadecangrejos', 0),
(8619, 'steam:11000013f7dc792', 'playersafe', 0),
(8620, 'steam:11000013f7dc792', 'farine', 0),
(8621, 'steam:11000013f7dc792', 'painrater', 0),
(8622, 'steam:11000013f7dc792', 'medikit', 0),
(8623, 'steam:11000013f7dc792', 'lime', 0),
(8624, 'steam:11000013f7dc792', 'pizza', 0),
(8625, 'steam:11000013f7dc792', 'rhumcoca', 0),
(8626, 'steam:11000013f7dc792', 'laptop', 0),
(8627, 'steam:11000013f7dc792', 'dark_rum', 0),
(8628, 'steam:11000013f7dc792', 'goldNecklace', 0),
(8629, 'steam:11000013f7dc792', 'cigarett', 0),
(8630, 'steam:11000013f7dc792', 'pina_colada', 0),
(8631, 'steam:11000013f7dc792', 'oxygen_mask', 0),
(8632, 'steam:11000013f7dc792', 'phone', 1),
(8633, 'steam:11000013f7dc792', 'caipirinha', 0),
(8634, 'steam:11000013f7dc792', 'crack', 0),
(8635, 'steam:11000013f7dc792', 'mega1', 0),
(8636, 'steam:11000013f7dc792', 'petrol_raffin', 0),
(8637, 'steam:11000013f7dc792', 'icetea', 0),
(8638, 'steam:11000013f7dc792', 'headbag', 0),
(8639, 'steam:11000013f7dc792', 'fixkit', 0),
(8640, 'steam:11000013f7dc792', 'handcuffs', 0),
(8641, 'steam:11000013f7dc792', 'triple_sec', 0),
(8642, 'steam:11000013f7dc792', 'petrol', 0),
(8643, 'steam:11000013f7dc792', 'pastacarbonara', 0),
(8644, 'steam:11000013f7dc792', 'paperweed', 0),
(8645, 'steam:11000013f7dc792', 'packaged_chicken', 0),
(8646, 'steam:11000013f7dc792', 'jusfruit', 0),
(8647, 'steam:11000013f7dc792', 'cachaca', 0),
(8648, 'steam:11000013f7dc792', 'opium', 0),
(8649, 'steam:11000013f7dc792', 'macka', 0),
(8650, 'steam:11000013f7dc792', 'armor', 0),
(8651, 'steam:11000013f7dc792', 'carokit', 0),
(8652, 'steam:11000013f7dc792', 'mint_julep', 0),
(8653, 'steam:11000013f7dc792', 'fishingrod', 0),
(8654, 'steam:11000013f7dc792', 'levonorgestrel', 0),
(8655, 'steam:11000013f7dc792', 'ketamine_pooch', 0),
(8656, 'steam:11000013f7dc792', 'icedtea', 0),
(8657, 'steam:11000013f7dc792', 'keys_master_key', 0),
(8658, 'steam:11000013f7dc792', 'water', 0),
(8659, 'steam:11000013f7dc792', 'ring', 0),
(8660, 'steam:11000013f7dc792', 'goldwatch', 0),
(8661, 'steam:11000013f7dc792', 'coconut_milk', 0),
(8662, 'steam:11000013f7dc792', 'diamond', 0),
(8663, 'steam:11000013f7dc792', 'meth_raw', 0),
(8664, 'steam:11000013f7dc792', 'bieresimple', 0),
(8665, 'steam:11000013f7dc792', 'burger', 0),
(8666, 'steam:11000013f7dc792', 'mai_tai', 0),
(8667, 'steam:11000013f7dc792', 'combo1', 0),
(8668, 'steam:11000013f7dc792', 'emerald', 0),
(8669, 'steam:11000013f7dc792', 'clip', 0),
(8670, 'steam:11000013f7dc792', 'beer', 0),
(8671, 'steam:11000013f7dc792', 'meth_packaged', 0),
(8672, 'steam:11000013f7dc792', 'meth', 0),
(8673, 'steam:11000013f7dc792', 'menthe', 0),
(8674, 'steam:11000013f7dc792', 'teqpaf', 0),
(8675, 'steam:11000013f7dc792', 'mint', 0),
(8676, 'steam:11000013f7dc792', 'martini', 0),
(8677, 'steam:11000013f7dc792', 'marijuana_pooch', 0),
(8678, 'steam:11000013f7dc792', 'cutted_wood', 0),
(8679, 'steam:11000013f7dc792', 'acetone', 0),
(8680, 'steam:11000013f7dc792', 'access_key', 0),
(8681, 'steam:11000013f7dc792', 'malt', 0),
(8682, 'steam:11000013f7dc792', 'monster', 0),
(8683, 'steam:11000013f7dc792', 'lsd_pooch', 0),
(8684, 'steam:11000013f7dc792', 'keys_master_key_single_use', 0),
(8685, 'steam:11000013f7dc792', 'lowradio', 0),
(8686, 'steam:11000013f7dc792', 'light_rum', 0),
(8687, 'steam:11000013f7dc792', 'lotteryticket', 0),
(8688, 'steam:11000013f7dc792', 'loka', 0),
(8689, 'steam:11000013f7dc792', 'lockpickv2', 0),
(8690, 'steam:11000013f7dc792', 'lockpick', 0),
(8691, 'steam:11000013f7dc792', 'lithium', 0),
(8692, 'steam:11000013f7dc792', 'limeade', 0),
(8693, 'steam:11000013f7dc792', 'fabric', 0),
(8694, 'steam:11000013f7dc792', 'amphetamines', 0),
(8695, 'steam:11000013f7dc792', 'bieredequalite', 0),
(8696, 'steam:11000013f7dc792', 'cigarette', 0),
(8697, 'steam:11000013f7dc792', 'cajadecamarones', 0),
(8698, 'steam:11000013f7dc792', 'lighter', 0),
(8699, 'steam:11000013f7dc792', 'combo5', 0),
(8700, 'steam:11000013f7dc792', 'hotdog', 0),
(8701, 'steam:11000013f7dc792', 'fried', 0),
(8702, 'steam:11000013f7dc792', 'ecstasy', 0),
(8703, 'steam:11000013f7dc792', 'lsd', 0),
(8704, 'steam:11000013f7dc792', 'hacking_laptop', 0),
(8705, 'steam:11000013f7dc792', 'salad', 0),
(8706, 'steam:11000013f7dc792', 'heroine', 0),
(8707, 'steam:11000013f7dc792', 'fresh_mix', 0),
(8708, 'steam:11000013f7dc792', 'lemonada', 0),
(8709, 'steam:11000013f7dc792', 'milk_engine', 0),
(8710, 'steam:11000013f7dc792', 'meat', 0),
(8711, 'steam:11000013f7dc792', 'croquettes', 0),
(8712, 'steam:11000013f7dc792', 'ketamine', 0),
(8713, 'steam:11000013f7dc792', 'alcool', 0),
(8714, 'steam:11000013f7dc792', 'fried_chicken', 0),
(8715, 'steam:11000013f7dc792', 'pineapple_juice', 0),
(8716, 'steam:11000013f7dc792', 'joint', 0),
(8717, 'steam:11000013f7dc792', 'cocaine_uncut', 0),
(8718, 'steam:11000013f7dc792', 'cheese', 0),
(8719, 'steam:11000013f7dc792', 'viagra', 0),
(8720, 'steam:11000013f7dc792', 'cointreau', 0),
(8721, 'steam:11000013f7dc792', 'bieremoyen', 0),
(8722, 'steam:11000013f7dc792', 'journal', 0),
(8723, 'steam:11000013f7dc792', 'jagercerbere', 0),
(8724, 'steam:11000013f7dc792', 'margarita', 0),
(8725, 'steam:11000013f7dc792', 'gold', 0),
(8726, 'steam:11000013f7dc792', 'jager', 0),
(8727, 'steam:11000013f7dc792', 'bolpistache', 0),
(8728, 'steam:11000013f7dc792', 'amnesia', 0),
(8729, 'steam:11000013f7dc792', 'ice', 0),
(8730, 'steam:11000013f7dc792', 'iphonex', 0),
(8731, 'steam:11000013f7dc792', 'cocaine_cut', 0),
(8732, 'steam:11000013f7dc792', 'clothe', 0),
(8733, 'steam:11000013f7dc792', 'bolchips', 0),
(8734, 'steam:11000013f7dc792', 'fixtool', 0),
(8735, 'steam:11000013f7dc792', 'heroine_pooch', 0),
(8736, 'steam:11000013f7dc792', 'cocacola', 0),
(8737, 'steam:11000013f7dc792', 'gold_rum', 0),
(8738, 'steam:11000013f7dc792', 'id_card_f', 0),
(8739, 'steam:11000013f7dc792', 'cheesebows', 0),
(8740, 'steam:11000013f7dc792', 'ecstasy_pooch', 0),
(8741, 'steam:11000013f7dc792', 'cannabinoid', 0),
(8742, 'steam:11000013f7dc792', 'camera', 0),
(8743, 'steam:11000013f7dc792', 'cangrejos', 0),
(8744, 'steam:11000013f7dc792', 'cocaine_packaged', 0),
(8745, 'steam:11000013f7dc792', 'bandage', 0),
(8746, 'steam:11000013f7dc792', 'fanta', 0),
(8747, 'steam:11000013d9aecf5', 'jewlery', 0),
(8748, 'steam:11000013d9aecf5', 'whiskycoca', 0),
(8749, 'steam:11000013d9aecf5', 'sorted_money', 0),
(8750, 'steam:11000013d9aecf5', 'weed_packaged', 0),
(8751, 'steam:11000013d9aecf5', 'amphetamines_pooch', 0),
(8752, 'steam:11000013d9aecf5', 'lingot_dor', 0),
(8753, 'steam:11000013d9aecf5', 'leather', 0),
(8754, 'steam:11000013d9aecf5', 'key', 0),
(8755, 'steam:11000013d9aecf5', 'energy', 0),
(8756, 'steam:11000013d9aecf5', 'keycard', 0),
(8757, 'steam:11000013d9aecf5', 'steel', 0),
(8758, 'steam:11000013d9aecf5', 'rice', 0),
(8759, 'steam:11000013d9aecf5', 'wood', 0),
(8760, 'steam:11000013d9aecf5', 'thermite', 0),
(8761, 'steam:11000013d9aecf5', 'xanax', 0),
(8762, 'steam:11000013d9aecf5', 'net_cracker', 0),
(8763, 'steam:11000013d9aecf5', 'nitro', 0),
(8764, 'steam:11000013d9aecf5', 'bankcard', 0),
(8765, 'steam:11000013d9aecf5', 'jewels', 0),
(8766, 'steam:11000013d9aecf5', 'pepite_dor', 0),
(8767, 'steam:11000013d9aecf5', 'essence', 0),
(8768, 'steam:11000013d9aecf5', 'fish', 0),
(8769, 'steam:11000013d9aecf5', 'wine', 0),
(8770, 'steam:11000013d9aecf5', 'myrtealcool', 0),
(8771, 'steam:11000013d9aecf5', 'combo2', 0),
(8772, 'steam:11000013d9aecf5', 'goldbar', 0),
(8773, 'steam:11000013d9aecf5', 'donut', 0),
(8774, 'steam:11000013d9aecf5', 'rakia', 0),
(8775, 'steam:11000013d9aecf5', 'whitewidow', 0),
(8776, 'steam:11000013d9aecf5', 'painpremierprix', 0),
(8777, 'steam:11000013d9aecf5', 'white_rum', 0),
(8778, 'steam:11000013d9aecf5', 'whiskycoc', 0),
(8779, 'steam:11000013d9aecf5', 'whiskey', 0),
(8780, 'steam:11000013d9aecf5', 'weed_untrimmed', 0),
(8781, 'steam:11000013d9aecf5', 'weed_pooch', 0),
(8782, 'steam:11000013d9aecf5', 'patates', 0),
(8783, 'steam:11000013d9aecf5', 'weed', 0),
(8784, 'steam:11000013d9aecf5', 'cranberry_juice', 0),
(8785, 'steam:11000013d9aecf5', 'metreshooter', 0),
(8786, 'steam:11000013d9aecf5', 'crack_pooch', 0),
(8787, 'steam:11000013d9aecf5', 'sugar', 0),
(8788, 'steam:11000013d9aecf5', 'jagermeister', 0),
(8789, 'steam:11000013d9aecf5', 'cosmopolitan', 0),
(8790, 'steam:11000013d9aecf5', 'washed_stone', 0),
(8791, 'steam:11000013d9aecf5', 'coke', 0),
(8792, 'steam:11000013d9aecf5', 'bread', 0),
(8793, 'steam:11000013d9aecf5', 'vodkrb', 0),
(8794, 'steam:11000013d9aecf5', 'jagerbomb', 0),
(8795, 'steam:11000013d9aecf5', 'cannabis', 0),
(8796, 'steam:11000013d9aecf5', 'vodkafruit', 0),
(8797, 'steam:11000013d9aecf5', 'nuggets1', 0),
(8798, 'steam:11000013d9aecf5', 'drill', 0),
(8799, 'steam:11000013d9aecf5', 'alive_chicken', 0),
(8800, 'steam:11000013d9aecf5', 'vodka', 0),
(8801, 'steam:11000013d9aecf5', 'rhum', 0),
(8802, 'steam:11000013d9aecf5', 'vodkaenergy', 0),
(8803, 'steam:11000013d9aecf5', 'coffee', 0),
(8804, 'steam:11000013d9aecf5', 'dj_tip', 0),
(8805, 'steam:11000013d9aecf5', 'turtlebait', 0),
(8806, 'steam:11000013d9aecf5', 'turtle', 0),
(8807, 'steam:11000013d9aecf5', 'afghan', 0),
(8808, 'steam:11000013d9aecf5', 'pendrive', 0),
(8809, 'steam:11000013d9aecf5', 'licenseplate', 0),
(8810, 'steam:11000013d9aecf5', 'milk_package', 0),
(8811, 'steam:11000013d9aecf5', 'testpack', 0),
(8812, 'steam:11000013d9aecf5', 'meth_pooch', 0),
(8813, 'steam:11000013d9aecf5', 'tequila', 0),
(8814, 'steam:11000013d9aecf5', 'chips', 0),
(8815, 'steam:11000013d9aecf5', 'mega2', 0),
(8816, 'steam:11000013d9aecf5', 'soda', 0),
(8817, 'steam:11000013d9aecf5', 'stone', 0),
(8818, 'steam:11000013d9aecf5', 'sprite', 0),
(8819, 'steam:11000013d9aecf5', 'fishbait', 0),
(8820, 'steam:11000013d9aecf5', 'spice', 0),
(8821, 'steam:11000013d9aecf5', 'packaged_plank', 0),
(8822, 'steam:11000013d9aecf5', 'camarones', 0),
(8823, 'steam:11000013d9aecf5', 'syrup', 0),
(8824, 'steam:11000013d9aecf5', 'combo3', 0),
(8825, 'steam:11000013d9aecf5', 'slaughtered_chicken', 0),
(8826, 'steam:11000013d9aecf5', 'skunk', 0),
(8827, 'steam:11000013d9aecf5', 'copper', 0),
(8828, 'steam:11000013d9aecf5', 'lean_pooch', 0),
(8829, 'steam:11000013d9aecf5', 'bolcacahuetes', 0),
(8830, 'steam:11000013d9aecf5', 'combo4', 0),
(8831, 'steam:11000013d9aecf5', 'bourbon', 0),
(8832, 'steam:11000013d9aecf5', 'morphine_pooch', 0),
(8833, 'steam:11000013d9aecf5', 'opium_pooch', 0),
(8834, 'steam:11000013d9aecf5', 'golem', 0),
(8835, 'steam:11000013d9aecf5', 'mojito', 0),
(8836, 'steam:11000013d9aecf5', 'sickle', 0),
(8837, 'steam:11000013d9aecf5', 'morphine', 0),
(8838, 'steam:11000013d9aecf5', 'iron', 0),
(8839, 'steam:11000013d9aecf5', 'journaux', 0),
(8840, 'steam:11000013d9aecf5', 'shovel', 0),
(8841, 'steam:11000013d9aecf5', 'shark', 0),
(8842, 'steam:11000013d9aecf5', 'condom', 0),
(8843, 'steam:11000013d9aecf5', 'chicken', 0),
(8844, 'steam:11000013d9aecf5', 'drpepper', 0),
(8845, 'steam:11000013d9aecf5', 'coke_pooch', 0),
(8846, 'steam:11000013d9aecf5', 'secure_card', 0),
(8847, 'steam:11000013d9aecf5', 'marijuana', 0),
(8848, 'steam:11000013d9aecf5', 'saucisson', 0),
(8849, 'steam:11000013d9aecf5', 'curacao', 0),
(8850, 'steam:11000013d9aecf5', 'bolnoixcajou', 0),
(8851, 'steam:11000013d9aecf5', 'balde1', 0),
(8852, 'steam:11000013d9aecf5', 'rum', 0),
(8853, 'steam:11000013d9aecf5', 'marabou', 0),
(8854, 'steam:11000013d9aecf5', 'rope', 0),
(8855, 'steam:11000013d9aecf5', 'cut_money', 0),
(8856, 'steam:11000013d9aecf5', 'rolex', 0),
(8857, 'steam:11000013d9aecf5', 'methlab', 0),
(8858, 'steam:11000013d9aecf5', 'mixapero', 0),
(8859, 'steam:11000013d9aecf5', 'rice_pro', 0),
(8860, 'steam:11000013d9aecf5', 'lean', 0),
(8861, 'steam:11000013d9aecf5', 'redbull', 0),
(8862, 'steam:11000013d9aecf5', 'wool', 0),
(8863, 'steam:11000013d9aecf5', 'rhumfruit', 0),
(8864, 'steam:11000013d9aecf5', 'limonade', 0),
(8865, 'steam:11000013d9aecf5', 'brandy', 0),
(8866, 'steam:11000013d9aecf5', 'club_soda', 0),
(8867, 'steam:11000013d9aecf5', 'carotool', 0),
(8868, 'steam:11000013d9aecf5', 'keys_missionrow_pd_front', 0),
(8869, 'steam:11000013d9aecf5', 'mifepristone', 0),
(8870, 'steam:11000013d9aecf5', 'cajadecangrejos', 0),
(8871, 'steam:11000013d9aecf5', 'playersafe', 0),
(8872, 'steam:11000013d9aecf5', 'farine', 0),
(8873, 'steam:11000013d9aecf5', 'painrater', 0),
(8874, 'steam:11000013d9aecf5', 'pizza', 0),
(8875, 'steam:11000013d9aecf5', 'lime', 0),
(8876, 'steam:11000013d9aecf5', 'medikit', 0),
(8877, 'steam:11000013d9aecf5', 'rhumcoca', 0),
(8878, 'steam:11000013d9aecf5', 'laptop', 0),
(8879, 'steam:11000013d9aecf5', 'dark_rum', 0),
(8880, 'steam:11000013d9aecf5', 'goldNecklace', 0),
(8881, 'steam:11000013d9aecf5', 'cigarett', 0),
(8882, 'steam:11000013d9aecf5', 'pina_colada', 0),
(8883, 'steam:11000013d9aecf5', 'oxygen_mask', 0),
(8884, 'steam:11000013d9aecf5', 'caipirinha', 0),
(8885, 'steam:11000013d9aecf5', 'phone', 0),
(8886, 'steam:11000013d9aecf5', 'crack', 0),
(8887, 'steam:11000013d9aecf5', 'mega1', 0),
(8888, 'steam:11000013d9aecf5', 'petrol_raffin', 0),
(8889, 'steam:11000013d9aecf5', 'icetea', 0),
(8890, 'steam:11000013d9aecf5', 'headbag', 0),
(8891, 'steam:11000013d9aecf5', 'fixkit', 0),
(8892, 'steam:11000013d9aecf5', 'handcuffs', 0),
(8893, 'steam:11000013d9aecf5', 'petrol', 0),
(8894, 'steam:11000013d9aecf5', 'triple_sec', 0),
(8895, 'steam:11000013d9aecf5', 'pastacarbonara', 0),
(8896, 'steam:11000013d9aecf5', 'paperweed', 0),
(8897, 'steam:11000013d9aecf5', 'packaged_chicken', 0),
(8898, 'steam:11000013d9aecf5', 'jusfruit', 0),
(8899, 'steam:11000013d9aecf5', 'cachaca', 0),
(8900, 'steam:11000013d9aecf5', 'opium', 0),
(8901, 'steam:11000013d9aecf5', 'macka', 0),
(8902, 'steam:11000013d9aecf5', 'armor', 0),
(8903, 'steam:11000013d9aecf5', 'carokit', 0),
(8904, 'steam:11000013d9aecf5', 'mint_julep', 0),
(8905, 'steam:11000013d9aecf5', 'fishingrod', 0),
(8906, 'steam:11000013d9aecf5', 'levonorgestrel', 0),
(8907, 'steam:11000013d9aecf5', 'ketamine_pooch', 0),
(8908, 'steam:11000013d9aecf5', 'ring', 0),
(8909, 'steam:11000013d9aecf5', 'icedtea', 0),
(8910, 'steam:11000013d9aecf5', 'keys_master_key', 0),
(8911, 'steam:11000013d9aecf5', 'water', 0),
(8912, 'steam:11000013d9aecf5', 'goldwatch', 0),
(8913, 'steam:11000013d9aecf5', 'coconut_milk', 0),
(8914, 'steam:11000013d9aecf5', 'diamond', 0),
(8915, 'steam:11000013d9aecf5', 'meth_raw', 0),
(8916, 'steam:11000013d9aecf5', 'bieresimple', 0),
(8917, 'steam:11000013d9aecf5', 'burger', 0),
(8918, 'steam:11000013d9aecf5', 'mai_tai', 0),
(8919, 'steam:11000013d9aecf5', 'combo1', 0),
(8920, 'steam:11000013d9aecf5', 'emerald', 0),
(8921, 'steam:11000013d9aecf5', 'clip', 0),
(8922, 'steam:11000013d9aecf5', 'beer', 0),
(8923, 'steam:11000013d9aecf5', 'meth_packaged', 0),
(8924, 'steam:11000013d9aecf5', 'meth', 0),
(8925, 'steam:11000013d9aecf5', 'menthe', 0),
(8926, 'steam:11000013d9aecf5', 'teqpaf', 0),
(8927, 'steam:11000013d9aecf5', 'mint', 0),
(8928, 'steam:11000013d9aecf5', 'martini', 0),
(8929, 'steam:11000013d9aecf5', 'marijuana_pooch', 0),
(8930, 'steam:11000013d9aecf5', 'cutted_wood', 0),
(8931, 'steam:11000013d9aecf5', 'acetone', 0),
(8932, 'steam:11000013d9aecf5', 'malt', 0),
(8933, 'steam:11000013d9aecf5', 'monster', 0),
(8934, 'steam:11000013d9aecf5', 'lsd_pooch', 0),
(8935, 'steam:11000013d9aecf5', 'access_key', 0),
(8936, 'steam:11000013d9aecf5', 'keys_master_key_single_use', 0),
(8937, 'steam:11000013d9aecf5', 'lowradio', 0),
(8938, 'steam:11000013d9aecf5', 'light_rum', 0),
(8939, 'steam:11000013d9aecf5', 'lotteryticket', 0),
(8940, 'steam:11000013d9aecf5', 'loka', 0),
(8941, 'steam:11000013d9aecf5', 'lockpickv2', 0),
(8942, 'steam:11000013d9aecf5', 'lockpick', 0),
(8943, 'steam:11000013d9aecf5', 'lithium', 0),
(8944, 'steam:11000013d9aecf5', 'limeade', 0),
(8945, 'steam:11000013d9aecf5', 'fabric', 0),
(8946, 'steam:11000013d9aecf5', 'amphetamines', 0),
(8947, 'steam:11000013d9aecf5', 'bieredequalite', 0),
(8948, 'steam:11000013d9aecf5', 'cigarette', 0),
(8949, 'steam:11000013d9aecf5', 'cajadecamarones', 0),
(8950, 'steam:11000013d9aecf5', 'lighter', 0),
(8951, 'steam:11000013d9aecf5', 'combo5', 0),
(8952, 'steam:11000013d9aecf5', 'hotdog', 0),
(8953, 'steam:11000013d9aecf5', 'fried', 0),
(8954, 'steam:11000013d9aecf5', 'ecstasy', 0),
(8955, 'steam:11000013d9aecf5', 'lsd', 0),
(8956, 'steam:11000013d9aecf5', 'hacking_laptop', 0),
(8957, 'steam:11000013d9aecf5', 'salad', 0),
(8958, 'steam:11000013d9aecf5', 'fresh_mix', 0),
(8959, 'steam:11000013d9aecf5', 'heroine', 0),
(8960, 'steam:11000013d9aecf5', 'lemonada', 0),
(8961, 'steam:11000013d9aecf5', 'milk_engine', 0),
(8962, 'steam:11000013d9aecf5', 'meat', 0),
(8963, 'steam:11000013d9aecf5', 'croquettes', 0),
(8964, 'steam:11000013d9aecf5', 'ketamine', 0),
(8965, 'steam:11000013d9aecf5', 'alcool', 0),
(8966, 'steam:11000013d9aecf5', 'fried_chicken', 0),
(8967, 'steam:11000013d9aecf5', 'pineapple_juice', 0),
(8968, 'steam:11000013d9aecf5', 'cocaine_uncut', 0),
(8969, 'steam:11000013d9aecf5', 'joint', 0),
(8970, 'steam:11000013d9aecf5', 'cheese', 0),
(8971, 'steam:11000013d9aecf5', 'viagra', 0),
(8972, 'steam:11000013d9aecf5', 'cointreau', 0),
(8973, 'steam:11000013d9aecf5', 'bieremoyen', 0),
(8974, 'steam:11000013d9aecf5', 'journal', 0),
(8975, 'steam:11000013d9aecf5', 'jagercerbere', 0),
(8976, 'steam:11000013d9aecf5', 'margarita', 0),
(8977, 'steam:11000013d9aecf5', 'gold', 0),
(8978, 'steam:11000013d9aecf5', 'jager', 0),
(8979, 'steam:11000013d9aecf5', 'bolpistache', 0),
(8980, 'steam:11000013d9aecf5', 'amnesia', 0),
(8981, 'steam:11000013d9aecf5', 'ice', 0),
(8982, 'steam:11000013d9aecf5', 'iphonex', 0),
(8983, 'steam:11000013d9aecf5', 'clothe', 0),
(8984, 'steam:11000013d9aecf5', 'cocaine_cut', 0),
(8985, 'steam:11000013d9aecf5', 'bolchips', 0),
(8986, 'steam:11000013d9aecf5', 'fixtool', 0),
(8987, 'steam:11000013d9aecf5', 'heroine_pooch', 0),
(8988, 'steam:11000013d9aecf5', 'cocacola', 0),
(8989, 'steam:11000013d9aecf5', 'gold_rum', 0),
(8990, 'steam:11000013d9aecf5', 'id_card_f', 0),
(8991, 'steam:11000013d9aecf5', 'cheesebows', 0),
(8992, 'steam:11000013d9aecf5', 'ecstasy_pooch', 0),
(8993, 'steam:11000013d9aecf5', 'cannabinoid', 0),
(8994, 'steam:11000013d9aecf5', 'camera', 0),
(8995, 'steam:11000013d9aecf5', 'cangrejos', 0),
(8996, 'steam:11000013d9aecf5', 'cocaine_packaged', 0),
(8997, 'steam:11000013d9aecf5', 'bandage', 0),
(8998, 'steam:11000013d9aecf5', 'fanta', 0),
(8999, 'steam:1100001468829f9', 'fabric', 0),
(9000, 'steam:1100001468829f9', 'jagermeister', 0),
(9001, 'steam:1100001468829f9', 'secure_card', 0),
(9002, 'steam:1100001468829f9', 'curacao', 0),
(9003, 'steam:1100001468829f9', 'carokit', 0),
(9004, 'steam:1100001468829f9', 'clip', 0),
(9005, 'steam:1100001468829f9', 'ketamine_pooch', 0),
(9006, 'steam:1100001468829f9', 'amphetamines', 0),
(9007, 'steam:1100001468829f9', 'patates', 0),
(9008, 'steam:1100001468829f9', 'ring', 0),
(9009, 'steam:1100001468829f9', 'bolcacahuetes', 0),
(9010, 'steam:1100001468829f9', 'xanax', 0),
(9011, 'steam:1100001468829f9', 'pendrive', 0),
(9012, 'steam:1100001468829f9', 'pastacarbonara', 0),
(9013, 'steam:1100001468829f9', 'goldbar', 0),
(9014, 'steam:1100001468829f9', 'wood', 0),
(9015, 'steam:1100001468829f9', 'slaughtered_chicken', 0),
(9016, 'steam:1100001468829f9', 'goldNecklace', 0),
(9017, 'steam:1100001468829f9', 'headbag', 0),
(9018, 'steam:1100001468829f9', 'wine', 0),
(9019, 'steam:1100001468829f9', 'camera', 0),
(9020, 'steam:1100001468829f9', 'combo2', 0),
(9021, 'steam:1100001468829f9', 'balde1', 0),
(9022, 'steam:1100001468829f9', 'metreshooter', 0),
(9023, 'steam:1100001468829f9', 'keys_missionrow_pd_front', 0),
(9024, 'steam:1100001468829f9', 'skunk', 0),
(9025, 'steam:1100001468829f9', 'bieredequalite', 0),
(9026, 'steam:1100001468829f9', 'whitewidow', 0),
(9027, 'steam:1100001468829f9', 'crack_pooch', 0),
(9028, 'steam:1100001468829f9', 'white_rum', 0),
(9029, 'steam:1100001468829f9', 'iphonex', 0),
(9030, 'steam:1100001468829f9', 'whiskycoca', 0),
(9031, 'steam:1100001468829f9', 'fish', 0),
(9032, 'steam:1100001468829f9', 'heroine_pooch', 0),
(9033, 'steam:1100001468829f9', 'whiskycoc', 0),
(9034, 'steam:1100001468829f9', 'afghan', 0),
(9035, 'steam:1100001468829f9', 'playersafe', 0),
(9036, 'steam:1100001468829f9', 'light_rum', 0),
(9037, 'steam:1100001468829f9', 'combo1', 0),
(9038, 'steam:1100001468829f9', 'net_cracker', 0),
(9039, 'steam:1100001468829f9', 'cannabinoid', 0),
(9040, 'steam:1100001468829f9', 'cocaine_packaged', 0),
(9041, 'steam:1100001468829f9', 'bolpistache', 0),
(9042, 'steam:1100001468829f9', 'hacking_laptop', 0),
(9043, 'steam:1100001468829f9', 'nitro', 0),
(9044, 'steam:1100001468829f9', 'handcuffs', 0),
(9045, 'steam:1100001468829f9', 'bankcard', 0),
(9046, 'steam:1100001468829f9', 'shovel', 0),
(9047, 'steam:1100001468829f9', 'weed', 0),
(9048, 'steam:1100001468829f9', 'water', 0),
(9049, 'steam:1100001468829f9', 'fried_chicken', 0),
(9050, 'steam:1100001468829f9', 'caipirinha', 0),
(9051, 'steam:1100001468829f9', 'lime', 0),
(9052, 'steam:1100001468829f9', 'vodkrb', 0),
(9053, 'steam:1100001468829f9', 'ecstasy', 0),
(9054, 'steam:1100001468829f9', 'vodkafruit', 0),
(9055, 'steam:1100001468829f9', 'vodkaenergy', 0),
(9056, 'steam:1100001468829f9', 'weed_pooch', 0),
(9057, 'steam:1100001468829f9', 'iron', 0),
(9058, 'steam:1100001468829f9', 'syrup', 0),
(9059, 'steam:1100001468829f9', 'lean_pooch', 0),
(9060, 'steam:1100001468829f9', 'viagra', 0),
(9061, 'steam:1100001468829f9', 'fresh_mix', 0),
(9062, 'steam:1100001468829f9', 'levonorgestrel', 0),
(9063, 'steam:1100001468829f9', 'golem', 0),
(9064, 'steam:1100001468829f9', 'turtle', 0),
(9065, 'steam:1100001468829f9', 'myrtealcool', 0),
(9066, 'steam:1100001468829f9', 'coke_pooch', 0),
(9067, 'steam:1100001468829f9', 'jewlery', 0),
(9068, 'steam:1100001468829f9', 'ice', 0),
(9069, 'steam:1100001468829f9', 'triple_sec', 0),
(9070, 'steam:1100001468829f9', 'fixkit', 0),
(9071, 'steam:1100001468829f9', 'cranberry_juice', 0),
(9072, 'steam:1100001468829f9', 'thermite', 0),
(9073, 'steam:1100001468829f9', 'bieremoyen', 0),
(9074, 'steam:1100001468829f9', 'testpack', 0),
(9075, 'steam:1100001468829f9', 'brandy', 0),
(9076, 'steam:1100001468829f9', 'rice_pro', 0),
(9077, 'steam:1100001468829f9', 'croquettes', 0),
(9078, 'steam:1100001468829f9', 'mega1', 0),
(9079, 'steam:1100001468829f9', 'lowradio', 0),
(9080, 'steam:1100001468829f9', 'sugar', 0),
(9081, 'steam:1100001468829f9', 'acetone', 0),
(9082, 'steam:1100001468829f9', 'stone', 0),
(9083, 'steam:1100001468829f9', 'steel', 0),
(9084, 'steam:1100001468829f9', 'fishbait', 0),
(9085, 'steam:1100001468829f9', 'sprite', 0),
(9086, 'steam:1100001468829f9', 'spice', 0),
(9087, 'steam:1100001468829f9', 'cut_money', 0),
(9088, 'steam:1100001468829f9', 'meth_packaged', 0),
(9089, 'steam:1100001468829f9', 'tequila', 0),
(9090, 'steam:1100001468829f9', 'bread', 0),
(9091, 'steam:1100001468829f9', 'weed_packaged', 0),
(9092, 'steam:1100001468829f9', 'coffee', 0),
(9093, 'steam:1100001468829f9', 'keys_master_key_single_use', 0),
(9094, 'steam:1100001468829f9', 'laptop', 0),
(9095, 'steam:1100001468829f9', 'sickle', 0),
(9096, 'steam:1100001468829f9', 'shark', 0),
(9097, 'steam:1100001468829f9', 'cannabis', 0),
(9098, 'steam:1100001468829f9', 'gold_rum', 0),
(9099, 'steam:1100001468829f9', 'wool', 0),
(9100, 'steam:1100001468829f9', 'cheesebows', 0),
(9101, 'steam:1100001468829f9', 'lockpick', 0),
(9102, 'steam:1100001468829f9', 'joint', 0),
(9103, 'steam:1100001468829f9', 'rum', 0),
(9104, 'steam:1100001468829f9', 'rope', 0),
(9105, 'steam:1100001468829f9', 'mojito', 0),
(9106, 'steam:1100001468829f9', 'painrater', 0),
(9107, 'steam:1100001468829f9', 'sorted_money', 0),
(9108, 'steam:1100001468829f9', 'pineapple_juice', 0),
(9109, 'steam:1100001468829f9', 'drill', 0),
(9110, 'steam:1100001468829f9', 'chicken', 0),
(9111, 'steam:1100001468829f9', 'amnesia', 0),
(9112, 'steam:1100001468829f9', 'carotool', 0),
(9113, 'steam:1100001468829f9', 'petrol', 0),
(9114, 'steam:1100001468829f9', 'clothe', 0),
(9115, 'steam:1100001468829f9', 'amphetamines_pooch', 0),
(9116, 'steam:1100001468829f9', 'monster', 0),
(9117, 'steam:1100001468829f9', 'rakia', 0),
(9118, 'steam:1100001468829f9', 'ketamine', 0),
(9119, 'steam:1100001468829f9', 'coconut_milk', 0),
(9120, 'steam:1100001468829f9', 'redbull', 0),
(9121, 'steam:1100001468829f9', 'condom', 0),
(9122, 'steam:1100001468829f9', 'rhum', 0),
(9123, 'steam:1100001468829f9', 'pizza', 0),
(9124, 'steam:1100001468829f9', 'meth', 0),
(9125, 'steam:1100001468829f9', 'rice', 0),
(9126, 'steam:1100001468829f9', 'burger', 0),
(9127, 'steam:1100001468829f9', 'jewels', 0),
(9128, 'steam:1100001468829f9', 'pina_colada', 0),
(9129, 'steam:1100001468829f9', 'cajadecamarones', 0),
(9130, 'steam:1100001468829f9', 'phone', 0),
(9131, 'steam:1100001468829f9', 'crack', 0),
(9132, 'steam:1100001468829f9', 'whiskey', 0),
(9133, 'steam:1100001468829f9', 'dark_rum', 0),
(9134, 'steam:1100001468829f9', 'cangrejos', 0),
(9135, 'steam:1100001468829f9', 'rhumcoca', 0),
(9136, 'steam:1100001468829f9', 'beer', 0),
(9137, 'steam:1100001468829f9', 'pepite_dor', 0),
(9138, 'steam:1100001468829f9', 'journaux', 0),
(9139, 'steam:1100001468829f9', 'salad', 0),
(9140, 'steam:1100001468829f9', 'paperweed', 0),
(9141, 'steam:1100001468829f9', 'lsd_pooch', 0),
(9142, 'steam:1100001468829f9', 'alcool', 0),
(9143, 'steam:1100001468829f9', 'cocaine_uncut', 0),
(9144, 'steam:1100001468829f9', 'cosmopolitan', 0),
(9145, 'steam:1100001468829f9', 'keys_master_key', 0),
(9146, 'steam:1100001468829f9', 'packaged_plank', 0),
(9147, 'steam:1100001468829f9', 'packaged_chicken', 0),
(9148, 'steam:1100001468829f9', 'copper', 0),
(9149, 'steam:1100001468829f9', 'oxygen_mask', 0),
(9150, 'steam:1100001468829f9', 'lockpickv2', 0),
(9151, 'steam:1100001468829f9', 'opium_pooch', 0),
(9152, 'steam:1100001468829f9', 'opium', 0),
(9153, 'steam:1100001468829f9', 'club_soda', 0),
(9154, 'steam:1100001468829f9', 'nuggets1', 0),
(9155, 'steam:1100001468829f9', 'farine', 0),
(9156, 'steam:1100001468829f9', 'soda', 0),
(9157, 'steam:1100001468829f9', 'access_key', 0),
(9158, 'steam:1100001468829f9', 'coke', 0),
(9159, 'steam:1100001468829f9', 'morphine_pooch', 0),
(9160, 'steam:1100001468829f9', 'rolex', 0),
(9161, 'steam:1100001468829f9', 'cigarett', 0),
(9162, 'steam:1100001468829f9', 'lithium', 0),
(9163, 'steam:1100001468829f9', 'mint', 0),
(9164, 'steam:1100001468829f9', 'fixtool', 0),
(9165, 'steam:1100001468829f9', 'leather', 0),
(9166, 'steam:1100001468829f9', 'mifepristone', 0),
(9167, 'steam:1100001468829f9', 'milk_engine', 0),
(9168, 'steam:1100001468829f9', 'icetea', 0),
(9169, 'steam:1100001468829f9', 'journal', 0),
(9170, 'steam:1100001468829f9', 'bandage', 0),
(9171, 'steam:1100001468829f9', 'meth_pooch', 0),
(9172, 'steam:1100001468829f9', 'cachaca', 0),
(9173, 'steam:1100001468829f9', 'lotteryticket', 0),
(9174, 'steam:1100001468829f9', 'diamond', 0),
(9175, 'steam:1100001468829f9', 'menthe', 0),
(9176, 'steam:1100001468829f9', 'mega2', 0),
(9177, 'steam:1100001468829f9', 'teqpaf', 0),
(9178, 'steam:1100001468829f9', 'medikit', 0),
(9179, 'steam:1100001468829f9', 'heroine', 0),
(9180, 'steam:1100001468829f9', 'fanta', 0),
(9181, 'steam:1100001468829f9', 'painpremierprix', 0),
(9182, 'steam:1100001468829f9', 'bolnoixcajou', 0),
(9183, 'steam:1100001468829f9', 'martini', 0),
(9184, 'steam:1100001468829f9', 'limeade', 0),
(9185, 'steam:1100001468829f9', 'marijuana_pooch', 0),
(9186, 'steam:1100001468829f9', 'marijuana', 0),
(9187, 'steam:1100001468829f9', 'margarita', 0),
(9188, 'steam:1100001468829f9', 'jusfruit', 0),
(9189, 'steam:1100001468829f9', 'mint_julep', 0),
(9190, 'steam:1100001468829f9', 'malt', 0),
(9191, 'steam:1100001468829f9', 'id_card_f', 0),
(9192, 'steam:1100001468829f9', 'mai_tai', 0),
(9193, 'steam:1100001468829f9', 'macka', 0),
(9194, 'steam:1100001468829f9', 'lsd', 0),
(9195, 'steam:1100001468829f9', 'chips', 0),
(9196, 'steam:1100001468829f9', 'essence', 0),
(9197, 'steam:1100001468829f9', 'loka', 0),
(9198, 'steam:1100001468829f9', 'emerald', 0),
(9199, 'steam:1100001468829f9', 'marabou', 0),
(9200, 'steam:1100001468829f9', 'limonade', 0),
(9201, 'steam:1100001468829f9', 'lingot_dor', 0),
(9202, 'steam:1100001468829f9', 'lighter', 0),
(9203, 'steam:1100001468829f9', 'petrol_raffin', 0),
(9204, 'steam:1100001468829f9', 'rhumfruit', 0),
(9205, 'steam:1100001468829f9', 'lemonada', 0),
(9206, 'steam:1100001468829f9', 'methlab', 0),
(9207, 'steam:1100001468829f9', 'licenseplate', 0),
(9208, 'steam:1100001468829f9', 'fishingrod', 0),
(9209, 'steam:1100001468829f9', 'lean', 0),
(9210, 'steam:1100001468829f9', 'dj_tip', 0),
(9211, 'steam:1100001468829f9', 'energy', 0),
(9212, 'steam:1100001468829f9', 'jager', 0),
(9213, 'steam:1100001468829f9', 'cigarette', 0),
(9214, 'steam:1100001468829f9', 'armor', 0),
(9215, 'steam:1100001468829f9', 'cajadecangrejos', 0),
(9216, 'steam:1100001468829f9', 'cocaine_cut', 0),
(9217, 'steam:1100001468829f9', 'combo4', 0),
(9218, 'steam:1100001468829f9', 'washed_stone', 0),
(9219, 'steam:1100001468829f9', 'meat', 0),
(9220, 'steam:1100001468829f9', 'keycard', 0),
(9221, 'steam:1100001468829f9', 'cocacola', 0),
(9222, 'steam:1100001468829f9', 'cointreau', 0),
(9223, 'steam:1100001468829f9', 'alive_chicken', 0),
(9224, 'steam:1100001468829f9', 'goldwatch', 0),
(9225, 'steam:1100001468829f9', 'weed_untrimmed', 0),
(9226, 'steam:1100001468829f9', 'key', 0),
(9227, 'steam:1100001468829f9', 'fried', 0),
(9228, 'steam:1100001468829f9', 'combo5', 0),
(9229, 'steam:1100001468829f9', 'mixapero', 0),
(9230, 'steam:1100001468829f9', 'hotdog', 0),
(9231, 'steam:1100001468829f9', 'jagercerbere', 0),
(9232, 'steam:1100001468829f9', 'drpepper', 0),
(9233, 'steam:1100001468829f9', 'camarones', 0),
(9234, 'steam:1100001468829f9', 'meth_raw', 0),
(9235, 'steam:1100001468829f9', 'gold', 0),
(9236, 'steam:1100001468829f9', 'cheese', 0),
(9237, 'steam:1100001468829f9', 'vodka', 0),
(9238, 'steam:1100001468829f9', 'donut', 0),
(9239, 'steam:1100001468829f9', 'bolchips', 0),
(9240, 'steam:1100001468829f9', 'bieresimple', 0),
(9241, 'steam:1100001468829f9', 'combo3', 0),
(9242, 'steam:1100001468829f9', 'icedtea', 0),
(9243, 'steam:1100001468829f9', 'turtlebait', 0),
(9244, 'steam:1100001468829f9', 'milk_package', 0),
(9245, 'steam:1100001468829f9', 'cutted_wood', 0),
(9246, 'steam:1100001468829f9', 'bourbon', 0),
(9247, 'steam:1100001468829f9', 'ecstasy_pooch', 0),
(9248, 'steam:1100001468829f9', 'morphine', 0),
(9249, 'steam:1100001468829f9', 'jagerbomb', 0),
(9250, 'steam:1100001468829f9', 'saucisson', 0),
(9251, 'steam:110000142bdf425', 'camarones', 0),
(9252, 'steam:110000142bdf425', 'washed_stone', 0),
(9253, 'steam:110000142bdf425', 'coconut_milk', 0),
(9254, 'steam:110000142bdf425', 'opium', 0),
(9255, 'steam:110000142bdf425', 'goldbar', 0),
(9256, 'steam:110000142bdf425', 'combo5', 0),
(9257, 'steam:110000142bdf425', 'laptop', 0),
(9258, 'steam:110000142bdf425', 'turtlebait', 0),
(9259, 'steam:110000142bdf425', 'xanax', 0),
(9260, 'steam:110000142bdf425', 'cachaca', 0),
(9261, 'steam:110000142bdf425', 'petrol_raffin', 0),
(9262, 'steam:110000142bdf425', 'fixkit', 0),
(9263, 'steam:110000142bdf425', 'wool', 0),
(9264, 'steam:110000142bdf425', 'meth_pooch', 0),
(9265, 'steam:110000142bdf425', 'fresh_mix', 0),
(9266, 'steam:110000142bdf425', 'painpremierprix', 0),
(9267, 'steam:110000142bdf425', 'whitewidow', 0),
(9268, 'steam:110000142bdf425', 'hacking_laptop', 0),
(9269, 'steam:110000142bdf425', 'coffee', 0),
(9270, 'steam:110000142bdf425', 'afghan', 0),
(9271, 'steam:110000142bdf425', 'crack', 0),
(9272, 'steam:110000142bdf425', 'white_rum', 0),
(9273, 'steam:110000142bdf425', 'morphine_pooch', 0),
(9274, 'steam:110000142bdf425', 'whiskycoc', 0),
(9275, 'steam:110000142bdf425', 'acetone', 0),
(9276, 'steam:110000142bdf425', 'whiskey', 0),
(9277, 'steam:110000142bdf425', 'bandage', 0),
(9278, 'steam:110000142bdf425', 'cangrejos', 0),
(9279, 'steam:110000142bdf425', 'redbull', 0),
(9280, 'steam:110000142bdf425', 'marijuana_pooch', 0),
(9281, 'steam:110000142bdf425', 'macka', 0),
(9282, 'steam:110000142bdf425', 'marijuana', 0),
(9283, 'steam:110000142bdf425', 'licenseplate', 0),
(9284, 'steam:110000142bdf425', 'brandy', 0),
(9285, 'steam:110000142bdf425', 'weed_untrimmed', 0),
(9286, 'steam:110000142bdf425', 'spice', 0),
(9287, 'steam:110000142bdf425', 'milk_engine', 0),
(9288, 'steam:110000142bdf425', 'coke', 0),
(9289, 'steam:110000142bdf425', 'keycard', 0),
(9290, 'steam:110000142bdf425', 'jewlery', 0),
(9291, 'steam:110000142bdf425', 'weed', 0),
(9292, 'steam:110000142bdf425', 'steel', 0),
(9293, 'steam:110000142bdf425', 'water', 0),
(9294, 'steam:110000142bdf425', 'headbag', 0),
(9295, 'steam:110000142bdf425', 'vodkrb', 0),
(9296, 'steam:110000142bdf425', 'handcuffs', 0),
(9297, 'steam:110000142bdf425', 'id_card_f', 0),
(9298, 'steam:110000142bdf425', 'vodkafruit', 0),
(9299, 'steam:110000142bdf425', 'vodkaenergy', 0),
(9300, 'steam:110000142bdf425', 'cannabinoid', 0),
(9301, 'steam:110000142bdf425', 'vodka', 0),
(9302, 'steam:110000142bdf425', 'viagra', 0),
(9303, 'steam:110000142bdf425', 'ecstasy', 0),
(9304, 'steam:110000142bdf425', 'wood', 0),
(9305, 'steam:110000142bdf425', 'hotdog', 0),
(9306, 'steam:110000142bdf425', 'lsd_pooch', 0),
(9307, 'steam:110000142bdf425', 'ketamine', 0),
(9308, 'steam:110000142bdf425', 'keys_missionrow_pd_front', 0),
(9309, 'steam:110000142bdf425', 'alcool', 0),
(9310, 'steam:110000142bdf425', 'triple_sec', 0),
(9311, 'steam:110000142bdf425', 'fixtool', 0),
(9312, 'steam:110000142bdf425', 'diamond', 0),
(9313, 'steam:110000142bdf425', 'cigarett', 0),
(9314, 'steam:110000142bdf425', 'testpack', 0),
(9315, 'steam:110000142bdf425', 'burger', 0),
(9316, 'steam:110000142bdf425', 'margarita', 0),
(9317, 'steam:110000142bdf425', 'morphine', 0),
(9318, 'steam:110000142bdf425', 'jager', 0),
(9319, 'steam:110000142bdf425', 'cranberry_juice', 0),
(9320, 'steam:110000142bdf425', 'shovel', 0),
(9321, 'steam:110000142bdf425', 'tequila', 0),
(9322, 'steam:110000142bdf425', 'emerald', 0),
(9323, 'steam:110000142bdf425', 'teqpaf', 0),
(9324, 'steam:110000142bdf425', 'carotool', 0),
(9325, 'steam:110000142bdf425', 'drpepper', 0),
(9326, 'steam:110000142bdf425', 'clothe', 0),
(9327, 'steam:110000142bdf425', 'fishbait', 0),
(9328, 'steam:110000142bdf425', 'cocaine_packaged', 0),
(9329, 'steam:110000142bdf425', 'bieremoyen', 0),
(9330, 'steam:110000142bdf425', 'dj_tip', 0),
(9331, 'steam:110000142bdf425', 'net_cracker', 0),
(9332, 'steam:110000142bdf425', 'croquettes', 0),
(9333, 'steam:110000142bdf425', 'sugar', 0),
(9334, 'steam:110000142bdf425', 'cocaine_uncut', 0),
(9335, 'steam:110000142bdf425', 'stone', 0),
(9336, 'steam:110000142bdf425', 'weed_packaged', 0),
(9337, 'steam:110000142bdf425', 'balde1', 0),
(9338, 'steam:110000142bdf425', 'sprite', 0),
(9339, 'steam:110000142bdf425', 'pizza', 0),
(9340, 'steam:110000142bdf425', 'meth_packaged', 0),
(9341, 'steam:110000142bdf425', 'bolpistache', 0),
(9342, 'steam:110000142bdf425', 'packaged_plank', 0),
(9343, 'steam:110000142bdf425', 'malt', 0),
(9344, 'steam:110000142bdf425', 'rice', 0),
(9345, 'steam:110000142bdf425', 'jagermeister', 0),
(9346, 'steam:110000142bdf425', 'energy', 0),
(9347, 'steam:110000142bdf425', 'jusfruit', 0),
(9348, 'steam:110000142bdf425', 'curacao', 0),
(9349, 'steam:110000142bdf425', 'sickle', 0),
(9350, 'steam:110000142bdf425', 'jagercerbere', 0),
(9351, 'steam:110000142bdf425', 'combo2', 0),
(9352, 'steam:110000142bdf425', 'cannabis', 0),
(9353, 'steam:110000142bdf425', 'rhumfruit', 0),
(9354, 'steam:110000142bdf425', 'shark', 0),
(9355, 'steam:110000142bdf425', 'light_rum', 0),
(9356, 'steam:110000142bdf425', 'fish', 0),
(9357, 'steam:110000142bdf425', 'lockpick', 0),
(9358, 'steam:110000142bdf425', 'secure_card', 0),
(9359, 'steam:110000142bdf425', 'cutted_wood', 0),
(9360, 'steam:110000142bdf425', 'lsd', 0),
(9361, 'steam:110000142bdf425', 'goldwatch', 0),
(9362, 'steam:110000142bdf425', 'saucisson', 0),
(9363, 'steam:110000142bdf425', 'meth', 0),
(9364, 'steam:110000142bdf425', 'salad', 0),
(9365, 'steam:110000142bdf425', 'journal', 0),
(9366, 'steam:110000142bdf425', 'lighter', 0),
(9367, 'steam:110000142bdf425', 'coke_pooch', 0),
(9368, 'steam:110000142bdf425', 'paperweed', 0),
(9369, 'steam:110000142bdf425', 'ring', 0),
(9370, 'steam:110000142bdf425', 'amphetamines_pooch', 0),
(9371, 'steam:110000142bdf425', 'rice_pro', 0),
(9372, 'steam:110000142bdf425', 'petrol', 0),
(9373, 'steam:110000142bdf425', 'rope', 0),
(9374, 'steam:110000142bdf425', 'skunk', 0),
(9375, 'steam:110000142bdf425', 'lean_pooch', 0),
(9376, 'steam:110000142bdf425', 'combo4', 0),
(9377, 'steam:110000142bdf425', 'rhum', 0),
(9378, 'steam:110000142bdf425', 'cut_money', 0),
(9379, 'steam:110000142bdf425', 'clip', 0),
(9380, 'steam:110000142bdf425', 'cointreau', 0),
(9381, 'steam:110000142bdf425', 'rakia', 0),
(9382, 'steam:110000142bdf425', 'playersafe', 0),
(9383, 'steam:110000142bdf425', 'cheese', 0),
(9384, 'steam:110000142bdf425', 'pineapple_juice', 0),
(9385, 'steam:110000142bdf425', 'lithium', 0),
(9386, 'steam:110000142bdf425', 'pina_colada', 0),
(9387, 'steam:110000142bdf425', 'phone', 0),
(9388, 'steam:110000142bdf425', 'club_soda', 0),
(9389, 'steam:110000142bdf425', 'wine', 0),
(9390, 'steam:110000142bdf425', 'rolex', 0),
(9391, 'steam:110000142bdf425', 'metreshooter', 0),
(9392, 'steam:110000142bdf425', 'mixapero', 0),
(9393, 'steam:110000142bdf425', 'patates', 0),
(9394, 'steam:110000142bdf425', 'condom', 0),
(9395, 'steam:110000142bdf425', 'pastacarbonara', 0),
(9396, 'steam:110000142bdf425', 'key', 0),
(9397, 'steam:110000142bdf425', 'armor', 0),
(9398, 'steam:110000142bdf425', 'fried_chicken', 0),
(9399, 'steam:110000142bdf425', 'dark_rum', 0),
(9400, 'steam:110000142bdf425', 'painrater', 0),
(9401, 'steam:110000142bdf425', 'soda', 0),
(9402, 'steam:110000142bdf425', 'packaged_chicken', 0),
(9403, 'steam:110000142bdf425', 'oxygen_mask', 0),
(9404, 'steam:110000142bdf425', 'mifepristone', 0),
(9405, 'steam:110000142bdf425', 'opium_pooch', 0),
(9406, 'steam:110000142bdf425', 'fried', 0),
(9407, 'steam:110000142bdf425', 'nitro', 0),
(9408, 'steam:110000142bdf425', 'bolnoixcajou', 0),
(9409, 'steam:110000142bdf425', 'myrtealcool', 0),
(9410, 'steam:110000142bdf425', 'whiskycoca', 0),
(9411, 'steam:110000142bdf425', 'monster', 0),
(9412, 'steam:110000142bdf425', 'milk_package', 0),
(9413, 'steam:110000142bdf425', 'mojito', 0),
(9414, 'steam:110000142bdf425', 'cigarette', 0),
(9415, 'steam:110000142bdf425', 'cheesebows', 0),
(9416, 'steam:110000142bdf425', 'mint_julep', 0),
(9417, 'steam:110000142bdf425', 'mint', 0),
(9418, 'steam:110000142bdf425', 'pendrive', 0),
(9419, 'steam:110000142bdf425', 'weed_pooch', 0),
(9420, 'steam:110000142bdf425', 'pepite_dor', 0),
(9421, 'steam:110000142bdf425', 'alive_chicken', 0),
(9422, 'steam:110000142bdf425', 'rum', 0),
(9423, 'steam:110000142bdf425', 'combo3', 0),
(9424, 'steam:110000142bdf425', 'meth_raw', 0),
(9425, 'steam:110000142bdf425', 'turtle', 0),
(9426, 'steam:110000142bdf425', 'cocacola', 0),
(9427, 'steam:110000142bdf425', 'goldNecklace', 0),
(9428, 'steam:110000142bdf425', 'sorted_money', 0),
(9429, 'steam:110000142bdf425', 'jewels', 0),
(9430, 'steam:110000142bdf425', 'icetea', 0),
(9431, 'steam:110000142bdf425', 'farine', 0),
(9432, 'steam:110000142bdf425', 'bread', 0),
(9433, 'steam:110000142bdf425', 'mega1', 0),
(9434, 'steam:110000142bdf425', 'medikit', 0),
(9435, 'steam:110000142bdf425', 'beer', 0),
(9436, 'steam:110000142bdf425', 'martini', 0),
(9437, 'steam:110000142bdf425', 'fishingrod', 0),
(9438, 'steam:110000142bdf425', 'limonade', 0),
(9439, 'steam:110000142bdf425', 'marabou', 0),
(9440, 'steam:110000142bdf425', 'golem', 0),
(9441, 'steam:110000142bdf425', 'cajadecamarones', 0),
(9442, 'steam:110000142bdf425', 'slaughtered_chicken', 0),
(9443, 'steam:110000142bdf425', 'journaux', 0),
(9444, 'steam:110000142bdf425', 'lingot_dor', 0),
(9445, 'steam:110000142bdf425', 'amphetamines', 0),
(9446, 'steam:110000142bdf425', 'cosmopolitan', 0),
(9447, 'steam:110000142bdf425', 'lotteryticket', 0),
(9448, 'steam:110000142bdf425', 'bankcard', 0),
(9449, 'steam:110000142bdf425', 'access_key', 0),
(9450, 'steam:110000142bdf425', 'heroine_pooch', 0),
(9451, 'steam:110000142bdf425', 'loka', 0),
(9452, 'steam:110000142bdf425', 'chips', 0),
(9453, 'steam:110000142bdf425', 'lockpickv2', 0),
(9454, 'steam:110000142bdf425', 'bolcacahuetes', 0),
(9455, 'steam:110000142bdf425', 'lowradio', 0),
(9456, 'steam:110000142bdf425', 'keys_master_key', 0),
(9457, 'steam:110000142bdf425', 'cocaine_cut', 0),
(9458, 'steam:110000142bdf425', 'methlab', 0),
(9459, 'steam:110000142bdf425', 'levonorgestrel', 0),
(9460, 'steam:110000142bdf425', 'lemonada', 0),
(9461, 'steam:110000142bdf425', 'joint', 0),
(9462, 'steam:110000142bdf425', 'carokit', 0),
(9463, 'steam:110000142bdf425', 'rhumcoca', 0),
(9464, 'steam:110000142bdf425', 'thermite', 0),
(9465, 'steam:110000142bdf425', 'lean', 0),
(9466, 'steam:110000142bdf425', 'gold_rum', 0),
(9467, 'steam:110000142bdf425', 'icedtea', 0),
(9468, 'steam:110000142bdf425', 'keys_master_key_single_use', 0),
(9469, 'steam:110000142bdf425', 'limeade', 0),
(9470, 'steam:110000142bdf425', 'heroine', 0),
(9471, 'steam:110000142bdf425', 'bourbon', 0),
(9472, 'steam:110000142bdf425', 'caipirinha', 0),
(9473, 'steam:110000142bdf425', 'mai_tai', 0),
(9474, 'steam:110000142bdf425', 'drill', 0),
(9475, 'steam:110000142bdf425', 'leather', 0),
(9476, 'steam:110000142bdf425', 'chicken', 0),
(9477, 'steam:110000142bdf425', 'syrup', 0),
(9478, 'steam:110000142bdf425', 'essence', 0),
(9479, 'steam:110000142bdf425', 'menthe', 0),
(9480, 'steam:110000142bdf425', 'fabric', 0),
(9481, 'steam:110000142bdf425', 'jagerbomb', 0),
(9482, 'steam:110000142bdf425', 'iphonex', 0),
(9483, 'steam:110000142bdf425', 'mega2', 0),
(9484, 'steam:110000142bdf425', 'ketamine_pooch', 0),
(9485, 'steam:110000142bdf425', 'combo1', 0),
(9486, 'steam:110000142bdf425', 'ice', 0),
(9487, 'steam:110000142bdf425', 'bieresimple', 0),
(9488, 'steam:110000142bdf425', 'amnesia', 0),
(9489, 'steam:110000142bdf425', 'cajadecangrejos', 0),
(9490, 'steam:110000142bdf425', 'gold', 0),
(9491, 'steam:110000142bdf425', 'copper', 0),
(9492, 'steam:110000142bdf425', 'nuggets1', 0),
(9493, 'steam:110000142bdf425', 'fanta', 0),
(9494, 'steam:110000142bdf425', 'iron', 0),
(9495, 'steam:110000142bdf425', 'bieredequalite', 0),
(9496, 'steam:110000142bdf425', 'ecstasy_pooch', 0),
(9497, 'steam:110000142bdf425', 'bolchips', 0),
(9498, 'steam:110000142bdf425', 'donut', 0),
(9499, 'steam:110000142bdf425', 'lime', 0),
(9500, 'steam:110000142bdf425', 'meat', 0),
(9501, 'steam:110000142bdf425', 'crack_pooch', 0),
(9502, 'steam:110000142bdf425', 'camera', 0),
(9503, 'steam:1100001468a4d74', 'alive_chicken', 0),
(9504, 'steam:1100001468a4d74', 'jagermeister', 0),
(9505, 'steam:1100001468a4d74', 'crack', 0),
(9506, 'steam:1100001468a4d74', 'clothe', 0),
(9507, 'steam:1100001468a4d74', 'jagercerbere', 0),
(9508, 'steam:1100001468a4d74', 'wool', 0),
(9509, 'steam:1100001468a4d74', 'journal', 0),
(9510, 'steam:1100001468a4d74', 'bolnoixcajou', 0),
(9511, 'steam:1100001468a4d74', 'dark_rum', 0),
(9512, 'steam:1100001468a4d74', 'vodka', 0),
(9513, 'steam:1100001468a4d74', 'leather', 0),
(9514, 'steam:1100001468a4d74', 'jagerbomb', 0),
(9515, 'steam:1100001468a4d74', 'wine', 0),
(9516, 'steam:1100001468a4d74', 'chicken', 0),
(9517, 'steam:1100001468a4d74', 'limeade', 0),
(9518, 'steam:1100001468a4d74', 'sugar', 0),
(9519, 'steam:1100001468a4d74', 'hacking_laptop', 0),
(9520, 'steam:1100001468a4d74', 'whitewidow', 0),
(9521, 'steam:1100001468a4d74', 'oxygen_mask', 0),
(9522, 'steam:1100001468a4d74', 'clip', 3),
(9523, 'steam:1100001468a4d74', 'ketamine', 0),
(9524, 'steam:1100001468a4d74', 'cajadecamarones', 0),
(9525, 'steam:1100001468a4d74', 'icedtea', 0),
(9526, 'steam:1100001468a4d74', 'iron', 0),
(9527, 'steam:1100001468a4d74', 'cheesebows', 0),
(9528, 'steam:1100001468a4d74', 'fixkit', 0),
(9529, 'steam:1100001468a4d74', 'weed', 0),
(9530, 'steam:1100001468a4d74', 'white_rum', 0),
(9531, 'steam:1100001468a4d74', 'rolex', 0),
(9532, 'steam:1100001468a4d74', 'whiskycoca', 0),
(9533, 'steam:1100001468a4d74', 'coke_pooch', 0),
(9534, 'steam:1100001468a4d74', 'crack_pooch', 0),
(9535, 'steam:1100001468a4d74', 'whiskycoc', 0),
(9536, 'steam:1100001468a4d74', 'key', 0),
(9537, 'steam:1100001468a4d74', 'pineapple_juice', 0),
(9538, 'steam:1100001468a4d74', 'access_key', 0),
(9539, 'steam:1100001468a4d74', 'lsd_pooch', 0),
(9540, 'steam:1100001468a4d74', 'playersafe', 0),
(9541, 'steam:1100001468a4d74', 'weed_pooch', 0),
(9542, 'steam:1100001468a4d74', 'cosmopolitan', 0),
(9543, 'steam:1100001468a4d74', 'pizza', 0),
(9544, 'steam:1100001468a4d74', 'weed_packaged', 0),
(9545, 'steam:1100001468a4d74', 'lean_pooch', 0),
(9546, 'steam:1100001468a4d74', 'water', 0),
(9547, 'steam:1100001468a4d74', 'washed_stone', 0),
(9548, 'steam:1100001468a4d74', 'goldNecklace', 0),
(9549, 'steam:1100001468a4d74', 'jager', 0),
(9550, 'steam:1100001468a4d74', 'vodkafruit', 0),
(9551, 'steam:1100001468a4d74', 'combo5', 0),
(9552, 'steam:1100001468a4d74', 'steel', 0),
(9553, 'steam:1100001468a4d74', 'malt', 0),
(9554, 'steam:1100001468a4d74', 'wood', 0),
(9555, 'steam:1100001468a4d74', 'opium', 0),
(9556, 'steam:1100001468a4d74', 'energy', 0),
(9557, 'steam:1100001468a4d74', 'lowradio', 0),
(9558, 'steam:1100001468a4d74', 'vodkaenergy', 0),
(9559, 'steam:1100001468a4d74', 'cointreau', 0),
(9560, 'steam:1100001468a4d74', 'licenseplate', 0),
(9561, 'steam:1100001468a4d74', 'meth_pooch', 0),
(9562, 'steam:1100001468a4d74', 'mixapero', 0),
(9563, 'steam:1100001468a4d74', 'triple_sec', 0),
(9564, 'steam:1100001468a4d74', 'coffee', 0),
(9565, 'steam:1100001468a4d74', 'cannabinoid', 0),
(9566, 'steam:1100001468a4d74', 'lotteryticket', 0),
(9567, 'steam:1100001468a4d74', 'testpack', 0),
(9568, 'steam:1100001468a4d74', 'keys_master_key_single_use', 0),
(9569, 'steam:1100001468a4d74', 'camera', 0),
(9570, 'steam:1100001468a4d74', 'tequila', 0),
(9571, 'steam:1100001468a4d74', 'spice', 0),
(9572, 'steam:1100001468a4d74', 'cranberry_juice', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
(9573, 'steam:1100001468a4d74', 'stone', 0),
(9574, 'steam:1100001468a4d74', 'viagra', 0),
(9575, 'steam:1100001468a4d74', 'combo1', 0),
(9576, 'steam:1100001468a4d74', 'dj_tip', 0),
(9577, 'steam:1100001468a4d74', 'mai_tai', 0),
(9578, 'steam:1100001468a4d74', 'lockpickv2', 0),
(9579, 'steam:1100001468a4d74', 'bieredequalite', 0),
(9580, 'steam:1100001468a4d74', 'croquettes', 0),
(9581, 'steam:1100001468a4d74', 'teqpaf', 0),
(9582, 'steam:1100001468a4d74', 'copper', 0),
(9583, 'steam:1100001468a4d74', 'coconut_milk', 0),
(9584, 'steam:1100001468a4d74', 'vodkrb', 0),
(9585, 'steam:1100001468a4d74', 'cheese', 0),
(9586, 'steam:1100001468a4d74', 'slaughtered_chicken', 0),
(9587, 'steam:1100001468a4d74', 'monster', 0),
(9588, 'steam:1100001468a4d74', 'sickle', 0),
(9589, 'steam:1100001468a4d74', 'bolchips', 0),
(9590, 'steam:1100001468a4d74', 'combo2', 0),
(9591, 'steam:1100001468a4d74', 'shark', 0),
(9592, 'steam:1100001468a4d74', 'secure_card', 0),
(9593, 'steam:1100001468a4d74', 'saucisson', 0),
(9594, 'steam:1100001468a4d74', 'cajadecangrejos', 0),
(9595, 'steam:1100001468a4d74', 'carokit', 0),
(9596, 'steam:1100001468a4d74', 'rum', 0),
(9597, 'steam:1100001468a4d74', 'rope', 0),
(9598, 'steam:1100001468a4d74', 'journaux', 0),
(9599, 'steam:1100001468a4d74', 'meth', 0),
(9600, 'steam:1100001468a4d74', 'amphetamines', 0),
(9601, 'steam:1100001468a4d74', 'cocaine_packaged', 0),
(9602, 'steam:1100001468a4d74', 'ring', 0),
(9603, 'steam:1100001468a4d74', 'emerald', 0),
(9604, 'steam:1100001468a4d74', 'macka', 0),
(9605, 'steam:1100001468a4d74', 'rice_pro', 0),
(9606, 'steam:1100001468a4d74', 'fried_chicken', 0),
(9607, 'steam:1100001468a4d74', 'fried', 0),
(9608, 'steam:1100001468a4d74', 'rhumfruit', 0),
(9609, 'steam:1100001468a4d74', 'lime', 0),
(9610, 'steam:1100001468a4d74', 'rhum', 0),
(9611, 'steam:1100001468a4d74', 'bieresimple', 0),
(9612, 'steam:1100001468a4d74', 'cannabis', 0),
(9613, 'steam:1100001468a4d74', 'painrater', 0),
(9614, 'steam:1100001468a4d74', 'rakia', 0),
(9615, 'steam:1100001468a4d74', 'pina_colada', 0),
(9616, 'steam:1100001468a4d74', 'coke', 0),
(9617, 'steam:1100001468a4d74', 'phone', 0),
(9618, 'steam:1100001468a4d74', 'petrol_raffin', 0),
(9619, 'steam:1100001468a4d74', 'petrol', 0),
(9620, 'steam:1100001468a4d74', 'goldbar', 0),
(9621, 'steam:1100001468a4d74', 'amphetamines_pooch', 0),
(9622, 'steam:1100001468a4d74', 'pepite_dor', 0),
(9623, 'steam:1100001468a4d74', 'milk_engine', 0),
(9624, 'steam:1100001468a4d74', 'diamond', 0),
(9625, 'steam:1100001468a4d74', 'margarita', 0),
(9626, 'steam:1100001468a4d74', 'levonorgestrel', 0),
(9627, 'steam:1100001468a4d74', 'painpremierprix', 0),
(9628, 'steam:1100001468a4d74', 'fishbait', 0),
(9629, 'steam:1100001468a4d74', 'patates', 0),
(9630, 'steam:1100001468a4d74', 'curacao', 0),
(9631, 'steam:1100001468a4d74', 'metreshooter', 0),
(9632, 'steam:1100001468a4d74', 'milk_package', 0),
(9633, 'steam:1100001468a4d74', 'fishingrod', 0),
(9634, 'steam:1100001468a4d74', 'bieremoyen', 0),
(9635, 'steam:1100001468a4d74', 'burger', 0),
(9636, 'steam:1100001468a4d74', 'balde1', 0),
(9637, 'steam:1100001468a4d74', 'armor', 0),
(9638, 'steam:1100001468a4d74', 'fixtool', 0),
(9639, 'steam:1100001468a4d74', 'bolcacahuetes', 0),
(9640, 'steam:1100001468a4d74', 'redbull', 0),
(9641, 'steam:1100001468a4d74', 'lingot_dor', 0),
(9642, 'steam:1100001468a4d74', 'packaged_plank', 0),
(9643, 'steam:1100001468a4d74', 'cigarette', 0),
(9644, 'steam:1100001468a4d74', 'packaged_chicken', 0),
(9645, 'steam:1100001468a4d74', 'meth_packaged', 0),
(9646, 'steam:1100001468a4d74', 'jusfruit', 0),
(9647, 'steam:1100001468a4d74', 'gold_rum', 0),
(9648, 'steam:1100001468a4d74', 'opium_pooch', 0),
(9649, 'steam:1100001468a4d74', 'nuggets1', 0),
(9650, 'steam:1100001468a4d74', 'condom', 0),
(9651, 'steam:1100001468a4d74', 'mojito', 0),
(9652, 'steam:1100001468a4d74', 'essence', 0),
(9653, 'steam:1100001468a4d74', 'heroine_pooch', 0),
(9654, 'steam:1100001468a4d74', 'nitro', 0),
(9655, 'steam:1100001468a4d74', 'net_cracker', 0),
(9656, 'steam:1100001468a4d74', 'myrtealcool', 0),
(9657, 'steam:1100001468a4d74', 'goldwatch', 0),
(9658, 'steam:1100001468a4d74', 'morphine_pooch', 0),
(9659, 'steam:1100001468a4d74', 'icetea', 0),
(9660, 'steam:1100001468a4d74', 'lockpick', 0),
(9661, 'steam:1100001468a4d74', 'skunk', 0),
(9662, 'steam:1100001468a4d74', 'turtle', 0),
(9663, 'steam:1100001468a4d74', 'mint_julep', 0),
(9664, 'steam:1100001468a4d74', 'martini', 0),
(9665, 'steam:1100001468a4d74', 'ecstasy', 0),
(9666, 'steam:1100001468a4d74', 'ice', 0),
(9667, 'steam:1100001468a4d74', 'ketamine_pooch', 0),
(9668, 'steam:1100001468a4d74', 'pastacarbonara', 0),
(9669, 'steam:1100001468a4d74', 'methlab', 0),
(9670, 'steam:1100001468a4d74', 'meth_raw', 0),
(9671, 'steam:1100001468a4d74', 'marabou', 0),
(9672, 'steam:1100001468a4d74', 'thermite', 0),
(9673, 'steam:1100001468a4d74', 'drpepper', 0),
(9674, 'steam:1100001468a4d74', 'mega2', 0),
(9675, 'steam:1100001468a4d74', 'lemonada', 0),
(9676, 'steam:1100001468a4d74', 'mega1', 0),
(9677, 'steam:1100001468a4d74', 'cutted_wood', 0),
(9678, 'steam:1100001468a4d74', 'laptop', 0),
(9679, 'steam:1100001468a4d74', 'farine', 0),
(9680, 'steam:1100001468a4d74', 'joint', 0),
(9681, 'steam:1100001468a4d74', 'mint', 0),
(9682, 'steam:1100001468a4d74', 'marijuana_pooch', 0),
(9683, 'steam:1100001468a4d74', 'limonade', 0),
(9684, 'steam:1100001468a4d74', 'sprite', 0),
(9685, 'steam:1100001468a4d74', 'cangrejos', 0),
(9686, 'steam:1100001468a4d74', 'combo4', 0),
(9687, 'steam:1100001468a4d74', 'weed_untrimmed', 0),
(9688, 'steam:1100001468a4d74', 'lsd', 0),
(9689, 'steam:1100001468a4d74', 'cut_money', 0),
(9690, 'steam:1100001468a4d74', 'cocaine_uncut', 0),
(9691, 'steam:1100001468a4d74', 'menthe', 0),
(9692, 'steam:1100001468a4d74', 'keycard', 0),
(9693, 'steam:1100001468a4d74', 'loka', 0),
(9694, 'steam:1100001468a4d74', 'morphine', 0),
(9695, 'steam:1100001468a4d74', 'fanta', 0),
(9696, 'steam:1100001468a4d74', 'bandage', 0),
(9697, 'steam:1100001468a4d74', 'marijuana', 0),
(9698, 'steam:1100001468a4d74', 'mifepristone', 0),
(9699, 'steam:1100001468a4d74', 'light_rum', 0),
(9700, 'steam:1100001468a4d74', 'turtlebait', 0),
(9701, 'steam:1100001468a4d74', 'combo3', 0),
(9702, 'steam:1100001468a4d74', 'bread', 4),
(9703, 'steam:1100001468a4d74', 'caipirinha', 0),
(9704, 'steam:1100001468a4d74', 'medikit', 0),
(9705, 'steam:1100001468a4d74', 'keys_missionrow_pd_front', 0),
(9706, 'steam:1100001468a4d74', 'lithium', 0),
(9707, 'steam:1100001468a4d74', 'acetone', 0),
(9708, 'steam:1100001468a4d74', 'brandy', 0),
(9709, 'steam:1100001468a4d74', 'keys_master_key', 0),
(9710, 'steam:1100001468a4d74', 'donut', 0),
(9711, 'steam:1100001468a4d74', 'xanax', 0),
(9712, 'steam:1100001468a4d74', 'headbag', 0),
(9713, 'steam:1100001468a4d74', 'whiskey', 0),
(9714, 'steam:1100001468a4d74', 'hotdog', 0),
(9715, 'steam:1100001468a4d74', 'chips', 0),
(9716, 'steam:1100001468a4d74', 'salad', 0),
(9717, 'steam:1100001468a4d74', 'afghan', 0),
(9718, 'steam:1100001468a4d74', 'lean', 0),
(9719, 'steam:1100001468a4d74', 'lighter', 0),
(9720, 'steam:1100001468a4d74', 'syrup', 0),
(9721, 'steam:1100001468a4d74', 'jewlery', 0),
(9722, 'steam:1100001468a4d74', 'cocaine_cut', 0),
(9723, 'steam:1100001468a4d74', 'jewels', 0),
(9724, 'steam:1100001468a4d74', 'soda', 0),
(9725, 'steam:1100001468a4d74', 'cigarett', 0),
(9726, 'steam:1100001468a4d74', 'iphonex', 0),
(9727, 'steam:1100001468a4d74', 'bourbon', 0),
(9728, 'steam:1100001468a4d74', 'fabric', 0),
(9729, 'steam:1100001468a4d74', 'sorted_money', 0),
(9730, 'steam:1100001468a4d74', 'rhumcoca', 0),
(9731, 'steam:1100001468a4d74', 'cocacola', 0),
(9732, 'steam:1100001468a4d74', 'heroine', 0),
(9733, 'steam:1100001468a4d74', 'beer', 0),
(9734, 'steam:1100001468a4d74', 'club_soda', 0),
(9735, 'steam:1100001468a4d74', 'drill', 0),
(9736, 'steam:1100001468a4d74', 'cachaca', 0),
(9737, 'steam:1100001468a4d74', 'gold', 0),
(9738, 'steam:1100001468a4d74', 'rice', 0),
(9739, 'steam:1100001468a4d74', 'handcuffs', 0),
(9740, 'steam:1100001468a4d74', 'carotool', 0),
(9741, 'steam:1100001468a4d74', 'paperweed', 0),
(9742, 'steam:1100001468a4d74', 'pendrive', 0),
(9743, 'steam:1100001468a4d74', 'fish', 0),
(9744, 'steam:1100001468a4d74', 'bankcard', 1),
(9745, 'steam:1100001468a4d74', 'ecstasy_pooch', 0),
(9746, 'steam:1100001468a4d74', 'golem', 0),
(9747, 'steam:1100001468a4d74', 'camarones', 0),
(9748, 'steam:1100001468a4d74', 'meat', 0),
(9749, 'steam:1100001468a4d74', 'bolpistache', 0),
(9750, 'steam:1100001468a4d74', 'alcool', 0),
(9751, 'steam:1100001468a4d74', 'id_card_f', 0),
(9752, 'steam:1100001468a4d74', 'shovel', 0),
(9753, 'steam:1100001468a4d74', 'amnesia', 0),
(9754, 'steam:1100001468a4d74', 'fresh_mix', 0),
(9755, 'steam:1100001468a4d74', 'unk_redcan', 0),
(9756, 'steam:1100001468a4d74', 'unk_greencan', 0),
(9757, 'steam:1100001468a4d74', 'unk_bluecan', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_lastcharacter`
--

CREATE TABLE `user_lastcharacter` (
  `steamid` varchar(255) NOT NULL,
  `charid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_lastcharacter`
--

INSERT INTO `user_lastcharacter` (`steamid`, `charid`) VALUES
('steam:110000142bdf425', 1),
('steam:11000014abc7198', 1),
('steam:1100001472bccb5', 1),
('steam:11000011418b975', 2),
('steam:1100001468829f9', 2),
('steam:110000145d04c36', 2),
('steam:11000014de33ad2', 1),
('steam:11000014b2e0811', 1),
('steam:11000013c9eb983', 1),
('steam:11000013b33f973', 1),
('steam:1100001424bdaac', 1),
('steam:1100001419dbb7f', 1),
('steam:11000014ad2648c', 1),
('steam:11000013f7dc792', 1),
('steam:11000013508796f', 1),
('steam:110000140bed131', 1),
('steam:11000014e54d683', 1),
('steam:11000013d9aecf5', 2),
('steam:11000013ff9a7a7', 2),
('steam:11000014a064e27', 1),
('steam:11000014bb77bcd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_licenses`
--

INSERT INTO `user_licenses` (`id`, `type`, `owner`) VALUES
(1, 'boat', 'steam:110000142bdf425'),
(2, 'boat', 'steam:1100001468829f9'),
(3, 'boat', 'steam:11000014abc7198'),
(4, 'dmv', 'steam:11000014abc7198'),
(5, 'drive', 'steam:11000014abc7198'),
(6, 'dmv', 'steam:11000013f7dc792'),
(7, 'drive', 'steam:11000013f7dc792'),
(8, 'boat', 'steam:11000013f7dc792');

-- --------------------------------------------------------

--
-- Table structure for table `user_slots`
--

CREATE TABLE `user_slots` (
  `identifier` varchar(75) NOT NULL,
  `slots` text NOT NULL DEFAULT '{"slot2":false,"slot3":false,"slot4":false}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Adder', 'adder', 900000, 'super'),
('Akuma', 'AKUMA', 7500, 'motorcycles'),
('Alpha', 'alpha', 60000, 'sports'),
('Asea', 'asea', 5500, 'sedans'),
('Autarch', 'autarch', 1955000, 'super'),
('Avarus', 'avarus', 18000, 'motorcycles'),
('Bagger', 'bagger', 13500, 'motorcycles'),
('Baller', 'baller2', 40000, 'suvs'),
('Baller Sport', 'baller3', 60000, 'suvs'),
('Banshee', 'banshee', 70000, 'sports'),
('Banshee 900R', 'banshee2', 255000, 'super'),
('Bati 801', 'bati', 12000, 'motorcycles'),
('Bati 801RR', 'bati2', 19000, 'motorcycles'),
('Bestia GTS', 'bestiagts', 55000, 'sports'),
('BF400', 'bf400', 6500, 'motorcycles'),
('Bf Injection', 'bfinjection', 16000, 'offroad'),
('Bifta', 'bifta', 12000, 'offroad'),
('Bison', 'bison', 45000, 'vans'),
('Blade', 'blade', 15000, 'muscle'),
('Blazer', 'blazer', 6500, 'offroad'),
('blazer5', 'blazer5', 1755600, 'offroad'),
('Blista', 'blista', 8000, 'compacts'),
('BMX (velo)', 'bmx', 160, 'motorcycles'),
('Bobcat XL', 'bobcatxl', 32000, 'vans'),
('Brawler', 'brawler', 45000, 'offroad'),
('Brioso R/A', 'brioso', 18000, 'compacts'),
('Btype', 'btype', 62000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
('Buccaneer', 'buccaneer', 18000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
('Buffalo', 'buffalo', 12000, 'sports'),
('Buffalo S', 'buffalo2', 20000, 'sports'),
('Bullet', 'bullet', 90000, 'super'),
('Burrito', 'burrito3', 19000, 'vans'),
('Camper', 'camper', 42000, 'vans'),
('Carbonizzare', 'carbonizzare', 75000, 'sports'),
('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
('Casco', 'casco', 30000, 'sportsclassics'),
('Cavalcade', 'cavalcade2', 55000, 'suvs'),
('Cheetah', 'cheetah', 375000, 'super'),
('Chimera', 'chimera', 38000, 'motorcycles'),
('Chino', 'chino', 15000, 'muscle'),
('Chino Luxe', 'chino2', 19000, 'muscle'),
('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
('Comet', 'comet2', 65000, 'sports'),
('Comet 5', 'comet5', 1145000, 'sports'),
('Contender', 'contender', 70000, 'suvs'),
('Coquette', 'coquette', 65000, 'sports'),
('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
('Cyclone', 'cyclone', 1890000, 'super'),
('Daemon', 'daemon', 11500, 'motorcycles'),
('Daemon High', 'daemon2', 13500, 'motorcycles'),
('Defiler', 'defiler', 9800, 'motorcycles'),
('Deluxo', 'deluxo', 4721500, 'sportsclassics'),
('Flaying Car', 'dmc12cp', 5000, 'flay'),
('Dominator', 'dominator', 35000, 'muscle'),
('Double T', 'double', 28000, 'motorcycles'),
('Dubsta', 'dubsta', 45000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
('Dukes', 'dukes', 28000, 'muscle'),
('Dune Buggy', 'dune', 8000, 'offroad'),
('Elegy', 'elegy2', 38500, 'sports'),
('Emperor', 'emperor', 8500, 'sedans'),
('Enduro', 'enduro', 5500, 'motorcycles'),
('Entity XF', 'entityxf', 425000, 'super'),
('Esskey', 'esskey', 4200, 'motorcycles'),
('Exemplar', 'exemplar', 32000, 'coupes'),
('F620', 'f620', 40000, 'coupes'),
('Faction', 'faction', 20000, 'muscle'),
('Faction Rider', 'faction2', 30000, 'muscle'),
('Faction XL', 'faction3', 40000, 'muscle'),
('Faggio', 'faggio', 1900, 'motorcycles'),
('Vespa', 'faggio2', 2800, 'motorcycles'),
('Felon', 'felon', 42000, 'coupes'),
('Felon GT', 'felon2', 55000, 'coupes'),
('Feltzer', 'feltzer2', 55000, 'sports'),
('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
('Fixter (velo)', 'fixter', 225, 'motorcycles'),
('FMJ', 'fmj', 185000, 'super'),
('Fhantom', 'fq2', 17000, 'suvs'),
('Fugitive', 'fugitive', 12000, 'sedans'),
('Furore GT', 'furoregt', 45000, 'sports'),
('Fusilade', 'fusilade', 40000, 'sports'),
('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
('Gauntlet', 'gauntlet', 30000, 'muscle'),
('Gang Burrito', 'gburrito', 45000, 'vans'),
('Burrito', 'gburrito2', 29000, 'vans'),
('Glendale', 'glendale', 6500, 'sedans'),
('Grabger', 'granger', 50000, 'suvs'),
('Gresley', 'gresley', 47500, 'suvs'),
('GT 500', 'gt500', 785000, 'sportsclassics'),
('Guardian', 'guardian', 45000, 'offroad'),
('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
('Hermes', 'hermes', 535000, 'muscle'),
('Hexer', 'hexer', 12000, 'motorcycles'),
('Hotknife', 'hotknife', 125000, 'muscle'),
('Huntley S', 'huntley', 40000, 'suvs'),
('Hustler', 'hustler', 625000, 'muscle'),
('Infernus', 'infernus', 180000, 'super'),
('Innovation', 'innovation', 23500, 'motorcycles'),
('Intruder', 'intruder', 7500, 'sedans'),
('Issi', 'issi2', 10000, 'compacts'),
('Jackal', 'jackal', 38000, 'coupes'),
('Jester', 'jester', 65000, 'sports'),
('Jester(Racecar)', 'jester2', 135000, 'sports'),
('Journey', 'journey', 6500, 'vans'),
('Kamacho', 'kamacho', 345000, 'offroad'),
('Khamelion', 'khamelion', 38000, 'sports'),
('Kuruma', 'kuruma', 30000, 'sports'),
('Landstalker', 'landstalker', 35000, 'suvs'),
('RE-7B', 'le7b', 325000, 'super'),
('Lynx', 'lynx', 40000, 'sports'),
('Mamba', 'mamba', 70000, 'sports'),
('Manana', 'manana', 12800, 'sportsclassics'),
('Manchez', 'manchez', 5300, 'motorcycles'),
('Massacro', 'massacro', 65000, 'sports'),
('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
('Mesa', 'mesa', 16000, 'suvs'),
('Mesa Trail', 'mesa3', 40000, 'suvs'),
('Minivan', 'minivan', 13000, 'vans'),
('Monroe', 'monroe', 55000, 'sportsclassics'),
('The Liberator', 'monster', 210000, 'offroad'),
('Moonbeam', 'moonbeam', 18000, 'vans'),
('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
('Nemesis', 'nemesis', 5800, 'motorcycles'),
('Neon', 'neon', 1500000, 'sports'),
('Nightblade', 'nightblade', 35000, 'motorcycles'),
('Nightshade', 'nightshade', 65000, 'muscle'),
('9F', 'ninef', 65000, 'sports'),
('9F Cabrio', 'ninef2', 80000, 'sports'),
('Omnis', 'omnis', 35000, 'sports'),
('Oracle XS', 'oracle2', 35000, 'coupes'),
('Osiris', 'osiris', 160000, 'super'),
('Panto', 'panto', 10000, 'compacts'),
('Paradise', 'paradise', 19000, 'vans'),
('Pariah', 'pariah', 1420000, 'sports'),
('Patriot', 'patriot', 55000, 'suvs'),
('PCJ-600', 'pcj', 6200, 'motorcycles'),
('Penumbra', 'penumbra', 28000, 'sports'),
('Pfister', 'pfister811', 85000, 'super'),
('Phoenix', 'phoenix', 12500, 'muscle'),
('Picador', 'picador', 18000, 'muscle'),
('Pigalle', 'pigalle', 20000, 'sportsclassics'),
('Prairie', 'prairie', 12000, 'compacts'),
('Premier', 'premier', 8000, 'sedans'),
('Primo Custom', 'primo2', 14000, 'sedans'),
('X80 Proto', 'prototipo', 2500000, 'super'),
('Radius', 'radi', 29000, 'suvs'),
('raiden', 'raiden', 1375000, 'sports'),
('Rapid GT', 'rapidgt', 35000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
('Reaper', 'reaper', 150000, 'super'),
('Rebel', 'rebel2', 35000, 'offroad'),
('Regina', 'regina', 5000, 'sedans'),
('Retinue', 'retinue', 615000, 'sportsclassics'),
('Revolter', 'revolter', 1610000, 'sports'),
('riata', 'riata', 380000, 'offroad'),
('Rocoto', 'rocoto', 45000, 'suvs'),
('Ruffian', 'ruffian', 6800, 'motorcycles'),
('Ruiner 2', 'ruiner2', 5745600, 'muscle'),
('Rumpo', 'rumpo', 15000, 'vans'),
('Rumpo Trail', 'rumpo3', 19500, 'vans'),
('Sabre Turbo', 'sabregt', 20000, 'muscle'),
('Sabre GT', 'sabregt2', 25000, 'muscle'),
('Sanchez', 'sanchez', 5300, 'motorcycles'),
('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
('Sanctus', 'sanctus', 25000, 'motorcycles'),
('Sandking', 'sandking', 55000, 'offroad'),
('Savestra', 'savestra', 990000, 'sportsclassics'),
('SC 1', 'sc1', 1603000, 'super'),
('Schafter', 'schafter2', 25000, 'sedans'),
('Schafter V12', 'schafter3', 50000, 'sports'),
('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
('Seminole', 'seminole', 25000, 'suvs'),
('Sentinel', 'sentinel', 32000, 'coupes'),
('Sentinel XS', 'sentinel2', 40000, 'coupes'),
('Sentinel3', 'sentinel3', 650000, 'sports'),
('Seven 70', 'seven70', 39500, 'sports'),
('ETR1', 'sheava', 220000, 'super'),
('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
('Slam Van', 'slamvan3', 11500, 'muscle'),
('Sovereign', 'sovereign', 22000, 'motorcycles'),
('Stinger', 'stinger', 80000, 'sportsclassics'),
('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
('Streiter', 'streiter', 500000, 'sports'),
('Stretch', 'stretch', 90000, 'sedans'),
('Stromberg', 'stromberg', 3185350, 'sports'),
('Sultan', 'sultan', 15000, 'sports'),
('Sultan RS', 'sultanrs', 65000, 'super'),
('Surano', 'surano', 50000, 'sports'),
('Surfer', 'surfer', 12000, 'vans'),
('T20', 't20', 300000, 'super'),
('Tailgater', 'tailgater', 30000, 'sedans'),
('Tampa', 'tampa', 16000, 'muscle'),
('Drift Tampa', 'tampa2', 80000, 'sports'),
('Thrust', 'thrust', 24000, 'motorcycles'),
('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
('Trophy Truck', 'trophytruck', 60000, 'offroad'),
('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
('Tropos', 'tropos', 40000, 'sports'),
('Turismo R', 'turismor', 350000, 'super'),
('Tyrus', 'tyrus', 600000, 'super'),
('Vacca', 'vacca', 120000, 'super'),
('Vader', 'vader', 7200, 'motorcycles'),
('Verlierer', 'verlierer2', 70000, 'sports'),
('Vigero', 'vigero', 12500, 'muscle'),
('Virgo', 'virgo', 14000, 'muscle'),
('Viseris', 'viseris', 875000, 'sportsclassics'),
('Visione', 'visione', 2250000, 'super'),
('Voltic', 'voltic', 90000, 'super'),
('Voltic 2', 'voltic2', 3830400, 'super'),
('Voodoo', 'voodoo', 7200, 'muscle'),
('Vortex', 'vortex', 9800, 'motorcycles'),
('Warrener', 'warrener', 4000, 'sedans'),
('Washington', 'washington', 9000, 'sedans'),
('Windsor', 'windsor', 95000, 'coupes'),
('Windsor Drop', 'windsor2', 125000, 'coupes'),
('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
('XLS', 'xls', 32000, 'suvs'),
('Yosemite', 'yosemite', 485000, 'muscle'),
('Youga', 'youga', 10800, 'vans'),
('Youga Luxuary', 'youga2', 14500, 'vans'),
('Z190', 'z190', 900000, 'sportsclassics'),
('Zentorno', 'zentorno', 1500000, 'super'),
('Zion', 'zion', 36000, 'coupes'),
('Zion Cabrio', 'zion2', 45000, 'coupes'),
('Zombie', 'zombiea', 9500, 'motorcycles'),
('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
('Z-Type', 'ztype', 220000, 'sportsclassics');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles_for_sale`
--

CREATE TABLE `vehicles_for_sale` (
  `id` int(11) NOT NULL,
  `seller` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `vehicleProps` longtext NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupés'),
('flay', 'Flaying Car'),
('motorcycles', 'Motos'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `warrants_list`
--

CREATE TABLE `warrants_list` (
  `id` int(11) NOT NULL,
  `json_data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `weashops`
--

CREATE TABLE `weashops` (
  `id` int(11) NOT NULL,
  `zone` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weashops`
--

INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
(1, 'GunShop', 'WEAPON_PISTOL', 2000),
(2, 'BlackWeashop', 'WEAPON_PISTOL', 2000),
(3, 'GunShop', 'WEAPON_FLASHLIGHT', 1000),
(4, 'BlackWeashop', 'WEAPON_FLASHLIGHT', 1000),
(15, 'GunShop', 'WEAPON_PUMPSHOTGUN', 20000),
(16, 'BlackWeashop', 'WEAPON_PUMPSHOTGUN', 20000),
(41, 'GunShop', 'WEAPON_KNIFE', 1500);

-- --------------------------------------------------------

--
-- Table structure for table `wh_test`
--

CREATE TABLE `wh_test` (
  `identifier` varchar(50) NOT NULL,
  `warehouse` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ybnv3phone8x_app_chat`
--

CREATE TABLE `ybnv3phone8x_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ybnv3phone8x_bank_transfer`
--

CREATE TABLE `ybnv3phone8x_bank_transfer` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `identifier` longtext DEFAULT NULL,
  `price` longtext NOT NULL,
  `name` longtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ybnv3phone8x_bank_transfer`
--

INSERT INTO `ybnv3phone8x_bank_transfer` (`id`, `type`, `identifier`, `price`, `name`, `time`) VALUES
(1, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-04-14 07:17:15'),
(2, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-04-29 08:39:27'),
(3, 1, 'steam:110000142bdf425', '100', 'Valet Fee', '2022-04-29 08:42:15'),
(4, 1, 'steam:110000142bdf425', '100', 'Valet Fee', '2022-04-29 08:44:05'),
(5, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-06-07 00:58:56'),
(6, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-06-07 00:59:38'),
(7, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-06-07 07:43:56'),
(8, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-06-07 16:48:24'),
(9, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-06-07 16:49:33'),
(10, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-06-07 16:58:09'),
(11, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-06-09 07:31:49'),
(12, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-10 15:59:38'),
(13, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-10 16:00:26'),
(14, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-11 04:26:56'),
(15, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-11 04:27:23'),
(16, 1, 'steam:11000014d8c241b', '18000', 'Monica Grey', '2022-06-11 22:10:26'),
(17, 2, 'steam:1100001472bccb5', '18000', 'Jay Mob', '2022-06-11 22:10:26'),
(18, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-12 00:07:43'),
(19, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-12 00:08:28'),
(20, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-12 18:26:51'),
(21, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-12 18:28:02'),
(22, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-13 16:43:03'),
(23, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-13 16:43:46'),
(24, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-13 16:45:13'),
(25, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-13 16:45:13'),
(26, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-14 02:43:07'),
(27, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-14 02:43:21'),
(28, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-15 19:15:25'),
(29, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-15 19:15:36'),
(30, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-15 19:22:36'),
(31, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-15 19:36:58'),
(32, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-15 19:37:12'),
(33, 1, 'steam:11000011418b975', '100', 'Valet Fee', '2022-06-15 22:02:02'),
(34, 1, 'steam:11000011418b975', '100', 'Valet Fee', '2022-06-15 22:04:08'),
(35, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-15 22:07:13'),
(36, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-15 22:07:27'),
(37, 1, 'steam:11000011418b975', '100', 'Valet Fee', '2022-06-15 22:22:35'),
(38, 1, 'steam:11000011418b975', '100', 'Valet Fee', '2022-06-15 22:23:12'),
(39, 2, 'steam:11000014abc7198', '21188', 'buy 1 bitcoin', '2022-06-16 16:48:25'),
(40, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-17 04:40:52'),
(41, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-17 04:41:06'),
(42, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-17 19:35:44'),
(43, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-17 19:35:58'),
(44, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-17 19:38:54'),
(45, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-18 08:03:29'),
(46, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-18 08:04:03'),
(47, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-18 16:33:27'),
(48, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-18 16:34:11'),
(49, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-18 17:09:34'),
(50, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-18 17:09:47'),
(51, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-06-19 14:14:58'),
(52, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-06-19 14:15:33'),
(53, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-06-19 14:41:48'),
(54, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-06-19 14:41:48'),
(55, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-19 22:59:17'),
(56, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-19 22:59:27'),
(57, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-20 08:11:44'),
(58, 1, 'steam:11000014abc7198', '100', 'Valet Fee', '2022-06-20 08:11:55'),
(59, 1, 'steam:11000013b33f973', '100', 'Valet Fee', '2022-06-20 17:32:00'),
(60, 1, 'steam:11000013b33f973', '100', 'Valet Fee', '2022-06-20 17:33:41'),
(61, 1, 'steam:11000013f7dc792', '5000', 'IJX 645 Car purchase', '2022-06-22 20:01:02'),
(62, 2, 'steam:1100001468829f9', '5000', 'IJX 645 Car sale', '2022-06-22 20:01:03'),
(63, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-06-22 20:18:30'),
(64, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-06-22 20:19:09'),
(65, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-06-23 06:08:33'),
(66, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-06-23 06:11:01'),
(67, 1, 'steam:110000140bed131', '5000000', 'LEVIS Car purchase', '2022-06-23 07:06:23'),
(68, 2, 'steam:11000013b33f973', '5000000', 'LEVIS Car sale', '2022-06-23 07:06:23'),
(69, 1, 'steam:110000140bed131', '100', 'Valet Fee', '2022-06-23 07:06:41'),
(70, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-06-23 07:06:42'),
(71, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-06-23 07:07:41'),
(72, 1, 'steam:110000140bed131', '100', 'Valet Fee', '2022-06-23 07:07:49'),
(73, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-06-23 09:56:13'),
(74, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-06-23 09:56:28'),
(75, 1, 'steam:110000140bed131', '100', 'Valet Fee', '2022-06-23 12:02:45'),
(76, 1, 'steam:110000140bed131', '100', 'Valet Fee', '2022-06-23 12:03:03'),
(77, 1, 'steam:110000140bed131', '69', 'EXU 187 Car purchase', '2022-06-23 12:15:47'),
(78, 2, 'steam:11000013f7dc792', '69', 'EXU 187 Car sale', '2022-06-23 12:15:47'),
(79, 1, 'steam:110000140bed131', '100', 'Valet Fee', '2022-06-23 12:16:37'),
(80, 1, 'steam:110000140bed131', '100', 'Valet Fee', '2022-06-23 12:36:36'),
(81, 1, 'steam:110000140bed131', '100', 'Valet Fee', '2022-06-23 12:42:13'),
(82, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-06-23 12:44:59'),
(83, 1, 'steam:110000140bed131', '100', 'Valet Fee', '2022-06-24 08:09:12'),
(84, 1, 'steam:110000140bed131', '100', 'Valet Fee', '2022-06-25 13:44:36'),
(85, 1, 'steam:110000140bed131', '100', 'Valet Fee', '2022-06-25 13:45:02'),
(86, 2, 'steam:11000013f7dc792', '21224000', 'buy 1000 bitcoin', '2022-06-25 13:48:16'),
(87, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-06-25 16:49:33'),
(88, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-06-25 16:49:52'),
(89, 1, 'steam:110000140bed131', '100', 'Valet Fee', '2022-06-25 20:38:48'),
(90, 1, 'steam:110000140bed131', '100', 'Valet Fee', '2022-06-25 20:39:01'),
(91, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-06-26 16:54:12'),
(92, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-06-26 16:54:36'),
(93, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-06-26 17:15:21'),
(94, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-06-26 17:15:31'),
(95, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-06-30 13:25:48'),
(96, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-06-30 13:25:57'),
(97, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-06-30 17:17:27'),
(98, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-06-30 17:17:36'),
(99, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-06-30 17:18:29'),
(100, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-06-30 17:19:29'),
(101, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-01 06:28:04'),
(102, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-01 06:29:57'),
(103, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-01 06:41:14'),
(104, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-01 06:41:50'),
(105, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-07-01 06:46:57'),
(106, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-07-01 06:47:08'),
(107, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-07-01 06:51:53'),
(108, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-07-01 06:51:53'),
(109, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-07-01 07:10:31'),
(110, 1, 'steam:110000142bdf425', '100', 'Valet Fee', '2022-07-01 07:16:00'),
(111, 1, 'steam:110000142bdf425', '100', 'Valet Fee', '2022-07-01 07:16:20'),
(112, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-07-01 07:18:42'),
(113, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-07-01 07:20:56'),
(114, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-07-01 07:45:55'),
(115, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-07-01 09:29:35'),
(116, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-07-01 09:30:13'),
(117, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-07-01 10:30:07'),
(118, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-07-01 10:30:18'),
(119, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-07-01 10:52:56'),
(120, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-07-01 10:53:04'),
(121, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-07-03 06:48:23'),
(122, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-07-03 06:48:31'),
(123, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-03 14:23:23'),
(124, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-04 05:19:33'),
(125, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-04 05:19:45'),
(126, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-04 05:47:18'),
(127, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-04 05:48:00'),
(128, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-04 05:48:00'),
(129, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-04 05:53:40'),
(130, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-04 06:07:19'),
(131, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-04 06:07:45'),
(132, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-04 08:12:37'),
(133, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-04 08:12:37'),
(134, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-04 08:12:37'),
(135, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-04 08:54:59'),
(136, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-04 08:54:59'),
(137, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-04 08:54:59'),
(138, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-04 08:54:59'),
(139, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-04 08:54:59'),
(140, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-04 08:54:59'),
(141, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-04 18:36:32'),
(142, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-07-05 16:19:01'),
(143, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-07-05 16:19:19'),
(144, 1, 'steam:11000014292f4b2', '100', 'Valet Fee', '2022-07-05 19:59:58'),
(145, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-05 20:09:48'),
(146, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-05 20:09:59'),
(147, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-07-06 10:09:54'),
(148, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-07-06 10:10:02'),
(149, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-07-06 12:36:13'),
(150, 1, 'steam:1100001468829f9', '100', 'Valet Fee', '2022-07-06 13:10:34'),
(151, 1, 'steam:110000142bdf425', '100', 'Valet Fee', '2022-07-06 13:52:43'),
(152, 1, 'steam:110000142bdf425', '100', 'Valet Fee', '2022-07-06 13:53:03'),
(153, 1, 'steam:110000142bdf425', '100', 'Valet Fee', '2022-07-06 13:58:42'),
(154, 1, 'steam:11000014292f4b2', '100', 'Valet Fee', '2022-07-06 15:54:22'),
(155, 1, 'steam:11000014292f4b2', '100', 'Valet Fee', '2022-07-06 15:55:01'),
(156, 1, 'steam:11000014292f4b2', '100', 'Valet Fee', '2022-07-06 18:12:35'),
(157, 1, 'steam:11000014292f4b2', '100', 'Valet Fee', '2022-07-06 18:13:30'),
(158, 1, 'steam:11000014292f4b2', '100', 'Valet Fee', '2022-07-06 19:07:32'),
(159, 1, 'steam:11000014292f4b2', '100', 'Valet Fee', '2022-07-06 19:08:05'),
(160, 1, 'steam:11000014a064e27', '100', 'Valet Fee', '2022-07-06 20:01:12'),
(161, 1, 'steam:11000014a064e27', '100', 'Valet Fee', '2022-07-06 20:01:50'),
(162, 1, 'steam:11000014292f4b2', '100', 'Valet Fee', '2022-07-07 10:10:07'),
(163, 1, 'steam:11000014292f4b2', '100', 'Valet Fee', '2022-07-07 10:10:59'),
(164, 1, 'steam:110000140bed131', '100', 'Valet Fee', '2022-07-07 10:11:19'),
(165, 1, 'steam:110000140bed131', '100', 'Valet Fee', '2022-07-07 10:11:30'),
(166, 1, 'steam:11000014a064e27', '100', 'Valet Fee', '2022-07-07 19:23:48'),
(167, 1, 'steam:11000014a064e27', '100', 'Valet Fee', '2022-07-07 19:24:14'),
(168, 1, 'steam:11000014a064e27', '100', 'Valet Fee', '2022-07-07 19:52:34'),
(169, 1, 'steam:11000014a064e27', '100', 'Valet Fee', '2022-07-07 19:52:56'),
(170, 1, 'steam:110000140bed131', '100', 'Valet Fee', '2022-07-07 20:07:16'),
(171, 1, 'steam:110000140bed131', '100', 'Valet Fee', '2022-07-07 20:07:42'),
(172, 1, 'steam:110000140bed131', '100', 'Valet Fee', '2022-07-07 20:07:43'),
(173, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-08 07:41:07'),
(174, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-08 07:41:26'),
(175, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-08 08:18:00'),
(176, 1, 'steam:11000013f7dc792', '100', 'Valet Fee', '2022-07-08 08:18:12');

-- --------------------------------------------------------

--
-- Table structure for table `ybnv3phone8x_blockednumber`
--

CREATE TABLE `ybnv3phone8x_blockednumber` (
  `id` int(11) NOT NULL,
  `identifier` longtext NOT NULL,
  `hex` longtext NOT NULL,
  `number` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ybnv3phone8x_calls`
--

CREATE TABLE `ybnv3phone8x_calls` (
  `id` int(11) NOT NULL,
  `owner` longtext NOT NULL COMMENT 'Num tel proprio',
  `num` longtext NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ybnv3phone8x_calls`
--

INSERT INTO `ybnv3phone8x_calls` (`id`, `owner`, `num`, `incoming`, `time`, `accepts`) VALUES
(1, '2791727', '9039794', 1, '2022-06-12 22:46:42', 1),
(2, '9039794', '2791727', 0, '2022-06-12 22:46:42', 1),
(3, '7887333', '7887333', 1, '2022-06-20 17:08:48', 0),
(4, '7887333', '7887333', 0, '2022-06-20 17:08:48', 0),
(5, '3762340', '4486352', 1, '2022-06-25 13:46:03', 1),
(6, '4486352', '3762340', 0, '2022-06-25 13:46:03', 1),
(7, '3762340', '4486352', 1, '2022-06-25 13:46:24', 1),
(8, '4486352', '3762340', 0, '2022-06-25 13:46:24', 1),
(9, '3762340', '4486352', 1, '2022-06-25 13:46:58', 1),
(10, '4486352', '3762340', 0, '2022-06-25 13:46:58', 1),
(11, '6730273', '6730273', 1, '2022-07-07 16:29:57', 0),
(12, '6730273', '6730273', 0, '2022-07-07 16:29:57', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ybnv3phone8x_gallery`
--

CREATE TABLE `ybnv3phone8x_gallery` (
  `id` int(11) NOT NULL,
  `hex` longtext NOT NULL,
  `image` longtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ybnv3phone8x_gallery`
--

INSERT INTO `ybnv3phone8x_gallery` (`id`, `hex`, `image`, `time`) VALUES
(1, 'steam:1100001472bccb5', '0', '2022-06-13 05:15:54'),
(2, 'steam:11000014292f4b2', 'https://media.discordapp.net/attachments/945755669317971988/993465759672041562/screenshot.jpeg', '2022-07-04 10:38:17'),
(3, 'steam:1100001442255b5', 'https://media.discordapp.net/attachments/945755669317971988/993478922069102622/screenshot.jpeg', '2022-07-04 11:30:35'),
(4, 'steam:11000014292f4b2', 'https://media.discordapp.net/attachments/945755669317971988/993659425074188408/screenshot.jpeg', '2022-07-04 23:27:50'),
(5, 'steam:11000014292f4b2', 'https://media.discordapp.net/attachments/945755669317971988/994312422183669850/screenshot.jpeg', '2022-07-06 18:42:38'),
(6, 'steam:11000014292f4b2', 'https://media.discordapp.net/attachments/945755669317971988/994566350561349722/screenshot.jpeg', '2022-07-07 11:31:39');

-- --------------------------------------------------------

--
-- Table structure for table `ybnv3phone8x_gotur`
--

CREATE TABLE `ybnv3phone8x_gotur` (
  `id` int(11) NOT NULL,
  `label` longtext NOT NULL,
  `price` int(11) DEFAULT 0,
  `count` int(11) NOT NULL,
  `item` longtext NOT NULL,
  `kapat` varchar(50) DEFAULT 'false',
  `adet` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ybnv3phone8x_gps`
--

CREATE TABLE `ybnv3phone8x_gps` (
  `id` int(11) NOT NULL,
  `hex` longtext NOT NULL,
  `nott` longtext DEFAULT NULL,
  `gps` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ybnv3phone8x_gps`
--

INSERT INTO `ybnv3phone8x_gps` (`id`, `hex`, `nott`, `gps`) VALUES
(1, 'steam:11000014abc7198', 'Money Wash', 'GPS: 1005.6693725586, -113.87200927734'),
(2, 'steam:11000014abc7198', 'bunker', 'GPS: -1846.92578125, 4555.6899414063'),
(3, 'steam:11000014abc7198', 'bunker 2', 'GPS: 2541.4873046875, 1690.7408447266'),
(4, 'steam:11000014abc7198', 'villa ', 'GPS: -2670.3081054688, 1333.3328857422');

-- --------------------------------------------------------

--
-- Table structure for table `ybnv3phone8x_group_message`
--

CREATE TABLE `ybnv3phone8x_group_message` (
  `id` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `owner` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ownerphone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `messages` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contacts` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ybnv3phone8x_insto_accounts`
--

CREATE TABLE `ybnv3phone8x_insto_accounts` (
  `id` int(11) NOT NULL,
  `forename` longtext COLLATE utf8mb4_bin NOT NULL,
  `surname` longtext COLLATE utf8mb4_bin NOT NULL,
  `username` varchar(250) CHARACTER SET utf8 NOT NULL,
  `password` longtext COLLATE utf8mb4_bin NOT NULL,
  `avatar_url` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `takip` longtext COLLATE utf8mb4_bin DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `ybnv3phone8x_insto_accounts`
--

INSERT INTO `ybnv3phone8x_insto_accounts` (`id`, `forename`, `surname`, `username`, `password`, `avatar_url`, `takip`) VALUES
(1, 'Muqeet ', 'Arain', 'muqeet777', 'killmeplz', 'https://media.discordapp.net/attachments/945755669317971988/988488670577324102/screenshot.jpeg', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `ybnv3phone8x_insto_instas`
--

CREATE TABLE `ybnv3phone8x_insto_instas` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `filters` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ybnv3phone8x_insto_likes`
--

CREATE TABLE `ybnv3phone8x_insto_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `inapId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `ybnv3phone8x_insto_story`
--

CREATE TABLE `ybnv3phone8x_insto_story` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stories` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `isRead` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ybnv3phone8x_job_message`
--

CREATE TABLE `ybnv3phone8x_job_message` (
  `id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `number` varchar(50) NOT NULL,
  `message` longtext NOT NULL,
  `photo` longtext DEFAULT NULL,
  `gps` varchar(255) NOT NULL,
  `owner` int(11) NOT NULL DEFAULT 0,
  `jobm` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ybnv3phone8x_mails`
--

CREATE TABLE `ybnv3phone8x_mails` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(255) NOT NULL DEFAULT '0',
  `sender` varchar(255) NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '0',
  `image` text NOT NULL,
  `message` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ybnv3phone8x_messages`
--

CREATE TABLE `ybnv3phone8x_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(50) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `message` longtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ybnv3phone8x_messages`
--

INSERT INTO `ybnv3phone8x_messages` (`id`, `transmitter`, `receiver`, `message`, `time`, `isRead`, `owner`) VALUES
(1, '3762340', '4486352', 'Jou Poes', '2022-06-25 13:51:26', 1, 0),
(2, '4486352', '3762340', 'Jou Poes', '2022-06-25 13:51:26', 1, 1),
(3, '6730273', '4635995', 'on my way', '2022-07-03 17:10:46', 1, 0),
(4, '4635995', '6730273', 'on my way', '2022-07-03 17:10:46', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ybnv3phone8x_messages_group`
--

CREATE TABLE `ybnv3phone8x_messages_group` (
  `id` int(11) NOT NULL,
  `owner` longtext NOT NULL,
  `ownerphone` varchar(50) NOT NULL,
  `groupname` varchar(255) NOT NULL,
  `gimage` longtext NOT NULL,
  `contacts` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ybnv3phone8x_news`
--

CREATE TABLE `ybnv3phone8x_news` (
  `id` int(11) NOT NULL,
  `hex` longtext DEFAULT NULL,
  `haber` longtext DEFAULT NULL,
  `baslik` longtext DEFAULT NULL,
  `resim` longtext DEFAULT NULL,
  `video` longtext DEFAULT NULL,
  `zaman` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ybnv3phone8x_settings`
--

CREATE TABLE `ybnv3phone8x_settings` (
  `id` int(11) NOT NULL,
  `identifier` longtext NOT NULL,
  `crypto` longtext NOT NULL DEFAULT '{}',
  `phone_number` varchar(50) DEFAULT NULL,
  `avatar_url` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ybnv3phone8x_settings`
--

INSERT INTO `ybnv3phone8x_settings` (`id`, `identifier`, `crypto`, `phone_number`, `avatar_url`) VALUES
(1, 'steam:11000013d4486db', '{}', '1223297', NULL),
(2, 'steam:1100001468829f9', '{}', '5820251', NULL),
(3, 'steam:110000142bdf425', '{}', '9238098', NULL),
(4, 'steam:110000135fcc80a', '{}', '6318148', NULL),
(5, 'steam:11000014be047a9', '{}', '9514630', NULL),
(6, 'steam:11000014aaf8ab6', '{}', '2604944', NULL),
(7, 'steam:11000010ceae59d', '{}', '2899402', NULL),
(8, 'steam:110000140dcae16', '{}', '5001044', NULL),
(9, 'steam:11000014420dda9', '{}', '2648878', NULL),
(10, 'steam:11000014bb77bcd', '{}', '5260954', NULL),
(11, 'steam:11000011cc0ec0b', '{}', '4817749', NULL),
(12, 'steam:11000014ef9bcc2', '{}', '5547241', NULL),
(13, 'steam:11000014adb8632', '{}', '4055572', NULL),
(14, 'steam:11000014abc7198', '{\"bitcoin\":1}', '3354370', NULL),
(15, 'steam:11000011418b975', '{}', '3534820', NULL),
(16, 'steam:11000014d8c241b', '{}', '5486267', NULL),
(17, 'steam:1100001472bccb5', '{}', '9039794', NULL),
(18, 'steam:11000014de33ad2', '{}', '2791727', NULL),
(19, 'steam:1100001464aa64b', '{}', '2936587', NULL),
(20, 'steam:11000014b2e0811', '{}', '7724752', NULL),
(21, 'steam:110000145d04c36', '{}', '2366352', NULL),
(22, 'steam:11000013c9eb983', '{}', '1900393', NULL),
(23, 'steam:11000013b33f973', '{}', '7887333', NULL),
(24, 'steam:1100001424bdaac', '{}', '9380554', NULL),
(25, 'steam:1100001419dbb7f', '{}', '5339635', NULL),
(26, 'steam:11000014ad2648c', '{}', '7412732', NULL),
(27, 'steam:11000013f7dc792', '{\"bitcoin\":1000}', '3762340', NULL),
(28, 'steam:11000013508796f', '{}', '8231215', NULL),
(29, 'steam:110000140bed131', '{}', '4486352', NULL),
(30, 'steam:11000014e54d683', '{}', '5659997', NULL),
(31, 'steam:11000013d9aecf5', '{}', '4635995', NULL),
(32, 'steam:11000013ff9a7a7', '{}', '5700183', NULL),
(33, 'steam:11000014a064e27', '{}', '5037776', NULL),
(34, 'steam:110000144d7020e', '{}', '7084025', NULL),
(35, 'steam:11000014292f4b2', '{}', '6730273', NULL),
(36, 'steam:1100001442255b5', '{}', '9412603', NULL),
(37, 'steam:1100001468a4d74', '{}', '6574737', NULL),
(38, 'steam:1100001468a4d74', '{}', '8768707', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ybnv3phone8x_tinderacc`
--

CREATE TABLE `ybnv3phone8x_tinderacc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `passaword` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ybnv3phone8x_tindermatch`
--

CREATE TABLE `ybnv3phone8x_tindermatch` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `friend_id` int(11) NOT NULL DEFAULT 0,
  `is_match` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ybnv3phone8x_tindermessage`
--

CREATE TABLE `ybnv3phone8x_tindermessage` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `tinderes` text NOT NULL,
  `owner` int(11) NOT NULL DEFAULT 0,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ybnv3phone8x_twitter_accounts`
--

CREATE TABLE `ybnv3phone8x_twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `profilavatar` longtext COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `ybnv3phone8x_twitter_accounts`
--

INSERT INTO `ybnv3phone8x_twitter_accounts` (`id`, `username`, `password`, `avatar_url`, `profilavatar`) VALUES
(1, 'Spyder', '757575', '/html/static/img/twitter/default_profile.png', '/html/static/img/twitter/banner.jpg'),
(2, 'Monke', '123456', '/html/static/img/twitter/default_profile.png', '/html/static/img/twitter/banner.jpg'),
(3, 'volls', '123456789', '/html/static/img/twitter/default_profile.png', '/html/static/img/twitter/banner.jpg'),
(4, 'Nathan', 'Sniper@75', '/html/static/img/twitter/default_profile.png', '/html/static/img/twitter/banner.jpg'),
(5, 'URMOMGE', 'Cbruwer9', '/html/static/img/twitter/default_profile.png', '/html/static/img/twitter/banner.jpg'),
(8, 'Nathyy', 'Sniper@75', NULL, NULL),
(9, 'Gregory', 'Henxo@25356', '/html/static/img/twitter/default_profile.png', 'https://media.discordapp.net/attachments/945755669317971988/993465066588479528/screenshot.jpeg'),
(10, 'ValentinaBruni', 'samabruni12', '/html/static/img/twitter/default_profile.png', '/html/static/img/twitter/banner.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ybnv3phone8x_twitter_likes`
--

CREATE TABLE `ybnv3phone8x_twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `ybnv3phone8x_twitter_likes`
--

INSERT INTO `ybnv3phone8x_twitter_likes` (`id`, `authorId`, `tweetId`) VALUES
(4, 9, 8),
(5, 8, 13),
(6, 8, 14),
(7, 8, 15),
(8, 8, 9),
(9, 8, 8),
(10, 9, 15);

-- --------------------------------------------------------

--
-- Table structure for table `ybnv3phone8x_twitter_tweets`
--

CREATE TABLE `ybnv3phone8x_twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ybnv3phone8x_twitter_tweets`
--

INSERT INTO `ybnv3phone8x_twitter_tweets` (`id`, `authorId`, `realUser`, `message`, `image`, `time`, `likes`) VALUES
(1, 1, 'steam:11000014abc7198', 'WIn', 'https://media.discordapp.net/attachments/945755669317971988/986544782446829588/screenshot.jpeg', '2022-06-15 08:16:56', 0),
(2, 1, 'steam:11000014abc7198', 'Spyder', 'https://media.discordapp.net/attachments/945755669317971988/986710114914427001/screenshot.jpeg', '2022-06-15 19:13:59', 0),
(3, 2, 'steam:11000013f7dc792', 'Monke?', 'https://media.discordapp.net/attachments/945755669317971988/990252607434002522/screenshot.jpeg', '2022-06-25 13:50:26', 0),
(4, 2, 'steam:11000013f7dc792', ':avocado:', '', '2022-06-25 13:51:44', 0),
(5, 5, 'steam:11000013f7dc792', 'Wazzzzap Monkeysssss', 'https://media.discordapp.net/attachments/945755669317971988/993166832771006544/screenshot.jpeg', '2022-07-03 14:50:37', 0),
(6, 5, 'steam:11000013f7dc792', 'Car dealers in City?', '', '2022-07-04 10:27:24', 0),
(7, 9, 'steam:11000014292f4b2', '', 'https://media.discordapp.net/attachments/945755669317971988/993465759672041562/screenshot.jpeg', '2022-07-04 10:38:41', 0),
(8, 5, 'steam:11000013f7dc792', '@Gregory Poes mooi', '', '2022-07-04 10:40:18', 2),
(9, 10, 'steam:1100001442255b5', 'YUMMY BLOOD', 'https://media.discordapp.net/attachments/945755669317971988/993479169054879744/screenshot.jpeg', '2022-07-04 11:31:41', 1),
(10, 9, 'steam:11000014292f4b2', 'BETA', '', '2022-07-04 16:15:16', 0),
(11, 9, 'steam:11000014292f4b2', '@Gregory', '', '2022-07-04 16:15:24', 0),
(12, 9, 'steam:11000014292f4b2', '', 'https://media.discordapp.net/attachments/945755669317971988/993659425074188408/screenshot.jpeg Robbing this place yes daddy', '2022-07-04 23:28:46', 0),
(13, 9, 'steam:11000014292f4b2', 'robbing this house daddy', 'https://media.discordapp.net/attachments/945755669317971988/993659425074188408/screenshot.jpeg', '2022-07-04 23:29:21', 1),
(14, 9, 'steam:11000014292f4b2', 'Recently  killed but I just walked it off', 'https://media.discordapp.net/attachments/945755669317971988/994312422183669850/screenshot.jpeg', '2022-07-06 18:44:10', 1),
(15, 9, 'steam:11000014292f4b2', 'JUST HEALED A BETA MALE', 'https://media.discordapp.net/attachments/945755669317971988/994566350561349722/screenshot.jpeg', '2022-07-07 11:32:11', 2),
(16, 8, 'steam:11000013d9aecf5', '@Gregory', '', '2022-07-07 11:35:34', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ybnv3phone8x_users_contacts`
--

CREATE TABLE `ybnv3phone8x_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(30) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` longtext CHARACTER SET utf8mb4 DEFAULT '-1',
  `avatar` longtext NOT NULL DEFAULT 'https://cdn.iconscout.com/icon/free/png-256/avatar-370-456322.png'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ybnv3phone8x_users_contacts`
--

INSERT INTO `ybnv3phone8x_users_contacts` (`id`, `identifier`, `number`, `display`, `avatar`) VALUES
(1, 'steam:11000014d8c241b', '9039794', 'dezzy', 'https://image.flaticon.com/icons/png/512/194/194938.png'),
(2, 'steam:11000014de33ad2', '9039794', 'Action', 'https://image.flaticon.com/icons/png/512/194/194938.png'),
(3, 'steam:1100001472bccb5', '2791727', 'Major :hot_face::upside_down_face:', 'https://image.flaticon.com/icons/png/512/194/194938.png'),
(4, 'steam:11000013f7dc792', '4486352', 'Tom', 'https://image.flaticon.com/icons/png/512/194/194938.png');

-- --------------------------------------------------------

--
-- Table structure for table `ybnv3phone8x_vehicle_sales`
--

CREATE TABLE `ybnv3phone8x_vehicle_sales` (
  `id` int(11) NOT NULL,
  `owner` longtext NOT NULL,
  `ownerphone` varchar(255) NOT NULL,
  `plate` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image` longtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ybnv3phone8x_vehicle_sales`
--

INSERT INTO `ybnv3phone8x_vehicle_sales` (`id`, `owner`, `ownerphone`, `plate`, `model`, `price`, `image`, `time`) VALUES
(1, 'steam:1100001468829f9', '5820251', 'ZLL 399', 'T20', 54654, '0', '2022-04-29 08:40:06'),
(5, 'steam:11000013f7dc792', '3762340', 'VQY 904', 'MAMBA', 6969, 'https://media.discordapp.net/attachments/945755669317971988/990252757514588210/screenshot.jpeg', '2022-06-25 13:50:57'),
(6, 'steam:11000013f7dc792', '3762340', 'ANS 984', 'JOURNEY', 1, 'https://media.discordapp.net/attachments/945755669317971988/993429948364763256/screenshot.jpeg', '2022-07-04 08:16:08'),
(7, 'steam:11000013f7dc792', '3762340', 'ANS 984', 'JOURNEY', 1, 'https://media.discordapp.net/attachments/945755669317971988/993429948314419290/screenshot.jpeg', '2022-07-04 08:16:17'),
(8, 'steam:11000013f7dc792', '3762340', 'CKV 217', 'AKUMA', 1, 'https://media.discordapp.net/attachments/945755669317971988/993430129197985832/screenshot.jpeg', '2022-07-04 08:16:42'),
(9, 'steam:11000013f7dc792', '3762340', 'CKV 217', 'AKUMA', 11, 'https://media.discordapp.net/attachments/945755669317971988/993430129487392778/screenshot.jpeg', '2022-07-04 08:16:42'),
(10, 'steam:11000013f7dc792', '3762340', 'DFB 590', 'BLAZER4', 1, 'https://media.discordapp.net/attachments/945755669317971988/993430179592552488/screenshot.jpeg', '2022-07-04 08:16:53'),
(11, 'steam:11000013f7dc792', '3762340', 'DPV 244', 'CARNOTFOUND', 2, 'https://media.discordapp.net/attachments/945755669317971988/993430217441955850/screenshot.jpeg', '2022-07-04 08:17:03'),
(12, 'steam:11000013f7dc792', '3762340', 'EJK 728', '370Z', 2, 'https://media.discordapp.net/attachments/945755669317971988/993430257031983124/screenshot.jpeg', '2022-07-04 08:17:13'),
(13, 'steam:11000013f7dc792', '3762340', 'EMV 730', '370Z', 1, 'https://media.discordapp.net/attachments/945755669317971988/993430301940396083/screenshot.jpeg', '2022-07-04 08:17:24'),
(14, 'steam:11000013f7dc792', '3762340', 'FBK 991', 'JOURNEY', 2, 'https://media.discordapp.net/attachments/945755669317971988/993430378436100096/screenshot.jpeg', '2022-07-04 08:17:41'),
(15, 'steam:11000013f7dc792', '3762340', 'FXW 728', 'POLVIC2', 23, 'https://media.discordapp.net/attachments/945755669317971988/993430464876519435/screenshot.jpeg', '2022-07-04 08:18:02'),
(16, 'steam:11000013f7dc792', '3762340', 'HCD 708', 'bmpos8', 2, 'https://media.discordapp.net/attachments/945755669317971988/993430511252951110/screenshot.jpeg', '2022-07-04 08:18:13'),
(17, 'steam:11000013f7dc792', '3762340', 'HCJ 103', 'ARDENT', 3, 'https://media.discordapp.net/attachments/945755669317971988/993430560234029166/screenshot.jpeg', '2022-07-04 08:18:25'),
(18, 'steam:11000013f7dc792', '3762340', 'IJW 084', 'CB500X', 3, 'https://media.discordapp.net/attachments/945755669317971988/993430601522761799/screenshot.jpeg', '2022-07-04 08:18:34'),
(19, 'steam:11000013f7dc792', '3762340', 'IJW 084', 'CB500X', 1, 'https://media.discordapp.net/attachments/945755669317971988/993430671987068968/screenshot.jpeg', '2022-07-04 08:18:51'),
(20, 'steam:11000013f7dc792', '3762340', 'IJX 645', 'T20', 34, 'https://media.discordapp.net/attachments/945755669317971988/993430777226330132/screenshot.jpeg', '2022-07-04 08:19:16'),
(21, 'steam:11000013f7dc792', '3762340', 'JMT 226', 'FBI', 5, 'https://media.discordapp.net/attachments/945755669317971988/993430840774230066/screenshot.jpeg', '2022-07-04 08:19:31'),
(22, 'steam:11000013f7dc792', '3762340', 'JUH 407', '370Z', 5, 'https://media.discordapp.net/attachments/945755669317971988/993430908357054494/screenshot.jpeg', '2022-07-04 08:19:47'),
(23, 'steam:11000013f7dc792', '3762340', 'KSW 790', 'fj40', 6, 'https://media.discordapp.net/attachments/945755669317971988/993430961410822235/screenshot.jpeg', '2022-07-04 08:20:04'),
(24, 'steam:11000013f7dc792', '3762340', 'KXM 997', 'POLRAPTOR', 7, 'https://media.discordapp.net/attachments/945755669317971988/993431029077528586/screenshot.jpeg', '2022-07-04 08:20:20'),
(25, 'steam:11000013f7dc792', '3762340', 'MHP 647', 'RAPIDGT3', 7, 'https://media.discordapp.net/attachments/945755669317971988/993431124187557948/screenshot.jpeg', '2022-07-04 08:20:39'),
(26, 'steam:11000013f7dc792', '3762340', 'MXM 294', '370Z', 8, 'https://media.discordapp.net/attachments/945755669317971988/993431207356420167/screenshot.jpeg', '2022-07-04 08:20:58'),
(27, 'steam:11000013f7dc792', '3762340', 'NMV 209', 'BLISTA', 3, 'https://media.discordapp.net/attachments/945755669317971988/993431250901680128/screenshot.jpeg', '2022-07-04 08:21:09'),
(28, 'steam:11000013f7dc792', '3762340', 'ONU 529', 'POLICET', 7, 'https://media.discordapp.net/attachments/945755669317971988/993431321634410597/screenshot.jpeg', '2022-07-04 08:21:26'),
(29, 'steam:11000013f7dc792', '3762340', 'OOU 546', '2018S650P', 9, 'https://media.discordapp.net/attachments/945755669317971988/993431385853415454/screenshot.jpeg', '2022-07-04 08:21:41'),
(30, 'steam:11000013f7dc792', '3762340', 'OUT 550', '370Z', 7, 'https://media.discordapp.net/attachments/945755669317971988/993431432481472552/screenshot.jpeg', '2022-07-04 08:21:52'),
(31, 'steam:11000013f7dc792', '3762340', 'QDG 782', '370Z', 1, 'https://media.discordapp.net/attachments/945755669317971988/993431479843569704/screenshot.jpeg', '2022-07-04 08:22:04'),
(32, 'steam:11000013f7dc792', '3762340', 'QGU 273', 'lp610', 7, 'https://media.discordapp.net/attachments/945755669317971988/993431528384237568/screenshot.jpeg', '2022-07-04 08:22:15'),
(33, 'steam:11000013f7dc792', '3762340', 'QMA 539', 'BATI', 8, 'https://media.discordapp.net/attachments/945755669317971988/993431574504804382/screenshot.jpeg', '2022-07-04 08:22:26'),
(34, 'steam:11000013f7dc792', '3762340', 'RTH 332', 'COGCABRI', 6, 'https://media.discordapp.net/attachments/945755669317971988/993431638136598629/screenshot.jpeg', '2022-07-04 08:22:42'),
(35, 'steam:11000013f7dc792', '3762340', 'SHU 579', 'AVENTADOR', 0, 'https://media.discordapp.net/attachments/945755669317971988/993431715009806356/screenshot.jpeg', '2022-07-04 08:23:01'),
(36, 'steam:11000013f7dc792', '3762340', 'VAW 434', 'CARNOTFOUND', 8, 'https://media.discordapp.net/attachments/945755669317971988/993431763168796713/screenshot.jpeg', '2022-07-04 08:23:12'),
(37, 'steam:11000013f7dc792', '3762340', 'VHK 030', '370Z', 8, 'https://media.discordapp.net/attachments/945755669317971988/993431832752312340/screenshot.jpeg', '2022-07-04 08:23:28'),
(38, 'steam:11000013f7dc792', '3762340', 'VQQ 556', '370Z', 4, 'https://media.discordapp.net/attachments/945755669317971988/993431869372780675/screenshot.jpeg', '2022-07-04 08:23:36'),
(39, 'steam:11000013f7dc792', '3762340', 'VZD 717', '370Z', 4, 'https://media.discordapp.net/attachments/945755669317971988/993431927338061896/screenshot.jpeg', '2022-07-04 08:23:50'),
(40, 'steam:11000013f7dc792', '3762340', 'WSC 340', 'bmpos8', 9, 'https://media.discordapp.net/attachments/945755669317971988/993431985353666600/screenshot.jpeg', '2022-07-04 08:24:04'),
(41, 'steam:11000013f7dc792', '3762340', 'XZW 988', '718', 9, 'https://media.discordapp.net/attachments/945755669317971988/993432058301001749/screenshot.jpeg', '2022-07-04 08:24:21'),
(42, 'steam:11000013f7dc792', '3762340', 'YDF 796', 'DELUXO', 0, 'https://media.discordapp.net/attachments/945755669317971988/993432100642496583/screenshot.jpeg', '2022-07-04 08:24:32'),
(43, 'steam:11000013f7dc792', '3762340', 'YOT 795', '370Z', 9, 'https://media.discordapp.net/attachments/945755669317971988/993432154526711848/screenshot.jpeg', '2022-07-04 08:24:45'),
(44, 'steam:11000013f7dc792', '3762340', 'ZGM 988', '370Z', 9, 'https://media.discordapp.net/attachments/945755669317971988/993432197111492608/screenshot.jpeg', '2022-07-04 08:24:54');

-- --------------------------------------------------------

--
-- Table structure for table `ybnv3phone8x_yellow`
--

CREATE TABLE `ybnv3phone8x_yellow` (
  `id` int(11) NOT NULL,
  `phone_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ybnv3phone8x_yellow`
--

INSERT INTO `ybnv3phone8x_yellow` (`id`, `phone_number`, `firstname`, `lastname`, `message`, `image`, `time`) VALUES
(1, '5037776', 'Brandon', 'Myburgh', 'car dealer please come to the dealership i want to make an payment', '', '2022-07-06 18:55:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arrests_list`
--
ALTER TABLE `arrests_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `baninfo`
--
ALTER TABLE `baninfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banlist`
--
ALTER TABLE `banlist`
  ADD PRIMARY KEY (`license`);

--
-- Indexes for table `banlisthistory`
--
ALTER TABLE `banlisthistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bolos_list`
--
ALTER TABLE `bolos_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bought_houses`
--
ALTER TABLE `bought_houses`
  ADD PRIMARY KEY (`houseid`);

--
-- Indexes for table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ccdrented_vehicles`
--
ALTER TABLE `ccdrented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `ccdvehicles`
--
ALTER TABLE `ccdvehicles`
  ADD PRIMARY KEY (`model`);

--
-- Indexes for table `ccdvehicle_categories`
--
ALTER TABLE `ccdvehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `ccdvehicle_sold`
--
ALTER TABLE `ccdvehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `ccd_vehicles`
--
ALTER TABLE `ccd_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communityservice`
--
ALTER TABLE `communityservice`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doors`
--
ALTER TABLE `doors`
  ADD KEY `index` (`index`);

--
-- Indexes for table `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_fsgang`
--
ALTER TABLE `fine_types_fsgang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gas_station_business`
--
ALTER TABLE `gas_station_business`
  ADD PRIMARY KEY (`gas_station_id`) USING BTREE;

--
-- Indexes for table `gas_station_jobs`
--
ALTER TABLE `gas_station_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `jobcars`
--
ALTER TABLE `jobcars`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `jobclothes`
--
ALTER TABLE `jobclothes`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `jobconfigs`
--
ALTER TABLE `jobconfigs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `jobitems`
--
ALTER TABLE `jobitems`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `jobpoints`
--
ALTER TABLE `jobpoints`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `jobs_armories`
--
ALTER TABLE `jobs_armories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id` (`id`,`marker_id`,`identifier`) USING BTREE;

--
-- Indexes for table `jobs_data`
--
ALTER TABLE `jobs_data`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indexes for table `jobs_garages`
--
ALTER TABLE `jobs_garages`
  ADD PRIMARY KEY (`vehicle_id`) USING BTREE,
  ADD KEY `identifier` (`identifier`,`marker_id`) USING BTREE;

--
-- Indexes for table `jobs_shops`
--
ALTER TABLE `jobs_shops`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `marker_id` (`marker_id`) USING BTREE,
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indexes for table `jobs_wardrobes`
--
ALTER TABLE `jobs_wardrobes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `identifier` (`identifier`) USING BTREE;

--
-- Indexes for table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lachee_bus_routes`
--
ALTER TABLE `lachee_bus_routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lachee_bus_stops`
--
ALTER TABLE `lachee_bus_stops`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `last_pregnant`
--
ALTER TABLE `last_pregnant`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `meeta_vehicle_trunk`
--
ALTER TABLE `meeta_vehicle_trunk`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `item` (`item`,`plate`) USING BTREE;

--
-- Indexes for table `okokbilling`
--
ALTER TABLE `okokbilling`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owned_properties`
--
ALTER TABLE `owned_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_contacts`
--
ALTER TABLE `phone_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_information`
--
ALTER TABLE `phone_information`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `identifier` (`identifier`);

--
-- Indexes for table `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_twitter_accounts`
--
ALTER TABLE `phone_twitter_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_twitter_messages`
--
ALTER TABLE `phone_twitter_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playerhousing`
--
ALTER TABLE `playerhousing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playerskins`
--
ALTER TABLE `playerskins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `playerstattoos`
--
ALTER TABLE `playerstattoos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `player_outfits`
--
ALTER TABLE `player_outfits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`),
  ADD KEY `outfitId` (`outfitId`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist_songs`
--
ALTER TABLE `playlist_songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `premium.jobblips`
--
ALTER TABLE `premium.jobblips`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `prop`
--
ALTER TABLE `prop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prop_owner`
--
ALTER TABLE `prop_owner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `renzu_clothes`
--
ALTER TABLE `renzu_clothes`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `roda_blips`
--
ALTER TABLE `roda_blips`
  ADD PRIMARY KEY (`blipid`);

--
-- Indexes for table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trunk_inventory`
--
ALTER TABLE `trunk_inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plate` (`plate`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_inventory_ident_item` (`identifier`,`item`);

--
-- Indexes for table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_slots`
--
ALTER TABLE `user_slots`
  ADD PRIMARY KEY (`identifier`) USING BTREE;

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Indexes for table `vehicles_for_sale`
--
ALTER TABLE `vehicles_for_sale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `warrants_list`
--
ALTER TABLE `warrants_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weashops`
--
ALTER TABLE `weashops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wh_test`
--
ALTER TABLE `wh_test`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `ybnv3phone8x_app_chat`
--
ALTER TABLE `ybnv3phone8x_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ybnv3phone8x_bank_transfer`
--
ALTER TABLE `ybnv3phone8x_bank_transfer`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ybnv3phone8x_blockednumber`
--
ALTER TABLE `ybnv3phone8x_blockednumber`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ybnv3phone8x_calls`
--
ALTER TABLE `ybnv3phone8x_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ybnv3phone8x_gallery`
--
ALTER TABLE `ybnv3phone8x_gallery`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ybnv3phone8x_gotur`
--
ALTER TABLE `ybnv3phone8x_gotur`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ybnv3phone8x_gps`
--
ALTER TABLE `ybnv3phone8x_gps`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ybnv3phone8x_group_message`
--
ALTER TABLE `ybnv3phone8x_group_message`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `groupid` (`groupid`) USING BTREE;

--
-- Indexes for table `ybnv3phone8x_insto_accounts`
--
ALTER TABLE `ybnv3phone8x_insto_accounts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`) USING BTREE;

--
-- Indexes for table `ybnv3phone8x_insto_instas`
--
ALTER TABLE `ybnv3phone8x_insto_instas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ybnv3phone8x_insto_instas_ybnv3phone8x_insto_accounts` (`authorId`);

--
-- Indexes for table `ybnv3phone8x_insto_likes`
--
ALTER TABLE `ybnv3phone8x_insto_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ybnv3phone8x_insto_likes_ybnv3phone8x_insto_accounts` (`authorId`),
  ADD KEY `FK_ybnv3phone8x_insto_likes_ybnv3phone8x_insto_instas` (`inapId`);

--
-- Indexes for table `ybnv3phone8x_insto_story`
--
ALTER TABLE `ybnv3phone8x_insto_story`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FK_ybnv3phone8x_insto_story_ybnv3phone8x_insto_accounts` (`authorId`) USING BTREE;

--
-- Indexes for table `ybnv3phone8x_job_message`
--
ALTER TABLE `ybnv3phone8x_job_message`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ybnv3phone8x_mails`
--
ALTER TABLE `ybnv3phone8x_mails`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ybnv3phone8x_messages`
--
ALTER TABLE `ybnv3phone8x_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ybnv3phone8x_messages_group`
--
ALTER TABLE `ybnv3phone8x_messages_group`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ybnv3phone8x_news`
--
ALTER TABLE `ybnv3phone8x_news`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ybnv3phone8x_settings`
--
ALTER TABLE `ybnv3phone8x_settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ybnv3phone8x_tinderacc`
--
ALTER TABLE `ybnv3phone8x_tinderacc`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ybnv3phone8x_tindermatch`
--
ALTER TABLE `ybnv3phone8x_tindermatch`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ybnv3phone8x_tindermessage`
--
ALTER TABLE `ybnv3phone8x_tindermessage`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ybnv3phone8x_twitter_accounts`
--
ALTER TABLE `ybnv3phone8x_twitter_accounts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`) USING BTREE;

--
-- Indexes for table `ybnv3phone8x_twitter_likes`
--
ALTER TABLE `ybnv3phone8x_twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ybnv3phone8x_twitter_likes_ybnv3phone8x_twitter_accounts` (`authorId`),
  ADD KEY `FK_ybnv3phone8x_twitter_likes_ybnv3phone8x_twitter_tweets` (`tweetId`);

--
-- Indexes for table `ybnv3phone8x_twitter_tweets`
--
ALTER TABLE `ybnv3phone8x_twitter_tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ybnv3phone8x_twitter_tweets_ybnv3phone8x_twitter_accounts` (`authorId`);

--
-- Indexes for table `ybnv3phone8x_users_contacts`
--
ALTER TABLE `ybnv3phone8x_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ybnv3phone8x_vehicle_sales`
--
ALTER TABLE `ybnv3phone8x_vehicle_sales`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ybnv3phone8x_yellow`
--
ALTER TABLE `ybnv3phone8x_yellow`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addon_account`
--
ALTER TABLE `addon_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=509;

--
-- AUTO_INCREMENT for table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `arrests_list`
--
ALTER TABLE `arrests_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `baninfo`
--
ALTER TABLE `baninfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `banlisthistory`
--
ALTER TABLE `banlisthistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `bolos_list`
--
ALTER TABLE `bolos_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ccd_vehicles`
--
ALTER TABLE `ccd_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `datastore`
--
ALTER TABLE `datastore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1183;

--
-- AUTO_INCREMENT for table `doors`
--
ALTER TABLE `doors`
  MODIFY `index` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `fine_types_fsgang`
--
ALTER TABLE `fine_types_fsgang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gas_station_jobs`
--
ALTER TABLE `gas_station_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobcars`
--
ALTER TABLE `jobcars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobclothes`
--
ALTER TABLE `jobclothes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobconfigs`
--
ALTER TABLE `jobconfigs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobitems`
--
ALTER TABLE `jobitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobpoints`
--
ALTER TABLE `jobpoints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs_armories`
--
ALTER TABLE `jobs_armories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs_data`
--
ALTER TABLE `jobs_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs_garages`
--
ALTER TABLE `jobs_garages`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs_shops`
--
ALTER TABLE `jobs_shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs_wardrobes`
--
ALTER TABLE `jobs_wardrobes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;

--
-- AUTO_INCREMENT for table `lachee_bus_routes`
--
ALTER TABLE `lachee_bus_routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lachee_bus_stops`
--
ALTER TABLE `lachee_bus_stops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `meeta_vehicle_trunk`
--
ALTER TABLE `meeta_vehicle_trunk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `okokbilling`
--
ALTER TABLE `okokbilling`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `owned_properties`
--
ALTER TABLE `owned_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `phone_contacts`
--
ALTER TABLE `phone_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `phone_information`
--
ALTER TABLE `phone_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `phone_twitter_accounts`
--
ALTER TABLE `phone_twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `phone_twitter_messages`
--
ALTER TABLE `phone_twitter_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `playerskins`
--
ALTER TABLE `playerskins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43010;

--
-- AUTO_INCREMENT for table `player_outfits`
--
ALTER TABLE `player_outfits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8970;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `playlist_songs`
--
ALTER TABLE `playlist_songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `premium.jobblips`
--
ALTER TABLE `premium.jobblips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prop`
--
ALTER TABLE `prop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `prop_owner`
--
ALTER TABLE `prop_owner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1298;

--
-- AUTO_INCREMENT for table `roda_blips`
--
ALTER TABLE `roda_blips`
  MODIFY `blipid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trunk_inventory`
--
ALTER TABLE `trunk_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `user_inventory`
--
ALTER TABLE `user_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9758;

--
-- AUTO_INCREMENT for table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vehicles_for_sale`
--
ALTER TABLE `vehicles_for_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warrants_list`
--
ALTER TABLE `warrants_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `weashops`
--
ALTER TABLE `weashops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `ybnv3phone8x_app_chat`
--
ALTER TABLE `ybnv3phone8x_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ybnv3phone8x_bank_transfer`
--
ALTER TABLE `ybnv3phone8x_bank_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `ybnv3phone8x_blockednumber`
--
ALTER TABLE `ybnv3phone8x_blockednumber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ybnv3phone8x_calls`
--
ALTER TABLE `ybnv3phone8x_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ybnv3phone8x_gallery`
--
ALTER TABLE `ybnv3phone8x_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ybnv3phone8x_gotur`
--
ALTER TABLE `ybnv3phone8x_gotur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ybnv3phone8x_gps`
--
ALTER TABLE `ybnv3phone8x_gps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ybnv3phone8x_group_message`
--
ALTER TABLE `ybnv3phone8x_group_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ybnv3phone8x_insto_accounts`
--
ALTER TABLE `ybnv3phone8x_insto_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ybnv3phone8x_insto_instas`
--
ALTER TABLE `ybnv3phone8x_insto_instas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ybnv3phone8x_insto_likes`
--
ALTER TABLE `ybnv3phone8x_insto_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ybnv3phone8x_insto_story`
--
ALTER TABLE `ybnv3phone8x_insto_story`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ybnv3phone8x_job_message`
--
ALTER TABLE `ybnv3phone8x_job_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ybnv3phone8x_mails`
--
ALTER TABLE `ybnv3phone8x_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ybnv3phone8x_messages`
--
ALTER TABLE `ybnv3phone8x_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ybnv3phone8x_messages_group`
--
ALTER TABLE `ybnv3phone8x_messages_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ybnv3phone8x_news`
--
ALTER TABLE `ybnv3phone8x_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ybnv3phone8x_settings`
--
ALTER TABLE `ybnv3phone8x_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `ybnv3phone8x_tinderacc`
--
ALTER TABLE `ybnv3phone8x_tinderacc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ybnv3phone8x_tindermatch`
--
ALTER TABLE `ybnv3phone8x_tindermatch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ybnv3phone8x_tindermessage`
--
ALTER TABLE `ybnv3phone8x_tindermessage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ybnv3phone8x_twitter_accounts`
--
ALTER TABLE `ybnv3phone8x_twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ybnv3phone8x_twitter_likes`
--
ALTER TABLE `ybnv3phone8x_twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ybnv3phone8x_twitter_tweets`
--
ALTER TABLE `ybnv3phone8x_twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ybnv3phone8x_users_contacts`
--
ALTER TABLE `ybnv3phone8x_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ybnv3phone8x_vehicle_sales`
--
ALTER TABLE `ybnv3phone8x_vehicle_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `ybnv3phone8x_yellow`
--
ALTER TABLE `ybnv3phone8x_yellow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ybnv3phone8x_group_message`
--
ALTER TABLE `ybnv3phone8x_group_message`
  ADD CONSTRAINT `FK_phonegroupmessage` FOREIGN KEY (`groupid`) REFERENCES `ybnv3phone8x_messages_group` (`id`);

--
-- Constraints for table `ybnv3phone8x_insto_instas`
--
ALTER TABLE `ybnv3phone8x_insto_instas`
  ADD CONSTRAINT `FK_ybnv3phone8x_insto_instas_ybnv3phone8x_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `ybnv3phone8x_insto_accounts` (`id`);

--
-- Constraints for table `ybnv3phone8x_insto_likes`
--
ALTER TABLE `ybnv3phone8x_insto_likes`
  ADD CONSTRAINT `FK_ybnv3phone8x_insto_likes_ybnv3phone8x_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `ybnv3phone8x_insto_accounts` (`id`),
  ADD CONSTRAINT `FK_ybnv3phone8x_insto_likes_ybnv3phone8x_insto_instas` FOREIGN KEY (`inapId`) REFERENCES `ybnv3phone8x_insto_instas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ybnv3phone8x_insto_story`
--
ALTER TABLE `ybnv3phone8x_insto_story`
  ADD CONSTRAINT `FK_ybnv3phone8x_insto_story_ybnv3phone8x_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `ybnv3phone8x_insto_accounts` (`id`);

--
-- Constraints for table `ybnv3phone8x_twitter_likes`
--
ALTER TABLE `ybnv3phone8x_twitter_likes`
  ADD CONSTRAINT `FK_ybnv3phone8x_twitter_likes_ybnv3phone8x_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `ybnv3phone8x_twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_ybnv3phone8x_twitter_likes_ybnv3phone8x_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `ybnv3phone8x_twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ybnv3phone8x_twitter_tweets`
--
ALTER TABLE `ybnv3phone8x_twitter_tweets`
  ADD CONSTRAINT `FK_ybnv3phone8x_twitter_tweets_ybnv3phone8x_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `ybnv3phone8x_twitter_accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
