-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 23, 2017 at 04:36 PM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone_id` int(11) DEFAULT NULL,
  `house_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `road_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `fax` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `phone_id`, `house_no`, `road_no`, `area`, `district`, `restaurant_id`, `fax`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '12/a', '10', 'dhanmondi', 'Dhaka', 1, '456542535', 1, '2017-10-17 12:01:12', '2017-10-18 11:58:27'),
(2, 2147483647, '9845', '1844', 'Gulshan', 'Dhaka', 5, '4544534364', 1, '2017-10-17 12:01:12', '2017-10-19 09:37:54'),
(3, 3, '19/b', '1', 'Mirpur', 'Dhaka', 1, '23453442453', 1, '2017-10-17 12:01:12', '2017-10-18 11:58:46'),
(4, 4, '12/m', '29', 'dhanmondi', 'Dhaka', 2, '5434253', 1, '2017-10-17 12:01:12', '2017-10-18 11:58:33'),
(5, 5, '92', '90', 'Chirir Bandar', 'Dinajpur', 2, '435434253', 1, '2017-10-17 12:01:12', '2017-10-18 11:58:44'),
(6, 6, '2', '77', 'Banani', 'Dhaka', 9, '543623543', 1, '2017-10-17 12:01:12', '2017-10-19 11:22:56'),
(7, 7, '12/g', '55', 'Banani', 'Dhaka', 3, '24354543425', 1, '2017-10-17 12:01:12', '2017-10-18 11:58:42'),
(8, 8, '12', '15', 'dhanmondi', 'Dhaka', 4, '45354', 1, '2017-10-17 12:01:12', '2017-10-18 11:58:40'),
(9, 9, '109', '12', 'dhanmondi', 'Dhaka', 5, '4325364', 1, '2017-10-17 12:01:12', '2017-10-18 11:58:38'),
(10, 10, '208', '89', 'Jahaj Company Mor', 'Rangpur', 6, '23456', 0, '2017-10-17 12:01:12', '2017-10-18 11:58:24'),
(14, 12333423, '21', '12', 'Gulshan', 'Dhaka', 2, '23123432', 1, '2017-10-18 03:33:40', '2017-10-18 11:02:58');

-- --------------------------------------------------------

--
-- Table structure for table `complains`
--

CREATE TABLE `complains` (
  `id` int(10) UNSIGNED NOT NULL,
  `complain_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complain_message` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complains`
--

INSERT INTO `complains` (`id`, `complain_title`, `complain_message`, `user_id`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, 'Stuff Behavior', 'Your Stuff behavior is very bad. Please take care about it', 1, 3, '2017-09-19 23:38:17', '2017-10-21 05:37:50'),
(2, 'About Stuff', 'Your Restaurant Behavior is not good', 1, 3, '2017-09-26 04:37:11', '2017-10-21 05:37:52'),
(3, 'Food Quality', 'Please upgrade your restaurant food quality', 3, 2, '2017-09-26 04:38:20', '2017-10-23 07:54:15'),
(4, 'new complain', 'new complain message', 4, 3, '2017-10-15 23:25:01', '2017-10-23 07:54:10'),
(5, 'new title', 'no mesage', 4, 3, '2017-10-20 23:47:03', '2017-10-23 07:50:38'),
(6, 'fd', 'fdgf', 4, 3, '2017-10-20 23:47:56', '2017-10-20 23:47:56');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_value` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `coupon_description` text COLLATE utf8mb4_unicode_ci,
  `expired_date` date DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `food_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `coupon_value`, `type`, `coupon_description`, `expired_date`, `active`, `food_id`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, '121212', '15', 1, 'General', '2017-09-30', 1, NULL, 3, '2017-09-19 23:36:42', '2017-10-21 05:43:21'),
