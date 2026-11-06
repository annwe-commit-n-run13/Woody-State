-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2026 at 10:09 PM
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
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`, `image`) VALUES
(1, 0, 'Floor Lamp | warm ', 89, 1, 'lamp1.jpg'),
(2, 0, 'Wooden bed | Padded back support ', 449, 1, 'bed3.jpg'),
(3, 13, 'Wooden Bed with Storage under Mattress', 399, 1, 'bed2.jpg'),
(4, 13, 'Dining Set of American Wood', 120, 1, 'dining-set3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(5, 5, 'Inez5', 'inez55@gmail.com', '9876543210', 'okay this is just a test message, greetings anyways.'),
(11, 12, 'new', 'new2@gmail.com', '9123456780', 'testing message2...'),
(12, 13, 'Riley2', 'riley2@gmail.com', '9876543210', 'had a nice experience shopping here...');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 1, 'john', '1234567890', 'john1@gmail.com', 'cash on delivery', '123, 3rd floor, abc rd, india-400010', 'sofa (1), chair (4)', 250, '2nd February 2023', 'completed'),
(10, 33, 'admin33', '1234567890', 'admin33@gmail.com', 'cash on delivery', '123, 3rd floor, abc street, india-400010', 'sofa (1), chair (4)', 250, '2nd February 2023', 'completed'),
(11, 0, 'user6', '9876543210', 'user6@gmail.com', 'cash on delivery', 'flat no. 123, street, mumbai, india - 400101', ', Floor Lamp | warm  (2) , Lightly Padded Single Sofa (1) ', 317, '27-Jul-2024', 'completed'),
(12, 0, 'Annwesha16', '9123456789', 'annwesha16@gmail.com', 'cash on delivery', 'flat no. 101, street, mumbai, india - 400101', ', Dining Set of American Wood (1) , Wooden Bed with Storage under Mattress (1) ', 519, '03-Aug-2024', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(1, 'Wooden Bed with Storage under Mattress', 399, 'bed2.jpg'),
(2, 'Dining Set of American Wood', 120, 'dining-set3.jpg'),
(3, 'Lightly Padded Single Sofa', 139, 'sofa1.png'),
(4, 'Floor Lamp | warm ', 89, 'lamp1.jpg'),
(5, 'Padded Mid Back Chair', 100, 'chair2.jpg'),
(6, 'Wooden Bed | Box Storage | without Mattress', 359, 'bed4.jpg'),
(7, 'Recliner | 3 level reclining', 229, 'recliner.jpg'),
(8, 'High Top Bar Stool | set of 2', 79, 'stool3.jpg'),
(9, 'Wooden bed | Padded back support ', 449, 'bed3.jpg'),
(10, 'Floor Lamp | Adjustable settings', 89, 'lamp2.jpg'),
(11, 'Office Chair | Back support ', 90, 'chair1.jpg'),
(12, '4 seater Dining Set | Dining', 310, 'dining-set1.jpg'),
(13, 'Vertical storage unit', 89, 'Screenshot 2024-07-31 202912.png'),
(14, 'Coffee Table | Polished | German wood', 179, 'Screenshot 2024-08-03 215136.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'john', 'john1@gmail.com', 'c20ad4d76fe97759aa27a0c99bff6710', 'user'),
(2, 'stacy', 'stacy2@gmail.com', '6512bd43d9caa6e02c990b0a82652dca', 'user'),
(3, 'Riv', 'riv3@gmail.com', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'user'),
(4, 'admin3', 'admin33@gmail.com', '182be0c5cdcd5072bb1864cdee4d3d6e', 'admin'),
(5, 'user6', 'user6@gmail.com', '3295c76acbf4caaed33c36b1b5fc2cb1', 'user'),
(6, 'henry10', 'henry10@gmail.com', 'd3d9446802a44259755d38e6d163e820', 'user'),
(7, 'Annwesha16', 'annwesha16@gmail.com', 'c74d97b01eae257e44aa9d5bade97baf', 'user'),
(8, 'user6', 'user6@gmail.com', '1679091c5a880faf6fb5e6087eb1b2dc', 'user'),
(9, 'admin5', 'admin5@gmail.com', 'b53b3a3d6ab90ce0268229151c9bde11', 'admin'),
(12, 'new2', 'new2@gmail.com', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'user'),
(13, 'Riley2', 'riley2@gmail.com', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'user'),
(14, 'abc', 'abc@outlook.com', 'c20ad4d76fe97759aa27a0c99bff6710', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
