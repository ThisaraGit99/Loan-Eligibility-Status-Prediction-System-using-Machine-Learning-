-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 03, 2024 at 08:19 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loandatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`) VALUES
(12, 'dGVzdDAx', 'dGVzdDAxQG1haWwuY29t', 'dGVzdDAx'),
(42, 'dGVzdDA5', 'dGVzdDA5QG1haWwuY29t', 'dGVzdDA5'),
(43, 'dGVzdA==', 'dGVzdEBtYWlsLmNvbQ==', 'dGVzdDEy');

-- --------------------------------------------------------

--
-- Table structure for table `usersform`
--

DROP TABLE IF EXISTS `usersform`;
CREATE TABLE IF NOT EXISTS `usersform` (
  `form_id` int(11) NOT NULL AUTO_INCREMENT,
  `gender` varchar(255) NOT NULL,
  `married` varchar(255) NOT NULL,
  `dependents` varchar(255) NOT NULL,
  `education` varchar(255) NOT NULL,
  `self_employed` varchar(255) NOT NULL,
  `credit_history` varchar(255) NOT NULL,
  `property_area` varchar(255) NOT NULL,
  `applicant_income` float NOT NULL,
  `coapplicant_income` float NOT NULL,
  `loan_amount` float NOT NULL,
  `loan_amount_term` int(11) NOT NULL,
  `prediction_result` varchar(255) NOT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=MyISAM AUTO_INCREMENT=285 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usersform`
--

