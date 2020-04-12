-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2020 at 08:06 AM
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
('CV670', 'C', 'V', 'BLT LBG AD *AD LEPAS', 1, 2, 1.68, 4),
('DV142', 'D', 'V', 'BUNGA AD *AD HILANG', 0, 3, 0.68, 4),
('GC054', 'G', 'C', 'MOZAIK 4CM* SALAH KODE', 1, 2, 1.75, 4),
('GM013', 'G', 'M', 'ALFABET G *RETUR', 0, 2, 1.58, 4),
('GM036', 'G', 'M', 'ALPHABET O *GM015 RETUR', 0, 2, 1.53, 4),
('GP009', 'G', 'P', 'HLW *RETUR', 0, 1, 8.06, 4),
('GP011', 'G', 'P', 'HLW *RETUR', 0, 1, 8.06, 4),
('GP013', 'G', 'P', 'HLW *RETUR', 0, 1, 15.1, 4),
('GP015', 'G', 'P', 'HLW *RETUR', 0, 1, 12.18, 4),
('HB102', 'H', 'B', 'KUNING VAR PTH *DOUBLE*', 3, 2, 2.92, 4),
('HP008', 'H', 'P', 'FNC 2BEL *RETUR BEL PESOK', 0, 3, 2.02, 4),
('KS085', 'K', 'S', '* putus', 0, 1, 1.96, 4),
('KS108', 'K', 'S', '*DIGNTI NAMA', 0, 1, 1.94, 4);

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
