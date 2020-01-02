-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2020 at 03:15 AM
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
('AD023', 'A', 'D', 'PER 2BLT AD', 0, 3, 0.81, 4),
('AG032', 'A', 'G', 'BUNGA', 7, 3, 1.07, 4),
('AG033', 'A', 'G', 'BUNGA', 7, 3, 1.07, 4),
('AG035', 'A', 'G', 'BUNGA', 7, 3, 1.08, 4),
('AG036', 'A', 'G', 'BUNGA', 7, 3, 1.06, 4),
('AG037', 'A', 'G', 'BUNGA BINTANG', 7, 3, 1, 4),
('AG038', 'A', 'G', 'BUNGA BINTANG', 7, 3, 1.3, 4),
('AG039', 'A', 'G', 'BUNGA BINTANG', 7, 3, 0.97, 4),
('AG041', 'A', 'G', 'BUNGA BINTANG', 7, 3, 1.04, 4),
('AG043', 'A', 'G', 'STGH BLT', 7, 3, 1.05, 4),
('AG044', 'A', 'G', 'STGH BLT', 7, 3, 1.05, 4),
('AG045', 'A', 'G', 'STGH BLT', 7, 3, 1.04, 4),
('AG046', 'A', 'G', 'STGH BLT', 7, 3, 1.08, 4),
('CV029', 'C', 'V', 'CARTIER', 0, 2, 2.13, 4),
('CV064', 'C', 'V', 'CARTIER', 0, 2, 2.04, 4),
('GB024', 'G', 'B', 'OVAL ULIR 2BOLA AD', 0, 2, 8.83, 4),
('GB025', 'G', 'B', 'OVAL ULIR VAR PTH 2BOLA', 0, 2, 8.13, 4),
('GB027', 'G', 'B', 'OVAL 2BOLA BOTORAN', 0, 2, 8.87, 4),
('GB050', 'G', 'B', 'OVAL SABUK RANTAI AD', 0, 2, 8.26, 4),
('GB179', 'G', 'B', 'OVAL 2BOLA FULL AD TUMPUK', 0, 2, 6.83, 4),
('GC001', 'G', 'C', 'BLT 6 3WNA', 0, 2, 7.15, 4),
('GC002', 'G', 'C', 'BLT 6 3WNA', 0, 2, 5.52, 4),
('GC003', 'G', 'C', '6PCS', 0, 2, 6.32, 4),
('GP031', 'G', 'P', 'FNC 2BEL', 0, 2, 7.09, 4),
('GP035', 'G', 'P', 'FNC 2BEL', 0, 2, 8.08, 4),
('GP037', 'G', 'P', 'FNC 2BEL', 2, 2, 10.15, 4),
('IB019', 'I', 'B', 'VAR MAHKOTA 5AD (PEROT)', 3, 2, 2.07, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_items`
--
ALTER TABLE `master_items`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
