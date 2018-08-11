-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2017 at 08:24 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qckseek`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `email`, `lastlogin`, `status`, `image`) VALUES
(1, 'superadmin', 'superadmin', '1234', 'superadmin@gmail.com', '2017-01-18 12:55:31', 1, 'kkkk');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_Id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `category_Id`, `name`, `status`) VALUES
(3, 3, 'Lenovo', 1),
(4, 8, 'Labrador', 1),
(5, 7, 'Toshiba', 1),
(6, 6, 'All Education', 1),
(7, 9, 'Kelvinator', 1);

-- --------------------------------------------------------

--
-- Table structure for table `businessdetails`
--

CREATE TABLE `businessdetails` (
  `id` int(10) UNSIGNED NOT NULL,
  `businessName` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `state_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `businessdetails`
--

INSERT INTO `businessdetails` (`id`, `businessName`, `address`, `street`, `landmark`, `state_id`, `city_id`, `pincode`, `owner_id`) VALUES
(6, 'Odex', 'saltlake', 'kolkata', 'Sona', 1, 8, '70003', 7),
(7, 'Spring Infoserv', '------', '-----', '-----', 1, 13, '712136', 8),
(8, 'Dr Kandary''s Nursing Home', 'Jaynagar Majilpur 122/1/121/2 Talpukur', '', '', 1, 8, '700091', 9);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `image`, `icon`, `color`, `status`) VALUES
(2, 'Car', '1462113820-cat2.png', 'fa-car', '787CFF', 1),
(3, 'Mobile', '1462113820-cat2.png', 'fa-mobile', '787CFF', 1),
(4, 'Job', '1462113820-cat2.png', 'fa-Job', '787CFF', 1),
(6, 'Education', 'rohan.jpg', 'fa-book', '787CFF', 1),
(7, 'Electronics', 'rohan.jpeg', 'fa-fa electronics', 'CFF2S', 1),
(8, 'Pets & Animals', 'rohan.jpeg', 'fa-fa pet', 'E00000', 1),
(9, 'Home Appliances', 'rohan.jpeg', 'fa fa-car', 'ffvd', 1),
(10, 'Electrical', 'rohan.jpeg', 'fa fa-circle', 'E00000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(10) UNSIGNED NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `state_id`, `city_name`, `status`) VALUES
(8, 1, 'Kolkata', 1),
(9, 6, 'Mumbai', 1),
(10, 5, 'patna', 1),
(11, 1, 'Salt Lake', 1),
(12, 1, 'Dum Dum', 1),
(13, 1, 'Chandannagar', 1),
(14, 1, 'Howrah', 1),
(15, 1, 'Garia', 1),
(16, 1, 'Alipurduar', 1),
(17, 1, 'Burdwan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contactdetails`
--

CREATE TABLE `contactdetails` (
  `id` int(10) UNSIGNED NOT NULL,
  `contactName` varchar(255) NOT NULL,
  `landline` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) NOT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `fax2` varchar(255) DEFAULT NULL,
  `tollfreeNo` varchar(255) DEFAULT NULL,
  `tollfreeeNo2` varchar(255) DEFAULT NULL,
  `emailId` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `businessType` varchar(255) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactdetails`
--

INSERT INTO `contactdetails` (`id`, `contactName`, `landline`, `mobile`, `fax`, `fax2`, `tollfreeNo`, `tollfreeeNo2`, `emailId`, `website`, `businessType`, `owner_id`) VALUES
(5, 'Sayan saha', '3567890', '8981431261', '12345678', '123456789', '1234567890', '1234567890', 'sayan@odexsoftware.com', 'facebook.com', 'B2C', 7),
(6, 'Rohan Bose', '1234', '9163811844', '123654', '123654', '123654', '123654', 'rohanbs8@gmail.com', 'fb.com', 'B2C', 8),
(7, 'Dr Ashoke Kandary', '03218-220004', '9609292766', '', '', '', '', 'dr.kandarynursinghome@gmail.com', '', 'B2C', 9);

-- --------------------------------------------------------

--
-- Table structure for table `customerregistration`
--

CREATE TABLE `customerregistration` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobileNo` varchar(255) NOT NULL,
  `emailId` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirmPassword` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerregistration`
--

INSERT INTO `customerregistration` (`id`, `name`, `mobileNo`, `emailId`, `address`, `password`, `confirmPassword`, `otp`) VALUES
(1, 'Rohan Bose', '9163811844', 'rohan@odexsoftware.com', 'chandannagar', 'rohan123', 'rohan123', '3458');

-- --------------------------------------------------------

--
-- Table structure for table `employeeposition`
--

CREATE TABLE `employeeposition` (
  `id` int(10) UNSIGNED NOT NULL,
  `positionName` varchar(255) NOT NULL,
  `introducerName` varchar(255) NOT NULL,
  `state_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `ownBusinnersPercent` double DEFAULT NULL,
  `downlineBusinessPercent` double DEFAULT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeeposition`
--

INSERT INTO `employeeposition` (`id`, `positionName`, `introducerName`, `state_id`, `city_id`, `ownBusinnersPercent`, `downlineBusinessPercent`, `user_id`) VALUES
(1, 'HR', 'Admin Head', 5, 10, 5, 3, 'HR-6422'),
(2, 'General Manager', '1', 5, 10, 4, 3, 'General Manager-5642'),
(3, 'ASM', '2', 1, 16, 4, 4, 'ASM-1502');

-- --------------------------------------------------------

--
-- Table structure for table `keyword`
--

CREATE TABLE `keyword` (
  `id` int(10) UNSIGNED NOT NULL,
  `keywordName` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `subcategory_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keyword`
--

INSERT INTO `keyword` (`id`, `keywordName`, `category_id`, `subcategory_id`, `status`) VALUES
(1, 'Latest Mobile', 3, 4, 1),
(2, 'washing machine,top load', 9, 13, 1),
(3, 'rent', 2, 12, 1),
(4, 'abc', 2, 12, 1),
(5, 'Cap', 2, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `usertype`, `status`, `userId`) VALUES
(3, 'sayan@odexsoftware.com', '32565182', 'EMPLOYEE', 1, 7),
(4, 'rohanbs8@gmail.com', '21666615', 'EMPLOYEE', 1, 8),
(5, 'dr.kandarynursinghome@gmail.com', '02560262', 'EMPLOYEE', 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `ownerform`
--

CREATE TABLE `ownerform` (
  `id` int(10) UNSIGNED NOT NULL,
  `companyName` varchar(255) NOT NULL,
  `ownername` varchar(255) NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `mobileNo` varchar(255) NOT NULL,
  `emailId` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `otpStatus` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ownerform`
--

INSERT INTO `ownerform` (`id`, `companyName`, `ownername`, `state_id`, `city_id`, `mobileNo`, `emailId`, `password`, `otp`, `otpStatus`) VALUES
(7, 'Odex', 'Sayan saha', 1, 8, '8981431261', 'sayan@odexsoftware.com', '32565182', '6064', 1),
(8, 'Spring Infoserv', 'Rohan Bose', 1, 8, '9163811844', 'rohanbs8@gmail.com', '21666615', '2521', 1),
(9, 'Dr Kandary''s Nursing Home', 'Dr Ashoke Kandary', 1, 8, '9609292766', 'dr.kandarynursinghome@gmail.com', '02560262', '5266', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ownerkeyword`
--

CREATE TABLE `ownerkeyword` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `subcategory_id` int(10) UNSIGNED NOT NULL,
  `keywordName` varchar(255) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ownerkeyword`
--

INSERT INTO `ownerkeyword` (`id`, `category_id`, `subcategory_id`, `keywordName`, `owner_id`) VALUES
(5, 2, 12, 'Cap, rent, ', 7),
(6, 2, 12, 'rent, Cap, abc, ', 8),
(7, 3, 4, 'Latest Mobile, ', 9);

-- --------------------------------------------------------

--
-- Table structure for table `ownerpicture`
--

CREATE TABLE `ownerpicture` (
  `id` int(10) UNSIGNED NOT NULL,
  `bannerImage` varchar(255) DEFAULT NULL,
  `logoImage` varchar(255) DEFAULT NULL,
  `pictureImage` varchar(255) DEFAULT NULL,
  `videoImage` varchar(255) DEFAULT NULL,
  `mapPointing` varchar(255) DEFAULT NULL,
  `uploadZip` varchar(255) DEFAULT NULL,
  `aboutUs` varchar(255) DEFAULT NULL,
  `service` varchar(255) DEFAULT NULL,
  `otherCategories` varchar(255) DEFAULT NULL,
  `productDesc` varchar(255) DEFAULT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `userId` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ownerpicture`
--

INSERT INTO `ownerpicture` (`id`, `bannerImage`, `logoImage`, `pictureImage`, `videoImage`, `mapPointing`, `uploadZip`, `aboutUs`, `service`, `otherCategories`, `productDesc`, `owner_id`, `userId`) VALUES
(4, 'https://res.cloudinary.com/dnvtutax9/image/upload/v1487162262/1487162225122.jpg', 'https://res.cloudinary.com/dnvtutax9/image/upload/v1487162297/1487162261024.jpg', NULL, NULL, 'Map pointing', NULL, 'About Us', 'Service', 'category', 'seeee', 7, 'Sayan saha-6251'),
(5, 'https://res.cloudinary.com/dnvtutax9/image/upload/v1487317760/1487317743243.jpg', 'https://res.cloudinary.com/dnvtutax9/image/upload/v1487317771/1487317762970.jpg', NULL, NULL, 'map', NULL, '-----', '-------', '--------', '-------', 8, 'Rohan Bose-2516'),
(6, 'https://res.cloudinary.com/dnvtutax9/image/upload/v1487325504/IMG-20170215-WA0001.jpeg', 'https://res.cloudinary.com/dnvtutax9/image/upload/v1487325508/1487325507530.jpg', NULL, NULL, 'map', NULL, 'Nursing Home', 'Clinic,Doctor', 'Diagnostic', 'Health Center', 9, 'Dr Ashoke Kandary-6222');

-- --------------------------------------------------------

--
-- Table structure for table `packagetable`
--

CREATE TABLE `packagetable` (
  `id` int(11) NOT NULL,
  `package_name` varchar(255) NOT NULL,
  `package_details` text NOT NULL,
  `package_validity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packagetable`
--

INSERT INTO `packagetable` (`id`, `package_name`, `package_details`, `package_validity`) VALUES
(1, 'Free', 'Free', 30),
(2, 'Silver', 'Rupees 1000', 60),
(3, 'Gold', 'Rupees  2000', 90),
(4, 'Platinum', 'Rupees  3000', 120);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `subcategory_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `productDesc` varchar(255) NOT NULL,
  `productCond` varchar(255) NOT NULL,
  `itemPrice` double NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `userNumber` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `buttonType` varchar(255) NOT NULL,
  `buttonLink` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staffentry`
--

CREATE TABLE `staffentry` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `mobileNo` varchar(255) NOT NULL,
  `emailId` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirmPassword` varchar(255) NOT NULL,
  `introducer_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(10) UNSIGNED NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `state_name`, `status`) VALUES
(1, 'West Bengal', 1),
(2, 'Karnataka', 1),
(3, 'TamilNadu', 1),
(5, 'Bihar', 1),
(6, 'Maharasta', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_Id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `category_Id`, `name`, `status`) VALUES
(4, 3, 'Lenovo', 1),
(7, 8, 'Dogs', 1),
(12, 2, 'Ola Cabs', 1),
(13, 9, 'Washingmachine', 1),
(14, 10, 'Fan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `emailId` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `package_id` int(11) NOT NULL,
  `package_start_date` date NOT NULL,
  `package_last_date` date NOT NULL,
  `blockDate` date DEFAULT NULL,
  `lastLogin` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `otpStatus` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `emailId`, `user_id`, `phone`, `password`, `image`, `package_id`, `package_start_date`, `package_last_date`, `blockDate`, `lastLogin`, `status`, `otp`, `otpStatus`) VALUES
(26, 'sayan saha', 'sayan@gmail.com', 'sayan-pVWv', '8981431261', '12345', NULL, 1, '2017-02-03', '2017-03-05', NULL, '2017-02-10 19:57:02', 1, 'pVWv', 1),
(27, 'Rohan Bose', 'rohanbs8@gmail.com', 'Rohan-31BI', '9163811844', '1234', NULL, 2, '2017-02-03', '2017-04-04', NULL, '2017-02-03 17:09:11', 1, '31BI', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_brand_1` (`category_Id`);

--
-- Indexes for table `businessdetails`
--
ALTER TABLE `businessdetails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `FK_businessDetails_3` (`owner_id`,`businessName`),
  ADD KEY `FK_businessDetails_1` (`state_id`),
  ADD KEY `FK_businessDetails_2` (`city_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `FK_city_2` (`id`),
  ADD KEY `FK_city_1` (`state_id`);

--
-- Indexes for table `contactdetails`
--
ALTER TABLE `contactdetails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `FK_contactDetails_1` (`owner_id`,`landline`);

--
-- Indexes for table `customerregistration`
--
ALTER TABLE `customerregistration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employeeposition`
--
ALTER TABLE `employeeposition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_employeePosition_1` (`state_id`),
  ADD KEY `FK_employeePosition_2` (`city_id`);

--
-- Indexes for table `keyword`
--
ALTER TABLE `keyword`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_keyword_1` (`category_id`),
  ADD KEY `FK_keyword_2` (`subcategory_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ownerform`
--
ALTER TABLE `ownerform`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ownerForm_1` (`state_id`),
  ADD KEY `FK_ownerForm_2` (`city_id`);

--
-- Indexes for table `ownerkeyword`
--
ALTER TABLE `ownerkeyword`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `FK_ownerkeyword_3` (`owner_id`,`category_id`),
  ADD KEY `FK_ownerkeyword_1` (`category_id`),
  ADD KEY `FK_ownerkeyword_2` (`subcategory_id`);

--
-- Indexes for table `ownerpicture`
--
ALTER TABLE `ownerpicture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ownerPicture_1` (`owner_id`);

--
-- Indexes for table `packagetable`
--
ALTER TABLE `packagetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_product_1` (`category_id`),
  ADD KEY `FK_product_2` (`subcategory_id`),
  ADD KEY `FK_product_3` (`brand_id`),
  ADD KEY `FK_product_4` (`state_id`),
  ADD KEY `FK_product_5` (`city_id`);

--
-- Indexes for table `staffentry`
--
ALTER TABLE `staffentry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_subcategory_1` (`category_Id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `businessdetails`
--
ALTER TABLE `businessdetails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `contactdetails`
--
ALTER TABLE `contactdetails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `customerregistration`
--
ALTER TABLE `customerregistration`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `employeeposition`
--
ALTER TABLE `employeeposition`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `keyword`
--
ALTER TABLE `keyword`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ownerform`
--
ALTER TABLE `ownerform`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ownerkeyword`
--
ALTER TABLE `ownerkeyword`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ownerpicture`
--
ALTER TABLE `ownerpicture`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `packagetable`
--
ALTER TABLE `packagetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `staffentry`
--
ALTER TABLE `staffentry`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `brand`
--
ALTER TABLE `brand`
  ADD CONSTRAINT `FK_brand_1` FOREIGN KEY (`category_Id`) REFERENCES `category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `businessdetails`
--
ALTER TABLE `businessdetails`
  ADD CONSTRAINT `FK_businessDetails_1` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_businessDetails_2` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `FK_city_1` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employeeposition`
--
ALTER TABLE `employeeposition`
  ADD CONSTRAINT `FK_employeePosition_1` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_employeePosition_2` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `keyword`
--
ALTER TABLE `keyword`
  ADD CONSTRAINT `FK_keyword_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_keyword_2` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategory` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ownerform`
--
ALTER TABLE `ownerform`
  ADD CONSTRAINT `FK_ownerForm_1` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_ownerForm_2` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ownerkeyword`
--
ALTER TABLE `ownerkeyword`
  ADD CONSTRAINT `FK_ownerkeyword_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_ownerkeyword_2` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategory` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ownerpicture`
--
ALTER TABLE `ownerpicture`
  ADD CONSTRAINT `FK_ownerPicture_1` FOREIGN KEY (`owner_id`) REFERENCES `ownerform` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_product_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_product_2` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategory` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_product_3` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_product_4` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_product_5` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `FK_subcategory_1` FOREIGN KEY (`category_Id`) REFERENCES `category` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
