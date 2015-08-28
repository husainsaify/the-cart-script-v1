-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2015 at 12:07 PM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hk_cart_v1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'test', '098f6bcd4621d373cade4e832627b4f6');

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE IF NOT EXISTS `buy` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `mobile` text NOT NULL,
  `city` text NOT NULL,
  `pincode` int(6) NOT NULL,
  `address` text NOT NULL,
  `booked_time` int(11) NOT NULL,
  `dispatch_time` int(11) NOT NULL,
  `status` text NOT NULL,
  `status_code` int(1) NOT NULL,
  `product_stack` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buy`
--

INSERT INTO `buy` (`id`, `user_id`, `name`, `email`, `mobile`, `city`, `pincode`, `address`, `booked_time`, `dispatch_time`, `status`, `status_code`, `product_stack`) VALUES
(1, 3, 'husain saify', 'test@test.com', '8962239913', 'hopal', 462001, '2 lakherapura', 1440270414, 0, 'Processing', 1, '2,8,'),
(2, 1, 'huzefa', 'test@test.com', '8962239913', 'bhopal', 462001, '2222222222222', 1440309592, 0, 'Processing', 1, '6,'),
(3, 3, 'ali', 'ali@ali.com', '8962239913', 'bhopal', 462001, '2 lakhera', 1440314708, 0, 'Processing', 1, '4,');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `active` varchar(1) NOT NULL,
  `buy_id` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `user_id`, `active`, `buy_id`) VALUES
(1, 8, 3, 'n', '3'),
(3, 2, 3, 'n', '3'),
(4, 6, 1, 'n', '2'),
(5, 4, 3, 'n', '3');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `image`) VALUES
(1, 'Ladies Garments', 'images/dress.jpg'),
(2, 'Mobile Phone', 'images/phone.jpg'),
(3, 'Footwear', 'images/Shoe-Island-Tan-Ankle-Length-SDL054680536-1-1cfe3.jpg'),
(4, 'laptops', 'images/mac-book-air.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE IF NOT EXISTS `offer` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offer`
--

INSERT INTO `offer` (`id`, `image`, `link`) VALUES
(1, 'images/slider-1.jpg', '#'),
(2, 'images/slider-2.jpg', '#'),
(3, 'images/b3740e87e3ea91f04aeff5232c4f857c/slider-3.jpg', 'http://google.comd');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `mp` int(11) NOT NULL,
  `sp` int(11) NOT NULL,
  `off` varchar(4) NOT NULL,
  `shipping` int(11) NOT NULL,
  `tags` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `image`, `description`, `mp`, `sp`, `off`, `shipping`, `tags`) VALUES
