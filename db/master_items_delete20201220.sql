-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2020 at 06:39 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.13

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

INSERT INTO `master_items` (`id`, `category`, `subcategory`, `nama`, `supplier`, `karat`, `berat`, `stocks`, `createTimestamp`, `updateTimestamp`) VALUES
('CV1657', 'C', 'V', 'LOVE YOU', 0, 2, 0.95, 4, '2020-10-14 03:18:05', '2020-12-20 02:34:19'),
('GB0465', 'G', 'B', 'OVAL RANTE CARTIER AD', 0, 2, 8.8, 4, '2020-09-14 02:54:53', '2020-12-14 00:58:09'),
('TD0573', 'T', 'D', 'ALFABET M AD', 0, 2, 1.45, 4, '2020-11-12 03:33:57', '2020-12-14 00:58:44'),
('TD0575', 'T', 'D', 'ALFABET D AD', 0, 2, 1.5, 4, '2020-11-12 03:34:37', '2020-12-14 00:58:36'),
('TD0601', 'T', 'D', 'BOLA FULL AD+SP', 0, 3, 0.63, 4, '2020-12-15 00:42:25', '2020-12-15 03:49:49');

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
