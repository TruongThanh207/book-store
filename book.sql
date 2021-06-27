-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2021 at 12:44 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing_address`
--

CREATE TABLE `billing_address` (
  `id` bigint(20) NOT NULL,
  `billing_address_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address_country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address_street1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address_street2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address_zipcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `billing_address`
--

INSERT INTO `billing_address` (`id`, `billing_address_city`, `billing_address_country`, `billing_address_name`, `billing_address_state`, `billing_address_street1`, `billing_address_street2`, `billing_address_zipcode`, `order_id`) VALUES
(17, 'hcm', NULL, 'Thanh', 'AK', 'hcm', 'hcm', '70000', 16),
(21, 'hcm', NULL, 'Thanh', 'AK', 'hcm', 'hcm', '70000', 20),
(25, 'hcm', NULL, 'Thanh', 'AK', 'hcm', 'hcm', '70000', 24),
(29, 'hcm', NULL, 'Thanh', 'AK', 'hcm', 'hcm', '70000', 28),
(33, 'hcm', NULL, 'Thanh', 'AK', 'hcm', 'hcm', '70000', 32),
(39, 'hcm', NULL, 'Thanh', 'AK', 'hcm', 'hcm', '70000', 38),
(45, 'hcm', NULL, 'Thanh', 'AK', 'hcm', 'hcm', '70000', 44);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` bigint(20) NOT NULL,
  `active` bit(1) NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `in_stock_number` int(11) NOT NULL,
  `isbn` int(11) NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `list_price` double NOT NULL,
  `number_of_pages` int(11) NOT NULL,
  `our_price` double NOT NULL,
  `publication_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publisher` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_weight` double NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `active`, `author`, `category`, `description`, `format`, `in_stock_number`, `isbn`, `language`, `list_price`, `number_of_pages`, `our_price`, `publication_date`, `publisher`, `shipping_weight`, `title`) VALUES
(3, b'1', 'KimA', 'Arts & Literature', 'English Update', 'paperback', -1, 1235123412, 'english', 120, 300, 12, '2021-06-19', 'KimA', 1, 'English'),
(11, b'1', 'Alexis Pauline Gumbs ', 'Programming', '', 'hardcover', 3, 1234123143, 'english', 11, 100, 11, '2021-06-27', 'Duke University Press', 1, 'After the End of the World'),
(7, b'1', 'Meredith Russo ', 'Arts & Literature', '', 'paperback', 7, 123987324, 'english', 12, 200, 11, '', 'Flatiron Books', 1, 'If I Was Your Girl'),
(8, b'1', 'Esi Edugyan ', 'Fiction', '<p><span style=\"box-sizing: border-box; font-weight: bolder; color: #2c293b; font-family: \'IBM Plex Sans\', sans-serif; font-size: 16px; border: 0px solid var(--color-border);\">One of the&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; border: 0px solid var(--color-border);\"><em style=\"box-sizing: border-box; border: 0px solid var(--color-border);\">New York Times Book Review&nbsp;</em></span>TEN BEST BOOKS OF THE YEAR</span></p>', 'paperback', 10, 122331234, 'english', 32, 200, 30, '2021-06-01', 'Vintage', 2, 'Washington Black'),
(9, b'1', 'One World', 'Management', '', 'hardcover', 5, 1234523151, 'english', 32, 200, 32, '2021-06-27', 'Ta-Nehisi Coates ', 2, 'An American Tragedy'),
(10, b'1', 'Michele Elizabeth Lee ', 'Engineering', '', 'hardcover', 5, 1241324413, 'english', 10, 100, 9, '2021-06-27', ' Wadastick', 1, 'Over 400 Years of Traditional African American Healing'),
(12, b'1', 'Heather McGhee ', 'Arts & Literature', '', 'hardcover', 5, 231231412, 'english', 14, 200, 14, '2021-06-27', 'One World', 2, 'The Sum of Us');

-- --------------------------------------------------------

--
-- Table structure for table `book_to_cart_item`
--

