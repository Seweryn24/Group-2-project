-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2024 at 04:24 PM
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
-- Database: `bookshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `BookID` int(5) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Genre` varchar(30) NOT NULL,
  `Price` double NOT NULL,
  `PublicationDate` date NOT NULL,
  `Language` varchar(30) NOT NULL,
  `StockQuantity` int(11) NOT NULL,
  `Author` varchar(60) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`BookID`, `Title`, `Genre`, `Price`, `PublicationDate`, `Language`, `StockQuantity`, `Author`, `Description`) VALUES
(1, 'Normal People', 'Best Seller', 15, '2020-05-13', 'english', 2, 'Sally Rooney', 'The novel follows the complex friendship and relationship between two teenagers, Connell and Marianne, who both attend the same secondary school in County Sligo, Ireland, and, later, Trinity College Dublin (TCD). It is set during the post-2008 Irish economic downturn, from 2011 through 2015.'),
(2, 'The Silent Patient', 'Best Seller', 9.99, '2015-03-18', 'English', 13, 'Alex Michaelides', 'The Silent Patient is a shocking psychological thriller of a woman\'s act of violence against her husband—and of the therapist obsessed with uncovering her motive. Alicia Berenson\'s life is seemingly perfect.'),
(3, 'The Psychology of Money', 'Best Seller', 15, '2007-03-09', 'English', 23, 'Morgan Housel', ''),
(4, 'The Maid', 'Fiction', 7.99, '2007-03-09', 'English', 4, 'Nita Prose', ''),
(5, 'Promise', 'Fiction', 13.5, '2007-07-19', 'English', 9, 'Rachel Eliza Griffiths', ''),
(6, 'The Bee Sting', 'Non-Fiction', 22, '2023-09-20', 'English', 15, 'Paul Murray', ''),
(7, 'Pathfinders', 'Non-Fiction', 32, '2023-09-20', 'English', 9, 'JL Collins', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `CustomerID` int(5) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`CustomerID`, `Email`, `Password`, `FirstName`, `LastName`) VALUES
(14, 'josh@gmail.com', 'root', 'Josh', 'Wilson'),
(15, 'wilson-j102@ulster.ac.uk', 'Root', 'Josh', 'Wilson'),
(16, 'josh1@gmail.com', 'root', 'Josh', 'Wilson');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(5) NOT NULL,
  `BookID` int(5) NOT NULL,
  `OrderDate` date NOT NULL,
  `PaymentMethod` varchar(40) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `BookID`, `OrderDate`, `PaymentMethod`, `FirstName`, `LastName`) VALUES
(1, 1, '2024-05-03', '', '', ''),
(2, 1, '2024-05-03', '', '', ''),
(3, 1, '2024-05-03', '100000000', 'Josh', 'Wilson'),
(4, 1, '2024-05-03', '100000000', 'Josh', 'Wilson'),
(5, 1, '2024-05-03', '100000000', 'Josh', 'Wilson'),
(6, 1, '2024-05-03', '', '', ''),
(7, 1, '2024-05-03', '', '', ''),
(8, 1, '2024-05-03', '', '', ''),
(9, 1, '2024-05-03', '', '', ''),
(10, 1, '2024-05-03', '', '', ''),
(11, 1, '2024-05-03', '', '', ''),
(12, 1, '2024-05-03', '', '', ''),
(13, 1, '2024-05-03', '100000000', 'Josh', 'Wilson'),
(14, 1, '2024-05-03', '100000000', 'Josh', 'Wilson');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `ReviewID` int(5) NOT NULL,
  `Name` varchar(60) NOT NULL,
  `Rating` int(1) NOT NULL,
  `ReviewText` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`ReviewID`, `Name`, `Rating`, `ReviewText`) VALUES
(6, 'Josh', 2, 'its alright\r\n'),
(7, 'Josh', 3, 'cool\r\n'),
(8, 'Josh', 2, 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`BookID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`CustomerID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `BookID_fk` (`BookID`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`ReviewID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `BookID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `CustomerID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `ReviewID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `BookID_fk` FOREIGN KEY (`BookID`) REFERENCES `books` (`BookID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
