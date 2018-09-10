-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2018 at 01:25 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `relm`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_admin`
--

CREATE TABLE `table_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_admin`
--

INSERT INTO `table_admin` (`admin_id`, `admin_name`, `email`, `password`) VALUES
(1, 'admin', 'shomnathcse22@gmail.com', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `table_category`
--

CREATE TABLE `table_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `category_image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `category_order` int(11) NOT NULL,
  `top_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_category`
--

INSERT INTO `table_category` (`category_id`, `category_name`, `category_image`, `category_order`, `top_category_id`) VALUES
(34, 'Bangla-7', 'Class-7-Bangla.jpg', 1, 24),
(35, 'English-7', 'Class-7-English.jpg', 2, 24),
(36, 'Mathematics-7', 'Class-7-math.jpg', 3, 24),
(37, 'ICT-7', 'Class-7-ICT.jpg', 4, 24),
(38, 'Science-7', 'Class-7-Science.jpg', 5, 24),
(39, 'Bangla-8', 'Class-8-Bangla.jpg', 1, 25),
(40, 'English-8', 'Class-8-English.jpg', 2, 25),
(41, 'Mathematics-8', 'Class-8-math.jpg', 3, 25),
(42, 'ICT-8', 'Class-8-ICT.png', 4, 25),
(45, 'Science-8', 'Class-8-science.JPG', 5, 25),
(46, 'Bangla-6', 'Class-6-bangla.jpg', 1, 23),
(47, 'English-6', 'Class-6-english.jpg', 2, 23),
(48, 'Mathematics-6', 'Class-6-mathematics.jpg', 3, 23),
(49, 'Science-6', 'Class-6-science.jpg', 4, 23),
(50, 'Agriculture-6', 'Class-6-agriculture.jpg', 5, 23),
(51, 'Bangla-9-10', 'Class-9-bangla.jpg', 1, 26),
(52, 'English-9-10', 'Class-9-english.jpg', 2, 26),
(53, 'Mathematics-9-10', 'Class-9-mathematics.jpg', 3, 26),
(54, 'Physics-9-10', 'Class-9-physics.JPG', 4, 26),
(55, 'Chemistry-09-10', 'Class-9-chemistry.PNG', 5, 26),
(56, 'Biology-9-10', 'Class-9-biology.jpg', 6, 26);

-- --------------------------------------------------------

--
-- Table structure for table `table_sub_category`
--

CREATE TABLE `table_sub_category` (
  `sub_category_id` int(11) NOT NULL,
  `sub_category_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sub_category_order` int(11) NOT NULL,
  `sub_category_filelocation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_sub_category`
--

INSERT INTO `table_sub_category` (`sub_category_id`, `sub_category_name`, `sub_category_order`, `sub_category_filelocation`, `category_id`) VALUES
(21, 'Lecture 1: Uploaded 2018', 1, 'files/BAN_07/index.html', 34),
(23, 'Lecture 1: Uploaded 2018', 1, 'files/ENG_07/index.html', 35),
(24, 'Lecture 1: Uploaded 2018', 1, 'files/ICT_07/index.html', 37);

-- --------------------------------------------------------

--
-- Table structure for table `table_top_category`
--

CREATE TABLE `table_top_category` (
  `top_category_id` int(11) NOT NULL,
  `top_category_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `top_category_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_top_category`
--

INSERT INTO `table_top_category` (`top_category_id`, `top_category_name`, `top_category_order`) VALUES
(23, 'Class 6', 1),
(24, 'Class 7', 2),
(25, 'Class 8', 3),
(26, 'Class 9-10', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbldata`
--

CREATE TABLE `tbldata` (
  `id` int(11) NOT NULL,
  `class` int(2) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `tags` varchar(255) COLLATE utf8_bin NOT NULL,
  `filelocation` varchar(255) COLLATE utf8_bin NOT NULL,
  `author` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbldata`
--

INSERT INTO `tbldata` (`id`, `class`, `title`, `tags`, `filelocation`, `author`) VALUES
(13, 7, 'Bangla', 'class 07, Sopto Borna', 'upload/BAN_07/index.html', 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_admin`
--
ALTER TABLE `table_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `table_category`
--
ALTER TABLE `table_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `table_sub_category`
--
ALTER TABLE `table_sub_category`
  ADD PRIMARY KEY (`sub_category_id`);

--
-- Indexes for table `table_top_category`
--
ALTER TABLE `table_top_category`
  ADD PRIMARY KEY (`top_category_id`);

--
-- Indexes for table `tbldata`
--
ALTER TABLE `tbldata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_admin`
--
ALTER TABLE `table_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_category`
--
ALTER TABLE `table_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `table_sub_category`
--
ALTER TABLE `table_sub_category`
  MODIFY `sub_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `table_top_category`
--
ALTER TABLE `table_top_category`
  MODIFY `top_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbldata`
--
ALTER TABLE `tbldata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
