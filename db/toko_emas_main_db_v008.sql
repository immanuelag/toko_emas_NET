-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2019 at 06:36 PM
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
-- Error reading structure for table toko_emas_main_db.master_items: #1932 - Table 'toko_emas_main_db.master_items' doesn't exist in engine
-- Error reading data for table toko_emas_main_db.master_items: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `toko_emas_main_db`.`master_items`' at line 1

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Constraints for table `master_subcategory`
--
ALTER TABLE `master_subcategory`
  ADD CONSTRAINT `FK_SUB_CATEGORY` FOREIGN KEY (`category`) REFERENCES `master_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
