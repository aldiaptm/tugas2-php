-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2023 at 07:30 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `channel` enum('OVO','GOPAY','DANA','VA BCA') NOT NULL,
  `service_fee` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`id`, `order_id`, `channel`, `service_fee`) VALUES
(1, 1, 'OVO', '1000.00'),
(2, 2, 'GOPAY', '0.00'),
(3, 3, 'DANA', '0.00'),
(4, 4, 'VA BCA', '1500.00'),
(5, 5, 'VA BCA', '1500.00'),
(6, 6, 'VA BCA', '1500.00'),
(7, 7, 'OVO', '1000.00');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `first_name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(2, 'Muhammad Abdul Ghani', 'ridwan@eduwork.co.id', '089687476262', 'Jl Margorejo Indah Bl B/107Margorejo,Surabaya,Winocolo,,Indonesia', '2023-03-31 11:58:55', '2023-11-06 10:12:00'),
(4, 'Atika Rawon FC', 'atika@eduwork.com', '089687476464', 'JL Perak Barat No. 22560165,Surabaya,,22560,Indonesia', '2023-03-31 11:58:55', '2023-11-07 07:26:30'),
(5, 'Andre', 'andre@eduwork.com', '08123111222', 'JL RE Martadhinata no 3', '2023-04-05 14:38:34', '2023-11-04 18:25:15'),
(6, 'Ajeng', 'kartini@gmail.com', '0892827312', 'JL. Boyolali no 39', '2023-05-10 12:46:04', '2023-11-04 18:25:15'),
(13, 'Sukoco', 'sukoco@gmail.com', '089728264123', 'JL Kenangan no 9', '2023-05-17 14:28:59', '2023-11-04 18:25:15'),
(30, 'Aldi Pratama', 'aldi@gmail.com', '081216032023', 'Bandung', '2023-11-06 16:11:37', '2023-11-07 13:27:19'),
(31, 'Nurfadillah Insani', 'nfadillah@yahoo.com', '081216032023', 'Bandung Barat', '2023-11-06 16:16:35', '2023-11-07 13:27:57'),
(32, 'Aldilla Putra Pratama', 'aldilla@yahoo.co.id', '08123288472', 'Jakarta Utara', '2023-11-07 06:23:22', '2023-11-07 13:28:20');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` enum('pending','processing','shipped','delivered') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `customer_id`, `order_date`, `status`) VALUES
(1, 1, '2023-03-27 19:06:33', 'processing'),
(2, 1, '2023-03-30 19:06:33', 'delivered'),
(3, 2, '2023-03-31 19:06:33', 'shipped'),
(4, 3, '2023-03-22 19:06:33', 'processing'),
(5, 4, '2023-03-12 19:06:33', 'pending'),
(6, 4, '2023-03-31 19:06:33', 'shipped');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `qty`) VALUES
(1, 1, 1, 2),
(2, 1, 2, 1),
(3, 2, 3, 1),
(4, 3, 4, 2),
(5, 4, 2, 1),
(6, 4, 1, 2),
(7, 5, 1, 3),
(8, 6, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `created_at`) VALUES
(1, 'Permen Yupi', '1000.00', NULL),
(2, 'Baju Fila', '500000.00', NULL),
(3, 'Sepatu Nike', '300000.00', NULL),
(4, 'Jaket Puma', '250000.00', NULL),
(5, 'Tas LV', '1000000.00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