(2, '151515', '15', 3, 'Others', '2017-10-07', 1, NULL, 3, '2017-09-26 04:36:19', '2017-10-21 05:42:51'),
(3, '141414', '16', 1, 'dd', '2017-11-03', 1, NULL, 2, '2017-10-20 23:38:19', '2017-10-21 05:43:49'),
(4, '131213', '23', 1, 'asdsfdgfh', '2017-10-21', 1, NULL, 2, '2017-10-20 23:40:07', '2017-10-21 05:43:52'),
(6, '151512', '22', 1, '13', '2017-10-04', 1, NULL, 3, '2017-10-20 23:54:38', '2017-10-20 23:54:38');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipe` text COLLATE utf8mb4_unicode_ci,
  `menu_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `food_on` int(11) NOT NULL DEFAULT '1',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` int(11) DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `name`, `recipe`, `menu_id`, `price`, `food_on`, `active`, `branch_id`, `comments`, `created_at`, `updated_at`) VALUES
(1, 'Nuddles 1', 'NEw Nuddles 1', 4, 1200, 0, 1, 3, NULL, '2017-09-20 23:02:27', '2017-10-21 10:06:32'),
(3, 'Burger', 'Indian Burger', 3, 100, 1, 1, 3, NULL, '2017-09-20 23:10:01', '2017-10-21 10:06:35'),
(4, 'new Food 221', 'neww food', 2, 150, 0, 1, 3, NULL, '2017-09-20 23:22:22', '2017-10-21 10:06:36'),
(5, 'NEw Salad 21', 'New Salad 21', 1, 200, 1, 1, 3, NULL, '2017-09-22 22:34:03', '2017-10-21 10:06:38'),
(7, 'NEw Dish 2', 'New dish 2', 1, 200, 0, 1, 3, NULL, '2017-09-22 22:36:01', '2017-10-21 10:06:40'),
(8, 'Rice Dish', 'NEw Rice Recipe', 5, 200, 0, 1, 3, NULL, '2017-09-23 06:27:37', '2017-10-21 10:06:42'),
(9, 'pizza', 'new pizza', 2, 206, 1, 1, 3, NULL, '2017-09-23 12:25:16', '2017-10-21 10:06:45'),
(11, 'Pasta', 'New Pasta 1', 4, 2001, 1, 1, 3, NULL, '2017-09-27 04:00:00', '2017-10-21 10:06:47'),
(12, 'Pasta 34', 'New Pasta', 4, 244, 1, 1, 3, NULL, '2017-10-03 06:07:53', '2017-10-21 10:06:50'),
(13, 'Drinks', 'New Drinks', 4, 200, 1, 1, 3, NULL, '2017-10-04 06:18:37', '2017-10-21 10:06:52'),
(16, 'Latuce', 'New Burger Description', 1, 300, 1, 1, 3, NULL, '2017-10-04 06:21:40', '2017-10-21 10:06:51'),
(17, 'New food 3', 'NEw food 3 description', 6, 300, 1, 1, 3, NULL, '2017-10-04 06:22:46', '2017-10-21 10:07:05'),
(18, 'Ice Cream 2', 'New Ice cream 2 description', 1, 400, 1, 1, 3, NULL, '2017-10-04 06:23:37', '2017-10-21 10:07:04'),
(19, 'Pasta 12', 'New Pasta Description', 5, 200, 1, 1, 32, NULL, '2017-10-04 06:25:06', '2017-10-22 07:17:32'),
(20, 'Strabery Cake', 'new cake description', 6, 600, 0, 1, 3, NULL, '2017-10-04 06:26:05', '2017-10-21 10:38:46'),
(21, 'New Fusca', 'NEw Fuscar Description', 3, 200, 0, 1, 3, NULL, '2017-10-04 06:27:05', '2017-10-21 10:06:58'),
(22, 'Pasta 29', 'New Pasta Description', 4, 400, 0, 1, 3, NULL, '2017-10-04 06:34:06', '2017-10-21 10:06:57'),
(23, 'ewqedfg', 'qsdffd', 5, 211, 1, 1, 2, NULL, '2017-10-21 04:01:35', '2017-10-21 10:12:35'),
(24, 'Cold Co', 'dcdsfd', 8, 100, 1, 1, 3, NULL, '2017-10-21 04:04:35', '2017-10-22 09:21:01');

-- --------------------------------------------------------

--
-- Table structure for table `food_ingredients`
--

CREATE TABLE `food_ingredients` (
  `id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `ingredients_id` int(11) NOT NULL,
  `amount` double(11,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `branch_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_ingredients`
--

INSERT INTO `food_ingredients` (`id`, `food_id`, `ingredients_id`, `amount`, `status`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, 1, 9, 12.00, 1, 3, '2017-10-22 05:46:35', '2017-10-22 05:46:35'),
(3, 1, 14, 0.50, 1, 3, '2017-10-22 05:46:39', '2017-10-22 05:46:39'),
(4, 2, 6, 2.00, 1, 3, '2017-10-22 05:46:41', '2017-10-22 05:46:41'),
(5, 2, 1, 1.20, 1, 3, '2017-10-22 05:46:43', '2017-10-22 05:46:43'),
(6, 3, 3, 1.00, 1, 3, '2017-10-22 05:46:46', '2017-10-22 05:46:46'),
(7, 3, 11, 2.00, 1, 3, '2017-10-22 05:46:48', '2017-10-22 05:46:48'),
(8, 3, 8, 3.00, 1, 3, '2017-10-22 05:46:51', '2017-10-22 05:46:51'),
(9, 3, 14, 2.00, 1, 3, '2017-10-22 05:46:54', '2017-10-22 05:46:54'),
(10, 4, 14, 1.00, 1, 3, '2017-10-22 05:46:57', '2017-10-22 05:46:57'),
(11, 4, 8, 2.00, 1, 3, '2017-10-22 05:46:59', '2017-10-22 05:46:59'),
(12, 5, 14, 0.30, 1, 3, '2017-10-22 05:47:01', '2017-10-22 05:47:01'),
(13, 5, 15, 0.40, 1, 3, '2017-10-22 05:47:03', '2017-10-22 05:47:03'),
(15, 7, 17, 0.50, 1, 3, '2017-10-22 05:47:06', '2017-10-22 05:47:06'),
(16, 7, 13, 0.34, 1, 3, '2017-10-22 05:47:08', '2017-10-22 05:47:08'),
(17, 7, 4, 0.90, 1, 3, '2017-10-22 05:47:10', '2017-10-22 05:47:10'),
(18, 8, 12, 1.00, 1, 3, '2017-10-22 05:47:12', '2017-10-22 05:47:12'),
(19, 8, 10, 1.50, 1, 3, '2017-10-22 05:48:16', '2017-10-22 05:48:16'),
(20, 8, 11, 2.50, 1, 3, '2017-10-22 05:48:19', '2017-10-22 05:48:19'),
(21, 8, 14, 3.00, 1, 3, '2017-10-22 05:48:24', '2017-10-22 05:48:24'),
(22, 8, 17, 1.50, 1, 3, '2017-10-22 05:48:17', '2017-10-22 05:48:17'),
(24, 9, 11, 12.00, 1, 3, '2017-10-22 05:48:20', '2017-10-22 05:48:20'),
(25, 9, 14, 2.00, 1, 3, '2017-10-22 05:48:30', '2017-10-22 05:48:30'),
(26, 9, 12, 4.00, 1, 3, '2017-10-22 05:48:38', '2017-10-22 05:48:38'),
(27, 10, 8, 21.00, 1, 3, '2017-10-22 05:48:41', '2017-10-22 05:48:41'),
(28, 10, 15, 1.00, 1, 3, '2017-10-22 05:48:43', '2017-10-22 05:48:43'),
(29, 10, 18, 2.20, 1, 3, '2017-10-22 05:48:45', '2017-10-22 05:48:45'),
(30, 10, 1, 12.00, 1, 3, '2017-10-22 05:48:55', '2017-10-22 05:48:55'),
(31, 11, 12, 12.00, 1, 3, '2017-10-22 05:49:00', '2017-10-22 05:49:00'),
(32, 11, 17, 12.30, 1, 3, '2017-10-22 05:49:04', '2017-10-22 05:49:04'),
(33, 11, 9, 1.00, 1, 3, '2017-10-22 05:49:02', '2017-10-22 05:49:02'),
(34, 12, 3, 12.00, 1, 3, '2017-10-22 05:49:06', '2017-10-22 05:49:06'),
(35, 12, 8, 2.00, 1, 3, '2017-10-22 05:49:05', '2017-10-22 05:49:05'),
(36, 13, 13, 2.00, 1, 3, '2017-10-22 05:49:10', '2017-10-22 05:49:10'),
(37, 13, 8, 2.50, 1, 3, '2017-10-22 05:48:08', '2017-10-22 05:48:08'),
(38, 14, 15, 0.40, 1, 3, '2017-10-22 05:48:06', '2017-10-22 05:48:06'),
(39, 14, 1, 0.80, 1, 3, '2017-10-22 05:49:14', '2017-10-22 05:49:14'),
(40, 16, 14, 3.00, 1, 3, '2017-10-22 05:48:10', '2017-10-22 05:48:10'),
(41, 16, 12, 3.50, 1, 3, '2017-10-22 05:48:05', '2017-10-22 05:48:05'),
(42, 17, 3, 1.00, 1, 3, '2017-10-22 05:48:03', '2017-10-22 05:48:03'),
(43, 17, 8, 2.20, 1, 3, '2017-10-22 05:48:02', '2017-10-22 05:48:02'),
(44, 18, 9, 3.20, 1, 3, '2017-10-22 05:48:01', '2017-10-22 05:48:01'),
(45, 18, 11, 2.00, 1, 3, '2017-10-22 05:47:48', '2017-10-22 05:47:48'),
(46, 19, 12, 2.00, 1, 3, '2017-10-22 05:47:47', '2017-10-22 05:47:47'),
(47, 19, 18, 2.00, 1, 3, '2017-10-22 05:47:46', '2017-10-22 05:47:46'),
(48, 20, 8, 2.00, 1, 3, '2017-10-22 05:47:51', '2017-10-22 05:47:51'),
(49, 20, 14, 2.30, 1, 3, '2017-10-22 05:47:30', '2017-10-22 05:47:30'),
(50, 20, 12, 0.50, 1, 3, '2017-10-22 05:47:44', '2017-10-22 05:47:44'),
(51, 20, 16, 0.90, 1, 3, '2017-10-22 05:47:28', '2017-10-22 05:47:28'),
(52, 21, 12, 2.00, 1, 3, '2017-10-22 05:47:42', '2017-10-22 05:47:42'),
(53, 21, 2, 1.00, 1, 3, '2017-10-22 05:47:41', '2017-10-22 05:47:41'),
(54, 21, 17, 2.00, 1, 3, '2017-10-22 05:47:27', '2017-10-22 05:47:27'),
(55, 22, 9, 3.00, 1, 3, '2017-10-22 05:47:25', '2017-10-22 05:47:25'),
(56, 22, 11, 2.00, 1, 3, '2017-10-22 05:47:24', '2017-10-22 05:47:24'),
(57, 23, 9, 2.00, 1, 3, '2017-10-22 05:47:32', '2017-10-22 05:47:32'),
(58, 23, 8, 2.00, 1, 3, '2017-10-22 05:47:34', '2017-10-22 05:47:34'),
(59, 23, 17, 12.00, 1, 3, '2017-10-22 05:47:37', '2017-10-22 05:47:37'),
(60, 23, 17, 1.00, 1, 3, '2017-10-22 05:47:23', '2017-10-22 05:47:23'),
(61, 24, 17, 1.00, 1, 3, '2017-10-22 05:55:40', '2017-10-22 05:55:40'),
(62, 24, 18, 2.00, 1, 2, '2017-10-21 04:04:35', '2017-10-21 04:04:35');

-- --------------------------------------------------------

--
-- Table structure for table `food_types`
--

CREATE TABLE `food_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `ingredients_type_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_types`
--

INSERT INTO `food_types` (`id`, `ingredients_type_name`, `active`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, 'Bread', 1, 3, '2017-09-19 23:32:46', '2017-10-21 06:18:31'),
(2, 'Water', 1, 3, '2017-09-19 23:32:46', '2017-10-21 06:18:34'),
(3, 'Drinks', 1, 3, '2017-09-19 23:32:46', '2017-10-21 06:18:37'),
(4, 'Rice', 1, 3, '2017-09-19 23:32:46', '2017-10-21 06:18:39'),
(5, 'Vegetable', 1, 3, '2017-09-19 23:32:46', '2017-10-21 06:18:42'),
(6, 'Soup', 1, 2, '2017-09-19 23:32:46', '2017-10-21 06:18:46'),
(7, 'Glosary', 1, 2, '2017-09-20 01:47:13', '2017-10-21 06:18:48'),
(8, 'AAA', 1, 3, '2017-10-21 01:44:15', '2017-10-21 07:46:36'),
(9, 'aaa', 1, 3, '2017-10-21 01:45:39', '2017-10-21 07:46:33'),
(10, 'asa', 1, 3, '2017-10-21 01:46:21', '2017-10-21 07:51:21'),
(11, 'asada', 1, 3, '2017-10-21 01:52:01', '2017-10-21 01:52:01');

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `food_type_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `name`, `total_amount`, `food_type_id`, `unit_id`, `active`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, 'Mum Water', 96, 2, 2, 1, 1, '2017-09-04 23:32:45', '2017-10-21 12:49:20'),
(5, 'Burger', 300, 1, 3, 1, 3, '2017-09-19 23:32:45', '2017-10-21 06:19:30'),
(6, 'Indian Burger', 30, 1, 3, 1, 3, '2017-09-19 23:32:45', '2017-10-21 06:19:32'),
(7, 'Bear', 111, 3, 3, 1, 32, '2017-09-11 23:32:45', '2017-10-22 05:31:47'),
(8, 'Caca Cola', 107, 3, 3, 1, 3, '2017-09-22 23:32:46', '2017-10-21 06:19:37'),
(9, 'Mounten Due', 32, 3, 3, 1, 2, '2017-09-23 23:32:46', '2017-10-22 05:31:51'),
(10, 'Miniket Rice', 76, 4, 1, 1, 3, '2017-09-19 23:32:46', '2017-10-21 00:21:12'),
(11, 'Special Najirshail', 454, 4, 1, 1, 3, '2017-09-19 23:32:46', '2017-10-21 06:19:38'),
(12, 'Cinigura', 270, 4, 1, 1, 3, '2017-09-19 23:32:46', '2017-10-22 05:29:43'),
(13, 'Carot', 55, 5, 1, 1, 3, '2017-09-19 23:32:46', '2017-10-21 12:46:29'),
(14, 'Potato', -17, 5, 1, 1, 3, '2017-09-19 23:32:46', '2017-10-22 05:29:43'),
(15, 'Lettuce', 21, 5, 3, 1, 2, '2017-09-19 23:32:46', '2017-10-21 06:19:49'),
(16, 'Thai Soup', 220.1, 6, 3, 1, 2, '2017-09-24 23:32:46', '2017-10-21 12:15:37'),
(17, 'Indian Soup', 64.9, 6, 1, 1, 2, '2017-09-19 23:32:46', '2017-10-22 05:22:06'),
(18, 'Chinies Soup', 94, 6, 1, 1, 2, '2017-09-12 23:32:46', '2017-10-22 05:22:06'),
(19, 'Mug Dal', 12, 4, 1, 1, 3, '2017-09-25 01:45:38', '2017-10-21 06:26:12'),
(20, 'Coffe', 3, 2, 1, 1, 8, '2017-10-21 01:32:58', '2017-10-21 12:50:04');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount_total` int(11) NOT NULL,
  `grand_total` int(11) NOT NULL,
  `vat` int(11) NOT NULL,
  `previous_due` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_payments`
--

