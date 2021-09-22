-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2021 at 08:18 AM
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
('CV1931', 'C', 'V', '3BUNGA AD -ad', 0, 2, 0.91, 4, '2020-12-16 00:51:36', '2020-12-27 08:01:16'),
('CV245', 'C', 'V', 'PER 1BLT AD+ 1HATI AD *-a', 10, 3, 1.7, 4, '2020-06-16 04:38:40', '2020-12-27 08:00:36'),
('CV807', 'C', 'V', 'PER HATI BLT SALIPAN* -ad', 10, 3, 1.68, 4, '2020-06-16 04:38:40', '2020-12-27 08:00:45'),
('DV0363', 'D', 'V', 'HATI AD', 0, 3, 0.78, 4, '2021-01-05 03:11:54', '2021-01-05 06:04:53'),
('GB0511', 'G', 'B', 'OVAL 9BOLA MOZA*', 0, 2, 3.98, 4, '2020-11-02 08:36:10', '2021-02-18 00:42:28'),
('GB268', 'G', 'B', 'OVAL 7BOLA 3WNA*', 0, 2, 4.45, 4, '2020-06-16 04:38:40', '2021-02-18 00:41:49'),
('GM0228', 'G', 'M', '12 HATI 2BEL*', 0, 2, 3.75, 4, '2020-06-23 05:53:39', '2021-02-18 00:56:13'),
('GM0250', 'G', 'M', 'FNCY VARIASI BOT 3WNA*', 0, 2, 4.1, 4, '2020-07-08 08:46:30', '2021-02-18 00:55:36'),
('GM0288', 'G', 'M', 'FNCY 4MN*', 0, 3, 2.76, 4, '2020-08-24 07:47:04', '2021-02-18 00:56:28'),
('GM0354', 'G', 'M', 'BOLA PIPIH MOZA*', 0, 2, 4.89, 4, '2020-10-19 03:38:46', '2021-02-18 00:55:18'),
('GM0393', 'G', 'M', 'FNC DOUBLE BMBU MN 3WNA', 0, 3, 4.3, 4, '2020-12-22 00:27:01', '2021-02-18 00:42:47'),
('NN0059', 'N', 'N', 'MINNIE 1AD*', 0, 2, 2.88, 4, '2021-01-28 04:32:14', '2021-01-28 06:25:50');

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
