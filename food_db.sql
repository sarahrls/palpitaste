-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2022 at 05:02 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(0, 0, 'Mary Jane', 'bayodmaryjane@gmail.com', '0977730541', 'I want to reserve for 8:00-9:00pm. Thank you');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(0, 0, 'Sarah', '2147483647', 'sarahrlsison@gmail.com', 'cash on delivery', '120, P, MLQ St, New Lower Bicutan, Taguig City, Metro Manila, Philippines - 1632', 'Cream Cheese Bun (78 x 2) - ', 156, '2022-12-08 16:01:22', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `sizes` varchar(100) NOT NULL,
  `image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category`, `sizes`, `image`) VALUES
(0, 'Brewed Coffee', 110, 'Coffee', 'N/A', 0x42726577656420436f666665652e706e67),
(0, 'Cappuccino', 135, 'Coffee', 'Tall', 0x43617070756363696e6f2e706e67),
(0, 'Cappuccino - Venti', 145, 'Coffee', 'Venti', 0x43617070756363696e6f2e706e67),
(0, 'CafÃ© Latte', 150, 'Coffee', 'Tall', 0x43416665204c617474652e706e67),
(0, 'CafÃ© Latte - Venti', 165, 'Coffee', 'Venti', 0x43416665204c617474652e706e67),
(0, 'CafÃ© Mocha', 165, 'Coffee', 'Tall', 0x43616665204d6f6368612e706e67),
(0, 'CafÃ© Mocha - Venti', 175, 'Coffee', 'Venti', 0x43616665204d6f6368612e706e67),
(0, 'Vanilla Latte', 155, 'Coffee', 'Tall', 0x56616e696c6c61204c617474652e706e67),
(0, 'Vanilla Latte - Venti', 175, 'Coffee', 'Venti', 0x56616e696c6c61204c617474652e706e67),
(0, 'Mocha Frappe', 170, 'Frappes', 'Tall', 0x4d6f636861204672617070652e706e67),
(0, 'Mocha Frappe - Venti', 190, 'Frappes', 'Venti', 0x4d6f636861204672617070652e706e67),
(0, 'Strawberry Vanilla', 185, 'Frappes', 'Tall', 0x537472617762657272792056616e696c6c612e706e67),
(0, 'Strawberry Vanilla - Venti', 200, 'Frappes', 'Venti', 0x537472617762657272792056616e696c6c612e706e67),
(0, 'Macha Green Tea', 155, 'Frappes', 'Tall', 0x6d41544348412e706e67),
(0, 'Macha Green Tea-Venti', 170, 'Frappes', 'Venti', 0x6d41544348412e706e67),
(0, 'Cheesy Ube Pandesal 10pcs', 110, 'Cremes&Pastry', 'N/A', 0x556265206368656573652070616e646573616c2e706e67),
(0, 'Cream Cheese Bun', 78, 'Cremes&Pastry', 'N/A', 0x437265616d206368656573652062756e2e706e67),
(0, 'Butter Croissant ', 78, 'Cremes&Pastry', 'N/A', 0x4275747465722043726f697373616e742e706e67),
(0, 'Chocolate Danish', 88, 'Cremes&Pastry', 'N/A', 0x43686f636f6c6174652044616e6973682e706e67),
(0, 'Sweet Crepe', 145, 'Cremes&Pastry', 'N/A', 0x73776565745f63726570652d72656d6f766562672d7072657669657720312e706e67),
(0, 'Strawberries & Cream Crepe', 175, 'Cremes&Pastry', 'N/A', 0x53747261776265727269657320616e6420637265616d2e706e67),
(0, 'Classic Banana Crepe', 120, 'Cremes&Pastry', 'N/A', 0x636c61737369635f62616e616e612d72656d6f766562672d7072657669657720312e706e67),
(0, 'Cinnamon Toast Crepe', 135, 'Cremes&Pastry', 'N/A', 0x43696e6e616d6f6e20746f6173742063726570652e6a7067),
(0, 'Carbonara ', 129, 'Pasta', 'N/A', 0x436172626f6e6172612e6a7067),
(0, 'Carbonara for Family', 329, 'Pasta', 'N/A', 0x436172626f6e6172612e6a7067),
(0, 'Bacon Aglio Olio', 145, 'Pasta', 'N/A', 0x4261636f6e2041676c696f204f6c696f2e706e67),
(0, 'Fettucine Alfredo', 149, 'Pasta', 'N/A', 0x46657474756363696e6520416c667265646f2e6a7067),
(0, 'Fettucine Alfredo Family', 349, 'Pasta', 'N/A', 0x46657474756363696e6520416c667265646f2e6a7067),
(0, 'Classic Lasagna', 189, 'Pasta', 'N/A', 0x436c6173736963204c617361676e612e6a7067),
(0, 'Classic Lasagna for Family', 749, 'Pasta', 'N/A', 0x436c6173736963204c617361676e612e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `password`, `address`) VALUES
(0, 'Sarah', 'sarahrlsison@gmail.com', 2147483647, '8cb2237d0679ca88db6464eac60da96345513964', '120, P, MLQ St, New Lower Bicutan, Taguig City, Metro Manila, Philippines - 1632'),
(0, 'Mary Jane Bayod', 'maryjane@gmail.com', 977335471, '8cb2237d0679ca88db6464eac60da96345513964', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
