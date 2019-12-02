-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2019 at 03:49 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_asset_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_asset`
--

CREATE TABLE `tb_m_asset` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `brand` int(11) NOT NULL,
  `asset_item` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_asset`
--

INSERT INTO `tb_m_asset` (`id`, `description`, `brand`, `asset_item`) VALUES
(1, '', 6, 2),
(2, '', 3, 2),
(3, '', 3, 4),
(4, '', 1, 8),
(5, NULL, 79, 9),
(6, NULL, 77, 10),
(7, NULL, 78, 2),
(8, NULL, 80, 12),
(9, NULL, 81, 12),
(10, NULL, 82, 10),
(11, NULL, 83, 12),
(12, NULL, 84, 5),
(13, NULL, 85, 9),
(14, NULL, 86, 9),
(15, NULL, 87, 2),
(16, NULL, 88, 10),
(17, NULL, 89, 2),
(18, NULL, 90, 2),
(19, NULL, 91, 2),
(20, NULL, 92, 2),
(21, NULL, 93, 2),
(22, NULL, 94, 2),
(23, NULL, 95, 2),
(24, NULL, 96, 2),
(25, NULL, 97, 10),
(26, NULL, 98, 9),
(27, NULL, 99, 12),
(28, NULL, 100, 12),
(29, NULL, 101, 12),
(30, NULL, 102, 12),
(31, NULL, 103, 10),
(32, NULL, 104, 9),
(33, NULL, 105, 14),
(34, NULL, 106, 10),
(35, NULL, 107, 10),
(36, NULL, 108, 2),
(37, NULL, 109, 10),
(38, NULL, 110, 9),
(39, NULL, 111, 2),
(40, NULL, 112, 2),
(41, NULL, 113, 10),
(42, NULL, 114, 9),
(43, NULL, 115, 15),
(44, NULL, 116, 9),
(45, NULL, 117, 10),
(46, NULL, 118, 10),
(47, NULL, 119, 9),
(48, NULL, 120, 9),
(49, NULL, 121, 15),
(50, NULL, 122, 10),
(51, NULL, 123, 2),
(52, NULL, 124, 9),
(53, NULL, 125, 10),
(54, NULL, 126, 9),
(55, NULL, 127, 10),
(56, NULL, 128, 2),
(57, NULL, 129, 2),
(58, NULL, 130, 2),
(59, NULL, 131, 10),
(60, NULL, 132, 15),
(61, NULL, 133, 9),
(62, NULL, 134, 10),
(63, NULL, 135, 2),
(64, NULL, 136, 2),
(65, NULL, 137, 9),
(66, NULL, 138, 9),
(67, NULL, 139, 5),
(68, NULL, 140, 10),
(69, NULL, 141, 9),
(70, NULL, 142, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_asset_item`
--

CREATE TABLE `tb_m_asset_item` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `asset_item_type` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_asset_item`
--

INSERT INTO `tb_m_asset_item` (`id`, `name`, `asset_item_type`, `description`) VALUES
(1, 'PC', 2, ''),
(2, 'Notebook', 2, ''),
(3, 'HDD', 2, ''),
(4, 'Kabel', 1, ''),
(5, 'Printer', 2, ''),
(6, 'Router', 1, ''),
(7, 'Finger Print', 1, ''),
(8, 'Monitor', 2, ''),
(9, 'Desktop PC', NULL, NULL),
(10, 'Monitor LCD', NULL, NULL),
(12, 'Thin Client', NULL, NULL),
(14, 'Worktations', NULL, NULL),
(15, 'UPS', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_asset_item_type`
--

CREATE TABLE `tb_m_asset_item_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_asset_item_type`
--

INSERT INTO `tb_m_asset_item_type` (`id`, `name`) VALUES
(1, 'Consumable'),
(2, 'Physic');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_asset_sales_order`
--

CREATE TABLE `tb_m_asset_sales_order` (
  `id` int(11) NOT NULL,
  `sn` varchar(50) DEFAULT NULL,
  `asset` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `sales_order` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `cost` bigint(20) DEFAULT NULL,
  `number_of_asset` int(11) NOT NULL DEFAULT 0,
  `number_of_allocation` int(11) NOT NULL DEFAULT 0,
  `number_of_leftover` int(11) NOT NULL DEFAULT 0,
  `terminate` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` varchar(50) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_asset_sales_order`
--

INSERT INTO `tb_m_asset_sales_order` (`id`, `sn`, `asset`, `category`, `sales_order`, `status`, `cost`, `number_of_asset`, `number_of_allocation`, `number_of_leftover`, `terminate`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(1, 'abcdefg', 1, 1, '0', 2, 2345678765, 0, 0, 0, 0, '', '2019-11-12', '', '2019-11-13'),
(2, 'R81HDYP', 5, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(3, 'R81HDYR', 5, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(4, 'R81HEAV', 5, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(5, 'R81HEAY', 5, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(6, 'R81HECH', 5, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(7, 'SV6TEC50', 6, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(8, 'SV6TDX86', 6, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(9, 'SV6RXY77', 6, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(10, 'B7V4LR2', 7, 1, '3883000007', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(11, '3RBVKR2', 7, 1, '3883000007', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(12, 'CNW206089H', 8, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(13, 'CNW20608BL', 8, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(14, 'CNW3411BRQ', 9, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(15, 'CNC223S92P', 10, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(16, 'CNC223S8X3', 10, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(17, 'CNC022PDBD', 10, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(18, '8CN6180060', 11, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(19, '8CN6180061', 11, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(20, '8CN618006B', 11, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(21, '8CN618006D', 11, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(22, '8CN618006F', 11, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(23, '8CN618005Y', 11, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(24, 'VNC3P17515', 12, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(25, 'VNC3P19043', 12, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(26, 'HT4H8F2', 13, 1, '3880400102', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(27, 'HWZ4HD2', 13, 1, '3880400102', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(28, 'HWZD8F2', 13, 1, '3880400102', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(29, 'HX2FH62', 13, 1, '3880400102', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(30, 'HWYT992', 13, 1, '3880400102', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(31, 'HX0DS62', 13, 1, '3880400102', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(32, 'HX37H82', 13, 1, '3880400102', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(33, 'HVYC8F2', 13, 1, '3880400102', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(34, 'HV0K8F2', 13, 1, '3880400102', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(35, 'GVQWFL2', 14, 1, '3880400102', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(36, 'H7V51C2', 15, 1, '3880400102', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(37, '31V51C2', 15, 1, '3880400102', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(38, 'CN0YKH877287267BGAYU', 16, 1, '3880400102', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(39, 'CN0YKH877287267BGLDU', 16, 1, '3880400102', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(40, 'CN0YKH877287267BGDRU', 16, 1, '3880400102', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(41, 'CN0YKH877287267BGE4U', 16, 1, '3880400102', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(42, 'CN0YKH877287267BGDEU', 16, 1, '3880400102', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(43, 'CN0YKH877287267BHC5U', 16, 1, '3880400102', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(44, '3NL1PH2', 17, 1, '3880400102', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(45, 'CNU3139ZZ4', 18, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(46, 'CNU401B0JK', 18, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(47, 'CNU2151GTM', 19, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(48, 'CNU2151G7B', 19, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(49, 'CNU2151J9F', 19, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(50, 'CNU2151HTM', 20, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(51, '5CG4340ZNM', 21, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(52, 'CNU2151HN5', 20, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(53, '5CG7251HDY', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(54, '5CG7251HFB', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(55, '5CG7251HFJ', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(56, '5CG7251HFZ', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(57, '5CG7251HGQ', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(58, '5CG7251HH0', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(59, '5CG7251HHF', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(60, '5CG7251HMM', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(61, '5CG7251HHX', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(62, '5CG7251HJ8', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(63, '5CG7251HJK', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(64, '5CG7251HJZ', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(65, '5CG7251HKG', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(66, '5CG7251HKN', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(67, '5CG7251HL4', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(68, '5CG7251HLF', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(69, '5CG7251HLT', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(70, '5CG7251HM0', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(71, '5CG7251HHM', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(72, '5CG7251HN2', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(73, '5CG7251HN4', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(74, '5CG7251HNH', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(75, '5CG7255ZWF', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(76, '5CG7255ZWW', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(77, '5CG7255ZXS', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(78, '5CG7255ZZH', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(79, '5CG72562DW', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(80, '5CG7255ZZR', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(81, '5CG72562DK', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(82, '5CG72562CD', 22, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(83, '5CD847206B', 23, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(84, '5CD847205Z', 23, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(85, '5CD8472045', 23, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(86, '5CD847205F', 23, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(87, '5CD847206F', 23, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(88, '5CD847205X', 23, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(89, '5CD847202R', 23, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(90, '5CD847204Y', 23, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(91, '5CD847203S', 23, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(92, '5CD847206D', 23, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(93, '5CD847201C', 23, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(94, '5CD847204S', 23, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(95, '5CD847205M', 23, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(96, '5CD847205H', 23, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(97, '5CD847206C', 23, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(98, '5CD847205J', 23, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(99, '5CD847203D', 23, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(100, '5CD8472030', 23, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(101, '5CD847205P', 23, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(102, '5CD847204P', 23, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(103, '5CD847206G', 23, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(104, '5CD847202N', 23, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(105, '5CD847201K', 23, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(106, '5CD847205N', 23, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(107, '5CD8472033', 23, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(108, '5CD847204N', 23, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(109, '5CD6143Q7J', 24, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(110, '5CD6143Q7G', 24, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(111, '5CD6143Q7K', 24, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(112, '5CD6143Q7L', 24, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(113, '5CD6143Q7M', 24, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(114, '5CD6143Q7F', 24, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(115, 'CNC610P7NZ', 25, 1, '3871000016', 2, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(116, 'CNC610P7Q0', 25, 1, '3871000016', 2, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(117, 'CNC610P7PP', 25, 1, '3871000016', 2, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(118, 'CNC610P7P2', 25, 1, '3871000016', 2, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(119, 'CNC610P7NJ', 25, 1, '3871000016', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(120, 'CNC610P7NN', 25, 1, '3871000016', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(121, 'CNC610P7NW', 25, 1, '3871000016', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(122, 'CNC610P7P4', 25, 1, '3871000016', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(123, 'CNC610P7NQ', 25, 1, '3871000016', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(124, 'SGHG14PTSF', 26, 1, '3871000016', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(125, 'SGHG14PTSH', 26, 1, '3871000016', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(126, 'SGHG14PTS9', 26, 1, '3871000016', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(127, 'SGHG14PTSG', 26, 1, '3871000016', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(128, 'SGHG14PTS8', 26, 1, '3871000016', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(129, 'SGHG14PTS7', 26, 1, '3871000016', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(130, 'SGHG14PTSC', 26, 1, '3871000016', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(131, 'SGHG14PTSB', 26, 1, '3871000016', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(132, 'SGHG14PTSD', 26, 1, '3871000016', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(133, '5CD61339DY', 24, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(134, '5CD61339F1', 24, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(135, '5CD61339FV', 24, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(136, '5CD61339FW', 24, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(137, '5CD61339G5', 24, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(138, '5CD61339GF', 24, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(139, '5CD61339GK', 24, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(140, '5CD61339GP', 24, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(141, '5CD61339GX', 24, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(142, '5CD61339H4', 24, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(143, '5CD61339H7', 24, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(144, '5CD61339HB', 24, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(145, '5CD61339HD', 24, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(146, '5CD61339HK', 24, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(147, '5CD61339J4', 24, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(148, '5CD61339J5', 24, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(149, '5CD61339J6', 24, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(150, '5CD61339J8', 24, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(151, '5CD61339JY', 24, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(152, '5CD61339G1', 24, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(153, '5CD61339G9', 24, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(154, '5CD61339K1', 24, 1, '2871002972', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(155, 'CNW311093B', 9, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(156, 'CBW31301Q8', 9, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(157, 'CNV901024T', 27, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(158, 'CNV85108XG', 27, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(159, 'CNV85108XP', 27, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(160, 'CNV85108Y3', 27, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(161, 'CNV85108XS', 27, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(162, 'CNW1090JYL', 28, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(163, 'CNW1090K22', 28, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(164, 'CNVA1206GS', 28, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(165, 'CNW1090K5B', 28, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(166, 'CNW4100L4V', 29, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(167, 'CNW1090JY2', 30, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(168, 'CNVA25084L', 30, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(169, 'CNW2081HTL', 29, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(170, 'CNW22104SQ', 29, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(171, 'CNW1470H45', 29, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(172, '3CQ3010QZV', 31, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(173, 'PC064C6F', 32, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(174, 'PC067ZWK', 32, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(175, 'PC05Z6GQ', 33, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(176, 'V5935862', 34, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(177, 'V901MXLX', 35, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(178, 'V901MXN1', 35, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(179, 'V901MXRG', 35, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(180, 'SPC05Z9Y5', 36, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(181, 'CNC314QMFS', 37, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(182, 'CNC314QML3', 37, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(183, 'CNC314QMJP', 37, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(184, 'CNC314QMFF', 37, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(185, 'CNC314QMKJ', 37, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(186, 'SGH342PMWG', 38, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(187, 'SGH342PMW5', 38, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(188, 'SGH342PMXB', 38, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(189, 'SGH342PMY3', 38, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(190, 'SGH342PMYF', 38, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(191, 'SGH336PKV3', 38, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(192, '5CG53229PJ', 39, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(193, '5CG5322B1K', 39, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(194, '5CG5322B3C', 39, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(195, '5CG5374MTB', 40, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(196, '5CG53228T7', 39, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(197, '5CG5322B3Y', 39, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(198, '5CG5322B4H', 39, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(199, '5CG5374QPD', 40, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(200, '5CG537626D', 39, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(201, '5CG5376295', 40, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(202, '5CG537629J', 39, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(203, '5CG5377T8D', 39, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(204, '5CG5222S8M', 40, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(205, '6CM5191MS2', 41, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(206, 'SGH522T3XB', 42, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(207, '3B1415X19699', 43, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(208, 'SGH248QZXN', 44, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(209, 'SGH248R0FD', 44, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(210, 'SGH248R0FF', 44, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(211, '3CQ23723TM', 45, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(212, '3CQ237236Q', 45, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(213, '3CQ237231K', 45, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(214, 'SV1KFL97', 46, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(215, 'PBRDWDZ', 47, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(216, 'PBHDHB9', 48, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(217, 'PBHDHB7', 48, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(218, 'PBHDHB3', 48, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(219, 'PBHDHB4', 48, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(220, 'PBHDGR4', 48, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(221, '3B1226X04648', 49, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(222, '3B1226X04675', 49, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(223, '3B1226X04664', 49, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(224, '3B1226X04641', 49, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(225, '3B1226X04651', 49, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(226, '3B1226X04637', 49, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(227, '3B1226X04627', 49, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(228, '3B1226X04620', 49, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(229, '3B1226X04657', 49, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(230, 'V301DPR5', 50, 1, '2890008904', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(231, 'V301DPTN', 50, 1, '2890008904', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(232, 'V301DPT0', 50, 1, '2890008904', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(233, 'R90QFCM7', 51, 1, '2890008904', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(234, 'R90QFCLL', 51, 1, '2890008904', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(235, 'R90QFCJW', 51, 1, '2890008904', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(236, 'PC0U09UK', 52, 1, '2890008904', 2, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(237, '6CM3200RNX', 53, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(238, '6CM3200S91', 53, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(239, '6CM3200S9Q', 53, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(240, '6CM3200RNL', 53, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(241, '3CQ3090N7S', 37, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(242, 'CNC216PKVT', 37, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(243, 'CNC216PL2L', 37, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(244, '3CQ3090N6X', 37, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(245, 'CNC301Q71J', 37, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(246, 'SPB1EGLK', 54, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(247, 'SPB1EGLA', 54, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(248, 'SV3RT300', 55, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(249, 'SV3RT299', 55, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(250, 'PC0GTE54', 56, 1, '3880100013', 2, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(251, 'PC0GXR6V', 56, 1, '3880100013', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(252, 'PC0D5BVC', 56, 1, '3880100013', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(253, 'PC0GTE5F', 56, 1, '3880100013', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(254, 'CNU1323FD8R', 57, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(255, 'CNU1323BWL', 57, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(256, 'CNU1323DT2', 58, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(257, '6CM321082S', 59, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(258, '6CM3210815', 59, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(259, '1C1G51312059', 60, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(260, 'S3B1249X17135', 49, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(261, '3B1250X15360', 49, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(262, '3B1250X15358', 49, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(263, '54P1H82', 61, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(264, '54X2H82', 61, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(265, 'CY84D7426159960NL', 62, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(266, 'CY84D7426159961KL', 62, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(267, '5CG53455TN ', 63, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(268, '5CG53455VS', 63, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(269, '2CE3210WP4', 64, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(270, 'CNT225ZMFH', 45, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(271, 'CNT225ZMFP', 45, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(272, 'CNT211X1XX', 45, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(273, 'CNT210B0FQ', 45, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(274, 'CNT210B0BT', 45, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(275, 'CNT211X0Q0', 45, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(276, 'CNT211X1QT', 45, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(277, 'CNT225ZMF9', 45, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(278, 'CNT210B0GK', 45, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(279, 'CNT211X0PW', 45, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(280, 'CNT225ZMCR', 45, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(281, 'CNT211X24Q', 45, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(282, '6CM3200RNV', 53, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(283, 'SGH323PZJ1', 65, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(284, 'SGH323PZQN', 65, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(285, 'SGH213T182', 66, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(286, 'SGH213T15B', 66, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(287, 'SGH213T14M', 66, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(288, 'SGH323PZJZ', 66, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(289, 'SGH213T14Q', 66, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(290, 'SGH213T179', 66, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(291, 'SGH229T77H', 66, 1, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(292, 'SGH323PZP3', 65, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(293, 'SGH323PZR8', 65, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(294, 'CN73L6K001', 67, 1, '3883000003', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(295, 'V1LPD17', 68, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(296, 'V1MFW99', 68, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(297, 'V1MFW57', 68, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(298, 'V1LPD38', 68, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(299, 'V1LNV66', 68, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(300, 'V1MWV06', 68, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(301, 'V1LPD21', 68, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(302, 'V1MFW96', 68, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(303, 'V1MFX17', 68, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(304, 'V1MWT92', 68, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(305, 'V1LPD39', 68, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(306, 'V1MWT96', 68, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(307, 'V1KV187', 68, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(308, 'V1MWV23', 68, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(309, 'V1LPD18', 68, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(310, 'SR8AF0Z6', 69, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(311, 'SR8AF0Z4', 69, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(312, 'SR8AF1L5', 69, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(313, 'SR8AF1L4', 69, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(314, 'SR8AF1L6', 69, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(315, 'SR8AF1L7', 69, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(316, 'SR8AF1L8', 69, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(317, 'R8NZX2H', 69, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(318, 'R8NZX8M', 69, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(319, 'R8NZX2M', 69, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(320, 'R8AF027', 69, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(321, 'R8BT86N', 70, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL),
(322, 'R8BT86A', 70, 2, '0', 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_asset_type`
--

CREATE TABLE `tb_m_asset_type` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_asset_type`
--

INSERT INTO `tb_m_asset_type` (`id`, `name`, `description`) VALUES
('AO', 'Asset Only', 'Rental '),
('BB', 'Buy Back', ''),
('BU', 'Buy', ''),
('OP', 'Operational', ''),
('RS', 'Resource', 'Tipe Asset yang ada asigneenya');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_brand`
--

CREATE TABLE `tb_m_brand` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_brand`
--

INSERT INTO `tb_m_brand` (`id`, `name`) VALUES
(1, 'HP EliteBook 820 G 3'),
(2, 'Lenovo'),
(3, 'Asus'),
(4, 'Acer'),
(5, 'Mac'),
(6, 'Dell'),
(7, 'LENOVO-ThinkCenter M70'),
(9, 'LENOVO-L151'),
(10, 'DELL-Latitude 3490'),
(11, 'HP-T5740E'),
(12, 'HP-T510'),
(13, 'HP-LV1561X'),
(14, 'HP-T620'),
(15, 'HP-Laserjet P1606DN'),
(16, 'DELL-3040 MT'),
(17, 'DELL-3050 MT'),
(18, 'DELL-3470'),
(19, 'DELL-E1916Hf'),
(20, 'DELL-E5280'),
(21, 'HP-8470p'),
(22, 'HP-8460p'),
(23, 'HP-2560p'),
(24, 'HP-820 G1'),
(25, 'HP-348 BNBPC'),
(26, 'HP-240 G6'),
(27, 'HP-Probook 440G3'),
(28, 'HP-LV2011'),
(29, 'HP-280 G2 MT'),
(30, 'HP-T5135'),
(31, 'HP-T5145'),
(32, 'HP-T15565'),
(33, 'HP-T5540'),
(34, 'HP-Compaq LE 1852'),
(35, 'LENOVO-Thinkstation P300'),
(36, 'LENOVO-Thinkstation P500'),
(37, 'LENOVO-E2223s'),
(38, 'LENOVO-T2224p'),
(39, 'LENOVO-ThinkPad T450s'),
(40, 'HP-LE 1711'),
(41, 'HP-Elite 8300'),
(42, 'HP-820 G2'),
(43, 'HP-840 G2'),
(44, 'HP-EliteDisplay E231'),
(45, 'HP-EliteDesk 800 G1'),
(46, 'APC-200G1'),
(47, 'HP-Pro 3330 MT'),
(48, 'HP-Compaq LE 1902x'),
(49, 'LENOVO-L1900p'),
(50, 'LENOVO-Think Center M72'),
(51, 'LENOVO-Think Center M71z'),
(52, 'APC -APC '),
(53, 'APC -APC'),
(54, 'LENOVO-ThinkVision T24d-10'),
(55, 'LENOVO-Thinkpad L380'),
(56, 'LENOVO-M710s'),
(57, 'HP-LV1911'),
(58, 'LENOVO-Think Center 72E'),
(59, 'LENOVO-LE 1922'),
(60, 'LENOVO-Thinkpad X260'),
(61, 'HP-Probook 4331s'),
(62, 'HP-HP 4331s'),
(63, 'HP-P201M'),
(64, 'ICA-CP 700'),
(65, 'DELL-Optiplex 3020 Small'),
(66, 'DELL-P2214H'),
(67, 'HP-HP Elitebook 820 G2'),
(68, 'HP-2170p'),
(69, 'HP-Pro 4300'),
(70, 'HP-3330 MT'),
(71, 'HP-Page Wide Color MFP 586f'),
(72, 'LENOVO-D186wide '),
(73, 'LENOVO-D186wide'),
(74, 'LENOVO-ThinkCenter Edge 91'),
(75, 'LENOVO-ThinkCenter M80'),
(77, 'LENOVO L151'),
(78, 'DELL Latitude 3490'),
(79, 'LENOVO ThinkCenter M70'),
(80, 'HP T5740E'),
(81, 'HP T510'),
(82, 'HP LV1561X'),
(83, 'HP T620'),
(84, 'HP Laserjet P1606DN'),
(85, 'DELL 3040 MT'),
(86, 'DELL 3050 MT'),
(87, 'DELL 3470.0'),
(88, 'DELL E1916Hf'),
(89, 'DELL E5280'),
(90, 'HP 8470p'),
(91, 'HP 8460p'),
(92, 'HP 2560p'),
(93, 'HP 820 G1'),
(94, 'HP 348 BNBPC'),
(95, 'HP 240 G6'),
(96, 'HP Probook 440G3'),
(97, 'HP LV2011'),
(98, 'HP 280 G2 MT'),
(99, 'HP T5135'),
(100, 'HP T5145'),
(101, 'HP T15565'),
(102, 'HP T5540'),
(103, 'HP Compaq LE 1852'),
(104, 'LENOVO Thinkstation P300'),
(105, 'LENOVO Thinkstation P500'),
(106, 'LENOVO E2223s'),
(107, 'LENOVO T2224p'),
(108, 'LENOVO ThinkPad T450s'),
(109, 'HP LE 1711'),
(110, 'HP Elite 8300'),
(111, 'HP 820 G2'),
(112, 'HP 840 G2'),
(113, 'HP EliteDisplay E231'),
(114, 'HP EliteDesk 800 G1'),
(115, 'APC 200G1'),
(116, 'HP Pro 3330 MT'),
(117, 'HP Compaq LE 1902x'),
(118, 'LENOVO L1900p'),
(119, 'LENOVO Think Center M72'),
(120, 'LENOVO Think Center M71z'),
(121, 'APC  APC '),
(122, 'LENOVO ThinkVision T24d-10'),
(123, 'LENOVO Thinkpad L380'),
(124, 'LENOVO M710s'),
(125, 'HP LV1911'),
(126, 'LENOVO Think Center 72E'),
(127, 'LENOVO LE 1922'),
(128, 'LENOVO Thinkpad X260'),
(129, 'HP Probook 4331s'),
(130, 'HP HP 4331s'),
(131, 'HP P201M'),
(132, 'ICA CP 700'),
(133, 'DELL Optiplex 3020 Small'),
(134, 'DELL P2214H'),
(135, 'HP HP Elitebook 820 G2'),
(136, 'HP 2170p'),
(137, 'HP Pro 4300'),
(138, 'HP 3330 MT'),
(139, 'HP Page Wide Color MFP 586f'),
(140, 'LENOVO D186wide '),
(141, 'LENOVO ThinkCenter Edge 91'),
(142, 'LENOVO ThinkCenter M80');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_category`
--

CREATE TABLE `tb_m_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_category`
--

INSERT INTO `tb_m_category` (`id`, `name`) VALUES
(1, 'DSPM'),
(2, 'DSTP');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_group`
--

CREATE TABLE `tb_m_group` (
  `id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_group`
--

INSERT INTO `tb_m_group` (`id`) VALUES
(' 2DF48PA'),
(' C9F73AA'),
(' EM886AA'),
(' XZ693AV'),
('0830CTO'),
('0WY1R'),
('10M8S9XE00'),
('1855G7A'),
('20BWA0GSIA '),
('20F5A27EID'),
('20M6S0LP00'),
('2572MB1'),
('2580AF1'),
('2DF48PA'),
('2NPK0'),
('30A6A137IA '),
('30AJ-A0GRIA'),
('30AJA0GRIA'),
('3554CTO'),
('3660CTO '),
('43R1789'),
('4X40E77328'),
('61B4MAR1WW'),
('7507CTO'),
('A1G60AV'),
('A5V72AA'),
('A7C07AV'),
('B3D81AA'),
('BR550G1'),
('BX650CI-AS'),
('C8N27AV'),
('C9E65AA'),
('C9V75AA'),
('CE749A'),
('CFX16'),
('CFX17'),
('CFX18'),
('CFX19'),
('CP700'),
('EM886AA'),
('G0N52EP'),
('G1W40A'),
('G8R97AV'),
('G9DF8F'),
('H2P21AA'),
('J0E18PS'),
('K1C90PT'),
('L6E44AV'),
('LL574AA'),
('MR1XT'),
('N4E93PC'),
('N4E95PC'),
('N8M96AV'),
('NAU39AV'),
('NK812AA'),
('OA46976'),
('P7J4Y'),
('QC394AA'),
('QC822EP'),
('QC881EP'),
('QT035AV'),
('QV996AV'),
('QZ219AV'),
('RK271AA'),
('X4F18AV'),
('XL424AA'),
('XR250AA'),
('XZ693AV');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_log`
--

CREATE TABLE `tb_m_log` (
  `id` int(11) NOT NULL,
  `type` varchar(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `menu` varchar(100) DEFAULT NULL,
  `sub_menu` varchar(100) DEFAULT NULL,
  `time` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `description` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_maintenance_status`
--

CREATE TABLE `tb_m_maintenance_status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_maintenance_type`
--

CREATE TABLE `tb_m_maintenance_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_parameter`
--

CREATE TABLE `tb_m_parameter` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `value` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_parameter`
--

INSERT INTO `tb_m_parameter` (`id`, `description`, `value`) VALUES
(1, 'TOKEN', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJBc3NldCBNYW5hZ2VtZW50IiwiaWF0IjoxNTcxMjEwMzQ0fQ.egQGVL6fHVvPnann4tvJlDR-4N7Pg8J-KC9hhbqa0w90ulWKya2sQUpIVQyqghy4iwBAmQu1fkVopr3eFPk34A'),
(2, 'SAKURA_API', 'http://116.254.101.228:8080/APISAKURA/salesorder/'),
(3, 'PDF_EXPORT_PATH', '\\Documents\\NetBeansProjects\\assetmanagement\\src\\main\\resources\\static\\barcode.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_part`
--

CREATE TABLE `tb_m_part` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_part`
--

INSERT INTO `tb_m_part` (`id`, `name`) VALUES
(1, 'Processor'),
(2, 'SSD'),
(3, 'RAM'),
(4, 'Operating System'),
(5, 'HDD');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_role`
--

CREATE TABLE `tb_m_role` (
  `id` int(2) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_role`
--

INSERT INTO `tb_m_role` (`id`, `name`) VALUES
(1, 'MSCS'),
(2, 'MSPM'),
(3, 'MSDEL'),
(5, 'MSCS STAFF'),
(6, 'MSPM STAFF'),
(7, 'MSDEL STAFF');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_sales_order`
--

CREATE TABLE `tb_m_sales_order` (
  `id` varchar(50) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `number_of_maintenance` int(11) DEFAULT 0,
  `maintenance_left` int(11) DEFAULT 0,
  `status` tinyint(1) DEFAULT NULL,
  `asset_type` varchar(50) DEFAULT NULL,
  `insurance` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_sales_order`
--

INSERT INTO `tb_m_sales_order` (`id`, `start_date`, `end_date`, `number_of_maintenance`, `maintenance_left`, `status`, `asset_type`, `insurance`) VALUES
('0', '1900-01-01', '3000-01-01', 0, 0, NULL, 'OP', 0),
('2871002972', '2018-04-30', '2020-04-29', 0, NULL, 1, 'AO', 1),
('2890008904', '2018-07-31', '2019-07-30', 0, NULL, 1, 'AO', 1),
('3871000016', '2016-04-26', '2021-10-30', 5, NULL, 1, 'AO', 1),
('3880100013', '2017-01-02', '2020-01-01', NULL, NULL, 1, 'AO', 1),
('3880400102', '2016-12-01', '2020-11-30', 0, 0, 0, 'AO', 0),
('3883000003', '2017-03-01', '2017-04-30', 0, 0, 0, 'AO', 0),
('3883000007', '2018-11-01', '2019-10-31', 0, 0, 0, 'AO', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_status`
--

CREATE TABLE `tb_m_status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_status`
--

INSERT INTO `tb_m_status` (`id`, `name`) VALUES
(1, 'Main'),
(2, 'Backup'),
(3, 'In Use');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_transaction_type`
--

CREATE TABLE `tb_m_transaction_type` (
  `id` varchar(20) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_transaction_type`
--

INSERT INTO `tb_m_transaction_type` (`id`, `description`) VALUES
('D', 'Deploy');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_type_project`
--

CREATE TABLE `tb_m_type_project` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_type_project`
--

INSERT INTO `tb_m_type_project` (`id`, `name`, `description`) VALUES
(1, 'MSBU Project', NULL),
(2, 'Titipan', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_user`
--

CREATE TABLE `tb_m_user` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(100) NOT NULL,
  `reset_token` varchar(100) NOT NULL,
  `is_Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_user`
--

INSERT INTO `tb_m_user` (`id`, `user_name`, `password`, `email`, `reset_token`, `is_Active`) VALUES
(14609, 'vivi', '$2a$10$dg5ElS/KqTNhg6H/kHdkPedsudLcddCmnl.8rf6LRmS6hAQSBnj6W', 'vivian.vivian@mii.co.id', '', 1),
(15035, 'Remi', '$2a$10$dg5ElS/KqTNhg6H/kHdkPedsudLcddCmnl.8rf6LRmS6hAQSBnj6W', 'reminesere.panjaitan@mii.co.id', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_tr_asset_allocation`
--

CREATE TABLE `tb_tr_asset_allocation` (
  `id` int(11) NOT NULL,
  `asset_request` int(11) DEFAULT NULL,
  `transaction_type` varchar(20) DEFAULT NULL,
  `assign_date` date NOT NULL,
  `initial_so_place` varchar(50) NOT NULL,
  `final_so_place` varchar(50) NOT NULL,
  `type_project` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `bast` mediumblob DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_tr_asset_allocation`
--

INSERT INTO `tb_tr_asset_allocation` (`id`, `asset_request`, `transaction_type`, `assign_date`, `initial_so_place`, `final_so_place`, `type_project`, `branch`, `location`, `bast`, `description`, `created_date`, `created_by`, `modified_date`, `modified_by`) VALUES
(38, NULL, NULL, '2019-11-26', '0', '3880100013', 'Application & Development Services', 'budi', 'andi', NULL, 'dewf', NULL, NULL, NULL, NULL),
(39, NULL, NULL, '2019-11-26', '0', '3880100013', 'Application & Development Services', 'budi', 'andi', NULL, 'dew', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_tr_asset_allocation_detail`
--

CREATE TABLE `tb_tr_asset_allocation_detail` (
  `id` int(11) NOT NULL,
  `asset_allocation` int(11) NOT NULL,
  `initial_asset_sales_order` int(11) NOT NULL,
  `final_asset_sales_order` int(11) NOT NULL,
  `sn` varchar(50) DEFAULT NULL,
  `assignee` varchar(100) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `remark` text DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_tr_asset_allocation_detail`
--

INSERT INTO `tb_tr_asset_allocation_detail` (`id`, `asset_allocation`, `initial_asset_sales_order`, `final_asset_sales_order`, `sn`, `assignee`, `quantity`, `remark`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(370, 38, 251, 251, 'PC0GXR6V', NULL, 0, NULL, NULL, NULL, NULL, NULL),
(371, 38, 252, 252, 'PC0D5BVC', NULL, 0, NULL, NULL, NULL, NULL, NULL),
(372, 38, 253, 253, 'PC0GTE5F', NULL, 0, NULL, NULL, NULL, NULL, NULL),
(373, 39, 250, 250, 'PC0GTE54', NULL, 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_tr_asset_part`
--

CREATE TABLE `tb_tr_asset_part` (
  `id` int(11) NOT NULL,
  `part_type` int(11) NOT NULL,
  `asset` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_tr_asset_part`
--

INSERT INTO `tb_tr_asset_part` (`id`, `part_type`, `asset`) VALUES
(1, 18, 1),
(2, 1, 1),
(3, 12, 1),
(4, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_tr_detail_maintenance`
--

CREATE TABLE `tb_tr_detail_maintenance` (
  `id` int(11) NOT NULL,
  `created_date` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `maintenance_type` int(11) NOT NULL,
  `maintenance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tr_detail_maintenance_part`
--

CREATE TABLE `tb_tr_detail_maintenance_part` (
  `id` int(11) NOT NULL,
  `maintenance` int(11) NOT NULL,
  `asset_part` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tr_maintenance`
--

CREATE TABLE `tb_tr_maintenance` (
  `id` int(11) NOT NULL,
  `asset_sales_order` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_date` date NOT NULL,
  `created _by` date NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `username_login` varchar(100) NOT NULL,
  `host_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tr_part_type`
--

CREATE TABLE `tb_tr_part_type` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `part` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_tr_part_type`
--

INSERT INTO `tb_tr_part_type` (`id`, `type`, `part`) VALUES
(1, 'Intel i3', 1),
(2, 'Intel i5', 1),
(3, 'Intel i7', 1),
(4, 'Intel i9', 1),
(5, '4 GB', 3),
(6, '8 GB', 3),
(7, '16 GB', 3),
(8, '256 GB', 2),
(9, '1 TB', 2),
(10, '128 GB', 2),
(11, '512 GB', 2),
(12, 'Windows 7', 4),
(13, 'Windows 8', 4),
(14, 'Windows 10', 4),
(15, '256 GB', 5),
(16, '128 GB', 5),
(17, '512 GB', 5),
(18, '1 TB', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tb_tr_user_role`
--

CREATE TABLE `tb_tr_user_role` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `role` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_tr_user_role`
--

INSERT INTO `tb_tr_user_role` (`id`, `user`, `role`) VALUES
(1, 14609, 1),
(2, 14609, 5),
(3, 14609, 7),
(4, 15035, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_m_asset`
--
ALTER TABLE `tb_m_asset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkassetitem` (`asset_item`),
  ADD KEY `fkbrand` (`brand`);

--
-- Indexes for table `tb_m_asset_item`
--
ALTER TABLE `tb_m_asset_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkassetitemtype` (`asset_item_type`);

--
-- Indexes for table `tb_m_asset_item_type`
--
ALTER TABLE `tb_m_asset_item_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_m_asset_sales_order`
--
ALTER TABLE `tb_m_asset_sales_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkso` (`sales_order`),
  ADD KEY `fkasset` (`asset`),
  ADD KEY `fkcategory` (`category`),
  ADD KEY `fkstatus` (`status`);

--
-- Indexes for table `tb_m_asset_type`
--
ALTER TABLE `tb_m_asset_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_m_brand`
--
ALTER TABLE `tb_m_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_m_category`
--
ALTER TABLE `tb_m_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_m_group`
--
ALTER TABLE `tb_m_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_m_log`
--
ALTER TABLE `tb_m_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_m_maintenance_status`
--
ALTER TABLE `tb_m_maintenance_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_m_maintenance_type`
--
ALTER TABLE `tb_m_maintenance_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_m_parameter`
--
ALTER TABLE `tb_m_parameter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_m_part`
--
ALTER TABLE `tb_m_part`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_m_role`
--
ALTER TABLE `tb_m_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_m_sales_order`
--
ALTER TABLE `tb_m_sales_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkassettype` (`asset_type`);

--
-- Indexes for table `tb_m_status`
--
ALTER TABLE `tb_m_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_m_transaction_type`
--
ALTER TABLE `tb_m_transaction_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_m_type_project`
--
ALTER TABLE `tb_m_type_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_m_user`
--
ALTER TABLE `tb_m_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tr_asset_allocation`
--
ALTER TABLE `tb_tr_asset_allocation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fktransactiontype` (`transaction_type`);

--
-- Indexes for table `tb_tr_asset_allocation_detail`
--
ALTER TABLE `tb_tr_asset_allocation_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkassetallocation` (`asset_allocation`),
  ADD KEY `fkinitialso` (`initial_asset_sales_order`),
  ADD KEY `fkfinalso` (`final_asset_sales_order`);

--
-- Indexes for table `tb_tr_asset_part`
--
ALTER TABLE `tb_tr_asset_part`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkpartassets` (`asset`),
  ADD KEY `fkparttype` (`part_type`);

--
-- Indexes for table `tb_tr_detail_maintenance`
--
ALTER TABLE `tb_tr_detail_maintenance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkmaintenancetype` (`maintenance_type`),
  ADD KEY `fkmaintenance` (`maintenance`);

--
-- Indexes for table `tb_tr_detail_maintenance_part`
--
ALTER TABLE `tb_tr_detail_maintenance_part`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkmaintenance2` (`maintenance`),
  ADD KEY `fkassetpart` (`asset_part`);

--
-- Indexes for table `tb_tr_maintenance`
--
ALTER TABLE `tb_tr_maintenance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkassetsalesorder` (`asset_sales_order`);

--
-- Indexes for table `tb_tr_part_type`
--
ALTER TABLE `tb_tr_part_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkpart` (`part`);

--
-- Indexes for table `tb_tr_user_role`
--
ALTER TABLE `tb_tr_user_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkuser` (`user`),
  ADD KEY `fkusertype` (`role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_m_asset`
--
ALTER TABLE `tb_m_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `tb_m_asset_item`
--
ALTER TABLE `tb_m_asset_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_m_asset_item_type`
--
ALTER TABLE `tb_m_asset_item_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_m_asset_sales_order`
--
ALTER TABLE `tb_m_asset_sales_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `tb_m_brand`
--
ALTER TABLE `tb_m_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `tb_m_category`
--
ALTER TABLE `tb_m_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_m_log`
--
ALTER TABLE `tb_m_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_m_maintenance_status`
--
ALTER TABLE `tb_m_maintenance_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_m_maintenance_type`
--
ALTER TABLE `tb_m_maintenance_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_m_parameter`
--
ALTER TABLE `tb_m_parameter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_m_part`
--
ALTER TABLE `tb_m_part`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_m_role`
--
ALTER TABLE `tb_m_role`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_m_status`
--
ALTER TABLE `tb_m_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_m_type_project`
--
ALTER TABLE `tb_m_type_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_m_user`
--
ALTER TABLE `tb_m_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15037;

--
-- AUTO_INCREMENT for table `tb_tr_asset_allocation`
--
ALTER TABLE `tb_tr_asset_allocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tb_tr_asset_allocation_detail`
--
ALTER TABLE `tb_tr_asset_allocation_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=374;

--
-- AUTO_INCREMENT for table `tb_tr_asset_part`
--
ALTER TABLE `tb_tr_asset_part`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_tr_detail_maintenance`
--
ALTER TABLE `tb_tr_detail_maintenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_tr_detail_maintenance_part`
--
ALTER TABLE `tb_tr_detail_maintenance_part`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_tr_maintenance`
--
ALTER TABLE `tb_tr_maintenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_tr_part_type`
--
ALTER TABLE `tb_tr_part_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_tr_user_role`
--
ALTER TABLE `tb_tr_user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_m_asset`
--
ALTER TABLE `tb_m_asset`
  ADD CONSTRAINT `fkassetitem` FOREIGN KEY (`asset_item`) REFERENCES `tb_m_asset_item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkbrand` FOREIGN KEY (`brand`) REFERENCES `tb_m_brand` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_m_asset_item`
--
ALTER TABLE `tb_m_asset_item`
  ADD CONSTRAINT `fkassetitemtype` FOREIGN KEY (`asset_item_type`) REFERENCES `tb_m_asset_item_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_m_asset_sales_order`
--
ALTER TABLE `tb_m_asset_sales_order`
  ADD CONSTRAINT `fkasset` FOREIGN KEY (`asset`) REFERENCES `tb_m_asset` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkcategory` FOREIGN KEY (`category`) REFERENCES `tb_m_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkso` FOREIGN KEY (`sales_order`) REFERENCES `tb_m_sales_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkstatus` FOREIGN KEY (`status`) REFERENCES `tb_m_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_m_sales_order`
--
ALTER TABLE `tb_m_sales_order`
  ADD CONSTRAINT `fkassettype` FOREIGN KEY (`asset_type`) REFERENCES `tb_m_asset_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_tr_asset_allocation`
--
ALTER TABLE `tb_tr_asset_allocation`
  ADD CONSTRAINT `fktransactiontype` FOREIGN KEY (`transaction_type`) REFERENCES `tb_m_transaction_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_tr_asset_allocation_detail`
--
ALTER TABLE `tb_tr_asset_allocation_detail`
  ADD CONSTRAINT `fkassetallocation` FOREIGN KEY (`asset_allocation`) REFERENCES `tb_tr_asset_allocation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkfinalso` FOREIGN KEY (`final_asset_sales_order`) REFERENCES `tb_m_asset_sales_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkinitialso` FOREIGN KEY (`initial_asset_sales_order`) REFERENCES `tb_m_asset_sales_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_tr_asset_part`
--
ALTER TABLE `tb_tr_asset_part`
  ADD CONSTRAINT `fkpartassets` FOREIGN KEY (`asset`) REFERENCES `tb_m_asset` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkparttype` FOREIGN KEY (`part_type`) REFERENCES `tb_tr_part_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_tr_detail_maintenance`
--
ALTER TABLE `tb_tr_detail_maintenance`
  ADD CONSTRAINT `fkmaintenance` FOREIGN KEY (`maintenance`) REFERENCES `tb_tr_maintenance` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkmaintenancetype` FOREIGN KEY (`maintenance_type`) REFERENCES `tb_m_maintenance_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_tr_detail_maintenance_part`
--
ALTER TABLE `tb_tr_detail_maintenance_part`
  ADD CONSTRAINT `fkassetpart` FOREIGN KEY (`asset_part`) REFERENCES `tb_tr_asset_part` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkmaintenance2` FOREIGN KEY (`maintenance`) REFERENCES `tb_tr_maintenance` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_tr_maintenance`
--
ALTER TABLE `tb_tr_maintenance`
  ADD CONSTRAINT `fkassetsalesorder` FOREIGN KEY (`asset_sales_order`) REFERENCES `tb_m_asset_sales_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_tr_part_type`
--
ALTER TABLE `tb_tr_part_type`
  ADD CONSTRAINT `fkpart` FOREIGN KEY (`part`) REFERENCES `tb_m_part` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_tr_user_role`
--
ALTER TABLE `tb_tr_user_role`
  ADD CONSTRAINT `fkuser` FOREIGN KEY (`user`) REFERENCES `tb_m_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkusertype` FOREIGN KEY (`role`) REFERENCES `tb_m_role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
