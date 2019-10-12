-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2019 at 09:40 AM
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
-- Database: `toko_emas_main_db`
--

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `master_category`
--

INSERT INTO `master_category` (`id`, `nama`) VALUES
('A', 'AT'),
('C', 'CC'),
('G', 'GL'),
('K', 'KL');

-- --------------------------------------------------------

--
-- Table structure for table `master_items`
--

CREATE TABLE `master_items` (
  `id` char(5) NOT NULL,
  `category` char(1) NOT NULL,
  `subcategory` char(1) NOT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `supplier` varchar(25) NOT NULL,
  `karat` int(11) NOT NULL,
  `berat` float NOT NULL,
  `stocks` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `master_items`
--

INSERT INTO `master_items` (`id`, `category`, `subcategory`, `nama`, `supplier`, `karat`, `berat`, `stocks`) VALUES
('GB001', 'G', 'B', '', 'UBS', 1, 4.09, 1),
('GB002', 'G', 'B', '', 'UBS', 1, 4.49, 1),
('GB003', 'G', 'B', '', 'UBS', 1, 8.83, 1),
('GB004', 'G', 'B', '', 'UBS', 1, 6.4, 1),
('GK001', 'G', 'K', 'DUA WARU', 'UBS', 2, 3.07, 1),
('GK002', 'G', 'K', 'WARU STGH AD', 'UBS', 2, 3.11, 1),
('GK003', 'G', 'K', 'ANK WARU STGH AD', 'UBS', 2, 3.23, 1),
('KF001', 'K', 'F', NULL, 'UBS', 2, 4.96, 1),
('KF002', 'K', 'F', NULL, 'UBS', 2, 5.1, 1),
('KF003', 'K', 'F', NULL, 'UBS', 2, 10.14, 1),
('KF004', 'K', 'F', NULL, 'UBS', 2, 6.94, 1),
('KF005', 'K', 'F', NULL, 'UBS', 2, 7.92, 1),
('KF006', 'K', 'F', NULL, 'UBS', 2, 4.98, 1),
('KF007', 'K', 'F', NULL, 'UBS', 2, 4.08, 1),
('KF008', 'K', 'F', NULL, 'UBS', 2, 3, 1),
('KF009', 'K', 'F', NULL, 'UBS', 2, 4.08, 1),
('KF010', 'K', 'F', NULL, 'UBS', 2, 4.05, 1),
('KF011', 'K', 'F', NULL, 'UBS', 2, 2, 1),
('KF012', 'K', 'F', NULL, 'UBS', 2, 7.15, 1),
('KF013', 'K', 'F', NULL, 'UBS', 2, 3.02, 1),
('KF014', 'K', 'F', NULL, 'UBS', 2, 8.13, 1),
('KF015', 'K', 'F', NULL, 'UBS', 2, 2, 1),
('KF016', 'K', 'F', NULL, 'UBS', 2, 4.11, 1),
('KF017', 'K', 'F', NULL, 'UBS', 2, 3.12, 1),
('KF018', 'K', 'F', NULL, 'UBS', 2, 6.09, 1),
('KF019', 'K', 'F', NULL, 'UBS', 2, 3.12, 1),
('KF020', 'K', 'F', NULL, 'UBS', 2, 3.05, 1),
('KF021', 'K', 'F', NULL, 'UBS', 2, 1.59, 1),
('KF022', 'K', 'F', NULL, 'UBS', 2, 3.05, 1),
('KF023', 'K', 'F', NULL, 'UBS', 2, 3.09, 1),
('KF024', 'K', 'F', NULL, 'UBS', 2, 1.59, 1),
('KF025', 'K', 'F', NULL, 'UBS', 2, 3.12, 1),
('KF026', 'K', 'F', NULL, 'UBS', 2, 1.57, 1),
('KH001', 'K', 'H', NULL, 'UBS', 1, 6.11, 1),
('KH002', 'K', 'H', NULL, 'UBS', 1, 7.06, 1),
('KH003', 'K', 'H', NULL, 'UBS', 1, 7.05, 1),
('KH004', 'K', 'H', NULL, 'UBS', 1, 6.11, 1),
('KH005', 'K', 'H', NULL, 'UBS', 1, 2.06, 1),
('KH006', 'K', 'H', NULL, 'UBS', 1, 6.16, 1),
('KH007', 'K', 'H', NULL, 'UBS', 1, 2.11, 1),
('KM001', 'K', 'M', NULL, 'UBS', 1, 3.09, 1),
('KM002', 'K', 'M', NULL, 'UBS', 1, 3.1, 1),
('KM003', 'K', 'M', NULL, 'UBS', 1, 5.12, 1),
('KM004', 'K', 'M', NULL, 'UBS', 1, 6.24, 1),
('KM005', 'K', 'M', NULL, 'UBS', 1, 5.05, 1),
('KM006', 'K', 'M', NULL, 'UBS', 1, 6.12, 1),
('KM007', 'K', 'M', NULL, 'UBS', 1, 5.08, 1),
('KM008', 'K', 'M', NULL, 'UBS', 1, 3.03, 1),
('KM009', 'K', 'M', NULL, 'UBS', 1, 5.06, 1),
('KM010', 'K', 'M', NULL, 'UBS', 1, 4, 1),
('KM011', 'K', 'M', NULL, 'UBS', 1, 5.06, 1),
('KM012', 'K', 'M', NULL, 'UBS', 1, 4.08, 1),
('KM013', 'K', 'M', NULL, 'UBS', 1, 4.11, 1),
('KM014', 'K', 'M', NULL, 'UBS', 1, 4, 1),
('KM015', 'K', 'M', NULL, 'UBS', 1, 8.17, 1),
('KM016', 'K', 'M', NULL, 'UBS', 1, 5.05, 1),
('KM017', 'K', 'M', NULL, 'UBS', 1, 2.97, 1),
('KM018', 'K', 'M', NULL, 'UBS', 1, 7.04, 1),
('KM019', 'K', 'M', NULL, 'UBS', 1, 8.12, 1),
('KM020', 'K', 'M', NULL, 'UBS', 1, 10.06, 1),
('KM021', 'K', 'M', NULL, 'UBS', 1, 4.15, 1),
('KM022', 'K', 'M', NULL, 'UBS', 1, 3.07, 1),
('KM023', 'K', 'M', NULL, 'UBS', 1, 2.05, 1),
('KM024', 'K', 'M', NULL, 'UBS', 1, 3.05, 1),
('KM025', 'K', 'M', NULL, 'UBS', 1, 2.07, 1),
('KM026', 'K', 'M', NULL, 'UBS', 1, 9.84, 1),
('KR001', 'K', 'R', NULL, 'UBS', 1, 2.06, 1),
('KR002', 'K', 'R', NULL, 'UBS', 1, 2.02, 1),
('KR003', 'K', 'R', NULL, 'UBS', 1, 3.11, 1),
('KR004', 'K', 'R', NULL, 'UBS', 1, 7.12, 1),
('KR005', 'K', 'R', NULL, 'UBS', 1, 5.05, 1),
('KR006', 'K', 'R', NULL, 'UBS', 1, 3.08, 1),
('KR007', 'K', 'R', NULL, 'UBS', 1, 9.98, 1),
('KR008', 'K', 'R', NULL, 'UBS', 1, 7.98, 1),
('KR009', 'K', 'R', NULL, 'UBS', 1, 10.07, 1),
('KR010', 'K', 'R', NULL, 'UBS', 1, 7.04, 1),
('KR011', 'K', 'R', NULL, 'UBS', 1, 5.97, 1),
('KR012', 'K', 'R', NULL, 'UBS', 1, 4.07, 1),
('KR013', 'K', 'R', NULL, 'UBS', 1, 5.9, 1),
('KR014', 'K', 'R', NULL, 'UBS', 1, 3.14, 1),
('KR015', 'K', 'R', NULL, 'UBS', 1, 4.13, 1),
('KR016', 'K', 'R', NULL, 'UBS', 1, 3.14, 1),
('KS001', 'K', 'S', NULL, 'UBS', 1, 3.96, 1),
('KS002', 'K', 'S', NULL, 'UBS', 1, 5.03, 1),
('KS003', 'K', 'S', NULL, 'UBS', 1, 2.9, 1),
('KS004', 'K', 'S', NULL, 'UBS', 1, 5.02, 1),
('KS005', 'K', 'S', NULL, 'UBS', 1, 2.07, 1),
('KS006', 'K', 'S', NULL, 'UBS', 1, 4.18, 1),
('KS007', 'K', 'S', NULL, 'UBS', 1, 3.08, 1),
('KS008', 'K', 'S', NULL, 'UBS', 1, 8.03, 1),
('KS009', 'K', 'S', NULL, 'UBS', 1, 9.93, 1),
('KS010', 'K', 'S', NULL, 'UBS', 1, 4.94, 1),
('KS011', 'K', 'S', NULL, 'UBS', 1, 4.92, 1),
('KS012', 'K', 'S', NULL, 'UBS', 1, 2.05, 1),
('KS013', 'K', 'S', NULL, 'UBS', 1, 2.9, 1),
('KS014', 'K', 'S', NULL, 'UBS', 1, 6.04, 1),
('KS015', 'K', 'S', NULL, 'UBS', 1, 2.88, 1),
('KS016', 'K', 'S', NULL, 'UBS', 1, 8, 1),
('KS017', 'K', 'S', NULL, 'UBS', 1, 11.9, 1),
('KS018', 'K', 'S', NULL, 'UBS', 1, 2.03, 1),
('KS019', 'K', 'S', NULL, 'UBS', 1, 7.1, 1),
('KS020', 'K', 'S', NULL, 'UBS', 1, 5.06, 1),
('KS021', 'K', 'S', NULL, 'UBS', 1, 4.84, 1),
('KS022', 'K', 'S', NULL, 'UBS', 1, 6.05, 1),
('KS023', 'K', 'S', NULL, 'UBS', 1, 2.05, 1),
('KS024', 'K', 'S', NULL, 'UBS', 1, 4.96, 1),
('KS025', 'K', 'S', NULL, 'UBS', 1, 5.09, 1),
('KS026', 'K', 'S', NULL, 'UBS', 1, 6.87, 1),
('KS027', 'K', 'S', NULL, 'UBS', 1, 2.91, 1),
('KS028', 'K', 'S', NULL, 'UBS', 1, 5.11, 1),
('KS029', 'K', 'S', NULL, 'UBS', 1, 2.99, 1),
('KS030', 'K', 'S', NULL, 'UBS', 1, 2.04, 1),
('KS031', 'K', 'S', NULL, 'UBS', 1, 4.96, 1),
('KS032', 'K', 'S', NULL, 'UBS', 1, 2, 1),
('KS033', 'K', 'S', NULL, 'UBS', 1, 7.08, 1),
('KS034', 'K', 'S', NULL, 'UBS', 1, 6.08, 1),
('KS035', 'K', 'S', NULL, 'UBS', 1, 9.89, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `master_price`
--

INSERT INTO `master_price` (`id`, `id_carat`, `date_time`, `sell_price`, `buyback_price`) VALUES
(1, 1, '2019-09-24 11:02:57', 300000, 260000);

-- --------------------------------------------------------

--
-- Table structure for table `master_subcategory`
--

CREATE TABLE `master_subcategory` (
  `id` char(1) NOT NULL,
  `category` char(1) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `master_subcategory`
--

INSERT INTO `master_subcategory` (`id`, `category`, `nama`) VALUES
('A', 'C', 'AD'),
('A', 'G', 'AD'),
('B', 'A', 'BAYI'),
('B', 'C', 'BAYI'),
('B', 'G', 'BK'),
('C', 'G', 'KRCG'),
('D', 'A', 'DESI'),
('F', 'K', 'FANCY'),
('H', 'G', 'RT HLW'),
('H', 'K', 'HOLLOW'),
('I', 'G', 'KAKI'),
('J', 'A', 'JEPSI'),
('K', 'A', 'KLIP'),
('K', 'C', 'KMBG'),
('K', 'G', 'BK AD'),
('L', 'A', 'KLIPA'),
('M', 'G', 'RT MN'),
('M', 'K', 'MILANO'),
('N', 'C', 'ANK'),
('N', 'G', 'RT ANK'),
('P', 'A', 'PJG'),
('P', 'C', 'POLOS'),
('P', 'G', 'RT POL'),
('R', 'K', 'RAMBO'),
('S', 'K', 'SANTA'),
('T', 'G', 'RT TPS');

-- --------------------------------------------------------

--
-- Table structure for table `master_supplier`
--

CREATE TABLE `master_supplier` (
  `id` int(11) NOT NULL,
  `code` varchar(4) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `master_user`
--

CREATE TABLE `master_user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `master_items`
--
ALTER TABLE `master_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_SUB_CATEGORY_BRG` (`subcategory`),
  ADD KEY `FK_CATEGORY_BRG` (`category`);

--
-- Indexes for table `master_price`
--
ALTER TABLE `master_price`
  ADD PRIMARY KEY (`id`,`id_carat`) USING BTREE;

--
-- Indexes for table `master_subcategory`
--
ALTER TABLE `master_subcategory`
  ADD PRIMARY KEY (`id`,`category`) USING BTREE,
  ADD KEY `FK_SUB_CATEGORY` (`category`);

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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `master_items`
--
ALTER TABLE `master_items`
  ADD CONSTRAINT `FK_CATEGORY_BRG` FOREIGN KEY (`category`) REFERENCES `master_category` (`id`),
  ADD CONSTRAINT `FK_SUB_CATEGORY_BRG` FOREIGN KEY (`subcategory`) REFERENCES `master_subcategory` (`id`);

--
-- Constraints for table `master_subcategory`
--
ALTER TABLE `master_subcategory`
  ADD CONSTRAINT `FK_SUB_CATEGORY` FOREIGN KEY (`category`) REFERENCES `master_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
