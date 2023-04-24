-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2020 at 07:12 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `umadevi`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company` varchar(30) NOT NULL,
  `balance` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company`, `balance`) VALUES
('SENTHIL_INDUSTRIES', -600),
('SRI_KRISHNA_ENTERPRISES', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `invoiceno`
--

CREATE TABLE `invoiceno` (
  `invoiceno` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoiceno`
--

INSERT INTO `invoiceno` (`invoiceno`) VALUES
(2109);

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

CREATE TABLE `main` (
  `sno` int(5) NOT NULL,
  `date` date NOT NULL,
  `vehicle` varchar(15) NOT NULL,
  `company` varchar(25) NOT NULL,
  `invoice` varchar(10) NOT NULL,
  `too` varchar(20) NOT NULL,
  `material` varchar(30) NOT NULL,
  `weight` varchar(10) NOT NULL,
  `freight` int(5) NOT NULL,
  `loading` int(5) NOT NULL,
  `weighment` int(5) NOT NULL,
  `unloading` int(5) NOT NULL,
  `store` int(5) NOT NULL,
  `other` int(5) NOT NULL,
  `total` int(5) NOT NULL,
  `advance` int(5) NOT NULL,
  `balance` int(5) NOT NULL,
  `remark` varchar(30) NOT NULL,
  `advancetype` varchar(20) NOT NULL,
  `mamul` int(5) NOT NULL,
  `commision` int(5) NOT NULL,
  `cashmode` varchar(15) NOT NULL,
  `status` varchar(15) NOT NULL,
  `bill` varchar(20) NOT NULL,
  `no` bigint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`sno`, `date`, `vehicle`, `company`, `invoice`, `too`, `material`, `weight`, `freight`, `loading`, `weighment`, `unloading`, `store`, `other`, `total`, `advance`, `balance`, `remark`, `advancetype`, `mamul`, `commision`, `cashmode`, `status`, `bill`, `no`) VALUES
(1, '2020-02-29', 'TN-59-AQ-7617', 'SENTHIL_INDUSTRIES', '291', 'SALEM', 'AB SWITCH', '100SET', 15000, 3000, 0, 5000, 5000, 50, 28050, 0, 28050, '', 'account', 400, 0, 'pl_account', 'complete', 'notrequired', 2102),
(2, '0000-00-00', 'TN-30-L-4466', 'SENTHIL_INDUSTRIES', 'sI', 'MADURAI', 'AB SWITCH', '25 TON', 200, 10, 0, 0, 0, 0, 210, 0, 210, '', 'account', 0, 0, 'pl_account', 'complete', 'notrequired', 2103),
(3, '0000-00-00', 'TN-30-L-4466', 'SENTHIL_INDUSTRIES', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'account', 0, 0, 'pl_account', 'complete', 'notrequired', 2104),
(4, '2020-02-16', 'TN-30-L-4466', 'SRI_KRISHNA_ENTERPRISES', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'account', 0, 0, 'pl_account', 'complete', '', 2105),
(5, '2020-02-21', 'TN-30-L-4466', 'SENTHIL_INDUSTRIES', '', '', '', '', 100, 100, 100, 100, 100, 100, 600, 5000, -4400, '', 'account', 0, 0, 'pl_account', 'complete', 'notrequired', 2106),
(6, '2020-03-06', 'TN-38-AF-3129', 'SENTHIL_INDUSTRIES', '12', 'mdu', '', '', 0, 0, 0, 0, 0, 0, 0, 1000, -1000, '', 'account', 0, 0, 'pl_account', 'complete', 'notrequired', 2107),
(7, '2020-03-05', 'TN-30-L-4466', 'SENTHIL_INDUSTRIES', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'account', 0, 0, 'pl_account', 'complete', 'notrequired', 2108),
(8, '2020-02-07', 'TN-30-L-4466', 'SENTHIL_INDUSTRIES', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'account', 0, 0, 'pl_account', 'complete', 'notrequired', 2109);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicle` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle`) VALUES
(''),
('TN-30-L-4466'),
('TN-38-AF-3129'),
('TN-59-AQ-7617'),
('TN-59-BF-9919');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD UNIQUE KEY `company` (`company`);

--
-- Indexes for table `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD UNIQUE KEY `vehicle` (`vehicle`),
  ADD UNIQUE KEY `vehicle_2` (`vehicle`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `main`
--
ALTER TABLE `main`
  MODIFY `sno` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
