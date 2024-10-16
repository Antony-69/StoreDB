-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2024 at 11:20 PM
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
-- Database: `storedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `credit_card_id` int(11) NOT NULL,
  `credit_card_num` varchar(100) DEFAULT NULL,
  `credit_card_date` date DEFAULT NULL,
  `credit_card_cvv` int(3) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`credit_card_id`, `credit_card_num`, `credit_card_date`, `credit_card_cvv`, `customer_id`, `created_at`) VALUES
(1, ' 4000123450709010', '2025-10-14', 420, 1, '0000-00-00 00:00:00'),
(2, ' 4565777710102020', '2024-12-14', 999, 4, '0000-00-00 00:00:00'),
(3, ' 6969420420228228', '2028-11-10', 553, 2, '0000-00-00 00:00:00'),
(4, ' 5566778899101069', '2027-04-01', 754, 3, '2024-10-16 21:07:10');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `customer_name` varchar(250) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `ip_address` varchar(250) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `postal_code` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `email`, `customer_name`, `phone`, `ip_address`, `country`, `postal_code`, `created_at`) VALUES
(1, ' \'matsyshyn.anton@gmail.com\'', ' \'Antony Matsyshyn\'', ' 0988690725', ' \'192.168.1.1\'', ' Ukraine', 79020, '0000-00-00 00:00:00'),
(2, ' \'cock.crusher@gmail.com\'', ' \'Mike Hawk\'', ' 0692284200', ' \'192.158.1.38\'', ' USA', 43027, '0000-00-00 00:00:00'),
(3, ' \'shitfucker9000@gmail.com\'', ' \'Christopher Mintz-Plasse\'', ' 17182222222', ' \'172.168.10.1\'', ' USA', 43050, '0000-00-00 00:00:00'),
(4, ' \'grisha@gmail.com\'', ' \'Greg Podolyanka\'', ' 8805553535', ' \'17.172.224.47\'', ' Ukraine', 79069, '2024-10-16 21:07:06');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_date` date DEFAULT NULL,
  `tax` float DEFAULT NULL,
  `shipping_cost` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `store_code` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_date`, `tax`, `shipping_cost`, `total`, `store_code`, `customer_id`, `created_at`) VALUES
(1, '2024-10-14', 0.15, 70, 4552.7, 1, 4, '0000-00-00 00:00:00'),
(2, '2024-10-15', 0.15, 10, 1503.85, 1, 1, '0000-00-00 00:00:00'),
(3, '2024-10-11', 0.15, 7000, 14544, 3, 3, '0000-00-00 00:00:00'),
(4, '2024-10-13', 0.15, 69, 7659, 2, 2, '2024-10-16 21:07:13');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(250) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `sold` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT NULL,
  `weight_g` float DEFAULT NULL,
  `length_mm` float DEFAULT NULL,
  `width_mm` float DEFAULT NULL,
  `height_mm` float DEFAULT NULL,
  `notes` varchar(2000) DEFAULT NULL,
  `image_url` varchar(250) DEFAULT NULL,
  `store_code` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `price`, `sold`, `quantity`, `visible`, `weight_g`, `length_mm`, `width_mm`, `height_mm`, `notes`, `image_url`, `store_code`, `order_id`, `created_at`) VALUES
(1, ' \'HATOR Quasar 2 PRO wireless Black/Orange (HTM560BO)\'', 2999, 120, 228, 1, 59, 118, 62, 39, ' \'Max Sensitivity: 26 000 DPI\'', ' \'https://hator.gg/wp-content/uploads/products/mice/quasar-2-pro-wireless/quasar-2-pro-wireless-1.jpg\'', 1, 1, '0000-00-00 00:00:00'),
(2, ' \'HATOR Pulsar 2 Yellow (HTM-512)\'', 899, 69, 420, 1, 69, 123, 68, 38, ' \'Max Sensitivity: 6 200 DPI\'', ' \'https://hator.gg/wp-content/uploads/products/mice/pulsar-2/original/pulsar-2-black_2.png\'', 1, 1, '0000-00-00 00:00:00'),
(3, ' \'HATOR Pulsar 2 Pro Wireless Lilac (HTM-534)\'', 2399, 111, 117, 1, 84, 123, 68, 38, ' \'Max Sensitivity: 16 000 DPI\'', ' \'https://hator.gg/wp-content/uploads/products/mice/pulsar-2-pro-wireless/original/pulsar-2-pro-wireless-black_2.png\'', 1, 0, '0000-00-00 00:00:00'),
(4, ' \'HATOR Stellar PRO Black (HTM-540)\'', 1299, 22, 55, 1, 47, 116, 60, 36, ' \'Max Sensitivity: 16 000 DPI\'', ' \'https://hator.gg/wp-content/uploads/products/mice/stellar-pro/original/stellar-pro-black_2.png\'', 1, 2, '0000-00-00 00:00:00'),
(5, ' \'PRO X SUPERLIGHT 2 DEX\'', 6560, 220, 1005, 1, 60, 125.8, 67.7, 43.9, ' \'Max Sensitivity: 44 000 DPI\'', ' \'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTedz2P1bHw7z3Iin7JZ1Tf-idGeLQn3cacNg&s\'', 3, 0, '0000-00-00 00:00:00'),
(6, ' \'G502 X PLUS GAMING MOUSE\'', 6560, 120, 840, 1, 106, 130, 41, 131, ' \'Max Sensitivity: 25 600 DPI\'', ' \'https://content.rozetka.com.ua/goods/images/big/284706945.jpg\'', 3, 3, '0000-00-00 00:00:00'),
(7, ' \'G309 LIGHTSPEED\'', 3300, 55, 144, 1, 86, 120, 64, 39, ' \'Max Sensitivity: 25 600 DPI\'', ' \'https://touch.com.ua/upload/resize_cache/webp/resize_cache/iblock/a06/500_500_1/ichybzp7allpg3p0jkt0o20ici73marj.webp\'', 3, 0, '0000-00-00 00:00:00'),
(8, ' \'Razer Basilisk V3 Pro 35K - Black\'', 6560, 55, 111, 1, 112, 130, 75, 42.5, ' \'Max Sensitivity: 35 000 DPI\'', ' \'https://m.media-amazon.com/images/I/71a7g3vRXHL._AC_UF10001000_QL80_.jpg\'', 2, 0, '0000-00-00 00:00:00'),
(9, ' \'Razer Cobra Pro + Mouse Dock Pro Bundle\'', 6999, 45, 110, 1, 77, 119.6, 62.6, 38.1, ' \'Max Sensitivity: 30 000 DPI\'', ' \'https://us.maxgaming.com/bilder/artiklar/zoom/27522_1.jpg?m=1686734822\'', 2, 0, '0000-00-00 00:00:00'),
(10, ' \'Razer Viper V3 Pro - Black\'', 6600, 120, 228, 1, 54, 127.1, 63.9, 39.9, ' \'Max Sensitivity: 35 000 DPI\'', ' \'https://m.media-amazon.com/images/S/aplus-media-library-service-media/ba9c7810-0cdf-4ccf-968f-8b453375010e.png\'', 2, 4, '2024-10-16 21:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `store_code` int(11) NOT NULL,
  `store_name` varchar(250) DEFAULT NULL,
  `store_url` varchar(250) DEFAULT NULL,
  `store_country` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`store_code`, `store_name`, `store_url`, `store_country`, `created_at`) VALUES
(1, ' \'HATOR Store\'', ' \'https://shop.hator.gg/?s\'', ' \'Ukraine\'', '0000-00-00 00:00:00'),
(2, ' \'Razer\'', ' \'https://www.razer.com/store?srsltid=AfmBOooe6FwZI16nHR2RU0lp3UUHJ5Igr_CZmLdl0N1bcNuqQzeyu55D\'', ' \'USA\'', '0000-00-00 00:00:00'),
(3, ' \'LogitechG', ' \'https://www.logitechg.com/en-us\'', ' \'USA\'', '2024-10-16 21:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `billing_country` varchar(250) DEFAULT NULL,
  `billing_city` varchar(250) DEFAULT NULL,
  `transaction_type` varchar(250) DEFAULT NULL,
  `payment_status` tinyint(1) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `error_code` varchar(1000) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `credit_card_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `billing_country`, `billing_city`, `transaction_type`, `payment_status`, `amount`, `error_code`, `order_id`, `credit_card_id`, `created_at`) VALUES
