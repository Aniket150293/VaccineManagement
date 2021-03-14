-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2021 at 09:53 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vaccine_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `company_master`
--

CREATE TABLE IF NOT EXISTS `company_master` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `vid` int(10) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `company_location` varchar(100) NOT NULL,
  `company_email` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `company_master`
--

INSERT INTO `company_master` (`id`, `vid`, `company_name`, `company_location`, `company_email`, `is_active`) VALUES
(1, 1, 'Serium', 'Pune', 'serium@gmail.com', 1),
(2, 2, 'Bharat Tech', 'Pune', 'bharattech@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comp_admin_mapping`
--

CREATE TABLE IF NOT EXISTS `comp_admin_mapping` (
  `id` int(10) NOT NULL,
  `comp_id` int(10) NOT NULL,
  `uid` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comp_admin_mapping`
--

INSERT INTO `comp_admin_mapping` (`id`, `comp_id`, `uid`) VALUES
(1, 1, 2),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE IF NOT EXISTS `contact_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` text NOT NULL,
  `message` text NOT NULL,
  `added_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `country_master`
--

CREATE TABLE IF NOT EXISTS `country_master` (
  `id` int(10) NOT NULL,
  `name` varchar(150) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country_master`
--

INSERT INTO `country_master` (`id`, `name`, `is_active`) VALUES
(1, 'India', 1),
(2, 'United States', 1),
(3, 'China', 1),
(4, 'Japan', 1),
(5, 'Germany', 1),
(6, ' United Kingdom', 1),
(7, 'France', 1),
(8, 'Italy', 1),
(9, 'Brazil', 1),
(10, 'Canada', 1),
(11, 'Russia', 1),
(12, ' South Korea', 1),
(13, 'Spain', 1),
(14, 'Australia', 1),
(15, 'Mexico', 1),
(16, 'Indonesia', 1),
(17, 'Netherlands', 1),
(18, 'Saudi Arabia', 1),
(19, 'Turkey', 1),
(20, 'Switzerland', 1);

-- --------------------------------------------------------

--
-- Table structure for table `state_master`
--

CREATE TABLE IF NOT EXISTS `state_master` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `state_master`
--

INSERT INTO `state_master` (`id`, `name`, `is_active`) VALUES
(1, 'Maharashtra', 1),
(2, 'Bihar', 1),
(3, 'Uttar Pradesh', 1),
(4, 'Madhya Pradesh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE IF NOT EXISTS `transaction_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `transaction_id` varchar(500) NOT NULL,
  `bank_txn_id` varchar(500) NOT NULL,
  `order_id` varchar(500) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `txn_type` varchar(100) DEFAULT NULL,
  `gateway_name` varchar(100) NOT NULL,
  `response_code` varchar(100) NOT NULL,
  `response_msg` text NOT NULL,
  `bank_name` varchar(500) NOT NULL,
  `mid` text NOT NULL,
  `payment_mode` varchar(500) NOT NULL,
  `refund_amount` varchar(500) DEFAULT NULL,
  `transaction_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `profile` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `alternate_mobile` varchar(20) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `state` int(11) NOT NULL,
  `zip_code` varchar(100) NOT NULL,
  `date_of_birth` int(10) NOT NULL,
  `month_of_birth` int(10) NOT NULL,
  `year_of_birth` int(10) NOT NULL,
  `role` varchar(10) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_blocked` tinyint(1) NOT NULL DEFAULT '0',
  `last_login` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `country` varchar(20) NOT NULL,
  `pcdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pudate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `profile`, `email`, `password`, `mobile`, `alternate_mobile`, `first_name`, `middle_name`, `last_name`, `address`, `city`, `state`, `zip_code`, `date_of_birth`, `month_of_birth`, `year_of_birth`, `role`, `is_active`, `is_blocked`, `last_login`, `created_at`, `modified_at`, `country`, `pcdate`, `pudate`) VALUES
(1, '131fa4c7-8bd4-45ed-8d96-4492a0a988de', 'aniketbansode15@gmail.com', '12345', '8237440506', '9922341815', 'Aniket', 'M', 'Bansode', 'Ravi Darshan B-501, Hadapsar,Pune -411028', 'Pune', 1, '411028', 3, 3, 2021, 'user', 1, 0, '2021-03-14 14:04:14', '2021-03-14 14:04:14', '2021-03-14 14:04:14', '1', '2021-03-14 14:04:14', '2021-03-14 14:04:14');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine_available_count`
--

CREATE TABLE IF NOT EXISTS `vaccine_available_count` (
  `id` int(10) NOT NULL,
  `company_id` int(10) NOT NULL,
  `vaccine_id` int(10) NOT NULL,
  `available_count` int(10) NOT NULL,
  `amount_per_dose` int(20) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vaccine_available_count`
--

INSERT INTO `vaccine_available_count` (`id`, `company_id`, `vaccine_id`, `available_count`, `amount_per_dose`, `is_active`) VALUES
(1, 1, 1, 10, 0, 1),
(2, 2, 2, 25, 100, 1),
(3, 2, 3, 100, 100, 1),
(3, 1, 4, 50, 50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vaccine_details`
--

CREATE TABLE IF NOT EXISTS `vaccine_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(20) NOT NULL DEFAULT '0',
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `age` int(10) NOT NULL,
  `address` varchar(500) NOT NULL,
  `company_id` varchar(20) DEFAULT NULL,
  `vaccine_id` varchar(20) DEFAULT NULL,
  `Total_available_count` int(100) NOT NULL DEFAULT '0',
  `Amount_per_dose` int(50) NOT NULL DEFAULT '0',
  `Total_quantity` int(50) NOT NULL DEFAULT '0',
  `Final_amount` int(50) NOT NULL DEFAULT '0',
  `gender` varchar(20) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `virus_details`
--

CREATE TABLE IF NOT EXISTS `virus_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `vid` int(10) NOT NULL,
  `vname` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `virus_details`
--

INSERT INTO `virus_details` (`id`, `vid`, `vname`, `is_active`) VALUES
(1, 1, 'COVID-19', 1),
(2, 2, 'Dengue', 1),
(3, 3, 'COVID-20', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
