-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 22 Okt 2018 pada 23.34
-- Versi server: 5.7.19
-- Versi PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sentinel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(5, 1, 'DNNsOceihhXGrBguJ8OBmZTkpMmYXTBR', 1, '2018-10-21 22:20:00', '2018-10-21 22:20:00', '2018-10-21 22:20:00'),
(6, 2, '2k6tGx0YpTQ8yQrUhod4TvEvy0SMK5LI', 1, '2018-10-21 22:20:00', '2018-10-21 22:20:00', '2018-10-21 22:20:00'),
(7, 3, 'N6dttNzTORxwp9ii5s73oXsr39aPGODY', 1, '2018-10-22 16:31:04', '2018-10-22 16:31:04', '2018-10-22 16:31:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bukus`
--

CREATE TABLE `bukus` (
  `id` int(11) NOT NULL,
  `judul` tinytext NOT NULL,
  `penerbit` tinytext NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bukus`
--

INSERT INTO `bukus` (`id`, `judul`, `penerbit`, `tanggal`, `created_at`, `updated_at`) VALUES
(2, 'Hello', 'There', '2018-10-18', '2018-10-22 07:23:39', '2018-10-22 07:23:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_07_02_230147_migration_cartalyst_sentinel', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `persistences`
--

CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(4, 1, 'RnWylDvIRnjc0x9iikiHoepW5h7N4imO', '2018-10-21 22:21:29', '2018-10-21 22:21:29'),
(5, 1, 'XzBqL7ndwkcuB9Q2huauYbBCLOrne6Y2', '2018-10-21 23:48:45', '2018-10-21 23:48:45'),
(6, 1, 's3XeDIuiw9amqkW6Bgd9K2j3ngaknqiY', '2018-10-22 05:56:26', '2018-10-22 05:56:26'),
(7, 1, 'ZmE94BQTlsFa8ZQm3XrTzB5jY8k1VvAg', '2018-10-22 05:56:32', '2018-10-22 05:56:32'),
(8, 1, 'gvYrTB9pvbEz7cUva9DxEmpR9F8hKuJj', '2018-10-22 05:59:22', '2018-10-22 05:59:22'),
(9, 1, '00fCGebWjrPB7HxyMMczQkURGmqmMsfP', '2018-10-22 05:59:38', '2018-10-22 05:59:38'),
(10, 1, 'EIjrFSg41UdkwDPJRVwN8MxX2tTJkcWl', '2018-10-22 06:03:55', '2018-10-22 06:03:55'),
(11, 1, 'EJNjfZq9Y4oAtOws0u0uKSpSuA7x4pJT', '2018-10-22 06:06:33', '2018-10-22 06:06:33'),
(12, 1, 'ZNyOU2VZf7ZBeoHmD3NcB5QKYkkCSmVt', '2018-10-22 06:08:11', '2018-10-22 06:08:11'),
(13, 1, '0hJgA3OhGgHbBeeA1Y37Ht7k1U7feNzg', '2018-10-22 06:10:18', '2018-10-22 06:10:18'),
(14, 1, 'dwJXocaPWm6PRejlTg9H2CUqB6KFn9O3', '2018-10-22 06:13:15', '2018-10-22 06:13:15'),
(15, 1, '3YWD4zqygW0qHcH1mTCSyH9IFkyg9pzs', '2018-10-22 06:15:07', '2018-10-22 06:15:07'),
(16, 1, 'OrqaaizIsBC3KCmC9txC35n4J9cc2EBu', '2018-10-22 06:15:51', '2018-10-22 06:15:51'),
(17, 1, '8WIB3BHmVtGcaI1M3YFpG6gb6kkEiCQL', '2018-10-22 06:17:18', '2018-10-22 06:17:18'),
(18, 1, 'xt0SbNbnv7ViG3t3FvQhTYwx6zDhTcmH', '2018-10-22 06:17:37', '2018-10-22 06:17:37'),
(19, 1, 'pYVtSTcybwaASuYzor1fqvpwyKR0YmRF', '2018-10-22 06:19:26', '2018-10-22 06:19:26'),
(20, 1, 'KX9NBpvxZRquOjOQDxJH61ac68f3Cy2b', '2018-10-22 06:19:33', '2018-10-22 06:19:33'),
(21, 1, 'yHb8We4VSYOgVpdFfutbDW4ryU6geiDR', '2018-10-22 06:19:50', '2018-10-22 06:19:50'),
(22, 1, 'Ux2iBlOyr28mfFCGmBcCcNIQLiKbI6eV', '2018-10-22 06:20:25', '2018-10-22 06:20:25'),
(23, 1, 'cHN1gFb4zzycj4G6ZxCh3eLGsGcfziyr', '2018-10-22 06:22:06', '2018-10-22 06:22:06'),
(24, 1, 'v1EAgZeQCr3i0G54rEdBxMrzocSXtFm9', '2018-10-22 06:22:11', '2018-10-22 06:22:11'),
(25, 1, '9ayN4XRVe5XhmUv7IqzbnDQZ9E12lRBO', '2018-10-22 06:22:40', '2018-10-22 06:22:40'),
(26, 1, '1oHtAKhJrTgjK2j6hFjIkktyvVRqj31T', '2018-10-22 06:22:53', '2018-10-22 06:22:53'),
(27, 1, 'N7J6TuRv0PigPu1yMdTRTMEMO0UZuZ7j', '2018-10-22 06:23:44', '2018-10-22 06:23:44'),
(28, 1, '8iwTTl1nu6fLQppkZVW9CddokXGoIJi9', '2018-10-22 06:26:40', '2018-10-22 06:26:40'),
(29, 1, 'T38Niy77f5LwbCRC96fJ0HqFGvZx40mP', '2018-10-22 06:27:26', '2018-10-22 06:27:26'),
(30, 1, 'HlieozvIv5G1PtJ23CcRKm2C7x7s2AYN', '2018-10-22 06:27:55', '2018-10-22 06:27:55'),
(31, 1, 'mHD5rA8P7Jj2OTHG6XQoPCvNGdg0a9Kv', '2018-10-22 06:29:37', '2018-10-22 06:29:37'),
(32, 1, 'VX7WyktQGiTx9qHFculn2YuKxitW285V', '2018-10-22 15:59:08', '2018-10-22 15:59:08'),
(33, 1, '4BqtvbFTqFpTdu3pF1LL5tAcOC4q5byN', '2018-10-22 16:18:46', '2018-10-22 16:18:46'),
(34, 3, 'K3Rk54reS46siqmDW3yiyxsxdcmKnFGv', '2018-10-22 16:31:15', '2018-10-22 16:31:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reminders`
--

CREATE TABLE `reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'Administrator', '{\"admin\":true}', '2018-10-21 22:19:59', '2018-10-21 22:19:59'),
(2, 'subscribers', 'Subscribers', NULL, '2018-10-21 22:19:59', '2018-10-21 22:19:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_users`
--

CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-10-21 22:20:00', '2018-10-21 22:20:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, NULL, 'global', NULL, '2018-10-21 23:47:54', '2018-10-21 23:47:54'),
(2, NULL, 'ip', '127.0.0.1', '2018-10-21 23:47:54', '2018-10-21 23:47:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `last_login`, `first_name`, `last_name`, `location`, `created_at`, `updated_at`) VALUES
(1, 'admin@example123.com', '$2y$10$FS0eE8S2sGTDhpMF0gFwyuDP7BFQeAxG4vnjA5khc5aS.plqEPOT.', NULL, '2018-10-22 16:18:46', 'Admin', 'Sentinel', 'Bandung', '2018-10-21 22:20:00', '2018-10-22 16:18:46'),
(2, 'user@example123.com', '$2y$10$4S9iDEvTysan45GWmm9pBufD6V3nran7onN9jsGork6yZUvGkL2CK', NULL, NULL, 'User', 'Sentinel', 'Ciamis', '2018-10-21 22:20:00', '2018-10-21 22:20:00'),
(3, 'author@blog.com', '$2y$10$zyKBXk3IOwAW.qnH/xQGxOmcHodQ1ToXFAy7J45Z5/RvIzxK/MMyi', NULL, '2018-10-22 16:31:15', 'author', 'blog', 'Jakarta', '2018-10-22 16:31:04', '2018-10-22 16:31:15');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bukus`
--
ALTER TABLE `bukus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`);

--
-- Indeks untuk tabel `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indeks untuk tabel `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`);

--
-- Indeks untuk tabel `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `bukus`
--
ALTER TABLE `bukus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