CREATE TABLE `invoice_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `transaction_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` tinyint(4) NOT NULL,
  `tax` int(11) NOT NULL DEFAULT '0',
  `coupon_discount` int(11) NOT NULL DEFAULT '0',
  `paid_amount` int(11) NOT NULL,
  `due_amount` int(11) NOT NULL DEFAULT '0',
  `adjustment` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` int(11) DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_payments`
--

INSERT INTO `invoice_payments` (`id`, `order_id`, `amount`, `transaction_number`, `payment_type`, `tax`, `coupon_discount`, `paid_amount`, `due_amount`, `adjustment`, `status`, `branch_id`, `comments`, `created_at`, `updated_at`) VALUES
(1, 1, 1700, NULL, 1, 86, 285, 1701, 0, NULL, 1, 3, 'No comments', '2017-09-21 00:40:38', '2017-10-21 13:01:11'),
(2, 3, 2665, NULL, 1, 115, 0, 2600, 65, NULL, 1, 3, 'bhj', '2017-09-21 00:45:47', '2017-10-21 13:01:13'),
(3, 2, 2665, NULL, 1, 115, 0, 2600, 65, NULL, 1, 3, NULL, '2017-09-21 06:41:26', '2017-10-21 13:01:16'),
(5, 4, 7106, NULL, 1, 306, 0, 7100, 6, NULL, 1, 3, NULL, '2017-09-20 06:45:18', '2017-10-21 13:10:24'),
(6, 5, 313, NULL, 1, 16, 0, 313, 0, NULL, 1, 2, NULL, '2017-09-23 06:23:56', '2017-10-21 13:10:27'),
(7, 7, 358, NULL, 1, 18, 0, 358, 0, NULL, 1, 2, NULL, '2017-09-23 06:29:11', '2017-10-21 13:10:30'),
(8, 5, 313, NULL, 1, 16, 0, 313, 0, NULL, 1, 2, NULL, '2017-09-27 06:34:19', '2017-10-21 13:11:44'),
(9, 24, 2299, '21332435464', 2, 99, 0, 2299, 0, NULL, 1, 3, NULL, '2017-10-05 00:05:37', '2017-10-21 13:10:32');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_submenu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `has_submenu`, `parent_id`, `active`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, 'Bangladeshi', NULL, 0, 1, 3, '2017-09-20 01:49:04', '2017-10-21 08:08:23'),
(2, 'Thai', NULL, 0, 1, 3, '2017-09-20 01:49:10', '2017-10-21 08:08:26'),
(3, 'Indian', NULL, 0, 1, 3, '2017-09-20 01:49:18', '2017-10-21 08:08:29'),
(4, 'Italian', NULL, 0, 1, 2, '2017-09-20 01:49:28', '2017-10-21 08:08:33'),
(5, 'Rice', NULL, 1, 1, 2, '2017-09-20 01:50:41', '2017-10-21 08:08:35'),
(6, 'Meat', NULL, 1, 1, 3, '2017-09-20 01:50:55', '2017-10-21 08:08:38'),
(7, 'thai soup', NULL, 2, 1, 3, '2017-09-20 01:51:15', '2017-10-21 08:08:40'),
(8, 'hadrabadi biriyani', NULL, 3, 1, 2, '2017-09-20 01:51:41', '2017-10-21 08:08:42'),
(9, 'Miniket Rice', NULL, 5, 1, 3, '2017-09-20 01:52:50', '2017-10-21 08:08:44'),
(10, 'new', NULL, 0, 1, 3, '2017-09-28 06:32:26', '2017-10-21 08:08:49'),
(11, 'new 2', NULL, 10, 1, 3, '2017-09-28 06:33:00', '2017-10-21 08:08:45'),
(13, 'new 3', NULL, 0, 1, 3, '2017-10-21 02:12:24', '2017-10-21 09:56:13');

-- --------------------------------------------------------

--
-- Table structure for table `menu_types`
--

CREATE TABLE `menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `branch_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(154, '2014_10_12_000000_create_users_table', 1),
(155, '2014_10_12_100000_create_password_resets_table', 1),
(156, '2017_07_17_111844_create_photos_table', 1),
(157, '2017_07_17_120244_create_coupons_table', 1),
(158, '2017_07_17_121811_create_complains_table', 1),
(159, '2017_07_17_122616_create_reviews_table', 1),
(160, '2017_07_18_045918_create_waste_products_table', 1),
(161, '2017_07_18_051422_create_units_table', 1),
(162, '2017_07_18_051713_create_suppliers_table', 1),
(163, '2017_07_18_052603_create_purchases_table', 1),
(164, '2017_07_18_053034_create_invoices_table', 1),
(165, '2017_07_18_053522_create_invoice_payments_table', 1),
(166, '2017_07_18_060547_create_foods_table', 1),
(167, '2017_07_18_060613_create_food_ingredients_table', 1),
(168, '2017_07_18_060622_create_ingredients_table', 1),
(169, '2017_07_18_060642_create_food_types_table', 1),
(170, '2017_07_18_060658_create_menu_types_table', 1),
(171, '2017_07_18_060718_create_submenus_table', 1),
(172, '2017_07_18_060738_create_menus_table', 1),
(173, '2017_07_18_060746_create_orders_table', 1),
(174, '2017_09_07_105417_create_order_details_table', 1),
(175, '2017_09_09_053721_create_shippings_table', 1),
(176, '2017_09_25_054946_create_shoppingcart_table', 2),
(177, '2017_09_26_111331_create_wasted_foods_table', 2),
(178, '2017_09_26_153830_create_roles_table', 3),
(179, '2017_10_10_064428_create_supplier_payments_table', 4),
(180, '2017_10_17_094726_create_restaurant_features_table', 5),
(181, '2017_10_17_094754_create_restaurants_table', 5),
(182, '2017_10_17_094808_create_branches_table', 5),
(183, '2017_10_17_094823_create_features_table', 5),
(184, '2017_10_17_102227_create_phones_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `shipping_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `coupon_discount` double(11,2) DEFAULT '0.00',
  `tax` double(11,2) NOT NULL DEFAULT '0.00',
  `order_total` double(11,2) NOT NULL,
  `sub_total` double(11,2) NOT NULL,
  `order_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 = new order, 2 = order processing, 3= order finish',
  `required_time` int(11) DEFAULT NULL,
  `is_payment_finish` tinyint(4) NOT NULL DEFAULT '0',
  `branch_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `shipping_id`, `payment_id`, `coupon_discount`, `tax`, `order_total`, `sub_total`, `order_status`, `required_time`, `is_payment_finish`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, 1111, 1234, NULL, 285.00, 85.50, 1700.50, 1900.00, 3, 120, 1, 3, '2017-09-20 23:32:05', '2017-10-21 11:01:54'),
(2, 1111, 132, NULL, NULL, 114.75, 2664.75, 2550.00, 3, 300, 1, 3, '2017-09-20 23:55:33', '2017-10-21 11:01:56'),
(3, 1111, 21232, NULL, 0.00, 114.75, 2664.75, 2550.00, 3, 300, 1, 3, '2017-09-21 00:23:30', '2017-10-21 11:02:00'),
(4, 1111, 12, NULL, 0.00, 306.00, 7106.00, 6800.00, 3, 300, 1, 3, '2017-09-21 00:25:20', '2017-10-21 11:01:58'),
(5, 1111, 1234, NULL, 0.00, 15.75, 313.25, 350.00, 3, 540, 1, 3, '2017-09-23 04:13:01', '2017-10-21 11:01:57'),
(6, 1111, 213, NULL, 0.00, 9.00, 209.00, 200.00, 3, 600, 0, 3, '2017-09-23 05:58:47', '2017-10-21 11:02:01'),
(7, 1111, 4534, NULL, 0.00, 18.00, 358.00, 400.00, 3, 180, 1, 3, '2017-09-23 06:28:03', '2017-10-21 11:02:04'),
(8, 1111, 1222, NULL, 0.00, 18.54, 430.54, 412.00, 3, 300, 0, 3, '2017-09-23 12:39:08', '2017-10-21 11:02:02'),
(9, 1111, 1234, NULL, 0.00, 18.54, 430.54, 412.00, 3, 180, 0, 3, '2017-09-26 00:38:55', '2017-10-21 11:02:06'),
(10, 1111, 4234, NULL, 0.00, 99.00, 2299.00, 2200.00, 3, 240, 0, 3, '2017-09-26 00:44:49', '2017-10-21 11:02:10'),
(11, 1111, 123, NULL, 0.00, 99.00, 2299.00, 2200.00, 3, 180, 0, 3, '2017-09-26 01:49:49', '2017-10-21 11:02:08'),
(12, 1111, 545, NULL, 0.00, 49.50, 1149.50, 1100.00, 3, 300, 0, 3, '2017-09-26 01:51:51', '2017-10-21 11:02:07'),
(13, 1111, 2, NULL, 0.00, 49.50, 1149.50, 1100.00, 3, 120, 0, 2, '2017-09-26 03:22:05', '2017-10-21 11:02:49'),
(14, 1111, 2, NULL, 0.00, 49.50, 1149.50, 1100.00, 3, 300, 0, 3, '2017-09-26 03:25:44', '2017-10-21 11:02:47'),
(15, 1111, 7, NULL, 0.00, 9.27, 215.27, 206.00, 3, 300, 0, 3, '2017-09-26 03:26:50', '2017-10-21 11:02:23'),
(16, 1111, 4534, NULL, 0.00, 9.27, 215.27, 206.00, 3, 300, 0, 3, '2017-09-26 03:28:11', '2017-10-21 11:02:21'),
(17, 1111, 234, NULL, 0.00, 9.27, 215.27, 206.00, 3, 300, 0, 3, '2017-09-26 07:58:06', '2017-10-21 11:02:20'),
(18, 1111, 3, NULL, 0.00, 9.27, 215.27, 206.00, 3, 300, 0, 3, '2017-09-26 07:59:32', '2017-10-21 11:02:19'),
(19, 1111, 34, NULL, 0.00, 9.27, 215.27, 206.00, 3, 300, 0, 3, '2017-09-26 08:02:59', '2017-10-21 11:02:44'),
(20, 1111, 789, NULL, 0.00, 9.27, 215.27, 206.00, 3, 300, 0, 3, '2017-09-26 08:13:03', '2017-10-21 11:02:18'),
(21, 1111, 0, NULL, 0.00, 9.27, 215.27, 206.00, 3, 300, 0, 3, '2017-09-26 08:14:19', '2017-10-21 11:02:16'),
(22, 1111, 1212, NULL, 0.00, 279.41, 5557.06, 6209.00, 3, 300, 0, 3, '2017-10-03 01:28:07', '2017-10-21 11:02:15'),
(23, 1111, 13, NULL, 0.00, 90.05, 1790.90, 2001.00, 3, 300, 0, 3, '2017-10-03 03:11:25', '2017-10-21 11:02:14'),
(24, 1111, 14, NULL, 0.00, 99.00, 2299.00, 2200.00, 3, 300, 0, 3, '2017-10-03 05:24:12', '2017-10-21 11:20:50'),
(25, 1111, 21, NULL, 0.00, 10.98, 254.98, 244.00, 3, 300, 0, 2, '2017-10-04 05:04:19', '2017-10-21 12:57:34'),
(26, 1111, 12, NULL, 0.00, 21.96, 509.96, 488.00, 2, 300, 0, 3, '2017-10-04 05:31:09', '2017-10-21 11:02:42'),
(27, 1111, 345, NULL, 0.00, 64.17, 1490.17, 1426.00, 3, 360, 0, 3, '2017-10-04 05:56:15', '2017-10-21 11:02:34'),
(28, 1111, 12, NULL, 0.00, 117.27, 2723.27, 2606.00, 2, 900, 0, 3, '2017-10-04 21:19:36', '2017-10-21 11:02:40'),
(29, 1111, 23, NULL, 0.00, 36.00, 836.00, 800.00, 3, 1380, 0, 3, '2017-10-05 01:00:16', '2017-10-21 11:02:39'),
(30, 1111, 11, NULL, 0.00, 36.00, 836.00, 800.00, 2, NULL, 0, 3, '2017-10-19 00:15:23', '2017-10-22 04:14:05'),
(31, 1111, 12, NULL, 0.00, 18.00, 418.00, 400.00, 2, NULL, 0, 3, '2017-10-19 00:18:32', '2017-10-22 04:14:10'),
(32, 1111, 112, NULL, 0.00, 9.00, 209.00, 200.00, 2, NULL, 0, 3, '2017-10-19 00:20:32', '2017-10-22 07:26:05'),
(33, 1111, 1, NULL, 0.00, 9.00, 209.00, 200.00, 3, 300, 0, 3, '2017-10-22 00:30:21', '2017-10-22 01:08:07'),
(34, 1111, 12, NULL, 0.00, 4.50, 104.50, 100.00, 2, NULL, 0, 3, '2017-10-22 01:05:38', '2017-10-22 04:13:28');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `food_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `food_unit_price` double(11,2) NOT NULL,
  `total_price` double(11,2) NOT NULL,
  `food_quantity` int(11) NOT NULL,
  `is_payment_finish` tinyint(4) NOT NULL DEFAULT '0',
  `branch_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `food_id`, `food_name`, `food_unit_price`, `total_price`, `food_quantity`, `is_payment_finish`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Burger', 100.00, 100.00, 1, 1, 3, '2017-09-20 23:32:05', '2017-10-21 11:00:54'),
