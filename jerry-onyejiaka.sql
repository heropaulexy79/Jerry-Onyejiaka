-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2020 at 01:18 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jerry-onyejiaka`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_appointment`
--

CREATE TABLE `book_appointment` (
  `S/N` int(11) NOT NULL,
  `Names` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `The_Subject` varchar(50) NOT NULL,
  `The_Message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_appointment`
--

INSERT INTO `book_appointment` (`S/N`, `Names`, `Email`, `The_Subject`, `The_Message`) VALUES
(1, 'Oke Tizrah', 'okeoluwaseun79@gmail.com', 'fgfrgrgtr', 'a677c8bdfd38aa8eacace1f1eb090cba'),
(2, 'Bamidele Margaret', 'okeoluwaseun79@gmail.com', 'Birthday Message', 'Hi Cham! Happy Birthday to yo my love'),
(3, 'PAUL', 'okeoluwaseun79@gmail.com', 'fgtgdtgdged', 'grgrr'),
(4, 'PAUL', 'olabodetaiwo222@gmail.com', 'fdfsfsfsf', 'fsfr'),
(5, 'OKe Oluwaseun', 'okeoluwaseun79@gmail.com', 'Hosting', 'I want to host you at Victoria Island tomorrow'),
(6, 'Oke Oluwaseun Paul', 'okeoluwaseun79@gmail.com', 'Consultation', 'We will kindly need your presence jere'),
(7, 'Oke Oluwaseun Paul', 'okeoluwaseun79@gmail.com', 'Hosting', 'I need money for data subscriptipn'),
(8, 'PAUL', 'okeoluwaseun79@gmail.com', 'Hosting', 'dfdfdsfsdf'),
(9, 'PAUL', 'okeoluwaseun79@gmail.com', 'Hosting', 'grdgdrgdrgtgt'),
(10, 'cdfef', 'okeoluwaseun79@yahoo.com', 'dfdf', 'fgfrgfgfgf'),
(11, 'cdfef', 'okeoluwaseun79@yahoo.com', 'dfdf', 'fgfrgfgfgf'),
(12, 'dhjfkfsf', 'dcdd@gmail.com', 'Hosting', 'gdgdrthhrthrhyrt');

-- --------------------------------------------------------

--
-- Table structure for table `book_store`
--

CREATE TABLE `book_store` (
  `S/N` int(11) NOT NULL,
  `book_title` varchar(100) NOT NULL,
  `book_desc` varchar(300) NOT NULL,
  `book_price` int(20) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_list`
--

CREATE TABLE `email_list` (
  `S/N` int(11) NOT NULL,
  `Names` varchar(30) NOT NULL,
  `Email_Address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_list`
--

INSERT INTO `email_list` (`S/N`, `Names`, `Email_Address`) VALUES
(13, 'Oke Oluwaseun Paul', 'okeoluwaseun79@gmail.com'),
(17, 'Oke Tizrah', 'rajiibrahimolawaleabiodun@gmail.com'),
(19, 'Philip', 'isaiahphilip@gmail.com'),
(23, 'Oke Oluwaseun Paul', 'olabodetaiwo222@gmail.com'),
(24, 'Oke Oluwaseun Paul', 'dcdd@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `S/N` int(150) NOT NULL,
  `Names` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`S/N`, `Names`, `Email`) VALUES
(1, 'Oke Tizrah', 'okeoluwaseun79@gmail.com'),
(2, 'PAUL', 'rajiibrahimolawaleabiodun@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_appointment`
--
ALTER TABLE `book_appointment`
  ADD PRIMARY KEY (`S/N`);

--
-- Indexes for table `book_store`
--
ALTER TABLE `book_store`
  ADD PRIMARY KEY (`S/N`);

--
-- Indexes for table `email_list`
--
ALTER TABLE `email_list`
  ADD PRIMARY KEY (`S/N`),
  ADD UNIQUE KEY `Email_Address` (`Email_Address`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`S/N`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_appointment`
--
ALTER TABLE `book_appointment`
  MODIFY `S/N` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `book_store`
--
ALTER TABLE `book_store`
  MODIFY `S/N` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_list`
--
ALTER TABLE `email_list`
  MODIFY `S/N` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `S/N` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
