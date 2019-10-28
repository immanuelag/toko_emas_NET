-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2019 at 02:16 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mulia`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `username` varchar(20) NOT NULL,
  `activity` varchar(80) NOT NULL,
  `query` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `items_check`
--

CREATE TABLE `items_check` (
  `id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `user` varchar(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `items_check_detail`
--

CREATE TABLE `items_check_detail` (
  `id_stock_check` int(11) NOT NULL,
  `id_items` char(5) NOT NULL,
  `check_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `master_carat`
--

CREATE TABLE `master_carat` (
  `id` int(11) NOT NULL,
  `carat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `master_carat`
--

INSERT INTO `master_carat` (`id`, `carat`) VALUES
(1, '42%'),
(2, '37.5%');

-- --------------------------------------------------------

--
-- Table structure for table `master_category`
--

CREATE TABLE `master_category` (
  `id` char(1) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `master_category`
--

INSERT INTO `master_category` (`id`, `nama`) VALUES
('A', 'AT'),
('B', 'AA'),
('C', 'CC'),
('D', 'CA'),
('E', 'CB'),
('G', 'GL'),
('H', 'GLA'),
('I', 'GLB'),
('K', 'KL'),
('L', 'KLP'),
('M', 'KLS'),
('N', 'KLA');

-- --------------------------------------------------------

--
-- Table structure for table `master_items`
--

CREATE TABLE `master_items` (
  `id` char(5) NOT NULL,
  `category` char(1) NOT NULL,
  `subcategory` char(1) NOT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `supplier` int(11) NOT NULL DEFAULT 0,
  `karat` int(11) NOT NULL,
  `berat` float NOT NULL,
  `stocks` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `master_items`
--

INSERT INTO `master_items` (`id`, `category`, `subcategory`, `nama`, `supplier`, `karat`, `berat`, `stocks`) VALUES
('GB001', 'G', 'B', 'VAR PUTIH', 3, 2, 5.05, 1),
('GB002', 'G', 'B', 'VAR PUTIH', 3, 2, 5.04, 1),
('GB003', 'G', 'B', 'VAR PUTIH', 0, 2, 5.11, 1),
('GB004', 'G', 'B', 'VAR PUTIH', 0, 2, 5.05, 1),
('GK001', 'G', 'K', 'ANK 2 WARU AD', 3, 2, 3.07, 1),
('GK002', 'G', 'K', 'ANK STGH  WARU AD', 3, 2, 3.11, 1),
('GK003', 'G', 'K', 'ANK STGH  WARU AD', 3, 2, 3.2, 1),
('KF001', 'K', 'F', NULL, 0, 2, 4.96, 1),
('KF002', 'K', 'F', NULL, 0, 2, 5.1, 1),
('KF003', 'K', 'F', NULL, 0, 2, 10.14, 1),
('KF004', 'K', 'F', NULL, 0, 2, 6.94, 1),
('KF005', 'K', 'F', NULL, 0, 2, 7.92, 1),
('KF006', 'K', 'F', NULL, 0, 2, 4.98, 1),
('KF007', 'K', 'F', NULL, 0, 2, 4.08, 1),
('KF008', 'K', 'F', NULL, 0, 2, 3, 1),
('KF009', 'K', 'F', NULL, 0, 2, 4.08, 1),
('KF010', 'K', 'F', NULL, 0, 2, 4.05, 1),
('KF011', 'K', 'F', NULL, 0, 2, 2, 1),
('KF012', 'K', 'F', NULL, 0, 2, 7.15, 1),
('KF013', 'K', 'F', NULL, 0, 2, 3.02, 1),
('KF014', 'K', 'F', NULL, 0, 2, 8.13, 1),
('KF015', 'K', 'F', NULL, 0, 2, 2, 1),
('KF016', 'K', 'F', NULL, 0, 2, 4.11, 1),
('KF017', 'K', 'F', NULL, 0, 2, 3.12, 1),
('KF018', 'K', 'F', NULL, 0, 2, 6.09, 1),
('KF019', 'K', 'F', NULL, 0, 2, 3.12, 1),
('KF020', 'K', 'F', NULL, 0, 2, 3.05, 1),
('KF021', 'K', 'F', NULL, 0, 2, 1.59, 1),
('KF022', 'K', 'F', NULL, 0, 2, 3.05, 1),
('KF023', 'K', 'F', NULL, 0, 2, 3.09, 1),
('KF024', 'K', 'F', NULL, 0, 2, 1.59, 1),
('KF025', 'K', 'F', NULL, 0, 2, 3.12, 1),
('KF026', 'K', 'F', NULL, 0, 2, 1.57, 1),
('KH001', 'K', 'H', NULL, 0, 1, 6.11, 1),
('KH002', 'K', 'H', NULL, 0, 1, 7.06, 1),
('KH003', 'K', 'H', NULL, 0, 1, 7.05, 1),
('KH004', 'K', 'H', NULL, 0, 1, 6.11, 1),
('KH005', 'K', 'H', NULL, 0, 1, 2.06, 1),
('KH006', 'K', 'H', NULL, 0, 1, 6.16, 1),
('KH007', 'K', 'H', NULL, 0, 1, 2.11, 1),
('KM001', 'K', 'M', NULL, 0, 1, 3.09, 1),
('KM002', 'K', 'M', NULL, 0, 1, 3.1, 1),
('KM003', 'K', 'M', NULL, 0, 1, 5.12, 1),
('KM004', 'K', 'M', NULL, 0, 1, 6.24, 1),
('KM005', 'K', 'M', NULL, 0, 1, 5.05, 1),
('KM006', 'K', 'M', NULL, 0, 1, 6.12, 1),
('KM007', 'K', 'M', NULL, 0, 1, 5.08, 1),
('KM008', 'K', 'M', NULL, 0, 1, 3.03, 1),
('KM009', 'K', 'M', NULL, 0, 1, 5.06, 1),
('KM010', 'K', 'M', NULL, 0, 1, 4, 1),
('KM011', 'K', 'M', NULL, 0, 1, 5.06, 1),
('KM012', 'K', 'M', NULL, 0, 1, 4.08, 1),
('KM013', 'K', 'M', NULL, 0, 1, 4.11, 1),
('KM014', 'K', 'M', NULL, 0, 1, 4, 1),
('KM015', 'K', 'M', NULL, 0, 1, 8.17, 1),
('KM016', 'K', 'M', NULL, 0, 1, 5.05, 1),
('KM017', 'K', 'M', NULL, 0, 1, 2.97, 1),
('KM018', 'K', 'M', NULL, 0, 1, 7.04, 1),
('KM019', 'K', 'M', NULL, 0, 1, 8.12, 1),
('KM020', 'K', 'M', NULL, 0, 1, 10.06, 1),
('KM021', 'K', 'M', NULL, 0, 1, 4.15, 1),
('KM022', 'K', 'M', NULL, 0, 1, 3.07, 1),
('KM023', 'K', 'M', NULL, 0, 1, 2.05, 1),
('KM024', 'K', 'M', NULL, 0, 1, 3.05, 1),
('KM025', 'K', 'M', NULL, 0, 1, 2.07, 1),
('KM026', 'K', 'M', NULL, 0, 1, 9.84, 1),
('KR001', 'K', 'R', NULL, 0, 1, 2.06, 1),
('KR002', 'K', 'R', NULL, 0, 1, 2.02, 1),
('KR003', 'K', 'R', NULL, 0, 1, 3.11, 1),
('KR004', 'K', 'R', NULL, 0, 1, 7.12, 1),
('KR005', 'K', 'R', NULL, 0, 1, 5.05, 1),
('KR006', 'K', 'R', NULL, 0, 1, 3.08, 1),
('KR007', 'K', 'R', NULL, 0, 1, 9.98, 1),
('KR008', 'K', 'R', NULL, 0, 1, 7.98, 1),
('KR009', 'K', 'R', NULL, 0, 1, 10.07, 1),
('KR010', 'K', 'R', NULL, 0, 1, 7.04, 1),
('KR011', 'K', 'R', NULL, 0, 1, 5.97, 1),
('KR012', 'K', 'R', NULL, 0, 1, 4.07, 1),
('KR013', 'K', 'R', NULL, 0, 1, 5.9, 1),
('KR014', 'K', 'R', NULL, 0, 1, 3.14, 1),
('KR015', 'K', 'R', NULL, 0, 1, 4.13, 1),
('KR016', 'K', 'R', NULL, 0, 1, 3.14, 1),
('KS001', 'K', 'S', NULL, 0, 1, 3.96, 1),
('KS002', 'K', 'S', NULL, 0, 1, 5.03, 1),
('KS003', 'K', 'S', NULL, 0, 1, 2.9, 1),
('KS004', 'K', 'S', NULL, 0, 1, 5.02, 1),
('KS005', 'K', 'S', NULL, 0, 1, 2.07, 1),
('KS006', 'K', 'S', NULL, 0, 1, 4.18, 1),
('KS007', 'K', 'S', NULL, 0, 1, 3.08, 1),
('KS008', 'K', 'S', NULL, 0, 1, 8.03, 1),
('KS009', 'K', 'S', NULL, 0, 1, 9.93, 1),
('KS010', 'K', 'S', NULL, 0, 1, 4.94, 1),
('KS011', 'K', 'S', NULL, 0, 1, 4.92, 1),
('KS012', 'K', 'S', NULL, 0, 1, 2.05, 1),
('KS013', 'K', 'S', NULL, 0, 1, 2.9, 1),
('KS014', 'K', 'S', NULL, 0, 1, 6.04, 1),
('KS015', 'K', 'S', NULL, 0, 1, 2.88, 1),
('KS016', 'K', 'S', NULL, 0, 1, 8, 1),
('KS017', 'K', 'S', NULL, 0, 1, 11.9, 1),
('KS018', 'K', 'S', NULL, 0, 1, 2.03, 1),
('KS019', 'K', 'S', NULL, 0, 1, 7.1, 1),
('KS020', 'K', 'S', NULL, 0, 1, 5.06, 1),
('KS021', 'K', 'S', NULL, 0, 1, 4.84, 1),
('KS022', 'K', 'S', NULL, 0, 1, 6.05, 1),
('KS023', 'K', 'S', NULL, 0, 1, 2.05, 1),
('KS024', 'K', 'S', NULL, 0, 1, 4.96, 1),
('KS025', 'K', 'S', NULL, 0, 1, 5.09, 1),
('KS026', 'K', 'S', NULL, 0, 1, 6.87, 1),
('KS027', 'K', 'S', NULL, 0, 1, 2.91, 1),
('KS028', 'K', 'S', NULL, 0, 1, 5.11, 1),
('KS029', 'K', 'S', NULL, 0, 1, 2.99, 1),
('KS030', 'K', 'S', NULL, 0, 1, 2.04, 1),
('KS031', 'K', 'S', NULL, 0, 1, 4.96, 1),
('KS032', 'K', 'S', NULL, 0, 1, 2, 1),
('KS033', 'K', 'S', NULL, 0, 1, 7.08, 1),
('KS034', 'K', 'S', NULL, 0, 1, 6.08, 1),
('KS035', 'K', 'S', NULL, 0, 1, 9.89, 1),
('GK004', 'G', 'K', 'ANK 2 WARU AD', 3, 2, 3.1, 1),
('GK005', 'G', 'K', 'ANK 2 WARU AD', 3, 2, 3.06, 1),
('GK006', 'G', 'K', 'ANK STGH WARU AD', 3, 2, 3.23, 1),
('GK007', 'G', 'K', 'ANK STGH WARU AD', 3, 2, 3.04, 1),
('GK008', 'G', 'K', 'ANK WAJIK', 3, 2, 3.26, 1),
('GK009', 'G', 'K', 'ANK STGH WARU AD PINK', 3, 2, 3.32, 1),
('GB005', 'G', 'B', 'VAR KOTAK', 1, 2, 4.43, 1),
('GB006', 'G', 'B', 'VAR KOTAK', 1, 2, 4.64, 1),
('GB007', 'G', 'B', 'VAR KOTAK', 1, 2, 4.52, 1),
('GB008', 'G', 'B', 'VAR PITA', 0, 2, 7.12, 1),
('GB009', 'G', 'B', 'VAR BAMBU PTH', 0, 2, 3.33, 1),
('GB010', 'G', 'B', 'VAR BAMBU PTH', 0, 2, 3.36, 1),
('GB011', 'G', 'B', 'VAR BAMBU PTH', 0, 2, 3.2, 1),
('GB012', 'G', 'B', 'VAR PUTIH', 0, 2, 5.25, 1),
('GB013', 'G', 'B', 'VAR PUTIH', 0, 2, 5.23, 1),
('GB014', 'G', 'B', 'VAR BTG', 0, 2, 5.08, 1),
('GB015', 'G', 'B', 'VAR BUNGA', 0, 2, 10.06, 1),
('GK010', 'G', 'K', 'PER AD ', 0, 2, 8.25, 1),
('GK011', 'G', 'K', 'VAR PTH+AD PINK', 0, 2, 7.01, 1),
('GK012', 'G', 'K', 'VAR PTH+AD PINK', 0, 2, 6.06, 1),
('GK013', 'G', 'K', 'VAR PTH+AD BULAT', 0, 2, 7.06, 1),
('GK014', 'G', 'K', 'VAR PTH+AD PINK', 0, 2, 4.08, 1),
('GK015', 'G', 'K', 'VAR AD PTH', 0, 2, 4.05, 1),
('GK016', 'G', 'K', 'VAR BUNGA', 0, 2, 3.1, 1),
('GK017', 'G', 'K', 'VAR PTH+AD BULAT', 0, 2, 5, 1),
('GK018', 'G', 'K', 'VAR PTH+AD WAJIK PINK', 0, 2, 5.04, 1),
('GK019', 'G', 'K', 'VAR PTH+AD BULAT', 0, 2, 5.02, 1),
('GK020', 'G', 'K', 'VAR PTH+AD WAJIK', 0, 2, 5.06, 1),
('GK021', 'G', 'K', 'VAR X LUBANG', 0, 2, 4.04, 1),
('GK022', 'G', 'K', 'VAR PTH GLMBG AD', 0, 2, 5.95, 1),
('IB001', 'I', 'B', 'VAR CAT HK', 3, 2, 2.08, 1),
('IB002', 'I', 'B', 'VAR CAT HK', 3, 2, 2.12, 1),
('IB003', 'I', 'B', 'VAR CAT HK', 3, 2, 2.12, 1),
('IB004', 'I', 'B', 'VAR CAT HK', 3, 2, 1.45, 1),
('IB005', 'I', 'B', 'VAR CAT DORA', 3, 2, 1.51, 1),
('IB006', 'I', 'B', 'VAR CAT HK', 3, 2, 1.54, 1),
('IB007', 'I', 'B', 'VAR CAT HK', 3, 2, 1.6, 1),
('IB008', 'I', 'B', 'VAR CAT DORA', 3, 2, 2.07, 1),
('IB009', 'I', 'B', 'VAR CAT BONEKA', 3, 2, 1.52, 1),
('IB010', 'I', 'B', 'VAR CAT STROBERI', 3, 2, 1.54, 1),
('IB011', 'I', 'B', 'VAR CAT 2AD', 3, 2, 2.19, 1),
('IB012', 'I', 'B', 'VAR CAT AD BLT', 3, 2, 2.05, 1),
('IB013', 'I', 'B', 'VAR CAT 2AD BTG', 3, 2, 2.07, 1),
('IB014', 'I', 'B', 'VAR CAT 2AD BTG', 3, 2, 2.1, 1),
('IB015', 'I', 'B', 'VAR CAT AD BLT', 3, 2, 2.11, 1),
('IB016', 'I', 'B', 'VAR PTH+AD PTH PINK', 3, 2, 2.04, 1),
('IB017', 'I', 'B', 'VAR PTH+AD BUNGA', 3, 2, 2.06, 1),
('IB018', 'I', 'B', 'VAR PTH+AD BUNGA', 3, 2, 2.13, 1),
('IB019', 'I', 'B', 'VAR MAHKOTA 5AD', 3, 2, 2.07, 1),
('IB020', 'I', 'B', 'VAR 5BOLA', 0, 2, 2.63, 1),
('IB021', 'I', 'B', 'VAR 5BOLA', 0, 2, 2.43, 1),
('IB022', 'I', 'B', 'VAR 5BOLA', 0, 2, 2.55, 1),
('IB023', 'I', 'B', 'VAR 5BOLA', 0, 2, 2.44, 1),
('IB024', 'I', 'B', 'VAR PTH', 0, 2, 2.81, 1),
('IB025', 'I', 'B', 'VAR PTH', 0, 2, 2.82, 1),
('IB026', 'I', 'B', 'VAR PTH', 0, 2, 2.27, 1),
('IB027', 'I', 'B', 'VAR PTH', 0, 2, 1.97, 1),
('IB028', 'I', 'B', 'VAR PTH', 0, 2, 2, 1),
('IB029', 'I', 'B', 'VAR PTH', 0, 2, 2.22, 1),
('IB030', 'I', 'B', 'VAR PTH', 0, 2, 2.82, 1),
('IB031', 'I', 'B', 'VAR PTH', 0, 2, 2.25, 1),
('IB032', 'I', 'B', 'VAR PTH', 0, 2, 1.98, 1),
('IB033', 'I', 'B', 'VAR AD WAJIK', 0, 2, 2.2, 1),
('IB034', 'I', 'B', 'VAR AD WAJIK', 0, 2, 2.18, 1),
('IB035', 'I', 'B', 'ULIR VAR AD HATI', 0, 2, 2.08, 1),
('IB036', 'I', 'B', 'ULIR VAR AD HATI', 0, 2, 2.12, 1),
('IB037', 'I', 'B', 'ULIR VAR AD OVAL', 0, 2, 2, 1),
('IB038', 'I', 'B', 'VAR BTG+AD', 4, 2, 2.08, 1),
('IB039', 'I', 'B', 'VAR MOZAIK', 1, 2, 1.76, 1),
('IB040', 'I', 'B', 'VAR MOZAIK', 1, 2, 1.76, 1),
('IB041', 'I', 'B', 'STGH PIPA', 3, 2, 3.03, 1),
('IB042', 'I', 'B', 'STGH PIPA', 3, 2, 3.03, 1),
('IB043', 'I', 'B', 'STGH PIPA', 3, 2, 2.92, 1),
('IB044', 'I', 'B', 'STGH PIPA', 3, 2, 2.12, 1),
('IB045', 'I', 'B', 'STGH PIPA', 3, 2, 2.2, 1),
('GB016', 'G', 'B', 'C VAR PTH MRH', 0, 2, 7.1, 1),
('GB017', 'G', 'B', 'C VAR PTH MRH', 0, 2, 8, 1),
('GB018', 'G', 'B', 'C VAR PTH MRH BTG', 0, 2, 3.14, 1),
('GB019', 'G', 'B', 'C VAR MRH PTH BTG', 0, 2, 3.12, 1),
('GB020', 'G', 'B', 'C VAR MRH PTH BTG', 0, 2, 3.18, 1),
('CV001', 'C', 'V', 'AD HATI', 0, 2, 2.18, 1),
('CV002', 'C', 'V', 'KOTAK AD', 0, 2, 1.58, 1),
('CV003', 'C', 'V', 'AD BULAT', 0, 2, 1.6, 1),
('CV004', 'C', 'V', 'BTG AD HATI', 0, 2, 1.12, 1),
('CV005', 'C', 'V', 'BTG AD HATI', 0, 2, 1.1, 1),
('CV006', 'C', 'V', 'HATI AD PINK', 0, 2, 1.62, 1),
('CV007', 'C', 'V', '2PITA AD', 0, 2, 1.25, 1),
('CV008', 'C', 'V', 'KOTAK AD', 0, 2, 1.52, 1),
('CV009', 'C', 'V', '2PITA AD', 0, 2, 1.1, 1),
('CV010', 'C', 'V', 'AD C', 1, 2, 1.71, 1),
('CV011', 'C', 'V', 'PER HATI PTH', 0, 2, 1.9, 1),
('CV012', 'C', 'V', 'AD HATI PINK', 0, 2, 1.55, 1),
('CV013', 'C', 'V', 'AD HATI', 0, 2, 1.36, 1),
('CV014', 'C', 'V', 'AD KUPU', 0, 2, 1.63, 1),
('CV015', 'C', 'V', 'PTH 1AD', 0, 2, 2.28, 1),
('CV016', 'C', 'V', 'RANTAI', 0, 2, 2.16, 1),
('CV017', 'C', 'V', 'BLT LBNG', 0, 2, 0.55, 1),
('CV018', 'C', 'V', 'KUPU STGH AD', 0, 2, 1.42, 1),
('CV019', 'C', 'V', '1 AD ORANGE', 0, 2, 1.61, 1),
('CV020', 'C', 'V', 'ANGSA RAINBOW', 0, 2, 2.34, 1),
('CV021', 'C', 'V', 'HATI 5AD', 0, 2, 1.07, 1),
('CV022', 'C', 'V', 'PER 2BLT AD', 0, 2, 1.37, 1),
('CV023', 'C', 'V', 'KUPU 2AD BULAT', 0, 2, 1.5, 1),
('CV024', 'C', 'V', 'HATI AD', 0, 2, 1.31, 1),
('CV025', 'C', 'V', 'BOLA AD RAINBOW', 0, 2, 1.88, 1),
('CV026', 'C', 'V', '3HATI AD', 0, 2, 1.07, 1),
('CV027', 'C', 'V', 'KUPU STGH AD', 0, 2, 1.48, 1),
('CV028', 'C', 'V', 'CAT AD KOTAK', 0, 2, 2.06, 1),
('CV029', 'C', 'V', 'CARTIER', 0, 2, 2.13, 1),
('CV030', 'C', 'V', 'BTG AD PINK', 0, 2, 1.23, 1),
('CV031', 'C', 'V', 'BTG AD', 0, 2, 1.54, 1),
('CV032', 'C', 'V', '9 AD', 0, 2, 0.9, 1),
('CV033', 'C', 'V', 'HATI LBG', 0, 2, 0.85, 1),
('CV034', 'C', 'V', 'DOLPHIN RAINBOW', 0, 2, 2.32, 1),
('CV035', 'C', 'V', '1AD BSR+4AD KCL', 0, 2, 1.92, 1),
('CV036', 'C', 'V', '9AD', 0, 2, 0.93, 1),
('CV037', 'C', 'V', '3HATI AD', 0, 2, 1.03, 1),
('CV038', 'C', 'V', 'AD HATI', 0, 2, 1.22, 1),
('CV039', 'C', 'V', 'PER RAINBOW', 0, 2, 2.23, 1),
('CV040', 'C', 'V', '1AD MERAH', 0, 2, 2.1, 1),
('CV041', 'C', 'V', '1AD PUTIH', 0, 2, 2.22, 1),
('CV042', 'C', 'V', '2AD', 0, 2, 0.93, 1),
('CV043', 'C', 'V', 'KOTAK AD', 0, 2, 1.64, 1),
('CV044', 'C', 'V', 'HATI AD', 0, 2, 0.88, 1),
('CV045', 'C', 'V', 'PTH +AD', 0, 2, 1.12, 1),
('CV046', 'C', 'V', 'AD HATI', 0, 2, 1.32, 1),
('CV047', 'C', 'V', 'AD BULAT', 0, 2, 2.5, 1),
('CV048', 'C', 'V', '2HATI AD', 0, 2, 1.22, 1),
('CV049', 'C', 'V', 'BULAT 1AD', 0, 2, 1.43, 1),
('CV050', 'C', 'V', '1AD', 0, 2, 0.92, 1),
('CV051', 'C', 'V', 'CAT RANTAI AD', 0, 2, 4.09, 1),
('CV052', 'C', 'V', 'CAT AD', 0, 2, 2.18, 1),
('CV053', 'C', 'V', 'ANGSA AD PINK', 0, 2, 1.63, 1),
('CV054', 'C', 'V', 'PETIR AD', 0, 2, 1.32, 1),
('CV055', 'C', 'V', 'PER 3KUPU AD', 0, 2, 2.42, 1),
('CV056', 'C', 'V', '2 PITA AD', 0, 2, 1.19, 1),
('CV057', 'C', 'V', 'HATI MAHKOTA AD', 0, 2, 1.12, 1),
('CV058', 'C', 'V', '1AD', 0, 2, 1.95, 1),
('CV059', 'C', 'V', 'KUPU', 0, 2, 0.8, 1),
('CV060', 'C', 'V', 'CAT AD', 0, 2, 2.17, 1),
('CV061', 'C', 'V', 'HATI AD PINK', 0, 2, 0.76, 1),
('CV062', 'C', 'V', 'CARTIER', 0, 2, 2.03, 1),
('CV063', 'C', 'V', 'PTH AD', 0, 2, 1.23, 1),
('CV064', 'C', 'V', 'CARTIER', 0, 2, 2.04, 1),
('CV065', 'C', 'V', '2AD', 0, 2, 0.92, 1),
('CV066', 'C', 'V', 'BSR AD', 0, 2, 3.28, 1),
('CV067', 'C', 'V', '3AD', 0, 2, 0.8, 1),
('CV068', 'C', 'V', 'BSR PTH +AD', 0, 2, 4.07, 1),
('CV069', 'C', 'V', 'BSR AD', 0, 2, 3.83, 1),
('CV070', 'C', 'V', 'CAT AD', 0, 2, 2.34, 1),
('CV071', 'C', 'V', 'PITA AD PINK', 0, 2, 1.06, 1),
('CV072', 'C', 'V', '1AD BSR', 0, 2, 1.74, 1),
('CV073', 'C', 'V', 'AD', 0, 2, 1.4, 1),
('CV074', 'C', 'V', 'PER AD KUPU', 0, 2, 1.79, 1),
('CV075', 'C', 'V', 'AD HTM', 0, 2, 2.9, 1),
('CV076', 'C', 'V', 'RANTAI', 0, 2, 2, 1),
('CV077', 'C', 'V', 'VAR PUTIH AD', 0, 2, 1.6, 1),
('CV078', 'C', 'V', '1 AD BSR', 0, 2, 2.2, 1),
('CV079', 'C', 'V', '3HARI AD', 0, 2, 1.06, 1),
('CV080', 'C', 'V', 'PTH AD', 0, 2, 1.06, 1),
('CV081', 'C', 'V', 'HATI AD', 0, 2, 0.88, 1),
('CV082', 'C', 'V', 'BSR AD', 0, 2, 2.5, 1),
('CV083', 'C', 'V', '2 HATI LBG', 0, 2, 0.8, 1),
('CV084', 'C', 'V', 'BSR AD', 0, 2, 2.67, 1),
('CV085', 'C', 'V', 'HATI AD', 0, 2, 0.82, 1),
('CV086', 'C', 'V', 'PTH AD', 0, 2, 1.52, 1),
('CV087', 'C', 'V', 'CAT AD', 0, 2, 2.2, 1),
('CV088', 'C', 'V', 'PETIR AD', 0, 2, 1.3, 1),
('CV089', 'C', 'V', 'AD BLT', 0, 2, 1.12, 1),
('CV090', 'C', 'V', 'CAT AD', 0, 2, 2.22, 1),
('CV091', 'C', 'V', 'BUNGA BLT AD', 0, 2, 1.9, 1),
('CV092', 'C', 'V', '2AD', 0, 2, 0.93, 1),
('CV093', 'C', 'V', '2BLT AD PINK', 0, 2, 1.5, 1),
('CV094', 'C', 'V', '2AD', 0, 2, 0.95, 1),
('CV095', 'C', 'V', '2BLT AD', 0, 2, 1.42, 1),
('CV096', 'C', 'V', '2BLT AD', 0, 2, 1.41, 1),
('CV097', 'C', 'V', 'PER 2AD', 0, 2, 2.04, 1),
('CV098', 'C', 'V', 'PER 2HATI PTH', 0, 2, 1.63, 1),
('CV099', 'C', 'V', 'HATI 5AD', 0, 2, 1.03, 1),
('CV100', 'C', 'V', 'PTH AD', 0, 2, 1.2, 1),
('CV101', 'C', 'V', 'AD PINK', 0, 2, 1.54, 1),
('CV102', 'C', 'V', 'PER PTH', 0, 2, 3, 1),
('CV103', 'C', 'V', 'BSR BOLA +AD', 0, 2, 3.16, 1),
('CV104', 'C', 'V', 'BSR SILANG AD', 0, 2, 2.37, 1),
('CV105', 'C', 'V', 'BTG AD PINK', 0, 2, 1.22, 1),
('CV106', 'C', 'V', 'BSR LBG AD', 0, 2, 3, 1),
('CV107', 'C', 'V', 'BSR 3BOLA AD', 0, 2, 3.65, 1),
('CV108', 'C', 'V', 'SABUK AD', 0, 2, 1.87, 1),
('CV109', 'C', 'V', 'AD BLT', 0, 2, 1.29, 1),
('CV110', 'C', 'V', 'CHANEL AD', 0, 2, 1.53, 1),
('CV111', 'C', 'V', 'KUPU STGH AD', 0, 2, 1.52, 1),
('CV112', 'C', 'V', '1AD BIRU', 0, 2, 2.3, 1),
('CV113', 'C', 'V', '3AD', 0, 2, 0.83, 1),
('CV114', 'C', 'V', 'SABUK CAT AD', 0, 2, 2.06, 1),
('CV115', 'C', 'V', '2AD', 0, 2, 0.93, 1),
('CV116', 'C', 'V', '1AD BSR', 0, 2, 2.04, 1),
('CV117', 'C', 'V', 'HATI LBG', 0, 2, 0.82, 1),
('CV118', 'C', 'V', 'KUPU', 0, 2, 0.86, 1),
('CV119', 'C', 'V', '2AD', 0, 2, 0.94, 1),
('CV120', 'C', 'V', 'HATI LBG', 0, 2, 0.8, 1),
('CV121', 'C', 'V', '3AD', 0, 2, 0.9, 1),
('CV122', 'C', 'V', '3HATI AD', 0, 2, 0.9, 1),
('CV123', 'C', 'V', 'CAT HATI AD', 0, 2, 1.36, 1),
('CV124', 'C', 'V', '2AD PINK', 0, 2, 1.44, 1),
('CV125', 'C', 'V', '2AD BLT', 0, 2, 1.38, 1),
('CV126', 'C', 'V', 'PER 3HATI PTH', 0, 2, 2, 1),
('CV127', 'C', 'V', 'PTH AD', 0, 2, 1.5, 1),
('CV128', 'C', 'V', '2BLT AD PINK', 0, 2, 1.5, 1),
('CV129', 'C', 'V', 'KUPU STGH AD', 0, 2, 1.38, 1),
('CV130', 'C', 'V', 'PER 4BLT AD PINK', 0, 2, 1.47, 1),
('CV131', 'C', 'V', 'HATI LBG', 0, 2, 0.86, 1),
('CV132', 'C', 'V', 'BSR CAT + PTH', 1, 2, 2.78, 1),
('CV133', 'C', 'V', 'BSR CAT + PTH', 1, 2, 2.8, 1),
('CV134', 'C', 'V', 'AD C', 1, 2, 1.69, 1),
('CV135', 'C', 'V', 'BSR LBG', 3, 2, 3.45, 1),
('CV136', 'C', 'V', 'WAJIK PTH AD', 3, 2, 1.55, 1),
('CV137', 'C', 'V', 'WAJIK PTH AD', 3, 2, 1.48, 1),
('CV138', 'C', 'V', 'WAJIK PTH AD', 3, 2, 1.5, 1),
('CV139', 'C', 'V', 'WAJIK PTH AD PINK', 3, 2, 1.43, 1),
('CV140', 'C', 'V', 'OVAL AD PINK', 3, 2, 1.39, 1),
('CV141', 'C', 'V', 'AD PINK BIRU', 3, 2, 1.54, 1),
('CV142', 'C', 'V', 'WAJIK PTH AD', 3, 2, 1.6, 1),
('CV143', 'C', 'V', 'PTH 1AD', 0, 2, 1.7, 1),
('CV144', 'C', 'V', 'PTH 1AD ', 0, 2, 1.75, 1),
('CV145', 'C', 'V', 'PTH 1AD', 0, 2, 1.95, 1),
('CV146', 'C', 'V', 'PTH 1AD', 0, 2, 1.86, 1),
('CV147', 'C', 'V', 'PTH 1AD', 0, 2, 1.95, 1),
('CV148', 'C', 'V', 'PTH 1AD', 0, 2, 2.24, 1),
('CV149', 'C', 'V', 'PTH 1AD', 0, 2, 1.58, 1),
('CV150', 'C', 'V', 'PTH 1AD', 0, 2, 1.66, 1),
('CV151', 'C', 'V', 'PTH 1AD', 0, 2, 2.58, 1),
('CV152', 'C', 'V', 'PTH 1AD', 0, 2, 1.76, 1),
('CV153', 'C', 'V', 'PTH 1AD', 0, 2, 1.75, 1),
('CV154', 'C', 'V', 'BUNGA LBG', 0, 2, 0.9, 1),
('CV155', 'C', 'V', 'WAJIK LBG', 0, 2, 0.9, 1),
('CV156', 'C', 'V', 'WAJIK LBG', 0, 2, 0.98, 1),
('CV157', 'C', 'V', 'BUNGA LBG', 0, 2, 0.88, 1),
('CV158', 'C', 'V', 'WAJIK AD', 0, 2, 1.6, 1),
('DV001', 'D', 'V', 'CAT MIKI', 3, 2, 0.95, 1),
('DV002', 'D', 'V', 'CAT PONI 2AD', 3, 2, 0.98, 1),
('DV003', 'D', 'V', 'CAT PONI 2AD', 3, 2, 0.97, 1),
('DV004', 'D', 'V', 'CAT HK 2AD', 3, 2, 1.17, 1),
('DV005', 'D', 'V', 'HK FULL AD', 3, 2, 0.95, 1),
('DV006', 'D', 'V', 'CAT HK', 3, 2, 0.94, 1),
('DV007', 'D', 'V', 'CAT HK', 3, 2, 0.98, 1),
('DV008', 'D', 'V', 'CAT HK 2AD', 3, 2, 1.14, 1),
('DV009', 'D', 'V', 'CAT HK 2AD', 3, 2, 1.07, 1),
('DV010', 'D', 'V', 'CAT STROBERI 1AD', 3, 2, 1.1, 1),
('DV011', 'D', 'V', 'HK FULL AD', 3, 2, 1.07, 1),
('DV012', 'D', 'V', 'CAT TSUM 2AD', 3, 2, 1.18, 1),
('DV013', 'D', 'V', 'CAT TSUM 2AD', 3, 2, 1.13, 1),
('DV014', 'D', 'V', 'CAT STROBERI 1AD', 3, 2, 1.04, 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_price`
--

CREATE TABLE `master_price` (
  `id` int(11) NOT NULL,
  `id_carat` int(11) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `sell_price` int(11) NOT NULL,
  `buyback_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `master_price`
--

INSERT INTO `master_price` (`id`, `id_carat`, `date_time`, `sell_price`, `buyback_price`) VALUES
(1, 1, '2019-09-24 11:02:57', 300000, 260000);

-- --------------------------------------------------------

--
-- Table structure for table `master_status`
--

CREATE TABLE `master_status` (
  `id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `master_subcategory`
--

CREATE TABLE `master_subcategory` (
  `id` char(1) NOT NULL,
  `category` char(1) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `master_subcategory`
--

INSERT INTO `master_subcategory` (`id`, `category`, `nama`) VALUES
('B', 'G', 'BK'),
('B', 'H', 'BK'),
('B', 'I', 'BK'),
('C', 'G', 'KRCG'),
('C', 'K', 'CY'),
('C', 'M', 'CY'),
('C', 'L', 'CY'),
('C', 'N', 'CY'),
('D', 'A', 'DS'),
('D', 'B', 'DS'),
('F', 'K', 'FY'),
('F', 'L', 'FY'),
('F', 'M', 'FY'),
('F', 'N', 'FY'),
('G', 'A', 'GW'),
('G', 'B', 'GW'),
('H', 'K', 'HL'),
('H', 'L', 'HL'),
('H', 'M', 'HL'),
('H', 'N', 'HL'),
('J', 'A', 'PJG'),
('K', 'A', 'KL'),
('K', 'G', 'KAKI'),
('L', 'K', 'LL'),
('L', 'L', 'LL'),
('L', 'M', 'LL'),
('L', 'N', 'LL'),
('M', 'A', 'MN'),
('M', 'B', 'MN'),
('M', 'G', 'MN'),
('M', 'H', 'MN'),
('M', 'K', 'MIL'),
('M', 'L', 'MIL'),
('M', 'M', 'MIL'),
('M', 'N', 'MIL'),
('P', 'A', 'KPA'),
('P', 'G', 'PLS'),
('P', 'H', 'PLS'),
('R', 'K', 'RO'),
('R', 'L', 'RO'),
('R', 'M', 'RO'),
('R', 'N', 'RO'),
('S', 'A', 'JP'),
('S', 'B', 'JP'),
('S', 'K', 'SAN'),
('S', 'L', 'SAN'),
('S', 'M', 'SAN'),
('S', 'N', 'SAN'),
('V', 'C', 'VAR'),
('V', 'D', 'VAR'),
('V', 'E', 'VAR'),
('L', 'C', 'PLS'),
('L', 'E', 'PLS'),
('L', 'D', 'PLS');

-- --------------------------------------------------------

--
-- Table structure for table `master_supplier`
--

CREATE TABLE `master_supplier` (
  `id` int(11) NOT NULL,
  `code` varchar(4) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `master_supplier`
--

INSERT INTO `master_supplier` (`id`, `code`, `nama`) VALUES
(0, 'UBS', 'UBS'),
(1, 'HWT', 'HWT'),
(2, 'LT', 'LOTUS'),
(3, 'LG', 'LESTARI'),
(4, 'KING', 'KING'),
(5, 'MT', 'MATAHARI');

-- --------------------------------------------------------

--
-- Table structure for table `master_user`
--

CREATE TABLE `master_user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items_check`
--
ALTER TABLE `items_check`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_carat`
--
ALTER TABLE `master_carat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_category`
--
ALTER TABLE `master_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_price`
--
ALTER TABLE `master_price`
  ADD PRIMARY KEY (`id`,`id_carat`) USING BTREE;

--
-- Indexes for table `master_status`
--
ALTER TABLE `master_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_supplier`
--
ALTER TABLE `master_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_user`
--
ALTER TABLE `master_user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