(1, 4, 'Asus n76', 'images/asus-n76.jpg', 'One of the best laptops available in the market, the ASUS X200LA-KX034D is powered by Intel 4th Gen Core i3 of 4010U variant (1.70GHz cache speed amd 3MB cache memory). It comes equipped with a 4GB RAM that further enhances the speed of multi-tasking. Its 500GB HDD ensure you get ample space to store all your data. Installed with Intel HD Graphics 4400 and a 29.46cm (11.6) HD Glare Screen which offers crysrtal clear images and makes viewing a pleasure. The 802.11bgn wireless LAN and bluetooth v4.0 ensure you always stay connected, even on the go. At 1.8 kg, it is lightweight and easily portable.', 50000, 45000, '10%', 10, 'laptop,asus laptop,asus n76'),
(2, 4, 'Mac Book Air', 'images/mac-book-air.jpg', 'Elegant look, efficient features and a strong battery backup, the new MacBook Air notebook from Apple will surely prove to be the ''Apple of your Eye''. Equipped with smart features and sleek look, the new MacBook Air gives you more power in your hands. Compact and light in weight, this sleek Apple Notebook encapsulates efficient features with huge storage and a strong battery backup. Powered with Fifth generation Intel Core processor, MacBook Air delivers impeccable performance. Also, the Intel HD Graphics 6000 processor delivers amazing performance while playing games or doing some high-end graphics related tasks. The notebook comes with OS X Yosemite, which offers an intuitive and user-friendly platform. With 4GB RAM, this MacBook enables you to work in a smart way without compromising on the performance factor.\r\nThe MacBook Air is provided with 128GB PCIe-based flash storage that allows users to run their hands on a notebook with amazing storage capacity. With a screen size of 33.02 cm and LED-backlit glossy widescreen display, users can rest assured to enjoy crisp and sharp visuals. Besides, the MacBook features 720p FaceTime HD camera, Stereo Speakers, USB ports, Dual Microphones, Full-size backlit keyboard and a Multi-Touch Trackpad. Talking of the multimedia section, the notebook scores perfectly as it comes with plethora of built-in apps including iPhoto, iMovie, iBook, Safari, FaceTime, Photo Booth, Mac App Store, Game Center, iTunes, etc,. Delivering a strong battery backup of up to 12 hours, this MacBook Air is certainly the perfect choice for users from all walks of life.', 72900, 61859, '15%', 21, 'apple laptop,mac book,macbook'),
(3, 1, 'Rida Fashions Brown Faux Georgette Unstitched Dress Material', 'images/dress.jpg', 'Brand: Rida Fashions, Fabric: Chanderi, Style: Party Wear, Design: Embroidered, Colour : Light Brown, Product: Dress Materials.', 3050, 2099, '45%', 0, 'dress,women dress'),
(4, 1, 'Fashions Black Faux Georgette Unstitched Dress Material', 'images/dress2.jpg', 'Brand: Rida Fashions, Fabric: Faux Georgette Style: Anarkali, Design: Embroidered, Colour : Black, Product: Unstitched Suit With Dupatta.', 5999, 1999, '67%', 0, 'rida,dress,women'),
(5, 2, 'Sony Xperia E1 Dual 4GB Black', 'images/experia.jpg', 'Sony Xperia E1 Dual smartphone is an ideal pick for music lovers and social media buffs. It features an excellent Sony Walkman that allows you to create multiple playlists and share them with your friends. This 3G enabled dual SIM smartphone has 4 inch TFT capacitive touchscreen that renders 16 million colours. You can click pictures with its 3 MP camera and save it in its 4 GB internal memory. Equipped with 1.2 GHz dual-core processor and Android 4.4 KitKat operating system, you can explore endless opportunities with this device in a hassle-free manner. It comes with 1750 mAh Li-Ion battery that provides up to 8 hours and 41 minutes of talk time. You can listen to music for over 35 hours 53 minutes on this device once it is fully charged. Buy Sony Xperia E1 Dual from Snapdeal.com at best possible price and get 1 year Sony India warranty on the product.', 10490, 5490, '48%', 50, 'mobile,sony,experai mobile'),
(6, 2, 'iPhone 6 16 GB', 'images/phone.jpg', 'Apple iPhone 6 exudes elegance and excellence at its best. With iOS 8, the world’s most advanced mobile operating system, and a larger and superior 4.7 inches high definition Retina display screen, this device surpasses any expectations you might have with a mobile phone. Apple iPhone 6 includes a revolutionary NFC Apply Pay Wallet which functions like a credit card. You can shop in the stores or buy stuff online in a secure, private and easy way with a single touch on your iPhone 6 using Apple Pay Wallet.', 56000, 42999, '23%', 0, 'apple iphone,iphone mobile'),
(7, 3, 'Shoe Island Tan Ankle Length Shoes', 'images/Shoe-Island-Tan-Ankle-Length-SDL054680536-1-1cfe3.jpg', 'Simple and minimal design combining with comfort and falling in line with your demand for the latest in fashion, Shoe Island presents an amazing range of footwear for men who want to look perfect for every occasion. This range is suave, fashionable and comfortable. Stylish and classy are the words that define this collection perfectly. Each style reflects passion for footwear and deep understanding of materials and design.', 699, 498, '29%', 0, 'shoes,footware'),
(8, 3, 'mochi shoes', 'images/a5361c1e0bf1eb360dbdfa760524cb67/footware.jpeg', 'mochi shoes hhhhhhhhh', 1500, 1000, '25%', 10, 'mochi shoes,footwear,shoes');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullname`, `email`, `phone`, `password`) VALUES
(1, 'Husain Saify', 'hsnsaify22@gmail.com', '+91-8962239913', '86946bb0c4b6bbbdfda2d5380846f696'),
(2, 'huzefa saify', 'hsaify@rocketmail.com', '8962239913', '86946bb0c4b6bbbdfda2d5380846f696'),
(3, 'test', 'test@test.com', '8962239913', '098f6bcd4621d373cade4e832627b4f6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `buy`
--
ALTER TABLE `buy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `offer`
--
ALTER TABLE `offer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
