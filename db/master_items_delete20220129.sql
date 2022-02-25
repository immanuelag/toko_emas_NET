-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2022 at 05:52 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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

CREATE TABLE `master_items_delete` (
  `id` varchar(6) NOT NULL,
  `category` char(1) NOT NULL,
  `subcategory` char(1) NOT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `supplier` int(11) NOT NULL DEFAULT 0,
  `karat` int(11) NOT NULL,
  `berat` float NOT NULL,
  `stocks` int(11) NOT NULL DEFAULT 1,
  `createTimestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateTimestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `master_items`
--

INSERT INTO `master_items_delete` (`id`, `category`, `subcategory`, `nama`, `supplier`, `karat`, `berat`, `stocks`, `createTimestamp`, `updateTimestamp`) VALUES
('AM0284', 'A', 'M', '2SANTA MN SEGITIGA*PTS', 0, 3, 0.95, 4, '2021-01-28 05:53:14', '2021-04-18 01:52:19'),
('DV0428', 'D', 'V', 'PITA AD*retak', 0, 3, 0.89, 4, '2021-06-14 01:17:44', '2021-06-14 01:55:58'),
('DV0429', 'D', 'V', 'BNK CAT 2AD', 3, 2, 1.03, 4, '2021-06-14 01:18:36', '2021-06-14 02:36:04'),
('DV0430', 'D', 'V', 'STRAW 2AD', 3, 3, 0.93, 4, '2021-06-14 01:19:24', '2021-06-14 01:56:16'),
('GB0537', 'G', 'B', 'OVAL CARTIER* ibuk', 0, 2, 4.65, 4, '2020-12-03 06:21:23', '2021-06-14 01:54:02'),
('ML0004', 'M', 'L', 'KOKOT S KNG salah kode', 0, 2, 6.02, 4, '2021-04-25 02:50:20', '2021-05-04 05:03:47'),
('NN0066', 'N', 'N', 'FNCY JERAPAH *pts', 0, 2, 2.15, 4, '2021-04-22 05:50:41', '2021-06-14 01:53:44');

--
-- Triggers `master_items`
--
DELIMITER $$
CREATE TRIGGER `master_itemsinsert` BEFORE INSERT ON `master_items` FOR EACH ROW BEGIN SET NEW.createTimestamp=IF(ISNULL(NEW.createTimestamp) OR NEW.createTimestamp='2018-01-01 00:00:00', CURRENT_TIMESTAMP, IF(NEW.createTimestamp<CURRENT_TIMESTAMP, NEW.createTimestamp, CURRENT_TIMESTAMP));SET NEW.updateTimestamp=NEW.createTimestamp; END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `master_itemsupdate` BEFORE UPDATE ON `master_items` FOR EACH ROW SET NEW.updateTimestamp=IF(NEW.updateTimestamp<OLD.updateTimestamp, OLD.updateTimestamp, CURRENT_TIMESTAMP)
$$
DELIMITER ;

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
