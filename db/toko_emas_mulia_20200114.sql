-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2020 at 09:27 AM
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
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `username` varchar(20) NOT NULL,
  `activity` varchar(80) NOT NULL,
  `query` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `items_check`
--

CREATE TABLE `items_check` (
  `id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `user` varchar(20) NOT NULL,
  `in_out` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items_check`
--

INSERT INTO `items_check` (`id`, `timestamp`, `user`, `in_out`, `status`) VALUES
(0, '2019-11-04 02:05:42', 'admin', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `items_check_detail`
--

CREATE TABLE `items_check_detail` (
  `id_stock_check` int(11) NOT NULL,
  `id_items` char(5) NOT NULL,
  `check_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(2, '37.5%'),
(3, '30%');

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
('B', 'AA'),
('C', 'CC'),
('D', 'CA'),
('G', 'GL'),
('H', 'GLA'),
('I', 'GLB'),
('K', 'KL'),
('L', 'KLP'),
('M', 'KLS'),
('N', 'KLA'),
('T', 'LT');

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
('AD001', 'A', 'D', '', 3, 2, 1.49, 2),
('AD002', 'A', 'D', '', 3, 2, 1.06, 1),
('AD003', 'A', 'D', '', 3, 2, 1.48, 3),
('AD004', 'A', 'D', '', 1, 2, 1.49, 2),
('AD005', 'A', 'D', '', 3, 2, 1.02, 2),
('AD006', 'A', 'D', '', 3, 2, 0.58, 3),
('AD007', 'A', 'D', '', 3, 2, 1.04, 1),
('AD008', 'A', 'D', '', 3, 2, 0.56, 3),
('AD009', 'A', 'D', '', 3, 2, 0.58, 3),
('AD010', 'A', 'D', '', 3, 2, 0.56, 3),
('AD011', 'A', 'D', '', 3, 2, 0.59, 3),
('AD012', 'A', 'D', '', 3, 2, 1.04, 1),
('AD013', 'A', 'D', '', 3, 2, 1.03, 1),
('AD014', 'A', 'D', '', 3, 2, 1.03, 2),
('AD015', 'A', 'D', '1AD', 3, 2, 0.57, 3),
('AD016', 'A', 'D', '1AD', 3, 2, 1.5, 2),
('AD017', 'A', 'D', '1 AD', 3, 3, 0.55, 3),
('AD018', 'A', 'D', '1 AD', 3, 3, 0.55, 3),
('AD019', 'A', 'D', '1 AD', 3, 3, 1.1, 1),
('AD020', 'A', 'D', '1 AD', 3, 3, 1.1, 1),
('AD021', 'A', 'D', '1 AD', 3, 3, 0.55, 3),
('AD022', 'A', 'D', '1 AD', 3, 3, 1.05, 1),
('AD023', 'A', 'D', '', 3, 3, 0.53, 2),
('AD024', 'A', 'D', '', 3, 3, 0.55, 3),
('AD025', 'A', 'D', '', 3, 3, 0.52, 2),
('AD026', 'A', 'D', '', 3, 3, 0.53, 2),
('AD027', 'A', 'D', '', 3, 3, 0.52, 1),
('AD028', 'A', 'D', '', 3, 3, 0.51, 1),
('AD029', 'A', 'D', '', 3, 3, 0.52, 1),
('AG001', 'A', 'G', '1AD', 3, 2, 0.65, 1),
('AG002', 'A', 'G', '1AD', 3, 2, 0.63, 3),
('AG003', 'A', 'G', '1AD', 3, 2, 0.62, 3),
('AG004', 'A', 'G', '1AD', 3, 2, 0.63, 1),
('AG005', 'A', 'G', '1AD', 3, 2, 0.65, 1),
('AG006', 'A', 'G', '1AD', 3, 2, 0.62, 1),
('AG007', 'A', 'G', '1AD', 3, 2, 0.65, 3),
('AG008', 'A', 'G', '1AD', 3, 2, 0.6, 3),
('AG009', 'A', 'G', '1AD', 3, 2, 0.64, 1),
('AG010', 'A', 'G', '1AD', 2, 2, 0.62, 3),
('AG011', 'A', 'G', 'BOLA PASIR', 0, 2, 1.43, 1),
('AG012', 'A', 'G', 'BOLA PASIR', 0, 2, 1.4, 1),
('AG013', 'A', 'G', 'BOLA PASIR', 0, 2, 1.38, 2),
('AG014', 'A', 'G', 'BOLA PASIR', 0, 2, 1.4, 1),
('AG015', 'A', 'G', 'BOLA PASIR', 0, 2, 1.41, 2),
('AG016', 'A', 'G', 'STGH BOLA MOZAIK', 0, 2, 1.13, 1),
('AG017', 'A', 'G', 'STGH BOLA MOZAIK', 0, 2, 1.08, 1),
('AG018', 'A', 'G', 'STGH BOLA MOZAIK', 0, 2, 1.08, 1),
('AG019', 'A', 'G', 'STGH BOLA MOZAIK', 0, 2, 1.13, 2),
('AG020', 'A', 'G', 'STGH BOLA MOZAIK', 0, 2, 1.12, 1),
('AG021', 'A', 'G', 'STGH BOLA MOZAIK', 0, 2, 0.83, 1),
('AG022', 'A', 'G', 'STGH BOLA MOZAIK', 0, 2, 0.82, 2),
('AG023', 'A', 'G', 'HATI MOZAIK', 0, 2, 0.8, 2),
('AG024', 'A', 'G', 'HATI MOZAIK', 0, 2, 0.83, 2),
('AG025', 'A', 'G', 'HATI MOZAIK', 0, 2, 0.82, 1),
('AG026', 'A', 'G', 'HATI MOZAIK', 0, 2, 0.8, 1),
('AG027', 'A', 'G', 'HATI MOZAIK', 0, 2, 0.78, 1),
('AG028', 'A', 'G', 'HATI MOZAIK', 0, 2, 0.83, 1),
('AG029', 'A', 'G', 'HATI MOZAIK', 0, 2, 0.76, 1),
('AG030', 'A', 'G', 'HATI MOZAIK', 0, 2, 0.81, 1),
('AG031', 'A', 'G', 'HATI MOZAIK', 0, 2, 0.8, 2),
('AG034', 'A', 'G', 'BUNGA', 7, 3, 1.22, 3),
('AG040', 'A', 'G', 'BUNGA BINTANG', 7, 3, 1.03, 2),
('AG042', 'A', 'G', 'STGH BLT', 7, 3, 1.07, 2),
('AG047', 'A', 'G', 'BLT AD', 1, 3, 1.3, 3),
('AG048', 'A', 'G', 'BOLA AD', 1, 3, 1.5, 3),
('AG049', 'A', 'G', '1AD', 3, 3, 1.1, 3),
('AG050', 'A', 'G', '1AD', 1, 3, 1.1, 2),
('AG051', 'A', 'G', 'HATI AD', 0, 3, 0.75, 3),
('AG052', 'A', 'G', 'HATI AD', 0, 3, 0.8, 3),
('AG053', 'A', 'G', '1 AD *', 3, 2, 0.65, 3),
('AG054', 'A', 'G', '1AD*', 3, 2, 0.65, 3),
('AG055', 'A', 'G', 'BLT FULL AD', 0, 3, 1.21, 2),
('AG056', 'A', 'G', 'BLT FULL AD', 0, 3, 1.2, 2),
('AG057', 'A', 'G', 'BOLA FULL AD', 0, 3, 1.35, 2),
('AG058', 'A', 'G', 'BOLA FULL AD', 0, 3, 1.35, 1),
('AG059', 'A', 'G', 'BOLA FULL AD', 0, 3, 1.36, 3),
('AG060', 'A', 'G', '1AD', 3, 3, 0.62, 3),
('AG061', 'A', 'G', 'BOLA FULL AD*', 0, 3, 1.5, 2),
('AG062', 'A', 'G', '1AD*', 3, 2, 0.59, 2),
('AG063', 'A', 'G', '1AD*', 3, 2, 0.58, 2),
('AJ001', 'A', 'J', 'VAR PTH', 3, 2, 1.06, 3),
('AJ002', 'A', 'J', 'VAR PTH', 3, 2, 1.05, 2),
('AJ003', 'A', 'J', 'VAR PTH', 3, 2, 1.07, 3),
('AJ004', 'A', 'J', 'VAR PTH', 3, 2, 1.03, 3),
('AJ005', 'A', 'J', 'VAR PTH retur rusak', 3, 2, 1, 4),
('AJ006', 'A', 'J', 'ULIR', 3, 2, 1.1, 1),
('AJ007', 'A', 'J', 'ULIR', 3, 2, 1.09, 1),
('AJ008', 'A', 'J', 'ULIR', 3, 2, 1.09, 1),
('AJ009', 'A', 'J', 'ULIR', 3, 2, 1.12, 2),
('AJ010', 'A', 'J', 'ULIR', 3, 2, 1.05, 2),
('AJ011', 'A', 'J', 'ULIR', 3, 2, 1.1, 2),
('AJ012', 'A', 'J', 'ULIR', 3, 2, 1.12, 1),
('AJ013', 'A', 'J', 'ULIR', 3, 2, 1.1, 1),
('AJ014', 'A', 'J', '2MN BLT', 3, 2, 1.03, 1),
('AJ015', 'A', 'J', '2MN BLT', 3, 2, 1, 3),
('AJ016', 'A', 'J', '2MN BLT', 3, 2, 0.98, 1),
('AJ017', 'A', 'J', '2MN BLT', 3, 2, 1.05, 1),
('AJ018', 'A', 'J', '2MN BLT', 3, 2, 1, 1),
('AJ019', 'A', 'J', '2MN BLT', 3, 2, 1.05, 1),
('AJ020', 'A', 'J', '1MN HATI', 3, 2, 1, 2),
('AJ021', 'A', 'J', '1MN HATI', 3, 2, 1, 2),
('AJ022', 'A', 'J', '1MN HATI', 3, 2, 1.02, 1),
('AJ023', 'A', 'J', '1MN HATI', 3, 2, 1, 1),
('AJ024', 'A', 'J', '1MN HATI', 3, 2, 1, 2),
('AJ025', 'A', 'J', '2MN BLT', 3, 2, 1.06, 2),
('AJ026', 'A', 'J', '2MN BLT', 3, 2, 1.03, 1),
('AJ027', 'A', 'J', '2MN BLT', 3, 2, 1.07, 1),
('AJ028', 'A', 'J', '2MN BLT', 3, 2, 1.05, 1),
('AJ029', 'A', 'J', '3MN BLT', 2, 2, 1.1, 3),
('AJ030', 'A', 'J', '3MN BLT', 3, 2, 1.05, 1),
('AJ031', 'A', 'J', '3MN BLT', 3, 2, 1.08, 1),
('AJ032', 'A', 'J', '3MN BLT', 3, 2, 1.09, 3),
('AJ033', 'A', 'J', '3MN BLT', 3, 2, 1.08, 1),
('AJ034', 'A', 'J', 'ULIR VAR PTH', 3, 2, 1.6, 3),
('AJ035', 'A', 'J', 'MOZAIK', 3, 3, 1.1, 3),
('AJ036', 'A', 'J', 'MOZAIK', 3, 3, 1.05, 2),
('AJ037', 'A', 'J', 'MOZAIK', 3, 3, 0.95, 3),
('AJ038', 'A', 'J', 'MOZAIK', 3, 3, 1.1, 2),
('AJ039', 'A', 'J', 'BESAR MOZAIK', 1, 2, 1.86, 2),
('AJ040', 'A', 'J', 'ULIR VAR PTH', 3, 3, 0.98, 2),
('AJ041', 'A', 'J', 'ULIR VAR PTH', 3, 3, 0.97, 3),
('AJ042', 'A', 'J', 'MOZAIK PTH*', 3, 2, 1.07, 2),
('AJ043', 'A', 'J', 'MOZA', 3, 3, 1, 2),
('AJ044', 'A', 'J', 'MOZA', 3, 3, 0.89, 2),
('AK032', 'A', 'K', 'BSR MOZAIK VAR PTH', 0, 2, 1.68, 2),
('AK033', 'A', 'K', 'BSR MOZAIK VAR PTH', 0, 2, 1.68, 1),
('AK034', 'A', 'K', 'BSR MOZAIK VAR PTH', 0, 2, 1.67, 1),
('AK035', 'A', 'K', 'BSR MOZAIK VAR PTH', 0, 2, 1.68, 2),
('AK036', 'A', 'K', 'BSR MOZAIK VAR PTH', 0, 2, 1.66, 2),
('AK037', 'A', 'K', 'KCL MOZAIK VAR PTH', 3, 2, 1.05, 1),
('AK038', 'A', 'K', 'KCL MOZAIK VAR PTH', 3, 2, 1.04, 2),
('AK039', 'A', 'K', 'KCL MOZAIK VAR PTH', 3, 2, 1.04, 2),
('AK040', 'A', 'K', 'KCL MOZAIK VAR PTH', 3, 2, 1.03, 1),
('AK041', 'A', 'K', 'KCL MOZAIK VAR PTH', 3, 2, 1.63, 2),
('AK042', 'A', 'K', 'KCL MOZAIK VAR PTH', 3, 2, 1.03, 1),
('AK043', 'A', 'K', 'KCL MOZAIK VAR PTH', 2, 2, 1.03, 3),
('AK044', 'A', 'K', 'KCL MOZAIK VAR PTH', 3, 2, 1.03, 1),
('AK045', 'A', 'K', 'KCL MOZAIK VAR PTH', 3, 2, 1, 1),
('AK046', 'A', 'K', 'KCL MOZAIK VAR PTH', 3, 2, 1.05, 2),
('AK047', 'A', 'K', 'MOZAIK', 3, 2, 0.55, 1),
('AK048', 'A', 'K', 'MOZAIK', 3, 2, 0.6, 3),
('AK049', 'A', 'K', 'MOZAIK', 3, 2, 0.65, 2),
('AK050', 'A', 'K', 'MOZAIK', 3, 2, 0.56, 3),
('AK051', 'A', 'K', 'MOZAIK', 3, 2, 0.6, 3),
('AK052', 'A', 'K', '3AD', 3, 2, 1.2, 3),
('AK053', 'A', 'K', '5AD', 3, 2, 1.14, 2),
('AK054', 'A', 'K', '5AD', 3, 2, 1.11, 3),
('AK055', 'A', 'K', 'BUNGA 5AD', 3, 2, 1.08, 3),
('AK056', 'A', 'K', '5AD 1AD GYG', 3, 2, 1.46, 3),
('AK057', 'A', 'K', '5AD 1AD GYG', 3, 2, 1.49, 3),
('AK058', 'A', 'K', '16AD PTH PINK', 3, 2, 1.68, 2),
('AK059', 'A', 'K', '16 AD', 3, 2, 1.69, 3),
('AK060', 'A', 'K', 'BUNGA 6AD', 3, 2, 1.18, 2),
('AK061', 'A', 'K', 'BUNGA 5AD', 3, 2, 1.2, 3),
('AK062', 'A', 'K', 'BUNGA 4AD', 3, 2, 1.08, 3),
('AK063', 'A', 'K', 'BUNGA 4AD', 3, 2, 1.1, 2),
('AK064', 'A', 'K', 'VAR PTH', 3, 3, 0.6, 3),
('AK065', 'A', 'K', 'VAR PTH', 3, 3, 1.1, 2),
('AK066', 'A', 'K', 'VAR PTH', 3, 3, 0.6, 3),
('AK067', 'A', 'K', 'VAR PTH', 1, 3, 1.1, 2),
('AK068', 'A', 'K', 'VAR PTH', 3, 3, 0.6, 1),
('AK069', 'A', 'K', 'MOZAIK VAR PTH', 3, 3, 1.05, 3),
('AK070', 'A', 'K', 'FULL AD *', 0, 2, 2.7, 2),
('AM001', 'A', 'M', 'TETES EMBUN', 0, 2, 0.87, 1),
('AM002', 'A', 'M', 'TETES EMBUN', 0, 2, 0.85, 2),
('AM003', 'A', 'M', 'TETES EMBUN', 0, 2, 0.86, 1),
('AM004', 'A', 'M', 'TETES EMBUN', 0, 2, 0.88, 1),
('AM005', 'A', 'M', 'TETES EMBUN', 0, 2, 0.92, 1),
('AM006', 'A', 'M', 'BOLA MOZAIK', 0, 2, 0.75, 1),
('AM007', 'A', 'M', 'BOLA MOZAIK', 0, 2, 0.75, 1),
('AM008', 'A', 'M', 'BOLA MOZAIK', 0, 2, 0.9, 2),
('AM009', 'A', 'M', 'HATI MOZAIK', 0, 2, 0.95, 1),
('AM010', 'A', 'M', 'HATI MOZAIK', 0, 2, 0.79, 3),
('AM011', 'A', 'M', 'HATI MOZAIK', 0, 2, 0.75, 2),
('AM012', 'A', 'M', 'HATI MOZAIK', 0, 2, 0.83, 2),
('AM013', 'A', 'M', 'HATI MOZAIK', 0, 2, 0.95, 1),
('AM014', 'A', 'M', 'HATI MOZAIK', 0, 2, 0.9, 2),
('AM015', 'A', 'M', '5BOLA 3WARNA', 0, 2, 1.55, 3),
('AM016', 'A', 'M', '5BOLA 3WARNA', 0, 2, 1.55, 3),
('AM017', 'A', 'M', '5BOLA 3WARNA', 0, 2, 1.55, 3),
('AM018', 'A', 'M', 'KUPU AD PINK', 0, 2, 1.3, 3),
('AM019', 'A', 'M', 'KUPU VAR PTH 2AD', 0, 2, 1.02, 3),
('AM020', 'A', 'M', 'KUPU VAR PTH 2AD', 0, 2, 1, 2),
('AM021', 'A', 'M', 'KUPU VAR PTH 2AD', 0, 2, 1, 1),
('AM022', 'A', 'M', 'KUPU VAR PTH 2AD', 0, 2, 0.98, 2),
('AM023', 'A', 'M', 'KUPU VAR PTH 2AD', 2, 2, 1, 3),
('AM024', 'A', 'M', 'BUNGA VAR PTH 1AD', 0, 2, 0.98, 1),
('AM025', 'A', 'M', 'BUNGA VAR PTH 1AD', 0, 2, 0.96, 2),
('AM026', 'A', 'M', 'BUNGA VAR PTH 1AD', 0, 2, 0.97, 1),
('AM027', 'A', 'M', 'BUNGA VAR PTH 1AD', 0, 2, 1, 2),
('AM028', 'A', 'M', 'WAJIK 9AD PINK', 0, 2, 0.8, 2),
('AM029', 'A', 'M', 'BTG FULL AD PINK', 0, 2, 0.81, 2),
('AM030', 'A', 'M', 'BLT LBG FULL AD PINK', 0, 2, 0.76, 3),
('AM031', 'A', 'M', 'HATI LBG 1AD', 0, 2, 0.61, 3),
('AM032', 'A', 'M', 'TETES LBG 1AD', 0, 2, 0.6, 3),
('AM033', 'A', 'M', 'BTG 1AD', 0, 2, 0.61, 3),
('AM034', 'A', 'M', 'BTG 1AD', 0, 2, 0.6, 3),
('AM035', 'A', 'M', 'PJG HATI LBG', 0, 2, 1.5, 2),
('AM036', 'A', 'M', 'PJG HATI LBG', 0, 2, 1.45, 3),
('AM037', 'A', 'M', 'PJG HATI LBG + 2HT', 0, 2, 1.24, 1),
('AM038', 'A', 'M', 'PJG HATI LBG + 2HT', 0, 2, 1.25, 1),
('AM039', 'A', 'M', 'PJG HATI LBG + 2HT', 0, 2, 1.5, 1),
('AM040', 'A', 'M', 'PJG HATI LBG + 2HT', 0, 2, 1.22, 3),
('AM041', 'A', 'M', 'PJG HATI LBG + 2HT', 0, 2, 1.24, 2),
('AM042', 'A', 'M', 'PJG HATI LBG + 2HT', 0, 2, 1.22, 3),
('AM043', 'A', 'M', 'PJG BOLA DLM BLT', 0, 2, 1.4, 3),
('AM044', 'A', 'M', 'PJG BOLA DLM BLT', 0, 2, 1.4, 1),
('AM045', 'A', 'M', 'PJG BOLA DLM BLT', 0, 2, 1.35, 3),
('AM046', 'A', 'M', 'BUNGA LBG', 0, 2, 1, 3),
('AM047', 'A', 'M', 'PJG SABIT', 0, 2, 0.9, 3),
('AM048', 'A', 'M', 'PJG SABIT', 0, 2, 0.9, 3),
('AM049', 'A', 'M', 'PJG SABIT', 0, 2, 0.9, 3),
('AM050', 'A', 'M', 'PJG 2BTG', 0, 2, 1.2, 3),
('AM051', 'A', 'M', 'PJG 2BTG', 0, 2, 1.23, 1),
('AM052', 'A', 'M', 'PJG 2BTG', 0, 2, 1.23, 3),
('AM053', 'A', 'M', 'PJG 1BOLA', 1, 2, 1, 3),
('AM054', 'A', 'M', 'PJG 1BOLA', 1, 2, 1.05, 3),
('AM055', 'A', 'M', 'PJG 1BOLA', 1, 2, 1.05, 3),
('AM056', 'A', 'M', 'BLT 1AD', 3, 2, 1.17, 2),
('AM057', 'A', 'M', 'BLT 1AD', 3, 2, 1.12, 2),
('AM058', 'A', 'M', 'BLT 1AD', 3, 2, 1.1, 2),
('AM059', 'A', 'M', 'BLT 1AD', 3, 2, 1.02, 2),
('AM060', 'A', 'M', 'BLT 1AD', 3, 2, 1.03, 2),
('AM061', 'A', 'M', 'TETES 1AD', 3, 2, 0.93, 3),
('AM062', 'A', 'M', 'TETES 1AD', 3, 2, 0.97, 3),
('AM063', 'A', 'M', 'TETES 1AD', 2, 2, 0.95, 3),
('AM064', 'A', 'M', 'TETES 1AD', 3, 2, 0.94, 3),
('AM065', 'A', 'M', 'TETES 1AD', 3, 2, 0.96, 3),
('AM066', 'A', 'M', 'PJG 3HATI 3WNA', 0, 2, 2.15, 3),
('AM067', 'A', 'M', 'BUNGA 1 AD', 3, 2, 1.04, 2),
('AM068', 'A', 'M', 'HATI LBG 1 AD', 3, 2, 2, 2),
('AM069', 'A', 'M', 'TETES LBNG 1 AD (A)', 3, 2, 2.35, 2),
('AM070', 'A', 'M', 'BTG LBG 2 AD', 3, 2, 2.61, 2),
('AM071', 'A', 'M', 'OVAL LBG DAUN 1 AD', 3, 2, 2.2, 2),
('AM072', 'A', 'M', 'DAUN LBG 2 AD', 3, 2, 2.18, 2),
('AM073', 'A', 'M', 'OVAL LBG VAR PTH AD PINK', 0, 2, 1.2, 2),
('AM074', 'A', 'M', 'KIPAS AD PINK', 0, 2, 1.26, 2),
('AM075', 'A', 'M', 'BUNGA 1 AD', 3, 2, 2.17, 2),
('AM076', 'A', 'M', 'KUPU 2 AD', 3, 2, 1.68, 2),
('AM077', 'A', 'M', 'BTG 1AD *AM034', 3, 2, 0.6, 2),
('AM078', 'A', 'M', 'KUDA PONI CAT ', 3, 3, 1.2, 3),
('AM079', 'A', 'M', 'BNK CAT', 3, 3, 1.2, 2),
('AM080', 'A', 'M', 'BNK POOH CAT ', 3, 3, 1.2, 2),
('AM081', 'A', 'M', 'BNK CAT', 3, 3, 1.1, 2),
('AM082', 'A', 'M', 'HATI LBG 1AD *AM031', 0, 2, 0.61, 3),
('AM083', 'A', 'M', 'TETES 1AD *AM063', 3, 2, 0.95, 2),
('AM084', 'A', 'M', 'SABIT', 0, 2, 0.9, 3),
('AM085', 'A', 'M', '2BLT LBG 2BOLA SANTA *', 3, 2, 1.4, 2),
('AM086', 'A', 'M', 'HATI STGH FULL AD', 3, 3, 1, 2),
('AM087', 'A', 'M', 'BULAT FULL AD', 3, 3, 1.1, 2),
('AM088', 'A', 'M', 'HATI AD *', 3, 2, 0.6, 3),
('AM089', 'A', 'M', 'TETES LBG AD PINK', 0, 3, 1.15, 2),
('AM090', 'A', 'M', 'TETES LBG AD PINK', 0, 3, 1.15, 2),
('AM091', 'A', 'M', 'PJG 3HATI 3WNA *', 0, 2, 2.15, 3),
('AM092', 'A', 'M', '5BOLA 3WNA*', 0, 2, 1.55, 2),
('AM093', 'A', 'M', 'HATI FULL AD', 3, 3, 1.17, 2),
('AM094', 'A', 'M', 'KUPU FULL AD', 3, 3, 1.05, 2),
('AM095', 'A', 'M', '*', 0, 2, 1.45, 2),
('AM096', 'A', 'M', '*', 4, 2, 1.4, 2),
('AM097', 'A', 'M', 'VAR PTH KUPU AD*', 0, 2, 1, 2),
('AM098', 'A', 'M', 'PJG HATI LBG', 0, 2, 1.22, 2),
('AM099', 'A', 'M', 'SABIT LBG*', 0, 2, 0.87, 2),
('AM100', 'A', 'M', 'BOLA MOZAIK*', 0, 2, 1.02, 2),
('AP001', 'A', 'P', '7AD', 3, 2, 1.13, 2),
('AP002', 'A', 'P', '7AD', 3, 2, 0.97, 3),
('AP003', 'A', 'P', '7AD', 3, 2, 1.08, 3),
('AP004', 'A', 'P', '7AD', 3, 2, 1.1, 3),
('AP005', 'A', 'P', '7AD', 3, 2, 1.11, 2),
('AP006', 'A', 'P', '7AD', 3, 2, 1.12, 2),
('AP007', 'A', 'P', '7AD', 3, 2, 1.2, 2),
('AP008', 'A', 'P', '7AD', 3, 2, 1, 3),
('AP009', 'A', 'P', '7AD', 3, 2, 1.1, 3),
('AP010', 'A', 'P', '7AD', 3, 2, 1.05, 3),
('AP011', 'A', 'P', '7AD', 3, 2, 1.62, 3),
('AP012', 'A', 'P', '7AD', 3, 2, 1.6, 3),
('AP013', 'A', 'P', 'CARTIER', 0, 2, 1.25, 2),
('AP014', 'A', 'P', 'CARTIER', 0, 2, 1.3, 2),
('AP015', 'A', 'P', 'CARTIER', 0, 2, 1.3, 1),
('AP016', 'A', 'P', 'CARTIER', 0, 2, 1.25, 2),
('AP017', 'A', 'P', 'CARTIER', 0, 2, 1.27, 2),
('AP018', 'A', 'P', 'MOZAIK', 0, 2, 0.7, 3),
('AP019', 'A', 'P', 'MOZAIK', 0, 2, 0.7, 3),
('AP020', 'A', 'P', 'TETES EMBUN', 0, 2, 1.41, 2),
('AP021', 'A', 'P', 'TETES EMBUN', 0, 2, 1.34, 3),
('AP022', 'A', 'P', 'TETES EMBUN', 0, 2, 1.4, 2),
('AP023', 'A', 'P', 'BOLA MOZAIK', 0, 2, 1.48, 2),
('AP024', 'A', 'P', 'BOLA MOZAIK', 0, 2, 1.5, 1),
('AP025', 'A', 'P', 'BOLA MOZAIK', 0, 2, 1.57, 2),
('AP026', 'A', 'P', 'HATI MOZAIK', 0, 2, 1.3, 2),
('AP027', 'A', 'P', 'HATI MOZAIK', 0, 2, 1.33, 2),
('AP028', 'A', 'P', 'BOLA AD', 0, 2, 1.84, 2),
('AP029', 'A', 'P', 'BOLA AD', 0, 2, 1.8, 1),
('AP030', 'A', 'P', 'BOLA AD', 0, 2, 1.82, 2),
('AP031', 'A', 'P', 'BOLA AD', 2, 2, 1.8, 3),
('AP032', 'A', 'P', 'BOLA AD', 0, 2, 1.83, 3),
('AP033', 'A', 'P', 'HATI LBG AD', 0, 2, 1.5, 2),
('AP034', 'A', 'P', '7AD', 1, 2, 0.95, 3),
('AP035', 'A', 'P', 'BUNGA FULL AD (A)', 0, 2, 3.2, 2),
('AP036', 'A', 'P', 'FULL AD', 0, 2, 2.64, 3),
('AP037', 'A', 'P', 'RAINBOW', 0, 2, 1.68, 2),
('AP038', 'A', 'P', 'KERAWANG', 10, 3, 1.35, 3),
('AP039', 'A', 'P', 'BUNGA AD PINK', 3, 3, 1.05, 3),
('AP040', 'A', 'P', 'BUNGA AD PTH', 3, 3, 1.05, 3),
('AP041', 'A', 'P', '4AD PTH', 3, 3, 1, 3),
('AP042', 'A', 'P', '4AD PTH', 3, 3, 1, 3),
('AP043', 'A', 'P', 'SEGITIGA AD', 3, 3, 1.1, 2),
('AP044', 'A', 'P', 'BULAT KRWNG', 3, 3, 1.4, 2),
('AP045', 'A', 'P', '3AD *', 3, 2, 1.2, 2),
('AP046', 'A', 'P', '*', 0, 2, 1.05, 2),
('AP047', 'A', 'P', 'VAR PTH HATI AD PINK', 0, 3, 1.54, 3),
('AP048', 'A', 'P', 'DAUN VAR PTH+AD', 0, 3, 1.65, 2),
('AP049', 'A', 'P', '7AD', 0, 2, 1.08, 2),
('AP050', 'A', 'P', '7AD', 0, 2, 1.03, 2),
('AP051', 'A', 'P', '7AD', 0, 2, 1.13, 2),
('AP052', 'A', 'P', '7AD', 0, 2, 1.1, 2),
('AP053', 'A', 'P', 'VAR PTH PINK', 0, 3, 1.54, 2),
('AP054', 'A', 'P', 'VAR PTH PINK', 0, 3, 1.53, 2),
('AP055', 'A', 'P', 'VAR PTH AD', 0, 3, 1.6, 1),
('AP056', 'A', 'P', 'VAR PTH AD', 0, 3, 1.6, 2),
('AP057', 'A', 'P', '', 10, 3, 1.28, 2),
('AP058', 'A', 'P', '', 10, 3, 1.3, 2),
('AP059', 'A', 'P', 'BUNGA AD*', 3, 2, 1.11, 2),
('AP060', 'A', 'P', 'BUNGA AD*', 3, 2, 1.07, 2),
('AP061', 'A', 'P', '5AD + 1AD GOYANG', 3, 2, 1.46, 2),
('AP062', 'A', 'P', 'KERAWANG*', 10, 3, 1.29, 2),
('AP063', 'A', 'P', '5AD + 1AD GOYANG', 3, 2, 1.47, 2),
('AS001', 'A', 'S', 'FULL AD S', 3, 3, 1.3, 3),
('AS002', 'A', 'S', 'FULL AD', 3, 3, 1, 3),
('AS003', 'A', 'S', 'FULL AD', 3, 2, 1.25, 1),
('AS004', 'A', 'S', 'FULL AD', 3, 3, 0.97, 2),
('AS005', 'A', 'S', '*', 3, 3, 0.95, 2),
('BD001', 'B', 'D', 'HK FULL AD', 0, 3, 0.95, 3),
('BD002', 'B', 'D', 'CAT MIKI AD', 0, 3, 1.15, 3),
('BD003', 'B', 'D', 'CAT PONI PTH UNGU+AD', 0, 3, 1.15, 2),
('BD004', 'B', 'D', 'CAT PONI PINK+AD', 2, 3, 1.25, 2),
('BJ001', 'B', 'J', 'ULIR', 3, 2, 0.51, 3),
('BJ002', 'B', 'J', 'ULIR', 3, 2, 0.51, 3),
('BJ003', 'B', 'J', 'ULIR', 3, 2, 0.52, 3),
('BJ004', 'B', 'J', 'ULIR', 3, 2, 0.53, 3),
('BJ005', 'B', 'J', 'ULIR', 3, 2, 0.53, 3),
('BJ006', 'B', 'J', 'MN 1BTG', 3, 2, 0.6, 3),
('BJ007', 'B', 'J', 'MN 1BTG', 3, 2, 0.55, 3),
('BJ008', 'B', 'J', 'MN 1BTG', 3, 2, 0.57, 3),
('BJ009', 'B', 'J', 'MN 1BTG', 3, 2, 0.56, 3),
('BJ010', 'B', 'J', 'MN 1BTG', 3, 2, 0.57, 3),
('BJ011', 'B', 'J', 'MN 1BTG *BJ010', 2, 2, 0.57, 3),
('BJ012', 'B', 'J', '1BTG *', 0, 2, 0.57, 3),
('BJ013', 'B', 'J', 'ULIR MOZAIK*', 3, 2, 0.51, 3),
('BJ014', 'B', 'J', '', 3, 2, 0.5, 1),
('BJ015', 'B', 'J', '', 3, 2, 0.51, 1),
('BJ016', 'B', 'J', '', 3, 2, 0.58, 1),
('BJ017', 'B', 'J', '', 3, 2, 0.5, 1),
('BJ018', 'B', 'J', '', 3, 2, 0.54, 1),
('BJ019', 'B', 'J', '', 3, 2, 0.5, 1),
('BJ020', 'B', 'J', '', 3, 2, 0.55, 2),
('BJ021', 'B', 'J', '', 3, 2, 0.51, 2),
('BJ022', 'B', 'J', '', 3, 2, 0.56, 2),
('BJ023', 'B', 'J', '', 3, 2, 0.5, 2),
('BJ024', 'B', 'J', '1MN GOYANG', 0, 2, 0.55, 1),
('BJ025', 'B', 'J', '1MN GOYANG', 0, 2, 0.55, 1),
('BJ026', 'B', 'J', '1MN GOYANG', 0, 2, 0.55, 3),
('BJ027', 'B', 'J', '1MN GOYANG', 0, 2, 0.55, 2),
('BJ028', 'B', 'J', '1MN GOYANG', 0, 2, 0.55, 3),
('BJ029', 'B', 'J', 'ULIR', 0, 2, 0.5, 2),
('BJ030', 'B', 'J', 'ULIR', 0, 2, 0.5, 2),
('BJ031', 'B', 'J', 'ULIR', 0, 2, 0.5, 2),
('BJ032', 'B', 'J', 'ULIR', 0, 2, 0.5, 1),
('BJ033', 'B', 'J', 'ULIR', 0, 2, 0.5, 2),
('BJ034', 'B', 'J', '1BOLA', 0, 2, 0.54, 2),
('BJ035', 'B', 'J', '1BOLA', 0, 2, 0.51, 3),
('BJ036', 'B', 'J', '1BOLA', 0, 2, 0.51, 3),
('BJ037', 'B', 'J', '1BTG', 0, 2, 0.54, 2),
('BJ038', 'B', 'J', '1BTG', 0, 2, 0.54, 2),
('BM001', 'B', 'M', 'CAT OWL PINK', 1, 2, 0.85, 3),
('BM002', 'B', 'M', 'CAT OWL PINK', 1, 2, 0.87, 2),
('BM003', 'B', 'M', 'CAT OWL PINK', 1, 2, 0.86, 2),
('BM004', 'B', 'M', 'CAT OWL BIRU', 1, 2, 0.9, 2),
('BM005', 'B', 'M', 'CAT OWL BIRU', 1, 2, 0.9, 2),
('BM006', 'B', 'M', 'CAT OWL BIRU', 1, 2, 0.9, 2),
('BM007', 'B', 'M', 'CAT KELINCI', 1, 2, 0.8, 2),
('BM008', 'B', 'M', 'CAT KELINCI', 1, 2, 0.82, 2),
('BM009', 'B', 'M', 'CAT KELINCI', 1, 2, 0.78, 3),
('BM010', 'B', 'M', 'CAT STROBERI 1AD', 3, 2, 1.07, 2),
('BM011', 'B', 'M', 'CAT STROBERI 1AD', 3, 2, 0.95, 3),
('BM012', 'B', 'M', 'CAT HK 1AD', 3, 2, 1.28, 2),
('BM013', 'B', 'M', 'CAT HK 1AD', 3, 2, 1.22, 2),
('BM014', 'B', 'M', 'CAT FROZEN 1AD', 3, 2, 1.23, 3),
('BM015', 'B', 'M', 'CAT FROZEN 1AD', 3, 2, 1.22, 2),
('BM016', 'B', 'M', 'CAT TIMBUL MELODY 1AD', 1, 2, 1.07, 2),
('BM017', 'B', 'M', 'CAT TIMBUL MELODY 1AD', 1, 2, 1.07, 2),
('BM018', 'B', 'M', 'CAT MIKI AD PINK', 3, 2, 0.98, 2),
('BM019', 'B', 'M', 'CAT MIKI AD PINK', 3, 2, 1, 2),
('BM020', 'B', 'M', 'HK FULL AD', 3, 2, 1.12, 2),
('BM021', 'B', 'M', 'HK FULL AD', 3, 2, 1.08, 2),
('BM022', 'B', 'M', 'CAT HK PITA AD', 3, 2, 1.07, 3),
('BM023', 'B', 'M', 'CAT HK PITA AD', 3, 2, 1.07, 3),
('BM024', 'B', 'M', 'CAT FROZEN 1 AD', 3, 2, 1.2, 2),
('BM025', 'B', 'M', 'CAT STROBERY  AD', 3, 2, 1.1, 2),
('BM026', 'B', 'M', 'KUDA PONI 1AD', 2, 3, 1.05, 3),
('BM027', 'B', 'M', 'HK AD PINK', 2, 3, 1, 3),
('BM028', 'B', 'M', 'KUPU AD', 3, 3, 1, 2),
('BM029', 'B', 'M', 'SAPI CAT 1AD', 3, 3, 1.1, 3),
('BM030', 'B', 'M', 'BEBEK CAT', 3, 3, 1.1, 2),
('BM031', 'B', 'M', 'MIKI CAT', 0, 2, 1.15, 3),
('BM032', 'B', 'M', 'MIKI CAT', 0, 2, 1.2, 2),
('BM033', 'B', 'M', 'DONALD CAT', 0, 2, 1.08, 3),
('BM034', 'B', 'M', 'HK CAT', 0, 2, 1.25, 1),
('CL001', 'C', 'L', 'VAR PASIR', 0, 2, 1.12, 3),
('CL002', 'C', 'L', 'VAR PASIR', 0, 2, 1.1, 2),
('CL003', 'C', 'L', 'VAR PASIR', 0, 2, 1.1, 2),
('CL004', 'C', 'L', 'PASIR MOZAIK', 0, 2, 1.19, 3),
('CL005', 'C', 'L', 'PASIR MOZAIK', 0, 2, 1.17, 3),
('CL006', 'C', 'L', 'MOZAIK', 0, 2, 0.69, 3),
('CL007', 'C', 'L', 'MOZAIK', 0, 2, 0.7, 3),
('CL008', 'C', 'L', 'MOZAIK', 0, 2, 0.7, 3),
('CL009', 'C', 'L', 'MOZAIK', 0, 2, 0.71, 3),
('CL010', 'C', 'L', 'MOZAIK', 0, 2, 0.68, 3),
('CL011', 'C', 'L', 'MOZAIK', 0, 2, 0.71, 2),
('CL012', 'C', 'L', 'TN VAR PTH 1AD', 5, 2, 2.16, 2),
('CL013', 'C', 'L', 'TN VAR PTH 1AD', 5, 2, 2.19, 2),
('CL014', 'C', 'L', 'TN VAR PTH 1AD', 5, 2, 2.25, 3),
('CL015', 'C', 'L', 'TN VAR PTH 1AD', 5, 2, 2.17, 3),
('CL016', 'C', 'L', 'TN VAR PTH 1AD', 5, 2, 2.06, 3),
('CL017', 'C', 'L', 'TN VAR PTH 1AD', 5, 2, 2.18, 3),
('CL018', 'C', 'L', 'MOZAIK', 0, 2, 1.65, 2),
('CL019', 'C', 'L', 'MOZAIK', 0, 2, 1.62, 3),
('CL020', 'C', 'L', 'MOZAIK', 0, 2, 1.61, 2),
('CL021', 'C', 'L', 'MOZAIK', 0, 2, 1.54, 3),
('CL022', 'C', 'L', 'MOZAIK', 0, 2, 1.66, 2),
('CL023', 'C', 'L', 'MOZAIK', 0, 2, 1.52, 3),
('CL024', 'C', 'L', 'MOZAIK', 0, 2, 1.6, 3),
('CL025', 'C', 'L', 'MOZAIK', 0, 2, 1.65, 2),
('CL026', 'C', 'L', 'MOZAIK', 0, 2, 1.58, 2),
('CL027', 'C', 'L', 'MOZAIK', 0, 2, 1.7, 3),
('CL028', 'C', 'L', 'MOZAIK VAR PUTIH', 0, 2, 1.45, 2),
('CL029', 'C', 'L', 'MOZAIK VAR PUTIH', 0, 2, 1.44, 3),
('CL030', 'C', 'L', 'MOZAIK VAR PUTIH', 0, 2, 1.46, 3),
('CL031', 'C', 'L', 'MOZAIK VAR PUTIH', 0, 2, 1.43, 3),
('CL032', 'C', 'L', '', 7, 3, 2.15, 3),
('CL033', 'C', 'L', '', 7, 3, 2.05, 2),
('CL034', 'C', 'L', '', 7, 3, 2.05, 2),
('CL035', 'C', 'L', 'VAR PTH AD', 5, 2, 2.3, 2),
('CL036', 'C', 'L', 'MOZAIK *', 0, 2, 0.7, 2),
('CL037', 'C', 'L', 'PASIR MOZAIK*', 0, 2, 1.19, 2),
('CL038', 'C', 'L', 'VAR GARIS MOZAIK*', 0, 2, 1.12, 2),
('CL039', 'C', 'L', 'VAR PTH MOZAIK 1AD 11', 0, 3, 1.6, 3),
('CL040', 'C', 'L', 'VAR PTH MOZAIK 1AD 12', 0, 3, 1.57, 2),
('CL041', 'C', 'L', 'VAR PTH MOZAIK 1AD 19', 0, 3, 1.66, 2),
('CL042', 'C', 'L', 'VAR PTH MOZAIK 1AD 13', 0, 3, 1.63, 2),
('CL043', 'C', 'L', 'VAR PTH MOZAIK 1AD 14', 0, 3, 1.66, 1),
('CL044', 'C', 'L', 'VAR PTH MOZAIK 1AD 16', 0, 3, 1.67, 3),
('CL045', 'C', 'L', 'VAR PTH MOZAIK 1AD 10', 0, 3, 1.49, 3),
('CL046', 'C', 'L', 'VAR PTH MOZAIK 1AD 17', 0, 3, 1.67, 2),
('CL047', 'C', 'L', 'VAR PTH MOZAIK 1AD 20', 0, 3, 1.68, 2),
('CL048', 'C', 'L', 'VAR PTH MOZAIK 1AD 18', 0, 3, 1.65, 3),
('CL049', 'C', 'L', 'MOZAIK', 0, 2, 0.81, 3),
('CL050', 'C', 'L', 'MOZAIK', 0, 2, 0.77, 2),
('CL051', 'C', 'L', 'MOZAIK', 0, 2, 0.83, 3),
('CL052', 'C', 'L', 'VAR PTH MOZAIK', 0, 2, 1.47, 3),
('CL053', 'C', 'L', 'VAR PTH MOZAIK', 0, 2, 1.46, 2),
('CL054', 'C', 'L', 'VAR PTH 1AD*', 0, 2, 1.95, 2),
('CL055', 'C', 'L', 'MOZA 3WNA', 0, 2, 1.51, 2),
('CL056', 'C', 'L', 'MOZAIK*', 0, 2, 0.7, 2),
('CL057', 'C', 'L', 'VAR PTH 1AD*', 0, 3, 1.65, 2),
('CL058', 'C', 'L', 'MOZAIK*', 0, 2, 0.8, 2),
('CL059', 'C', 'L', 'VAR PTH MOZAIK*', 0, 2, 1.49, 2),
('CL060', 'C', 'L', 'VAR PTH 1AD*', 5, 2, 2.04, 2),
('CV001', 'C', 'V', 'AD HATI', 0, 2, 2.18, 3),
('CV002', 'C', 'V', 'KOTAK AD', 0, 2, 1.58, 2),
('CV003', 'C', 'V', 'AD BULAT', 0, 2, 1.6, 3),
('CV004', 'C', 'V', 'BTG AD HATI', 0, 2, 1.12, 3),
('CV005', 'C', 'V', 'BTG AD HATI', 0, 2, 1.1, 3),
('CV006', 'C', 'V', 'HATI AD PINK', 0, 2, 1.62, 3),
('CV007', 'C', 'V', '2PITA AD', 0, 2, 1.25, 3),
('CV008', 'C', 'V', 'KOTAK AD', 0, 2, 1.52, 2),
('CV009', 'C', 'V', '2PITA AD', 0, 2, 1.1, 3),
('CV010', 'C', 'V', 'AD C', 1, 2, 1.71, 2),
('CV011', 'C', 'V', 'PER HATI PTH', 0, 2, 1.9, 3),
('CV012', 'C', 'V', 'AD HATI PINK', 0, 2, 1.55, 2),
('CV013', 'C', 'V', 'AD HATI', 0, 2, 1.36, 2),
('CV014', 'C', 'V', 'AD KUPU', 0, 2, 1.63, 3),
('CV015', 'C', 'V', 'PTH 1AD', 0, 2, 2.28, 3),
('CV016', 'C', 'V', 'RANTAI', 0, 2, 2.16, 2),
('CV017', 'C', 'V', 'BLT LBNG', 0, 2, 0.55, 3),
('CV018', 'C', 'V', 'KUPU STGH AD', 0, 2, 1.42, 3),
('CV019', 'C', 'V', '1 AD ORANGE', 0, 2, 1.61, 3),
('CV020', 'C', 'V', 'ANGSA RAINBOW', 0, 2, 2.34, 2),
('CV021', 'C', 'V', 'HATI 5AD', 0, 2, 1.07, 2),
('CV022', 'C', 'V', 'PER 2BLT AD', 0, 2, 1.37, 3),
('CV023', 'C', 'V', 'KUPU 2AD BULAT', 0, 2, 1.5, 3),
('CV024', 'C', 'V', 'HATI AD', 0, 2, 1.31, 3),
('CV025', 'C', 'V', 'BOLA AD RAINBOW', 0, 2, 1.88, 2),
('CV026', 'C', 'V', '3HATI AD', 0, 2, 1.07, 2),
('CV027', 'C', 'V', 'KUPU STGH AD', 0, 2, 1.48, 2),
('CV028', 'C', 'V', 'CAT AD KOTAK', 0, 2, 2.06, 2),
('CV030', 'C', 'V', 'BTG AD PINK', 0, 2, 1.23, 3),
('CV031', 'C', 'V', 'BTG AD', 0, 2, 1.54, 2),
('CV032', 'C', 'V', '9 AD', 0, 2, 0.9, 2),
('CV033', 'C', 'V', 'HATI LBG', 0, 2, 0.85, 2),
('CV034', 'C', 'V', 'DOLPHIN RAINBOW', 0, 2, 2.32, 2),
('CV035', 'C', 'V', '1AD BSR+4AD KCL', 0, 2, 1.92, 2),
('CV036', 'C', 'V', '9AD', 0, 2, 0.93, 2),
('CV037', 'C', 'V', '3HATI AD', 0, 2, 1.03, 2),
('CV038', 'C', 'V', 'AD HATI', 0, 2, 1.22, 2),
('CV039', 'C', 'V', 'PER RAINBOW', 0, 2, 2.23, 3),
('CV040', 'C', 'V', '1AD MERAH', 0, 2, 2.1, 3),
('CV041', 'C', 'V', '1AD PUTIH', 0, 2, 2.22, 2),
('CV042', 'C', 'V', '2AD', 0, 2, 0.93, 2),
('CV043', 'C', 'V', 'KOTAK AD', 0, 2, 1.64, 2),
('CV044', 'C', 'V', 'HATI AD', 0, 2, 0.88, 2),
('CV045', 'C', 'V', 'PTH +AD', 0, 2, 1.12, 3),
('CV046', 'C', 'V', 'AD HATI', 0, 2, 1.32, 2),
('CV047', 'C', 'V', 'AD BULAT', 0, 2, 2.5, 3),
('CV048', 'C', 'V', '2HATI AD', 0, 2, 1.22, 3),
('CV049', 'C', 'V', 'BULAT 1AD', 0, 2, 1.43, 3),
('CV050', 'C', 'V', '1AD', 0, 2, 0.92, 2),
('CV051', 'C', 'V', 'CAT RANTAI AD', 0, 2, 4.09, 3),
('CV052', 'C', 'V', 'CAT AD', 0, 2, 2.18, 3),
('CV053', 'C', 'V', 'ANGSA AD PINK', 0, 2, 1.63, 3),
('CV054', 'C', 'V', 'HATI', 0, 2, 1.32, 3),
('CV055', 'C', 'V', 'PER 3KUPU AD', 0, 2, 2.42, 3),
('CV056', 'C', 'V', '2 PITA AD', 0, 2, 1.19, 2),
('CV057', 'C', 'V', 'HATI MAHKOTA AD', 0, 2, 1.12, 2),
('CV058', 'C', 'V', '1AD BSR FULL AD KECIL', 0, 2, 1.95, 3),
('CV059', 'C', 'V', 'KUPU', 0, 2, 0.8, 2),
('CV060', 'C', 'V', 'CAT AD', 0, 2, 2.17, 3),
('CV061', 'C', 'V', 'HATI AD PINK', 0, 2, 0.76, 3),
('CV062', 'C', 'V', 'CARTIER', 0, 2, 2.03, 2),
('CV063', 'C', 'V', 'PTH AD', 0, 2, 1.23, 3),
('CV065', 'C', 'V', '2AD', 0, 2, 0.92, 3),
('CV066', 'C', 'V', 'BSR AD', 0, 2, 3.28, 3),
('CV067', 'C', 'V', '3AD', 0, 2, 0.8, 3),
('CV068', 'C', 'V', 'BSR PTH +AD', 0, 2, 4.07, 2),
('CV069', 'C', 'V', 'BSR AD', 0, 2, 3.83, 3),
('CV070', 'C', 'V', 'CAT AD', 0, 2, 2.34, 2),
('CV071', 'C', 'V', 'PITA AD PINK', 0, 2, 1.06, 2),
('CV072', 'C', 'V', '1AD BSR', 0, 2, 1.74, 3),
('CV073', 'C', 'V', 'AD', 0, 2, 1.4, 3),
('CV074', 'C', 'V', 'PER AD KUPU', 0, 2, 1.79, 3),
('CV075', 'C', 'V', 'AD HTM', 0, 2, 2.9, 3),
('CV076', 'C', 'V', 'RANTAI', 0, 2, 2, 3),
('CV077', 'C', 'V', 'VAR PUTIH AD', 0, 2, 1.6, 3),
('CV078', 'C', 'V', '1 AD BSR', 0, 2, 2.2, 3),
('CV079', 'C', 'V', '3HARI AD', 0, 2, 1.06, 2),
('CV080', 'C', 'V', 'PTH AD', 0, 2, 1.06, 3),
('CV081', 'C', 'V', 'HATI AD', 0, 2, 0.88, 2),
('CV082', 'C', 'V', 'BSR AD', 0, 2, 2.5, 3),
('CV083', 'C', 'V', '2 HATI LBG', 0, 2, 0.8, 3),
('CV084', 'C', 'V', 'BSR AD', 0, 2, 2.67, 3),
('CV085', 'C', 'V', 'HATI AD', 0, 2, 0.82, 3),
('CV086', 'C', 'V', 'PTH AD', 0, 2, 1.52, 3),
('CV087', 'C', 'V', 'CAT AD', 0, 2, 2.2, 3),
('CV088', 'C', 'V', 'PETIR AD', 0, 2, 1.3, 3),
('CV089', 'C', 'V', 'AD BLT', 0, 2, 1.12, 2),
('CV090', 'C', 'V', 'CAT AD', 0, 2, 2.22, 3),
('CV091', 'C', 'V', 'BUNGA BLT AD', 0, 2, 1.9, 3),
('CV092', 'C', 'V', '2AD', 0, 2, 0.93, 2),
('CV093', 'C', 'V', '2BLT AD PINK', 0, 2, 1.5, 3),
('CV094', 'C', 'V', '2AD', 0, 2, 0.95, 2),
('CV095', 'C', 'V', '2BLT AD', 0, 2, 1.42, 3),
('CV096', 'C', 'V', '2BLT AD', 0, 2, 1.41, 3),
('CV097', 'C', 'V', 'PER 2AD', 0, 2, 2.04, 3),
('CV098', 'C', 'V', 'PER 2HATI PTH', 0, 2, 1.63, 3),
('CV099', 'C', 'V', 'HATI 5AD', 0, 2, 1.03, 2),
('CV100', 'C', 'V', 'PTH AD', 0, 2, 1.2, 3),
('CV101', 'C', 'V', 'AD PINK', 0, 2, 1.54, 3),
('CV102', 'C', 'V', 'PER PTH', 0, 2, 3, 2),
('CV103', 'C', 'V', 'BSR BOLA +AD', 0, 2, 3.16, 3),
('CV104', 'C', 'V', 'BSR SILANG AD', 0, 2, 2.37, 2),
('CV105', 'C', 'V', 'BTG AD PINK', 0, 2, 1.22, 3),
('CV106', 'C', 'V', 'BSR LBG AD', 0, 2, 3, 3),
('CV107', 'C', 'V', 'BSR 3BOLA AD', 0, 2, 3.65, 3),
('CV108', 'C', 'V', 'SABUK AD', 0, 2, 1.87, 3),
('CV109', 'C', 'V', 'AD BLT', 0, 2, 1.29, 2),
('CV110', 'C', 'V', 'CHANEL AD', 0, 2, 1.53, 2),
('CV111', 'C', 'V', 'KUPU STGH AD', 0, 2, 1.52, 2),
('CV112', 'C', 'V', '1AD BIRU', 0, 2, 2.3, 3),
('CV113', 'C', 'V', '3AD', 0, 2, 0.83, 2),
('CV114', 'C', 'V', 'SABUK CAT AD', 0, 2, 2.06, 3),
('CV115', 'C', 'V', '2AD', 0, 2, 0.93, 2),
('CV116', 'C', 'V', '1AD BSR', 0, 2, 2.04, 2),
('CV117', 'C', 'V', 'HATI LBG', 0, 2, 0.82, 2),
('CV118', 'C', 'V', 'KUPU', 0, 2, 0.86, 2),
('CV119', 'C', 'V', '2AD', 0, 2, 0.94, 2),
('CV120', 'C', 'V', 'HATI LBG', 0, 2, 0.8, 2),
('CV121', 'C', 'V', '3AD', 0, 2, 0.9, 3),
('CV122', 'C', 'V', '3HATI AD', 0, 2, 0.9, 2),
('CV123', 'C', 'V', 'CAT HATI AD', 0, 2, 1.36, 2),
('CV124', 'C', 'V', '2AD PINK', 0, 2, 1.44, 3),
('CV125', 'C', 'V', '2AD BLT', 0, 2, 1.38, 3),
('CV126', 'C', 'V', 'PER 3HATI PTH', 0, 2, 2, 3),
('CV127', 'C', 'V', 'PTH AD', 0, 2, 1.5, 3),
('CV128', 'C', 'V', '2BLT AD PINK', 0, 2, 1.5, 3),
('CV129', 'C', 'V', 'KUPU STGH AD', 0, 2, 1.38, 3),
('CV130', 'C', 'V', 'PER 4BLT AD PINK', 0, 2, 1.47, 3),
('CV131', 'C', 'V', 'HATI LBG', 0, 2, 0.86, 2),
('CV132', 'C', 'V', 'BSR CAT + PTH', 1, 2, 2.78, 3),
('CV133', 'C', 'V', 'BSR CAT + PTH', 1, 2, 2.8, 3),
('CV134', 'C', 'V', 'AD C', 1, 2, 1.69, 2),
('CV135', 'C', 'V', 'BSR LBG', 3, 2, 3.45, 2),
('CV136', 'C', 'V', 'WAJIK PTH AD', 3, 2, 1.55, 3),
('CV137', 'C', 'V', 'WAJIK PTH AD', 3, 2, 1.48, 3),
('CV138', 'C', 'V', 'WAJIK PTH AD', 3, 2, 1.5, 3),
('CV139', 'C', 'V', 'WAJIK PTH AD PINK', 3, 2, 1.43, 3),
('CV140', 'C', 'V', 'OVAL AD PINK', 3, 2, 1.39, 2),
('CV141', 'C', 'V', 'AD PINK BIRU', 3, 2, 1.54, 3),
('CV143', 'C', 'V', 'PTH 1AD', 0, 2, 1.7, 3),
('CV144', 'C', 'V', 'PTH 1AD ', 0, 2, 1.75, 3),
('CV145', 'C', 'V', 'PTH 1AD', 0, 2, 1.95, 3),
('CV146', 'C', 'V', 'PTH 1AD', 0, 2, 1.86, 3),
('CV147', 'C', 'V', 'PTH 1AD', 0, 2, 1.95, 3),
('CV148', 'C', 'V', 'PTH 1AD', 0, 2, 2.24, 2),
('CV149', 'C', 'V', 'PTH 1AD', 0, 2, 1.58, 3),
('CV150', 'C', 'V', 'PTH 1AD', 0, 2, 1.66, 3),
('CV151', 'C', 'V', 'PTH 1AD', 0, 2, 2.58, 2),
('CV152', 'C', 'V', 'PTH 1AD', 0, 2, 1.76, 3),
('CV153', 'C', 'V', 'PTH 1AD', 0, 2, 1.75, 3),
('CV154', 'C', 'V', 'BUNGA LBG', 0, 2, 0.9, 3),
('CV155', 'C', 'V', 'WAJIK LBG', 0, 2, 0.9, 3),
('CV156', 'C', 'V', 'WAJIK LBG', 0, 2, 0.98, 3),
('CV157', 'C', 'V', 'BUNGA LBG', 0, 2, 0.88, 3),
('CV158', 'C', 'V', 'WAJIK AD', 0, 2, 1.6, 3),
('CV159', 'C', 'V', 'CARTIER', 0, 2, 3.4, 3),
('CV160', 'C', 'V', 'WAJIK LBG KUNING', 0, 2, 1.2, 2),
('CV161', 'C', 'V', 'PERSEGI FULL AD', 0, 2, 4.25, 3),
('CV162', 'C', 'V', 'PER RAINBOW (A)', 0, 2, 2.24, 2),
('CV163', 'C', 'V', 'BOLA FULL AD', 0, 2, 2.5, 3),
('CV164', 'C', 'V', 'BOLA RAINBOW (A)', 0, 2, 1.82, 3),
('CV165', 'C', 'V', 'HATI AD', 0, 2, 1.12, 2),
('CV166', 'C', 'V', 'KUPU 1 AD', 0, 3, 0.84, 3),
('CV167', 'C', 'V', 'MAHKOTA 11 AD', 0, 3, 1.04, 3),
('CV168', 'C', 'V', 'HATI CAT 16 AD', 0, 3, 1.67, 3),
('CV169', 'C', 'V', 'HATI 3 AD', 0, 3, 0.97, 3),
('CV170', 'C', 'V', '9 AD', 0, 3, 0.88, 3),
('CV171', 'C', 'V', 'RANTAI 6 AD', 0, 3, 1.55, 3),
('CV172', 'C', 'V', 'RANTAI 11 AD', 0, 3, 1.38, 2),
('CV173', 'C', 'V', 'WAJIK 12 AD', 0, 3, 0.83, 3),
('CV174', 'C', 'V', 'KUPU', 0, 2, 0.7, 3),
('CV175', 'C', 'V', '2 PITA AD *CV007', 0, 2, 1.26, 2),
('CV176', 'C', 'V', 'BINTANG AD PINK *CV105', 0, 2, 1.23, 2),
('CV177', 'C', 'V', 'HATI 3AD 2LBG', 0, 3, 0.97, 3),
('CV178', 'C', 'V', 'SABUK  GAMBAR CAT', 0, 3, 2.96, 3),
('CV179', 'C', 'V', 'MAHKOTA AD PINK', 0, 3, 1, 3),
('CV180', 'C', 'V', 'OVAL AD PINK', 0, 3, 1.06, 3),
('CV181', 'C', 'V', '3BUNGA FULL AD', 0, 3, 0.95, 2),
('CV182', 'C', 'V', 'VAR PUTIH 13AD *CV100', 0, 2, 1.2, 3),
('CV183', 'C', 'V', 'HATI AD *CV024', 0, 2, 1.31, 2),
('CV184', 'C', 'V', 'VAR GLMBANG PTH AD *CV045', 0, 2, 1.12, 3),
('CV185', 'C', 'V', 'VAR PUTIH PERSEGI', 6, 2, 1.65, 2),
('CV186', 'C', 'V', 'DAUN BUNGA AD', 6, 2, 4.2, 3),
('CV187', 'C', 'V', 'KUPU AD', 6, 2, 2.3, 2),
('CV188', 'C', 'V', 'VAR PTH BUNGA AD', 6, 2, 3.65, 3),
('CV189', 'C', 'V', 'AD PTH PINK', 0, 2, 1.3, 3),
('CV190', 'C', 'V', 'VAR PTH AD', 3, 2, 1, 3),
('CV191', 'C', 'V', 'VAR PTH BUNGA AD', 3, 2, 1.1, 2),
('CV192', 'C', 'V', 'VAR PTH NADA AD', 3, 2, 3.3, 3),
('CV193', 'C', 'V', 'PITA BUNGA AD', 3, 2, 1.5, 3),
('CV194', 'C', 'V', 'BUNGA AD', 9, 3, 1.45, 3),
('CV195', 'C', 'V', 'HATI BLT SALIPAN AD', 9, 3, 1.7, 3),
('CV196', 'C', 'V', 'BLT SALIPAN AD', 8, 3, 0.8, 3),
('CV197', 'C', 'V', 'CARTIER *CV159', 1, 2, 3.4, 2),
('CV198', 'C', 'V', 'HATI AD', 0, 3, 1.2, 2),
('CV199', 'C', 'V', 'MAHKOTA AD PINK', 1, 3, 1.1, 2),
('CV200', 'C', 'V', '1 AD BIRU', 0, 2, 2.3, 3),
('CV201', 'C', 'V', 'ALFABET V 1AD', 1, 3, 0.95, 3),
('CV202', 'C', 'V', 'ALFABET H 1AD', 1, 3, 0.95, 3),
('CV203', 'C', 'V', 'SABUK AD', 3, 3, 1.4, 3),
('CV204', 'C', 'V', 'BUNGA AD', 3, 3, 1.1, 3),
('CV205', 'C', 'V', '1 AD', 3, 3, 0.95, 3),
('CV206', 'C', 'V', 'BINTANG AD', 3, 3, 0.9, 3),
('CV207', 'C', 'V', 'BUNGA AD', 3, 3, 1.45, 2),
('CV208', 'C', 'V', 'BSR VAR PTH AD', 6, 3, 3.1, 3),
('CV209', 'C', 'V', 'GELOMBANG AD', 3, 3, 1.7, 3),
('CV210', 'C', 'V', 'SABUK AD', 3, 3, 2, 3),
('CV211', 'C', 'V', 'VAR PTH BTG AD', 3, 3, 1.1, 3),
('CV212', 'C', 'V', 'PITA AD', 3, 3, 1.65, 3),
('CV213', 'C', 'V', 'PER 2HATI PTH *CV098', 0, 2, 1.63, 3),
('CV214', 'C', 'V', 'MAHKOTA AD PINK', 0, 3, 1.1, 2),
('CV215', 'C', 'V', 'VAR PTH HATI ', 0, 2, 1.93, 3),
('CV216', 'C', 'V', 'HATI AD', 0, 3, 1.25, 2),
('CV217', 'C', 'V', 'BUNGA BLT AD', 0, 3, 1.7, 3),
('CV218', 'C', 'V', 'CARTIER AD', 0, 3, 1.25, 3),
('CV219', 'C', 'V', 'HATI LBG AD', 0, 3, 1.15, 3),
('CV220', 'C', 'V', 'SABUK CAT AD', 0, 3, 2.95, 3),
('CV221', 'C', 'V', 'VAR T CAT HITAM AD', 0, 3, 1.9, 2),
('CV222', 'C', 'V', 'MICKEY 3IN1', 0, 2, 2.7, 3),
('CV223', 'C', 'V', '3AD', 0, 3, 0.9, 3),
('CV224', 'C', 'V', 'HATI VAR PTH AD', 0, 3, 1.3, 2),
('CV225', 'C', 'V', 'ULIR 2 BUNGA AD', 0, 3, 0.9, 3),
('CV226', 'C', 'V', 'WAJIK AD PINK', 0, 3, 0.9, 3),
('CV227', 'C', 'V', 'BUNGA AD', 0, 3, 1.1, 2),
('CV228', 'C', 'V', 'VAR PTH AD PINK', 0, 3, 1.65, 3),
('CV229', 'C', 'V', 'BLT AD', 0, 3, 1.5, 3),
('CV230', 'C', 'V', 'WAJIK AD', 0, 3, 0.85, 3),
('CV231', 'C', 'V', 'BAMBU BUNGA AD', 0, 3, 1.75, 3),
('CV232', 'C', 'V', 'S AD', 0, 3, 0.9, 3),
('CV233', 'C', 'V', 'VAR PTH HATI AD', 0, 3, 1.25, 3),
('CV234', 'C', 'V', 'WAJIK AD', 0, 3, 0.85, 3),
('CV235', 'C', 'V', '9 AD', 0, 3, 0.9, 3),
('CV236', 'C', 'V', 'RANTAI T AD', 0, 3, 1.4, 3),
('CV237', 'C', 'V', 'HATI AD', 0, 3, 1.25, 2),
('CV238', 'C', 'V', 'BLT AD PINK', 0, 3, 1.1, 3),
('CV239', 'C', 'V', 'VAR PTH HATI AD', 0, 3, 1.3, 3),
('CV240', 'C', 'V', 'HATI AD', 0, 3, 1.15, 3),
('CV241', 'C', 'V', 'BLT BUNGA AD', 0, 3, 1.75, 3),
('CV242', 'C', 'V', 'KUPU', 0, 2, 0.7, 2),
('CV243', 'C', 'V', '2BLT AD+2KUPU *', 0, 2, 1.5, 2),
('CV244', 'C', 'V', '2AD BLT PINK+2KUPU *', 0, 2, 1.5, 3),
('CV245', 'C', 'V', 'PER 1BLT AD+ 1HATI AD *', 0, 3, 1.7, 2),
('CV246', 'C', 'V', 'PER 2BLT FULL AD', 8, 3, 0.85, 3),
('CV247', 'C', 'V', 'OMBAK AD PINK BIRU *', 3, 2, 1.6, 3),
('CV248', 'C', 'V', 'PER 2BLT AD', 8, 3, 0.9, 3),
('CV249', 'C', 'V', 'KUPU AD + BOLA', 0, 3, 1.4, 2),
('CV250', 'C', 'V', '2 HATI FULL AD', 3, 3, 1, 3),
('CV251', 'C', 'V', '1AD', 5, 3, 1.05, 3),
('CV252', 'C', 'V', 'PER 2BLT FULL AD *', 8, 3, 0.9, 3),
('CV253', 'C', 'V', 'HATI AD PINK MERAH', 0, 2, 0.8, 3),
('CV254', 'C', 'V', '3 HATI FULL AD VAR PTH', 0, 3, 1.2, 2),
('CV255', 'C', 'V', 'HATI LBG AD', 0, 3, 1.3, 2),
('CV256', 'C', 'V', '3 WAJIK FULL AD', 0, 3, 0.9, 2),
('CV257', 'C', 'V', '3 BUNGA FULL AD', 0, 3, 1, 3),
('CV258', 'C', 'V', '3 HATI FULL AD VAR PTH', 0, 3, 1.2, 2),
('CV259', 'C', 'V', 'SABUK CAT AD', 0, 3, 3.05, 3),
('CV260', 'C', 'V', '3 HATI FULL AD PINK', 0, 3, 1.3, 3),
('CV261', 'C', 'V', 'SABUK CAT AD', 0, 3, 3, 3),
('CV262', 'C', 'V', '3 BUNGA FULL AD', 0, 3, 1, 2),
('CV263', 'C', 'V', '3 WAJIK FULL AD', 0, 3, 0.9, 2),
('CV264', 'C', 'V', '3 HATI FULL AD VAR PTH', 0, 3, 1.35, 2),
('CV265', 'C', 'V', 'HATI SALIPAN AD PINK *', 0, 2, 1.65, 2),
('CV266', 'C', 'V', 'BINTANG AD PINK MERAH *', 0, 2, 1.3, 2),
('CV267', 'C', 'V', 'BESAR OMBAK AD *', 3, 2, 3.3, 3),
('CV268', 'C', 'V', 'AD PINK *', 0, 2, 1.3, 2),
('CV269', 'C', 'V', 'BUNGA BLT AD *', 0, 2, 1.9, 2),
('CV270', 'C', 'V', 'BOLA FULL AD *', 0, 2, 2.5, 2),
('CV271', 'C', 'V', 'BOLA RAINBOW AD *', 0, 2, 1.85, 2),
('CV272', 'C', 'V', 'BLT AD PINK SALIPAN*', 0, 2, 1.5, 3),
('CV273', 'C', 'V', 'PER 2BLT AD', 8, 3, 0.85, 3),
('CV274', 'C', 'V', 'PER 2BLT AD', 8, 3, 0.85, 3),
('CV275', 'C', 'V', 'PER 2BLT AD', 8, 3, 0.85, 3),
('CV276', 'C', 'V', 'PER BLT AD+HATI AD', 9, 3, 1.75, 3),
('CV277', 'C', 'V', 'WAJIK AD', 5, 3, 2.1, 3),
('CV278', 'C', 'V', 'BINTANG FULL AD', 0, 3, 0.9, 3),
('CV279', 'C', 'V', 'PTH KRWNG +AD', 6, 3, 3, 3),
('CV280', 'C', 'V', '3WAJIK FULL AD', 0, 3, 0.8, 3),
('CV281', 'C', 'V', '3WAJIK FULL AD', 0, 3, 0.85, 3),
('CV282', 'C', 'V', 'PETIR AD', 0, 2, 1.3, 2),
('CV283', 'C', 'V', 'S 2AD *', 0, 3, 0.9, 3),
('CV284', 'C', 'V', 'BUNGA BULAT FULL AD*', 0, 3, 1.7, 2),
('CV285', 'C', 'V', '3AD *', 0, 3, 0.9, 2),
('CV286', 'C', 'V', 'PTH 1AD PENDEMAN*', 0, 2, 1.75, 3),
('CV287', 'C', 'V', 'PTH 9AD*', 0, 2, 1.06, 3),
('CV288', 'C', 'V', '1HATI FULL AD 1HATI PLS*', 0, 2, 1.32, 3),
('CV289', 'C', 'V', 'KUPU FULL AD*', 0, 2, 1.63, 2),
('CV290', 'C', 'V', 'BLT AD PINK SALIPAN *', 0, 2, 1.45, 2),
('CV291', 'C', 'V', 'SABUK CAT *', 0, 3, 3, 2),
('CV292', 'C', 'V', 'AD CAT MRH HIJAU *', 0, 2, 2.2, 3),
('CV293', 'C', 'V', 'VAR PTH AD *', 0, 2, 2.3, 2),
('CV294', 'C', 'V', 'BUNGA BLT AD *', 0, 3, 1.7, 3),
('CV295', 'C', 'V', 'ALFABET H AD *', 1, 3, 0.95, 2),
('CV296', 'C', 'V', '3AD *', 0, 2, 0.9, 2),
('CV297', 'C', 'V', 'HATI AD PINK MRH *', 0, 2, 0.8, 2),
('CV298', 'C', 'V', 'HATI AD *', 0, 2, 0.85, 3),
('CV299', 'C', 'V', 'DORA CAT *', 0, 3, 1.3, 2),
('CV300', 'C', 'V', '3 WAJIK AD *', 0, 3, 0.8, 3),
('CV301', 'C', 'V', 'VAR PTH 1AD *', 0, 2, 1.95, 2),
('CV302', 'C', 'V', 'kupu SETENGAH AD *', 0, 2, 1.38, 3),
('CV303', 'C', 'V', 'VAR PTH AD *', 0, 2, 1.75, 2),
('CV304', 'C', 'V', 'VAR GELOMBANG AD *', 3, 3, 1.7, 2),
('CV305', 'C', 'V', 'PTH MOZAIK 1AD*', 0, 2, 1.75, 2),
('CV306', 'C', 'V', 'PTH AD*', 0, 2, 2.65, 2),
('CV307', 'C', 'V', '1BOLA FULL AD 1BOLA MOZAI', 7, 3, 1.45, 3),
('CV308', 'C', 'V', 'BTG FULL AD', 0, 3, 0.85, 3),
('CV309', 'C', 'V', 'S 1AD', 8, 3, 1.05, 3),
('CV310', 'C', 'V', 'A 1AD', 8, 3, 1.08, 3),
('CV311', 'C', 'V', 'PTH APEL AD', 10, 3, 1.03, 3),
('CV312', 'C', 'V', 'PER 2BLT AD', 8, 3, 0.8, 3),
('CV313', 'C', 'V', 'VAR PTH MOZAIK AD', 10, 3, 1.05, 3),
('CV314', 'C', 'V', 'ALFABET R 1AD', 8, 3, 1.25, 3),
('CV315', 'C', 'V', '1BOLA MOZAIK 1BOLA FULL A', 10, 3, 1.45, 3),
('CV316', 'C', 'V', 'BTG FULL AD', 0, 3, 0.9, 3),
('CV317', 'C', 'V', 'APEL AD', 10, 3, 1.05, 3),
('CV318', 'C', 'V', 'HATI STGH VAR PTH +AD', 10, 3, 1.1, 3),
('CV319', 'C', 'V', 'PER 2BLT AD', 8, 3, 0.8, 3),
('CV320', 'C', 'V', 'PER 2BLT AD', 8, 3, 0.81, 3),
('CV321', 'C', 'V', 'PER PITA FULL AD', 8, 3, 0.93, 3),
('CV322', 'C', 'V', 'PER PITA FULL AD', 8, 3, 0.91, 3),
('CV323', 'C', 'V', 'BUNGA 2AD', 0, 2, 0.91, 2),
('CV324', 'C', 'V', 'VAR KUPU STGH AD*', 0, 2, 1.38, 2),
('CV325', 'C', 'V', 'VAR BINTANG FULL AD*', 0, 3, 0.85, 3),
('CV326', 'C', 'V', 'HATI AD + BUNGA*', 0, 2, 0.85, 2),
('CV327', 'C', 'V', 'PTH PETIR AD*', 0, 2, 1.2, 3),
('CV328', 'C', 'V', 'WAJIK LBG KG*', 0, 2, 0.9, 2),
('CV329', 'C', 'V', 'PER PITA 2AD PENDEMAN', 0, 2, 1.47, 3),
('CV330', 'C', 'V', 'PER PITA 2AD PENDEMAN', 0, 2, 1.45, 3),
('CV331', 'C', 'V', 'PER PITA 2AD PENDEMAN', 0, 2, 1.45, 3),
('CV332', 'C', 'V', 'MOZAIK+AD', 6, 2, 1.98, 3),
('CV333', 'C', 'V', 'HATI LBG +AD PINK', 0, 3, 1.18, 2),
('CV334', 'C', 'V', 'T AD +RANTAI', 0, 3, 1.32, 2),
('CV335', 'C', 'V', 'KUPU 1AD PENDEM', 0, 3, 0.8, 3),
('CV336', 'C', 'V', '3WAJIK AD', 0, 3, 0.81, 3),
('CV337', 'C', 'V', '3BUNGA AD', 0, 3, 0.93, 2),
('CV338', 'C', 'V', '3WAJIK AD', 0, 3, 0.8, 2),
('CV339', 'C', 'V', 'PER PITA FULL AD', 8, 3, 0.88, 3),
('CV340', 'C', 'V', 'PER PITA FULL AD', 8, 3, 0.91, 3),
('CV341', 'C', 'V', 'S 1AD', 3, 3, 1.08, 2),
('CV342', 'C', 'V', 'VAR PTH BLT  AD', 3, 3, 1.33, 3),
('CV343', 'C', 'V', 'R 1AD', 3, 3, 1.23, 3),
('CV344', 'C', 'V', 'DAUN BUNGA FULL AD*', 6, 2, 4.2, 3),
('CV345', 'C', 'V', 'VAR PTH BLT AD*', 0, 2, 2, 2),
('CV346', 'C', 'V', 'AD*', 0, 2, 1.4, 2),
('CV347', 'C', 'V', 'MIK 3AD PENDEM', 0, 2, 1.35, 3),
('CV348', 'C', 'V', 'MIKI SALIPAN 2AD PENDEM', 0, 2, 1.35, 2),
('CV349', 'C', 'V', 'KOTAK FULL AD', 0, 2, 4.37, 3),
('CV350', 'C', 'V', 'BOTORAN AD', 0, 2, 2.72, 3),
('CV351', 'C', 'V', 'GELOMBNG PTH MOZAIK', 0, 2, 2.88, 2),
('CV352', 'C', 'V', 'HATI FULL AD+5AD', 0, 2, 1.15, 3),
('CV353', 'C', 'V', 'HATI FULL AD+5AD', 0, 2, 1.15, 2),
('CV354', 'C', 'V', '3AD', 0, 2, 0.83, 2),
('CV355', 'C', 'V', '3AD', 0, 2, 0.83, 2),
('CV356', 'C', 'V', 'T FULL AD ', 0, 2, 1.5, 2),
('CV357', 'C', 'V', 'T FULL AD ', 0, 2, 1.53, 3),
('CV358', 'C', 'V', 'HATI LAYER MOZAIK', 0, 2, 0.86, 3),
('CV359', 'C', 'V', 'HATI LAYER MOZAIK', 0, 2, 0.88, 3),
('CV360', 'C', 'V', 'HATI LAYER VAR PTH MOZAIK', 0, 2, 0.88, 3),
('CV361', 'C', 'V', 'GELOMBANG KRWNG VAR PTH A', 0, 2, 2.66, 3),
('CV362', 'C', 'V', 'BSR PTH+AD ', 0, 2, 4.08, 1),
('CV363', 'C', 'V', 'BSR PTH+AD', 0, 2, 4.1, 1),
('CV364', 'C', 'V', 'PER PITA FULL AD 1BOLA', 0, 3, 0.96, 3),
('CV365', 'C', 'V', 'PER PITA FULL AD 1BOLA', 0, 3, 0.9, 3),
('CV366', 'C', 'V', 'PER PITA FULL AD 1BOLA', 0, 3, 0.87, 1),
('CV367', 'C', 'V', 'PER PITA FULL AD 1BOLA', 0, 3, 0.89, 3),
('CV368', 'C', 'V', 'PER PITA FULL AD 1BOLA', 0, 3, 0.93, 3),
('CV369', 'C', 'V', 'BSR MOZAIK PTH PINK*', 1, 2, 2.78, 2),
('CV370', 'C', 'V', 'CARTIER 1AD PENDEM*', 0, 3, 1.25, 3),
('CV371', 'C', 'V', '3BTG HATI 19AD*', 0, 2, 1.12, 2),
('CV372', 'C', 'V', 'PER 2HATI MOZAIK PTH*', 0, 2, 1.63, 3),
('CV373', 'C', 'V', '2BOLA AD SALIPAN', 0, 3, 3.5, 3),
('CV374', 'C', 'V', 'PER BLT FULL AD', 0, 3, 1.16, 1),
('CV375', 'C', 'V', 'PER BLT FULL AD', 0, 3, 1.18, 3),
('CV376', 'C', 'V', 'VAR PTH AD', 0, 3, 1.05, 3),
('CV377', 'C', 'V', 'VAR PTH AD', 0, 3, 1.07, 1),
('CV378', 'C', 'V', 'VAR PTH HATI AD', 0, 3, 1.17, 1),
('CV379', 'C', 'V', 'VAR PTH HATI AD', 0, 3, 1.19, 2),
('CV380', 'C', 'V', 'HATI BLT SALIPAN AD', 1, 2, 1.16, 2),
('CV381', 'C', 'V', 'BUNGA 1AD', 0, 2, 1.02, 2),
('CV382', 'C', 'V', '2 HATI LBG', 0, 2, 0.86, 2),
('CV383', 'C', 'V', '\"LOVE\"', 0, 2, 0.82, 1),
('CV384', 'C', 'V', 'BTG LBG AD', 0, 2, 1.2, 2),
('CV385', 'C', 'V', 'KUPU 1 AD', 0, 2, 0.87, 1),
('CV386', 'C', 'V', 'BLT HATI AD', 0, 2, 1.18, 2),
('CV387', 'C', 'V', '4AD', 1, 2, 1.15, 2),
('CV388', 'C', 'V', 'DISNEY MICKEY AD', 0, 2, 1.35, 3),
('CV389', 'C', 'V', 'DISNEY ULIR MICKEY AD', 0, 2, 1.35, 2),
('CV390', 'C', 'V', 'VAR HATI FULL AD*', 0, 2, 1.32, 3),
('CV391', 'C', 'V', 'ALPHABET R*', 8, 3, 1.23, 2),
('CV392', 'C', 'V', '2AD BLT*', 0, 2, 2.5, 2),
('CV393', 'C', 'V', '1AD BESAR*', 0, 2, 1.74, 3),
('CV394', 'C', 'V', 'PERSEGI FULL AD*', 0, 2, 4.25, 2),
('CV395', 'C', 'V', 'PITA AD BULAT', 0, 2, 1.48, 3),
('CV396', 'C', 'V', 'MIKI 3AD TUMPUK ULIR', 0, 2, 1.33, 2),
('CV397', 'C', 'V', 'VAR PTH AD', 10, 3, 1.12, 2),
('CV398', 'C', 'V', 'PETIR AD', 3, 2, 1.35, 2),
('CV399', 'C', 'V', 'NADA AD', 0, 2, 1.3, 2),
('CV400', 'C', 'V', 'VAR PTH AD SALIPAN*', 3, 3, 0.9, 2),
('CV401', 'C', 'V', 'BUNGA AD', 0, 2, 0.91, 2),
('CV402', 'C', 'V', 'HATI AD', 3, 2, 0.82, 3),
('CV403', 'C', 'V', 'WAJIK 8AD', 3, 2, 1.57, 3),
('CV404', 'C', 'V', 'Y 1AD', 0, 3, 0.83, 2),
('CV405', 'C', 'V', '2BUNGA FULL AD', 10, 3, 1.45, 2),
('CV406', 'C', 'V', 'VAR PTH HATI AD', 0, 3, 1.28, 1),
('CV407', 'C', 'V', 'VAR PTH HATI AD', 0, 3, 1.23, 1),
('CV408', 'C', 'V', 'VAR PTH HATI AD', 0, 3, 1.3, 1),
('CV409', 'C', 'V', 'VAR PTH OMBAK AD', 0, 3, 1.01, 1),
('CV410', 'C', 'V', 'VAR PTH OMBAK AD', 0, 3, 1, 1),
('CV411', 'C', 'V', 'VAR PTH OMBAK AD', 0, 3, 1.02, 1),
('CV412', 'C', 'V', 'VAR PTH GLMBG AD', 0, 3, 1.63, 1),
('CV413', 'C', 'V', 'VAR PTH GLMBG AD', 0, 3, 1.82, 3),
('CV414', 'C', 'V', 'BLT LBG AD', 0, 3, 1.15, 1),
('CV415', 'C', 'V', 'BLT LBG AD', 0, 3, 1.12, 2),
('CV416', 'C', 'V', '1AD BSR 6AD KCL', 0, 3, 2.08, 1),
('CV417', 'C', 'V', '1AD BSR 6AD KCL', 0, 3, 2.01, 3),
('CV418', 'C', 'V', '3WAJIK AD', 0, 3, 0.8, 1),
('CV419', 'C', 'V', '3WAJIK AD', 0, 3, 0.82, 1),
('CV420', 'C', 'V', '3WAJIK AD', 0, 3, 0.78, 3),
('CV421', 'C', 'V', '3WAJIK AD', 0, 3, 0.8, 1),
('CV422', 'C', 'V', 'VAR PTH AD', 0, 3, 1.17, 1),
('CV423', 'C', 'V', 'VAR PTH AD', 0, 3, 1.13, 1),
('CV424', 'C', 'V', 'VAR PTH AD', 0, 3, 1.16, 2),
('CV425', 'C', 'V', 'MICKEY SALIPAN AD*', 0, 2, 1.35, 1),
('CV426', 'C', 'V', 'PER 2BLT AD*', 8, 3, 0.82, 3),
('CV427', 'C', 'V', 'BUNGA ULIR 2AD*', 0, 3, 0.81, 3),
('CV428', 'C', 'V', 'T AD *', 0, 2, 1.51, 2),
('CV429', 'C', 'V', 'VAR PTH AD', 3, 2, 1.52, 3),
('CV430', 'C', 'V', 'AD CAT*', 3, 2, 2.16, 2),
('CV431', 'C', 'V', 'MOZAIK AD*', 6, 2, 1.98, 2),
('CV432', 'C', 'V', 'PER PITA AD*', 8, 3, 0.9, 3),
('CV433', 'C', 'V', 'GELOMBANG AD', 0, 2, 1.1, 2),
('CV434', 'C', 'V', 'SABUK AD+CAT ', 0, 2, 2.04, 3),
('CV435', 'C', 'V', 'BINTANG FULL AD', 0, 3, 0.86, 2),
('CV436', 'C', 'V', 'HATI TUMPUK AD', 0, 3, 1.24, 2),
('CV437', 'C', 'V', 'BUNGA AD', 3, 3, 0.94, 2),
('CV438', 'C', 'V', 'BLT 1AD*', 0, 2, 1.39, 2),
('CV439', 'C', 'V', 'VAR PTH BNGA AD*', 3, 2, 1.49, 2),
('CV440', 'C', 'V', 'HATI AD*', 0, 3, 0.95, 2),
('CV441', 'C', 'V', 'GELOMBANG AD*', 0, 2, 2.64, 2),
('CV442', 'C', 'V', '2PITA AD TUMPUK*', 0, 2, 1.09, 2),
('CV443', 'C', 'V', 'KUPU STGH AD*', 0, 2, 1.39, 2),
('CV444', 'C', 'V', 'SABUK AD*', 0, 2, 1.84, 2),
('CV445', 'C', 'V', 'AD CAT HITAM*', 0, 2, 2.87, 2),
('CV446', 'C', 'V', 'RANTE*', 0, 2, 1.94, 2),
('CV447', 'C', 'V', 'HATI AD SALIPAN*', 0, 2, 1.12, 2),
('CV448', 'C', 'V', '3WAJIK AD PINK*', 0, 3, 0.82, 2),
('CV449', 'C', 'V', 'HATI AD*', 3, 3, 0.92, 2),
('CV450', 'C', 'V', '3 HATI CAT AD*', 0, 3, 1.64, 2),
('DV001', 'D', 'V', 'CAT MIKI', 3, 2, 0.95, 3),
('DV002', 'D', 'V', 'CAT PONI 2AD', 3, 2, 0.98, 3),
('DV003', 'D', 'V', 'CAT PONI 2AD', 3, 2, 0.97, 1),
('DV004', 'D', 'V', 'CAT HK 2AD', 3, 2, 1.17, 1),
('DV005', 'D', 'V', 'HK FULL AD', 3, 2, 0.95, 3),
('DV006', 'D', 'V', 'CAT HK', 3, 2, 0.94, 2),
('DV007', 'D', 'V', 'CAT HK', 3, 2, 0.98, 2),
('DV008', 'D', 'V', 'CAT HK 2AD', 3, 2, 1.14, 2),
('DV009', 'D', 'V', 'CAT HK 2AD', 3, 2, 1.07, 3),
('DV010', 'D', 'V', 'CAT STROBERI 1AD', 3, 2, 1.1, 3),
('DV011', 'D', 'V', 'HK FULL AD', 3, 2, 1.07, 3),
('DV012', 'D', 'V', 'CAT TSUM 2AD', 3, 2, 1.18, 2),
('DV013', 'D', 'V', 'CAT TSUM 2AD', 3, 2, 1.13, 3),
('DV014', 'D', 'V', 'CAT STROBERI 1AD', 3, 2, 1.04, 2),
('DV015', 'D', 'V', 'CAT TIMBUL DORA', 3, 2, 0.55, 2),
('DV016', 'D', 'V', 'CAT TIMBUL DORA', 3, 2, 0.54, 3),
('DV017', 'D', 'V', 'CAT TIMBUL HK', 3, 2, 0.5, 3),
('DV018', 'D', 'V', 'CAT TIMBUL HK', 3, 2, 0.51, 1),
('DV019', 'D', 'V', 'CAT TIMBUL HK', 3, 2, 0.55, 1),
('DV020', 'D', 'V', 'CAT TIMBUL HK', 3, 2, 0.56, 3),
('DV021', 'D', 'V', 'CAT TIMBUL STROBERI', 3, 2, 0.52, 1),
('DV022', 'D', 'V', 'CAT TIMBUL STROBERI', 3, 2, 0.54, 2),
('DV023', 'D', 'V', 'STAMP HK', 3, 2, 0.53, 1),
('DV024', 'D', 'V', 'STAMP HK', 3, 2, 0.53, 3),
('DV025', 'D', 'V', 'CAT MIKI 2AD', 3, 2, 1.1, 2),
('DV026', 'D', 'V', 'CAT MIKI 2AD', 3, 2, 1.1, 3),
('DV027', 'D', 'V', 'CAT STRO 2AD', 3, 2, 1.15, 1),
('DV028', 'D', 'V', 'CAT STRO 2AD', 3, 2, 1.07, 2),
('DV029', 'D', 'V', 'STAMP MIKI', 3, 2, 0.51, 1),
('DV030', 'D', 'V', 'STAMP MIKI', 3, 2, 0.53, 1),
('DV031', 'D', 'V', 'HATI 1AD', 0, 2, 0.6, 3),
('DV032', 'D', 'V', 'KUPU 1AD', 0, 2, 0.61, 3),
('DV033', 'D', 'V', 'BULAT 1AD', 0, 2, 0.82, 3),
('DV034', 'D', 'V', 'BULAT 1AD', 0, 2, 0.81, 2),
('DV035', 'D', 'V', 'KUPU 1AD', 0, 2, 0.62, 2),
('DV036', 'D', 'V', 'KUPU 1AD', 0, 2, 0.6, 3),
('DV037', 'D', 'V', 'HATI AD', 0, 3, 0.75, 3),
('DV038', 'D', 'V', 'BUNGA AD', 1, 3, 0.72, 3),
('DV039', 'D', 'V', 'KUPU AD', 0, 3, 0.92, 3),
('DV040', 'D', 'V', 'CAT TIMBUL HK', 1, 2, 0.5, 3),
('DV041', 'D', 'V', 'HK CAT', 1, 3, 0.6, 3),
('DV042', 'D', 'V', 'HATI AD', 0, 3, 0.85, 2),
('DV043', 'D', 'V', 'KUPU AD', 0, 3, 0.9, 3),
('DV044', 'D', 'V', 'HATI AD PINK', 0, 3, 0.75, 3),
('DV045', 'D', 'V', 'HATI AD PINK', 0, 3, 0.8, 2),
('DV046', 'D', 'V', 'KUPU AD', 0, 3, 0.9, 3),
('DV047', 'D', 'V', 'BNK CAT KUNING', 3, 3, 1.05, 2),
('DV048', 'D', 'V', 'SPIDER CAT', 3, 3, 1.1, 2),
('DV049', 'D', 'V', 'MICKEY CAT MERAH', 3, 3, 1, 3),
('DV050', 'D', 'V', 'KUDAPONI CAT PINK', 3, 3, 1.15, 2),
('DV051', 'D', 'V', 'HK CAT', 3, 3, 1, 2),
('DV052', 'D', 'V', 'BNK CAT PTH PINK', 3, 3, 1.1, 3),
('DV053', 'D', 'V', 'POOH CAT MRH KNING', 3, 3, 1, 2),
('DV054', 'D', 'V', 'MICKEY CAT', 3, 3, 0.95, 2),
('DV055', 'D', 'V', 'DORA CAT', 3, 3, 1.05, 3),
('DV056', 'D', 'V', 'AD BIRU', 3, 3, 1.15, 2),
('DV057', 'D', 'V', 'AD PTH', 3, 3, 1.05, 2),
('DV058', 'D', 'V', 'BUNGA AD', 3, 3, 1.05, 3),
('DV059', 'D', 'V', 'CAT MERI', 3, 3, 0.6, 3),
('DV060', 'D', 'V', 'CAT HK', 3, 3, 0.6, 1),
('DV061', 'D', 'V', '1 AD', 3, 3, 1, 2),
('DV062', 'D', 'V', 'CAT TSUM', 3, 3, 1.2, 1),
('DV063', 'D', 'V', 'HATI AD SALIPAN', 0, 3, 0.8, 3),
('DV064', 'D', 'V', 'HATI FULL AD', 0, 3, 0.75, 3),
('DV065', 'D', 'V', 'KUPU FULL AD', 0, 3, 0.9, 3),
('DV066', 'D', 'V', 'KUPU FULL AD', 0, 3, 0.9, 3),
('DV067', 'D', 'V', 'BUNGA FULL AD', 0, 3, 0.75, 3),
('DV068', 'D', 'V', 'BUNGA FULL AD', 0, 3, 0.75, 3),
('DV069', 'D', 'V', 'HATI FULL AD', 0, 3, 0.75, 3),
('DV070', 'D', 'V', 'CAT TIGER SALIPAN 2AD', 2, 3, 1.05, 2),
('DV071', 'D', 'V', 'CAT DORA 2AD SALIPAN', 2, 3, 1.1, 3),
('DV072', 'D', 'V', 'BNK CAT 2AD SALIPAN', 2, 3, 1.2, 2),
('DV073', 'D', 'V', 'CAT DORA', 9, 3, 1.3, 3),
('DV074', 'D', 'V', 'DORA CAT *', 3, 3, 1.05, 2),
('DV075', 'D', 'V', 'MICKEY CAT 2AD', 2, 3, 0.9, 2),
('DV076', 'D', 'V', 'MICKEY CAT', 3, 3, 1.05, 2),
('DV077', 'D', 'V', 'POOH CAT', 3, 3, 1.09, 2),
('DV078', 'D', 'V', '1AD BIRU', 3, 3, 0.9, 1),
('DV079', 'D', 'V', 'DORA CAT', 3, 3, 1.07, 1),
('DV080', 'D', 'V', 'HK CAT', 3, 3, 0.98, 1),
('DV081', 'D', 'V', 'MIKI CAT', 0, 2, 0.9, 2),
('DV082', 'D', 'V', 'MIKI CAT', 0, 2, 0.9, 1),
('DV083', 'D', 'V', 'HK FULL AD', 3, 3, 1, 3),
('DV084', 'D', 'V', 'BUNGA FULL AD', 3, 3, 0.71, 3),
('DV085', 'D', 'V', 'BUNGA VAR PTH', 3, 3, 1, 3),
('DV086', 'D', 'V', 'VAR PTH BNGA AD', 3, 3, 0.92, 3),
('DV087', 'D', 'V', 'HK FULL AD', 3, 3, 0.94, 1),
('DV088', 'D', 'V', 'VAR PTH HATI AD', 3, 3, 0.95, 3),
('DV089', 'D', 'V', 'MERI CAT*', 3, 3, 0.6, 3),
('DV090', 'D', 'V', 'PITA FULL AD SALIPAN', 0, 3, 0.9, 2),
('DV091', 'D', 'V', 'PITA FULL AD SALIPAN', 0, 3, 0.91, 1),
('DV092', 'D', 'V', 'PITA FULL AD SALIPAN', 0, 3, 0.9, 1),
('DV093', 'D', 'V', 'PITA FULL AD SALIPAN', 0, 3, 0.9, 1),
('DV094', 'D', 'V', 'KUPU FULL AD SALIPAN', 0, 3, 0.83, 3),
('DV095', 'D', 'V', 'KUPU FULL AD SALIPAN', 0, 3, 0.87, 1),
('DV096', 'D', 'V', 'HATI FULL AD SALIPAN', 0, 3, 0.7, 1),
('DV097', 'D', 'V', 'HATI FULL AD SALIPAN', 0, 3, 0.69, 2),
('DV098', 'D', 'V', 'BUNGA FULL AD SALIPAN', 0, 3, 0.7, 3),
('DV099', 'D', 'V', '2 HATI AD PINK SALIPAN', 0, 3, 0.76, 2),
('DV100', 'D', 'V', '2 HATI AD PINK SALIPAN', 0, 3, 0.75, 1),
('DV101', 'D', 'V', 'HK FULL AD*', 3, 2, 0.95, 2),
('DV102', 'D', 'V', 'STAMP HK*', 3, 2, 0.53, 2),
('DV103', 'D', 'V', 'BUNGA FULL AD*', 0, 3, 0.7, 2),
('DV104', 'D', 'V', 'BUNGA FULL AD', 0, 3, 0.7, 3),
('DV105', 'D', 'V', 'HATI FULL AD', 0, 3, 0.69, 2),
('DV106', 'D', 'V', 'HK AD*', 3, 3, 1, 2),
('DV107', 'D', 'V', 'KUPU AD*', 0, 3, 0.84, 2),
('DV108', 'D', 'V', 'MELODY CAT*', 2, 3, 1.06, 2),
('GB001', 'G', 'B', 'VAR PUTIH', 3, 2, 5.05, 2),
('GB002', 'G', 'B', 'VAR PUTIH', 3, 2, 5.04, 2),
('GB003', 'G', 'B', 'VAR PUTIH', 0, 2, 5.11, 2),
('GB004', 'G', 'B', 'VAR PUTIH', 0, 2, 5.05, 2),
('GB005', 'G', 'B', 'VAR KOTAK', 1, 2, 4.43, 3),
('GB006', 'G', 'B', 'VAR KOTAK', 1, 2, 4.64, 2),
('GB007', 'G', 'B', 'VAR KOTAK', 1, 2, 4.52, 2),
('GB008', 'G', 'B', 'VAR PITA', 0, 2, 7.12, 3),
('GB009', 'G', 'B', 'VAR BAMBU PTH', 0, 2, 3.33, 3),
('GB010', 'G', 'B', 'VAR BAMBU PTH', 0, 2, 3.36, 3),
('GB011', 'G', 'B', 'VAR BAMBU PTH', 0, 2, 3.2, 2),
('GB012', 'G', 'B', 'VAR PUTIH', 0, 2, 5.25, 2),
('GB013', 'G', 'B', 'VAR PUTIH', 0, 2, 5.23, 2),
('GB014', 'G', 'B', 'VAR BTG', 0, 2, 5.08, 2);
INSERT INTO `master_items` (`id`, `category`, `subcategory`, `nama`, `supplier`, `karat`, `berat`, `stocks`) VALUES
('GB015', 'G', 'B', 'VAR BUNGA', 0, 2, 10.06, 2),
('GB016', 'G', 'B', 'C VAR PTH MRH', 0, 2, 7.1, 2),
('GB017', 'G', 'B', 'C VAR PTH MRH', 0, 2, 8, 2),
('GB018', 'G', 'B', 'OVAL VAR PTH MRH BTG', 0, 2, 3.14, 3),
('GB019', 'G', 'B', 'C VAR MRH PTH BTG', 0, 2, 3.12, 2),
('GB020', 'G', 'B', 'C VAR MRH PTH BTG', 0, 2, 3.18, 2),
('GB021', 'G', 'B', 'OVAL 2BOLA PASIRAN PISAH', 0, 2, 4.24, 3),
('GB022', 'G', 'B', 'OVAL 2BOLA PASIRAN PISAH', 0, 2, 4.14, 3),
('GB023', 'G', 'B', 'OVAL 2BOLA AD', 0, 2, 6.07, 3),
('GB026', 'G', 'B', 'OVAL 2BOLA PASIRAN SILANG', 0, 2, 3.6, 3),
('GB028', 'G', 'B', 'OVAL 7BOLA 3 WNA', 0, 2, 3.89, 3),
('GB030', 'G', 'B', 'OVAL 7BOLA 3WNA', 0, 2, 5.04, 3),
('GB031', 'G', 'B', 'OVAL 7BOLA 3WNA PASIRAN', 0, 2, 4.16, 3),
('GB032', 'G', 'B', 'OVAL FULL BOTORAN 3WNA', 0, 2, 4.67, 3),
('GB033', 'G', 'B', 'OVAL CARTIER', 0, 2, 4.49, 3),
('GB034', 'G', 'B', 'OVAL CARTIER', 0, 2, 4.61, 3),
('GB035', 'G', 'B', 'OVAL CARTIER 3WNA', 0, 2, 14.2, 3),
('GB036', 'G', 'B', 'OVAL ROMAWI AD', 0, 2, 5.38, 2),
('GB037', 'G', 'B', 'OVAL ROMAWI AD', 0, 2, 5.51, 3),
('GB038', 'G', 'B', 'OVAL AD BIRU', 0, 2, 5.63, 3),
('GB039', 'G', 'B', 'OVAL VAR AD ', 0, 2, 7.31, 3),
('GB040', 'G', 'B', 'OVAL VAR CAT AD', 0, 2, 8.42, 2),
('GB041', 'G', 'B', 'OVAL RANTAI VAR AD', 0, 2, 5.42, 3),
('GB042', 'G', 'B', 'OVAL PAKU AD', 0, 2, 6.39, 3),
('GB043', 'G', 'B', 'OVAL CARTIER VAR PTH', 0, 2, 7.58, 2),
('GB044', 'G', 'B', 'OVAL KUPU AD GOYANG', 0, 2, 3.99, 3),
('GB045', 'G', 'B', 'OVAL 3 KUPU AD', 0, 2, 3.04, 3),
('GB046', 'G', 'B', 'OVAL PITA AD GOYANG', 0, 2, 4.27, 3),
('GB047', 'G', 'B', 'OVAL H PISAH', 0, 2, 4.09, 3),
('GB048', 'G', 'B', 'OVAL C AD', 0, 2, 3.63, 3),
('GB049', 'G', 'B', 'OVAL ULIR BESAR VAR PUTIH', 0, 2, 6.15, 3),
('GB051', 'G', 'B', 'OVAL DAUN VAR PTH AD', 1, 2, 8.12, 3),
('GB052', 'G', 'B', 'OVAL DAUN VAR PTH AD PINK', 2, 2, 5.55, 3),
('GB053', 'G', 'B', 'OVAL PITA LBG AD', 0, 2, 7.19, 3),
('GB054', 'G', 'B', 'BLT RANTAI VAR PTH', 0, 2, 9.31, 2),
('GB055', 'G', 'B', 'OVAL PANDA CAT', 6, 2, 4.72, 3),
('GB056', 'G', 'B', 'OVAL BOTORAN CAT', 6, 2, 7.77, 2),
('GB057', 'G', 'B', 'VAR PTH+AD PINK', 2, 2, 7.01, 3),
('GB058', 'G', 'B', 'VAR PTH+AD', 0, 2, 4.05, 3),
('GB059', 'G', 'B', 'VAR AD PINK', 0, 2, 4.04, 2),
('GB060', 'G', 'B', 'VAR PTH+AD PINK', 0, 2, 5.02, 2),
('GB061', 'G', 'B', 'VAR PTH+AD PINK GELOMBANG', 0, 2, 5.95, 2),
('GB062', 'G', 'B', 'VAR BUNGA AD', 0, 2, 3.1, 3),
('GB063', 'G', 'B', 'VAR PTH+AD PINK', 0, 2, 5, 3),
('GB064', 'G', 'B', 'VAR PTH DIAMOND AD PINK', 0, 2, 5.06, 3),
('GB065', 'G', 'B', 'VAR PTH AD PINK', 0, 2, 4.08, 3),
('GB066', 'G', 'B', 'VAR PTH AD PINK', 0, 2, 7.06, 2),
('GB067', 'G', 'B', 'VAR PTH AD PINK', 0, 2, 5.04, 2),
('GB068', 'G', 'B', 'VAR PTH AD PINK', 0, 2, 6.06, 2),
('GB069', 'G', 'B', 'VAR PTH PER AD HTM', 2, 2, 8.25, 3),
('GB070', 'G', 'B', 'OVAL 3 BUNGA TIMBUL', 0, 3, 7.05, 2),
('GB071', 'G', 'B', 'OVAL STGH PIPA FULL AD', 0, 3, 5.23, 3),
('GB072', 'G', 'B', 'OVAL PAKU AD', 0, 3, 6.05, 3),
('GB073', 'G', 'B', 'OVAL CARTIER AD', 0, 3, 6.91, 3),
('GB074', 'G', 'B', 'OVAL 2 BLT AD', 0, 3, 5.68, 3),
('GB075', 'G', 'B', 'OVAL BLT AD', 2, 3, 6.1, 3),
('GB076', 'G', 'B', 'OVAL 2BOLA PASIRAN PISAH', 0, 2, 4.28, 3),
('GB077', 'G', 'B', 'OVAL PAKU TUSUK 7 AD', 0, 2, 6.26, 3),
('GB078', 'G', 'B', 'OVAL BUNGA AD', 0, 2, 3.06, 3),
('GB079', 'G', 'B', 'MOZAIK', 1, 2, 2.28, 3),
('GB080', 'G', 'B', 'OVAL TABUNG AD', 0, 3, 5.22, 3),
('GB081', 'G', 'B', 'VAR PTH MOZAIK 34AD *GB05', 0, 2, 4.05, 3),
('GB082', 'G', 'B', 'CARTIER', 0, 2, 4.92, 3),
('GB083', 'G', 'B', 'CARTIER', 1, 2, 6.78, 3),
('GB084', 'G', 'B', 'OVAL PAKU KOTAK AD', 2, 3, 6.04, 3),
('GB085', 'G', 'B', 'OVAL 7BOLA MOZAIK 3WNA', 0, 2, 4, 3),
('GB086', 'G', 'B', 'OVAL 6BOLA KCL 1BOLA BSR ', 0, 2, 5, 3),
('GB087', 'G', 'B', 'BULAT 11BOLA 3WNA', 0, 2, 4.4, 3),
('GB088', 'G', 'B', 'OVAL 1HATI 2BOLA MOZAIK', 0, 2, 3.46, 3),
('GB089', 'G', 'B', 'OVAL PAKU AD', 0, 2, 6.4, 3),
('GB090', 'G', 'B', 'OVAL VAR PTH SEGIENAM', 3, 2, 7.25, 2),
('GB091', 'G', 'B', 'OVAL GELOMBANG AD', 0, 3, 8.25, 3),
('GB092', 'G', 'B', 'OVAL CARTIER AD', 1, 3, 5.2, 3),
('GB093', 'G', 'B', 'OVAL PERSEGI PJG AD', 0, 3, 5.21, 3),
('GB094', 'G', 'B', 'OVAL 3 BLT PASIRAN 3 WNA ', 0, 2, 4.25, 3),
('GB095', 'G', 'B', 'OVAL BOTORAN 3 WNA', 0, 2, 4.65, 3),
('GB096', 'G', 'B', 'OVAL RANTAI VAR AD', 0, 2, 5.42, 2),
('GB097', 'G', 'B', 'OVAL BLT VAR PTH BOTORAN', 10, 3, 5.9, 3),
('GB098', 'G', 'B', 'OVAL 2 MICKEY AD', 10, 3, 4.5, 3),
('GB099', 'G', 'B', 'OVAL 7BOLA 3WNA PASIRAN', 0, 2, 4.35, 3),
('GB100', 'G', 'B', 'OVAL BUNGA AD', 0, 2, 3, 3),
('GB101', 'G', 'B', 'OVAL VAR PTH KUPU AD', 0, 2, 5.1, 3),
('GB102', 'G', 'B', 'OVAL VAR PTH MRH BTG', 0, 2, 3.14, 2),
('GB103', 'G', 'B', 'VAR PTH', 8, 3, 3.05, 3),
('GB104', 'G', 'B', 'VAR PTH', 8, 3, 3.05, 3),
('GB105', 'G', 'B', 'VAR PTH', 8, 3, 3, 3),
('GB106', 'G', 'B', 'VAR PTH', 8, 3, 3.05, 3),
('GB107', 'G', 'B', 'VAR PTH', 8, 3, 3, 3),
('GB108', 'G', 'B', 'VAR PTH', 8, 3, 3.05, 3),
('GB109', 'G', 'B', 'VAR KOTAK', 1, 3, 2.7, 3),
('GB110', 'G', 'B', 'VAR KOTAK', 1, 3, 2.82, 3),
('GB111', 'G', 'B', 'VAR KOTAK', 1, 3, 2.65, 3),
('GB112', 'G', 'B', 'VAR KOTAK', 1, 3, 2.7, 3),
('GB113', 'G', 'B', 'VAR KOTAK', 1, 3, 2.71, 3),
('GB114', 'G', 'B', 'OVAL 2BOLA PASIRAN PISAH', 0, 2, 4.14, 3),
('GB115', 'G', 'B', 'VAR PTH +AD *GB063', 0, 2, 5, 3),
('GB116', 'G', 'B', 'OVAL TABUNG FULL AD *GB08', 0, 3, 5.22, 3),
('GB117', 'G', 'B', 'OVAL 7BOLA 3WNA PASIRAN', 0, 2, 4, 3),
('GB118', 'G', 'B', 'OVAL RANTAI CARTIER AD', 0, 3, 6.8, 3),
('GB119', 'G', 'B', 'OVAL ULIR BOT MOZAIK + PA', 0, 3, 3.4, 3),
('GB120', 'G', 'B', 'OVAL BUNGA AD PINK', 0, 3, 2.9, 3),
('GB121', 'G', 'B', 'DAUN LBG AD', 0, 3, 7.8, 2),
('GB122', 'G', 'B', 'DAUN LBG AD MOZAIK', 0, 3, 8.5, 2),
('GB123', 'G', 'B', 'OVAL 2 BNG ', 0, 2, 3, 3),
('GB124', 'G', 'B', 'OVAL RANTE AD', 0, 3, 7, 3),
('GB125', 'G', 'B', 'OVAL PERSEGI PANJANG AD', 0, 3, 5.15, 3),
('GB126', 'G', 'B', 'OVAL AD BIRU *', 0, 2, 5.65, 3),
('GB127', 'G', 'B', 'VAR PTH AD PINK MERAH*', 3, 2, 5.1, 2),
('GB128', 'G', 'B', 'ULIR LAPIS 1BLT 2KTK AD', 0, 3, 3.8, 3),
('GB129', 'G', 'B', 'CARTIER AD', 0, 3, 5.25, 2),
('GB130', 'G', 'B', 'KUPU RAINBOW', 0, 2, 5.95, 3),
('GB131', 'G', 'B', 'CARTIER PAKU TUSUK AD', 0, 2, 8.3, 3),
('GB132', 'G', 'B', 'BUNGA FULL AD', 0, 2, 3.05, 3),
('GB133', 'G', 'B', 'PAKU AD', 0, 2, 6.45, 2),
('GB134', 'G', 'B', 'CARTIER', 0, 2, 5.05, 3),
('GB135', 'G', 'B', 'PAKU TUSUK AD', 0, 2, 6.45, 3),
('GB136', 'G', 'B', 'VAR PTH AD PINK * (s) SDH', 0, 2, 5.65, 4),
('GB137', 'G', 'B', 'MOZAIK', 1, 3, 2.7, 3),
('GB138', 'G', 'B', 'OVAL 7BOLA PASIRAN 3WNA', 0, 3, 4.8, 3),
('GB139', 'G', 'B', 'OVAL 7BOLA MOZAIK+PASIRAN', 0, 3, 4.2, 3),
('GB140', 'G', 'B', 'OVAL CARTIER RANTE AD', 0, 3, 5.25, 3),
('GB141', 'G', 'B', 'OVAL BULAT FULL AD', 0, 3, 4.1, 3),
('GB142', 'G', 'B', 'OVAL ULIR LAPIS *', 0, 3, 3.8, 3),
('GB143', 'G', 'B', 'OVAL SABUK AD', 10, 3, 5.3, 2),
('GB144', 'G', 'B', '2BOLA FULL AD', 0, 2, 5.85, 3),
('GB145', 'G', 'B', 'VAR PTH GELOMBANG 0,5CM', 10, 3, 3.05, 2),
('GB146', 'G', 'B', 'VAR PTH GELOMBANG 0,5CM', 10, 3, 3.05, 2),
('GB147', 'G', 'B', 'VAR PTH GELOMBANG 0,5CM', 10, 3, 3.05, 2),
('GB148', 'G', 'B', 'VAR PTH GELOMBANG 0,5CM', 10, 3, 3, 2),
('GB149', 'G', 'B', 'VAR PTH GELOMBANG 0,5CM', 10, 3, 3, 3),
('GB150', 'G', 'B', 'VAR PTH GELOMBANG 0,5CM', 10, 3, 3, 2),
('GB151', 'G', 'B', 'VAR PTH RANTE 0.4CM', 0, 3, 3.03, 3),
('GB152', 'G', 'B', 'VAR PTH DAUN AD *', 0, 2, 8.12, 2),
('GB153', 'G', 'B', 'OVAL BUNGA AD PINK *', 0, 3, 2.9, 3),
('GB154', 'G', 'B', 'OVAL 2BOLA FULL AD*', 0, 3, 5.68, 3),
('GB155', 'G', 'B', 'OVAL BUNGA FULL AD', 0, 3, 6.25, 3),
('GB156', 'G', 'B', 'OVAL BLT FULL AD', 0, 3, 4.25, 3),
('GB157', 'G', 'B', 'OVAL AD PINK', 0, 2, 6.95, 2),
('GB158', 'G', 'B', 'OVAL 3TABUNG AD', 0, 2, 5.9, 2),
('GB159', 'G', 'B', 'OVAL DAUN AD PINK', 0, 2, 6.45, 2),
('GB160', 'G', 'B', 'OVAL 1BOLA FULL AD+1BOLA ', 0, 2, 4.45, 3),
('GB161', 'G', 'B', 'OVAL CARTIER PAKU ATAS BA', 0, 2, 7.95, 3),
('GB162', 'G', 'B', 'OVAL CARTIER PAKU', 0, 2, 6.25, 3),
('GB163', 'G', 'B', 'VAR PTH AD', 10, 3, 7, 2),
('GB164', 'G', 'B', 'OVAL HATI AD 3BTG 1AD PEN', 0, 2, 4.03, 2),
('GB165', 'G', 'B', 'OVAL 9BOLA MOZAIK 3WNA', 0, 2, 3.98, 3),
('GB166', 'G', 'B', 'OVAL \"LOVE\" 1AD PENDEMAN', 0, 3, 3.25, 3),
('GB167', 'G', 'B', 'WAJIK AD VAR PTH', 3, 3, 3.07, 2),
('GB168', 'G', 'B', 'BUNGA AD PTH +AD PINK', 3, 3, 3.02, 2),
('GB169', 'G', 'B', 'OVAL  9BOLA MOZAIK 3WNA', 0, 2, 4.02, 3),
('GB170', 'G', 'B', 'OVAL 2BOLA PASIRAN PISAH', 0, 2, 4.18, 3),
('GB171', 'G', 'B', 'OVAL 2PANAH FULL AD', 0, 2, 5.75, 3),
('GB172', 'G', 'B', 'OVAL 2KUPU AD PTH', 0, 2, 6.11, 3),
('GB173', 'G', 'B', 'OVAL 7BOLA PASIRAN+MOZA 3', 0, 2, 4.23, 3),
('GB174', 'G', 'B', 'OVAL 7BOLA 3WNA', 0, 2, 4.38, 3),
('GB175', 'G', 'B', 'DISNEY MICKEY AD PINK', 0, 2, 3.55, 3),
('GB176', 'G', 'B', 'DISNEY BLT AD', 0, 2, 3.2, 2),
('GB177', 'G', 'B', 'OVAL 1HATI 2BOLA*', 0, 2, 3.46, 3),
('GB178', 'G', 'B', 'OVAL KUPU AD*', 0, 2, 3.99, 2),
('GB180', 'G', 'B', 'BUNGA AD SABUK FULL AD', 0, 3, 5.58, 3),
('GB181', 'G', 'B', 'OVAL AD PINK+RANTAI AD', 0, 3, 4.88, 2),
('GB182', 'G', 'B', 'CARTIER AD ', 0, 3, 5.63, 3),
('GB183', 'G', 'B', 'HATI AD RANTE', 0, 3, 5.2, 3),
('GB184', 'G', 'B', 'OVAL 3BOLA BSR 4BOLA KCL ', 0, 2, 4.45, 2),
('GB185', 'G', 'B', 'OVAL 2BOLA FULL AD BOTORA', 0, 2, 6.83, 3),
('GB186', 'G', 'B', 'OVAL PP AD*', 0, 3, 5.26, 2),
('GB187', 'G', 'B', 'OVAL 2BOLA PASIRAN*', 0, 2, 4.3, 2),
('GB188', 'G', 'B', 'OVAL 2BOLA PASIRAN*', 0, 2, 4.17, 3),
('GB189', 'G', 'B', '0VAL KUPU STGH FULL AD', 0, 2, 3.04, 3),
('GB190', 'G', 'B', '0VAL AD PINK ', 0, 2, 5.53, 2),
('GB191', 'G', 'B', 'DISNEY MICKEY AD', 0, 2, 3.2, 2),
('GB192', 'G', 'B', 'CARTIER', 0, 2, 4.92, 3),
('GB193', 'G', 'B', 'OVAL CARTIER', 0, 2, 4.87, 2),
('GB194', 'G', 'B', 'OVAL T SALIPAN', 0, 2, 3.75, 2),
('GB195', 'G', 'B', 'OVAL 18BOLA TUMPUK', 0, 2, 3.9, 1),
('GB196', 'G', 'B', 'OVAL HATI LBG AD', 0, 2, 3.93, 1),
('GB197', 'G', 'B', 'VAR PTH HATI MOZAIK*', 0, 2, 3.6, 2),
('GB198', 'G', 'B', 'PITA AD 1MN*', 0, 2, 4.44, 2),
('GB199', 'G', 'B', 'OVAL 2 PANAH FULL AD', 0, 2, 5.77, 3),
('GB200', 'G', 'B', 'CARTIER RANTE AD*', 0, 3, 6.94, 2),
('GB201', 'G', 'B', '2BOLA ULIR AD SALIPAN*', 0, 3, 5.7, 2),
('GB202', 'G', 'B', 'LOVE 1AD', 0, 3, 3.19, 2),
('GB203', 'G', 'B', 'OVAL ULIR 4 BOTORAN TMPUK', 0, 3, 3.4, 2),
('GB204', 'G', 'B', 'OVAL 1BOLA FULL AD 1BOLA ', 10, 3, 5.79, 2),
('GB205', 'G', 'B', 'OMBAK AD*', 0, 3, 8.29, 2),
('GB206', 'G', 'B', 'BLT FULL AD*', 0, 3, 4.09, 2),
('GB207', 'G', 'B', 'OVAL 2AD 2CARTIER', 10, 2, 4.67, 2),
('GC004', 'G', 'C', 'VAR PTH', 8, 3, 3.03, 3),
('GC005', 'G', 'C', 'VAR PTH', 8, 3, 3.05, 2),
('GC006', 'G', 'C', 'VAR PTH', 8, 3, 3.04, 2),
('GC007', 'G', 'C', 'VAR PTH', 8, 3, 3, 3),
('GC008', 'G', 'C', 'VAR PTH', 8, 3, 3.05, 3),
('GC009', 'G', 'C', 'VAR PTH', 8, 3, 3.06, 2),
('GC010', 'G', 'C', 'VAR PTH', 10, 3, 3.28, 2),
('GC011', 'G', 'C', 'VAR PTH', 10, 3, 3.34, 2),
('GC012', 'G', 'C', 'VAR PTH', 10, 3, 3.3, 2),
('GC013', 'G', 'C', 'VAR PTH', 10, 3, 3.34, 2),
('GC014', 'G', 'C', 'VAR PTH', 10, 3, 3.26, 2),
('GC015', 'G', 'C', 'VAR PTH', 10, 3, 3.32, 2),
('GC016', 'G', 'C', 'VAR PTH RANTE', 8, 3, 3.05, 2),
('GC017', 'G', 'C', 'VAR PTH RANTE', 8, 3, 3, 2),
('GC018', 'G', 'C', 'VAR PTH RANTE', 8, 3, 3.05, 2),
('GC019', 'G', 'C', 'VAR PTH RANTE', 8, 3, 3.05, 2),
('GC020', 'G', 'C', 'VAR PTH RANTE', 8, 3, 3.08, 2),
('GC021', 'G', 'C', 'VAR PTH RANTE', 8, 3, 3.03, 2),
('GC022', 'G', 'C', 'VAR PTH RANTE', 8, 3, 3.1, 2),
('GC023', 'G', 'C', 'VAR PTH RANTE', 8, 3, 3.04, 2),
('GC024', 'G', 'C', 'VAR PTH RANTE', 8, 3, 3.08, 2),
('GK001', 'G', 'K', 'SANTA 2BEL', 0, 1, 2.02, 3),
('GK002', 'G', 'K', 'SANTA 2BEL', 0, 1, 3, 2),
('GK003', 'G', 'K', 'SANTA 2BEL', 0, 1, 2.04, 3),
('GK004', 'G', 'K', 'SANTA 2BEL', 1, 1, 2.97, 3),
('GK005', 'G', 'K', 'SANTA 2BEL', 0, 1, 3.04, 2),
('GK006', 'G', 'K', 'SANTA 2BEL', 0, 1, 2.05, 3),
('GK007', 'G', 'K', 'SANTA 5MAINAN', 0, 1, 3.18, 3),
('GK008', 'G', 'K', 'SANTA 5MAINAN', 0, 1, 3.2, 2),
('GK009', 'G', 'K', 'FNC 6MAINAN', 0, 2, 4.33, 3),
('GK010', 'G', 'K', 'FNC 6MAINAN', 0, 2, 4.31, 3),
('GK011', 'G', 'K', '*', 0, 1, 2.03, 2),
('GM001', 'G', 'M', 'FNC 8MN', 0, 2, 7.81, 3),
('GM002', 'G', 'M', 'FNC 10MN', 0, 2, 6.05, 3),
('GM003', 'G', 'M', 'FNC 5MN', 0, 2, 3.23, 2),
('GM004', 'G', 'M', 'FNC 8MN', 0, 2, 4.92, 3),
('GM005', 'G', 'M', 'FNC 8MN', 0, 2, 5.24, 3),
('GM006', 'G', 'M', 'FNC 11MN', 2, 2, 7.26, 3),
('GM007', 'G', 'M', 'FNC 5MN', 0, 2, 3.14, 3),
('GM008', 'G', 'M', 'FNC 5MN', 0, 2, 3.26, 3),
('GM009', 'G', 'M', 'FNC 8MN', 0, 2, 5.2, 3),
('GM010', 'G', 'M', 'FNC 10MN', 0, 2, 3.35, 2),
('GM011', 'G', 'M', 'ALFABET R', 2, 2, 1.86, 3),
('GM012', 'G', 'M', 'ALFABET S', 0, 2, 1.52, 3),
('GM013', 'G', 'M', 'ALFABET G', 0, 2, 1.58, 2),
('GM014', 'G', 'M', 'ALFABET B', 0, 2, 1.66, 2),
('GM015', 'G', 'M', 'ALFABET O', 0, 2, 1.53, 3),
('GM016', 'G', 'M', 'ALFABET M', 0, 2, 1.96, 3),
('GM017', 'G', 'M', 'FNC 14MAINAN', 0, 2, 3.75, 2),
('GM018', 'G', 'M', 'FNC 14MAINAN', 0, 2, 3.8, 3),
('GM019', 'G', 'M', 'COR VAR PTH', 3, 2, 9.54, 3),
('GM020', 'G', 'M', 'COR VAR PTH', 3, 2, 11.37, 3),
('GM021', 'G', 'M', 'COR VAR PTH', 3, 2, 7.51, 3),
('GM022', 'G', 'M', 'COR VAR PTH', 5, 2, 8.6, 3),
('GM023', 'G', 'M', 'COR MOZAIK', 5, 2, 7.34, 3),
('GM024', 'G', 'M', 'COR MOZAIK PASIR', 5, 2, 15.25, 3),
('GM025', 'G', 'M', 'COR VAR PTH MOZAIK', 5, 2, 6.04, 3),
('GM026', 'G', 'M', 'COR PLAT AD', 1, 2, 9.8, 3),
('GM027', 'G', 'M', 'FNC VARIASI', 0, 2, 4.1, 3),
('GM028', 'G', 'M', 'FNC VARIASI', 0, 2, 4.1, 3),
('GM029', 'G', 'M', 'HLW 5 MAINAN 3 WNA', 0, 2, 5.85, 3),
('GM030', 'G', 'M', 'FNC 3BAMBU', 6, 2, 7.9, 2),
('GM031', 'G', 'M', 'HLW 3BOLA AD', 0, 2, 5.56, 3),
('GM032', 'G', 'M', 'FNC PLAKATO 7MAINAN', 0, 2, 4.5, 3),
('GM033', 'G', 'M', 'PLAKATO GEMBOK HATI', 1, 2, 6.25, 2),
('GM034', 'G', 'M', 'SANTA 2BOLA PTH 1BOLA HTM', 0, 1, 4.63, 3),
('GM035', 'G', 'M', 'DOUBLE PERSEGI PJG VAR PT', 0, 2, 8.53, 3),
('GM036', 'G', 'M', 'ALPHABET O *GM015', 0, 2, 1.53, 2),
('GM037', 'G', 'M', 'FNC 3MN BULAT 2HATI', 0, 3, 3.1, 3),
('GM038', 'G', 'M', 'FNC 4MN', 0, 3, 3.06, 3),
('GM039', 'G', 'M', 'COR VAR PTH *GM022', 5, 2, 8.6, 3),
('GM040', 'G', 'M', 'RANTAI MOZAIK 2WNA', 5, 3, 10.85, 3),
('GM041', 'G', 'M', 'FNC VARIASI *GM028', 1, 2, 4.3, 2),
('GM042', 'G', 'M', 'ALFABET S *GM012', 0, 2, 1.53, 2),
('GM043', 'G', 'M', 'COR VAR PTH', 1, 3, 6.2, 3),
('GM044', 'G', 'M', 'FNC 4MAINAN', 0, 2, 3.15, 3),
('GM045', 'G', 'M', 'COIN 3BLT 4MN', 0, 3, 4.5, 3),
('GM046', 'G', 'M', 'FNC 10MN', 0, 2, 6.05, 2),
('GM047', 'G', 'M', 'COR SISIK NAGA VAR PTH', 0, 2, 9.1, 3),
('GM048', 'G', 'M', 'COR SISIK NAGA KUNING', 5, 2, 6.75, 3),
('GM049', 'G', 'M', 'COR VAR PTH LBG *', 3, 2, 9.55, 3),
('GM050', 'G', 'M', 'COR SISIK NAGA VAR PTH', 0, 2, 7.25, 3),
('GM051', 'G', 'M', 'FNC PLAKATO OVAL', 0, 3, 3.65, 3),
('GM052', 'G', 'M', 'PLAKATO PRSG PNJG', 0, 3, 3.1, 2),
('GM053', 'G', 'M', 'PLAKATO OVAL DOUBLE MR', 0, 3, 3.85, 2),
('GM054', 'G', 'M', 'PLAKATO OVAL DOUBLE ', 0, 3, 3.7, 2),
('GM055', 'G', 'M', 'PLAKATO WAJIK', 0, 3, 3.2, 3),
('GM056', 'G', 'M', 'PLAKATO PRSG PJG', 0, 3, 3.5, 2),
('GM057', 'G', 'M', 'COR SISIK NAGA VAR PTH*', 5, 3, 10.85, 3),
('GM058', 'G', 'M', 'FANCY 8MN *', 0, 2, 4.95, 2),
('GM059', 'G', 'M', 'PLAKATO', 0, 3, 3.6, 2),
('GM060', 'G', 'M', 'PLAKATO', 0, 3, 3.17, 2),
('GM061', 'G', 'M', 'PLAKATO', 0, 3, 3.49, 2),
('GM062', 'G', 'M', 'PLAKATO', 0, 3, 3.83, 2),
('GM063', 'G', 'M', 'PLAKATO MOZA', 0, 2, 3.2, 2),
('GM064', 'G', 'M', 'PLAKATO MOZA', 0, 2, 2.37, 2),
('GM065', 'G', 'M', 'BOTORAN', 0, 2, 4.6, 3),
('GM066', 'G', 'M', 'COR SISIK NAGA VAR PTH*', 0, 2, 9.1, 3),
('GM067', 'G', 'M', 'FNC 4 DOLLAR ', 0, 2, 3.98, 3),
('GM068', 'G', 'M', 'FNC PLAKATO 4MN*', 0, 3, 3.08, 2),
('GM069', 'G', 'M', 'ALFABET R*', 0, 2, 1.87, 3),
('GM070', 'G', 'M', 'FNC 5MN', 0, 2, 3.12, 2),
('GM071', 'G', 'M', 'FNC PLAKATO 4MN', 0, 3, 3.05, 3),
('GM072', 'G', 'M', 'PLAKATO OVAL', 0, 3, 4.53, 2),
('GM073', 'G', 'M', 'FANCY PLAKATO 4MN', 0, 3, 3.03, 2),
('GM074', 'G', 'M', 'FANCY 6MN*', 1, 3, 4.42, 2),
('GM075', 'G', 'M', 'FNC PLAKATO 4MN', 0, 3, 3.28, 2),
('GM076', 'G', 'M', 'FANCY PLAKATO 4MN*', 0, 3, 2.7, 2),
('GM077', 'G', 'M', 'FNC 1BEL+1BUNGA MOZA', 4, 2, 2.06, 2),
('GM078', 'G', 'M', 'FNC KEMBANG 1BEL+1BLT MOZ', 4, 2, 2, 2),
('GM079', 'G', 'M', 'CANDY 1BEL+BNG MOZA', 4, 2, 5.03, 2),
('GM080', 'G', 'M', 'CANDY 1BEL+BNG MOZA', 4, 2, 4.9, 2),
('GM081', 'G', 'M', 'FNC 8MN', 0, 2, 7.69, 2),
('GP001', 'G', 'P', 'HLW PATAH VAR PTH', 3, 2, 3, 2),
('GP002', 'G', 'P', 'HLW PATAH VAR PTH', 0, 2, 4.11, 2),
('GP003', 'G', 'P', 'HLW PATAH VAR PTH', 0, 2, 7.05, 3),
('GP004', 'G', 'P', 'HLW PATAH VAR PTH', 0, 2, 4.05, 3),
('GP005', 'G', 'P', 'HLW PATAH VAR PTH', 0, 2, 6.02, 3),
('GP006', 'G', 'P', 'FNC PATAH VAR PTH', 1, 2, 4.1, 2),
('GP007', 'G', 'P', 'FNC PATAH VAR PTH', 1, 2, 4, 2),
('GP008', 'G', 'P', 'HLW', 0, 1, 8.16, 2),
('GP009', 'G', 'P', 'HLW', 0, 1, 8.06, 2),
('GP010', 'G', 'P', 'HLW', 0, 1, 12.14, 2),
('GP011', 'G', 'P', 'HLW', 0, 1, 8.06, 2),
('GP012', 'G', 'P', 'HLW', 0, 1, 8.03, 2),
('GP013', 'G', 'P', 'HLW', 0, 1, 15.1, 2),
('GP014', 'G', 'P', 'HLW', 0, 1, 8.07, 3),
('GP015', 'G', 'P', 'HLW', 0, 1, 12.18, 2),
('GP016', 'G', 'P', 'SQ DOUBLE', 0, 1, 4.14, 2),
('GP017', 'G', 'P', 'SQ DOUBLE', 0, 1, 3.13, 2),
('GP018', 'G', 'P', 'SQ DOUBLE', 0, 1, 1.94, 2),
('GP019', 'G', 'P', 'SQ DOUBLE', 0, 1, 3.05, 2),
('GP020', 'G', 'P', 'SQ DOUBLE', 0, 1, 2.09, 2),
('GP021', 'G', 'P', 'SQ DOUBLE', 0, 1, 2, 2),
('GP022', 'G', 'P', 'SQ DOUBLE', 0, 1, 4.2, 2),
('GP023', 'G', 'P', 'SQ DOUBLE', 1, 2, 5.1, 3),
('GP024', 'G', 'P', 'SQ DOUBLE', 1, 2, 7.06, 3),
('GP025', 'G', 'P', 'SQ DOUBLE', 0, 2, 15.15, 3),
('GP026', 'G', 'P', 'SQ DOUBLE', 1, 2, 5.08, 3),
('GP027', 'G', 'P', 'SQ DOUBLE', 1, 2, 5.1, 2),
('GP028', 'G', 'P', 'SQ DOUBLE', 0, 2, 10.12, 3),
('GP030', 'G', 'P', 'SQ DOUBLE', 0, 2, 10.09, 3),
('GP032', 'G', 'P', 'FNC 2BEL', 0, 2, 4.12, 2),
('GP033', 'G', 'P', 'FNC 2BEL', 0, 2, 2.12, 3),
('GP034', 'G', 'P', 'FNC 2BEL', 0, 2, 5.12, 2),
('GP036', 'G', 'P', 'FNC 2BEL', 0, 2, 7.15, 3),
('GP038', 'G', 'P', 'FNC 2BEL', 0, 2, 3.12, 3),
('GP039', 'G', 'P', 'FNC BUNGA 1BEL 1MN', 0, 2, 2.09, 3),
('GP040', 'G', 'P', 'FNC BUNGA 1BEL 1MN', 0, 2, 2.07, 3),
('GP041', 'G', 'P', 'MEDAN 2BEL', 0, 2, 2.73, 2),
('GP042', 'G', 'P', 'MEDAN BUNGA 2 BEL', 1, 2, 4.15, 2),
('GP043', 'G', 'P', 'MEDAN BUNGA 2BEL', 0, 2, 4, 2),
('GP044', 'G', 'P', 'HLW PLAT', 1, 2, 2.43, 3),
('GP045', 'G', 'P', 'HLW PLAT', 1, 2, 2.37, 3),
('GP046', 'G', 'P', 'PLAKATO', 0, 2, 4.77, 2),
('GP047', 'G', 'P', 'HLW SQ PLAT AD', 6, 2, 7.07, 2),
('GP048', 'G', 'P', 'FANCY', 0, 3, 4.6, 3),
('GP049', 'G', 'P', 'FANCY', 0, 3, 3.62, 3),
('GP050', 'G', 'P', 'FANCY', 0, 3, 3.83, 2),
('GP051', 'G', 'P', 'FANCY 2 BEL', 1, 3, 2.32, 3),
('GP052', 'G', 'P', 'FANCY', 0, 3, 3.5, 3),
('GP053', 'G', 'P', 'FANCY', 1, 3, 3.72, 3),
('GP054', 'G', 'P', 'PLAKATO', 1, 3, 3.1, 3),
('GP055', 'G', 'P', 'SQ DOUBLE', 0, 2, 10, 2),
('GP056', 'G', 'P', 'PLAKATO', 0, 3, 3.65, 3),
('GP057', 'G', 'P', 'SQ DOUBLE', 0, 2, 10.1, 1),
('GP058', 'G', 'P', 'SQ DOUBLE', 0, 2, 10.1, 1),
('GP059', 'G', 'P', 'SQ DOUBLE', 0, 2, 15.2, 2),
('GP060', 'G', 'P', 'PERSEGI MOZAIK 2BEL', 0, 3, 2.35, 3),
('GP061', 'G', 'P', 'SQ DOUBLE *', 0, 2, 10.12, 2),
('GP062', 'G', 'P', 'FANCY 2BEL*', 0, 3, 2.1, 3),
('GP063', 'G', 'P', 'MOZAIK 2BEL', 0, 3, 2.35, 2),
('GP064', 'G', 'P', 'FANCY 2BEL', 0, 3, 2.07, 2),
('GP065', 'G', 'P', 'HLW PLAT', 1, 2, 2.43, 2),
('GP066', 'G', 'P', 'SQ DOUBLE*', 0, 2, 5.18, 2),
('GP067', 'G', 'P', 'SQUARE DOUBLE *', 1, 2, 5.08, 2),
('GP068', 'G', 'P', 'VAR PTH MOZAIK 6.5CM', 10, 3, 3.37, 3),
('GP069', 'G', 'P', 'VAR PTH MOZAIK 6.5CM', 10, 3, 3.4, 3),
('GP070', 'G', 'P', 'VAR PTH MOZAIK 6.5CM', 10, 3, 3.37, 3),
('GP071', 'G', 'P', 'VAR PTH MOZAIK 6.5CM', 10, 3, 3.32, 2),
('GP072', 'G', 'P', 'VAR PTH MOZAIK 6.5CM', 10, 3, 3.33, 3),
('GP073', 'G', 'P', 'VAR PTH MOZAIK 6.5CM', 10, 3, 3.35, 3),
('GP074', 'G', 'P', 'MOZAIK 5CM*', 1, 2, 2.25, 2),
('GP075', 'G', 'P', 'MOZAIK  7CM*', 1, 3, 2.7, 2),
('GP076', 'G', 'P', 'FANCY 2BEL*', 0, 2, 2.19, 2),
('HB001', 'H', 'B', 'MOZAIK', 1, 1, 2.25, 3),
('HB002', 'H', 'B', 'MOZAIK', 1, 1, 2.21, 3),
('HB003', 'H', 'B', 'AD ANK STGH WARU', 3, 2, 3.23, 3),
('HB004', 'H', 'B', 'AD ANK 2 WARU', 3, 2, 3.1, 2),
('HB005', 'H', 'B', 'AD ANK STGH WARU', 3, 2, 3.2, 2),
('HB006', 'H', 'B', 'AD ANK STGH WARU PINK', 3, 2, 3.32, 3),
('HB007', 'H', 'B', 'AD ANK STGH WARU', 3, 2, 3.11, 2),
('HB008', 'H', 'B', 'AD ANK STGH WARU', 3, 2, 3.04, 3),
('HB009', 'H', 'B', 'AD ANK STGH 2 WARU', 3, 2, 3.06, 2),
('HB010', 'H', 'B', 'AD ANK WAJIK', 3, 2, 3.26, 2),
('HB011', 'H', 'B', 'AD ANK 2 WARU', 3, 2, 3.07, 2),
('HB012', 'H', 'B', 'VAR 6 DAUN TIMBUL', 0, 3, 3.7, 3),
('HB013', 'H', 'B', 'DAUN MOZAIK', 0, 3, 3.65, 3),
('HB014', 'H', 'B', 'DAUN MOZAIK', 0, 3, 3.55, 3),
('HB015', 'H', 'B', 'DAUN MOZAIK', 0, 3, 3.6, 3),
('HB016', 'H', 'B', 'MOZAIK', 1, 2, 2.25, 3),
('HB017', 'H', 'B', 'MOZAIK', 1, 2, 2.3, 3),
('HB018', 'H', 'B', 'MOZAIK', 1, 2, 2.3, 3),
('HB019', 'H', 'B', 'VAR 6 DAUN TIMBUL', 0, 3, 3.7, 2),
('HB020', 'H', 'B', 'VAR 6 DAUN TIMBUL', 0, 3, 3.65, 2),
('HB021', 'H', 'B', 'VAR 6 DAUN TIMBUL', 0, 3, 3.6, 2),
('HB022', 'H', 'B', 'VAR 6 DAUN TIMBUL', 0, 3, 3.65, 2),
('HB023', 'H', 'B', 'VAR 6 DAUN TIMBUL', 0, 3, 3.7, 2),
('HB024', 'H', 'B', 'VAR 6 DAUN TIMBUL', 0, 3, 3.6, 2),
('HB025', 'H', 'B', 'VAR PTH ', 0, 3, 3.05, 2),
('HB026', 'H', 'B', 'VAR PTH ', 0, 3, 2.9, 2),
('HB027', 'H', 'B', 'BLT ULIR AD PINK MERAH', 0, 3, 2, 2),
('HB028', 'H', 'B', 'HATI AD PINK', 0, 3, 2.05, 3),
('HB029', 'H', 'B', 'HATI AD PINK', 0, 3, 2.05, 3),
('HB030', 'H', 'B', 'BLT AD PINK MERAH', 0, 3, 2, 2),
('HB031', 'H', 'B', 'KUPU AD PINK', 0, 3, 2, 3),
('HB032', 'H', 'B', 'KUPU AD PINK', 0, 3, 2.05, 3),
('HB033', 'H', 'B', 'MOZAIK 3WNA 4MM D4CM', 0, 3, 2.62, 2),
('HB034', 'H', 'B', 'MOZAIK 3WNA 4MM D4CM', 0, 3, 2.61, 2),
('HB035', 'H', 'B', 'MOZAIK 3WNA 4MM D4CM', 0, 3, 2.62, 2),
('HB036', 'H', 'B', 'MOZAIK 3WNA 4MM D4CM', 0, 3, 2.67, 2),
('HB037', 'H', 'B', 'MOZAIK 3WNA 4MM D4CM', 0, 3, 2.65, 2),
('HB038', 'H', 'B', 'MOZAIK 3WNA 3MM D4CM', 0, 3, 2.12, 2),
('HB039', 'H', 'B', 'MOZAIK 3WNA 3MM D4CM', 0, 3, 2.06, 2),
('HB040', 'H', 'B', 'MOZAIK 3WNA 3MM D4CM', 0, 3, 2.11, 2),
('HB041', 'H', 'B', 'MOZAIK 3WNA 3MM D4CM', 0, 3, 2.08, 2),
('HB042', 'H', 'B', '2BOLA AD SALIPAN', 0, 3, 2.8, 2),
('HB043', 'H', 'B', '2BOLA AD SALIPAN', 0, 3, 2.82, 3),
('HB044', 'H', 'B', 'ULIR 2MN HATI', 0, 3, 2.15, 2),
('HB045', 'H', 'B', 'ULIR 2MN HATI', 0, 3, 2.15, 2),
('HB046', 'H', 'B', 'VAR PTH MOZAIK 0.4CM', 3, 3, 2.02, 2),
('HB047', 'H', 'B', 'VAR PTH MOZAIK 0.4CM', 3, 3, 2.05, 3),
('HB048', 'H', 'B', 'VAR PTH MOZAIK 0.4CM', 3, 3, 2.04, 2),
('HB049', 'H', 'B', 'VAR PTH MOZAIK 0.4CM', 3, 3, 2, 2),
('HB050', 'H', 'B', 'VAR PTH MOZAIK 0.4CM', 3, 3, 2.05, 2),
('HB051', 'H', 'B', 'VAR PTH MOZAIK 0.4CM', 3, 3, 2.05, 3),
('HB052', 'H', 'B', 'HK PITA CAT', 0, 2, 2.25, 2),
('HB053', 'H', 'B', 'HK PITA CAT', 0, 2, 2.25, 2),
('HB054', 'H', 'B', 'MELODY CAT', 0, 2, 2.1, 2),
('HB055', 'H', 'B', 'MELODY CAT', 0, 2, 2.1, 2),
('HB056', 'H', 'B', 'TSUM CAT CE', 0, 2, 1.9, 2),
('HB057', 'H', 'B', 'TSUM CAT CO', 0, 2, 1.5, 2),
('HB058', 'H', 'B', 'MINI FULL AD', 0, 2, 1.65, 2),
('HB059', 'H', 'B', 'MINI FULL AD', 0, 2, 1.63, 2),
('HB060', 'H', 'B', 'BUNGA KUPU CAT AD', 0, 2, 2.37, 2),
('HB061', 'H', 'B', 'BUNGA KUPU CAT AD', 0, 2, 2.43, 2),
('HB062', 'H', 'B', 'MOZAIK', 1, 2, 2.22, 2),
('HB063', 'H', 'B', 'MOZAIK', 1, 2, 2.25, 3),
('HB064', 'H', 'B', 'MOZAIK', 1, 2, 2.26, 3),
('HB065', 'H', 'B', 'VAR PTH BAMBU', 0, 2, 2.98, 2),
('HB066', 'H', 'B', 'VAR PTH BAMBU', 0, 2, 2.92, 2),
('HB067', 'H', 'B', 'VAR PTH BAMBU', 0, 2, 2.94, 2),
('HB068', 'H', 'B', 'VAR PTH MOZAIK', 0, 2, 2.92, 1),
('HB069', 'H', 'B', 'VAR PTH MOZAIK', 0, 2, 2.9, 1),
('HB070', 'H', 'B', 'VAR PTH MOZAIK', 0, 2, 2.9, 1),
('HB071', 'H', 'B', '5BOLA (1MOZAIK 4PASIRAN)', 0, 2, 2.75, 1),
('HB072', 'H', 'B', '5BOLA (1MOZAIK 4PASIRAN)', 0, 2, 2.7, 2),
('HB073', 'H', 'B', '5BOLA (1MOZAIK 4PASIRAN)', 0, 2, 2.66, 1),
('HB074', 'H', 'B', '5BOLA (1MOZAIK 4PASIRAN)', 0, 2, 2.7, 2),
('HB075', 'H', 'B', '5BOLA (3MOZAIK 2PASIRAN)', 0, 2, 2.56, 3),
('HB076', 'H', 'B', '5BOLA (3MOZAIK 2PASIRAN)', 0, 2, 2.56, 3),
('HB077', 'H', 'B', 'VAR PTH AD', 0, 2, 2.73, 1),
('HB078', 'H', 'B', 'VAR PTH AD', 0, 2, 2.73, 1),
('HB079', 'H', 'B', 'VAR PTH MOZA', 3, 2, 2.91, 2),
('HB080', 'H', 'B', 'VAR PTH GELOMBANG', 0, 2, 2.69, 2),
('HB081', 'H', 'B', 'KUPU AD PINK', 0, 3, 1.92, 2),
('HB082', 'H', 'B', 'HATI AD PINK', 0, 3, 1.95, 2),
('HB083', 'H', 'B', 'HATI AD PINK', 0, 3, 1.95, 2),
('HM001', 'H', 'M', '2MN CAT 2HATI', 4, 2, 1.73, 1),
('HM002', 'H', 'M', '2MN CAT 2HATI', 4, 2, 1.72, 3),
('HM003', 'H', 'M', 'FANCY 2 BEL', 0, 3, 2.07, 3),
('HM004', 'H', 'M', '2MN CAT 2HATI', 4, 2, 1.75, 2),
('HM005', 'H', 'M', '6MN', 0, 1, 2.4, 3),
('HM006', 'H', 'M', 'FANCY 2 BEL', 0, 3, 2.1, 3),
('HM007', 'H', 'M', 'FANCY 2 BEL', 0, 3, 2.3, 3),
('HM008', 'H', 'M', 'FANCY 2 BEL', 0, 3, 2.15, 3),
('HM009', 'H', 'M', 'FANCY 2 BEL', 0, 3, 2.35, 3),
('HM010', 'H', 'M', 'FANCY 2 BEL', 0, 3, 3.1, 3),
('HM011', 'H', 'M', 'FANCY 4MN ', 0, 3, 2.75, 3),
('HM012', 'H', 'M', 'FANCY 4MN', 0, 3, 2.7, 3),
('HM013', 'H', 'M', 'FANCY 5MN', 0, 3, 3.1, 2),
('HM014', 'H', 'M', 'FANCY 4MN', 0, 3, 3.1, 3),
('HM015', 'H', 'M', 'FANCY 6MN', 0, 3, 4.3, 3),
('HM016', 'H', 'M', 'FNC 4MN  DEWASA', 0, 3, 2.7, 3),
('HM017', 'H', 'M', 'FNC 4MN DEWASA', 0, 3, 3.05, 3),
('HM018', 'H', 'M', 'FNC 4MN DEWASA', 0, 3, 2.72, 3),
('HM019', 'H', 'M', 'FNC 4MN DEWASA', 0, 3, 3.08, 3),
('HM020', 'H', 'M', 'FANCY 2BEL*', 0, 3, 2.13, 2),
('HM021', 'H', 'M', 'TSUM 2MN CAT 2BTG', 0, 2, 4.5, 3),
('HM022', 'H', 'M', '1 MINI CAT 3BTG', 0, 2, 1.95, 2),
('HM023', 'H', 'M', '2MELODY CAT 2BLT', 0, 2, 2.85, 2),
('HM024', 'H', 'M', '1HK CAT 1PITA CAT 4BLT', 0, 2, 2.38, 2),
('HM025', 'H', 'M', 'FNC HK + PITA CAT 4MN', 0, 2, 2.38, 3),
('HP001', 'H', 'P', 'HLW PATAH', 0, 2, 2.05, 3),
('HP002', 'H', 'P', 'HLW PATAH', 0, 2, 2.05, 1),
('HP003', 'H', 'P', 'HLW PATAH', 0, 2, 3.03, 2),
('HP004', 'H', 'P', 'HLW PATAH', 0, 2, 3.05, 1),
('HP005', 'H', 'P', 'FNC 2BEL', 0, 3, 3.05, 3),
('IB001', 'I', 'B', 'VAR CAT HK', 3, 2, 2.08, 2),
('IB002', 'I', 'B', 'VAR CAT HK', 3, 2, 2.12, 2),
('IB003', 'I', 'B', 'VAR CAT HK', 3, 2, 2.12, 2),
('IB004', 'I', 'B', 'VAR CAT HK', 3, 2, 1.45, 2),
('IB005', 'I', 'B', 'VAR CAT DORA', 3, 2, 1.51, 2),
('IB006', 'I', 'B', 'VAR CAT HK', 3, 2, 1.54, 2),
('IB007', 'I', 'B', 'VAR CAT HK', 3, 2, 1.6, 2),
('IB008', 'I', 'B', 'VAR CAT DORA', 3, 2, 2.07, 2),
('IB009', 'I', 'B', 'VAR CAT BONEKA', 3, 2, 1.52, 2),
('IB010', 'I', 'B', 'VAR CAT STROBERI', 3, 2, 1.54, 3),
('IB011', 'I', 'B', 'VAR CAT 2AD', 3, 2, 2.19, 2),
('IB012', 'I', 'B', 'VAR CAT AD BLT', 3, 2, 2.05, 2),
('IB013', 'I', 'B', 'VAR CAT 2AD BTG', 2, 2, 2.07, 3),
('IB014', 'I', 'B', 'VAR CAT 2AD BTG', 3, 2, 2.1, 2),
('IB015', 'I', 'B', 'VAR CAT AD BLT', 3, 2, 2.11, 2),
('IB016', 'I', 'B', 'VAR PTH+AD PTH PINK', 3, 2, 2.04, 2),
('IB017', 'I', 'B', 'VAR PTH+AD BUNGA', 3, 2, 2.06, 2),
('IB018', 'I', 'B', 'VAR PTH+AD BUNGA', 3, 2, 2.13, 2),
('IB020', 'I', 'B', 'VAR 5BOLA', 0, 2, 2.63, 3),
('IB021', 'I', 'B', 'VAR 5BOLA', 0, 2, 2.43, 3),
('IB022', 'I', 'B', 'VAR 5BOLA', 0, 2, 2.55, 3),
('IB023', 'I', 'B', 'VAR 5BOLA', 0, 2, 2.44, 3),
('IB024', 'I', 'B', 'VAR PTH', 0, 2, 2.81, 3),
('IB025', 'I', 'B', 'VAR PTH', 0, 2, 2.82, 3),
('IB026', 'I', 'B', 'VAR PTH', 0, 2, 2.27, 3),
('IB027', 'I', 'B', 'VAR PTH', 0, 2, 1.97, 3),
('IB028', 'I', 'B', 'VAR PTH', 0, 2, 2, 3),
('IB029', 'I', 'B', 'VAR PTH', 0, 2, 2.22, 3),
('IB030', 'I', 'B', 'VAR PTH', 0, 2, 2.82, 3),
('IB031', 'I', 'B', 'VAR PTH', 0, 2, 2.25, 3),
('IB032', 'I', 'B', 'VAR PTH', 0, 2, 1.98, 3),
('IB033', 'I', 'B', 'VAR AD WAJIK', 0, 2, 2.2, 2),
('IB034', 'I', 'B', 'VAR AD WAJIK', 0, 2, 2.18, 2),
('IB035', 'I', 'B', 'ULIR VAR AD HATI', 0, 2, 2.08, 3),
('IB036', 'I', 'B', 'ULIR VAR AD HATI', 0, 2, 2.12, 2),
('IB037', 'I', 'B', 'ULIR VAR AD OVAL', 0, 2, 2, 2),
('IB038', 'I', 'B', 'VAR BTG+AD', 4, 2, 2.08, 2),
('IB039', 'I', 'B', 'VAR MOZAIK', 1, 2, 1.76, 3),
('IB040', 'I', 'B', 'VAR MOZAIK', 1, 2, 1.76, 3),
('IB041', 'I', 'B', 'STGH PIPA', 3, 2, 3.03, 2),
('IB042', 'I', 'B', 'STGH PIPA', 3, 2, 3.03, 2),
('IB043', 'I', 'B', 'STGH PIPA', 3, 3, 3.03, 3),
('IB044', 'I', 'B', 'STGH PIPA', 3, 2, 2.12, 3),
('IB045', 'I', 'B', 'STGH PIPA', 5, 2, 2.2, 3),
('IB046', 'I', 'B', 'VAR PUTIH PINK', 0, 3, 2.82, 3),
('IB047', 'I', 'B', 'DAUN MOZAIK', 0, 3, 3.3, 3),
('IB048', 'I', 'B', 'DAUN MOZAIK', 0, 3, 3.3, 3),
('IB049', 'I', 'B', 'DAUN MOZAIK', 0, 3, 3.35, 2),
('IB050', 'I', 'B', 'WAJIK KUNING VAR PTH', 8, 3, 2.15, 3),
('IB051', 'I', 'B', 'WAJIK KUNING VAR PTH', 8, 3, 2.08, 3),
('IB052', 'I', 'B', 'WAJIK KUNING VAR PTH', 8, 3, 2, 3),
('IB053', 'I', 'B', 'STGH PIPA VAR PTH', 0, 3, 2.5, 2),
('IB054', 'I', 'B', 'STGH PIPA VAR PTH', 0, 3, 2.45, 3),
('IB055', 'I', 'B', 'CAT BNK BINTANG AD *', 3, 2, 2.1, 1),
('IB056', 'I', 'B', 'VAR PTH MRH MOZAIK 3.5 *', 0, 2, 1.96, 2),
('IB057', 'I', 'B', 'VAR PTH MERAH MOZAIK 4 *', 0, 2, 2.8, 2),
('IB058', 'I', 'B', 'MOZAIK *', 1, 2, 1.76, 3),
('IB059', 'I', 'B', 'MOZAIK 3WNA 4MM D3,5CM ', 0, 3, 2.45, 2),
('IB060', 'I', 'B', 'MOZAIK 3WNA 4MM D3,5CM', 0, 3, 2.3, 3),
('IB061', 'I', 'B', 'MOZAIK 3WNA 4MM D3,5CM', 0, 3, 2.3, 3),
('IB062', 'I', 'B', 'MOZAIK 3WNA 4MM D3,5CM', 0, 3, 2.3, 3),
('IB063', 'I', 'B', 'MOZAIK 3WNA 4MM D3,5CM', 0, 3, 2.42, 2),
('IB064', 'I', 'B', 'VAR PTH BAMBU  0.5CM', 0, 3, 2.02, 3),
('IB065', 'I', 'B', 'VAR PTH BAMBU  0.5CM', 0, 3, 2.02, 3),
('IB066', 'I', 'B', 'VAR PTH GLMBANG 0.5CM', 0, 3, 2.13, 3),
('IB067', 'I', 'B', 'VAR PTH GLMBANG 0.5CM', 0, 3, 2.07, 3),
('IB068', 'I', 'B', 'VAR PTH GLMBNG 0.8CM', 3, 3, 3.03, 3),
('IB069', 'I', 'B', 'VAR PTH GLMBNG 0.8CM', 3, 3, 3.08, 3),
('IB070', 'I', 'B', 'VAR PTH*', 0, 2, 2.82, 2),
('IB071', 'I', 'B', 'HK CAT', 0, 2, 2.25, 1),
('IB072', 'I', 'B', 'BNK BNGA CAT', 3, 2, 2.04, 2),
('IB073', 'I', 'B', 'BINTANG MOZAIK 3WNA', 0, 3, 2.28, 3),
('IB074', 'I', 'B', 'VAR PTH MOZAIK*', 3, 3, 2.03, 1),
('IB075', 'I', 'B', 'VAR PTH MOZAIK*', 3, 3, 2.03, 1),
('KC001', 'K', 'C', '', 0, 2, 10, 2),
('KC002', 'K', 'C', '', 0, 2, 9.82, 2),
('KF001', 'K', 'F', NULL, 0, 2, 4.96, 1),
('KF002', 'K', 'F', NULL, 0, 2, 5.1, 2),
('KF003', 'K', 'F', '', 0, 2, 10.14, 3),
('KF004', 'K', 'F', '', 0, 2, 6.94, 3),
('KF005', 'K', 'F', NULL, 0, 2, 7.92, 2),
('KF006', 'K', 'F', NULL, 0, 2, 4.98, 2),
('KF007', 'K', 'F', NULL, 0, 2, 4.08, 2),
('KF008', 'K', 'F', NULL, 0, 2, 3, 2),
('KF009', 'K', 'F', NULL, 0, 2, 4.08, 2),
('KF010', 'K', 'F', '', 0, 2, 4.05, 2),
('KF011', 'K', 'F', '', 0, 2, 2, 3),
('KF012', 'K', 'F', '', 0, 2, 7.15, 3),
('KF013', 'K', 'F', '', 0, 2, 3.02, 2),
('KF014', 'K', 'F', '', 0, 2, 8.13, 3),
('KF015', 'K', 'F', '', 0, 2, 2, 3),
('KF016', 'K', 'F', NULL, 0, 2, 4.11, 2),
('KF017', 'K', 'F', '', 0, 2, 3.12, 3),
('KF018', 'K', 'F', NULL, 0, 2, 6.09, 2),
('KF019', 'K', 'F', '', 0, 2, 3.12, 3),
('KF020', 'K', 'F', '', 0, 2, 3.05, 2),
('KF021', 'K', 'F', '', 0, 2, 1.59, 3),
('KF022', 'K', 'F', NULL, 0, 2, 3.05, 2),
('KF023', 'K', 'F', NULL, 0, 2, 3.09, 2),
('KF024', 'K', 'F', '', 0, 2, 1.59, 3),
('KF025', 'K', 'F', NULL, 0, 2, 3.12, 1),
('KF026', 'K', 'F', '', 0, 2, 1.57, 3),
('KF027', 'K', 'F', '', 0, 2, 10.14, 2),
('KF028', 'K', 'F', 'KOKOT S', 0, 2, 8.13, 2),
('KF029', 'K', 'F', '*', 0, 2, 1.6, 3),
('KF030', 'K', 'F', '*', 0, 2, 3.2, 2),
('KF031', 'K', 'F', '', 0, 2, 6.89, 2),
('KF032', 'K', 'F', '', 0, 2, 1.57, 1),
('KF033', 'K', 'F', '', 0, 2, 1.56, 1),
('KF034', 'K', 'F', '', 0, 2, 1.59, 2),
('KF035', 'K', 'F', '', 0, 2, 1.54, 2),
('KH001', 'K', 'H', NULL, 0, 1, 6.11, 2),
('KH002', 'K', 'H', NULL, 0, 1, 7.06, 1),
('KH003', 'K', 'H', NULL, 0, 1, 7.05, 2),
('KH004', 'K', 'H', NULL, 0, 1, 6.11, 1),
('KH005', 'K', 'H', NULL, 0, 1, 2.06, 2),
('KH006', 'K', 'H', NULL, 0, 1, 6.16, 2),
('KH007', 'K', 'H', NULL, 0, 1, 2.11, 2),
('KI001', 'K', 'I', '', 0, 1, 2.05, 3),
('KI002', 'K', 'I', '', 0, 1, 2.1, 3),
('KI003', 'K', 'I', '*', 0, 1, 2.02, 3),
('KI004', 'K', 'I', '*', 0, 1, 2.05, 3),
('KI005', 'K', 'I', '*', 0, 1, 2.02, 3),
('KI006', 'K', 'I', '', 0, 1, 3.03, 2),
('KI007', 'K', 'I', '', 0, 1, 2.08, 3),
('KI008', 'K', 'I', '', 0, 1, 2.05, 2),
('KL001', 'K', 'L', '', 0, 2, 7.93, 2),
('KL002', 'K', 'L', '', 0, 2, 6.11, 3),
('KL003', 'K', 'L', '', 0, 2, 7.1, 2),
('KL004', 'K', 'L', '', 0, 2, 6.07, 3),
('KL005', 'K', 'L', '', 0, 2, 5.1, 2),
('KL006', 'K', 'L', '', 0, 2, 10.13, 2),
('KL007', 'K', 'L', '', 0, 2, 5.07, 1),
('KL008', 'K', 'L', '', 0, 2, 5.93, 1),
('KM001', 'K', 'M', '', 0, 1, 3.09, 3),
('KM002', 'K', 'M', '', 0, 1, 3.1, 3),
('KM003', 'K', 'M', '', 0, 1, 5.12, 3),
('KM004', 'K', 'M', '', 0, 1, 6.24, 3),
('KM005', 'K', 'M', '', 0, 1, 5.05, 2),
('KM006', 'K', 'M', NULL, 0, 1, 6.12, 2),
('KM007', 'K', 'M', '', 0, 1, 5.08, 3),
('KM008', 'K', 'M', '', 0, 1, 3.03, 3),
('KM009', 'K', 'M', NULL, 0, 1, 5.06, 2),
('KM010', 'K', 'M', NULL, 0, 1, 4, 2),
('KM011', 'K', 'M', NULL, 0, 1, 5.06, 2),
('KM012', 'K', 'M', '', 0, 1, 4.08, 3),
('KM013', 'K', 'M', '', 0, 1, 4.11, 2),
('KM014', 'K', 'M', NULL, 0, 1, 4, 2),
('KM015', 'K', 'M', '', 0, 1, 8.17, 3),
('KM016', 'K', 'M', '', 0, 1, 5.05, 3),
('KM017', 'K', 'M', NULL, 0, 1, 2.97, 2),
('KM018', 'K', 'M', NULL, 0, 1, 7.04, 2),
('KM019', 'K', 'M', '', 0, 1, 8.12, 3),
('KM020', 'K', 'M', NULL, 0, 1, 10.06, 2),
('KM021', 'K', 'M', '', 0, 1, 4.15, 3),
('KM022', 'K', 'M', '', 0, 1, 3.07, 3),
('KM023', 'K', 'M', '', 0, 1, 2.05, 3),
('KM024', 'K', 'M', '', 0, 1, 3.05, 3),
('KM025', 'K', 'M', '', 0, 1, 2.07, 3),
('KM026', 'K', 'M', NULL, 0, 1, 9.84, 2),
('KM027', 'K', 'M', '', 0, 1, 2.08, 3),
('KM028', 'K', 'M', '', 0, 1, 2.1, 3),
('KM030', 'K', 'M', '', 0, 1, 2.05, 3),
('KM031', 'K', 'M', '', 0, 1, 2.15, 3),
('KM032', 'K', 'M', '*', 0, 1, 2.1, 3),
('KM033', 'K', 'M', '', 0, 1, 2.05, 3),
('KM034', 'K', 'M', '', 0, 1, 2.05, 3),
('KM035', 'K', 'M', '', 0, 1, 2.15, 3),
('KM036', 'K', 'M', '', 0, 1, 2.1, 3),
('KM037', 'K', 'M', '*', 0, 1, 2.05, 3),
('KM038', 'K', 'M', '*', 0, 1, 4.15, 2),
('KM039', 'K', 'M', '*', 0, 1, 2.05, 3),
('KM040', 'K', 'M', '*', 0, 1, 8.2, 2),
('KM041', 'K', 'M', '', 0, 1, 2.03, 3),
('KM042', 'K', 'M', '', 0, 1, 5.06, 1),
('KM043', 'K', 'M', '', 0, 1, 5.15, 1),
('KM044', 'K', 'M', '*', 0, 1, 2.02, 3),
('KM045', 'K', 'M', '', 0, 1, 2.04, 2),
('KM046', 'K', 'M', '', 0, 1, 2.11, 2),
('KM047', 'K', 'M', '', 0, 1, 2.98, 1),
('KM048', 'K', 'M', '', 0, 1, 3, 2),
('KM049', 'K', 'M', '*', 0, 1, 6.24, 2),
('KN001', 'K', 'N', 'ALFABET F', 0, 2, 1.97, 3),
('KN002', 'K', 'N', 'ALFABET D', 0, 2, 2.09, 3),
('KN003', 'K', 'N', 'ALFABET R', 0, 2, 2.15, 3),
('KN004', 'K', 'N', 'ALFABET T', 0, 2, 2.31, 2),
('KN005', 'K', 'N', 'ALFABET M', 0, 2, 2.33, 3),
('KN006', 'K', 'N', 'ALFABET E', 0, 2, 2.04, 3),
('KN007', 'K', 'N', 'ALFABET B', 0, 2, 2.29, 3),
('KN008', 'K', 'N', 'ALFABET C', 0, 2, 2.28, 3),
('KN009', 'K', 'N', 'ALFABET G', 0, 2, 2.1, 2),
('KN010', 'K', 'N', 'ALFABET M', 0, 2, 2.23, 3),
('KN011', 'K', 'N', 'HATI LAYER AD', 0, 1, 2.47, 3),
('KN012', 'K', 'N', 'HATI LAYER AD', 0, 1, 2.46, 2),
('KN013', 'K', 'N', 'FNC LOVE 2MAINAN', 0, 2, 2.04, 3),
('KN014', 'K', 'N', 'SANTA GEMBOK HATI AD', 1, 1, 2.7, 3),
('KN015', 'K', 'N', 'SANTA AD BLT', 1, 1, 2.8, 3),
('KN016', 'K', 'N', 'SANTA BLT AD LOVE', 1, 1, 4.59, 2),
('KN017', 'K', 'N', 'SANTA PITA AD 2MAINAN', 0, 1, 2.92, 3),
('KN018', 'K', 'N', 'FNC ALFABET J', 1, 2, 6.53, 1),
('KN019', 'K', 'N', 'SANTA PITA AD 2MAINAN', 0, 1, 6.3, 2),
('KN020', 'K', 'N', 'ALFABET F', 0, 2, 1.97, 3),
('KN022', 'K', 'N', 'GEMBOK HATI FULL AD *KN01', 1, 1, 2.7, 3),
('KN023', 'K', 'N', 'GMBOK HATI AD CAT HITAM', 1, 1, 2.7, 3),
('KN024', 'K', 'N', '3 BOLA 3WNA', 4, 1, 3.8, 3),
('KN025', 'K', 'N', 'BLT FULL AD *', 1, 1, 2.85, 3),
('KN026', 'K', 'N', 'HATI AD *', 0, 1, 2.5, 2),
('KN027', 'K', 'N', 'ALFABET M *', 0, 2, 2.35, 3),
('KN028', 'K', 'N', 'DISNEY GEMBOK HATI AD LUB', 0, 2, 2.42, 3),
('KN029', 'K', 'N', 'ALFABET R *', 0, 2, 2.15, 3),
('KN030', 'K', 'N', 'DISNEY MICKEY AD PINK', 0, 1, 2.7, 2),
('KN031', 'K', 'N', 'DISNEY MICKEY LBG+MICKEY ', 0, 2, 2.9, 3),
('KN032', 'K', 'N', 'DISNEY GEMBOK HATI MICKEY', 0, 2, 2.4, 2),
('KN033', 'K', 'N', '3BOLA MOZAIK 3WNA', 0, 1, 3.75, 3),
('KN034', 'K', 'N', 'ALFABET C*', 0, 2, 2.28, 2),
('KN035', 'K', 'N', '3BOLA MOZAIK 3WNA', 4, 1, 3.7, 3),
('KN036', 'K', 'N', 'DISNEY MICKEY', 0, 2, 2.92, 3),
('KN037', 'K', 'N', 'SANTA MELODY CAT', 0, 1, 2.78, 2),
('KN038', 'K', 'N', 'SANTA HK CAT', 0, 1, 2.88, 2),
('KN039', 'K', 'N', 'SANTA HK CAT 1AD PENDEMAN', 0, 1, 3.1, 2),
('KN040', 'K', 'N', 'SANTA MIKI CAT', 0, 1, 2.26, 2),
('KN041', 'K', 'N', 'FNC MINI CAT 1AD PENDEM', 0, 2, 2.9, 2),
('KN042', 'K', 'N', 'FNC HK PITA 1AD+1AD PNDEM', 0, 2, 2.8, 2),
('KN043', 'K', 'N', '3BOLA MOZAIK 3WNA*', 0, 1, 3.7, 3),
('KN044', 'K', 'N', '3BOLA MOZAIK 3WNA *', 4, 1, 3.7, 3),
('KN045', 'K', 'N', 'GEMBOK AD CAT*', 1, 1, 2.69, 2),
('KN046', 'K', 'N', 'PITA AD*', 0, 1, 2.92, 2),
('KN047', 'K', 'N', 'ALFABET R*', 0, 2, 2.16, 2),
('KQ001', 'K', 'Q', '', 4, 1, 6.96, 3),
('KR001', 'K', 'R', '', 0, 1, 2.06, 3),
('KR002', 'K', 'R', '', 0, 1, 2.02, 2),
('KR003', 'K', 'R', '', 0, 1, 3.11, 2),
('KR004', 'K', 'R', NULL, 0, 1, 7.12, 2),
('KR005', 'K', 'R', NULL, 0, 1, 5.05, 2),
('KR006', 'K', 'R', '', 0, 1, 3.08, 3),
('KR007', 'K', 'R', NULL, 0, 1, 9.98, 2),
('KR008', 'K', 'R', NULL, 0, 1, 7.98, 2),
('KR009', 'K', 'R', NULL, 0, 1, 10.07, 2),
('KR010', 'K', 'R', NULL, 0, 1, 7.04, 2),
('KR011', 'K', 'R', NULL, 0, 1, 5.97, 2),
('KR012', 'K', 'R', '', 0, 1, 4.07, 2),
('KR013', 'K', 'R', '', 0, 1, 6.01, 2),
('KR014', 'K', 'R', '', 0, 1, 3.14, 2),
('KR015', 'K', 'R', NULL, 0, 1, 4.13, 2),
('KR016', 'K', 'R', '', 0, 1, 3.14, 3),
('KR017', 'K', 'R', '*KR001', 2, 1, 2.05, 3),
('KR018', 'K', 'R', '*', 0, 1, 3.08, 2),
('KR019', 'K', 'R', '', 0, 1, 4.05, 2),
('KR020', 'K', 'R', '', 0, 1, 2.1, 2),
('KR021', 'K', 'R', '', 0, 1, 2.1, 2),
('KR022', 'K', 'R', '*', 0, 1, 3.15, 2),
('KS001', 'K', 'S', '', 3, 1, 3.9, 3),
('KS002', 'K', 'S', NULL, 0, 1, 5.03, 2),
('KS003', 'K', 'S', '', 0, 1, 2.9, 3),
('KS004', 'K', 'S', NULL, 0, 1, 5.02, 2),
('KS005', 'K', 'S', '', 0, 1, 2.07, 3),
('KS006', 'K', 'S', '', 0, 1, 4.18, 3),
('KS007', 'K', 'S', '', 0, 1, 3.08, 3),
('KS008', 'K', 'S', NULL, 0, 1, 8.03, 2),
('KS009', 'K', 'S', 'SDG', 0, 1, 9.93, 2),
('KS010', 'K', 'S', NULL, 0, 1, 4.94, 1),
('KS011', 'K', 'S', '', 0, 1, 4.92, 2),
('KS012', 'K', 'S', '', 0, 1, 2.05, 3),
('KS013', 'K', 'S', '', 0, 1, 2.9, 3),
('KS014', 'K', 'S', 'SDG', 0, 1, 6.04, 2),
('KS015', 'K', 'S', '', 0, 1, 2.88, 3),
('KS016', 'K', 'S', NULL, 0, 1, 8, 2),
('KS017', 'K', 'S', '', 0, 1, 11.9, 3),
('KS018', 'K', 'S', '', 0, 1, 2.03, 3),
('KS019', 'K', 'S', 'SDG', 0, 1, 7.1, 2),
('KS020', 'K', 'S', 'SDG', 0, 1, 5.06, 3),
('KS021', 'K', 'S', 'SDG', 0, 1, 4.84, 2),
('KS022', 'K', 'S', 'SDG', 0, 1, 6.05, 2),
('KS023', 'K', 'S', '', 0, 1, 2.05, 3),
('KS024', 'K', 'S', '', 0, 1, 4.96, 2),
('KS025', 'K', 'S', '', 0, 1, 5.09, 2),
('KS026', 'K', 'S', '', 0, 1, 6.87, 3),
('KS027', 'K', 'S', '', 0, 1, 2.91, 3),
('KS028', 'K', 'S', '', 0, 1, 5.11, 3),
('KS029', 'K', 'S', NULL, 0, 1, 2.99, 2),
('KS030', 'K', 'S', '', 0, 1, 2.04, 3),
('KS031', 'K', 'S', '', 0, 1, 4.96, 2),
('KS032', 'K', 'S', '', 0, 1, 2, 3),
('KS033', 'K', 'S', '', 0, 1, 7.08, 3),
('KS034', 'K', 'S', 'SDG', 0, 1, 6.08, 2),
('KS035', 'K', 'S', 'SDG', 0, 1, 9.89, 2),
('KS036', 'K', 'S', '', 0, 1, 8.02, 2),
('KS037', 'K', 'S', '', 0, 1, 10.09, 2),
('KS038', 'K', 'S', '*KS003', 0, 1, 2.9, 3),
('KS039', 'K', 'S', '', 0, 1, 4.1, 3),
('KS040', 'K', 'S', '', 0, 1, 2.1, 3),
('KS041', 'K', 'S', '', 0, 1, 4, 3),
('KS042', 'K', 'S', '', 0, 1, 2.11, 2),
('KS043', 'K', 'S', '', 0, 1, 2.9, 3),
('KS044', 'K', 'S', '', 0, 1, 2.96, 3),
('KS045', 'K', 'S', '', 4, 1, 2.1, 3),
('KS046', 'K', 'S', '', 0, 1, 2.07, 3),
('KS047', 'K', 'S', '', 0, 1, 5.06, 2),
('KS048', 'K', 'S', '', 0, 1, 2.95, 3),
('KS049', 'K', 'S', '', 4, 1, 2.1, 3),
('KS050', 'K', 'S', '', 0, 1, 2.1, 3),
('KS051', 'K', 'S', '', 0, 1, 2, 3),
('KS052', 'K', 'S', '*', 0, 1, 2.9, 3),
('KS053', 'K', 'S', '*', 0, 1, 2.05, 3),
('KS054', 'K', 'S', '*', 0, 1, 5.11, 3),
('KS055', 'K', 'S', '*', 0, 1, 4.2, 2),
('KS056', 'K', 'S', '*', 0, 1, 2.9, 3),
('KS057', 'K', 'S', '*', 0, 1, 2.05, 3),
('KS058', 'K', 'S', '*', 0, 1, 2.07, 3),
('KS059', 'K', 'S', '*', 4, 1, 2.1, 2),
('KS060', 'K', 'S', '', 0, 1, 2.02, 3),
('KS061', 'K', 'S', '* ANAK', 0, 1, 3.08, 2),
('KS062', 'K', 'S', '*', 0, 1, 6.86, 3),
('KS063', 'K', 'S', '', 0, 1, 8, 1),
('KS064', 'K', 'S', '', 0, 1, 7.11, 1),
('KS065', 'K', 'S', '', 0, 1, 9.95, 2),
('KS066', 'K', 'S', '', 0, 1, 7.05, 2),
('KS067', 'K', 'S', '', 0, 1, 6, 1),
('KS068', 'K', 'S', '', 0, 1, 8.1, 1),
('KS069', 'K', 'S', '', 0, 1, 10.04, 1),
('KS070', 'K', 'S', '', 0, 1, 4.08, 1),
('KS071', 'K', 'S', '', 0, 1, 6, 1),
('KS072', 'K', 'S', '', 0, 1, 4.03, 1),
('KS073', 'K', 'S', '', 0, 1, 1.92, 2),
('KS074', 'K', 'S', '', 0, 1, 1.98, 2),
('KS075', 'K', 'S', '', 0, 1, 1.95, 2),
('KS076', 'K', 'S', 'GEMBOK AD CAT* HARUSNY KL', 1, 1, 2.69, 4),
('KS077', 'K', 'S', '*', 0, 1, 5.11, 2),
('KS078', 'K', 'S', '*', 0, 1, 4.05, 2),
('KS079', 'K', 'S', '', 0, 1, 1.92, 1),
('KS080', 'K', 'S', '', 0, 1, 2.03, 1),
('KS081', 'K', 'S', '', 0, 1, 1.96, 1),
('KS082', 'K', 'S', '', 0, 1, 6.86, 2),
('LL001', 'L', 'L', '', 0, 2, 7.1, 2),
('LL002', 'L', 'L', '', 0, 2, 5, 2),
('LS001', 'L', 'S', '', 0, 1, 5.04, 3),
('LS002', 'L', 'S', '', 0, 1, 15.08, 3),
('LS003', 'L', 'S', '*', 0, 1, 5.05, 2),
('MH001', 'M', 'H', 'SQ DOBEL', 0, 1, 7.16, 2),
('MH002', 'M', 'H', 'SQ DOBEL', 0, 1, 7.16, 2),
('MH003', 'M', 'H', 'SQ DOBEL', 0, 1, 5.23, 2),
('MH004', 'M', 'H', 'SQ DOBEL', 0, 1, 15.12, 2),
('MH005', 'M', 'H', 'SQ DOBEL', 0, 1, 8.16, 2),
('MH006', 'M', 'H', 'SQ DOBEL', 0, 1, 5.16, 2),
('MH007', 'M', 'H', 'SQ DOBEL', 0, 1, 12.19, 2),
('MH008', 'M', 'H', 'SQ DOBEL', 0, 1, 8.15, 2),
('MI001', 'M', 'I', '', 0, 1, 6.03, 3),
('MI002', 'M', 'I', '', 0, 1, 7.96, 2),
('MI003', 'M', 'I', '', 0, 1, 4.07, 3),
('MI004', 'M', 'I', '', 0, 1, 7.01, 3),
('MI005', 'M', 'I', 'MILANO ICE *', 0, 1, 4.1, 3),
('MI006', 'M', 'I', '*', 0, 1, 6.03, 2),
('MI007', 'M', 'I', '*', 0, 1, 4.08, 2),
('ML001', 'M', 'L', '', 0, 2, 5.07, 2),
('ML002', 'M', 'L', '', 0, 2, 3.14, 3),
('ML003', 'M', 'L', '', 0, 2, 3.17, 3),
('MM001', 'M', 'M', '', 0, 1, 8, 2),
('MM002', 'M', 'M', '', 0, 1, 8.05, 2),
('MM003', 'M', 'M', '', 0, 1, 12.21, 2),
('MM004', 'M', 'M', '', 0, 1, 7.13, 2),
('MM005', 'M', 'M', '', 0, 1, 10.03, 3),
('MM006', 'M', 'M', '', 0, 1, 6.1, 2),
('MM007', 'M', 'M', '', 0, 1, 6.08, 2),
('MM008', 'M', 'M', '', 0, 1, 7.06, 2),
('MM009', 'M', 'M', '', 0, 1, 12.26, 2),
('MM010', 'M', 'M', '* harusny normaal', 0, 1, 4.08, 4),
('MM011', 'M', 'M', '', 0, 1, 9.95, 2),
('MM012', 'M', 'M', '', 0, 1, 7.11, 1),
('MM013', 'M', 'M', '', 0, 1, 7.15, 1),
('MM014', 'M', 'M', '', 0, 1, 8.13, 1),
('MM015', 'M', 'M', '', 0, 1, 5.05, 2),
('MM016', 'M', 'M', '', 0, 1, 5, 3),
('MM017', 'M', 'M', '', 0, 1, 8.05, 1),
('MM018', 'M', 'M', '', 0, 1, 10, 1),
('MR001', 'M', 'R', '', 0, 1, 6.9, 3),
('MR002', 'M', 'R', '', 0, 1, 10.09, 3),
('MR003', 'M', 'R', '', 0, 1, 7.01, 3),
('MR004', 'M', 'R', '', 0, 1, 6.9, 3),
('MR005', 'M', 'R', '', 0, 1, 6.09, 2),
('MS001', 'M', 'S', '', 0, 1, 3.91, 3),
('MS002', 'M', 'S', '', 0, 1, 3.95, 2),
('MS003', 'M', 'S', '*', 0, 1, 7.1, 2),
('MS004', 'M', 'S', '', 0, 1, 5, 1),
('MS005', 'M', 'S', '', 0, 1, 4.08, 1),
('MS006', 'M', 'S', '', 0, 1, 7.12, 1),
('MS007', 'M', 'S', '', 0, 1, 4.14, 1),
('MS008', 'M', 'S', '', 0, 1, 4.96, 1),
('MS009', 'M', 'S', '', 0, 1, 6.88, 1),
('NF001', 'N', 'F', '', 4, 2, 2, 3),
('NF002', 'N', 'F', '*', 0, 2, 1.57, 3),
('NF003', 'N', 'F', 'BNK CAT*', 0, 2, 2.45, 2),
('NF004', 'N', 'F', 'ALFBET S CAT*', 1, 1, 1.9, 3),
('NF005', 'N', 'F', '', 0, 2, 1.65, 2),
('NF006', 'N', 'F', '', 0, 2, 1.68, 1),
('NF007', 'N', 'F', '', 0, 2, 1.62, 1),
('NF008', 'N', 'F', '', 0, 2, 1.61, 2),
('NF009', 'N', 'F', '', 0, 2, 1.65, 1),
('NF010', 'N', 'F', '', 0, 2, 1.63, 2),
('NG001', 'N', 'G', 'TUKER', 0, 1, 3.15, 4),
('NG002', 'N', 'G', '', 0, 1, 3.05, 2),
('NG003', 'N', 'G', '', 0, 1, 2.04, 3),
('NG004', 'N', 'G', '', 2, 1, 3.1, 3),
('NG005', 'N', 'G', 'GUCCI PELINTIR', 0, 1, 3.1, 2),
('NG006', 'N', 'G', 'GUCCI PELINTIR', 0, 1, 2.05, 2),
('NG007', 'N', 'G', 'GUCCI PELINTIR', 0, 1, 2.05, 3),
('NL001', 'N', 'L', '', 0, 2, 3.08, 2),
('NL002', 'N', 'L', '', 0, 2, 2.06, 2),
('NL003', 'N', 'L', '', 0, 2, 2.1, 3),
('NL004', 'N', 'L', '', 0, 2, 3.17, 2),
('NL005', 'N', 'L', '', 0, 2, 2.06, 2),
('NL006', 'N', 'L', '', 0, 2, 3.14, 2),
('NL007', 'N', 'L', '', 0, 2, 2.12, 2),
('NL008', 'N', 'L', '', 0, 2, 2.13, 1),
('NL009', 'N', 'L', '', 0, 2, 3.1, 1),
('NM001', 'N', 'M', '', 0, 1, 2.1, 2),
('NM002', 'N', 'M', '', 0, 1, 2.1, 2),
('NM003', 'N', 'M', '', 0, 1, 3.1, 1),
('NM004', 'N', 'M', '', 0, 1, 2.9, 1),
('NM005', 'N', 'M', '', 0, 1, 2.06, 1),
('NM006', 'N', 'M', '', 0, 1, 2.09, 2),
('NN001', 'N', 'N', 'BNK CAT TIMBUL', 0, 2, 2.32, 3),
('NN002', 'N', 'N', 'BNK CAT', 0, 2, 2.4, 3),
('NN003', 'N', 'N', 'BNK CAT 1BTG', 0, 2, 2.38, 3),
('NN004', 'N', 'N', 'BNK CAT TIMBUL', 0, 2, 2.4, 3),
('NN005', 'N', 'N', 'BNK CAT 1HATI', 0, 2, 1.92, 3),
('NN006', 'N', 'N', 'BNK CAT 1HATI', 0, 2, 2.16, 3),
('NN007', 'N', 'N', 'CAT S', 1, 1, 1.88, 3),
('NN008', 'N', 'N', 'CAT M', 1, 1, 2.01, 3),
('NN009', 'N', 'N', 'CAT P', 1, 1, 1.88, 3),
('NN010', 'N', 'N', 'SANTA DISNEY', 0, 1, 2.2, 3),
('NN011', 'N', 'N', 'SANTA DISNEY', 0, 1, 2.1, 3),
('NN012', 'N', 'N', 'DISNEY ', 0, 1, 2.1, 3),
('NN013', 'N', 'N', '*', 1, 1, 2.01, 2),
('NN014', 'N', 'N', 'P CAT *', 1, 1, 1.88, 2),
('NN015', 'N', 'N', 'DISNEY DONALD', 0, 2, 1.85, 3),
('NN016', 'N', 'N', 'DISNEY MINNIE', 0, 2, 1.75, 3),
('NN017', 'N', 'N', 'BNK CAT*', 0, 2, 2.45, 3),
('NR001', 'N', 'R', '', 0, 1, 3.1, 2),
('NR002', 'N', 'R', '', 0, 1, 2.1, 2),
('NR003', 'N', 'R', '', 0, 1, 3.1, 2),
('NR004', 'N', 'R', '', 0, 1, 2.1, 2),
('NS002', 'N', 'S', '', 0, 1, 2, 3),
('NS003', 'N', 'S', '', 0, 1, 4.05, 2),
('NS004', 'N', 'S', '', 0, 1, 4.05, 2),
('NS005', 'N', 'S', '', 0, 1, 1.94, 2),
('NS006', 'N', 'S', '', 0, 1, 1.95, 2),
('NS007', 'N', 'S', '', 0, 1, 1.95, 1),
('NS008', 'N', 'S', '', 0, 1, 1.94, 1),
('TA001', 'T', 'A', 'OWL CAT', 1, 2, 0.53, 2),
('TA002', 'T', 'A', 'OWL CAT', 1, 2, 0.54, 2),
('TA003', 'T', 'A', 'OWL CAT', 1, 2, 0.53, 2),
('TA004', 'T', 'A', 'KUDA PONI UNGU CAT', 3, 3, 0.5, 3),
('TA005', 'T', 'A', 'KUDA PONI BIRU CAT', 1, 3, 0.51, 3),
('TA006', 'T', 'A', 'KEROPI CAT', 1, 3, 0.5, 3),
('TA007', 'T', 'A', 'BONEKA CAT', 1, 3, 1.15, 3),
('TA008', 'T', 'A', 'HK FULL AD', 3, 3, 0.55, 3),
('TA009', 'T', 'A', 'PONI PTH UNGU', 3, 3, 0.5, 3),
('TA010', 'T', 'A', 'KUDA PONI *', 3, 3, 0.52, 3),
('TA011', 'T', 'A', 'HK FULL AD', 3, 3, 1.08, 3),
('TA012', 'T', 'A', 'HK FULL AD', 3, 3, 1.18, 1),
('TA013', 'T', 'A', 'PONI PTH+UNGU', 3, 3, 0.44, 2),
('TA014', 'T', 'A', 'HK FULL AD', 3, 3, 0.52, 3),
('TA015', 'T', 'A', 'PONI BIRU', 3, 3, 0.47, 2),
('TA016', 'T', 'A', 'HK FULL AD', 3, 3, 0.51, 2),
('TA017', 'T', 'A', 'PIYO KUNING', 3, 3, 0.55, 2),
('TD001', 'T', 'D', 'BOLA MOZAIK', 0, 2, 0.6, 3),
('TD002', 'T', 'D', 'BOLA MOZAIK', 0, 2, 0.65, 3),
('TD003', 'T', 'D', 'BOLA MOZAIK', 0, 2, 0.76, 3),
('TD004', 'T', 'D', 'BOLA MOZAIK PASIRAN', 0, 2, 0.9, 3),
('TD005', 'T', 'D', 'BOLA MOZAIK PASIRAN', 0, 2, 0.82, 3),
('TD006', 'T', 'D', 'TETES MOZAIK', 0, 2, 0.57, 3),
('TD007', 'T', 'D', 'HATI MOZAIK', 0, 2, 0.7, 3),
('TD008', 'T', 'D', 'HATI MOZAIK', 0, 2, 0.42, 3),
('TD009', 'T', 'D', 'HATI MOZAIK', 0, 2, 0.38, 3),
('TD010', 'T', 'D', 'HATI MOZAIK', 0, 2, 0.7, 3),
('TD011', 'T', 'D', 'BOLA MOZAIK', 0, 2, 0.55, 3),
('TD012', 'T', 'D', 'HATI AD PINK', 0, 2, 0.98, 3),
('TD013', 'T', 'D', 'HATI AD PINK', 0, 2, 1, 2),
('TD014', 'T', 'D', 'HATI AD PINK', 0, 2, 1.05, 2),
('TD015', 'T', 'D', 'HATI AD PINK', 0, 2, 0.98, 2),
('TD016', 'T', 'D', 'HATI AD PUTIH', 0, 2, 1, 2),
('TD017', 'T', 'D', 'HATI AD PUTIH', 0, 2, 1.04, 2),
('TD018', 'T', 'D', 'HATI AD PUTIH', 0, 2, 1, 2),
('TD019', 'T', 'D', 'MERAK AD PUTIH', 0, 2, 1.46, 2),
('TD020', 'T', 'D', 'MERAK AD PUTIH', 0, 2, 1.45, 2),
('TD021', 'T', 'D', 'MERAK AD PUTIH', 0, 2, 1.46, 2),
('TD022', 'T', 'D', 'DAUN VAR PTH AD', 0, 2, 1.3, 2),
('TD023', 'T', 'D', 'DAUN VAR PTH AD', 0, 2, 1.26, 2),
('TD024', 'T', 'D', 'DAUN VAR PTH AD PINK', 0, 2, 1.27, 2),
('TD025', 'T', 'D', 'DAUN VAR PTH AD PINK', 0, 2, 1.23, 3),
('TD026', 'T', 'D', 'HATI VAR PTH AD PINK', 0, 2, 1, 2),
('TD027', 'T', 'D', 'HATI VAR PTH AD PINK', 0, 2, 1, 2),
('TD028', 'T', 'D', 'HATI VAR PTH AD', 0, 2, 1.05, 2),
('TD029', 'T', 'D', 'HATI VAR PTH AD', 0, 2, 1.05, 2),
('TD030', 'T', 'D', 'HATI AD ', 0, 2, 1, 3),
('TD031', 'T', 'D', 'HATI AD ', 0, 2, 0.96, 3),
('TD032', 'T', 'D', 'HATI AD PINK', 0, 2, 1.05, 2),
('TD033', 'T', 'D', 'HATI AD PINK', 0, 2, 1.06, 2),
('TD034', 'T', 'D', 'HATI AD PINK', 0, 2, 0.96, 2),
('TD035', 'T', 'D', 'DOLPHIN RAINBOW', 0, 2, 1.23, 3),
('TD036', 'T', 'D', 'DOLPHIN RAINBOW', 0, 2, 1.32, 3),
('TD037', 'T', 'D', 'ANGSA RAINBOW', 0, 2, 1.3, 3),
('TD038', 'T', 'D', 'ANGSA RAINBOW', 0, 2, 1.35, 3),
('TD039', 'T', 'D', 'HATI VAR PTH AD PINK', 0, 2, 1.26, 2),
('TD040', 'T', 'D', 'DIAMOND LAYER PTH AD', 0, 2, 1.35, 2),
('TD041', 'T', 'D', 'DIAMOND LAYER PTH AD', 0, 2, 1.35, 2),
('TD042', 'T', 'D', 'DIAMOND LAYER PTH AD', 0, 2, 1.36, 2),
('TD043', 'T', 'D', 'DIAMOND LAYER PTH AD', 0, 2, 1.3, 2),
('TD044', 'T', 'D', 'TETES JARING VAR PTH AD', 0, 2, 1.27, 3),
('TD045', 'T', 'D', 'TETES JARING VAR PTH AD', 0, 2, 1.3, 2),
('TD046', 'T', 'D', 'OVAL VAR PTH AD', 0, 2, 1.75, 3),
('TD047', 'T', 'D', 'OVAL VAR PTH AD', 0, 2, 1.73, 2),
('TD048', 'T', 'D', 'NADA VAR PTH AD', 0, 2, 1.2, 3),
('TD049', 'T', 'D', 'NADA VAR PTH AD', 0, 2, 1.17, 3),
('TD050', 'T', 'D', 'WARU AD', 0, 2, 1.55, 2),
('TD051', 'T', 'D', 'WARU AD', 0, 2, 1.65, 2),
('TD052', 'T', 'D', 'WARU AD PINK', 0, 2, 1.55, 3),
('TD053', 'T', 'D', 'WARU AD PINK', 0, 2, 1.58, 3),
('TD054', 'T', 'D', 'HATI AD PINK', 0, 2, 1.02, 3),
('TD055', 'T', 'D', 'HATI AD PINK', 0, 2, 1.05, 2),
('TD056', 'T', 'D', 'KUPU AD PINK', 0, 2, 1.09, 3),
('TD057', 'T', 'D', 'KUPU AD PINK', 0, 2, 1.11, 3),
('TD058', 'T', 'D', 'DIAMOND VAR PTH AD', 0, 2, 0.97, 2),
('TD059', 'T', 'D', 'DIAMOND VAR PTH AD', 0, 2, 0.92, 1),
('TD060', 'T', 'D', 'DIAMOND VAR PTH AD', 0, 2, 0.95, 2),
('TD061', 'T', 'D', 'DIAMOND VAR PTH AD', 0, 2, 0.96, 1),
('TD062', 'T', 'D', 'DIAMOND VAR PTH AD', 0, 2, 0.92, 2),
('TD063', 'T', 'D', 'ANGGUR VAR PTH AD', 0, 2, 1.21, 3),
('TD064', 'T', 'D', 'ANGSA AD PINK', 0, 2, 1.68, 3),
('TD065', 'T', 'D', 'ANGSA AD ', 0, 2, 1.69, 2),
('TD066', 'T', 'D', 'ANGSA AD ', 0, 2, 1.64, 2),
('TD067', 'T', 'D', 'DIAMOND AD', 0, 2, 1.13, 2),
('TD068', 'T', 'D', 'DIAMOND AD', 0, 2, 1.13, 2),
('TD069', 'T', 'D', 'HATI VAR PTH AD', 0, 2, 1.07, 2),
('TD070', 'T', 'D', 'HATI VAR PTH AD', 0, 2, 1.03, 2),
('TD071', 'T', 'D', 'KG TETES CAT', 0, 2, 1.35, 2),
('TD072', 'T', 'D', 'KG TETES CAT', 0, 2, 1.32, 1),
('TD073', 'T', 'D', 'KG TETES CAT', 0, 2, 1.28, 2),
('TD074', 'T', 'D', 'KG TETES CAT', 0, 2, 1.31, 1),
('TD075', 'T', 'D', 'KG TETES TIMBUL', 0, 2, 1.52, 3),
('TD076', 'T', 'D', 'KG TETES TIMBUL', 0, 2, 1.43, 2),
('TD077', 'T', 'D', 'KG BLT TIMBUL', 0, 2, 1.42, 2),
('TD078', 'T', 'D', 'KG BLT TIMBUL', 0, 2, 1.54, 3),
('TD079', 'T', 'D', 'KG HATI TIMBUL', 0, 2, 1.6, 3),
('TD080', 'T', 'D', 'KG HATI TIMBUL', 0, 2, 1.45, 2),
('TD081', 'T', 'D', 'HATI VAR PTH AD', 1, 2, 1.11, 2),
('TD082', 'T', 'D', 'OWL AD', 1, 2, 1.75, 2),
('TD083', 'T', 'D', 'OWL AD', 1, 2, 1.73, 2),
('TD084', 'T', 'D', 'KG BUNGA ', 3, 2, 3.68, 3),
('TD085', 'T', 'D', 'KG BOLA VAR CAT', 0, 2, 2.21, 3),
('TD086', 'T', 'D', 'BUNGA AD PINK', 3, 2, 0.47, 3),
('TD087', 'T', 'D', 'BUNGA AD PINK', 3, 2, 0.56, 3),
('TD088', 'T', 'D', 'BUNGA AD PINK', 3, 2, 0.54, 2),
('TD089', 'T', 'D', 'RODA AD', 3, 2, 1.4, 2),
('TD090', 'T', 'D', 'RODA AD', 3, 2, 1.35, 2),
('TD091', 'T', 'D', 'RODA AD', 3, 2, 1.5, 2),
('TD092', 'T', 'D', 'BUNGA VAR PTH AD', 3, 2, 0.95, 3),
('TD093', 'T', 'D', 'BUNGA VAR PTH AD', 3, 2, 1.12, 2);
INSERT INTO `master_items` (`id`, `category`, `subcategory`, `nama`, `supplier`, `karat`, `berat`, `stocks`) VALUES
('TD094', 'T', 'D', 'STGH DIAMOND AD', 3, 2, 0.47, 2),
('TD095', 'T', 'D', 'NADA VAR PTH AD', 3, 2, 2.52, 3),
('TD096', 'T', 'D', 'JARING LABA VAR PTH AD', 3, 2, 1.09, 2),
('TD097', 'T', 'D', 'BLT LBG AD', 0, 2, 1.56, 3),
('TD098', 'T', 'D', 'ANGGUR VAR PTH AD', 0, 2, 1.15, 2),
('TD099', 'T', 'D', 'HATI AD ', 0, 2, 1.04, 1),
('TD100', 'T', 'D', 'BUNGA VAR PTH AD', 3, 2, 1.12, 2),
('TD101', 'T', 'D', 'HATI VAR PTH AD', 3, 2, 1.72, 2),
('TD102', 'T', 'D', 'HATI AD', 0, 2, 1, 2),
('TD103', 'T', 'D', 'KUPU AD PINK *TD058', 0, 2, 1.09, 3),
('TD104', 'T', 'D', 'BLT LBG FULL AD', 3, 2, 0.94, 3),
('TD105', 'T', 'D', 'PERSEGI PANJANG RAINBOW', 0, 2, 2.38, 3),
('TD106', 'T', 'D', 'NADA AD', 3, 2, 1.03, 2),
('TD107', 'T', 'D', 'BOLA FULL AD', 0, 3, 1.85, 3),
('TD108', 'T', 'D', 'DAUN VAR PTH 3ADPTH 3AD P', 0, 2, 1.23, 2),
('TD109', 'T', 'D', 'BOLA MOZAIK PASIRAN *TD00', 0, 2, 0.9, 2),
('TD110', 'T', 'D', 'ALFABET A', 3, 3, 1.15, 3),
('TD111', 'T', 'D', 'ALFABET E', 3, 3, 1.15, 3),
('TD112', 'T', 'D', 'ALFABET H', 3, 3, 1.1, 2),
('TD113', 'T', 'D', 'ALFABET R', 3, 3, 1.12, 3),
('TD114', 'T', 'D', 'ALFABET S', 3, 3, 1.1, 3),
('TD115', 'T', 'D', 'ALFABET Y', 3, 3, 1.2, 2),
('TD116', 'T', 'D', 'BUNGA AD', 3, 3, 0.62, 2),
('TD117', 'T', 'D', 'BULAT LUBANG', 3, 3, 0.95, 3),
('TD118', 'T', 'D', 'BUNGA AD', 3, 3, 0.5, 3),
('TD119', 'T', 'D', 'VAR PTH BUNGA AD', 3, 3, 0.52, 3),
('TD120', 'T', 'D', 'BSR VAR PTH BUNGA AD', 3, 3, 1.85, 2),
('TD121', 'T', 'D', 'BSR VAR PTH OVAL AD', 3, 3, 1.3, 3),
('TD122', 'T', 'D', 'BSR VAR PTH BUNGA AD', 3, 3, 2.75, 3),
('TD123', 'T', 'D', 'BSR VAR PTH BNGA TETES AD', 3, 3, 1.71, 2),
('TD124', 'T', 'D', 'BSR BUNGA LBG AD', 3, 3, 2.35, 2),
('TD125', 'T', 'D', 'BSR DAUN SEMBUR AD', 3, 3, 3.17, 3),
('TD126', 'T', 'D', 'OVAL VAR PTH AD', 0, 2, 1.75, 2),
('TD127', 'T', 'D', 'KUPU AD PINK', 0, 2, 1.11, 2),
('TD128', 'T', 'D', 'TETES AD PINK *TD053', 0, 2, 1.58, 2),
('TD129', 'T', 'D', 'MOZAIK', 0, 2, 0.55, 2),
('TD130', 'T', 'D', 'NADA VAR PTH 14AD *TD048', 0, 2, 1.2, 2),
('TD131', 'T', 'D', 'LUMBA RAINBOW *TD035', 0, 2, 1.23, 3),
('TD132', 'T', 'D', 'KUNCI HATI AD PINK', 0, 3, 1.2, 3),
('TD133', 'T', 'D', 'HATI LBG MOZAIK AD PINK ', 0, 3, 0.85, 3),
('TD134', 'T', 'D', 'KUPU FULL AD +AD PINK *', 0, 2, 1.1, 2),
('TD135', 'T', 'D', 'ALFABET D', 0, 3, 1.15, 3),
('TD136', 'T', 'D', 'BLT LBG AD PINK', 3, 3, 0.95, 3),
('TD137', 'T', 'D', 'BLT LBG AD', 3, 3, 0.95, 3),
('TD138', 'T', 'D', 'KUPU VAR PTH +1AD', 3, 3, 0.55, 3),
('TD139', 'T', 'D', 'PITA FULL AD+BLT', 10, 3, 1.2, 2),
('TD140', 'T', 'D', 'KIPAS GARIS AD', 10, 3, 1.3, 2),
('TD141', 'T', 'D', 'BUNGA FULL AD', 10, 3, 1.4, 3),
('TD142', 'T', 'D', '3BLT FULL AD', 10, 3, 1.25, 2),
('TD143', 'T', 'D', 'BLT 4AD', 3, 3, 0.5, 3),
('TD144', 'T', 'D', 'WAJIK BUNGA AD', 3, 3, 0.6, 3),
('TD145', 'T', 'D', 'BOLA FULL AD', 0, 3, 2.05, 3),
('TD146', 'T', 'D', 'BOLA FULL AD', 0, 3, 2, 3),
('TD147', 'T', 'D', 'BLT FULL AD TNP SERIPERI', 0, 3, 0.9, 3),
('TD148', 'T', 'D', 'BLT FULL AD TNP SERIPERI', 0, 3, 0.9, 3),
('TD149', 'T', 'D', 'BLT FULL AD PINK TNP SERI', 0, 3, 0.95, 3),
('TD150', 'T', 'D', 'LUMBA RAINBOW *', 0, 2, 1.3, 2),
('TD151', 'T', 'D', 'BLT FULL AD TNPA SERIPERI', 3, 3, 0.95, 3),
('TD152', 'T', 'D', 'BOLA FULL AD+SERIPERI', 3, 3, 1.15, 3),
('TD153', 'T', 'D', 'BOLA FULL AD+SERIPERI', 3, 3, 1.1, 3),
('TD154', 'T', 'D', 'BOLA AD PINK TANPA SERIPE', 3, 3, 0.98, 3),
('TD155', 'T', 'D', 'BOLA AD PUTIH TANPA SERIP', 3, 3, 0.95, 3),
('TD156', 'T', 'D', 'BOLA AD PUTIH TANPA SERIP', 3, 3, 0.98, 3),
('TD157', 'T', 'D', 'BOLA AD PUTIH TANPA SERIP', 3, 3, 0.95, 3),
('TD158', 'T', 'D', 'BOLA AD PTH PINK TANPA SE', 3, 3, 1, 3),
('TD159', 'T', 'D', 'BOLA AD PTH PINK TANPA SE', 3, 3, 0.9, 3),
('TD160', 'T', 'D', 'BOLA AD PTH PINK TANPA SE', 3, 3, 0.9, 3),
('TD161', 'T', 'D', 'HK FULL AD', 2, 3, 0.55, 3),
('TD162', 'T', 'D', 'HK FULL AD', 2, 3, 0.6, 3),
('TD163', 'T', 'D', 'CAT PONI PTH UNGU', 2, 3, 0.5, 3),
('TD164', 'T', 'D', 'CAT PONI PTH UNGU', 2, 3, 0.5, 2),
('TD165', 'T', 'D', 'CAT PIYO KUNING', 2, 3, 0.6, 2),
('TD166', 'T', 'D', 'TETES FULL AD', 3, 3, 1.1, 2),
('TD167', 'T', 'D', 'BULAT AD PTH+ 1AD BIRU', 0, 3, 0.9, 3),
('TD168', 'T', 'D', 'BULAT AD PTH+ 1AD BIRU', 3, 3, 0.9, 3),
('TD169', 'T', 'D', 'ALFABET M+AD', 3, 3, 1.1, 3),
('TD170', 'T', 'D', 'ALFABET A+AD', 3, 3, 1.05, 3),
('TD171', 'T', 'D', 'ALFABET N+AD', 3, 3, 1.1, 3),
('TD172', 'T', 'D', 'ALFABET V+AD', 3, 3, 1.05, 3),
('TD173', 'T', 'D', 'ALFABET R+AD', 3, 3, 1.1, 3),
('TD174', 'T', 'D', 'ALFABET D+AD', 3, 3, 1.05, 2),
('TD175', 'T', 'D', 'VAR PTH AD *', 3, 3, 1.3, 2),
('TD176', 'T', 'D', 'BUNGA AD MERAH *', 3, 2, 0.6, 2),
('TD177', 'T', 'D', 'BOLA FULL AD TNPA SERIPER', 0, 3, 0.95, 3),
('TD178', 'T', 'D', 'BOLA FULL AD TNPA SERIPER', 0, 3, 0.95, 3),
('TD179', 'T', 'D', 'BOLA FULL AD TNPA SERIPER', 0, 3, 0.95, 3),
('TD180', 'T', 'D', 'ALFABET N*', 3, 3, 1.1, 2),
('TD181', 'T', 'D', 'ALFABET E*', 3, 3, 1.15, 2),
('TD182', 'T', 'D', 'BOLA MOZAIK *', 0, 2, 0.82, 2),
('TD183', 'T', 'D', 'BOLA FULL AD PINK TANPA S', 0, 3, 0.95, 3),
('TD184', 'T', 'D', 'BLT LBG FULL AD', 0, 2, 1.56, 3),
('TD185', 'T', 'D', 'TETES EMBUN MOZAIK*', 0, 2, 0.57, 2),
('TD186', 'T', 'D', 'VAR PTH BNGA AD', 3, 2, 0.52, 3),
('TD187', 'T', 'D', 'HATI MOZAIK*', 0, 2, 0.42, 2),
('TD188', 'T', 'D', 'HATI STGH FULL AD STGH DA', 0, 2, 1.49, 2),
('TD189', 'T', 'D', 'HATI LAYER AD', 0, 2, 0.92, 2),
('TD190', 'T', 'D', 'HATI LAYER AD', 0, 2, 0.87, 3),
('TD191', 'T', 'D', 'BUNGA TETES VAR PTH+AD', 0, 2, 1.9, 3),
('TD192', 'T', 'D', 'BUNGA TETES VAR PTH+AD', 0, 2, 1.77, 2),
('TD193', 'T', 'D', 'KUPU HATI AD', 0, 2, 0.93, 1),
('TD194', 'T', 'D', 'KUPU HATI AD', 0, 2, 0.9, 2),
('TD195', 'T', 'D', 'KUPU STGH AD STGH DAUN VA', 0, 2, 1.48, 1),
('TD196', 'T', 'D', 'BOLA FULL AD +SERIPERI', 0, 3, 1.85, 1),
('TD197', 'T', 'D', 'WAJIK KRWNG VAR PTH AD', 0, 3, 1.08, 2),
('TD198', 'T', 'D', 'WAJIK KRWNG VAR PTH AD', 0, 3, 1.05, 2),
('TD199', 'T', 'D', 'WAJIK KRWNG VAR PTH AD', 0, 3, 1.06, 1),
('TD200', 'T', 'D', 'TABUNG FULL AD - SERIPERI', 0, 3, 1.46, 3),
('TD201', 'T', 'D', 'TABUNG FULL AD - SERIPERI', 0, 3, 1.47, 1),
('TD202', 'T', 'D', 'TABUNG FULL AD - SERIPERI', 0, 3, 1.47, 1),
('TD203', 'T', 'D', 'TABUNG FULL AD - SERIPERI', 0, 3, 1.46, 3),
('TD204', 'T', 'D', 'BOLA BSR FULL AD - SERIPE', 0, 3, 1.48, 3),
('TD205', 'T', 'D', 'BOLA BSR FULL AD - SERIPE', 0, 3, 1.47, 3),
('TD206', 'T', 'D', 'BOLA BSR FULL AD - SERIPE', 0, 3, 1.5, 1),
('TD207', 'T', 'D', 'BOLA BSR FULL AD + SERIPE', 0, 3, 2.72, 3),
('TD208', 'T', 'D', 'BOLA BSR FULL AD +SERIPER', 0, 3, 2.71, 1),
('TD209', 'T', 'D', 'KG BUNGA ', 0, 2, 1.53, 1),
('TD210', 'T', 'D', 'TETES BUNGA VAR PTH 1AD', 0, 2, 0.52, 2),
('TD211', 'T', 'D', '1AD BIRU', 3, 3, 0.9, 3),
('TD212', 'T', 'D', 'HATI AD PINK*', 0, 2, 0.98, 2),
('TD213', 'T', 'D', 'VAR PTH ANGGUR*', 0, 2, 1.18, 2),
('TD214', 'T', 'D', 'BOLA AD TANPASERIPERI', 0, 3, 1.46, 2),
('TD215', 'T', 'D', 'VAR PTH AD PINK', 0, 2, 1.5, 2),
('TD216', 'T', 'D', 'ANGSA AD PINK*', 0, 2, 1.65, 2),
('TD217', 'T', 'D', 'HATI AD*', 0, 2, 0.96, 2),
('TD218', 'T', 'D', 'BSR VAR PTH BNGA*', 3, 3, 2.72, 2),
('TD219', 'T', 'D', 'HATI MOZAIK*', 0, 2, 0.7, 2),
('TD220', 'T', 'D', 'ALFABET M*', 3, 3, 1.05, 3),
('TD221', 'T', 'D', 'BOLA MOZAIK', 0, 2, 0.55, 2),
('TD222', 'T', 'D', 'BOLA FULL AD', 0, 3, 2.69, 2),
('TD223', 'T', 'D', 'HATI AD PINK*', 0, 2, 0.95, 2),
('TD224', 'T', 'D', 'HATI MOZAIK AD*', 0, 2, 0.81, 2),
('TD225', 'T', 'D', '1AD HIJAU+AD', 3, 3, 0.83, 3),
('TD226', 'T', 'D', '1AD BIRU MUDA ', 3, 3, 0.92, 2),
('TD227', 'T', 'D', 'STGH BOLA AD HITAM', 3, 3, 0.94, 2),
('TD228', 'T', 'D', 'HATI TUMPUK FULL AD', 3, 3, 0.89, 2),
('TD229', 'T', 'D', 'BUNGA FULL AD', 3, 3, 0.48, 2),
('TD230', 'T', 'D', 'BULAT FULL AD', 3, 3, 0.96, 2),
('TD231', 'T', 'D', 'BOLA FULL AD PTH+BIRU', 3, 3, 1.03, 2),
('TD232', 'T', 'D', 'BULAT AD TUMPUK', 3, 3, 0.88, 2),
('TD233', 'T', 'D', 'BULAT AD DAUN VAR PTH', 3, 3, 1.51, 2),
('TD234', 'T', 'D', 'BITANG AD TNP SERIPERI', 3, 3, 1.19, 2),
('TD235', 'T', 'D', 'BOLA FULL AD HIJAU TNP SE', 3, 3, 0.9, 2),
('TD236', 'T', 'D', 'BOLA FULL AD PTH+HJAU TNP', 3, 3, 0.88, 2),
('TD237', 'T', 'D', 'BOLA FULL AD HTM TNP SERI', 3, 3, 0.81, 2),
('TD238', 'T', 'D', 'BOLA FULL AD PTH+BIRU TNP', 3, 3, 0.89, 2),
('TD239', 'T', 'D', 'BOLA FULL AD UNGU TNP SER', 3, 3, 0.91, 2),
('TD240', 'T', 'D', 'BOLA FULL AD PTH+HTM TNP ', 3, 3, 0.87, 2),
('TD241', 'T', 'D', 'HURUF M', 3, 3, 1.15, 1),
('TD242', 'T', 'D', 'BNK AD PTH', 3, 3, 1.15, 2),
('TD243', 'T', 'D', 'BNK AD PTH+PINK', 3, 3, 1.21, 2),
('TD244', 'T', 'D', 'ALFABET V*', 3, 3, 1, 2),
('TD245', 'T', 'D', 'BOLA FULL AD', 3, 3, 1.04, 2);

-- --------------------------------------------------------

--
-- Table structure for table `master_items_delete`
--

CREATE TABLE `master_items_delete` (
  `id` char(5) NOT NULL,
  `category` char(1) NOT NULL,
  `subcategory` char(1) NOT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `supplier` int(11) NOT NULL DEFAULT 0,
  `karat` int(11) NOT NULL,
  `berat` float NOT NULL,
  `stocks` int(11) NOT NULL DEFAULT 1,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `master_items_delete`
--

INSERT INTO `master_items_delete` (`id`, `category`, `subcategory`, `nama`, `supplier`, `karat`, `berat`, `stocks`, `timestamp`) VALUES
('GB029', 'G', 'B', 'OVAL 2BOLA PASIRAN PISAH', 0, 2, 4.28, 4, '2019-11-14 02:51:14'),
('AD015', 'A', 'D', 'ULIR VAR PTH', 3, 2, 1.6, 4, '2019-11-23 07:19:35'),
('GP029', 'G', 'P', 'SQ DOUBLE', 0, 2, 10.09, 4, '2019-12-14 09:43:52'),
('KF029', 'K', 'F', '', 4, 2, 2, 4, '2019-12-14 09:43:52'),
('KM029', 'K', 'M', 'MILANO ICE *', 0, 1, 4.1, 4, '2019-12-14 09:43:52'),
('KN021', 'K', 'N', 'DISNEY MICKEY CAT', 0, 1, 2.1, 4, '2019-12-14 09:43:52'),
('KS053', 'K', 'S', '*', 0, 1, 2.1, 4, '2019-12-14 09:43:52'),
('NS001', 'N', 'S', '', 0, 1, 2.2, 4, '2019-12-14 09:43:52'),
('AD023', 'A', 'D', 'PER 2BLT AD', 0, 3, 0.81, 4, '2020-01-02 02:18:35'),
('AG032', 'A', 'G', 'BUNGA', 7, 3, 1.07, 4, '2020-01-02 02:18:35'),
('AG033', 'A', 'G', 'BUNGA', 7, 3, 1.07, 4, '2020-01-02 02:18:35'),
('AG035', 'A', 'G', 'BUNGA', 7, 3, 1.08, 4, '2020-01-02 02:18:35'),
('AG036', 'A', 'G', 'BUNGA', 7, 3, 1.06, 4, '2020-01-02 02:18:35'),
('AG037', 'A', 'G', 'BUNGA BINTANG', 7, 3, 1, 4, '2020-01-02 02:18:35'),
('AG038', 'A', 'G', 'BUNGA BINTANG', 7, 3, 1.3, 4, '2020-01-02 02:18:35'),
('AG039', 'A', 'G', 'BUNGA BINTANG', 7, 3, 0.97, 4, '2020-01-02 02:18:35'),
('AG041', 'A', 'G', 'BUNGA BINTANG', 7, 3, 1.04, 4, '2020-01-02 02:18:35'),
('AG043', 'A', 'G', 'STGH BLT', 7, 3, 1.05, 4, '2020-01-02 02:18:35'),
('AG044', 'A', 'G', 'STGH BLT', 7, 3, 1.05, 4, '2020-01-02 02:18:35'),
('AG045', 'A', 'G', 'STGH BLT', 7, 3, 1.04, 4, '2020-01-02 02:18:35'),
('AG046', 'A', 'G', 'STGH BLT', 7, 3, 1.08, 4, '2020-01-02 02:18:35'),
('CV029', 'C', 'V', 'CARTIER', 0, 2, 2.13, 4, '2020-01-02 02:18:35'),
('CV064', 'C', 'V', 'CARTIER', 0, 2, 2.04, 4, '2020-01-02 02:18:35'),
('GB024', 'G', 'B', 'OVAL ULIR 2BOLA AD', 0, 2, 8.83, 4, '2020-01-02 02:18:35'),
('GB025', 'G', 'B', 'OVAL ULIR VAR PTH 2BOLA', 0, 2, 8.13, 4, '2020-01-02 02:18:35'),
('GB027', 'G', 'B', 'OVAL 2BOLA BOTORAN', 0, 2, 8.87, 4, '2020-01-02 02:18:35'),
('GB050', 'G', 'B', 'OVAL SABUK RANTAI AD', 0, 2, 8.26, 4, '2020-01-02 02:18:35'),
('GB179', 'G', 'B', 'OVAL 2BOLA FULL AD TUMPUK', 0, 2, 6.83, 4, '2020-01-02 02:18:35'),
('GC001', 'G', 'C', 'BLT 6 3WNA', 0, 2, 7.15, 4, '2020-01-02 02:18:35'),
('GC002', 'G', 'C', 'BLT 6 3WNA', 0, 2, 5.52, 4, '2020-01-02 02:18:35'),
('GC003', 'G', 'C', '6PCS', 0, 2, 6.32, 4, '2020-01-02 02:18:35'),
('GP031', 'G', 'P', 'FNC 2BEL', 0, 2, 7.09, 4, '2020-01-02 02:18:35'),
('GP035', 'G', 'P', 'FNC 2BEL', 0, 2, 8.08, 4, '2020-01-02 02:18:35'),
('GP037', 'G', 'P', 'FNC 2BEL', 2, 2, 10.15, 4, '2020-01-02 02:18:35'),
('IB019', 'I', 'B', 'VAR MAHKOTA 5AD (PEROT)', 3, 2, 2.07, 4, '2020-01-02 02:18:35');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
('B', 'G', 'BK'),
('B', 'H', 'BK'),
('B', 'I', 'BK'),
('C', 'G', 'KRCG'),
('C', 'K', 'CY'),
('C', 'M', 'CY'),
('C', 'L', 'CY'),
('C', 'N', 'CY'),
('D', 'A', 'DS'),
('D', 'B', 'DS'),
('F', 'K', 'FY'),
('F', 'L', 'FY'),
('F', 'M', 'FY'),
('F', 'N', 'FY'),
('G', 'A', 'GW'),
('G', 'B', 'GW'),
('H', 'K', 'HL'),
('H', 'L', 'HL'),
('H', 'M', 'HL'),
('H', 'N', 'HL'),
('K', 'A', 'KL'),
('K', 'G', 'KAKI'),
('L', 'K', 'LL'),
('L', 'L', 'LL'),
('L', 'M', 'LL'),
('L', 'N', 'LL'),
('M', 'A', 'MN'),
('M', 'B', 'MN'),
('M', 'G', 'MN'),
('M', 'H', 'MN'),
('M', 'K', 'MILANO'),
('M', 'L', 'MIL'),
('M', 'M', 'MIL'),
('M', 'N', 'MIL'),
('P', 'A', 'KPA'),
('P', 'G', 'PLS'),
('P', 'H', 'PLS'),
('R', 'K', 'RAMBO'),
('R', 'L', 'RO'),
('R', 'M', 'RO'),
('R', 'N', 'RO'),
('J', 'B', 'JP'),
('S', 'L', 'SAN'),
('S', 'M', 'SAN'),
('S', 'N', 'SAN'),
('V', 'C', 'VAR'),
('V', 'D', 'VAR'),
('V', 'E', 'VAR'),
('L', 'C', 'PLS'),
('L', 'E', 'PLS'),
('L', 'D', 'PLS'),
('J', 'A', 'JP'),
('D', 'T', 'DS'),
('A', 'T', 'AN'),
('N', 'K', 'MN'),
('N', 'N', 'MN'),
('G', 'N', 'GC'),
('I', 'M', 'ICE'),
('I', 'K', 'ICE'),
('S', 'A', 'SB'),
('Q', 'K', 'SQUARE'),
('S', 'K', 'SAN');

-- --------------------------------------------------------

--
-- Table structure for table `master_supplier`
--

CREATE TABLE `master_supplier` (
  `id` int(11) NOT NULL,
  `code` varchar(4) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `master_supplier`
--

INSERT INTO `master_supplier` (`id`, `code`, `nama`) VALUES
(0, 'UBS', 'UBS'),
(1, 'HWT', 'HWT'),
(2, 'LT', 'LOTUS'),
(3, 'LG', 'LESTARI'),
(4, 'KING', 'KING'),
(5, 'MT', 'MATAHARI'),
(6, 'YT', 'YT'),
(7, 'NN', 'NN'),
(8, 'PM', 'PM'),
(9, 'KS', 'KS'),
(10, 'DKS', 'DKS'),
(11, 'GMC', 'GMC');

-- --------------------------------------------------------

--
-- Table structure for table `master_user`
--

CREATE TABLE `master_user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

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
-- Indexes for table `items_check_detail`
--
ALTER TABLE `items_check_detail`
  ADD PRIMARY KEY (`id_stock_check`,`id_items`);

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
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
