-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2021 at 03:05 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `avoir`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_info`
--

CREATE TABLE `cart_info` (
  `cart_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `cart_date` date DEFAULT NULL,
  `product_size` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_info`
--

INSERT INTO `cart_info` (`cart_id`, `user_id`, `product_id`, `product_price`, `quantity`, `status`, `cart_date`, `product_size`) VALUES
(29, 14, 8, '400.00', 1, 'paid', '2021-04-30', 's'),
(30, 14, 8, '400.00', 1, 'paid', '2021-04-30', 'l');

-- --------------------------------------------------------

--
-- Table structure for table `payment_info`
--

CREATE TABLE `payment_info` (
  `payment_id` int(10) NOT NULL,
  `transation_id` text DEFAULT NULL,
  `user_id` int(10) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_info`
--

INSERT INTO `payment_info` (`payment_id`, `transation_id`, `user_id`, `amount`, `payment_date`) VALUES
(28, 'iuashdolhouhrf', 14, '800.00', '2021-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `product_info`
--

CREATE TABLE `product_info` (
  `id` int(10) NOT NULL,
  `img` text DEFAULT NULL,
  `title` varchar(57) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `status` varchar(27) DEFAULT NULL,
  `product_type` varchar(27) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_info`
--

INSERT INTO `product_info` (`id`, `img`, `title`, `description`, `price`, `quantity`, `status`, `product_type`) VALUES
(8, 'images/img-1619743174495.jpg', 'Passport', 'Good passport product green or lime.', '400.00', 10, 'instock', 'Shirt'),
(12, 'images/img-1619743863506.jpg', 'Olive Sharif', 'Good boi', '400.00', 10, 'instock', 'Human'),
(15, 'images/img-1619744021030.jpg', 'Gold Sharif', 'Golden boi', '24000.00', 1, 'instock', 'Human'),
(16, 'images/img-1619770433159.jpg', 'Blue Sharif', 'Good passport product green or lime.', '400.00', 15, 'instock', 'Shirt'),
(19, 'images/img-1619784984877.jpg', 'Momstar', 'Good, bery beri good', '123.00', 1, 'instock', 'Shirt');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `user_name` varchar(57) DEFAULT NULL,
  `phone` varchar(27) DEFAULT NULL,
  `pass` text DEFAULT NULL,
  `user_type` varchar(10) DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `user_name`, `phone`, `pass`, `user_type`, `address`) VALUES
(11, 'admin', '01615233041', 'admin12345', 'raja', 'Chandpur'),
(14, 'Imran', '01615233041', 'dsa', 'customer', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_info`
--
ALTER TABLE `cart_info`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `payment_info`
--
ALTER TABLE `payment_info`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_info`
--
ALTER TABLE `cart_info`
  MODIFY `cart_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `payment_info`
--
ALTER TABLE `payment_info`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `product_info`
--
ALTER TABLE `product_info`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
