-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2024 at 07:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `adminid` int(11) NOT NULL,
  `admin_name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `mobile` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`adminid`, `admin_name`, `password`, `mobile`) VALUES
(1, 'SumithKS', '12345', 0),
(8, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `author_details`
--

CREATE TABLE `author_details` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author_details`
--

INSERT INTO `author_details` (`author_id`, `author_name`) VALUES
(1, 'lohith'),
(2, 'bhavani'),
(3, 'bhavani');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` varchar(20) NOT NULL,
  `book_name` varchar(20) DEFAULT NULL,
  `author_id` int(20) DEFAULT NULL,
  `cat_id` int(20) DEFAULT NULL,
  `book_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_name`, `author_id`, `cat_id`, `book_price`) VALUES
('12', 'rich dad', 0, 0, 145),
('123', 'ikigei', 0, 0, 500),
('178', 'bash script', 0, 0, 1000000),
('56', 'rich dad', 0, 0, 145),
('s', '245dsss', 0, 12291, 9000),
('srrr', 'b2i3', 0, 12291, 256210);

-- --------------------------------------------------------

--
-- Table structure for table `category_details`
--

CREATE TABLE `category_details` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_details`
--

INSERT INTO `category_details` (`cat_id`, `cat_name`) VALUES
(1, 'acadamics'),
(2, 'friction'),
(3, 'science');

-- --------------------------------------------------------

--
-- Table structure for table `issued_books`
--

CREATE TABLE `issued_books` (
  `s_no` int(11) NOT NULL,
  `book_name` varchar(200) NOT NULL,
  `author_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `issue_date` date NOT NULL DEFAULT current_timestamp(),
  `return_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issued_books`
--

INSERT INTO `issued_books` (`s_no`, `book_name`, `author_id`, `user_id`, `issue_date`, `return_date`) VALUES
(788, '245dsss', 1229199, 123, '2024-03-20', '2024-04-04'),
(1265, 'classmate', 5, 10, '2024-03-20', '0000-00-00'),
(7777778, 'DBMS Pearson', 12291, 124, '2024-03-20', '2024-04-04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `email_id` varchar(30) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `first_name`, `last_name`, `email_id`, `phone`, `password`) VALUES
(1, 'veda', 'chavan', 'veda123@gmail.com', '12y45', '7892t0633'),
(2, 'sumith', 'bhat', 'sumith@gmail.com', '12345', '78945612'),
(3, 'test', 'test', 'test', 'test', '5898'),
(4, 'sumith', 'ks', 'sytg@gma', '12345d', '1235678'),
(9, 'shubh', 'cs', 'shubh@gmail.com', '7895461', 'shubh@#123'),
(10, 'adithya', 'd', 'adi@gmail.com', '8050506719', 'adi@123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `author_details`
--
ALTER TABLE `author_details`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `category_details`
--
ALTER TABLE `category_details`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `issued_books`
--
ALTER TABLE `issued_books`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`,`email_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `author_details`
--
ALTER TABLE `author_details`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category_details`
--
ALTER TABLE `category_details`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `issued_books`
--
ALTER TABLE `issued_books`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7777779;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
