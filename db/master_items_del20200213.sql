-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2020 at 06:36 AM
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `master_items`
--

INSERT INTO `master_items` (`id`, `category`, `subcategory`, `nama`, `supplier`, `karat`, `berat`, `stocks`) VALUES
('DV111', 'D', 'V', '1AD BIRU + PTH* LIONTIN', 3, 3, 0.83, 4),
('GB096', 'G', 'B', 'OVAL RANTAI VAR AD *RSK', 0, 2, 5.42, 4),
('GM030', 'G', 'M', 'FNC 3BAMBU *RETUR', 6, 2, 7.9, 4),
('NN020', 'N', 'N', 'ALFABET M* PUTUS', 1, 1, 2.01, 4);

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
