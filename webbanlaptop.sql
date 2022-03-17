-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2022 at 09:30 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webbanlaptop`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`) VALUES
(1, 'ASUS', NULL),
(2, 'ACER', NULL),
(3, 'HP', NULL),
(4, 'Lenovo', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `id_product`, `name`, `code`, `img`) VALUES
(1, 1, 'Xám', '#808080', 'a.jpg'),
(2, 1, 'Xám', '#808080', 'b.jpg'),
(3, 2, 'Xám', '#808080', 'c.jpg'),
(4, 2, 'Xám', '#808080', 'd.jpg'),
(5, 5, 'Bạc', '#C0C0C0', 'e.jpg'),
(6, 6, 'Bạc', '#C0C0C0', 'g.jpg'),
(7, 7, 'Bạc', '#C0C0C0', 'h.jpg'),
(8, 8, 'Bạc', '#C0C0C0', 'i.jpg'),
(9, 9, 'Bạc', '#C0C0C0', 'b.jpg'),
(10, 10, 'Đen', '#000000', 'b.jpg'),
(11, 11, 'Đen', '#000000', 'b.jpg'),
(12, 12, 'Đen', '#000000', 'b.jpg'),
(13, 13, 'Đen', '#000000', 'b.jpg'),
(14, 14, 'Đen', '#000000', 'b.jpg'),
(15, 15, 'Xám', '#808080', 'b.jpg'),
(16, 16, 'Xám', '#808080', 'b.jpg'),
(17, 17, 'Xám', '#808080', 'b.jpg'),
(18, 18, 'Xám', '#808080', 'b.jpg'),
(19, 19, 'Bạc', '#C0C0C0', 'b.jpg'),
(20, 20, 'Bạc', '#C0C0C0', 'b.jpg'),
(21, 21, 'Bạc', '#C0C0C0', 'b.jpg'),
(22, 22, 'Bạc', '#C0C0C0', 'b.jpg'),
(23, 23, 'Đen', '#000000', 'b.jpg'),
(24, 24, 'Đen', '#000000', 'b.jpg'),
(25, 25, 'Đen', '#000000', 'b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `sale` int(3) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `new_product` tinyint(1) NOT NULL,
  `description` longtext NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `id_category`, `name`, `price`, `sale`, `tittle`, `new_product`, `description`, `create_at`, `update_at`) VALUES
(1, 1, 'Laptop xách tay', 14000000, 0, 'Bây giờ Laptop là 1 trong những công cụ cần thiết nhất trong thế giới tiên tiến này...,', 0, '<div class=\"tab-pane fade active in\" id=\"home\">\r\n			  <h4>Thông tin sản phẩm</h4>\r\n                <table class=\"table table-striped\">\r\n				<tbody>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Color:</td><td class=\"techSpecTD2\">Black</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Style:</td><td class=\"techSpecTD2\">Apparel,Sports</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Season:</td><td class=\"techSpecTD2\">spring/summer</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Usage:</td><td class=\"techSpecTD2\">fitness</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Sport:</td><td class=\"techSpecTD2\">122855031</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Brand:</td><td class=\"techSpecTD2\">Shock Absorber</td></tr>\r\n				</tbody>\r\n				</table>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n\r\n			</div>', '2020-04-09 11:38:43', '2020-04-09 11:47:31'),
(2, 1, 'Name', 200000, 0, 'tital', 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(3, 1, 'Name', 200000, 0, 'tital', 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(4, 1, 'Name', 200000, 0, 'tital', 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(5, 1, 'Name', 200000, 0, 'tital', 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(6, 1, 'Name', 200000, 0, 'tital', 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(7, 1, 'Name', 200000, 0, 'tital', 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(8, 1, 'Name', 200000, 0, 'tital', 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(9, 1, 'Name', 200000, 0, 'tital', 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(10, 1, 'Name', 200000, 0, 'tital', 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(11, 1, 'Name', 200000, 0, 'tital', 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(12, 1, 'Name', 200000, 0, 'tital', 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(13, 1, 'Name', 200000, 0, 'tital', 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(14, 1, 'Name', 200000, 0, 'tital', 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(15, 1, 'Name', 200000, 0, 'tital', 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(16, 1, 'Name', 200000, 0, 'tital', 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(17, 1, 'Name', 200000, 0, 'tital', 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(18, 1, 'Name', 200000, 0, 'tital', 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(19, 1, 'Name', 200000, 0, 'tital', 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(20, 1, 'Name', 200000, 0, 'tital', 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(21, 1, 'Name', 200000, 0, 'tital', 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(22, 1, 'Name', 200000, 0, 'tital', 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(23, 1, 'Name', 200000, 0, 'tital', 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(24, 1, 'Name', 200000, 0, 'tital', 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(25, 1, 'Name', 200000, 0, 'tital', 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(26, 1, 'Name', 200000, 0, 'tital', 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(27, 1, 'Name', 200000, 0, 'tital', 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(28, 1, 'Name', 200000, 0, 'tital', 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `img`) VALUES
(1, 'slide1.jpg\r\n'),
(2, 'slide2.jpg'),
(3, 'slide3.jpg'),
(4, 'slide4.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_category_2` (`id_category`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `colors`
--
ALTER TABLE `colors`
  ADD CONSTRAINT `colors_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
