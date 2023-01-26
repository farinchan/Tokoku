-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 26, 2023 at 05:25 PM
-- Server version: 5.7.33
-- PHP Version: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'admin@fajri-dev.com', 1, '2022-12-06 08:26:29', 1),
(2, '::1', 'admin@fajri-dev.com', 1, '2022-12-06 09:03:55', 1),
(3, '::1', 'tedfas@sdc.x', 6, '2022-12-06 10:01:26', 1),
(4, '::1', 'fajrichan', NULL, '2022-12-06 18:35:16', 0),
(5, '::1', 'fajrichan', NULL, '2022-12-06 18:35:32', 0),
(6, '::1', 'fajri@farindev.my.id', 7, '2022-12-06 18:36:10', 1),
(7, '::1', 'fajrichan', NULL, '2022-12-08 11:26:57', 0),
(8, '::1', 'admin@fajri-dev.com', 1, '2022-12-08 11:27:11', 1),
(9, '::1', 'fajrichan', NULL, '2022-12-20 22:56:42', 0),
(10, '::1', 'fajririnaldichan@gmail.com', NULL, '2022-12-20 22:56:58', 0),
(11, '::1', 'admin@fajri-dev.com', 1, '2022-12-20 22:59:06', 1),
(12, '::1', 'fajririnaldichan@gmail.com', NULL, '2022-12-22 05:14:06', 0),
(13, '::1', 'fajririnaldichan@gmail.com', NULL, '2022-12-22 05:14:24', 0),
(14, '::1', 'admin@fajri-dev.com', NULL, '2022-12-22 05:14:42', 0),
(15, '::1', 'admin@fajri-dev.com', NULL, '2022-12-22 05:15:36', 0),
(16, '::1', 'admin@fajri-dev.com', 1, '2022-12-22 05:16:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `user_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `user_id`) VALUES
(17, 'djcnds j', 'djcnds-j', 6),
(18, 'lenovo', 'lenovo', 7),
(19, 'asus', 'asus', 7),
(20, 'acer', 'acer', 7),
(21, 'ASUS', 'asus', 1),
(22, 'LENOVO', 'lenovo', 1),
(23, 'ACER', 'acer', 1),
(24, 'IBM', 'ibm', 1),
(25, 'TOSHIBA', 'toshiba', 1),
(26, 'FUJITSU', 'fujitsu', 1),
(27, 'SAMSUNG', 'samsung', 1);

-- --------------------------------------------------------

--
-- Table structure for table `finances`
--

CREATE TABLE `finances` (
  `id` int(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `amount` int(255) NOT NULL,
  `note` varchar(100) NOT NULL,
  `user_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `finances`
--

INSERT INTO `finances` (`id`, `name`, `description`, `date`, `amount`, `note`, `user_id`) VALUES
(2, 'test', 'ascascascasca', '2022-11-02', 2000000, 'income', 1),
(3, 'belanja harian 1', 'Beli Stok Beras', '2022-11-02', 10000000, 'income', 1),
(4, 'belanja 2', 'biasa bro', '2022-11-27', 6666, 'outcome', 1),
(5, 'ascasjcna', 'dksjbvdsukvbsvos', '2022-12-29', 213214, 'income', 1),
(7, 'belanja test', 'biasa bro', '2022-11-27', 45242288, 'income', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1670336698, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `barcode` varchar(50) DEFAULT NULL,
  `stock` int(10) DEFAULT NULL,
  `selling_price` int(255) DEFAULT NULL COMMENT 'Harga jual',
  `capital_price` int(255) DEFAULT NULL COMMENT 'Harga modal',
  `category_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `barcode`, `stock`, `selling_price`, `capital_price`, `category_id`, `user_id`) VALUES
(9, 'test', 'sdhcbsdh', '234823', 2147483647, 23840230, 29842, 17, 6),
(10, 'adlcn', 'dackln', '1312', 15, 123, 213, 17, 6),
(11, 'lenovo Ideapad Slin 3', 'ryzen 5', '882393140484', 10, 8200000, 7500000, 18, 7),
(12, 'Lenovo Ideapad Slim 3', 'Processor ryzen 5 4500u RAM 8GB', '123125324869', 12, 8500000, 8000000, 21, 1),
(13, 'Lenovo Ideapad Slim 3i', 'tipe Core I5 10000u Ram 8GB', '3963806239058', 19, 9300000, 9000000, 22, 1),
(14, 'Acer Aspire 5', 'Intel® Core™ i5-1235U prosesor Deca-core 1.30GHz', '2352652634', 21, 9800000, 9500000, 23, 1),
(15, ' ASUS TUF Dash F15', 'Up to GeForce RTX™ 3070 Laptop GPU\r\nIntel® Core™ i7-12650H Processor \r\nUp to 15.6” QHD 165Hz 100% DCI-P3 Display ', '2423653463', 9, 20199000, 20000000, 21, 1),
(16, 'Samsung Galaxy Book2 Pro 360', ' 12th Gen Intel® Core™ processor', '1424563218', 5, 14800000, 14000000, 27, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `staf_toko` tinyint(1) NOT NULL DEFAULT '0',
  `staf_toko_id` int(11) DEFAULT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `staf_toko`, `staf_toko_id`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin@fajri-dev.com', 'fajrichan', '$2y$10$NeQq0.8GAaK3tV.EjwZ.Zu6ZD0vcsiWHBOwQJKH1OjktIaJi2w56.', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-06 08:26:18', '2022-12-06 08:26:18', NULL),
(2, 'test@test.com', 'test', '$2y$10$PLT4kLfBwKREaGS5WtTqbOKPR5bGMfE50RDzbiUdQArprHmTZWzla', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-06 09:13:43', '2022-12-06 09:13:43', NULL),
(3, 'gege@kjjs.ccc', 'esqwqw', '$2y$10$WGv8cRvBG11gsT3Ffd7F2.G9gmHJn6TXujN.W0kxqMu9Se2HH3ziW', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-06 09:29:16', '2022-12-06 09:29:16', NULL),
(5, 'inan@fajri-dev.com', 'inandi', '$2y$10$co3IB7Z/n8LhuV6SxLjUaunomGjm0lUXusInjj9ZT9aV0LXNSnKpO', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-06 09:56:26', '2022-12-06 09:56:26', NULL),
(6, 'tedfas@sdc.x', 'qsxqaw', '$2y$10$OLETsnEIgf.q4jQ7sDoi0uBIUMTEd6Bj3p6hyPHhbsNEDzGNXHjt6', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-06 09:59:28', '2022-12-06 09:59:28', NULL),
(7, 'fajri@farindev.my.id', 'fajri', '$2y$10$OVZB09CB9CwuleFs6HodM.jXvKCABkmqyTaWKUrd2UAny4zbCIgfG', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-06 18:36:03', '2022-12-06 18:36:03', NULL),
(9, 'inan@gmail.com', 'inan', '$2y$10$dtGXhaGTbuo04/UPMECpjeBQ74LxudfBnjpeTal1/6a9TU6ohYucC', 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-06 18:45:04', '2022-12-06 18:45:04', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finances`
--
ALTER TABLE `finances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `finances`
--
ALTER TABLE `finances`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
