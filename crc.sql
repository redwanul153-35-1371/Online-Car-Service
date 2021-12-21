-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2021 at 01:28 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crc`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_18_082412_create_roles_table', 1),
(4, '2019_07_22_141831_create_accounts_table', 2),
(5, '2019_07_24_041957_account', 3),
(6, '2019_07_24_073044_create_crud_tenants_table', 4),
(8, '2019_07_25_050820_create_tenants_table', 5),
(9, '2019_07_26_081102_create_proposals_table', 6),
(10, '2019_07_26_082151_create_proposals_table', 7),
(11, '2019_07_26_164844_create_proposals_table', 8),
(12, '2019_07_26_190001_create_flats_table', 9),
(13, '2019_07_27_164948_create_checks_table', 10),
(14, '2019_07_28_062231_create_bills_table', 11),
(17, '2019_07_29_174923_create_problems_table', 12),
(18, '2019_08_01_080625_create_flats_table', 13),
(19, '2019_08_03_161436_create_employees_table', 14),
(20, '2019_08_04_144210_create_flat_bookings_table', 15),
(24, '2019_11_18_170352_create_tests_table', 16),
(25, '2019_11_18_180206_create_flats_table', 16),
(26, '2019_11_21_190457_create_bookings_table', 16),
(27, '2019_12_01_064501_create_bookings_table', 17),
(28, '2019_12_01_092207_create_bookings_table', 18),
(29, '2021_03_22_013144_create_profits_table', 19),
(30, '2021_04_21_010649_create_services_table', 20);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('tenant778@gmail.com', '$2y$10$3XyHqfWy2ixUAgsgJjGSLO6wN69tNen87nggn39FuU1euiWYamkFO', '2019-08-01 11:47:35');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, NULL),
(2, 'Manager', 'manager', NULL, NULL),
(3, 'Customer', 'customer', NULL, NULL),
(4, 'Security', 'security', NULL, NULL),
(5, 'Machanic', 'machanic', NULL, NULL),
(6, 'Driver', 'driver', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_model` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'defaulttenantphoto.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `date`, `name`, `phone`, `email`, `address`, `car_model`, `car_image`, `created_at`, `updated_at`) VALUES
(17, '2021-04-23', 'Sarjit Islam', '01726184147', 'admin778@gmail.com', 'Sundordi, Torki Bandar, Gournadi, Barisal', '4545FTH', '17.PNG', NULL, '2021-04-22 22:13:20'),
(19, '2021-04-24', 'Sarjit Islam', '01726184147', 'manager778@gmail.com', 'Sundordi, Torki Bandar, Gournadi, Barisal', '4545FTH', '19.PNG', NULL, '2021-04-24 00:23:19'),
(22, '2021-04-24', 'Sarjit Islam', '01726184147', 'engineermithubd@gmail.com', 'Sundordi, Torki Bandar, Gournadi, Barisal', '4545FTH', '22.jpeg', NULL, '2021-04-24 04:07:54'),
(24, '2021-04-24', 'Jishan Khan', '01726184147', 'admin778@gmail.com', 'Sundordi, Torki Bandar, Gournadi, Barisal', '4545FTH', '24.jpg', NULL, '2021-04-24 04:26:30');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '2',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `about` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `email_verified_at`, `password`, `image`, `about`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'Admin', 'admin778@gmail.com', NULL, '$2y$10$tzkjrLBNtwo80wj7zTFONe4QuI4Z3xYl2NQbBszx3YGur029gM.sK', 'default.png', NULL, 'Nl87eK1tLFUAwFbR99i5W8df5FJA2fVF1IBzu2OHbmshuulpNXPQIeA1mV8f', NULL, NULL),
(2, 2, 'Manager', 'Manager', 'manager778@gmail.com', NULL, '$2y$10$OUrAdeGeyQNqHT3mKrd2AeZpcYZ0d9oStVxbuUdAU/EPNv2kHpQIS', 'default.png', NULL, '7E2cOwiHd43V7UM5Fur5PNFI2z1jzQuqHdbnY9XmjSRDiImXhIei1N93aTfU', NULL, NULL),
(3, 3, 'Customer', 'Customer', 'customer778@gmail.com', NULL, '$2y$10$j5gxuzzaoWHHF0b9Eg8AE.2ngiY.y37P4mLy1cCuM1nqQQ.YdEcg2', 'default.png', NULL, 'wl5ipmGRAwNGrkEmxVqQT8uK1EoxJ1vHMyZljsJPb6ApndIo6830NCV7n21d', NULL, NULL),
(4, 4, 'Security', 'security', 'security778@gmail.com', NULL, '$2y$10$eEnmwaxeQmQwguF3Vu1hxeDIoj4Hbu7pTU7/x3JsgUjJppcsoYxTS', 'default.png', NULL, '3AanM10P8tgrDmmiORaiu1icjLjrsjSIJy8uMB1FwLFTdnVHJrDUb7Ce1vIL', NULL, NULL),
(5, 5, 'Machanic', 'Machanic', 'machanic@gmail.com', NULL, '$2y$10$G/eQlZ8wn7cqogplFsjFZu4ZFBcZ/yRnv8BcGTy0R9fanC6lgy1ee', 'default.png', NULL, 'mwXObF0zztuvBydtlXLlP4CdIY6FEHpxDXwP13fkkSUBXBrmbSrIUX4pPwaY', NULL, NULL),
(6, 6, 'Driver', 'Driver', 'driver778@gmail.com', NULL, '$2y$10$3q3Akj3iCQ5kx8MF1YJ77ez3ITuo4dTiytCeS73cZikRfZGSy4.da', 'default.png', NULL, 'Zb869PT0UjnHCjuHAQKVxTiUnhGrfJ7uGjVwqsNYFxousVIFmYDyarivqUuP', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