CREATE TABLE `book_to_cart_item` (
  `id` bigint(20) NOT NULL,
  `book_id` bigint(20) DEFAULT NULL,
  `cart_item_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `book_to_cart_item`
--

INSERT INTO `book_to_cart_item` (`id`, `book_id`, `cart_item_id`) VALUES
(37, 7, 36),
(43, 7, 42);

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

CREATE TABLE `cart_item` (
  `id` bigint(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` decimal(19,2) DEFAULT NULL,
  `book_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `shopping_cart_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart_item`
--

INSERT INTO `cart_item` (`id`, `qty`, `subtotal`, `book_id`, `order_id`, `shopping_cart_id`) VALUES
(36, 1, '11.00', 7, 38, NULL),
(42, 1, '11.00', 7, 44, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(48),
(48),
(48),
(48),
(48),
(48),
(48),
(48),
(48),
(48),
(48),
(48),
(48),
(48);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_token`
--

CREATE TABLE `password_reset_token` (
  `id` bigint(20) NOT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_reset_token`
--

INSERT INTO `password_reset_token` (`id`, `expiry_date`, `token`, `user_id`) VALUES
(10, '2021-06-28 16:43:26', '7e780e39-dfc1-463c-9308-30f8dcd3b62a', 7);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` bigint(20) NOT NULL,
  `card_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvc` int(11) NOT NULL,
  `expiry_month` int(11) NOT NULL,
  `expiry_year` int(11) NOT NULL,
  `holder_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `card_name`, `card_number`, `cvc`, `expiry_month`, `expiry_year`, `holder_name`, `type`, `order_id`) VALUES
(18, NULL, '123', 123, 1, 2017, 'Truong Van Thanh', 'visa', 16),
(22, NULL, '123', 123, 1, 2017, 'Truong Van Thanh', 'visa', 20),
(26, NULL, '123', 123, 1, 2017, 'Truong Van Thanh', 'visa', 24),
(30, NULL, '123', 123, 1, 2017, 'Truong Van Thanh', 'visa', 28),
(34, NULL, '123', 123, 1, 2017, 'Truong Van Thanh', 'visa', 32),
(40, NULL, '123', 123, 1, 2017, 'Truong Van Thanh', 'visa', 38),
(46, NULL, '123', 123, 1, 2017, 'Truong Van Thanh', 'visa', 44);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `name`) VALUES
(0, 'ROLE_ADMIN'),
(1, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_address`
--

CREATE TABLE `shipping_address` (
  `id` bigint(20) NOT NULL,
  `shipping_address_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address_country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address_street1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address_street2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address_zipcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shipping_address`
--

INSERT INTO `shipping_address` (`id`, `shipping_address_city`, `shipping_address_country`, `shipping_address_name`, `shipping_address_state`, `shipping_address_street1`, `shipping_address_street2`, `shipping_address_zipcode`, `order_id`) VALUES
(19, 'hcm', NULL, 'Thanh', 'AK', 'hcm', 'hcm', '70000', 16),
(23, 'hcm', NULL, 'Thanh', 'AK', 'hcm', 'hcm', '70000', 20),
(27, 'hcm', NULL, 'Thanh', 'AK', 'hcm', 'hcm', '70000', 24),
(31, 'hcm', NULL, 'Thanh', 'AK', 'hcm', 'hcm', '70000', 28),
(35, 'hcm', NULL, 'Thanh', 'AK', 'hcm', 'hcm', '70000', 32),
(41, 'hcm', NULL, 'Thanh', 'AK', 'hcm', 'hcm', '70000', 38),
(47, 'hcm', NULL, 'Thanh', 'AK', 'hcm', 'hcm', '70000', 44);

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `id` bigint(20) NOT NULL,
  `grand_total` decimal(19,2) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shopping_cart`
--

INSERT INTO `shopping_cart` (`id`, `grand_total`, `user_id`) VALUES
(6, NULL, 4),
(9, '0.00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` bit(1) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `enabled`, `first_name`, `last_name`, `password`, `phone`, `username`) VALUES
(1, 'admin@gmail.com', b'1', 'Admin', 'Admin', '$2a$12$LtbYtEzOBdnsiD/E9Wtj2OZz80wXDrKDMacktYr8pq3j0X6HO75Fm', NULL, 'admin'),
(4, 'JAdams@gmail.com', b'1', 'John', 'Adams', '$2a$12$LtbYtEzOBdnsiD/E9Wtj2OnpJ1FB7girEHgGVhynqGSFVKGazltGO', NULL, 'j'),
(7, 'vfrshjklg@gmail.com', b'1', 'Thanh', 'Truong', '$2a$12$LtbYtEzOBdnsiD/E9Wtj2O4LzNLMVws6kPxHxi74TFWJVXNWkFLoS', NULL, 'nt0802');

-- --------------------------------------------------------

--
-- Table structure for table `user_billing`
--

CREATE TABLE `user_billing` (
  `id` bigint(20) NOT NULL,
  `user_billing_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_billing_country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_billing_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_billing_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_billing_street1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_billing_street2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_billing_zipcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_payment_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_billing`
--

INSERT INTO `user_billing` (`id`, `user_billing_city`, `user_billing_country`, `user_billing_name`, `user_billing_state`, `user_billing_street1`, `user_billing_street2`, `user_billing_zipcode`, `user_payment_id`) VALUES
(12, 'hcm', NULL, 'Thanh', 'AK', 'hcm', 'hcm', '70000', 11);

-- --------------------------------------------------------

--
-- Table structure for table `user_order`
--

CREATE TABLE `user_order` (
  `id` bigint(20) NOT NULL,
  `order_date` datetime DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_total` decimal(19,2) DEFAULT NULL,
  `shipping_date` datetime DEFAULT NULL,
  `shipping_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address_id` bigint(20) DEFAULT NULL,
  `payment_id` bigint(20) DEFAULT NULL,
  `shipping_address_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_order`
--

INSERT INTO `user_order` (`id`, `order_date`, `order_status`, `order_total`, `shipping_date`, `shipping_method`, `billing_address_id`, `payment_id`, `shipping_address_id`, `user_id`) VALUES
(16, '2021-06-27 16:45:37', 'created', '48.00', NULL, 'groundShipping', 17, 18, 19, 7),
(20, '2021-06-27 16:49:08', 'created', '48.00', NULL, 'groundShipping', 21, 22, 23, 7),
(24, '2021-06-27 16:53:23', 'created', '12.00', NULL, 'groundShipping', 25, 26, 27, 7),
(28, '2021-06-27 16:56:23', 'created', '12.00', NULL, 'groundShipping', 29, 30, 31, 7),
(32, '2021-06-27 17:04:51', 'created', '12.00', NULL, 'groundShipping', 33, 34, 35, 7),
(38, '2021-06-27 17:39:00', 'created', '11.00', NULL, 'groundShipping', 39, 40, 41, 7),
(44, '2021-06-27 17:43:28', 'created', '11.00', NULL, 'groundShipping', 45, 46, 47, 7);

-- --------------------------------------------------------

--
-- Table structure for table `user_payment`
--

CREATE TABLE `user_payment` (
  `id` bigint(20) NOT NULL,
  `card_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvc` int(11) NOT NULL,
  `default_payment` bit(1) NOT NULL,
  `expiry_month` int(11) NOT NULL,
  `expiry_year` int(11) NOT NULL,
  `holder_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_payment`
--

INSERT INTO `user_payment` (`id`, `card_name`, `card_number`, `cvc`, `default_payment`, `expiry_month`, `expiry_year`, `holder_name`, `type`, `user_id`) VALUES
(11, 'Thanh', '123', 123, b'1', 3, 22, 'Truong Van Thanh', 'visa', 7);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_role_id` bigint(20) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_role_id`, `role_id`, `user_id`) VALUES
(2, 0, 1),
(5, 1, 4),
(8, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `user_shipping`
--

CREATE TABLE `user_shipping` (
  `id` bigint(20) NOT NULL,
  `user_shipping_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_shipping_country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_shipping_default` bit(1) NOT NULL,
  `user_shipping_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_shipping_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_shipping_street1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_shipping_street2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_shipping_zipcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_shipping`
--

INSERT INTO `user_shipping` (`id`, `user_shipping_city`, `user_shipping_country`, `user_shipping_default`, `user_shipping_name`, `user_shipping_state`, `user_shipping_street1`, `user_shipping_street2`, `user_shipping_zipcode`, `user_id`) VALUES
(13, 'hcm', NULL, b'1', 'Thanh', 'AK', 'hcm', 'hcm', '70000', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billing_address`
--
ALTER TABLE `billing_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKjg6ji2vsfuqlc9vhvy4yi449h` (`order_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_to_cart_item`
--
ALTER TABLE `book_to_cart_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK254kg9aacrs8uqa93ijc3garu` (`book_id`),
  ADD KEY `FKbdyqr108hc7c06xtem0dhv9mk` (`cart_item_id`);

--
-- Indexes for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKis5hg85qbs5d91etr4mvd4tx6` (`book_id`),
  ADD KEY `FKen9v41ihsnhcr0i7ivsd7i84c` (`order_id`),
  ADD KEY `FKe89gjdx91fxnmkkssyoim8xfu` (`shopping_cart_id`);

--
-- Indexes for table `password_reset_token`
--
ALTER TABLE `password_reset_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK5lwtbncug84d4ero33v3cfxvl` (`user_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKt7a73xusjdnnsuespcitb683h` (`order_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `shipping_address`
--
ALTER TABLE `shipping_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKatbgaqk1hhhhkyyuebylpeh7q` (`order_id`);

--
-- Indexes for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK254qp5akhuaaj9n5co4jww3fk` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_billing`
--
ALTER TABLE `user_billing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3v6hd7snyc3g9s72u41k1fydu` (`user_payment_id`);

--
-- Indexes for table `user_order`
--
ALTER TABLE `user_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKbaytj4l2p74kc5dp2dcrhucjo` (`billing_address_id`),
  ADD KEY `FKqjg5jrh5qwnhl2f9lk7n77454` (`payment_id`),
  ADD KEY `FKo2lj94xaujs1se8whlhc37nj7` (`shipping_address_id`),
  ADD KEY `FKj86u1x7csa8yd68ql2y1ibrou` (`user_id`);

--
-- Indexes for table `user_payment`
--
ALTER TABLE `user_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK8fb9fr82lb1qk2cw55ito9rk6` (`user_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_role_id`),
  ADD KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  ADD KEY `FK859n2jvi8ivhui0rl0esws6o` (`user_id`);

--
-- Indexes for table `user_shipping`
--
ALTER TABLE `user_shipping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9hidca5hndj9y0b5jb0xtpn9u` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
