-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2024 at 06:40 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nashiktourism`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `userid`, `name`, `email`, `message`, `description`) VALUES
(2, NULL, 'SHIVANI SHARAD MAHALLE', 'ketanamahalle777@gmail.com', 'sdfghjk', 'kjtre'),
(3, NULL, 'SHIVANI SHARAD MAHALLE', 'ketanamahalle777@gmail.com', 'sdfghjk', 'kjtre'),
(4, NULL, 'SHIVANI SHARAD MAHALLE', 'ketanamahalle777@gmail.com', 'sdfghjk', 'kjtre'),
(5, NULL, 'SHIVANI SHARAD MAHALLE', 'ketanamahalle777@gmail.com', 'sdfghjk', 'kjtre');

-- --------------------------------------------------------

--
-- Table structure for table `userrequests`
--

CREATE TABLE `userrequests` (
  `userid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `personcount` int(11) DEFAULT NULL,
  `childcount` int(11) DEFAULT NULL,
  `request` text DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userrequests`
--

INSERT INTO `userrequests` (`userid`, `name`, `email`, `date`, `personcount`, `childcount`, `request`, `destination`) VALUES
(1, 'SHIVANI SHARAD MAHALLE', 'shivanimahalle7@gmail.com', '1970-01-01 00:00:00', 2, 1, 'asdhjja', 'HOTEL COURTYARD'),
(2, 'SHIVANI SHARAD MAHALLE', 'ketanamahalle777@gmail.com', '1970-01-01 00:00:00', 2, 1, 'sdffxb', 'HOTEL RADISON BLUE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userrequests`
--
ALTER TABLE `userrequests`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userrequests`
--
ALTER TABLE `userrequests`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
