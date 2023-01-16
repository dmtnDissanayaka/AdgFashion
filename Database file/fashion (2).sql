-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 23, 2019 at 07:34 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fashion`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `Product_id` varchar(20) NOT NULL,
  `Poduct_name` varchar(20) NOT NULL,
  `Unite_price` varchar(20) NOT NULL,
  `Quantity` varchar(20) NOT NULL,
  `Rate` varchar(20) NOT NULL,
  `Amount` varchar(50) NOT NULL,
  `Discount_amount` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_id`, `Poduct_name`, `Unite_price`, `Quantity`, `Rate`, `Amount`, `Discount_amount`) VALUES
('1', 'x', '12', '2', '5', '60.0', '60.0'),
('a', 'a', '45', '2', '5', '225.0', '225.0'),
('a', 'a', '45', '3', '4', '180.0', '180.0'),
('qf', 'g', '10', '2', '5', '50.0', '-50.0'),
('ax', 'x', '10', '2', '5', '50.0', '50.0'),
('q', 'd', '10', '2', '5', '50.0', '50.0'),
('q', 'd', '45', '2', '5', '225.0', '225.0'),
('a', 'x', '10', '2', '2', '20.0', '20.0'),
('a', 'a', '45', '2', '12', '540.0', '530.0'),
('a', 'a', '12', '2', '3', '36.0', '36.0');

-- --------------------------------------------------------

--
-- Table structure for table `signin`
--

CREATE TABLE IF NOT EXISTS `signin` (
  `fn` varchar(20) NOT NULL,
  `ln` varchar(20) NOT NULL,
  `add` varchar(30) NOT NULL,
  `gen` varchar(7) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
