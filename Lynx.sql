-- phpMyAdmin SQL Dump
-- version 4.0.6deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 17, 2015 at 12:01 PM
-- Server version: 5.5.37-0ubuntu0.13.10.1
-- PHP Version: 5.5.3-1ubuntu2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Lynx`
--

-- --------------------------------------------------------

--
-- Table structure for table `AdditionalLeaves`
--

CREATE TABLE IF NOT EXISTS `AdditionalLeaves` (
  `EmpId` varchar(255) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `Reason` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`EmpId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `DefaultLeaves`
--

CREATE TABLE IF NOT EXISTS `DefaultLeaves` (
  `EmpId` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Employees`
--

CREATE TABLE IF NOT EXISTS `Employees` (
  `EmpId` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Phone` int(10) NOT NULL,
  `Section` varchar(255) NOT NULL,
  `Position` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Salary` varchar(255) NOT NULL,
  `Level` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  PRIMARY KEY (`EmpId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Employees`
--

INSERT INTO `Employees` (`EmpId`, `Name`, `Address`, `Phone`, `Section`, `Position`, `Email`, `Salary`, `Level`, `Password`) VALUES
('1', 'Rajika', 'Miami', 717479370, 'SE', 'Head', 'inbox.rajika@gmail.com', '50000', 'Staff', '123'),
('2', 'Tiffany', 'Seoul', 717479371, 'Head', 'SE', 'inbox.tiffany@gmail.com', '550000', 'Admin', '12');

-- --------------------------------------------------------

--
-- Table structure for table `Leaves`
--

CREATE TABLE IF NOT EXISTS `Leaves` (
  `EmpId` varchar(255) NOT NULL,
  `Casual` varchar(255) NOT NULL,
  `Annual` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  PRIMARY KEY (`EmpId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `RequestedLeaves`
--

CREATE TABLE IF NOT EXISTS `RequestedLeaves` (
  `EmpId` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Reason` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
