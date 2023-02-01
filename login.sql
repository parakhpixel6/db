-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 01, 2023 at 07:08 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_Data`
--

CREATE TABLE `user_Data` (
  `id` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `name` char(25) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_Data`
--

INSERT INTO `user_Data` (`id`, `username`, `name`, `email`, `password`) VALUES
(1, 'parakh1408', 'Parakh Choudhary', 'parakh@pixel6.co', 'Qwerty@54321'),
(2, 'parakh1409', 'parakh', 'parakh@thinkoverit.co', 'Qwert'),
(6, 'Jane2511', 'Jane Hopper', 'jane@netflix.com', 'Iluvmikewheeler'),
(7, 'Mike123', 'mike wheeler', 'mike@sttv.com', 'Iluvjanehopper'),
(8, 'vecna@69', 'Henry Creel', 'henry@sttv.com', 'ultiduniya'),
(10, 'dustin123', 'Dustin', 'dustin@sttv.com', 'fafsdfsd'),
(11, 'willbuyer', 'Will Buyer', 'will@sttv.com', 'acbd9ab2f68bea3f5291f825416546a1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_Data`
--
ALTER TABLE `user_Data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_Data`
--
ALTER TABLE `user_Data`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
