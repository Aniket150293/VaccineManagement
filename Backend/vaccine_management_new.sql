-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2021 at 04:45 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vcmng`
--

-- --------------------------------------------------------

--
-- Table structure for table `company_master`
--

CREATE TABLE `company_master` (
  `id` int(10) NOT NULL,
  `vid` int(100) NOT NULL DEFAULT 0,
  `company_name` varchar(150) NOT NULL,
  `company_location` varchar(150) NOT NULL,
  `company_email` varchar(150) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_master`
--

INSERT INTO `company_master` (`id`, `vid`, `company_name`, `company_location`, `company_email`, `is_active`) VALUES
(1, 1, 'serium', 'Pune', 'seriumpune@gmail.com', 1),
(2, 2, 'bharatbiotech', 'hydrabad', 'bb@gmail.com', 1),
(3, 2, 'bharatbiotech', 'hydrabad', 'bb@gmail.com', 1),
(4, 1, 'serium', 'pune', 'seriumpune@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` text NOT NULL,
  `message` text NOT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `country_master`
--

CREATE TABLE `country_master` (
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
-- Table structure for table `role_master`
--

CREATE TABLE `role_master` (
  `id` int(10) NOT NULL,
  `role` varchar(150) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state_master`
--

CREATE TABLE `state_master` (
  `id` int(10) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state_master`
--

INSERT INTO `state_master` (`id`, `name`, `is_active`) VALUES
(1, 'Maharashtr', 1),
(2, 'karnataka', 1),
(3, 'Uttar Prad', 1),
(4, 'Bihar', 1),
(5, 'West Benga', 1),
(6, 'Madhya Pra', 1),
(7, 'Tamil Nadu', 1),
(8, 'Rajasthan', 1),
(9, 'Gujarat', 1),
(11, 'Andhra Pra', 1),
(12, 'Odisha', 1),
(13, 'Telangana', 1),
(14, 'Kerala', 1),
(15, 'Jharkhand', 1),
(16, 'Assam', 1),
(17, 'Punjab', 1),
(18, 'Chhattisga', 1),
(19, 'Haryana', 1),
(20, 'Delhi', 1),
(21, 'Jammu and ', 1),
(22, 'Uttarakhan', 1),
(23, 'Himachal P', 1),
(24, 'Tripura', 1),
(25, 'Meghalaya', 1),
(26, 'Manipur', 1),
(27, 'Nagaland', 1),
(28, 'Goa', 1),
(29, 'Arunachal ', 1),
(30, 'Puducherry', 1),
(31, 'Mizoram', 1),
(32, 'Chandigarh', 1),
(33, 'Sikkim', 1),
(34, 'Dadra and ', 1),
(35, 'Andaman an', 1),
(36, 'Ladakh', 1),
(37, 'Lakshadwee', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` int(10) NOT NULL,
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
  `transaction_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `user_id`, `transaction_id`, `bank_txn_id`, `order_id`, `amount`, `status`, `txn_type`, `gateway_name`, `response_code`, `response_msg`, `bank_name`, `mid`, `payment_mode`, `refund_amount`, `transaction_date`) VALUES
(0, 1, '20210224111212800110168713002373749', '18974098726', 'TEST_1614175899780', '250.00', 'TXN_SUCCESS', NULL, 'SBI', '01', 'Txn Success', 'SBI', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-24 19:41:44'),
(0, 1, '20210224111212800110168713002373749', '18974098726', 'TEST_1614175899780', '250.00', 'TXN_SUCCESS', NULL, 'SBI', '01', 'Txn Success', 'SBI', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-24 19:41:44'),
(0, 1, '20210224111212800110168065702372316', '11969087478', 'TEST_1614175974097', '250.00', 'TXN_FAILURE', NULL, 'AXIS', '227', 'Your payment has been declined by your bank. Please try again or use a different method to complete the payment.', 'AXIS', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-24 19:42:56'),
(0, 1, '20210224111212800110168158802386699', '10055378215', 'TEST_1614175989452', '250.00', 'TXN_SUCCESS', NULL, 'HDFC', '01', 'Txn Success', 'HDFC', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-24 19:43:11'),
(0, 1, '20210225111212800110168950602386225', '10033040080', 'TEST_1614268374747', '250.00', 'TXN_SUCCESS', NULL, 'HDFC', '01', 'Txn Success', 'HDFC', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-25 21:22:58'),
(0, 1, '20210225111212800110168950602386225', '10033040080', 'TEST_1614268374747', '250.00', 'TXN_SUCCESS', NULL, 'HDFC', '01', 'Txn Success', 'HDFC', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-25 21:22:58'),
(0, 1, '20210225111212800110168950602386225', '10033040080', 'TEST_1614268374747', '250.00', 'TXN_SUCCESS', NULL, 'HDFC', '01', 'Txn Success', 'HDFC', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-25 21:22:58'),
(0, 1, '20210225111212800110168351102394820', '19860323604', 'TEST_1614268699639', '250.00', 'TXN_SUCCESS', NULL, 'ICICI', '01', 'Txn Success', 'ICICI', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-25 21:28:22'),
(0, 1, '20210225111212800110168351102394820', '19860323604', 'TEST_1614268699639', '250.00', 'TXN_SUCCESS', NULL, 'ICICI', '01', 'Txn Success', 'ICICI', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-25 21:28:22'),
(0, 1, '20210225111212800110168351102394820', '19860323604', 'TEST_1614268699639', '250.00', 'TXN_SUCCESS', NULL, 'ICICI', '01', 'Txn Success', 'ICICI', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-25 21:28:22'),
(0, 1, '20210225111212800110168351102394820', '19860323604', 'TEST_1614268699639', '250.00', 'TXN_SUCCESS', NULL, 'ICICI', '01', 'Txn Success', 'ICICI', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-25 21:28:22'),
(0, 1, '20210225111212800110168289102386890', '19356552781', 'TEST_1614269184041', '250.00', 'TXN_SUCCESS', NULL, 'HDFC', '01', 'Txn Success', 'HDFC', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-25 21:36:27'),
(0, 1, '20210226111212800110168030202393333', '17305543974', 'TEST_1614314573571', '250.00', 'TXN_SUCCESS', NULL, 'PNB', '01', 'Txn Success', 'PNB', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 10:12:57'),
(0, 1, '20210226111212800110168900202378691', '19989272283', 'TEST_1614323667332', '250.00', 'TXN_SUCCESS', NULL, 'PNB', '01', 'Txn Success', 'PNB', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 12:44:31'),
(0, 1, '20210226111212800110168418602373948', '16395275925', 'TEST_1614324281248', '250.00', 'TXN_SUCCESS', NULL, 'AXIS', '01', 'Txn Success', 'AXIS', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 12:54:44'),
(0, 1, '20210226111212800110168418602373948', '16395275925', 'TEST_1614324281248', '250.00', 'TXN_SUCCESS', NULL, 'AXIS', '01', 'Txn Success', 'AXIS', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 12:54:44'),
(0, 1, '20210226111212800110168418602373948', '16395275925', 'TEST_1614324281248', '250.00', 'TXN_SUCCESS', NULL, 'AXIS', '01', 'Txn Success', 'AXIS', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 12:54:44'),
(0, 1, '20210226111212800110168418602373948', '16395275925', 'TEST_1614324281248', '250.00', 'TXN_SUCCESS', NULL, 'AXIS', '01', 'Txn Success', 'AXIS', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 12:54:44'),
(0, 1, '20210226111212800110168418602373948', '16395275925', 'TEST_1614324281248', '250.00', 'TXN_SUCCESS', NULL, 'AXIS', '01', 'Txn Success', 'AXIS', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 12:54:44'),
(0, 1, '20210226111212800110168418602373948', '16395275925', 'TEST_1614324281248', '250.00', 'TXN_SUCCESS', NULL, 'AXIS', '01', 'Txn Success', 'AXIS', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 12:54:44'),
(0, 1, '20210226111212800110168418602373948', '16395275925', 'TEST_1614324281248', '250.00', 'TXN_SUCCESS', NULL, 'AXIS', '01', 'Txn Success', 'AXIS', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 12:54:44'),
(0, 1, '20210226111212800110168418602373948', '16395275925', 'TEST_1614324281248', '250.00', 'TXN_SUCCESS', NULL, 'AXIS', '01', 'Txn Success', 'AXIS', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 12:54:44'),
(0, 1, '20210226111212800110168418602373948', '16395275925', 'TEST_1614324281248', '250.00', 'TXN_SUCCESS', NULL, 'AXIS', '01', 'Txn Success', 'AXIS', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 12:54:44'),
(0, 1, '20210226111212800110168418602373948', '16395275925', 'TEST_1614324281248', '250.00', 'TXN_SUCCESS', NULL, 'AXIS', '01', 'Txn Success', 'AXIS', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 12:54:44'),
(0, 1, '20210226111212800110168418602373948', '16395275925', 'TEST_1614324281248', '250.00', 'TXN_SUCCESS', NULL, 'AXIS', '01', 'Txn Success', 'AXIS', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 12:54:44'),
(0, 1, '20210226111212800110168418602373948', '16395275925', 'TEST_1614324281248', '250.00', 'TXN_SUCCESS', NULL, 'AXIS', '01', 'Txn Success', 'AXIS', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 12:54:44'),
(0, 1, '20210226111212800110168306502498993', '17237344422', 'TEST_1614324815354', '250.00', 'TXN_SUCCESS', NULL, 'HDFC', '01', 'Txn Success', 'HDFC', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 13:03:38'),
(0, 1, '20210226111212800110168306502498993', '17237344422', 'TEST_1614324815354', '250.00', 'TXN_SUCCESS', NULL, 'HDFC', '01', 'Txn Success', 'HDFC', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 13:03:38'),
(0, 1, '20210226111212800110168306502498993', '17237344422', 'TEST_1614324815354', '250.00', 'TXN_SUCCESS', NULL, 'HDFC', '01', 'Txn Success', 'HDFC', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 13:03:38'),
(0, 1, '20210226111212800110168306502498993', '17237344422', 'TEST_1614324815354', '250.00', 'TXN_SUCCESS', NULL, 'HDFC', '01', 'Txn Success', 'HDFC', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 13:03:38'),
(0, 1, '20210226111212800110168306502498993', '17237344422', 'TEST_1614324815354', '250.00', 'TXN_SUCCESS', NULL, 'HDFC', '01', 'Txn Success', 'HDFC', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 13:03:38'),
(0, 1, '20210226111212800110168306502498993', '17237344422', 'TEST_1614324815354', '250.00', 'TXN_SUCCESS', NULL, 'HDFC', '01', 'Txn Success', 'HDFC', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 13:03:38'),
(0, 1, '20210226111212800110168306502498993', '17237344422', 'TEST_1614324815354', '250.00', 'TXN_SUCCESS', NULL, 'HDFC', '01', 'Txn Success', 'HDFC', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 13:03:38'),
(0, 1, '20210226111212800110168306502498993', '17237344422', 'TEST_1614324815354', '250.00', 'TXN_SUCCESS', NULL, 'HDFC', '01', 'Txn Success', 'HDFC', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 13:03:38'),
(0, 1, '20210226111212800110168654802392323', '15055974727', 'TEST_1614325203708', '250.00', 'TXN_FAILURE', NULL, 'ICICI', '227', 'Your payment has been declined by your bank. Please try again or use a different method to complete the payment.', 'ICICI', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 13:10:07'),
(0, 1, '20210226111212800110168837002385313', '19554845140', 'TEST_1614325221908', '250.00', 'TXN_SUCCESS', NULL, 'AXIS', '01', 'Txn Success', 'AXIS', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 13:10:25'),
(0, 1, '20210226111212800110168379402409809', '12612063008', 'TEST_1614325502489', '250.00', 'TXN_SUCCESS', NULL, 'AXIS', '01', 'Txn Success', 'AXIS', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 13:15:05'),
(0, 1, '20210226111212800110168379402409809', '12612063008', 'TEST_1614325502489', '250.00', 'TXN_SUCCESS', NULL, 'AXIS', '01', 'Txn Success', 'AXIS', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 13:15:05'),
(0, 1, '20210226111212800110168379402409809', '12612063008', 'TEST_1614325502489', '250.00', 'TXN_SUCCESS', NULL, 'AXIS', '01', 'Txn Success', 'AXIS', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 13:15:05'),
(0, 1, '20210226111212800110168125002711508', '10551531549', 'TEST_1614340750880', '250.00', 'TXN_SUCCESS', NULL, 'HDFC', '01', 'Txn Success', 'HDFC', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 17:29:14'),
(0, 1, '20210226111212800110168125002711508', '10551531549', 'TEST_1614340750880', '250.00', 'TXN_SUCCESS', NULL, 'HDFC', '01', 'Txn Success', 'HDFC', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 17:29:14'),
(0, 1, '20210226111212800110168617902406174', '11699807546', 'TEST_1614340812017', '250.00', 'TXN_FAILURE', NULL, 'AXIS', '227', 'Your payment has been declined by your bank. Please try again or use a different method to complete the payment.', 'AXIS', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 17:30:14'),
(0, 1, '20210226111212800110168933102385169', '13935632385', 'TEST_1614341485504', '250.00', 'TXN_SUCCESS', NULL, 'SBI', '01', 'Txn Success', 'SBI', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 17:41:28'),
(0, 1, '20210226111212800110168553202391255', '14373370948', 'TEST_1614341589705', '250.00', 'TXN_FAILURE', NULL, 'ICICI', '227', 'Your payment has been declined by your bank. Please try again or use a different method to complete the payment.', 'ICICI', 'dYCLtv04241463291282', 'NB', NULL, '2021-02-26 17:43:12');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(10) NOT NULL,
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
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `last_login` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `country` varchar(20) NOT NULL,
  `pcdate` datetime NOT NULL DEFAULT current_timestamp(),
  `pudate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `profile`, `email`, `password`, `mobile`, `alternate_mobile`, `first_name`, `middle_name`, `last_name`, `address`, `city`, `state`, `zip_code`, `date_of_birth`, `month_of_birth`, `year_of_birth`, `role`, `is_active`, `is_blocked`, `last_login`, `created_at`, `modified_at`, `country`, `pcdate`, `pudate`) VALUES
(2, 'c6ed106b-e39a-4597-b37b-73aa5b24b8f6', 'a@gmail.com', 'a', '8', '8', '8', '8', '8', '8', '8', 1, '8', 2, 9, 2020, 'super_user', 1, 0, '2020-10-15 14:15:36', '2020-08-15 14:15:36', '2020-11-17 12:24:14', '', '2020-12-30 16:59:54', '2020-12-30 17:06:21'),
(3, '8b53e37d-9b34-4242-900d-52c8a19ac13f', 'aniketbansode15@gmail.com', '12345', '9765602975', '123456789', 'ashutosh', 'arun', 'katkar', 'hadapsar', 'pune', 20, '411028', 24, 5, 2000, 'user', 1, 0, '2020-11-10 19:11:53', '2020-11-10 19:11:53', '2020-11-27 11:46:32', '9', '2020-12-30 16:59:54', '2021-01-04 19:33:08'),
(8, 'e7f64f69-18de-49ad-b35a-ebcf165c6977', 'b@gmail.com', 'b', '1233123123', '312312312', 'ba', 'ba', 'ba', 'pune', 'pune', 20, '1234', 9, 2, 2021, 'user', 1, 0, '2021-02-26 12:43:41', '2021-02-26 12:43:41', '2021-02-26 12:43:41', '18', '2021-02-26 12:43:41', '2021-02-26 12:43:41');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine_available_count`
--

CREATE TABLE `vaccine_available_count` (
  `id` int(10) NOT NULL,
  `company_id` int(10) NOT NULL,
  `vaccine_id` int(10) NOT NULL,
  `available_count` int(10) NOT NULL,
  `amount_per_dose` int(20) NOT NULL DEFAULT 0,
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

CREATE TABLE `vaccine_details` (
  `id` int(10) NOT NULL,
  `user_id` int(20) NOT NULL DEFAULT 0,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `age` int(10) NOT NULL,
  `address` varchar(500) NOT NULL,
  `company_id` varchar(20) DEFAULT NULL,
  `vaccine_id` varchar(20) DEFAULT NULL,
  `Total_available_count` int(100) NOT NULL DEFAULT 0,
  `Amount_per_dose` int(50) NOT NULL DEFAULT 0,
  `Total_quantity` int(50) NOT NULL DEFAULT 0,
  `Final_amount` int(50) NOT NULL DEFAULT 0,
  `gender` varchar(20) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vaccine_details`
--

INSERT INTO `vaccine_details` (`id`, `user_id`, `first_name`, `last_name`, `age`, `address`, `company_id`, `vaccine_id`, `Total_available_count`, `Amount_per_dose`, `Total_quantity`, `Final_amount`, `gender`, `created_date`, `is_active`) VALUES
(1, 0, 'a', 'b', 20, 'c', 'se', 'bb', 0, 0, 0, 0, '0', '2021-02-26 10:20:03', 1),
(2, 0, 'a', 'aaa', 2, 'aa', 'serium', 'covid19', 0, 0, 0, 0, '0', '2021-02-26 10:20:03', 1),
(4, 0, 'a', 'b', 11, 'x', 'serium', 'covid19', 0, 0, 0, 0, '0', '2021-02-26 10:20:03', 1),
(5, 0, 'abc', 'xyz', 11, 'mum', 'serium', 'covid19', 0, 0, 0, 0, '0', '2021-02-26 10:20:03', 1),
(6, 0, 'a', 'a', 1, '12', 'serium', 'covid19', 0, 0, 0, 0, '0', '2021-02-26 10:20:03', 1),
(7, 0, 'a', 'b', 22, 'a', 'serium', 'covid19', 0, 0, 0, 0, '0', '2021-02-26 10:20:03', 1),
(8, 0, 'aa', 'aa', 11, 'aa', 'serium', 'covid19', 0, 0, 0, 0, '0', '2021-02-26 10:20:03', 1),
(9, 0, 'a', 'k', 1, 'a', 'serium', 'covid19', 0, 0, 0, 0, '0', '2021-02-26 10:20:03', 1),
(10, 0, 'ashutosh', 'katkar', 11, 'q', 'serium', 'covid19', 0, 0, 0, 0, '0', '2021-02-26 10:20:03', 1),
(11, 0, 'ashutosh', 'katkar', 1, 'a', 'serium', 'covid19', 0, 0, 0, 0, '0', '2021-02-26 10:20:03', 1),
(12, 0, 'ashutosh', 'katkar', 1, 'aa', 'serium', 'covid19', 0, 0, 0, 0, '0', '2021-02-26 10:20:03', 1),
(13, 0, 'ashutosh', 'katkar', 1, '1', 'serium', 'covid19', 0, 0, 0, 0, '0', '2021-02-26 10:20:03', 1),
(14, 0, 'ashutosh', 'katkar', 1, '11', 'serium', 'covid19', 0, 0, 0, 0, '0', '2021-02-26 10:20:03', 1),
(15, 0, 'ashutosh', 'katkar', 22, 'a', 'serium', 'covid19', 0, 0, 0, 0, '0', '2021-02-26 10:20:03', 1),
(16, 0, 'ashutosh', 'katkar', 22, 'av', 'serium', 'covid19', 0, 0, 0, 0, '0', '2021-02-26 10:20:03', 1),
(17, 0, 'ashutosh', 'katkar', 12, 'hadapsar', '3', '3', 0, 0, 0, 0, '0', '2021-02-26 10:20:03', 1),
(18, 0, 'ashutosh', 'katkar', 33, 'hadapsar', '1', '1', 0, 0, 0, 0, '0', '2021-02-26 10:20:03', 1),
(19, 0, 'ashutosh', 'katkar', 55, 'mandai', '1', '1', 0, 0, 0, 0, '0', '2021-02-26 10:20:03', 1),
(20, 0, 'ashutosh', 'katkar', 66, 'hadapsar', '1', '1', 0, 0, 0, 0, '0', '2021-02-26 10:20:03', 1),
(21, 0, 'ashutosh', 'katkar', 11, 'hadapsar', '2', '2', 25, 100, 11, 1100, 'undefined', '2021-02-26 10:20:03', 1),
(22, 0, 'ashutosh', 'katkar', 111, 'hadapsar', '2', '2', 25, 100, 33, 3300, 'undefined', '2021-02-26 10:20:03', 1),
(23, 0, 'ashutosh', 'katkar', 11, 'hadapsar', '2', '2', 25, 100, 2, 200, 'undefined', '2021-02-26 10:20:03', 1),
(24, 0, 'ashutosh', 'katkar', 22, 'hadapsar', '2', '2', 25, 100, 22, 2200, 'undefined', '2021-02-26 10:20:03', 1),
(25, 0, 'ashutosh', 'katkar', 0, 'hadapsar', '2', '2', 25, 100, 2, 200, 'undefined', '2021-02-26 10:20:03', 1),
(26, 0, 'ashutosh', 'katkar', 18, 'hadapsar pune', '2', '2', 25, 100, 2, 200, 'undefined', '2021-02-26 10:20:03', 1),
(27, 0, 'ashutosh', 'katkar', 18, 'hadapsar pune', '2', '2', 25, 100, 2, 200, 'male', '2021-02-26 10:20:03', 1),
(28, 0, 'ashutosh', 'katkar', 11, 'hadapsar2', '2', '2', 25, 100, 4, 400, 'undefined', '2021-02-26 10:20:03', 1),
(29, 0, 'ashutosh', 'katkar', 66, 'hadapsar', '2', '2', 25, 100, 33, 3300, 'undefined', '2021-02-26 10:20:03', 1),
(30, 0, 'ashutosh', 'katkar', 11, 'hadapsar12', '2', '2', 25, 100, 22, 2200, 'undefined', '2021-02-26 10:20:03', 1),
(31, 0, 'ashutosh', 'katkar', 11, 'hadapsar13', '2', '2', 25, 100, 2, 200, 'undefined', '2021-02-26 10:20:03', 1),
(32, 0, 'ashutosh', 'katkar', 12, 'hadapsar2', '2', '2', 25, 100, 2, 200, 'undefined', '2021-02-26 10:20:03', 1),
(33, 0, 'ashutosh', 'katkar', 11, 'hadapsar', '2', '2', 25, 100, 1, 100, 'undefined', '2021-02-26 10:20:03', 1),
(34, 0, 'ashutosh', 'katkar', 11, 'hadapsar', '2', '2', 25, 100, 2, 200, '', '2021-02-26 10:20:03', 1),
(35, 0, 'ashutosh', 'katkar', 55, 'hadapsar55', '2', '2', 25, 100, 5, 500, '', '2021-02-26 10:20:03', 1),
(36, 0, 'ashutosh', 'katkar', 11, 'hadapsar', '2', '2', 25, 100, 11, 1100, '', '2021-02-26 10:20:03', 1),
(37, 0, 'ashutosh', 'katkar', 11, 'hadapsar1', '2', '2', 25, 100, 11, 1100, 'male', '2021-02-26 10:20:03', 1),
(38, 0, 'ashutosh', 'katkar', 90, 'mumbai', '2', '2', 25, 100, 50, 5000, 'female', '2021-02-26 10:20:03', 1),
(39, 0, 'ashutosh', 'katkar', 2, 'hadapsar', '1', '1', 10, 0, 22, 0, 'male', '2021-02-26 10:20:03', 1),
(40, 0, 'ashutosh', 'katkar', 2, 'hadapsar', '1', '1', 10, 0, 22, 0, 'male', '2021-02-26 10:20:03', 1),
(41, 0, 'ashutosh', 'katkar', 2, 'hadapsar', '2', '2', 25, 100, 2, 200, 'female', '2021-02-26 10:20:03', 1),
(42, 0, 'ashutosh', 'katkar', 11, 'hadapsar', '1', '1', 10, 0, 1, 0, 'male', '2021-02-26 10:20:03', 1),
(43, 0, 'ashutosh', 'katkar', 11, 'hadapsar', '1', '1', 10, 0, 2, 0, 'male', '2021-02-26 10:20:03', 1),
(44, 1, 'ashutosh', 'katkar', 11, 'hadapsar', '3', '3', 100, 100, 2, 200, 'male', '2021-02-26 10:20:03', 1),
(45, 3, 'ashutosh', 'katkar', 22, 'hadapsar', '3', '3', 100, 100, 2, 200, 'male', '2021-02-26 10:20:03', 1),
(46, 3, 'ashutosh', 'katkar', 34, 'hadapsar', '4', '4', 50, 50, 5, 250, 'male', '2021-02-26 10:20:03', 1),
(47, 3, 'ashutosh', 'katkar', 89, 'hadapsar', '2', '2', 25, 100, 22, 2200, 'female', '2021-02-26 10:20:03', 1),
(48, 3, 'ashutosh', 'katkar', 77, 'pune', '2', '2', 25, 100, 22, 2200, 'female', '2020-03-25 00:00:00', 1),
(49, 8, 'ba', 'ba', 11, 'pune', '1', '1', 10, 0, 3, 0, 'male', '2021-02-26 12:44:23', 1),
(50, 8, 'ba', 'ba', 18, 'pune', '3', '3', 100, 100, 12, 1200, 'male', '2021-02-26 12:54:32', 1),
(51, 8, 'ba', 'ba', 33, 'pune', '4', '4', 50, 50, 3, 150, 'female', '2021-02-26 13:03:33', 1),
(52, 8, 'ba', 'ba', 11, 'pune', '1', '1', 10, 0, 11, 0, 'male', '2021-02-26 13:15:01', 1),
(53, 8, 'ba', 'ba', 3, 'pune', '2', '2', 25, 100, 33, 3300, 'female', '2021-02-26 17:29:07', 1),
(54, 8, 'ba', 'ba', 1, 'pune', '1', '1', 10, 0, 1, 0, 'male', '2021-02-26 17:30:10', 1),
(55, 8, 'ba', 'ba', 22, 'pune', '2', '2', 25, 100, 22, 2200, 'female', '2021-02-26 17:41:23', 1),
(56, 8, 'ba', 'ba', 11, 'pune', '4', '4', 50, 50, 11, 550, 'other', '2021-02-26 17:43:08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `virus_details`
--

CREATE TABLE `virus_details` (
  `id` int(10) NOT NULL,
  `vid` int(10) NOT NULL,
  `vname` varchar(150) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `virus_details`
--

INSERT INTO `virus_details` (`id`, `vid`, `vname`, `is_active`) VALUES
(1, 1, 'covid19', 1),
(2, 2, 'dengue', 2),
(3, 2, 'colora', 1),
(4, 1, 'birdflue', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_master`
--
ALTER TABLE `role_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state_master`
--
ALTER TABLE `state_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vaccine_details`
--
ALTER TABLE `vaccine_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_master`
--
ALTER TABLE `role_master`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `state_master`
--
ALTER TABLE `state_master`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vaccine_details`
--
ALTER TABLE `vaccine_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
