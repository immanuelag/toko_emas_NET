-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2020 at 03:12 AM
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
('AD051', 'A', 'D', 'CARTIER*HARUSNYA KPA', 0, 2, 1.27, 4),
('AP088', 'A', 'P', '7AD*', 1, 2, 0.92, 4),
('CL070', 'C', 'L', '(B) VAR PTH 1AD *CU', 0, 3, 1.66, 4),
('CL079', 'C', 'L', '(B) VAR PTH MOZAIK AD 16 ', 0, 3, 1.64, 4),
('CL082', 'C', 'L', '(B) 1AD*CU', 0, 3, 1.6, 4),
('CL084', 'C', 'L', '(B) VAR PTH 1AD* 17 CU', 0, 3, 1.65, 4),
('CL087', 'C', 'L', '(B) VAR PTH MOZA CU', 0, 2, 1.45, 4),
('CV068', 'C', 'V', 'BSR PTH +AD *RETURN', 0, 2, 4.07, 4),
('CV362', 'C', 'V', 'BSR PTH+AD *RETUR', 0, 2, 4.08, 4),
('CV428', 'C', 'V', 'T AD *', 0, 2, 1.51, 4),
('CV440', 'C', 'V', 'HATI AD*', 0, 3, 0.95, 4),
('CV443', 'C', 'V', 'KUPU STGH AD*', 0, 2, 1.39, 4),
('CV444', 'C', 'V', 'SABUK AD*', 0, 2, 1.84, 4),
('CV445', 'C', 'V', '(B) AD CAT HITAM* CU', 0, 2, 2.87, 4),
('CV456', 'C', 'V', 'HATI LBG AD*', 0, 3, 1.14, 4),
('CV457', 'C', 'V', '(B) ANGSA AD PINK* CU', 0, 2, 1.63, 4),
('CV475', 'C', 'V', '(B) AD CAT MRH HJAU* CU', 0, 2, 2.17, 4),
('CV477', 'C', 'V', 'BUNGA 2AD*', 0, 3, 0.8, 4),
('CV487', 'C', 'V', 'BUNGA BLT AD*', 0, 3, 1.69, 4),
('CV531', 'C', 'V', 'PETIR AD*', 0, 2, 1.27, 4),
('CV603', 'C', 'V', 'MAHKOTA AD', 0, 3, 1, 4),
('CV629', 'C', 'V', 'HATI LBG AD*', 0, 3, 1.21, 4),
('CV651', 'C', 'V', 'VAR PTH GLMBG AD*', 0, 3, 1.82, 4),
('CV684', 'C', 'V', '(B) GLMBG AD CU', 3, 2, 3.27, 4),
('CV709', 'C', 'V', 'RAINBOW', 0, 2, 2.2, 4),
('CV719', 'C', 'V', '(B) 1AD BSAR+KCIL CU', 0, 2, 2.19, 4),
('GB043', 'G', 'B', 'OVAL CARTIER VAR PTH DIBA', 0, 2, 7.58, 4),
('GB176', 'G', 'B', 'DISNEY BLT AD *RETUR', 0, 2, 3.2, 4),
('GB264', 'G', 'B', 'CARTIER AD *RETUR OK', 0, 2, 6.92, 4),
('GB275', 'G', 'B', 'OVAL LOVE 1AD *RETUR OK', 0, 2, 3.43, 4),
('GB276', 'G', 'B', 'OVAL 7BOLA 3WNA *RETUR OK', 0, 2, 4.38, 4),
('GB277', 'G', 'B', 'OVAL CARTIER *DIBAWA IBUK', 0, 2, 4.92, 4),
('GB279', 'G', 'B', 'OVAL CARTIER *DIBAWA IBUK', 0, 2, 4.67, 4),
('GB282', 'G', 'B', '(B) OVAL CARTIER *DIBAWA ', 0, 2, 4.51, 4),
('GB284', 'G', 'B', 'OVAL PAKU AD*', 0, 2, 6.4, 4),
('GP081', 'G', 'P', '(B) FNCY PLAKATO 4MN *DBW', 0, 3, 2.76, 4),
('HB054', 'H', 'B', 'MELODY CAT *RETUR', 0, 2, 2.1, 4),
('HB056', 'H', 'B', 'TSUM CAT CE *RETUR', 0, 2, 1.9, 4),
('HB058', 'H', 'B', 'MINI FULL AD *RETUR', 0, 2, 1.65, 4),
('HB059', 'H', 'B', 'MINI FULL AD *RETUR', 0, 2, 1.63, 4),
('HM028', 'H', 'M', '5MN 2HATI 3MELODYCAT *RET', 0, 2, 2.98, 4),
('KM078', 'K', 'M', 'retur', 0, 1, 1.98, 4),
('KM090', 'K', 'M', '*PUTUS', 0, 1, 3.17, 4);

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
