-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2020 at 09:39 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(70) DEFAULT NULL,
  `book_author` varchar(30) DEFAULT NULL,
  `book_isbn` varchar(80) DEFAULT NULL,
  `book_edition` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_name`, `book_author`, `book_isbn`, `book_edition`) VALUES
(1, 'Graph Algorithm', 'Shafayet Ashraf', '978-984-92164-3-8', 'First'),
(2, 'Machine Learning Algorithm', 'Nafis Nihal', '963-346-93764-1-9', 'Third'),
(3, 'Java Programming', 'Bojlur Rahman', '768-126-93354-9-10', 'Fourth');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(40) DEFAULT NULL,
  `branch_location` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `branch_location`) VALUES
(1, 'Mirpur Branch', 'Mirpur'),
(2, 'Gulshan Baridhara Branch', 'Gulshan'),
(3, 'Mohammadpur Branch', 'Mohammadpur');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `customer_address` varchar(100) DEFAULT NULL,
  `customer_email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_address`, `customer_email`) VALUES
(1, 'Imrul Hasan Sifat', 'Mohammadpur', 'abc@gmail.com'),
(2, 'Hanzala Hadi', 'Kolabagan', 'def@gmail.com'),
(3, 'Muksudul Islam', 'Adabar', 'ghi@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `issue_id` int(11) NOT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `issue_date` datetime DEFAULT NULL,
  `book_name` varchar(30) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`issue_id`, `expiry_date`, `issue_date`, `book_name`, `book_id`) VALUES
(1, '2028-04-14 07:35:12', '2017-06-26 09:26:16', 'ICT', 1),
(2, '2016-02-18 03:55:17', '2019-02-02 05:20:08', 'English For Today', 2),
(3, '2026-01-13 04:45:10', '2018-02-02 05:20:08', 'Data Communication', 3);

-- --------------------------------------------------------

--
-- Table structure for table `return_books`
--

CREATE TABLE `return_books` (
  `return_id` int(11) NOT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `issue_date` datetime DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `return_books`
--

INSERT INTO `return_books` (`return_id`, `expiry_date`, `issue_date`, `book_id`) VALUES
(1, '2020-08-18 07:35:47', '2019-06-26 09:26:16', 1),
(2, '2020-12-18 02:45:12', '2020-09-26 10:26:16', 2),
(3, '2020-05-18 06:00:00', '2020-04-17 09:26:16', 3);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `staff_name` varchar(70) DEFAULT NULL,
  `staff_address` varchar(20) DEFAULT NULL,
  `staff_phone` varchar(20) DEFAULT NULL,
  `staff_gender` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_name`, `staff_address`, `staff_phone`, `staff_gender`) VALUES
(1, 'Shaki Chowdhury', 'Mirpur 2', '017xxxxxxxx', 'MALE'),
(2, 'Shakib-Uz-Zaman Chowdhury', 'Bhanga Bridge', '019xxxx', 'Third'),
(3, 'Java Programming', 'Bojlur Rahman', '768-126-93354-9-10', 'Fourth');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `issue`
--
ALTER TABLE `issue`
  ADD PRIMARY KEY (`issue_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `return_books`
--
ALTER TABLE `return_books`
  ADD PRIMARY KEY (`return_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `issue`
--
ALTER TABLE `issue`
  MODIFY `issue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `return_books`
--
ALTER TABLE `return_books`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `issue`
--
ALTER TABLE `issue`
  ADD CONSTRAINT `issue_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`);

--
-- Constraints for table `return_books`
--
ALTER TABLE `return_books`
  ADD CONSTRAINT `return_books_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