(2, 1, 4, 'new Food 221', 150.00, 1800.00, 12, 1, 3, '2017-09-20 23:32:05', '2017-10-22 05:54:12'),
(3, 2, 4, 'new Food 221', 150.00, 150.00, 1, 1, 3, '2017-09-20 23:55:33', '2017-10-22 05:54:15'),
(4, 2, 3, 'Burger', 100.00, 200.00, 2, 1, 3, '2017-09-20 23:55:33', '2017-10-21 11:01:01'),
(5, 2, 2, 'New Nuddles 2', 1100.00, 2200.00, 2, 1, 3, '2017-09-20 23:55:33', '2017-10-21 11:00:59'),
(6, 3, 4, 'new Food 221', 150.00, 150.00, 1, 1, 3, '2017-09-21 00:23:30', '2017-10-22 05:54:08'),
(7, 3, 3, 'Burger', 100.00, 200.00, 2, 1, 3, '2017-09-21 00:23:30', '2017-10-21 11:01:02'),
(8, 3, 2, 'New Nuddles 2', 1100.00, 2200.00, 2, 1, 3, '2017-09-21 00:23:30', '2017-10-21 11:01:05'),
(9, 4, 2, 'New Nuddles 2', 1100.00, 4400.00, 4, 1, 3, '2017-09-21 00:25:20', '2017-10-21 11:01:03'),
(10, 4, 1, 'Nuddles 1', 1200.00, 2400.00, 2, 1, 3, '2017-09-21 00:25:20', '2017-10-21 11:01:07'),
(11, 5, 5, 'NEw Salad 21', 200.00, 200.00, 1, 1, 3, '2017-09-23 04:13:01', '2017-10-21 11:01:06'),
(12, 5, 4, 'new Food 221', 150.00, 150.00, 1, 1, 3, '2017-09-23 04:13:01', '2017-10-21 11:01:09'),
(13, 6, 7, 'NEw Dish 2', 200.00, 200.00, 1, 0, 3, '2017-09-23 05:58:47', '2017-10-21 11:01:08'),
(14, 7, 8, 'Rice Dish', 200.00, 200.00, 1, 1, 3, '2017-09-23 06:28:04', '2017-10-21 11:01:17'),
(15, 7, 7, 'NEw Dish 2', 200.00, 200.00, 1, 1, 3, '2017-09-23 06:28:04', '2017-10-21 11:01:15'),
(16, 8, 9, 'pizza', 206.00, 412.00, 2, 0, 3, '2017-09-23 12:39:09', '2017-10-21 11:01:14'),
(17, 9, 9, 'pizza', 206.00, 412.00, 2, 0, 3, '2017-09-26 00:38:55', '2017-10-21 11:01:19'),
(18, 10, 2, 'New Nuddles 2', 1100.00, 2200.00, 2, 0, 3, '2017-09-26 00:44:49', '2017-10-21 11:01:11'),
(19, 11, 2, 'New Nuddles 2', 1100.00, 2200.00, 2, 0, 3, '2017-09-26 01:49:50', '2017-10-21 11:01:21'),
(20, 12, 2, 'New Nuddles 2', 1100.00, 1100.00, 1, 0, 3, '2017-09-26 01:51:51', '2017-10-21 11:01:20'),
(21, 13, 2, 'New Nuddles 2', 1100.00, 1100.00, 1, 0, 3, '2017-09-26 03:22:05', '2017-10-22 05:54:02'),
(22, 14, 2, 'New Nuddles 2', 1100.00, 1100.00, 1, 0, 3, '2017-09-26 03:25:44', '2017-10-21 11:01:27'),
(23, 15, 9, 'pizza', 206.00, 206.00, 1, 0, 3, '2017-09-26 03:26:50', '2017-10-21 11:01:26'),
(24, 16, 9, 'pizza', 206.00, 206.00, 1, 0, 3, '2017-09-26 03:28:12', '2017-10-21 11:01:25'),
(25, 17, 9, 'pizza', 206.00, 206.00, 1, 0, 3, '2017-09-26 07:58:06', '2017-10-21 11:01:29'),
(26, 18, 9, 'pizza', 206.00, 206.00, 1, 0, NULL, '2017-09-26 07:59:32', '2017-09-26 07:59:32'),
(27, 19, 9, 'pizza', 206.00, 206.00, 1, 0, NULL, '2017-09-26 08:02:59', '2017-09-26 08:02:59'),
(28, 20, 9, 'pizza', 206.00, 206.00, 1, 0, NULL, '2017-09-26 08:13:04', '2017-09-26 08:13:04'),
(29, 21, 9, 'pizza', 206.00, 206.00, 1, 0, NULL, '2017-09-26 08:14:19', '2017-09-26 08:14:19'),
(30, 22, 9, 'pizza', 206.00, 206.00, 1, 0, NULL, '2017-10-03 01:28:07', '2017-10-03 01:28:07'),
(31, 22, 11, 'Pasta', 2001.00, 6003.00, 3, 0, NULL, '2017-10-03 01:28:07', '2017-10-03 01:28:07'),
(32, 23, 11, 'Pasta', 2001.00, 2001.00, 1, 0, NULL, '2017-10-03 03:11:25', '2017-10-03 03:11:25'),
(33, 24, 2, 'New Nuddles 2', 1100.00, 2200.00, 2, 0, NULL, '2017-10-03 05:24:12', '2017-10-03 05:24:12'),
(34, 25, 12, 'Pasta 34', 244.00, 244.00, 1, 0, NULL, '2017-10-04 05:04:19', '2017-10-04 05:04:19'),
(35, 26, 12, 'Pasta 34', 244.00, 488.00, 2, 0, NULL, '2017-10-04 05:31:09', '2017-10-04 05:31:09'),
(36, 27, 9, 'pizza', 206.00, 206.00, 1, 0, NULL, '2017-10-04 05:56:15', '2017-10-04 05:56:15'),
(37, 27, 12, 'Pasta 34', 244.00, 1220.00, 5, 0, NULL, '2017-10-04 05:56:15', '2017-10-04 05:56:15'),
(38, 28, 20, 'Strabery Cake', 600.00, 2400.00, 4, 0, NULL, '2017-10-04 21:19:36', '2017-10-04 21:19:36'),
(39, 28, 9, 'pizza', 206.00, 206.00, 1, 0, NULL, '2017-10-04 21:19:36', '2017-10-04 21:19:36'),
(40, 29, 20, 'Strabery Cake', 600.00, 600.00, 1, 0, NULL, '2017-10-05 01:00:16', '2017-10-05 01:00:16'),
(41, 29, 19, 'Pasta 12', 200.00, 200.00, 1, 0, NULL, '2017-10-05 01:00:16', '2017-10-05 01:00:16'),
(42, 30, 18, 'Ice Cream 2', 400.00, 800.00, 2, 0, NULL, '2017-10-19 00:15:23', '2017-10-19 00:15:23'),
(43, 31, 18, 'Ice Cream 2', 400.00, 400.00, 1, 0, NULL, '2017-10-19 00:18:32', '2017-10-19 00:18:32'),
(44, 32, 19, 'Pasta 12', 200.00, 200.00, 1, 0, NULL, '2017-10-19 00:20:32', '2017-10-19 00:20:32');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `callable_id` int(11) NOT NULL,
  `callable` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`id`, `phone`, `callable_id`, `callable`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, '01751300314', 1, 'branch', NULL, '2017-10-17 12:56:24', '2017-10-17 12:56:24'),
(2, '01865922100', 2, 'branch', NULL, '2017-10-17 12:56:24', '2017-10-17 12:56:24'),
(3, '01777888757', 3, 'branch', NULL, '2017-10-17 12:56:24', '2017-10-17 12:56:24'),
(4, '01738038356', 4, 'branch', NULL, '2017-10-17 12:56:25', '2017-10-17 12:56:25'),
(5, '01737122789', 5, 'branch', NULL, '2017-10-17 12:56:25', '2017-10-17 12:56:25'),
(6, '01718910944', 6, 'branch', NULL, '2017-10-17 12:56:25', '2017-10-17 12:56:25'),
(7, '01734980364', 7, 'branch', NULL, '2017-10-17 12:56:25', '2017-10-17 12:56:25'),
(8, '01765829383', 8, 'branch', NULL, '2017-10-17 12:56:25', '2017-10-17 12:56:25'),
(9, '01749270933', 9, 'branch', NULL, '2017-10-17 12:56:25', '2017-10-17 12:56:25'),
(10, '01718756722', 10, 'branch', NULL, '2017-10-17 12:56:25', '2017-10-17 12:56:25'),
(11, '01767292882', 12, 'user', NULL, '2017-10-17 12:56:25', '2017-10-17 12:56:25'),
(12, '01933306128', 13, 'user', NULL, '2017-10-17 12:56:25', '2017-10-17 12:56:25'),
(13, '27364987349', 14, 'user', NULL, '2017-10-17 12:56:25', '2017-10-17 12:56:25'),
(14, '01933646128', 15, 'user', NULL, '2017-10-17 12:56:25', '2017-10-17 12:56:25');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_image` tinyint(4) DEFAULT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci,
  `imageable_id` int(10) UNSIGNED NOT NULL,
  `imageable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `url`, `title`, `feature_image`, `caption`, `imageable_id`, `imageable_type`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, '/images/foods/thumb/thumb_200x200_63202631.jpg', NULL, NULL, NULL, 1, NULL, 3, '2017-09-20 23:02:28', '2017-10-21 10:05:09'),