INSERT INTO `usersform` (`form_id`, `gender`, `married`, `dependents`, `education`, `self_employed`, `credit_history`, `property_area`, `applicant_income`, `coapplicant_income`, `loan_amount`, `loan_amount_term`, `prediction_result`) VALUES
(1, 'TWFsZQ==', 'WWVz', 'Mg==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 10000, 20000, 11, 'TG9hbiBSZWplY3RlZA=='),
(27, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'UnVyYWw=', 1000000, 10000, 1000000, 36, 'TG9hbiBSZWplY3RlZA=='),
(28, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'UnVyYWw=', 1000000, 10000, 1000000, 36, 'TG9hbiBSZWplY3RlZA=='),
(29, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 1000000, 10000, 1000000, 36, 'TG9hbiBSZWplY3RlZA=='),
(30, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 1000000, 10000, 1000000, 36, 'TG9hbiBSZWplY3RlZA=='),
(31, 'TWFsZQ==', 'WWVz', 'Mg==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 1000000, 10000, 1000000, 36, 'TG9hbiBSZWplY3RlZA=='),
(32, 'TWFsZQ==', 'WWVz', 'Mg==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 1000000, 10000, 1000000, 36, 'TG9hbiBSZWplY3RlZA=='),
(33, 'TWFsZQ==', 'WWVz', 'Mg==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 1000000, 10000, 1000000, 36, 'TG9hbiBSZWplY3RlZA=='),
(34, 'TWFsZQ==', 'WWVz', 'Mg==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 1000000, 10000, 1000000, 36, 'TG9hbiBSZWplY3RlZA=='),
(50, 'TWFsZQ==', 'WWVz', 'MA==', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'UnVyYWw=', 200000, 100000, 150000, 24, 'TG9hbiBSZWplY3RlZA=='),
(51, 'TWFsZQ==', 'WWVz', 'Mg==', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'UnVyYWw=', 200000, 100000, 150000, 24, 'TG9hbiBSZWplY3RlZA=='),
(52, 'TWFsZQ==', 'WWVz', 'Mg==', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'UnVyYWw=', 200000, 100000, 150000, 24, 'TG9hbiBSZWplY3RlZA=='),
(53, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'UnVyYWw=', 200000, 100000, 150000, 24, 'TG9hbiBSZWplY3RlZA=='),
(54, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'UnVyYWw=', 200000, 100000, 150000, 24, 'TG9hbiBSZWplY3RlZA=='),
(55, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'UnVyYWw=', 200000, 100000, 150000, 24, 'TG9hbiBSZWplY3RlZA=='),
(56, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'UnVyYWw=', 200000, 100000, 150000, 24, 'TG9hbiBSZWplY3RlZA=='),
(57, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'UnVyYWw=', 200000, 0, 150000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(58, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'UnVyYWw=', 200000, 0, 150000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(59, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'UnVyYWw=', 200000, 0, 15000000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(60, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'UnVyYWw=', 200000, 0, 15000000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(61, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'UnVyYWw=', 200000, 0, 15000000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(62, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'UnVyYWw=', 200000, 0, 15000000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(63, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'VXJiYW4=', 200000, 0, 15000000, 48, 'TG9hbiBBcHByb3ZlZA=='),
(64, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'VXJiYW4=', 200000, 0, 15000000, 48, 'TG9hbiBBcHByb3ZlZA=='),
(65, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'VXJiYW4=', 200000, 0, 15000000, 48, 'TG9hbiBBcHByb3ZlZA=='),
(66, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'VXJiYW4=', 200000, 0, 15000000, 48, 'TG9hbiBBcHByb3ZlZA=='),
(67, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'U2VtaXVyYmFu', 200000, 0, 15000000, 48, 'TG9hbiBBcHByb3ZlZA=='),
(68, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'U2VtaXVyYmFu', 200000, 0, 15000000, 48, 'TG9hbiBBcHByb3ZlZA=='),
(69, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'U2VtaXVyYmFu', 200000, 0, 15000000, 48, 'TG9hbiBBcHByb3ZlZA=='),
(70, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'U2VtaXVyYmFu', 200000, 0, 15000, 48, 'TG9hbiBBcHByb3ZlZA=='),
(71, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'U2VtaXVyYmFu', 200000, 0, 15000, 48, 'TG9hbiBBcHByb3ZlZA=='),
(72, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'U2VtaXVyYmFu', 200000, 0, 15000, 48, 'TG9hbiBBcHByb3ZlZA=='),
(73, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'U2VtaXVyYmFu', 200000, 0, 15000, 48, 'TG9hbiBBcHByb3ZlZA=='),
(74, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'U2VtaXVyYmFu', 200000, 0, 15000, 12, 'TG9hbiBBcHByb3ZlZA=='),
(75, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'U2VtaXVyYmFu', 200000, 0, 15000, 12, 'TG9hbiBBcHByb3ZlZA=='),
(76, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'U2VtaXVyYmFu', 200000, 0, 15000, 12, 'TG9hbiBBcHByb3ZlZA=='),
(77, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'U2VtaXVyYmFu', 200000, 0, 15000, 12, 'TG9hbiBBcHByb3ZlZA=='),
(78, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'U2VtaXVyYmFu', 200000, 0, 15000, 12, 'TG9hbiBBcHByb3ZlZA=='),
(79, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'U2VtaXVyYmFu', 200000, 0, 15000, 12, 'TG9hbiBBcHByb3ZlZA=='),
(80, 'TWFsZQ==', 'WWVz', 'MA==', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'U2VtaXVyYmFu', 200000, 0, 15000, 12, 'TG9hbiBSZWplY3RlZA=='),
(81, 'TWFsZQ==', 'WWVz', 'MA==', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'U2VtaXVyYmFu', 200000, 0, 15000, 12, 'TG9hbiBSZWplY3RlZA=='),
(82, 'TWFsZQ==', 'WWVz', 'MA==', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'U2VtaXVyYmFu', 200000, 0, 15000, 12, 'TG9hbiBSZWplY3RlZA=='),
(83, 'TWFsZQ==', 'WWVz', 'MA==', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'U2VtaXVyYmFu', 200000, 0, 15000, 12, 'TG9hbiBSZWplY3RlZA=='),
(84, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'U2VtaXVyYmFu', 200000, 0, 15000, 12, 'TG9hbiBBcHByb3ZlZA=='),
(85, 'TWFsZQ==', 'WWVz', 'Mg==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 0, 200000, 23, 'TG9hbiBBcHByb3ZlZA=='),
(86, 'TWFsZQ==', 'WWVz', 'Mg==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'U2VtaXVyYmFu', 100000, 0, 200000, 23, 'TG9hbiBBcHByb3ZlZA=='),
(87, 'TWFsZQ==', 'WWVz', 'Mg==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'UnVyYWw=', 100000, 0, 200000, 23, 'TG9hbiBBcHByb3ZlZA=='),
(88, 'TWFsZQ==', 'WWVz', 'MA==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'UnVyYWw=', 100000, 0, 200000, 23, 'TG9hbiBBcHByb3ZlZA=='),
(89, 'TWFsZQ==', 'WWVz', 'MA==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'UnVyYWw=', 100000, 0, 200000, 23, 'TG9hbiBBcHByb3ZlZA=='),
(90, 'TWFsZQ==', 'WWVz', 'MA==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 0, 200000, 23, 'TG9hbiBBcHByb3ZlZA=='),
(91, 'TWFsZQ==', 'WWVz', 'MA==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 0, 200000, 23, 'TG9hbiBBcHByb3ZlZA=='),
(92, 'TWFsZQ==', 'WWVz', 'MA==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 0, 200000, 12, 'TG9hbiBBcHByb3ZlZA=='),
(93, 'TWFsZQ==', 'WWVz', 'MA==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'U2VtaXVyYmFu', 100000, 0, 200000, 12, 'TG9hbiBBcHByb3ZlZA=='),
(94, 'TWFsZQ==', 'WWVz', 'MA==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'U2VtaXVyYmFu', 100000, 0, 200000, 12, 'TG9hbiBBcHByb3ZlZA=='),
(95, 'TWFsZQ==', 'WWVz', 'MA==', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'U2VtaXVyYmFu', 100000, 0, 200000, 12, 'TG9hbiBSZWplY3RlZA=='),
(96, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'U2VtaXVyYmFu', 100000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(97, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(98, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'VXJiYW4=', 100000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(99, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'VXJiYW4=', 100000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(100, 'TWFsZQ==', 'WWVz', 'MQ==', 'Tm90IEdyYWR1YXRl', 'WWVz', 'Tm8=', 'VXJiYW4=', 100000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(101, 'TWFsZQ==', 'WWVz', 'MQ==', 'Tm90IEdyYWR1YXRl', 'WWVz', 'Tm8=', 'VXJiYW4=', 100000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(102, 'TWFsZQ==', 'WWVz', 'MQ==', 'Tm90IEdyYWR1YXRl', 'WWVz', 'Tm8=', 'VXJiYW4=', 100000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(103, 'TWFsZQ==', 'WWVz', 'MQ==', 'Tm90IEdyYWR1YXRl', 'WWVz', 'Tm8=', 'UnVyYWw=', 100000, 0, 200000, 24, 'TG9hbiBSZWplY3RlZA=='),
(104, 'TWFsZQ==', 'WWVz', 'MQ==', 'Tm90IEdyYWR1YXRl', 'WWVz', 'WWVz', 'UnVyYWw=', 100000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(105, 'TWFsZQ==', 'WWVz', 'MQ==', 'Tm90IEdyYWR1YXRl', 'WWVz', 'Tm8=', 'UnVyYWw=', 100000, 0, 200000, 24, 'TG9hbiBSZWplY3RlZA=='),
(106, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'UnVyYWw=', 100000, 0, 200000, 24, 'TG9hbiBSZWplY3RlZA=='),
(107, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'U2VtaXVyYmFu', 100000, 0, 200000, 24, 'TG9hbiBSZWplY3RlZA=='),
(108, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'VXJiYW4=', 100000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(109, 'TWFsZQ==', 'WWVz', 'MQ==', 'Tm90IEdyYWR1YXRl', 'WWVz', 'WWVz', 'U2VtaXVyYmFu', 123000, 2999, 200000, 32, 'TG9hbiBSZWplY3RlZA=='),
(110, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 5000, 2000, 3000, 12, 'TG9hbiBSZWplY3RlZA=='),
(111, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 5000, 2000, 3000, 12, 'TG9hbiBSZWplY3RlZA=='),
(112, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 100000, 20000, 300000, 12, 'TG9hbiBSZWplY3RlZA=='),
(113, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 100000, 20000, 300000, 12, 'TG9hbiBSZWplY3RlZA=='),
(114, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 20000, 300000, 24, 'TG9hbiBSZWplY3RlZA=='),
(115, 'TWFsZQ==', 'WWVz', 'Mg==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 20000, 300000, 24, 'TG9hbiBSZWplY3RlZA=='),
(116, 'TWFsZQ==', 'WWVz', 'Mg==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'U2VtaXVyYmFu', 100000, 20000, 300000, 24, 'TG9hbiBSZWplY3RlZA=='),
(117, 'TWFsZQ==', 'WWVz', 'Mg==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'U2VtaXVyYmFu', 200000, 20000, 300000, 24, 'TG9hbiBSZWplY3RlZA=='),
(118, 'TWFsZQ==', 'WWVz', 'Mg==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'U2VtaXVyYmFu', 200000, 20000, 300000, 36, 'TG9hbiBSZWplY3RlZA=='),
(119, 'TWFsZQ==', 'WWVz', 'Mg==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'U2VtaXVyYmFu', 200000, 0, 300000, 36, 'TG9hbiBSZWplY3RlZA=='),
(120, 'TWFsZQ==', 'WWVz', 'MA==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'U2VtaXVyYmFu', 200000, 0, 300000, 36, 'TG9hbiBSZWplY3RlZA=='),
(121, 'TWFsZQ==', 'WWVz', 'MA==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'U2VtaXVyYmFu', 200000, 0, 30000, 36, 'TG9hbiBSZWplY3RlZA=='),
(122, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 50000, 200000, 36, 'TG9hbiBSZWplY3RlZA=='),
(123, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'U2VtaXVyYmFu', 100000, 50000, 200000, 36, 'TG9hbiBSZWplY3RlZA=='),
(124, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'U2VtaXVyYmFu', 100000, 50000, 200000, 36, 'TG9hbiBSZWplY3RlZA=='),
(125, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'U2VtaXVyYmFu', 100000, 50000, 200000, 36, 'TG9hbiBSZWplY3RlZA=='),
(126, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'U2VtaXVyYmFu', 100000, 50000, 200000, 36, 'TG9hbiBSZWplY3RlZA=='),
(127, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'UnVyYWw=', 100000, 50000, 200000, 36, 'TG9hbiBSZWplY3RlZA=='),
(128, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'UnVyYWw=', 100000, 50000, 200000, 36, 'TG9hbiBSZWplY3RlZA=='),
(129, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'UnVyYWw=', 100000, 50000, 200000, 36, 'TG9hbiBSZWplY3RlZA=='),
(130, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'UnVyYWw=', 100000, 50000, 20000, 36, 'TG9hbiBSZWplY3RlZA=='),
(131, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'UnVyYWw=', 100000, 50000, 20000, 36, 'TG9hbiBSZWplY3RlZA=='),
(132, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'UnVyYWw=', 100000, 50000, 20000, 36, 'TG9hbiBSZWplY3RlZA=='),
(133, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 50000, 20000, 24, 'TG9hbiBSZWplY3RlZA=='),
(134, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 50000, 20000, 24, 'TG9hbiBSZWplY3RlZA=='),
(135, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 50000, 20000, 24, 'TG9hbiBSZWplY3RlZA=='),
(136, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 0, 20000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(137, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 0, 20000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(138, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 10000, 20000, 24, 'TG9hbiBSZWplY3RlZA=='),
(139, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 0, 20000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(140, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 0, 199999, 24, 'TG9hbiBBcHByb3ZlZA=='),
(141, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(142, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'U2VtaXVyYmFu', 100000, 0, 300000, 36, 'TG9hbiBSZWplY3RlZA=='),
(143, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 0, 300000, 24, 'TG9hbiBSZWplY3RlZA=='),
(144, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 0, 200000, 24, 'TG9hbiBSZWplY3RlZA=='),
(145, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(146, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(147, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(148, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 0, 200000, 24, 'TG9hbiBSZWplY3RlZA=='),
(149, 'TWFsZQ==', 'Tm8=', 'MA==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 0, 200000, 24, 'TG9hbiBSZWplY3RlZA=='),
(150, 'TWFsZQ==', 'Tm8=', 'MA==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 0, 150000, 24, 'TG9hbiBSZWplY3RlZA=='),
(151, 'TWFsZQ==', 'Tm8=', 'MA==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 0, 150000, 36, 'TG9hbiBSZWplY3RlZA=='),
(152, 'TWFsZQ==', 'Tm8=', 'MA==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 0, 150000, 36, 'TG9hbiBSZWplY3RlZA=='),
(153, 'TWFsZQ==', 'Tm8=', 'MA==', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'VXJiYW4=', 100000, 0, 150000, 36, 'TG9hbiBSZWplY3RlZA=='),
(154, 'TWFsZQ==', 'Tm8=', 'MA==', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'VXJiYW4=', 100000, 20000, 150000, 36, 'TG9hbiBSZWplY3RlZA=='),
(155, 'TWFsZQ==', 'Tm8=', 'MA==', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'VXJiYW4=', 100000, 20000, 50000, 36, 'TG9hbiBSZWplY3RlZA=='),
(156, 'TWFsZQ==', 'Tm8=', 'MA==', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'VXJiYW4=', 100000, 20000, 50000, 36, 'TG9hbiBSZWplY3RlZA=='),
(157, 'TWFsZQ==', 'Tm8=', 'MA==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 20000, 50000, 36, 'TG9hbiBSZWplY3RlZA=='),
(158, 'TWFsZQ==', 'Tm8=', 'MA==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 0, 50000, 36, 'TG9hbiBSZWplY3RlZA=='),
(159, 'TWFsZQ==', 'Tm8=', 'MA==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 0, 150000, 36, 'TG9hbiBSZWplY3RlZA=='),
(160, 'TWFsZQ==', 'Tm8=', 'MA==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 500000, 0, 150000, 36, 'TG9hbiBSZWplY3RlZA=='),
(161, 'TWFsZQ==', 'Tm8=', 'MA==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 500000, 0, 150000, 36, 'TG9hbiBSZWplY3RlZA=='),
(162, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(163, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(164, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(165, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(166, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(167, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 39, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(168, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 39, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(169, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 39, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(170, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'U2VtaXVyYmFu', 100000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(171, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'UnVyYWw=', 100000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(172, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'UnVyYWw=', 100000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(173, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'UnVyYWw=', 100000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(174, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'UnVyYWw=', 100000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(175, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'UnVyYWw=', 100000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(176, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'UnVyYWw=', 100000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(177, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'UnVyYWw=', 1000000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(178, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'UnVyYWw=', 1000000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(179, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'UnVyYWw=', 1000000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(180, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'UnVyYWw=', 1000000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(181, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'UnVyYWw=', 1000000, 0, 200000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(182, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'UnVyYWw=', 1000000, 0, 2000000000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(183, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'UnVyYWw=', 1000000, 0, 2000000000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(184, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'UnVyYWw=', 1000000, 0, 2000000000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(185, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'UnVyYWw=', 1000000, 0, 2000000000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(186, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'UnVyYWw=', 1000000, 0, 2000000000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(187, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'UnVyYWw=', 1000000, 0, 2000000000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(188, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'UnVyYWw=', 1000000, 0, 2000000000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(189, 'TWFsZQ==', 'WWVz', 'Mys=', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'UnVyYWw=', 1000000, 0, 2000000000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(190, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'UnVyYWw=', 1000000, 0, 2000000000, 24, 'TG9hbiBSZWplY3RlZA=='),
(191, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'UnVyYWw=', 1000000, 0, 2000000000, 24, 'TG9hbiBSZWplY3RlZA=='),
(192, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'UnVyYWw=', 1000000, 0, 2000000000, 24, 'TG9hbiBSZWplY3RlZA=='),
(193, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'Tm8=', 'UnVyYWw=', 1000000, 0, 2000000000, 24, 'TG9hbiBSZWplY3RlZA=='),
(194, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'UnVyYWw=', 1000000, 0, 2000000000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(195, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'UnVyYWw=', 1000000, 0, 2000000000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(196, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'UnVyYWw=', 1000000, 0, 20000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(197, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'UnVyYWw=', 1000000, 0, 20000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(198, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'UnVyYWw=', 1000000, 0, 20000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(199, 'TWFsZQ==', 'Tm8=', 'MA==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 1000000, 0, 150000, 36, 'TG9hbiBSZWplY3RlZA=='),
(200, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 200000, 0, 100000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(201, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 200000, 0, 100000, 24, 'TG9hbiBSZWplY3RlZA=='),
(202, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 200000, 0, 100000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(203, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 200000, 0, 100000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(204, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 200000, 0, 100000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(205, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 200000, 0, 100000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(206, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 200000, 0, 100000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(207, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 200000, 0, 100000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(208, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 200000, 0, 100000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(209, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 200000, 0, 100000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(210, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 200000, 0, 100000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(211, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 200000, 0, 100000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(212, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 200000, 0, 100000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(213, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 200000, 0, 100000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(214, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 200000, 0, 100000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(215, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 100000, 0, 200000, 35, 'TG9hbiBBcHByb3ZlZA=='),
(216, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'UnVyYWw=', 100000, 0, 200000, 35, 'TG9hbiBSZWplY3RlZA=='),
(217, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 200000, 0, 100000, 24, 'TG9hbiBSZWplY3RlZA=='),
(218, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 200000, 0, 100000, 24, 'TG9hbiBSZWplY3RlZA=='),
(219, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 200000, 0, 100000, 24, 'TG9hbiBSZWplY3RlZA=='),
(220, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 200000, 0, 100000, 24, 'TG9hbiBSZWplY3RlZA=='),
(221, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 200000, 0, 100000, 24, 'TG9hbiBSZWplY3RlZA=='),
(222, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 200000, 0, 100000, 36, 'TG9hbiBSZWplY3RlZA=='),
(223, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 200000, 0, 100000, 36, 'TG9hbiBSZWplY3RlZA=='),
(224, 'TWFsZQ==', 'WWVz', 'MA==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 200000, 0, 100000, 36, 'TG9hbiBSZWplY3RlZA=='),
(225, 'TWFsZQ==', 'WWVz', 'MA==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 200000, 0, 10000, 36, 'TG9hbiBSZWplY3RlZA=='),
(226, 'TWFsZQ==', 'WWVz', 'MA==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 100000, 0, 100000, 36, 'TG9hbiBSZWplY3RlZA=='),
(227, 'TWFsZQ==', 'WWVz', 'MA==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 100000, 0, 100000, 36, 'TG9hbiBSZWplY3RlZA=='),
(228, 'TWFsZQ==', 'WWVz', 'MA==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 1000000, 0, 100000, 36, 'TG9hbiBSZWplY3RlZA=='),
(229, 'TWFsZQ==', 'WWVz', 'MA==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 1000000, 0, 100000, 24, 'TG9hbiBSZWplY3RlZA=='),
(230, 'TWFsZQ==', 'Tm8=', 'MA==', 'R3JhZHVhdGU=', 'WWVz', 'WWVz', 'VXJiYW4=', 1000000, 0, 100000, 24, 'TG9hbiBSZWplY3RlZA=='),
(231, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'U2VtaXVyYmFu', 100000, 0, 200000, 35, 'TG9hbiBBcHByb3ZlZA=='),
(232, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 100000, 0, 200000, 35, 'TG9hbiBBcHByb3ZlZA=='),
(233, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 100000, 20000, 300000, 12, 'TG9hbiBSZWplY3RlZA=='),
(234, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 100000, 20000, 300000, 12, 'TG9hbiBSZWplY3RlZA=='),
(235, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 100000, 20000, 300000, 12, 'TG9hbiBSZWplY3RlZA=='),
(236, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 100000, 0, 150000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(237, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 100000, 0, 150000, 24, 'TG9hbiBSZWplY3RlZA=='),
(238, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 100000, 0, 150000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(239, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 100000, 0, 150000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(240, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'UnVyYWw=', 100000, 0, 150000, 24, 'TG9hbiBSZWplY3RlZA=='),
(241, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 100000, 0, 150000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(242, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'VXJiYW4=', 100000, 0, 150000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(243, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'UnVyYWw=', 100000, 0, 150000, 24, 'TG9hbiBSZWplY3RlZA=='),
(244, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'Tm8=', 'VXJiYW4=', 100000, 0, 150000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(245, 'TWFsZQ==', 'Tm8=', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 120000, 200, 200000, 24, 'TG9hbiBSZWplY3RlZA=='),
(246, 'TWFsZQ==', 'Tm8=', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'UnVyYWw=', 120000, 200, 200000, 24, 'TG9hbiBSZWplY3RlZA=='),
(247, 'TWFsZQ==', 'Tm8=', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'UnVyYWw=', 120000, 200, 20000, 24, 'TG9hbiBSZWplY3RlZA=='),
(248, 'TWFsZQ==', 'Tm8=', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 120000, 200, 20000, 24, 'TG9hbiBSZWplY3RlZA=='),
(249, 'TWFsZQ==', 'Tm8=', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 120000, 200, 20000, 24, 'TG9hbiBSZWplY3RlZA=='),
(250, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 120000, 200, 20000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(251, 'TWFsZQ==', 'WWVz', 'Mg==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 200000, 4000, 190000, 23, 'TG9hbiBBcHByb3ZlZA=='),
(252, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 100000, 0, 150000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(253, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 100000, 20000, 300000, 12, 'TG9hbiBSZWplY3RlZA=='),
(254, 'TWFsZQ==', 'WWVz', 'MQ==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 100000, 0, 150000, 24, 'TG9hbiBBcHByb3ZlZA=='),
(255, 'TWFsZQ==', 'Tm8=', 'MA==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 5000, 0, 300000, 360, 'TG9hbiBBcHByb3ZlZA=='),
(256, 'TWFsZQ==', 'Tm8=', 'MA==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 5000, 0, 300000, 360, 'TG9hbiBBcHByb3ZlZA=='),
(257, 'TWFsZQ==', 'Tm8=', 'MA==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 5000, 0, 300000, 360, 'TG9hbiBBcHByb3ZlZA=='),
(258, 'TWFsZQ==', 'Tm8=', 'MA==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 5000, 0, 300000, 360, 'TG9hbiBBcHByb3ZlZA=='),
(259, 'TWFsZQ==', 'Tm8=', 'MA==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 5000, 0, 300000, 360, 'TG9hbiBBcHByb3ZlZA=='),
(260, 'TWFsZQ==', 'Tm8=', 'MA==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 5000, 0, 300000, 360, 'TG9hbiBBcHByb3ZlZA=='),
(284, 'TWFsZQ==', 'WWVz', 'MA==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 50000, 2000, 300000, 36, 'TG9hbiBBcHByb3ZlZA=='),
(283, 'TWFsZQ==', 'Tm8=', 'MA==', 'R3JhZHVhdGU=', 'Tm8=', 'WWVz', 'VXJiYW4=', 100000, 0, 200000, 36, 'TG9hbiBBcHByb3ZlZA==');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
