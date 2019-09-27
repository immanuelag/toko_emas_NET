-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2019 at 05:10 AM
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
-- Database: `toko_emas_mulia`
--

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
('A', 'Anting'),
('C', 'Cincin'),
('G', 'Gelang'),
('K', 'Kalung');

-- --------------------------------------------------------

--
-- Table structure for table `master_items`
--

CREATE TABLE `master_items` (
  `id` char(5) NOT NULL,
  `category` char(1) NOT NULL,
  `subcategory` char(1) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `karat` int(11) NOT NULL,
  `berat` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `master_items`
--

INSERT INTO `master_items` (`id`, `category`, `subcategory`, `nama`, `karat`, `berat`) VALUES
('KF001', 'K', 'F', 'UBS', 1, 2.12),
('KR001', 'K', 'R', 'UBS', 1, 2.06),
('KR002', 'K', 'R', 'UBS', 1, 2.02),
('KR003', 'K', 'R', 'UBS', 1, 3.11),
('KR004', 'K', 'R', 'UBS', 1, 7.12),
('KR005', 'K', 'R', 'UBS', 1, 5.05),
('KR006', 'K', 'R', 'UBS', 1, 3.08),
('KR007', 'K', 'R', 'UBS', 1, 9.98);

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
('F', 'K', 'Fancy'),
('M', 'K', 'Milano'),
('R', 'K', 'Rambo'),
('S', 'K', 'Santa');

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