(3, '/images/foods/thumb/thumb_200x200_35874954.jpg', NULL, NULL, NULL, 2, NULL, 3, '2017-09-20 23:07:24', '2017-10-21 10:05:11'),
(4, '/images/foods/thumb/thumb_200x200_23782167.png', NULL, NULL, NULL, 2, NULL, 3, '2017-09-20 23:07:24', '2017-10-21 10:05:13'),
(5, '/images/foods/thumb/thumb_200x200_58596247.jpg', NULL, NULL, NULL, 3, NULL, 3, '2017-09-20 23:10:01', '2017-10-21 10:05:15'),
(6, '/images/foods/thumb/thumb_200x200_34245432.png', NULL, NULL, NULL, 3, NULL, 3, '2017-09-20 23:10:01', '2017-10-21 10:05:19'),
(7, '/images/foods/thumb/thumb_200x200_93489719.jpg', NULL, NULL, NULL, 4, NULL, 3, '2017-09-20 23:22:22', '2017-10-21 10:05:23'),
(8, '/images/foods/thumb/thumb_200x200_38632694.png', NULL, NULL, NULL, 4, NULL, 3, '2017-09-20 23:22:22', '2017-10-21 10:05:25'),
(9, '/images/foods/thumb/thumb_200x200_91488049.jpg', NULL, NULL, NULL, 5, NULL, 3, '2017-09-22 22:34:03', '2017-10-21 10:05:28'),
(10, '/images/foods/thumb/thumb_200x200_66774464.jpg', NULL, NULL, NULL, 7, NULL, 3, '2017-09-22 22:36:02', '2017-10-21 10:05:30'),
(11, '/images/foods/thumb/thumb_200x200_56242962.jpg', NULL, NULL, NULL, 7, NULL, 3, '2017-09-22 22:36:02', '2017-10-21 10:05:32'),
(12, '/images/foods/thumb/thumb_200x200_37681044.png', NULL, NULL, NULL, 7, NULL, 3, '2017-09-22 22:36:02', '2017-10-21 10:05:34'),
(13, '/images/foods/thumb/thumb_200x200_15736544.jpg', NULL, NULL, NULL, 8, NULL, 3, '2017-09-23 06:27:37', '2017-10-21 10:05:35'),
(15, '/images/foods/thumb/thumb_200x200_33245799.jpg', NULL, NULL, NULL, 8, NULL, 3, '2017-09-23 06:27:38', '2017-10-21 10:05:38'),
(16, '/images/foods/thumb/thumb_200x200_37913798.jpg', NULL, NULL, NULL, 9, NULL, 3, '2017-09-23 12:25:18', '2017-10-21 10:05:44'),
(17, '/images/foods/thumb/thumb_200x200_74366273.jpg', NULL, NULL, NULL, 9, NULL, 3, '2017-09-23 12:25:18', '2017-10-21 10:05:42'),
(18, '/images/foods/thumb/thumb_200x200_35874954.jpg', NULL, NULL, NULL, 9, NULL, 3, '2017-09-23 12:25:18', '2017-10-21 10:05:41'),
(19, '/images/foods/thumb/thumb_200x200_63324234.jpg', NULL, NULL, NULL, 9, NULL, 3, '2017-09-23 12:25:19', '2017-10-21 10:05:39'),
(20, '/images/foods/thumb/thumb_200x200_15736544.jpg', NULL, NULL, NULL, 9, NULL, 3, '2017-09-23 12:25:20', '2017-10-21 10:05:47'),
(21, '/images/foods/thumb/thumb_250x200_95407908.jpg', NULL, NULL, NULL, 11, NULL, 3, '2017-09-27 04:00:01', '2017-10-21 10:05:54'),
(22, '/images/foods/thumb/thumb_250x200_27345331.jpg', NULL, NULL, NULL, 11, NULL, 3, '2017-09-27 04:00:03', '2017-10-21 10:05:53'),
(23, '/images/foods/thumb/thumb_250x200_83101898.jpg', NULL, NULL, NULL, 11, NULL, 3, '2017-09-27 04:00:05', '2017-10-21 10:05:52'),
(24, '/images/foods/thumb/thumb_250x200_50163514.jpg', NULL, NULL, NULL, 12, NULL, 3, '2017-10-03 06:07:55', '2017-10-21 10:05:51'),
(25, '/images/foods/thumb/thumb_250x200_78281279.jpg', NULL, NULL, NULL, 13, NULL, 3, '2017-10-04 06:18:40', '2017-10-21 10:05:49'),
(26, '/images/foods/thumb/thumb_250x200_64535285.jpg', NULL, NULL, NULL, 16, NULL, 3, '2017-10-04 06:21:43', '2017-10-21 10:05:57'),
(27, '/images/foods/thumb/thumb_250x200_44274081.jpg', NULL, NULL, NULL, 17, NULL, 3, '2017-10-04 06:22:49', '2017-10-21 10:05:58'),
(28, '/images/foods/thumb/thumb_250x200_96278425.jpg', NULL, NULL, NULL, 18, NULL, 3, '2017-10-04 06:23:39', '2017-10-21 10:06:01'),
(29, '/images/foods/thumb/thumb_250x200_27479121.jpg', NULL, NULL, NULL, 19, NULL, 3, '2017-10-04 06:25:08', '2017-10-21 10:06:04'),
(30, '/images/foods/thumb/thumb_250x200_57291928.jpg', NULL, NULL, NULL, 20, NULL, 3, '2017-10-04 06:26:06', '2017-10-21 10:06:03'),
(31, '/images/foods/thumb/thumb_250x200_13680166.jpg', NULL, NULL, NULL, 21, NULL, 3, '2017-10-04 06:27:07', '2017-10-21 10:06:06'),
(32, '/images/foods/thumb/thumb_250x200_87326705.jpg', NULL, NULL, NULL, 22, NULL, 3, '2017-10-04 06:34:06', '2017-10-21 10:06:02'),
(33, '/images/foods/thumb/thumb_250x200_44656969.jpg', NULL, NULL, NULL, 14, NULL, 3, '2017-10-08 00:40:28', '2017-10-21 10:06:08'),
(34, '/images/foods/thumb/thumb_250x200_92717637.jpg', NULL, NULL, NULL, 23, NULL, 3, '2017-10-08 00:40:28', '2017-10-21 10:06:15'),
(35, '/images/foods/thumb/thumb_250x200_52062639.jpg', NULL, NULL, NULL, 23, NULL, 3, '2017-10-08 00:40:28', '2017-10-21 10:06:13'),
(36, '/images/foods/thumb/thumb_250x200_6846956.jpg', NULL, NULL, NULL, 23, NULL, 3, '2017-10-08 00:40:28', '2017-10-21 10:06:17'),
(37, '/images/foods/thumb/thumb_250x200_46472631.jpg', NULL, NULL, NULL, 23, NULL, 3, '2017-10-08 00:40:28', '2017-10-21 10:06:10'),
(38, '/images/foods/thumb/thumb_250x200_63484783.jpg', NULL, NULL, NULL, 23, NULL, 3, '2017-10-21 04:01:35', '2017-10-21 10:06:16'),
(39, '/images/foods/thumb/thumb_250x200_82345667.jpg', NULL, NULL, NULL, 23, NULL, 3, '2017-10-21 04:01:35', '2017-10-21 10:06:20'),
(40, '/images/foods/thumb/thumb_250x200_26300456.jpg', NULL, NULL, NULL, 24, NULL, 2, '2017-10-21 04:04:35', '2017-10-21 04:04:35'),
(41, '/images/foods/thumb/thumb_250x200_64965438.jpg', NULL, NULL, NULL, 24, NULL, 2, '2017-10-21 04:04:36', '2017-10-21 04:04:36'),
(42, '/images/foods/thumb/thumb_250x200_19651752.jpg', NULL, NULL, NULL, 24, NULL, 2, '2017-10-21 04:04:37', '2017-10-21 04:04:37');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` double(11,2) NOT NULL,
  `total_price` double NOT NULL,
  `unit_price` double DEFAULT NULL,
  `ingredients_id` int(11) NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `expired_date` date DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `amount`, `total_price`, `unit_price`, `ingredients_id`, `brand_name`, `supplier_id`, `comments`, `expired_date`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, 12.00, 121, 11, 9, NULL, 2, NULL, NULL, 2, '2017-09-20 06:07:30', '2017-10-21 11:38:12'),
(2, 13.00, 159.9, 12.3, 12, 'Dinajpur Brand', 1, NULL, NULL, 2, '2017-09-20 06:22:06', '2017-10-21 11:38:10'),
(3, 32.00, 736, 23, 13, NULL, 2, 'dfbgh', NULL, 2, '2017-09-20 07:18:03', '2017-10-21 11:38:15'),
(4, 21.00, 441, 21, 15, NULL, 3, 'dsfhg', '2017-09-28', 2, '2017-09-20 07:21:37', '2017-10-21 11:38:14'),
(5, 77.00, 770, 10, 12, NULL, 3, NULL, NULL, 2, '2017-09-20 11:05:08', '2017-10-21 11:38:17'),
(6, 300.00, 3000, 10, 11, NULL, 3, NULL, NULL, 2, '2017-09-23 12:21:12', '2017-10-21 11:38:07'),
(7, 15.00, 435, 29, 14, NULL, 2, NULL, NULL, 2, '2017-09-23 12:21:27', '2017-10-21 11:38:19'),
(8, 16.00, 5504, 344, 6, NULL, 1, NULL, NULL, 3, '2017-09-23 12:23:08', '2017-10-21 11:37:48'),
(9, 14.00, 602, 43, 12, NULL, 1, NULL, NULL, 3, '2017-09-23 12:23:21', '2017-10-21 11:37:47'),
(10, 22.00, 264, 12, 8, NULL, 3, NULL, NULL, 3, '2017-09-23 12:30:14', '2017-10-21 11:37:46'),
(11, 12.00, 144, 12, 19, NULL, 2, NULL, NULL, 3, '2017-09-26 05:52:43', '2017-10-21 11:37:44'),
(12, 121.00, 2662, 22, 8, NULL, 2, NULL, NULL, 3, '2017-09-26 05:52:54', '2017-10-21 11:37:43'),
(13, 222.00, 2664, 12, 11, NULL, 3, NULL, NULL, 3, '2017-09-26 05:53:08', '2017-10-21 11:37:42'),
(14, 12.00, 276, 23, 9, NULL, 1, NULL, NULL, 3, '2017-09-26 05:53:19', '2017-10-21 11:37:41'),
(15, 123.00, 2829, 23, 7, NULL, 3, NULL, NULL, 3, '2017-09-26 05:53:31', '2017-10-21 11:37:40'),
(16, 233.00, 13048, 56, 12, NULL, 2, NULL, NULL, 3, '2017-09-26 05:53:43', '2017-10-21 11:37:36'),
(17, 24.00, 552, 23, 10, NULL, 2, NULL, NULL, 3, '2017-09-26 05:53:58', '2017-10-21 11:37:39'),
(18, 144.00, 4608, 32, 17, NULL, 1, NULL, NULL, 3, '2017-09-26 05:54:53', '2017-10-21 11:37:34'),
(19, 12.00, 132, 11, 4, NULL, 3, NULL, NULL, 3, '2017-09-26 05:55:08', '2017-10-21 11:37:33'),
(20, 233.00, 5359, 23, 16, NULL, 1, NULL, NULL, 3, '2017-09-26 05:55:51', '2017-10-21 11:37:32'),
(21, 123.00, 2829, 23, 1, NULL, 2, NULL, NULL, 3, '2017-09-26 05:56:19', '2017-10-21 11:37:29'),
(22, 21.00, 441, 21, 2, NULL, 2, NULL, NULL, 3, '2017-09-26 05:56:35', '2017-10-21 11:37:32'),
(23, 122.00, 1464, 12, 3, NULL, 2, NULL, NULL, 3, '2017-09-26 05:56:50', '2017-10-21 11:37:26'),
(24, 124.00, 12400, 100, 18, NULL, 3, NULL, NULL, 3, '2017-09-26 05:57:44', '2017-10-21 11:37:25'),
(25, 300.00, 15000, 50, 5, NULL, 2, NULL, '2017-10-05', 3, '2017-09-26 06:00:45', '2017-10-21 11:37:24'),
(26, 20.00, 1200, 60, 10, NULL, 2, 'good', NULL, 3, '2017-09-27 12:15:30', '2017-10-21 11:37:23'),
(27, 20.00, 400, 20, 9, NULL, 2, NULL, NULL, 3, '2017-09-28 12:27:32', '2017-10-21 11:37:22'),
(28, 20.00, 1780, 89, 17, NULL, 3, NULL, NULL, 3, '2017-09-28 12:29:12', '2017-10-21 11:37:21'),
(29, 20.00, 1120, 56, 10, NULL, 3, NULL, NULL, 3, '2017-10-05 03:20:55', '2017-10-21 11:37:20'),
(30, 23.00, 529, 23, 13, 'erwwfa', 2, NULL, '2017-11-03', 3, '2017-10-09 11:48:07', '2017-10-21 11:37:19'),
(31, 12.00, 180, 15, 10, 'we', 2, 'efsd', '2017-11-01', 3, '2017-10-21 06:21:12', '2017-10-21 06:21:12'),
(32, 32.00, 736, 23, 12, NULL, 1, NULL, NULL, 3, '2017-10-21 06:21:53', '2017-10-21 06:21:53'),
(33, 10.00, 150, 15, 12, NULL, 2, NULL, NULL, 3, '2017-10-21 06:22:39', '2017-10-21 06:22:39');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `logo`, `banner`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nandus', NULL, NULL, 1, '2017-10-17 13:04:28', '2017-10-17 13:04:28'),
(2, 'Redison', NULL, NULL, 1, '2017-10-17 13:04:28', '2017-10-18 07:32:02'),
(4, 'Mejban', NULL, NULL, 1, '2017-10-17 13:04:28', '2017-10-17 13:04:28'),
(5, 'Pizza Hut', NULL, NULL, 1, '2017-10-17 13:04:28', '2017-10-17 13:04:28'),
(6, 'Star Kabab', NULL, NULL, 0, '2017-10-17 13:04:28', '2017-10-18 07:06:08'),
(9, 'Acuafina', NULL, NULL, 1, '2017-10-18 00:12:02', '2017-10-18 00:12:02');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_features`
--

