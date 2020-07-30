-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2020 at 11:08 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `giveandtake`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `pass` text NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `pass`, `type`) VALUES
(1, '1111', 2);

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `colleges` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`colleges`, `id`) VALUES
('Agriculture', 1),
('Art', 2),
('medicine', 3),
('pharmacy', 4),
('nursing', 5),
('engineering', 6),
('law', 7),
('sport', 8);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` text NOT NULL,
  `email` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `time` text NOT NULL DEFAULT current_timestamp(),
  `phone` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `subject`, `message`, `time`, `phone`) VALUES
('Saja', 'saja@s.com', 'استفسار', ' how can i add any thing ', '2020-05-19 18:01:44', '2345598'),
('Saja', 'saja@s.com', 'استفسار', ' how can i add any thing how can i add any thing how can i add any thing how can i add any thing how can i add any thing ', '2020-05-19 18:02:11', '2345598'),
('Saja', 'saja@s.com', 'استفسار', ' how can i add any thing how can i add any thing how can i add any thing how can i add any thing how can i add any thing ', '2020-05-19 18:02:16', '2345598'),
('Saja', 'saja@s.com', 'استفسار', ' how can i add any thing how can i add any thing how can i add any thing how can i add any thing how can i add any thing ', '2020-05-19 18:02:22', '2345598');

-- --------------------------------------------------------

--
-- Table structure for table `things`
--

CREATE TABLE `things` (
  `Thing_id` int(11) NOT NULL,
  `Thing_Type` text NOT NULL,
  `Quantity` int(11) NOT NULL,
  `collage` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `things`
--

INSERT INTO `things` (`Thing_id`, `Thing_Type`, `Quantity`, `collage`) VALUES
(1, 'book', 0, 1),
(2, 'book', 0, 2),
(3, 'book', 0, 3),
(4, 'book', 5, 4),
(5, 'book', 3, 5),
(6, 'book', 4, 6),
(7, 'book', 9, 7),
(8, 'book', 0, 8),
(9, 'pens', 10, 1),
(10, 'pens', 10, 2),
(11, 'pens', 12, 3),
(12, 'pens', 10, 4),
(13, 'pens', 10, 5),
(14, 'pens', 8, 6),
(15, 'pens', 15, 7),
(16, 'pens', 10, 8),
(18, 'lap-cot', 5, 3),
(19, 'lap-cot', 5, 4),
(20, 'lap-cot', 14, 5),
(21, 'sport tools', 4, 8),
(22, 'swimming clothes', 5, 8),
(23, 'Engineering tools', 5, 6),
(24, 'training clothes', 5, 8),
(25, 'Graduation suites', 5, 1),
(26, 'Graduation suites', 3, 2),
(27, 'Graduation suites', 5, 3),
(28, 'Graduation suites', 5, 4),
(29, 'Graduation suites', 5, 5),
(30, 'Graduation suites', 5, 6),
(31, 'Graduation suites', 5, 7),
(32, 'Graduation suites', 5, 8),
(33, 'Theatrical tools', 5, 2),
(34, 'Theatrical clothes', 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `thing_to_give`
--

CREATE TABLE `thing_to_give` (
  `User_id` int(11) NOT NULL,
  `Thing_id` int(11) NOT NULL,
  `Counter` int(11) NOT NULL,
  `Time` text NOT NULL DEFAULT current_timestamp(),
  `college` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thing_to_give`
--

INSERT INTO `thing_to_give` (`User_id`, `Thing_id`, `Counter`, `Time`, `college`) VALUES
(1, 20, 9, '2020-05-19 23:25:25', 5),
(1, 11, 2, '2020-05-19 23:25:31', 3),
(1, 15, 5, '2020-05-19 23:25:49', 7);

-- --------------------------------------------------------

--
-- Table structure for table `thing_to_take`
--

CREATE TABLE `thing_to_take` (
  `User_id` int(11) NOT NULL,
  `Thing_id` int(11) NOT NULL,
  `counter` int(11) NOT NULL,
  `Time` text NOT NULL,
  `college` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thing_to_take`
--

INSERT INTO `thing_to_take` (`User_id`, `Thing_id`, `counter`, `Time`, `college`) VALUES
(1, 26, 2, '2020-05-19 23:26:40', 2),
(1, 21, 1, '2020-05-19 23:26:55', 8),
(1, 14, 2, '2020-05-19 23:27:05', 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_id` int(30) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `TingsToGive` int(11) DEFAULT NULL,
  `TingsToTake` int(11) DEFAULT NULL,
  `collage` varchar(255) NOT NULL,
  `User_email` varchar(30) DEFAULT NULL,
  `phone` int(10) NOT NULL,
  `Type` int(1) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_id`, `Name`, `TingsToGive`, `TingsToTake`, `collage`, `User_email`, `phone`, `Type`, `Password`) VALUES
(1, 'Saja', NULL, NULL, '5', 'dd@dd.dd', 33333, 0, '111'),
(10, 'hgfd', NULL, NULL, '2', 'jjj', 33333, 1, 'aaa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `things`
--
ALTER TABLE `things`
  ADD PRIMARY KEY (`Thing_id`),
  ADD KEY `collage` (`collage`);

--
-- Indexes for table `thing_to_give`
--
ALTER TABLE `thing_to_give`
  ADD KEY `User_id` (`User_id`),
  ADD KEY `Thing_id` (`Thing_id`),
  ADD KEY `college` (`college`);

--
-- Indexes for table `thing_to_take`
--
ALTER TABLE `thing_to_take`
  ADD KEY `User_id` (`User_id`),
  ADD KEY `Thing_id` (`Thing_id`),
  ADD KEY `college` (`college`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `things`
--
ALTER TABLE `things`
  MODIFY `Thing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `things`
--
ALTER TABLE `things`
  ADD CONSTRAINT `things_ibfk_1` FOREIGN KEY (`collage`) REFERENCES `colleges` (`id`);

--
-- Constraints for table `thing_to_give`
--
ALTER TABLE `thing_to_give`
  ADD CONSTRAINT `thing_to_give_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `users` (`User_id`),
  ADD CONSTRAINT `thing_to_give_ibfk_2` FOREIGN KEY (`Thing_id`) REFERENCES `things` (`Thing_id`),
  ADD CONSTRAINT `thing_to_give_ibfk_3` FOREIGN KEY (`college`) REFERENCES `colleges` (`id`);

--
-- Constraints for table `thing_to_take`
--
ALTER TABLE `thing_to_take`
  ADD CONSTRAINT `thing_to_take_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `users` (`User_id`),
  ADD CONSTRAINT `thing_to_take_ibfk_2` FOREIGN KEY (`Thing_id`) REFERENCES `things` (`Thing_id`),
  ADD CONSTRAINT `thing_to_take_ibfk_3` FOREIGN KEY (`college`) REFERENCES `colleges` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
