-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2023 at 08:05 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_react_first_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 4, 'main', '94682abe9769fe25e879aaf45a43319f172330cedf90be540bc2bccc5cb4cb3f', '[\"*\"]', NULL, '2023-10-10 03:47:00', '2023-10-10 03:47:00'),
(2, 'App\\Models\\User', 4, 'main', 'f4385faadfb8d6cf9664ba30618cb7cd223b11b44edde5c6d6a3e8735735c205', '[\"*\"]', NULL, '2023-10-10 04:10:03', '2023-10-10 04:10:03'),
(3, 'App\\Models\\User', 4, 'main', '6895a456e6e39e832b4fa4836dbe0ea636036dc1133189bd21612844975f6413', '[\"*\"]', NULL, '2023-10-10 04:39:22', '2023-10-10 04:39:22'),
(4, 'App\\Models\\User', 4, 'main', '01ec935a86dde88524f9eb5b6d79ad16d14b4f1eae92da3c2a76686bfdd31f39', '[\"*\"]', '2023-10-10 04:48:52', '2023-10-10 04:42:22', '2023-10-10 04:48:52'),
(15, 'App\\Models\\User', 4, 'main', '039a56f0b0bf78181c977d0a5dae88b62a2c954f19b08144150cd4a9efc5fdd8', '[\"*\"]', '2023-10-11 07:59:17', '2023-10-11 06:22:00', '2023-10-11 07:59:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Abood', 'Abood@gmail.com', NULL, '$2y$10$qXiLFNlaZqRX.iVYcg.rLO6EyjQpY56olUj8x7rwHxzK.F0Q20rK2', NULL, '2023-10-10 03:47:00', '2023-10-10 03:47:00'),
(5, 'Ahmad', 'Ahmad@gmail.com', NULL, '$2y$10$TUQ8lW9XD1nXpy/vUMSNkuJ5GLhkfMO0C33C3M3awYAalBMUnLdZO', NULL, '2023-10-10 06:28:26', '2023-10-10 06:28:26'),
(6, 'Elliott Christiansen', 'ghill@example.org', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9ooutPnKNM', '2023-10-10 08:30:39', '2023-10-10 08:30:39'),
(7, 'Alphonso Lemke', 'natalie92@example.com', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9tFmccLtZy', '2023-10-10 08:30:39', '2023-10-10 08:30:39'),
(8, 'Koby Barton', 'pmraz@example.com', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1AjjVBdkF3', '2023-10-10 08:30:39', '2023-10-10 08:30:39'),
(9, 'Dr. Vance Casper', 'herbert.waters@example.org', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '49XPpLhPka', '2023-10-10 08:30:39', '2023-10-10 08:30:39'),
(10, 'Rachelle Turner V', 'lorenza03@example.org', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JPtxTTYqm3', '2023-10-10 08:30:39', '2023-10-10 08:30:39'),
(11, 'Eldon Considine', 'rpacocha@example.org', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iMcjhDRSqL', '2023-10-10 08:30:39', '2023-10-10 08:30:39'),
(12, 'Destinee Paucek', 'blanda.isai@example.com', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GhL1onEaVz', '2023-10-10 08:30:39', '2023-10-10 08:30:39'),
(13, 'Tyson Emard', 'dan24@example.org', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'r7psWCM8oh', '2023-10-10 08:30:39', '2023-10-10 08:30:39'),
(14, 'Charity Balistreri', 'fern.grady@example.com', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fz11dKTLI1', '2023-10-10 08:30:40', '2023-10-10 08:30:40'),
(15, 'Evie Fay', 'orussel@example.com', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'npJkBnaZil', '2023-10-10 08:30:40', '2023-10-10 08:30:40'),
(16, 'Mrs. Ashly Kuhic', 'adolfo61@example.com', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DxKbE60APB', '2023-10-10 08:30:40', '2023-10-10 08:30:40'),
(17, 'Tanner Crooks', 'everett66@example.net', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tv3YZ70bwR', '2023-10-10 08:30:40', '2023-10-10 08:30:40'),
(18, 'Nils Berge', 'hannah88@example.com', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Zuqtkx2c1b', '2023-10-10 08:30:40', '2023-10-10 08:30:40'),
(19, 'Leonel Crist', 'zthiel@example.net', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1c8aATa4Wr', '2023-10-10 08:30:40', '2023-10-10 08:30:40'),
(20, 'Manuel Schamberger', 'art.wiegand@example.com', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bIGFbvHVBE', '2023-10-10 08:30:40', '2023-10-10 08:30:40'),
(21, 'Delpha Leuschke', 'waldo12@example.org', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jr2Oo4RuOU', '2023-10-10 08:30:40', '2023-10-10 08:30:40'),
(22, 'Ladarius Wiza', 'imante@example.org', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZlddKb8gOx', '2023-10-10 08:30:40', '2023-10-10 08:30:40'),
(23, 'Verner Berge PhD', 'jodie.conroy@example.org', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GqtGhjOq7j', '2023-10-10 08:30:40', '2023-10-10 08:30:40'),
(24, 'Megane Smith', 'amiya.lemke@example.com', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0IaoyLuNWy', '2023-10-10 08:30:40', '2023-10-10 08:30:40'),
(25, 'Edd Schumm IV', 'smuller@example.com', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GHBtw5EMHI', '2023-10-10 08:30:40', '2023-10-10 08:30:40'),
(26, 'Demetris Gerlach', 'vilma00@example.net', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hj1v5wafaR', '2023-10-10 08:30:40', '2023-10-10 08:30:40'),
(27, 'Gus Funk', 'oruecker@example.com', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'czfSo9PEl9', '2023-10-10 08:30:40', '2023-10-10 08:30:40'),
(28, 'Ebony Kessler V', 'pullrich@example.net', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tL5rL45Mz6', '2023-10-10 08:30:40', '2023-10-10 08:30:40'),
(29, 'Miss Alene Runte IV', 'dooley.davion@example.net', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'f3CE88q2Vk', '2023-10-10 08:30:40', '2023-10-10 08:30:40'),
(30, 'Harley Cole', 'cemard@example.net', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KiRkAgkNJF', '2023-10-10 08:30:40', '2023-10-10 08:30:40'),
(31, 'Jordan Wolff', 'skling@example.org', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BTQiEXBeuz', '2023-10-10 08:30:40', '2023-10-10 08:30:40'),
(32, 'Emily Marks', 'jaida.gleichner@example.org', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8XnBxumCvI', '2023-10-10 08:30:40', '2023-10-10 08:30:40'),
(33, 'Miss Corine Auer I', 'theron.bashirian@example.net', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Gp4lFdjchk', '2023-10-10 08:30:40', '2023-10-10 08:30:40'),
(34, 'Bo Schaefer', 'qherman@example.org', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8x1iEM8wmh', '2023-10-10 08:30:40', '2023-10-10 08:30:40'),
(35, 'Torey Bahringer', 'bquitzon@example.net', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Yfu5TvJj18', '2023-10-10 08:30:41', '2023-10-10 08:30:41'),
(36, 'Dennis Hamill', 'mike.collins@example.org', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'K3kMaeLSZ4', '2023-10-10 08:30:41', '2023-10-10 08:30:41'),
(37, 'Ella Strosin', 'metz.kelsie@example.net', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'R15ltJfBvF', '2023-10-10 08:30:41', '2023-10-10 08:30:41'),
(38, 'Gaetano Ebert I', 'bernier.elmer@example.org', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CVNr3ehxhs', '2023-10-10 08:30:41', '2023-10-10 08:30:41'),
(39, 'Prof. Pierre Torphy I', 'bergstrom.beulah@example.org', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SCX56UAOYc', '2023-10-10 08:30:41', '2023-10-10 08:30:41'),
(40, 'Prof. Mylene Runte', 'tracey.legros@example.com', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oTv2QGdW4w', '2023-10-10 08:30:41', '2023-10-10 08:30:41'),
(42, 'Gennaro Fisher', 'walsh.ellsworth@example.org', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SAhc0eNPHI', '2023-10-10 08:30:41', '2023-10-10 08:30:41'),
(43, 'Rowena Muller', 'friesen.sierra@example.net', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YlxVjIp2Fu', '2023-10-10 08:30:41', '2023-10-10 08:30:41'),
(44, 'Rupert Oberbrunner', 'jazmyn.larson@example.org', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iIl9x51TC1', '2023-10-10 08:30:41', '2023-10-10 08:30:41'),
(45, 'Mr. Kenton Thiel', 'tjerde@example.net', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FfyOT2vhBf', '2023-10-10 08:30:41', '2023-10-10 08:30:41'),
(46, 'Krista Casper', 'qboyer@example.org', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 's00vanGVdT', '2023-10-10 08:30:41', '2023-10-10 08:30:41'),
(47, 'Jaida Lang', 'langosh.cordelia@example.com', '2023-10-10 08:30:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZBvOcojkrO', '2023-10-10 08:30:41', '2023-10-10 08:30:41'),
(51, 'Lolo Saad s', 'Lolo@gmail.com', NULL, '$2y$10$zG75iWtYPpybAu.O2DAoVeyIjNdP60Kv0YXibT6LmaIPiDiemXag6', NULL, '2023-10-11 05:20:58', '2023-10-11 06:20:17'),
(52, 'Ahmad Sad', 'AhmadSad@gmail.com', NULL, '$2y$10$UhadjuGlZxzdOG2LG6XkVuHJDx2pq45teW8DkzBIvNKcltUsByCbG', NULL, '2023-10-11 06:22:30', '2023-10-11 06:22:30'),
(53, 'ashdiasd', 'asdasjd@gmail.com', NULL, '$2y$10$SSBwfr8feeD5/pFybA9esObqrB.NJl2z91QRvXOY8i/W0q.dHQbgu', NULL, '2023-10-11 06:23:51', '2023-10-11 06:23:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
