-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 14, 2022 at 02:56 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `W1868558_DB`
--

-- --------------------------------------------------------

--
-- Table structure for table `w1868558_customer`
--

CREATE TABLE `w1868558_customer` (
  `custNo` int(11) NOT NULL,
  `custName` varchar(20) DEFAULT NULL,
  `custSurname` varchar(20) DEFAULT NULL,
  `custEmail` varchar(30) DEFAULT NULL,
  `custMobileNo` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `w1868558_customer`
--

INSERT INTO `w1868558_customer` (`custNo`, `custName`, `custSurname`, `custEmail`, `custMobileNo`) VALUES
(1, 'Kamal', 'Patrick', 'test1.com', 762088801),
(2, 'Sunil', 'Ranathunge', 'test2.com', 762088802),
(3, 'Nimal', 'Patson', 'test3.com', 762088803),
(4, 'Kumudu', 'Manel', 'test4.com', 762088804),
(5, 'Dulama', 'Paton', 'test5.com', 762088805),
(6, 'Kamala', 'Santhi', 'test6.com', 762088806);

-- --------------------------------------------------------

--
-- Table structure for table `w1868558_Onoff_Payment`
--

CREATE TABLE `w1868558_Onoff_Payment` (
  `onOffPaymentNo` int(11) NOT NULL,
  `onOffPaymentDate` varchar(20) DEFAULT NULL,
  `onOffPaymentAmount` decimal(8,2) DEFAULT NULL,
  `custNo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `w1868558_Onoff_Payment`
--

INSERT INTO `w1868558_Onoff_Payment` (`onOffPaymentNo`, `onOffPaymentDate`, `onOffPaymentAmount`, `custNo`) VALUES
(1, '2020.01.01', '75.00', 1),
(2, '2020.02.01', '60.00', 2),
(3, '2020.03.01', '100.00', 3),
(4, '2020.01.01', '54.00', 4),
(5, '2020.01.01', '120.00', 5),
(6, '2020.01.01', '20.00', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `w1868558_customer`
--
ALTER TABLE `w1868558_customer`
  ADD PRIMARY KEY (`custNo`);

--
-- Indexes for table `w1868558_Onoff_Payment`
--
ALTER TABLE `w1868558_Onoff_Payment`
  ADD PRIMARY KEY (`onOffPaymentNo`),
  ADD KEY `cusidfk` (`custNo`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `w1868558_Onoff_Payment`
--
ALTER TABLE `w1868558_Onoff_Payment`
  ADD CONSTRAINT `cusidfk` FOREIGN KEY (`custNo`) REFERENCES `w1868558_customer` (`custNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
