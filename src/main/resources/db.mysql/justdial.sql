-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2017 at 07:20 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `justdial`
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

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(10) UNSIGNED NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL,
  `city_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(10) UNSIGNED NOT NULL,
  `state_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `lastlogin` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `FK_city_1` (`state_id`) USING BTREE;

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `FK_city_1` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*16/01/17 product table by rohan*/





CREATE TABLE `keyword` (
  `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `keywordName` VARCHAR(255) NOT NULL,
  `category_id` INTEGER UNSIGNED NOT NULL,
  `subcategory_id` INTEGER UNSIGNED NOT NULL,
  `status` TINYINT UNSIGNED NOT NULL,
  FOREIGN KEY `FK_keyword_1` (`category_id`)
    REFERENCES `category` (`id`)
    ON DELETE CASCADE,
  FOREIGN KEY `FK_keyword_2` (`subcategory_id`)
    REFERENCES `subcategory` (`id`)
    ON DELETE CASCADE
);

CREATE TABLE `businessOwner` (
  `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `companyName` VARCHAR(255) NOT NULL,
  `state_id` INTEGER UNSIGNED NOT NULL,
  `city_id` INTEGER UNSIGNED NOT NULL,
  `ownerName` VARCHAR(255) NOT NULL,
  `mobileNo` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `otp` VARCHAR(255) NOT NULL,
  `otpStatus` TINYINT UNSIGNED NOT NULL,
  `status` TINYINT UNSIGNED NOT NULL,
  `businessName` VARCHAR(255) NOT NULL,
  `address` VARCHAR(255) NOT NULL,
  `streetName` VARCHAR(255),
  `landmarkName` VARCHAR(255),
  `pincode` VARCHAR(255) NOT NULL,
  `landphnNo` VARCHAR(255) NOT NULL,
  `faxNo` VARCHAR(255) NOT NULL,
  `faxNo2` VARCHAR(255) NOT NULL,
  `tollFreeNoOne` VARCHAR(255) NOT NULL,
  `tollFreeNotwo` VARCHAR(255) NOT NULL,
  `websiteName` VARCHAR(255) NOT NULL,
  `businessType` VARCHAR(255) NOT NULL,
  `keywordName` VARCHAR(255) NOT NULL,
  `bannerImage` VARCHAR(255) NOT NULL,
  `logoImage` VARCHAR(255) NOT NULL,
  `pictureImage` VARCHAR(255),
  `videoFile` VARCHAR(255),
  `mapPointing` VARCHAR(255),
  `zipFile` VARCHAR(255),
  `aboutUs` VARCHAR(255) NOT NULL,
  `services` VARCHAR(255) NOT NULL,
  `otherCategories` VARCHAR(255) NOT NULL,
  `productDescription` VARCHAR(255) NOT NULL,
  `keyword_id` INTEGER UNSIGNED NOT NULL,
  `lastLogin` DATETIME NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  FOREIGN KEY `FK_businessOwner_1` (`state_id`)
    REFERENCES `state` (`id`)
    ON DELETE CASCADE,
  FOREIGN KEY `FK_businessOwner_2` (`city_id`)
    REFERENCES `city` (`id`)
    ON DELETE CASCADE,
  FOREIGN KEY `FK_businessOwner_3` (`keyword_id`)
    REFERENCES `keyword` (`id`)
    ON DELETE CASCADE
);
ALTER TABLE `businessowner` CHANGE `otpStatus` `otpStatus` BOOLEAN NOT NULL;
ALTER TABLE `businessowner` CHANGE `status` `status` BOOLEAN NOT NULL;
ALTER TABLE `businessowner` CHANGE `landphnNo` `landphnNo` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL;
ALTER TABLE `businessowner` CHANGE `faxNo` `faxNo` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL;
ALTER TABLE `businessowner` CHANGE `faxNo2` `faxNo2` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL;
ALTER TABLE `businessowner` CHANGE `tollFreeNoOne` `tollFreeNoOne` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL;
ALTER TABLE `businessowner` CHANGE `tollFreeNotwo` `tollFreeNotwo` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL;
ALTER TABLE `businessowner` CHANGE `websiteName` `websiteName` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL;
ALTER TABLE `businessowner` CHANGE `businessType` `businessType` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL;
ALTER TABLE `businessowner` CHANGE `keywordName` `keywordName` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL;
ALTER TABLE `businessowner` CHANGE `bannerImage` `bannerImage` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL;
ALTER TABLE `businessowner` CHANGE `logoImage` `logoImage` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL;
ALTER TABLE `businessowner` CHANGE `aboutUs` `aboutUs` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL;
ALTER TABLE `businessowner` CHANGE `services` `services` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL;
ALTER TABLE `businessowner` CHANGE `otherCategories` `otherCategories` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL;
ALTER TABLE `businessowner` CHANGE `productDescription` `productDescription` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL;
ALTER TABLE `businessowner` CHANGE `password` `password` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL;

CREATE TABLE `employeePosition` (
  `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `positionName` VARCHAR(255) NOT NULL,
  `introducerName` VARCHAR(255) NOT NULL,
  `state_id` INTEGER UNSIGNED,
  `city_id` INTEGER UNSIGNED,
  `ownBusinnersPercent` FLOAT,
  `downlineBusinessPercent` FLOAT,
  `user_id` VARCHAR(255) NOT NULL,
  FOREIGN KEY `FK_employeePosition_1` (`state_id`)
    REFERENCES `state` (`id`)
    ON DELETE CASCADE,
  FOREIGN KEY `FK_employeePosition_2` (`city_id`)
    REFERENCES `city` (`id`)
    ON DELETE CASCADE
);
ALTER TABLE `employeeposition` CHANGE `ownBusinnersPercent` `ownBusinnersPercent` DOUBLE NULL DEFAULT NULL;
ALTER TABLE `employeeposition` CHANGE `downlineBusinessPercent` `downlineBusinessPercent` DOUBLE NULL DEFAULT NULL;

CREATE TABLE `staffentry` (
  `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `firstName` VARCHAR(255) NOT NULL,
  `lastName` VARCHAR(255) NOT NULL,
  `mobileNo` VARCHAR(255) NOT NULL,
  `emailId` VARCHAR(255) NOT NULL,
  `designation` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `confirmPassword` VARCHAR(255) NOT NULL,
  `introducer_id` VARCHAR(255) NOT NULL
);

CREATE TABLE `customerRegistration` (
  `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `firstName` VARCHAR(255) NOT NULL,
  `lastName` VARCHAR(255) NOT NULL,
  `mobileNo` VARCHAR(255) NOT NULL,
  `emailId` VARCHAR(255) NOT NULL,
  `address` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `confirmPassword` VARCHAR(255) NOT NULL,
  `otp` VARCHAR(255) NOT NULL
);

