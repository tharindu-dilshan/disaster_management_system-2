-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2018 at 07:19 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dms`
--

-- --------------------------------------------------------

CREATE DATABASE IF NOT EXISTS dms;
USE dms;

--
-- Table structure for table `disaster_info`
--

CREATE TABLE `disaster_info` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `user` int(11) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disaster_info`
--

INSERT INTO `disaster_info` (`id`, `title`, `longitude`, `latitude`, `description`, `user`, `status`) VALUES
(2, 'car accident ', '80.78321229687504', '6.865091619542927', 'car was hit at a motor bike.\r\n2 people injured.', 4, 1),
(3, 'fire', '80.93702089062504', '6.46134406518192', 'fire', 4, 1),
(4, 'flood', '80.57447206250004', '5.942549531544631', 'flood', 4, 2),
(5, 'earthquake', '80.75574647656254', '7.039580314081251', 'earthquake', 4, 2),
(6, 'Tornado', '80.38770448437504', '6.035423618647668', 'Tornado', 4, 2),
(7, 'rail accidents', '80.38770448437504', '9.214642580443337', 'rail accidents', 4, 2),
(8, 'Bomb Blast', '81.71705018750004', '7.366568568489066', 'Bomb Blast', 4, 2),
(9, 'fire', '81.67859803906254', '7.725976796121138', 'fire in house', 1, 3),
(10, 'bomb Blast', '81.31604921093754', '6.232045325789828', '10 people was injured..', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'RESOLVED'),
(2, 'OPENED'),
(3, 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `role` varchar(10) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `user_name`, `role`, `email`, `password`) VALUES
(1, 'Admin', 'admin', 'admin', 'admin@dms.lk', 'admin'),
(7, 'user', 'user', 'user', 'user@gmail.com', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disaster_info`
--
ALTER TABLE `disaster_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Status` (`status`),
  ADD KEY `FK_User` (`user`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `disaster_info`
--
ALTER TABLE `disaster_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `disaster_info`
--
ALTER TABLE `disaster_info`
  ADD CONSTRAINT `FK_Status` FOREIGN KEY (`status`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `FK_User` FOREIGN KEY (`user`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