CREATE TABLE `restaurant_features` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'An Admin', '2017-09-26 09:47:41', '2017-09-26 09:47:41'),
(2, 'Chef', 'Chef', '2017-09-26 09:47:41', '2017-09-26 09:47:41'),
(3, 'Client', 'A Client', '2017-09-26 09:47:41', '2017-09-26 09:47:41'),
(4, 'Owner', 'Owner', '2017-09-26 09:47:41', '2017-09-26 09:47:41'),
(5, 'Waiter', 'waiter', '2017-09-26 09:47:41', '2017-09-26 09:47:41'),
(6, 'Employee', 'DuPlate Employee', '2017-10-02 23:08:00', '2017-10-02 21:08:00'),
(7, 'System_Admin', 'DuPlate System Admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`shipping_id`, `name`, `phone1`, `phone2`, `address`, `city`, `country`, `zip_code`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, 'Yamin', '696615494', '750878133', 'mirpur', 'Dhaka', 'Bangladesh', '2121', NULL, '2017-09-19 23:32:48', '2017-09-19 23:32:48'),
(2, 'Rashed', '842245711', '355032708', 'Pallvi', 'Dhaka', 'Bangladesh', '2122', NULL, '2017-09-19 23:32:48', '2017-09-19 23:32:48'),
(3, 'Akter', '850704544', '117035426', 'Chirir Bandar', 'Dinajpur', 'Bangladesh', '5240', NULL, '2017-09-19 23:32:48', '2017-09-19 23:32:48'),
(4, 'Rana', '395096934', '643470969', 'Mohakhali', 'Dhaka', 'Bangladesh', '1121', NULL, '2017-09-19 23:32:48', '2017-09-19 23:32:48'),
(5, 'Shakil', '313681759', '720725438', 'Uttora', 'Dhaka', 'Bangladesh', '1221', NULL, '2017-09-19 23:32:48', '2017-09-19 23:32:48'),
(6, 'Alam', '732450488', '952782590', 'Kholea', 'Rangpur', 'Bangladesh', '3121', NULL, '2017-09-19 23:32:48', '2017-09-19 23:32:48'),
(7, 'Munna', '208143888', '947002633', 'Angaira Bazar', 'Sariyat Pur', 'Bangladesh', '4221', NULL, '2017-09-19 23:32:48', '2017-09-19 23:32:48');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `submenus`
--

CREATE TABLE `submenus` (
  `id` int(10) UNSIGNED NOT NULL,
  `submenu_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_submenu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parents_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `child_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `buy_amount` double(11,2) DEFAULT NULL,
  `paid_amount` double(11,2) DEFAULT NULL,
  `due_amount` double(11,2) DEFAULT NULL,
  `advanced_amount` double(11,2) DEFAULT NULL,
  `voucher_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `company_name`, `supplier_name`, `phone`, `email`, `address`, `buy_amount`, `paid_amount`, `due_amount`, `advanced_amount`, `voucher_number`, `branch_id`, `comments`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Linux', 'Rechard Stallman', '01751300314', NULL, 'New York, America', 17244.90, 13211.00, 3297.90, NULL, NULL, 3, NULL, 1, '2017-09-19 23:32:46', '2017-10-21 00:21:54'),
(2, 'Microsoft', 'Bill Gates', '01737932003', NULL, 'America', 39891.00, 2144.00, 37417.00, NULL, NULL, 3, NULL, 1, '2017-09-19 23:32:46', '2017-10-21 00:22:39'),
(3, 'Apple', 'Stive Jobs', '01739947044', NULL, 'Celecon Vally, America', 25400.00, 20356.00, 5044.00, NULL, NULL, 2, NULL, 1, '2017-09-19 23:32:46', '2017-10-21 06:17:24'),
(4, 'Diu', 'Sabur Khan', '12343212', 'diu@gmail.com', 'Dhanmondi Dhaka', NULL, NULL, NULL, NULL, NULL, 3, 'fdhnjdjvk', 1, '2017-10-21 05:30:21', '2017-10-21 05:30:21');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_payments`
--

CREATE TABLE `supplier_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount_paid` double(11,2) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `voucher_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier_payments`
--

INSERT INTO `supplier_payments` (`id`, `amount_paid`, `supplier_id`, `voucher_number`, `comments`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, 3000.00, 3, NULL, NULL, 3, '2017-10-11 05:35:07', '2017-10-21 11:35:59'),
(2, 23.00, 3, NULL, NULL, 3, '2017-10-12 01:16:47', '2017-10-21 11:36:01'),
(3, 21.00, 2, NULL, NULL, 3, '2017-10-12 01:16:52', '2017-10-21 11:36:03'),
(4, 21.00, 3, NULL, NULL, 3, '2017-10-12 01:16:57', '2017-10-21 11:36:05'),
(5, 1211.00, 1, NULL, NULL, 3, '2017-10-12 01:17:03', '2017-10-21 11:36:06'),
(6, 12312.00, 3, NULL, NULL, 3, '2017-10-12 01:17:08', '2017-10-21 11:36:09'),
(7, 123.00, 2, '3879', NULL, 2, '2017-10-12 01:17:13', '2017-10-21 11:36:14'),
(8, 2000.00, 1, NULL, NULL, 3, '2017-10-15 04:31:43', '2017-10-21 11:36:11');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `suffix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suffix_k` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `suffix`, `suffix_k`, `created_at`, `updated_at`) VALUES
(1, 'g', 'Kg', '2017-09-19 23:32:45', '2017-09-19 23:32:45'),
(2, 'ml', 'L', '2017-09-19 23:32:45', '2017-09-19 23:32:45'),
(3, 'pieces', 'pieces', '2017-09-19 23:32:45', '2017-09-19 23:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL COMMENT '1 = a, 2 = c, 3= w 4 =o, 5= cl, 6 = e ',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT '0',
  `address` text COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `delivery_address` text COLLATE utf8mb4_unicode_ci,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '5',
  `branch_id` int(11) DEFAULT NULL,
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `password`, `phone`, `nid`, `dob`, `gender`, `address`, `active`, `delivery_address`, `type`, `branch_id`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 5, 'Test Client', 'tcl@gmail.com', '$2y$10$aqN5ck54WpWgQL.Kskm4Vu.860pq5vyw6M3BWT7h1o.Mmk9VnCiAm', '01751300314', '1345654', NULL, 1, NULL, 0, NULL, 3, 3, 'wedfvjeuiuo1232jdbk', 'Nac3GeZ36uemzsXn43KUEXhCIN4VJ1JrcU2ap2SBotrMzhi47x1RTnVe0H17', '2017-09-20 05:32:45', '2017-10-19 11:43:51'),
(3, 0, 'Test admin', 'te@gmail.com', '$2y$10$DKwRB4wOJWuj/r2VnrQih.uZvpLNelf9LylcZWTQ9I57zXVtHTr6y', '42567323212', '234567463524367', '2017-09-19', 1, 'DHAKA', 1, NULL, 2, 3, 'qwe44XPrZJI1dK572nNdOLAHaM3Wtqm8rjklXRq3GWWfhWd7BWg4O74cusp1', 'zGrlOlBqCLLkroDYmC1mUJUeAoCrCRoOsTNfQ7EIZUXe2mY64u1D9SYSPOIe', '2017-09-26 08:57:47', '2017-10-20 23:22:53'),
(4, 1, 'Syatem Admin 1', 'ta@gmail.com', '$2y$10$c7K13b.fhNtv.HuJLhOLr.odpoJ2QMslg26.gfPrv91YoQPzNygI.', '2343546', '3456789786756453', '2017-09-08', 1, 'Dhaka', 1, NULL, 3, 3, '5vdHp5mP0X7ffYZ9dk5LRzcTA7GaSgU9Yd3bjCEb4IrxUL19HOHPRKwOEUFK', 'speUBy559Pq7D6WeXDRLoApPGp9SEtyMVGLPytwL2VnU4oIudmqc78RfjRTG', '2017-09-26 23:44:04', '2017-10-23 07:34:21'),
(5, 2, 'Test Chef 1', 'tc@gmail.com', '$2y$10$YlNlOYk8caXjL/VdK0kB/OM0C6JGqv4SqFLl.kK7o.pJNbX8rqi4m', '4353432454', '43332', '2017-08-29', 1, 'Dhaka', 1, NULL, 1, 3, 'XfDggRrLmyqHIKCrgKHrN7ZQnTs2HQ5gfBGScwXhEKMCKvC9MjDa06J8gsb7', 'VoFqJyAdk1SDqO29Z1waQXlL0KcXIgbw34UjEjV197kuBDqzb14L77WlFqG0', '2017-09-26 23:45:11', '2017-10-23 07:58:07'),
(6, 4, 'DuPlate Owner', 'to@gmail.com', '$2y$10$YlNlOYk8caXjL/VdK0kB/OM0C6JGqv4SqFLl.kK7o.pJNbX8rqi4m', '324533', '34231431243142', '2017-09-08', 1, 'Dhaka', 1, NULL, 5, 3, 'XfDggRrLmyqHIKCrgKHrN7ZQnTs2HQ5gfBGScwXhEKMCKvC9MjDa06J8gsd3', 'HK09IaLEU3OJUw0LzgmbfK38pReYEKJm4WMtJxQYtFHlPPzDxDQyG5U3niKd', '2017-09-27 05:49:32', '2017-10-19 12:43:04'),
(7, 3, 'Test Waiter', 'tw@gmail.com', '$2y$10$mVqij3DW.aemYxIKYuWm/eBTH7.IJYu87Ql2tjnILEEQHbdFNQaja', '132412343', '5434234545342', '2017-09-28', 1, 'erfrg', 1, NULL, 1, 3, 'N6KjhSFzsYYgC1UycQTZ6TO0B4xbCVrDNxupnwY9WL5LVNpjQVqPujIqYAtI', 'QH9lu4QoP7NaJJDEpO3xUNssiTVHfTGT7IYoXZFqtAWxiVW4plUH7xYIzUG1', '2017-10-03 04:12:26', '2017-10-19 11:44:03'),
(8, 2, 'NEw chef 2', 'tc2@gmail.com', '$2y$10$5zCHABMTNPHFlPwSlAHICu.w3Ul4eYwv9IBSe7Ex7njq/8iLl1nVi', '5968097654567', '56754436469', '2002-10-09', 1, 'dhaka', 1, NULL, 1, 3, 'RZZeW0qbbPgaH54wHYB8TCJePGKbfPxRpq5smHak7NyXRl5Mmy8X4RZluxGA', NULL, '2017-10-09 03:06:44', '2017-10-19 11:42:54'),
(9, NULL, 'new admin', 'admin@regime.com', '$2y$10$paD0Gv2eaH7eO/4D83gf4.74pcg7PuM1BBhZP2bYaxr5b6szqR2Xa', '3463425464', '332434', '2017-09-26', 1, 'dhaka', 1, NULL, 5, 7, 'TyLDLUUjjz7cgt6g20c8R2PGEDi73eTl3ul3dz7YyxWKCtuHiAaUqwTPPuYd', 'XwzcpNwAqrEt44yiWJyRJlensUPps2cCS6ZKbxgIGy2w9NwzFBCTk3KHrXF6', '2017-10-09 03:12:26', '2017-10-21 05:17:41'),
(10, 6, 'new employee 2', 'te2@gmail.com', '$2y$10$oJyvUIwrArXSWLix/gwA7Of3Htva/6Ug/KUJdSeukmoA6KZlBprAy', '346542356', '3546537645', '2017-10-05', 1, 'wrsf', 1, NULL, 5, 2, 'MytWcMCT1O6n73DOFFBPEL8jNeInG3SxHIknAM2axGxCQ70R3gBv4vv0t75o', NULL, '2017-10-09 03:33:38', '2017-10-19 11:43:01'),
(11, 1, 'new admin 3', 'ta3@gmail.com', '$2y$10$wnUPcPv1UWZt3lIp4f1.Zeu.TpRlljweHB7a0cMenT1b0UBDfNSH.', '3243453235', '2345652453234', '2017-09-27', 1, 'efdf', 1, NULL, 5, 2, 'Bs8uw4pf7avGwcP9ndubD2nJig5EzjRYx8s9A9u0fFauxwC0KI4zYm2sXF9V', NULL, '2017-10-09 03:36:21', '2017-10-19 11:42:58'),
(12, 1, 'admin 4', 'ta4@gmail.com', '$2y$10$8QGD58cBJVO2w/SnTdsWTe9wLLPIA2N.Bfae7fcPBSjNvcC5QlWvu', '345643653', '3564565543', '2017-09-27', 1, 'ewgrth', 1, NULL, 5, 6, 'cos3OONJUUlliKvbMthoYY6XMHIcXW6n7IA3fXcqDhG9o1h20B51OTSuqPsF', NULL, '2017-10-09 03:42:32', '2017-10-19 11:43:07'),
(13, 5, 'Clients 2', 'tcl2@gmail.com', '$2y$10$A28HzFPNXYPAkzzp0Q7YLOKtKN31SjiZ9Hmsl68ifvC1cjNiSsQLi', '345476345', '1234565432', '2017-09-28', 2, 'rfdg', 1, NULL, 5, 6, 'lvyqDZBQKKT7NCQKRpPMiaFPSjYfceOr5YuksiWukEw84jHREe5JMe98FeZn', NULL, '2017-10-09 03:48:22', '2017-10-19 11:43:10'),
(31, 7, 'Prof. Aliya Funk', 'tsa@gmail.com', '$2y$10$QvwDNC6kY9jl3xcZNVvtre407ZSZ0ALwsNbXRjJE0amywY1CJ9nBm', '9172298341', NULL, NULL, 2, NULL, 1, NULL, 5, 2, 'UXYReoZi3X', 'PiRz8EIUvcfbYUadN1spDckwKZa94qzusWoDgtcBDK4n1yHY3Y6gU7Qv0XA1', '2017-10-17 22:43:45', '2017-10-21 04:29:03'),
(32, 1, 'Myra Huel', 'kiara.bartell@example.org', '$2y$10$QvwDNC6kY9jl3xcZNVvtre407ZSZ0ALwsNbXRjJE0amywY1CJ9nBm', '11939930916', '4354342', '2017-10-21', 1, NULL, 1, NULL, 5, 3, 'IXo9bHBI6n', 'm8Yk4WSqbU', '2017-10-17 22:43:45', '2017-10-21 05:19:45'),
(33, 1, 'Danyka Yost', 'verdman@example.com', '$2y$10$QvwDNC6kY9jl3xcZNVvtre407ZSZ0ALwsNbXRjJE0amywY1CJ9nBm', '39451345801', NULL, NULL, 2, NULL, 1, NULL, 5, 6, 'WPc93aSZON', '4uI8yHdr9M', '2017-10-17 22:43:45', '2017-10-17 22:43:45'),
(34, 4, 'Prof. Jimmy Leuschke', 'xkeeling@example.org', '$2y$10$QvwDNC6kY9jl3xcZNVvtre407ZSZ0ALwsNbXRjJE0amywY1CJ9nBm', '77282799501', NULL, '2017-10-21', 1, NULL, 1, NULL, 5, 3, 'j8EoN34HVp', 'krruHHUPgk', '2017-10-17 22:43:45', '2017-10-21 05:19:50'),
(35, 2, 'Britney Mills', 'eeffertz@example.net', '$2y$10$QvwDNC6kY9jl3xcZNVvtre407ZSZ0ALwsNbXRjJE0amywY1CJ9nBm', '73399884673', NULL, NULL, 2, NULL, 1, NULL, 5, 3, 'RQquNiTMnB', '57PSQJ59M5', '2017-10-17 22:43:45', '2017-10-17 22:43:45'),
(36, 1, 'Edna Wehner II', 'qziemann@example.net', '$2y$10$QvwDNC6kY9jl3xcZNVvtre407ZSZ0ALwsNbXRjJE0amywY1CJ9nBm', '36923740851', '3212453647', '2017-10-21', 1, 'sfdgfh', 1, NULL, 5, 3, 'y0qXa3Si2M', 'QawawcYElb', '2017-10-17 22:43:45', '2017-10-20 23:30:17'),
(37, 6, 'Garrett Hessel V', 'jolie.gleason@example.org', '$2y$10$QvwDNC6kY9jl3xcZNVvtre407ZSZ0ALwsNbXRjJE0amywY1CJ9nBm', '65035410831', NULL, NULL, 2, NULL, 1, NULL, 5, 4, 'HOM8ow2DUK', 'zhxB54LwRH', '2017-10-17 22:43:45', '2017-10-17 22:43:45'),
(38, 1, 'Lawrence Schuppe MD', 'loma36@example.org', '$2y$10$QvwDNC6kY9jl3xcZNVvtre407ZSZ0ALwsNbXRjJE0amywY1CJ9nBm', '53913086001', NULL, NULL, 1, NULL, 1, NULL, 5, 8, '8FZYptrz1D', 'dPD7dULXVD', '2017-10-17 22:43:45', '2017-10-17 22:43:45'),
(39, 5, 'Mr. Rylan D\'Amore I', 'jcarter@example.org', '$2y$10$QvwDNC6kY9jl3xcZNVvtre407ZSZ0ALwsNbXRjJE0amywY1CJ9nBm', '85365900024', NULL, NULL, 2, NULL, 1, NULL, 5, 2, 'RsrCvYKDJq', 'EbetMAh7yz', '2017-10-17 22:43:45', '2017-10-17 22:43:45'),
(40, 7, 'Jay Dietrich', 'lhilll@example.org', '$2y$10$QvwDNC6kY9jl3xcZNVvtre407ZSZ0ALwsNbXRjJE0amywY1CJ9nBm', '20802826714', NULL, NULL, 1, NULL, 1, NULL, 5, 1, '9fRrsxFC8v', 'qDjEfOOAEG', '2017-10-17 22:43:45', '2017-10-17 22:43:45'),
(41, 5, 'Miss Claudia Schiller', 'scremin@example.org', '$2y$10$QvwDNC6kY9jl3xcZNVvtre407ZSZ0ALwsNbXRjJE0amywY1CJ9nBm', '6203258085', NULL, NULL, 2, NULL, 1, NULL, 5, 7, 'eAmFDdZsGZ', 'mGn4KQyW5v', '2017-10-17 22:43:45', '2017-10-17 22:43:45'),
(42, 6, 'Yasmin Trantow', 'georgette.kulas@example.org', '$2y$10$QvwDNC6kY9jl3xcZNVvtre407ZSZ0ALwsNbXRjJE0amywY1CJ9nBm', '81456783600', NULL, NULL, 2, NULL, 1, NULL, 5, 10, 'Ak0XAFPKvH', 'VdQHJ6PmP5', '2017-10-17 22:43:45', '2017-10-17 22:43:45'),
(43, 4, 'Hope Gottlieb', 'eugenia.runte@example.com', '$2y$10$QvwDNC6kY9jl3xcZNVvtre407ZSZ0ALwsNbXRjJE0amywY1CJ9nBm', '45759281656', NULL, NULL, 1, NULL, 1, NULL, 5, 6, 'KZtlGx37Zo', 'MRUTNKigZs', '2017-10-17 22:43:45', '2017-10-17 22:43:45'),
(44, 4, 'Mrs. Reva Hansen PhD', 'luther82@example.net', '$2y$10$QvwDNC6kY9jl3xcZNVvtre407ZSZ0ALwsNbXRjJE0amywY1CJ9nBm', '33180411905', NULL, '2017-10-21', 2, NULL, 1, NULL, 5, 7, '7syqUGBTEl', '6ipQMzJndx', '2017-10-17 22:43:45', '2017-10-21 05:19:12'),
(45, 7, 'Mr. Myles Dietrich II', 'chadrick.rowe@example.com', '$2y$10$QvwDNC6kY9jl3xcZNVvtre407ZSZ0ALwsNbXRjJE0amywY1CJ9nBm', '50929938257', NULL, NULL, 2, NULL, 1, NULL, 5, 2, 'p0vueCFboR', 'NXpGouJTYI', '2017-10-17 22:43:46', '2017-10-17 22:43:46'),
(46, 1, 'Admin', 'yamdwsdfvin@durbinlabs.com', '$2y$10$kjvpjYC5iPiPBN7dtLZ95uKMF6E4n4jUEw877hYWf4VDugG7ALvS.', '24553432', '5432545646', '2017-10-04', 2, 'fhgj', 1, NULL, 5, NULL, 'V9trCsWlglYDjfbNgSuAVDgN0zz7DcHlcyUWJRcxbCUkxC6lqV3IRlcdwJI2', NULL, '2017-10-18 01:52:05', '2017-10-18 01:52:05'),
(47, 1, 'Mejban Dhanmondi admin', 'mda@gmail.com', '$2y$10$.XCkmZHN1TYGC1sG.TrgWemJd5KEM90XoGyiy8eCeXgTYtTKWBsri', '', NULL, NULL, 1, NULL, 1, NULL, 5, NULL, NULL, NULL, '2017-10-19 04:14:32', '2017-10-19 04:14:32'),
(48, 4, 'new owner', 'ngo@gmail.com', '$2y$10$WbWY067ChkEbyIytS7Owu.q5ip9yqlLoMUfUYWZzeX1dlAY1QBc9W', '', NULL, NULL, 2, NULL, 1, NULL, 5, 2, NULL, NULL, '2017-10-19 04:18:01', '2017-10-19 10:25:35'),
(50, 4, 'sm sakil', 'pdo@gmail.com', '$2y$10$nNbBPIf.frnIjry8yVrSa.ByFd2aOPq8mRfDnC5lysc7S7bIOO9fa', '', NULL, NULL, 1, NULL, 1, NULL, 5, 8, NULL, 'tXvlZu5gFZisKQHGGh4Urw6MgUXc613SFT443H0GahhpRnJfFoYX9uYuJnnI', '2017-10-19 04:23:35', '2017-10-19 11:28:53'),
(51, 0, 'Nw', 'as@gmail.com', '$2y$10$wYgIqs7/6VgL82GZL4EB0uzwUdsD.QDvVTXvmI4.KRFu2hCJDV7zu', '3435424355', '45464532435', '2017-09-28', 2, 'ggf', 1, NULL, 5, 3, '4BFt9Lq7rWZRjhOFdC3aBC1ArYwcTUvtiN39KktFfErOPZAFDSpAcO1r2c8g', NULL, '2017-10-20 22:38:53', '2017-10-20 23:18:02'),
(52, 1, 'nwe', 'ra@gmail.com', '$2y$10$oq8hviQPDeV3Rh0/Az1zruhYBEnlMhpQkBY.r9TYzYoMMAMWeNSzS', '23435', '43546545344', '2017-09-29', 1, 'fgb', 1, NULL, 5, 7, 'dA7LsTunUzAac5nZWvNfd5qm05W9ro0FDkDieUUmWSST7j5u60AtvQB3psQJ', NULL, '2017-10-20 22:40:24', '2017-10-21 05:14:55'),
(53, 1, 'res 2', 'res2@gmail.com', '$2y$10$kORMqS4e9oXgyYdKdcNUUOXIMVxjlZLJPSRE4wzjSNMBvIcXgPhl.', '243543423435', '4354', '2017-10-21', 1, 'sdcds', 1, NULL, 5, 3, 'HMJVuZPS7u8BGjitVoq1yDyNF06XjRImPzGnuBCImrUiqZDPEuFOh1GKUR2U', NULL, '2017-10-21 03:58:47', '2017-10-21 03:58:47'),
(54, 1, 'admin 52', 'ad@gmail.com', '$2y$10$MmzyyCweB.wsCCD1dDx6QO8ZiTyWpSeys723t0uX3iYofAD0lo5ra', '2345434232', '1234567654345654', '2017-09-29', 2, 'wrtfhg', 1, NULL, 5, 3, 'TtzL9Wq1v1ANaxpnwsr0pPNxesI960MTaUTl2uHBc9vuXVEXH5sKiDFb3cOW', NULL, '2017-10-23 01:58:55', '2017-10-23 01:58:55');

-- --------------------------------------------------------

--
-- Table structure for table `wasted_foods`
--

CREATE TABLE `wasted_foods` (
  `id` int(10) UNSIGNED NOT NULL,
  `food_id` int(11) NOT NULL,
  `food_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `number_of_food` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wasted_foods`
--

INSERT INTO `wasted_foods` (`id`, `food_id`, `food_name`, `price`, `number_of_food`, `supplier_id`, `branch_id`, `comments`, `created_at`, `updated_at`) VALUES
(1, 7, NULL, 21, 213, 2, 2, 'wdqasd', '2017-09-26 06:14:23', '2017-10-22 12:15:09'),
(2, 17, NULL, 2000, 200, 3, 2, 'sx', '2017-10-12 03:39:02', '2017-10-22 12:15:07'),
(3, 22, NULL, 234, 20, 2, 2, ';lkjhfgdfs', '2017-10-22 03:47:35', '2017-10-23 07:55:50'),
(4, 24, NULL, 12, 1, 2, 3, 'dsfdc', '2017-10-22 05:12:34', '2017-10-22 05:12:34'),
(5, 24, NULL, 133, 12, 4, 3, 'dcf dvc', '2017-10-22 05:22:06', '2017-10-22 05:22:06');

-- --------------------------------------------------------

--
-- Table structure for table `waste_products`
--

CREATE TABLE `waste_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `ingredients_id` int(11) NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL,
  `price` double DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `branch_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `waste_products`
--

INSERT INTO `waste_products` (`id`, `ingredients_id`, `unit_id`, `supplier_id`, `amount`, `price`, `comments`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, 9, 1, 1, 5, 122, 'no comment', 2, '2017-09-20 01:32:19', '2017-10-21 07:03:56'),
(2, 16, 1, 2, 12, 21, 'edefs', 3, '2017-10-21 00:55:55', '2017-10-21 00:55:55'),
(3, 7, 1, 2, 12, 12, 'efd', 3, '2017-10-21 00:59:13', '2017-10-21 00:59:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complains`
--
ALTER TABLE `complains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_coupon_code_unique` (`coupon_code`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `foods_name_unique` (`name`);

--
-- Indexes for table `food_ingredients`
--
ALTER TABLE `food_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_types`
--
ALTER TABLE `food_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ingredients_name_unique` (`name`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`title`);

--
-- Indexes for table `menu_types`
--
ALTER TABLE `menu_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_features`
--
ALTER TABLE `restaurant_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `submenus`
--
ALTER TABLE `submenus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `submenus_submenu_name_unique` (`submenu_name`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_email_unique` (`email`);

--
-- Indexes for table `supplier_payments`
--
ALTER TABLE `supplier_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_nid_unique` (`nid`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- Indexes for table `wasted_foods`
--
ALTER TABLE `wasted_foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `waste_products`
--
ALTER TABLE `waste_products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `complains`
--
ALTER TABLE `complains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `food_ingredients`
--
ALTER TABLE `food_ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `food_types`
--
ALTER TABLE `food_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `menu_types`
--
ALTER TABLE `menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `restaurant_features`
--
ALTER TABLE `restaurant_features`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `submenus`
--
ALTER TABLE `submenus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `supplier_payments`
--
ALTER TABLE `supplier_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `wasted_foods`
--
ALTER TABLE `wasted_foods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `waste_products`
--
ALTER TABLE `waste_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
