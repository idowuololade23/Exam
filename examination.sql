-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2019 at 09:16 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `examination`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminUser` varchar(50) NOT NULL,
  `adminPass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminUser`, `adminPass`) VALUES
(3, 'Admin', '6f8f57715090da2632453988d9a1501b');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ans`
--

CREATE TABLE `tbl_ans` (
  `id` int(11) NOT NULL,
  `quesNo` int(11) NOT NULL,
  `rightAns` int(11) NOT NULL DEFAULT '0',
  `ans` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ans`
--

INSERT INTO `tbl_ans` (`id`, `quesNo`, `rightAns`, `ans`) VALUES
(132, 2, 1, 'Waterfall Model '),
(133, 2, 0, 'Spiral Model'),
(134, 2, 0, ' Quick and Fix model'),
(135, 2, 0, ' Prototyping Model'),
(136, 3, 0, ' 3 Phases '),
(137, 3, 0, '1 Phases'),
(138, 3, 1, '2 Phases'),
(139, 3, 0, '4 Phases'),
(140, 4, 1, ' Software requirement specification '),
(141, 4, 0, 'Software requirement solution '),
(142, 4, 0, 'System requirement specification'),
(143, 4, 0, ' None of Above'),
(144, 5, 0, ' Small Projects'),
(145, 5, 0, ' Complex Projects '),
(146, 5, 1, 'Accommodating change '),
(147, 5, 0, 'None of Above'),
(148, 6, 1, ' Rapid Application Development '),
(149, 6, 0, 'Relative Application Development'),
(150, 6, 0, ' Ready Application Development'),
(151, 6, 0, ' Repeated Application Development'),
(152, 7, 1, 'IBM '),
(153, 7, 0, 'Motorola '),
(154, 7, 0, 'Microsoft '),
(155, 7, 0, 'Lucent Technologies'),
(156, 8, 0, 'Reliable Software'),
(157, 8, 0, ' Cost Effective Software '),
(158, 8, 1, 'Reliable and cost effective Software '),
(159, 8, 0, 'None Of Above'),
(160, 9, 0, '13 programmers '),
(161, 9, 0, '10 programmers '),
(162, 9, 1, '8 programmers '),
(163, 9, 0, '100/13 programmers'),
(164, 10, 0, 'Basic path '),
(165, 10, 0, 'Graph Testing '),
(166, 10, 0, 'Dataflow'),
(167, 10, 1, ' Glass box testing');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ques`
--

CREATE TABLE `tbl_ques` (
  `id` int(11) NOT NULL,
  `quesNo` int(11) NOT NULL,
  `ques` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ques`
--

INSERT INTO `tbl_ques` (`id`, `quesNo`, `ques`) VALUES
(41, 2, 'Which model is popular for students small projects ? '),
(42, 3, ' Build and Fix model has?  '),
(43, 4, 'SRS stands for ?'),
(44, 5, 'Waterfall model is not suitable for ?'),
(45, 6, 'RAD stands for ?'),
(46, 7, 'RAD Model was purposed by ? '),
(47, 8, 'Software engineering aims at developing ? '),
(48, 9, 'To completely write the program in FORTRAN and rewrite the 1% code in assembly language, if the project needs 13 days, the team consists of ? '),
(49, 10, 'White box testing, a software testing  technique is sometimes called ? ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result`
--

CREATE TABLE `tbl_result` (
  `id` int(11) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `score` varchar(10) NOT NULL,
  `written_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_result`
--

INSERT INTO `tbl_result` (`id`, `user_id`, `score`, `written_on`) VALUES
(9, '12', '6', '2019-11-24 20:28:30'),
(10, '12', '4', '2019-11-25 10:43:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_ans`
--
ALTER TABLE `tbl_ans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ques`
--
ALTER TABLE `tbl_ques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_result`
--
ALTER TABLE `tbl_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_ans`
--
ALTER TABLE `tbl_ans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `tbl_ques`
--
ALTER TABLE `tbl_ques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tbl_result`
--
ALTER TABLE `tbl_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
