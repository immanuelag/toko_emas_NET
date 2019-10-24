-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2019 at 08:14 AM
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
('GB014', 'G', 'B', 'VAR BINTANG', 0, 2, 5.08, 1),
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
('GK022', 'G', 'K', 'VAR PTH GLMBG AD', 0, 2, 5.95, 1);

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
('L', 'C', 'PLS'),
('L', 'D', 'PLS'),
('L', 'C', 'PLS'),
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
('V', 'E', 'VAR');

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
(4, 'KING', 'KING');

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