(1, ' Ukraine', ' Lviv', ' Card', 1, 4552.7, ' Card redeemed', 1, 1, '0000-00-00 00:00:00'),
(2, ' Ukraine', ' Lviv', ' Card', 1, 1503.85, ' Card redeemed', 2, 2, '0000-00-00 00:00:00'),
(3, ' USA', ' Ohio', ' Card', 0, 14544, ' Card redeemed', 3, 3, '0000-00-00 00:00:00'),
(4, ' USA', ' Illinois', ' Card', 1, 7659, ' Card redeemed', 4, 4, '2024-10-16 21:07:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`credit_card_id`),
  ADD KEY `customer_index` (`customer_id`),
  ADD KEY `credit_card_index` (`credit_card_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `customer_index` (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `store_index` (`store_code`),
  ADD KEY `order_index` (`order_id`),
  ADD KEY `customer_index` (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `store_index` (`store_code`),
  ADD KEY `product_index` (`product_id`),
  ADD KEY `order_index` (`order_id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`store_code`),
  ADD KEY `store_index` (`store_code`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `order_index` (`order_id`),
  ADD KEY `credit_card_index` (`credit_card_id`),
  ADD KEY `transaction_index` (`transaction_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cards`
--
ALTER TABLE `cards`
  ADD CONSTRAINT `cards_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`store_code`) REFERENCES `stores` (`store_code`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`store_code`) REFERENCES `stores` (`store_code`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`credit_card_id`) REFERENCES `cards` (`credit_card_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
