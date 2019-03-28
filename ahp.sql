-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Mar 2019 pada 10.44
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ahp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `about_products`
--

CREATE TABLE `about_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `about_products`
--

INSERT INTO `about_products` (`id`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Produk yang kami jual adalah produk dengan kualitas terbaik & sudah teruji di masayarakat luas.', '2019-03-26 02:51:26', '2019-03-26 02:51:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, '2019-03-12 07:59:56'),
(2, 0, 2, 'AHP IT', 'fa-sitemap', NULL, NULL, NULL, '2019-03-10 21:35:07'),
(3, 12, 18, 'User', 'fa-users', 'auth/users', NULL, NULL, '2019-03-26 02:48:41'),
(4, 2, 6, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2019-03-16 10:17:13'),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2019-03-16 10:17:13'),
(6, 2, 3, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2019-03-12 07:46:51'),
(7, 2, 4, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2019-03-12 07:46:51'),
(10, 34, 22, 'Produk Kategori', 'fa-th-large', 'auth/product-categorys', NULL, '2019-02-24 04:22:27', '2019-03-26 02:50:56'),
(12, 0, 17, 'Master Data', 'fa-tasks', NULL, NULL, '2019-03-10 21:35:28', '2019-03-26 02:48:24'),
(13, 0, 24, 'Setting', 'fa-gears', NULL, NULL, '2019-03-11 08:15:22', '2019-03-26 02:50:56'),
(14, 13, 30, 'Visi Misi', 'fa-graduation-cap', 'auth/visi-misi', NULL, '2019-03-11 08:17:49', '2019-03-26 02:50:56'),
(15, 13, 27, 'Privacy Policy', 'fa-expeditedssl', 'auth/privacy-policy', NULL, '2019-03-11 08:41:31', '2019-03-26 02:50:56'),
(16, 13, 26, 'FAQ', 'fa-comments', 'auth/faq', NULL, '2019-03-11 08:43:38', '2019-03-26 02:50:56'),
(18, 13, 29, 'Term Of Use', 'fa-clipboard', 'auth/term-of-use', NULL, '2019-03-11 08:50:10', '2019-03-26 02:50:56'),
(19, 13, 28, 'Tentang Kami', 'fa-info-circle', 'auth/about-us', NULL, '2019-03-12 07:45:00', '2019-03-26 02:50:56'),
(20, 13, 25, 'Benefit', 'fa-line-chart', 'auth/benefit', NULL, '2019-03-12 08:24:09', '2019-03-26 02:50:56'),
(21, 34, 23, 'Produk Kelompok', 'fa-cubes', 'auth/product-groups', NULL, '2019-03-12 11:42:45', '2019-03-26 02:50:56'),
(22, 0, 7, 'CMS', 'fa-wordpress', NULL, NULL, '2019-03-13 09:23:48', '2019-03-16 10:17:13'),
(23, 22, 8, 'Banners', 'fa-image', 'auth/banners', NULL, '2019-03-13 09:26:13', '2019-03-16 10:17:13'),
(24, 22, 10, 'Our Partner', 'fa-user-plus', 'auth/our-partner', NULL, '2019-03-13 09:29:44', '2019-03-16 10:11:55'),
(25, 22, 9, 'News', 'fa-newspaper-o', 'auth/news', NULL, '2019-03-13 11:20:29', '2019-03-16 10:17:13'),
(26, 22, 11, 'Pengunjung', 'fa-area-chart', 'auth/pengunjung', NULL, '2019-03-16 09:49:40', '2019-03-16 10:17:13'),
(27, 22, 12, 'Testimonial', 'fa-quote-left', 'auth/testimonial', NULL, '2019-03-17 01:09:24', '2019-03-22 06:16:33'),
(28, 22, 13, 'Album Family', 'fa-file-picture-o', 'auth/album-family', NULL, '2019-03-17 01:10:14', '2019-03-22 06:16:33'),
(30, 0, 14, 'Contact Us', 'fa-phone-square', NULL, NULL, '2019-03-22 05:54:45', '2019-03-26 02:48:24'),
(31, 30, 15, 'Profile', 'fa-building', 'auth/contact-profile', NULL, '2019-03-22 05:56:40', '2019-03-26 02:48:24'),
(32, 30, 16, 'Support', 'fa-comments-o', 'auth/contact-support', NULL, '2019-03-22 05:57:02', '2019-03-26 02:48:24'),
(33, 34, 21, 'Produk', 'fa-cubes', '/auth/products', NULL, '2019-03-22 08:50:00', '2019-03-26 02:50:56'),
(34, 0, 19, 'Master Produk', 'fa-cube', NULL, NULL, '2019-03-22 21:44:52', '2019-03-26 02:48:41'),
(35, 34, 20, 'Main Title Produk', 'fa-paragraph', 'auth/main-product', NULL, '2019-03-26 02:50:46', '2019-03-26 02:59:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-23 23:52:28', '2019-02-23 23:52:28'),
(2, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-23 23:52:36', '2019-02-23 23:52:36'),
(3, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-02-23 23:52:53', '2019-02-23 23:52:53'),
(4, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Rindang Ramadhan\",\"password\":\"admin\",\"password_confirmation\":\"admin\",\"_token\":\"lh69sjja42WZt6GTRX8PzAuIBvsjbY0c9lyV4REj\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\"}', '2019-02-23 23:53:29', '2019-02-23 23:53:29'),
(5, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-02-23 23:53:29', '2019-02-23 23:53:29'),
(6, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Rindang Ramadhan\",\"password\":\"$2y$10$yQjnw0ndlZ8DIWNKaPpla..oFzucC.18JISG96z1KpyR1RF\\/0I0Oi\",\"password_confirmation\":\"$2y$10$yQjnw0ndlZ8DIWNKaPpla..oFzucC.18JISG96z1KpyR1RF\\/0I0Oi\",\"_token\":\"lh69sjja42WZt6GTRX8PzAuIBvsjbY0c9lyV4REj\",\"_method\":\"PUT\"}', '2019-02-23 23:53:48', '2019-02-23 23:53:48'),
(7, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-02-23 23:53:48', '2019-02-23 23:53:48'),
(8, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-02-23 23:54:44', '2019-02-23 23:54:44'),
(9, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-02-23 23:54:57', '2019-02-23 23:54:57'),
(10, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-23 23:59:05', '2019-02-23 23:59:05'),
(11, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-24 00:01:05', '2019-02-24 00:01:05'),
(12, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-24 00:01:19', '2019-02-24 00:01:19'),
(13, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-24 00:02:01', '2019-02-24 00:02:01'),
(14, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-24 03:40:29', '2019-02-24 03:40:29'),
(15, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-24 03:40:59', '2019-02-24 03:40:59'),
(16, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-24 03:41:43', '2019-02-24 03:41:43'),
(17, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-24 03:43:01', '2019-02-24 03:43:01'),
(18, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 03:43:12', '2019-02-24 03:43:12'),
(19, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 03:43:17', '2019-02-24 03:43:17'),
(20, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 03:43:20', '2019-02-24 03:43:20'),
(21, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-02-24 04:07:45', '2019-02-24 04:07:45'),
(22, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Master Data\",\"icon\":\"fa-server\",\"uri\":\"auth\\/product-categorys\",\"roles\":[\"1\",null],\"permission\":\"auth.login\",\"_token\":\"NuVxfy6nyJjVYLwy0k6HRQH51WkvtaHyfUtswpqn\"}', '2019-02-24 04:08:38', '2019-02-24 04:08:38'),
(23, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-24 04:08:39', '2019-02-24 04:08:39'),
(24, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:08:43', '2019-02-24 04:08:43'),
(25, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Master Data\",\"icon\":\"fa-server\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":\"auth.login\",\"_token\":\"NuVxfy6nyJjVYLwy0k6HRQH51WkvtaHyfUtswpqn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2019-02-24 04:08:52', '2019-02-24 04:08:52'),
(26, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-24 04:08:53', '2019-02-24 04:08:53'),
(27, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:08:57', '2019-02-24 04:08:57'),
(28, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:09:05', '2019-02-24 04:09:05'),
(29, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:09:08', '2019-02-24 04:09:08'),
(30, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Master Data\",\"icon\":\"fa-server\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"NuVxfy6nyJjVYLwy0k6HRQH51WkvtaHyfUtswpqn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2019-02-24 04:09:21', '2019-02-24 04:09:21'),
(31, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-24 04:09:21', '2019-02-24 04:09:21'),
(32, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:09:24', '2019-02-24 04:09:24'),
(33, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Master Data\",\"icon\":\"fa-server\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"NuVxfy6nyJjVYLwy0k6HRQH51WkvtaHyfUtswpqn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2019-02-24 04:09:33', '2019-02-24 04:09:33'),
(34, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-24 04:09:33', '2019-02-24 04:09:33'),
(35, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-24 04:09:38', '2019-02-24 04:09:38'),
(36, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"Category Products\",\"icon\":\"fa-th-large\",\"uri\":\"auth\\/product-categorys\",\"roles\":[\"1\",null],\"permission\":\"auth.login\",\"_token\":\"NuVxfy6nyJjVYLwy0k6HRQH51WkvtaHyfUtswpqn\"}', '2019-02-24 04:13:32', '2019-02-24 04:13:32'),
(37, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-24 04:13:33', '2019-02-24 04:13:33'),
(38, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"NuVxfy6nyJjVYLwy0k6HRQH51WkvtaHyfUtswpqn\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9}]}]\"}', '2019-02-24 04:13:43', '2019-02-24 04:13:43'),
(39, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:13:44', '2019-02-24 04:13:44'),
(40, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:13:47', '2019-02-24 04:13:47'),
(41, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":\"5\"}', '2019-02-24 04:13:56', '2019-02-24 04:13:56'),
(42, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:14:05', '2019-02-24 04:14:05'),
(43, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '[]', '2019-02-24 04:15:29', '2019-02-24 04:15:29'),
(44, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:15:36', '2019-02-24 04:15:36'),
(45, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:15:41', '2019-02-24 04:15:41'),
(46, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:18:51', '2019-02-24 04:18:51'),
(47, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:20:02', '2019-02-24 04:20:02'),
(48, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:20:11', '2019-02-24 04:20:11'),
(49, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '[]', '2019-02-24 04:20:30', '2019-02-24 04:20:30'),
(50, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:20:59', '2019-02-24 04:20:59'),
(51, 1, 'admin/auth/menu/8', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"NA6Yr6embhAB7NexSIZfSHZLwZoR7WLAA3RKhYAd\"}', '2019-02-24 04:21:05', '2019-02-24 04:21:05'),
(52, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:21:06', '2019-02-24 04:21:06'),
(53, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:21:13', '2019-02-24 04:21:13'),
(54, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:21:15', '2019-02-24 04:21:15'),
(55, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:21:17', '2019-02-24 04:21:17'),
(56, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:21:23', '2019-02-24 04:21:23'),
(57, 1, 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Master Data\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"NA6Yr6embhAB7NexSIZfSHZLwZoR7WLAA3RKhYAd\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2019-02-24 04:21:33', '2019-02-24 04:21:33'),
(58, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-24 04:21:34', '2019-02-24 04:21:34'),
(59, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Product Category\",\"icon\":\"fa-th-large\",\"uri\":\"auth\\/product-categorys\",\"roles\":[\"1\",null],\"permission\":\"auth.login\",\"_token\":\"NA6Yr6embhAB7NexSIZfSHZLwZoR7WLAA3RKhYAd\"}', '2019-02-24 04:22:27', '2019-02-24 04:22:27'),
(60, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-24 04:22:28', '2019-02-24 04:22:28'),
(61, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"NA6Yr6embhAB7NexSIZfSHZLwZoR7WLAA3RKhYAd\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":7},{\\\"id\\\":6},{\\\"id\\\":5},{\\\"id\\\":10},{\\\"id\\\":4},{\\\"id\\\":3}]}]\"}', '2019-02-24 04:23:02', '2019-02-24 04:23:02'),
(62, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:23:03', '2019-02-24 04:23:03'),
(63, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:23:07', '2019-02-24 04:23:07'),
(64, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-24 04:23:09', '2019-02-24 04:23:09'),
(65, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:23:20', '2019-02-24 04:23:20'),
(66, 1, 'admin/auth/product-categorys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:23:27', '2019-02-24 04:23:27'),
(67, 1, 'admin/auth/product-categorys', 'POST', '127.0.0.1', '{\"category_id\":\"0\",\"category_name\":\"Herbisida (Pembasmi Gulma)\",\"_token\":\"NA6Yr6embhAB7NexSIZfSHZLwZoR7WLAA3RKhYAd\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/product-categorys\"}', '2019-02-24 04:24:07', '2019-02-24 04:24:07'),
(68, 1, 'admin/auth/product-categorys/create', 'GET', '127.0.0.1', '[]', '2019-02-24 04:24:08', '2019-02-24 04:24:08'),
(69, 1, 'admin/auth/product-categorys/create', 'GET', '127.0.0.1', '[]', '2019-02-24 04:25:52', '2019-02-24 04:25:52'),
(70, 1, 'admin/auth/product-categorys/create', 'GET', '127.0.0.1', '[]', '2019-02-24 04:26:14', '2019-02-24 04:26:14'),
(71, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:27:34', '2019-02-24 04:27:34'),
(72, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '[]', '2019-02-24 04:28:14', '2019-02-24 04:28:14'),
(73, 1, 'admin/auth/product-categorys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:28:36', '2019-02-24 04:28:36'),
(74, 1, 'admin/auth/product-categorys/create', 'GET', '127.0.0.1', '[]', '2019-02-24 04:29:30', '2019-02-24 04:29:30'),
(75, 1, 'admin/auth/product-categorys/create', 'GET', '127.0.0.1', '[]', '2019-02-24 04:29:55', '2019-02-24 04:29:55'),
(76, 1, 'admin/auth/product-categorys', 'POST', '127.0.0.1', '{\"category_name\":\"Herbisida (Pembasmi Gulma)\",\"_token\":\"NA6Yr6embhAB7NexSIZfSHZLwZoR7WLAA3RKhYAd\"}', '2019-02-24 04:30:04', '2019-02-24 04:30:04'),
(77, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '[]', '2019-02-24 04:30:04', '2019-02-24 04:30:04'),
(78, 1, 'admin/auth/product-categorys/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:30:15', '2019-02-24 04:30:15'),
(79, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:30:21', '2019-02-24 04:30:21'),
(80, 1, 'admin/auth/product-categorys/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:30:25', '2019-02-24 04:30:25'),
(81, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:30:29', '2019-02-24 04:30:29'),
(82, 1, 'admin/auth/product-categorys/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:30:43', '2019-02-24 04:30:43'),
(83, 1, 'admin/auth/product-categorys/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:30:45', '2019-02-24 04:30:45'),
(84, 1, 'admin/auth/product-categorys/1/edit', 'GET', '127.0.0.1', '[]', '2019-02-24 04:31:04', '2019-02-24 04:31:04'),
(85, 1, 'admin/auth/product-categorys/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:31:11', '2019-02-24 04:31:11'),
(86, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:31:14', '2019-02-24 04:31:14'),
(87, 1, 'admin/auth/product-categorys/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"NA6Yr6embhAB7NexSIZfSHZLwZoR7WLAA3RKhYAd\"}', '2019-02-24 04:31:18', '2019-02-24 04:31:18'),
(88, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:31:19', '2019-02-24 04:31:19'),
(89, 1, 'admin/auth/product-categorys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:31:22', '2019-02-24 04:31:22'),
(90, 1, 'admin/auth/product-categorys', 'POST', '127.0.0.1', '{\"category_name\":\"Herbisida (Pembasmi Gulma)\",\"_token\":\"NA6Yr6embhAB7NexSIZfSHZLwZoR7WLAA3RKhYAd\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/product-categorys\"}', '2019-02-24 04:31:26', '2019-02-24 04:31:26'),
(91, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '[]', '2019-02-24 04:31:26', '2019-02-24 04:31:26'),
(92, 1, 'admin/auth/product-categorys/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:31:44', '2019-02-24 04:31:44'),
(93, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:31:52', '2019-02-24 04:31:52'),
(94, 1, 'admin/auth/product-categorys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:31:56', '2019-02-24 04:31:56'),
(95, 1, 'admin/auth/product-categorys', 'POST', '127.0.0.1', '{\"category_name\":\"Sticker-Spider (Surfaktan)\",\"_token\":\"NA6Yr6embhAB7NexSIZfSHZLwZoR7WLAA3RKhYAd\",\"after-save\":\"3\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/product-categorys\"}', '2019-02-24 04:37:24', '2019-02-24 04:37:24'),
(96, 1, 'admin/auth/product-categorys/3', 'GET', '127.0.0.1', '[]', '2019-02-24 04:37:24', '2019-02-24 04:37:24'),
(97, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:37:30', '2019-02-24 04:37:30'),
(98, 1, 'admin/auth/product-categorys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:37:32', '2019-02-24 04:37:32'),
(99, 1, 'admin/auth/product-categorys', 'POST', '127.0.0.1', '{\"category_name\":\"ALSINTAN (Alat Mesin Pertanian)\",\"_token\":\"NA6Yr6embhAB7NexSIZfSHZLwZoR7WLAA3RKhYAd\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/product-categorys\"}', '2019-02-24 04:38:29', '2019-02-24 04:38:29'),
(100, 1, 'admin/auth/product-categorys/create', 'GET', '127.0.0.1', '[]', '2019-02-24 04:38:29', '2019-02-24 04:38:29'),
(101, 1, 'admin/auth/product-categorys', 'POST', '127.0.0.1', '{\"category_name\":\"HASA SEED (Benih)\",\"_token\":\"NA6Yr6embhAB7NexSIZfSHZLwZoR7WLAA3RKhYAd\"}', '2019-02-24 04:38:47', '2019-02-24 04:38:47'),
(102, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '[]', '2019-02-24 04:38:47', '2019-02-24 04:38:47'),
(103, 1, 'admin/auth/product-categorys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:39:07', '2019-02-24 04:39:07'),
(104, 1, 'admin/auth/product-categorys', 'POST', '127.0.0.1', '{\"category_name\":\"SPAREPART\",\"_token\":\"NA6Yr6embhAB7NexSIZfSHZLwZoR7WLAA3RKhYAd\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/product-categorys\"}', '2019-02-24 04:39:16', '2019-02-24 04:39:16'),
(105, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '[]', '2019-02-24 04:39:16', '2019-02-24 04:39:16'),
(106, 1, 'admin/auth/product-categorys/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:39:22', '2019-02-24 04:39:22'),
(107, 1, 'admin/auth/product-categorys/3', 'PUT', '127.0.0.1', '{\"category_name\":\"STICKER-SPIDER (Surfaktan)\",\"_token\":\"NA6Yr6embhAB7NexSIZfSHZLwZoR7WLAA3RKhYAd\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/product-categorys\"}', '2019-02-24 04:39:43', '2019-02-24 04:39:43'),
(108, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '[]', '2019-02-24 04:39:44', '2019-02-24 04:39:44'),
(109, 1, 'admin/auth/product-categorys/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:39:47', '2019-02-24 04:39:47'),
(110, 1, 'admin/auth/product-categorys/2', 'PUT', '127.0.0.1', '{\"category_name\":\"HERBISIDA (Pembasmi Gulma)\",\"_token\":\"NA6Yr6embhAB7NexSIZfSHZLwZoR7WLAA3RKhYAd\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/product-categorys\"}', '2019-02-24 04:39:54', '2019-02-24 04:39:54'),
(111, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '[]', '2019-02-24 04:39:55', '2019-02-24 04:39:55'),
(112, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '[]', '2019-02-24 04:45:55', '2019-02-24 04:45:55'),
(113, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '[]', '2019-02-24 04:47:12', '2019-02-24 04:47:12'),
(114, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"per_page\":\"10\",\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:47:48', '2019-02-24 04:47:48'),
(115, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"per_page\":\"20\",\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:47:52', '2019-02-24 04:47:52'),
(116, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"per_page\":\"20\",\"_pjax\":\"#pjax-container\"}', '2019-02-24 04:49:36', '2019-02-24 04:49:36'),
(117, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '[]', '2019-02-24 04:49:40', '2019-02-24 04:49:40'),
(118, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '[]', '2019-02-24 04:52:17', '2019-02-24 04:52:17'),
(119, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 05:10:39', '2019-02-24 05:10:39'),
(120, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-24 05:10:43', '2019-02-24 05:10:43'),
(121, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Product\",\"icon\":\"fa-archive\",\"uri\":\"auth\\/products\",\"roles\":[\"1\",null],\"permission\":\"auth.login\",\"_token\":\"NA6Yr6embhAB7NexSIZfSHZLwZoR7WLAA3RKhYAd\"}', '2019-02-24 05:11:32', '2019-02-24 05:11:32'),
(122, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-24 05:11:32', '2019-02-24 05:11:32'),
(123, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"NA6Yr6embhAB7NexSIZfSHZLwZoR7WLAA3RKhYAd\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":7},{\\\"id\\\":6},{\\\"id\\\":5},{\\\"id\\\":11},{\\\"id\\\":10},{\\\"id\\\":4},{\\\"id\\\":3}]}]\"}', '2019-02-24 05:11:42', '2019-02-24 05:11:42'),
(124, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 05:11:43', '2019-02-24 05:11:43'),
(125, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-24 05:11:47', '2019-02-24 05:11:47'),
(126, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-24 05:13:27', '2019-02-24 05:13:27'),
(127, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-24 05:13:40', '2019-02-24 05:13:40'),
(128, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-02-24 05:14:00', '2019-02-24 05:14:00'),
(129, 1, 'admin/auth/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 05:14:14', '2019-02-24 05:14:14'),
(130, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-24 05:14:54', '2019-02-24 05:14:54'),
(131, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-25 02:49:45', '2019-02-25 02:49:45'),
(132, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 02:50:33', '2019-02-25 02:50:33'),
(133, 1, 'admin/auth/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 02:50:40', '2019-02-25 02:50:40'),
(134, 1, 'admin/auth/products/create', 'GET', '127.0.0.1', '[]', '2019-02-25 03:05:07', '2019-02-25 03:05:07'),
(135, 1, 'admin/auth/products/create', 'GET', '127.0.0.1', '[]', '2019-02-25 03:05:49', '2019-02-25 03:05:49'),
(136, 1, 'admin/auth/products/create', 'GET', '127.0.0.1', '[]', '2019-02-25 03:06:01', '2019-02-25 03:06:01'),
(137, 1, 'admin/auth/products/create', 'GET', '127.0.0.1', '[]', '2019-02-25 03:17:01', '2019-02-25 03:17:01'),
(138, 1, '/', 'GET', '127.0.0.1', '[]', '2019-02-25 11:41:11', '2019-02-25 11:41:11'),
(139, 1, '/', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 11:41:47', '2019-02-25 11:41:47'),
(140, 1, 'auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 11:41:51', '2019-02-25 11:41:51'),
(141, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-25 03:59:56', '2019-02-25 03:59:56'),
(142, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-25 04:00:22', '2019-02-25 04:00:22'),
(143, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-25 04:02:03', '2019-02-25 04:02:03'),
(144, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-25 04:02:35', '2019-02-25 04:02:35'),
(145, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-25 04:03:33', '2019-02-25 04:03:33'),
(146, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-25 04:03:46', '2019-02-25 04:03:46'),
(147, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-25 04:08:16', '2019-02-25 04:08:16'),
(148, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-25 04:09:19', '2019-02-25 04:09:19'),
(149, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-04 21:10:44', '2019-03-04 21:10:44'),
(150, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:11:11', '2019-03-04 21:11:11'),
(151, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:11:28', '2019-03-04 21:11:28'),
(152, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:11:35', '2019-03-04 21:11:35'),
(153, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:11:38', '2019-03-04 21:11:38'),
(154, 1, 'admin/auth/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:11:41', '2019-03-04 21:11:41'),
(155, 1, 'admin/auth/products', 'POST', '127.0.0.1', '{\"product_name\":\"ANDALL 865 SL\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"TUJUAN PENGGUNAAN : ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:\\r\\n\\r\\n1.\\tPADI SAWAH\\r\\nGULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.\\r\\n\\r\\nGULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)\\r\\n\\r\\n2.\\tTEBU, KARET\\r\\nGULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES\",\"product_dose\":\"0,5-1\\/HA\\r\\n2-4 ML PER LITER AIR\\r\\n3-6 TUTUP BOTOL PER SPAREYR (TANGKI)\",\"product_package\":\"40 X 200 ML 3 20 X 400 ML\\r\\n3 15 X 1 LITER 3 20 LITER 3 200 LITER\",\"_token\":\"fEjznTLjGMwgz0nmSZRttPOxFnxuNFa18X2MP8R3\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/products\"}', '2019-03-04 21:28:52', '2019-03-04 21:28:52'),
(156, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-04 21:28:52', '2019-03-04 21:28:52'),
(157, 1, 'admin/auth/products/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:28:56', '2019-03-04 21:28:56'),
(158, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:29:09', '2019-03-04 21:29:09'),
(159, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"page:1\"}', '2019-03-04 21:29:22', '2019-03-04 21:29:22'),
(160, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:29:59', '2019-03-04 21:29:59'),
(161, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"page:1\"}', '2019-03-04 21:30:05', '2019-03-04 21:30:05'),
(162, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:30:39', '2019-03-04 21:30:39'),
(163, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:30:43', '2019-03-04 21:30:43'),
(164, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:30:47', '2019-03-04 21:30:47'),
(165, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:30:56', '2019-03-04 21:30:56'),
(166, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:30:59', '2019-03-04 21:30:59'),
(167, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:31:00', '2019-03-04 21:31:00'),
(168, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:31:03', '2019-03-04 21:31:03'),
(169, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:31:07', '2019-03-04 21:31:07'),
(170, 1, 'admin/auth/roles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:31:09', '2019-03-04 21:31:09'),
(171, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:31:12', '2019-03-04 21:31:12'),
(172, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:31:14', '2019-03-04 21:31:14'),
(173, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:32:02', '2019-03-04 21:32:02'),
(174, 1, 'admin/auth/roles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:32:04', '2019-03-04 21:32:04'),
(175, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:32:09', '2019-03-04 21:32:09'),
(176, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:32:11', '2019-03-04 21:32:11'),
(177, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:32:17', '2019-03-04 21:32:17'),
(178, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:32:24', '2019-03-04 21:32:24'),
(179, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:32:27', '2019-03-04 21:32:27'),
(180, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-03-04 21:33:04', '2019-03-04 21:33:04'),
(181, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2019-03-04 21:33:07', '2019-03-04 21:33:07'),
(182, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:33:12', '2019-03-04 21:33:12'),
(183, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:33:19', '2019-03-04 21:33:19'),
(184, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:33:22', '2019-03-04 21:33:22'),
(185, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:33:33', '2019-03-04 21:33:33'),
(186, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:33:35', '2019-03-04 21:33:35'),
(187, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-04 21:33:41', '2019-03-04 21:33:41'),
(188, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:34:01', '2019-03-04 21:34:01'),
(189, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"owner\",\"name\":\"Owner\",\"http_method\":[null],\"http_path\":null,\"_token\":\"fEjznTLjGMwgz0nmSZRttPOxFnxuNFa18X2MP8R3\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2019-03-04 21:34:18', '2019-03-04 21:34:18'),
(190, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-04 21:34:19', '2019-03-04 21:34:19'),
(191, 1, 'admin/auth/permissions/6', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"fEjznTLjGMwgz0nmSZRttPOxFnxuNFa18X2MP8R3\"}', '2019-03-04 21:34:37', '2019-03-04 21:34:37'),
(192, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:34:38', '2019-03-04 21:34:38'),
(193, 1, 'admin/auth/permissions/5', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:35:16', '2019-03-04 21:35:16'),
(194, 1, 'admin/auth/permissions/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:35:24', '2019-03-04 21:35:24'),
(195, 1, 'admin/auth/permissions/5', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:35:38', '2019-03-04 21:35:38'),
(196, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:35:49', '2019-03-04 21:35:49'),
(197, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:36:04', '2019-03-04 21:36:04'),
(198, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:36:11', '2019-03-04 21:36:11'),
(199, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:36:27', '2019-03-04 21:36:27'),
(200, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:36:52', '2019-03-04 21:36:52'),
(201, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:36:56', '2019-03-04 21:36:56'),
(202, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:37:05', '2019-03-04 21:37:05'),
(203, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:37:09', '2019-03-04 21:37:09'),
(204, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"owner\",\"name\":\"Owner\",\"password\":\"OWNER\",\"password_confirmation\":\"OWNER\",\"roles\":[\"1\",null],\"permissions\":[\"3\",null],\"_token\":\"fEjznTLjGMwgz0nmSZRttPOxFnxuNFa18X2MP8R3\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2019-03-04 21:37:43', '2019-03-04 21:37:43'),
(205, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-04 21:37:45', '2019-03-04 21:37:45'),
(206, 1, 'admin/auth/users/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:37:50', '2019-03-04 21:37:50'),
(207, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:37:53', '2019-03-04 21:37:53'),
(208, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:38:00', '2019-03-04 21:38:00'),
(209, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:38:02', '2019-03-04 21:38:02'),
(210, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"owner\",\"name\":\"Owner\",\"permissions\":[\"3\",null],\"_token\":\"fEjznTLjGMwgz0nmSZRttPOxFnxuNFa18X2MP8R3\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2019-03-04 21:38:25', '2019-03-04 21:38:25'),
(211, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-03-04 21:38:26', '2019-03-04 21:38:26'),
(212, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:38:30', '2019-03-04 21:38:30'),
(213, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:38:32', '2019-03-04 21:38:32'),
(214, 1, 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"owner\",\"name\":\"Owner\",\"password\":\"owner\",\"password_confirmation\":\"owner\",\"roles\":[\"2\",null],\"permissions\":[\"3\",null],\"_token\":\"fEjznTLjGMwgz0nmSZRttPOxFnxuNFa18X2MP8R3\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2019-03-04 21:40:44', '2019-03-04 21:40:44'),
(215, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-04 21:40:44', '2019-03-04 21:40:44'),
(216, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:40:52', '2019-03-04 21:40:52'),
(217, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-04 21:41:02', '2019-03-04 21:41:02'),
(218, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:41:08', '2019-03-04 21:41:08'),
(219, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:41:09', '2019-03-04 21:41:09'),
(220, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:41:13', '2019-03-04 21:41:13'),
(221, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-04 21:47:59', '2019-03-04 21:47:59'),
(222, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 21:48:06', '2019-03-04 21:48:06'),
(223, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-04 22:00:31', '2019-03-04 22:00:31'),
(224, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 22:00:38', '2019-03-04 22:00:38'),
(225, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 22:00:42', '2019-03-04 22:00:42'),
(226, 1, 'admin/auth/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 22:00:45', '2019-03-04 22:00:45'),
(227, 1, 'admin/auth/products/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-04 22:02:55', '2019-03-04 22:02:55'),
(228, 1, 'admin/auth/products/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-04 22:03:57', '2019-03-04 22:03:57'),
(229, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 22:04:06', '2019-03-04 22:04:06'),
(230, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 22:04:10', '2019-03-04 22:04:10'),
(231, 1, 'admin/auth/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 22:04:14', '2019-03-04 22:04:14'),
(232, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 22:06:41', '2019-03-04 22:06:41'),
(233, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-04 22:06:42', '2019-03-04 22:06:42'),
(234, 1, 'admin/auth/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 22:06:44', '2019-03-04 22:06:44'),
(235, 1, 'admin/auth/products/1', 'PUT', '127.0.0.1', '{\"product_name\":\"ANDALL 865 SL\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"_token\":\"PrE47M37o0CFzwS6OSTp2GXbkEK7YzYAAGewJnM4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/products\"}', '2019-03-04 22:08:42', '2019-03-04 22:08:42'),
(236, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-04 22:08:42', '2019-03-04 22:08:42'),
(237, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-04 22:26:38', '2019-03-04 22:26:38'),
(238, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-04 22:26:42', '2019-03-04 22:26:42'),
(239, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-04 22:26:56', '2019-03-04 22:26:56'),
(240, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-04 22:27:19', '2019-03-04 22:27:19'),
(241, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-04 22:27:22', '2019-03-04 22:27:22'),
(242, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-04 22:27:34', '2019-03-04 22:27:34'),
(243, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-04 22:30:08', '2019-03-04 22:30:08'),
(244, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-04 22:31:45', '2019-03-04 22:31:45'),
(245, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-04 22:31:56', '2019-03-04 22:31:56'),
(246, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-04 22:33:57', '2019-03-04 22:33:57'),
(247, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-04 22:34:13', '2019-03-04 22:34:13'),
(248, 1, 'admin/auth/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 22:35:16', '2019-03-04 22:35:16'),
(249, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 22:35:23', '2019-03-04 22:35:23'),
(250, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 22:35:33', '2019-03-04 22:35:33'),
(251, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 22:35:33', '2019-03-04 22:35:33'),
(252, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 22:35:40', '2019-03-04 22:35:40'),
(253, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 22:35:53', '2019-03-04 22:35:53'),
(254, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-04 22:36:20', '2019-03-04 22:36:20'),
(255, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-04 22:36:35', '2019-03-04 22:36:35'),
(256, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-04 22:36:47', '2019-03-04 22:36:47'),
(257, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-04 22:36:55', '2019-03-04 22:36:55'),
(258, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"id\":\"anda\",\"_pjax\":\"#pjax-container\"}', '2019-03-04 22:37:10', '2019-03-04 22:37:10'),
(259, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 22:37:17', '2019-03-04 22:37:17'),
(260, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-04 22:39:27', '2019-03-04 22:39:27'),
(261, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 22:39:32', '2019-03-04 22:39:32'),
(262, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-04 22:41:17', '2019-03-04 22:41:17'),
(263, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-04 22:42:00', '2019-03-04 22:42:00'),
(264, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"product_name\":\"anda\",\"_pjax\":\"#pjax-container\"}', '2019-03-04 22:42:12', '2019-03-04 22:42:12'),
(265, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"product_name\":\"1\"}', '2019-03-04 22:42:17', '2019-03-04 22:42:17'),
(266, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"product_name\":\"andal\"}', '2019-03-04 22:42:20', '2019-03-04 22:42:20'),
(267, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"product_name\":\"andal\"}', '2019-03-04 22:42:31', '2019-03-04 22:42:31'),
(268, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"product_name\":\"andal\"}', '2019-03-04 22:42:43', '2019-03-04 22:42:43'),
(269, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 22:42:47', '2019-03-04 22:42:47'),
(270, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"product_name\":\"Andall\"}', '2019-03-04 22:42:53', '2019-03-04 22:42:53'),
(271, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"product_name\":\"Andall2\"}', '2019-03-04 22:42:57', '2019-03-04 22:42:57'),
(272, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"product_name\":null}', '2019-03-04 22:43:00', '2019-03-04 22:43:00'),
(273, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"product_name\":null}', '2019-03-04 22:43:21', '2019-03-04 22:43:21'),
(274, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"product_ingredients\":\"Andal\",\"_pjax\":\"#pjax-container\"}', '2019-03-04 22:43:31', '2019-03-04 22:43:31'),
(275, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\"}', '2019-03-04 22:43:35', '2019-03-04 22:43:35'),
(276, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\"}', '2019-03-04 22:44:00', '2019-03-04 22:44:00'),
(277, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-04 22:44:03', '2019-03-04 22:44:03'),
(278, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-04 22:44:22', '2019-03-04 22:44:22'),
(279, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"_pjax\":\"#pjax-container\"}', '2019-03-04 22:44:29', '2019-03-04 22:44:29'),
(280, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"_pjax\":\"#pjax-container\"}', '2019-03-04 22:44:32', '2019-03-04 22:44:32'),
(281, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"_pjax\":\"#pjax-container\"}', '2019-03-04 22:44:34', '2019-03-04 22:44:34'),
(282, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\"}', '2019-03-04 22:44:50', '2019-03-04 22:44:50'),
(283, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-08 20:12:23', '2019-03-08 20:12:23'),
(284, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-08 20:12:37', '2019-03-08 20:12:37'),
(285, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-08 20:14:04', '2019-03-08 20:14:04'),
(286, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-08 20:14:13', '2019-03-08 20:14:13'),
(287, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-08 20:16:23', '2019-03-08 20:16:23'),
(288, 1, 'admin/auth/product-categorys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-08 20:16:28', '2019-03-08 20:16:28'),
(289, 1, 'admin/auth/product-categorys', 'POST', '127.0.0.1', '{\"category_name\":\"Tes Kategori\",\"_token\":\"bRQJkyoE9D62owXWgbdADBSO5KqlEqoyDkXSJtWu\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/product-categorys\"}', '2019-03-08 20:16:38', '2019-03-08 20:16:38'),
(290, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '[]', '2019-03-08 20:16:39', '2019-03-08 20:16:39'),
(291, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-08 20:16:48', '2019-03-08 20:16:48'),
(292, 1, 'admin/auth/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-08 20:16:53', '2019-03-08 20:16:53'),
(293, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-08 20:17:00', '2019-03-08 20:17:00'),
(294, 1, 'admin/auth/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-08 20:17:04', '2019-03-08 20:17:04'),
(295, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-08 20:18:01', '2019-03-08 20:18:01'),
(296, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-08 20:18:05', '2019-03-08 20:18:05'),
(297, 1, 'admin/auth/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-08 20:18:11', '2019-03-08 20:18:11'),
(298, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-08 20:18:29', '2019-03-08 20:18:29'),
(299, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-08 20:18:38', '2019-03-08 20:18:38'),
(300, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-08 20:19:11', '2019-03-08 20:19:11'),
(301, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-08 20:19:17', '2019-03-08 20:19:17'),
(302, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-08 20:19:18', '2019-03-08 20:19:18'),
(303, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-08 20:21:22', '2019-03-08 20:21:22'),
(304, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-08 20:22:48', '2019-03-08 20:22:48'),
(305, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-08 20:22:55', '2019-03-08 20:22:55'),
(306, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-08 20:23:10', '2019-03-08 20:23:10'),
(307, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-08 20:23:27', '2019-03-08 20:23:27'),
(308, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-08 20:24:13', '2019-03-08 20:24:13'),
(309, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-09 23:21:21', '2019-03-09 23:21:21'),
(310, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-09 23:21:33', '2019-03-09 23:21:33'),
(311, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-09 23:21:43', '2019-03-09 23:21:43'),
(312, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-09 23:22:14', '2019-03-09 23:22:14'),
(313, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-09 23:22:23', '2019-03-09 23:22:23'),
(314, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-09 23:22:39', '2019-03-09 23:22:39'),
(315, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"1XiAeBP9RUZTbZhzHRbq3fvrEHOvHCJTDWJuZa8d\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":7},{\\\"id\\\":6},{\\\"id\\\":5},{\\\"id\\\":11},{\\\"id\\\":10},{\\\"id\\\":4}]},{\\\"id\\\":3}]\"}', '2019-03-09 23:23:09', '2019-03-09 23:23:09'),
(316, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-09 23:23:10', '2019-03-09 23:23:10'),
(317, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-09 23:23:15', '2019-03-09 23:23:15'),
(318, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"1XiAeBP9RUZTbZhzHRbq3fvrEHOvHCJTDWJuZa8d\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":7},{\\\"id\\\":6},{\\\"id\\\":5},{\\\"id\\\":11},{\\\"id\\\":10},{\\\"id\\\":4},{\\\"id\\\":3}]}]\"}', '2019-03-09 23:23:25', '2019-03-09 23:23:25'),
(319, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-09 23:23:25', '2019-03-09 23:23:25'),
(320, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-09 23:23:29', '2019-03-09 23:23:29'),
(321, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-09 23:24:11', '2019-03-09 23:24:11'),
(322, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-10 20:36:16', '2019-03-10 20:36:16'),
(323, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 20:36:32', '2019-03-10 20:36:32'),
(324, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 20:40:34', '2019-03-10 20:40:34'),
(325, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 20:40:43', '2019-03-10 20:40:43'),
(326, 1, 'admin/auth/users/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"gx5JGN8pkyrZrFfNdY5Avf6AwoD0Uq0EBwU6iEdQ\"}', '2019-03-10 20:41:01', '2019-03-10 20:41:01'),
(327, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 20:41:02', '2019-03-10 20:41:02'),
(328, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 20:41:37', '2019-03-10 20:41:37'),
(329, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Rindang Ramadhan\",\"password\":\"admin\",\"password_confirmation\":\"admin\",\"_token\":\"gx5JGN8pkyrZrFfNdY5Avf6AwoD0Uq0EBwU6iEdQ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2019-03-10 20:48:47', '2019-03-10 20:48:47'),
(330, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 20:48:51', '2019-03-10 20:48:51'),
(331, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 20:49:25', '2019-03-10 20:49:25'),
(332, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 20:50:12', '2019-03-10 20:50:12'),
(333, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 20:53:35', '2019-03-10 20:53:35'),
(334, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Rindang Ramadhan\",\"password\":\"admin\",\"password_confirmation\":\"admin\",\"_token\":\"gx5JGN8pkyrZrFfNdY5Avf6AwoD0Uq0EBwU6iEdQ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/login\"}', '2019-03-10 20:54:01', '2019-03-10 20:54:01');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(335, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 20:54:02', '2019-03-10 20:54:02'),
(336, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 20:54:09', '2019-03-10 20:54:09'),
(337, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Rindang Ramadhan\",\"password\":\"admin\",\"password_confirmation\":\"admin\",\"_token\":\"gx5JGN8pkyrZrFfNdY5Avf6AwoD0Uq0EBwU6iEdQ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/login\"}', '2019-03-10 20:55:27', '2019-03-10 20:55:27'),
(338, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 20:55:27', '2019-03-10 20:55:27'),
(339, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 20:55:33', '2019-03-10 20:55:33'),
(340, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 20:59:06', '2019-03-10 20:59:06'),
(341, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Rindang Ramadhan\",\"password\":\"admin\",\"password_confirmation\":\"admin\",\"_token\":\"gx5JGN8pkyrZrFfNdY5Avf6AwoD0Uq0EBwU6iEdQ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/login\"}', '2019-03-10 20:59:17', '2019-03-10 20:59:17'),
(342, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 20:59:17', '2019-03-10 20:59:17'),
(343, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 20:59:23', '2019-03-10 20:59:23'),
(344, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 21:01:37', '2019-03-10 21:01:37'),
(345, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Rindang Ramadhan\",\"password\":\"admin\",\"password_confirmation\":\"admin\",\"_token\":\"gx5JGN8pkyrZrFfNdY5Avf6AwoD0Uq0EBwU6iEdQ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/login\"}', '2019-03-10 21:01:47', '2019-03-10 21:01:47'),
(346, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 21:01:48', '2019-03-10 21:01:48'),
(347, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 21:01:54', '2019-03-10 21:01:54'),
(348, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 21:16:03', '2019-03-10 21:16:03'),
(349, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Rindang Ramadhan\",\"password\":\"admin\",\"password_confirmation\":\"admin\",\"_token\":\"gx5JGN8pkyrZrFfNdY5Avf6AwoD0Uq0EBwU6iEdQ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/login\"}', '2019-03-10 21:16:16', '2019-03-10 21:16:16'),
(350, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 21:16:16', '2019-03-10 21:16:16'),
(351, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-10 21:17:05', '2019-03-10 21:17:05'),
(352, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:17:10', '2019-03-10 21:17:10'),
(353, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Rindang Ramadhan\",\"password\":\"admin\",\"password_confirmation\":\"admin\",\"_token\":\"gx5JGN8pkyrZrFfNdY5Avf6AwoD0Uq0EBwU6iEdQ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\"}', '2019-03-10 21:17:22', '2019-03-10 21:17:22'),
(354, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 21:17:23', '2019-03-10 21:17:23'),
(355, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 21:21:34', '2019-03-10 21:21:34'),
(356, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 21:21:51', '2019-03-10 21:21:51'),
(357, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Rindang Ramadhan\",\"password\":\"admin\",\"password_confirmation\":\"admin\",\"_token\":\"gx5JGN8pkyrZrFfNdY5Avf6AwoD0Uq0EBwU6iEdQ\",\"_method\":\"PUT\"}', '2019-03-10 21:22:14', '2019-03-10 21:22:14'),
(358, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 21:22:15', '2019-03-10 21:22:15'),
(359, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 21:22:19', '2019-03-10 21:22:19'),
(360, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 21:25:48', '2019-03-10 21:25:48'),
(361, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 21:26:15', '2019-03-10 21:26:15'),
(362, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Rindang Ramadhan\",\"password\":\"admin\",\"password_confirmation\":\"admin\",\"_token\":\"gx5JGN8pkyrZrFfNdY5Avf6AwoD0Uq0EBwU6iEdQ\",\"_method\":\"PUT\"}', '2019-03-10 21:26:26', '2019-03-10 21:26:26'),
(363, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 21:26:27', '2019-03-10 21:26:27'),
(364, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 21:26:49', '2019-03-10 21:26:49'),
(365, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:27:11', '2019-03-10 21:27:11'),
(366, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:27:13', '2019-03-10 21:27:13'),
(367, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:27:18', '2019-03-10 21:27:18'),
(368, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 21:29:26', '2019-03-10 21:29:26'),
(369, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Rindang Ramadhan\",\"password\":\"admin\",\"password_confirmation\":\"admin\",\"_token\":\"gx5JGN8pkyrZrFfNdY5Avf6AwoD0Uq0EBwU6iEdQ\",\"_method\":\"PUT\"}', '2019-03-10 21:29:36', '2019-03-10 21:29:36'),
(370, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 21:29:36', '2019-03-10 21:29:36'),
(371, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:29:43', '2019-03-10 21:29:43'),
(372, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-10 21:29:45', '2019-03-10 21:29:45'),
(373, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:29:52', '2019-03-10 21:29:52'),
(374, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:29:57', '2019-03-10 21:29:57'),
(375, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:30:01', '2019-03-10 21:30:01'),
(376, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:30:12', '2019-03-10 21:30:12'),
(377, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:30:40', '2019-03-10 21:30:40'),
(378, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Rindang Ramadhan\",\"password\":\"$2y$10$r1anIQK0kWl35WoKTQM98OqSNqpRb3J5uf59C0H\\/5n2BfI9gzwnJG\",\"password_confirmation\":\"$2y$10$r1anIQK0kWl35WoKTQM98OqSNqpRb3J5uf59C0H\\/5n2BfI9gzwnJG\",\"_token\":\"gx5JGN8pkyrZrFfNdY5Avf6AwoD0Uq0EBwU6iEdQ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\"}', '2019-03-10 21:30:55', '2019-03-10 21:30:55'),
(379, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 21:30:55', '2019-03-10 21:30:55'),
(380, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 21:30:58', '2019-03-10 21:30:58'),
(381, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Rindang Ramadhan\",\"password\":\"$2y$10$r1anIQK0kWl35WoKTQM98OqSNqpRb3J5uf59C0H\\/5n2BfI9gzwnJG\",\"password_confirmation\":\"$2y$10$r1anIQK0kWl35WoKTQM98OqSNqpRb3J5uf59C0H\\/5n2BfI9gzwnJG\",\"_token\":\"gx5JGN8pkyrZrFfNdY5Avf6AwoD0Uq0EBwU6iEdQ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\"}', '2019-03-10 21:31:18', '2019-03-10 21:31:18'),
(382, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 21:31:19', '2019-03-10 21:31:19'),
(383, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:31:28', '2019-03-10 21:31:28'),
(384, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-10 21:31:34', '2019-03-10 21:31:34'),
(385, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:31:39', '2019-03-10 21:31:39'),
(386, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:32:11', '2019-03-10 21:32:11'),
(387, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:32:37', '2019-03-10 21:32:37'),
(388, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:32:39', '2019-03-10 21:32:39'),
(389, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:32:43', '2019-03-10 21:32:43'),
(390, 1, 'admin/auth/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:32:46', '2019-03-10 21:32:46'),
(391, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:32:54', '2019-03-10 21:32:54'),
(392, 1, 'admin/auth/menu/11', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"5DHoNHiJNvauVQ02XUkCoz8T98xBs2j2oKmFORlO\"}', '2019-03-10 21:33:00', '2019-03-10 21:33:00'),
(393, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:33:00', '2019-03-10 21:33:00'),
(394, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:33:02', '2019-03-10 21:33:02'),
(395, 1, 'admin/auth/product-categorys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:33:07', '2019-03-10 21:33:07'),
(396, 1, 'admin/auth/product-categorys', 'POST', '127.0.0.1', '{\"category_name\":\"a\",\"_token\":\"5DHoNHiJNvauVQ02XUkCoz8T98xBs2j2oKmFORlO\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/product-categorys\"}', '2019-03-10 21:33:09', '2019-03-10 21:33:09'),
(397, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '[]', '2019-03-10 21:33:09', '2019-03-10 21:33:09'),
(398, 1, 'admin/auth/product-categorys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:33:12', '2019-03-10 21:33:12'),
(399, 1, 'admin/auth/product-categorys', 'POST', '127.0.0.1', '{\"category_name\":\"a\",\"_token\":\"5DHoNHiJNvauVQ02XUkCoz8T98xBs2j2oKmFORlO\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/product-categorys\"}', '2019-03-10 21:33:14', '2019-03-10 21:33:14'),
(400, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '[]', '2019-03-10 21:33:14', '2019-03-10 21:33:14'),
(401, 1, 'admin/auth/product-categorys/9', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"5DHoNHiJNvauVQ02XUkCoz8T98xBs2j2oKmFORlO\"}', '2019-03-10 21:33:18', '2019-03-10 21:33:18'),
(402, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:33:19', '2019-03-10 21:33:19'),
(403, 1, 'admin/auth/product-categorys/8', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"5DHoNHiJNvauVQ02XUkCoz8T98xBs2j2oKmFORlO\"}', '2019-03-10 21:33:23', '2019-03-10 21:33:23'),
(404, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:33:23', '2019-03-10 21:33:23'),
(405, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:33:28', '2019-03-10 21:33:28'),
(406, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-10 21:33:32', '2019-03-10 21:33:32'),
(407, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:33:42', '2019-03-10 21:33:42'),
(408, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:33:48', '2019-03-10 21:33:48'),
(409, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:34:02', '2019-03-10 21:34:02'),
(410, 1, 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"AHP IT\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"5DHoNHiJNvauVQ02XUkCoz8T98xBs2j2oKmFORlO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-03-10 21:34:38', '2019-03-10 21:34:38'),
(411, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-10 21:34:38', '2019-03-10 21:34:38'),
(412, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-10 21:34:41', '2019-03-10 21:34:41'),
(413, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:34:48', '2019-03-10 21:34:48'),
(414, 1, 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"AHP IT\",\"icon\":\"fa-sitemap\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"5DHoNHiJNvauVQ02XUkCoz8T98xBs2j2oKmFORlO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-03-10 21:35:07', '2019-03-10 21:35:07'),
(415, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-10 21:35:08', '2019-03-10 21:35:08'),
(416, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Master Data\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"5DHoNHiJNvauVQ02XUkCoz8T98xBs2j2oKmFORlO\"}', '2019-03-10 21:35:28', '2019-03-10 21:35:28'),
(417, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-10 21:35:28', '2019-03-10 21:35:28'),
(418, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-10 21:35:30', '2019-03-10 21:35:30'),
(419, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:35:40', '2019-03-10 21:35:40'),
(420, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:35:49', '2019-03-10 21:35:49'),
(421, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '[]', '2019-03-10 21:35:52', '2019-03-10 21:35:52'),
(422, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:35:53', '2019-03-10 21:35:53'),
(423, 1, 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Master Data\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"5DHoNHiJNvauVQ02XUkCoz8T98xBs2j2oKmFORlO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-03-10 21:36:03', '2019-03-10 21:36:03'),
(424, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-10 21:36:04', '2019-03-10 21:36:04'),
(425, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-10 21:36:08', '2019-03-10 21:36:08'),
(426, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:36:13', '2019-03-10 21:36:13'),
(427, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:36:16', '2019-03-10 21:36:16'),
(428, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"5DHoNHiJNvauVQ02XUkCoz8T98xBs2j2oKmFORlO\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":7},{\\\"id\\\":6},{\\\"id\\\":5},{\\\"id\\\":4}]},{\\\"id\\\":12,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":3}]}]\"}', '2019-03-10 21:37:07', '2019-03-10 21:37:07'),
(429, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"5DHoNHiJNvauVQ02XUkCoz8T98xBs2j2oKmFORlO\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":7},{\\\"id\\\":6},{\\\"id\\\":5},{\\\"id\\\":4}]},{\\\"id\\\":12,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":3}]}]\"}', '2019-03-10 21:37:07', '2019-03-10 21:37:07'),
(430, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:37:08', '2019-03-10 21:37:08'),
(431, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:37:08', '2019-03-10 21:37:08'),
(432, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-10 21:37:09', '2019-03-10 21:37:09'),
(433, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:37:16', '2019-03-10 21:37:16'),
(434, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:37:19', '2019-03-10 21:37:19'),
(435, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"andallhasaprima\",\"name\":\"PT. Andall Hasa Prima\",\"password\":\"rahasia\",\"password_confirmation\":\"rahasia\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"5DHoNHiJNvauVQ02XUkCoz8T98xBs2j2oKmFORlO\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2019-03-10 21:38:48', '2019-03-10 21:38:48'),
(436, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-10 21:38:48', '2019-03-10 21:38:48'),
(437, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:38:52', '2019-03-10 21:38:52'),
(438, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:38:54', '2019-03-10 21:38:54'),
(439, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:39:00', '2019-03-10 21:39:00'),
(440, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:39:04', '2019-03-10 21:39:04'),
(441, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:39:26', '2019-03-10 21:39:26'),
(442, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-10 21:39:36', '2019-03-10 21:39:36'),
(443, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:39:46', '2019-03-10 21:39:46'),
(444, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-10 21:39:53', '2019-03-10 21:39:53'),
(445, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:39:59', '2019-03-10 21:39:59'),
(446, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:40:02', '2019-03-10 21:40:02'),
(447, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"owner\",\"name\":\"Owner\",\"permissions\":[\"2\",\"3\",\"4\",null],\"_token\":\"m688IlHsSAXnxm5lFOIRICDY2Hx36Vr0WGFScxYC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2019-03-10 21:40:16', '2019-03-10 21:40:16'),
(448, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-03-10 21:40:17', '2019-03-10 21:40:17'),
(449, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:40:22', '2019-03-10 21:40:22'),
(450, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-10 21:40:31', '2019-03-10 21:40:31'),
(451, 3, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:40:36', '2019-03-10 21:40:36'),
(452, 3, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:40:40', '2019-03-10 21:40:40'),
(453, 3, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-10 21:40:43', '2019-03-10 21:40:43'),
(454, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:40:47', '2019-03-10 21:40:47'),
(455, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-10 21:40:55', '2019-03-10 21:40:55'),
(456, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:41:00', '2019-03-10 21:41:00'),
(457, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:41:02', '2019-03-10 21:41:02'),
(458, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:41:05', '2019-03-10 21:41:05'),
(459, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:41:06', '2019-03-10 21:41:06'),
(460, 1, 'admin/auth/permissions/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:41:36', '2019-03-10 21:41:36'),
(461, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:41:49', '2019-03-10 21:41:49'),
(462, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:42:18', '2019-03-10 21:42:18'),
(463, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:42:20', '2019-03-10 21:42:20'),
(464, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"owner\",\"name\":\"Owner\",\"permissions\":[\"2\",\"5\",null],\"_token\":\"Wa2fWllGuD2EYNAFzx6Jc8UuqJA3MxVsMsjJQ2dF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2019-03-10 21:42:47', '2019-03-10 21:42:47'),
(465, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-03-10 21:42:48', '2019-03-10 21:42:48'),
(466, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:42:51', '2019-03-10 21:42:51'),
(467, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"owner\",\"name\":\"Owner\",\"permissions\":[\"4\",\"2\",\"3\",\"4\",\"5\",null],\"_token\":\"Wa2fWllGuD2EYNAFzx6Jc8UuqJA3MxVsMsjJQ2dF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2019-03-10 21:43:21', '2019-03-10 21:43:21'),
(468, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-03-10 21:43:22', '2019-03-10 21:43:22'),
(469, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:43:29', '2019-03-10 21:43:29'),
(470, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-10 21:44:30', '2019-03-10 21:44:30'),
(471, 3, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:44:33', '2019-03-10 21:44:33'),
(472, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:44:37', '2019-03-10 21:44:37'),
(473, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-10 21:44:44', '2019-03-10 21:44:44'),
(474, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:44:47', '2019-03-10 21:44:47'),
(475, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:44:49', '2019-03-10 21:44:49'),
(476, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:45:07', '2019-03-10 21:45:07'),
(477, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:45:12', '2019-03-10 21:45:12'),
(478, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:45:16', '2019-03-10 21:45:16'),
(479, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:45:35', '2019-03-10 21:45:35'),
(480, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:45:54', '2019-03-10 21:45:54'),
(481, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:45:56', '2019-03-10 21:45:56'),
(482, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"owner\",\"name\":\"Owner\",\"permissions\":[\"1\",\"1\",null],\"_token\":\"vjAACIl117SvexYPScTbzy5NSSyntcpHwxe4MUaa\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2019-03-10 21:46:08', '2019-03-10 21:46:08'),
(483, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-03-10 21:46:09', '2019-03-10 21:46:09'),
(484, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:46:16', '2019-03-10 21:46:16'),
(485, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-10 21:46:26', '2019-03-10 21:46:26'),
(486, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:46:34', '2019-03-10 21:46:34'),
(487, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-10 21:46:42', '2019-03-10 21:46:42'),
(488, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:46:45', '2019-03-10 21:46:45'),
(489, 1, 'admin/auth/users/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:46:47', '2019-03-10 21:46:47'),
(490, 1, 'admin/auth/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:46:51', '2019-03-10 21:46:51'),
(491, 1, 'admin/auth/users/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:46:56', '2019-03-10 21:46:56'),
(492, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:46:57', '2019-03-10 21:46:57'),
(493, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:46:59', '2019-03-10 21:46:59'),
(494, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:47:04', '2019-03-10 21:47:04'),
(495, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:47:07', '2019-03-10 21:47:07'),
(496, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:47:11', '2019-03-10 21:47:11'),
(497, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:47:14', '2019-03-10 21:47:14'),
(498, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:47:17', '2019-03-10 21:47:17'),
(499, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:47:24', '2019-03-10 21:47:24'),
(500, 1, 'admin/auth/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:47:27', '2019-03-10 21:47:27'),
(501, 1, 'admin/auth/users/3', 'PUT', '127.0.0.1', '{\"username\":\"andallhasaprima\",\"name\":\"PT. Andall Hasa Prima\",\"password\":\"$2y$10$FbCl6pvbbkD\\/lZBuzHP\\/QOBG6lfioDQ.p4pbxEzOt2\\/co6H8ww.lO\",\"password_confirmation\":\"$2y$10$FbCl6pvbbkD\\/lZBuzHP\\/QOBG6lfioDQ.p4pbxEzOt2\\/co6H8ww.lO\",\"roles\":[\"2\",null],\"permissions\":[\"5\",null],\"_token\":\"dWHvnobbYjhFFbzqG6lQsHX1Dw8plIYmWCR3KkTf\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2019-03-10 21:47:56', '2019-03-10 21:47:56'),
(502, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-10 21:47:57', '2019-03-10 21:47:57'),
(503, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:48:03', '2019-03-10 21:48:03'),
(504, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-10 21:48:10', '2019-03-10 21:48:10'),
(505, 3, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:48:13', '2019-03-10 21:48:13'),
(506, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:48:18', '2019-03-10 21:48:18'),
(507, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-10 21:48:24', '2019-03-10 21:48:24'),
(508, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:49:41', '2019-03-10 21:49:41'),
(509, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:49:50', '2019-03-10 21:49:50'),
(510, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:49:56', '2019-03-10 21:49:56'),
(511, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:50:05', '2019-03-10 21:50:05'),
(512, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:50:07', '2019-03-10 21:50:07'),
(513, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:50:08', '2019-03-10 21:50:08'),
(514, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:50:14', '2019-03-10 21:50:14'),
(515, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:50:17', '2019-03-10 21:50:17'),
(516, 1, 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Master Data\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"BLDHU5uDDIK2olkt60Rv0ToWzd5ZjLAKXEeRgbIw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-03-10 21:50:34', '2019-03-10 21:50:34'),
(517, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-10 21:50:34', '2019-03-10 21:50:34'),
(518, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:50:42', '2019-03-10 21:50:42'),
(519, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:50:47', '2019-03-10 21:50:47'),
(520, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-10 21:50:55', '2019-03-10 21:50:55'),
(521, 3, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:50:59', '2019-03-10 21:50:59'),
(522, 3, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:51:06', '2019-03-10 21:51:06'),
(523, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:51:08', '2019-03-10 21:51:08'),
(524, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-10 21:51:15', '2019-03-10 21:51:15'),
(525, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:51:20', '2019-03-10 21:51:20'),
(526, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:51:23', '2019-03-10 21:51:23'),
(527, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"Product Category\",\"icon\":\"fa-th-large\",\"uri\":\"auth\\/product-categorys\",\"roles\":[\"1\",\"2\",null],\"permission\":\"auth.login\",\"_token\":\"Ez3SbXguEALCL7pl8NLzUO5wKsTC1U2vsek1p3Xt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-03-10 21:51:27', '2019-03-10 21:51:27'),
(528, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-10 21:51:27', '2019-03-10 21:51:27'),
(529, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:51:32', '2019-03-10 21:51:32'),
(530, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:51:42', '2019-03-10 21:51:42'),
(531, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:51:44', '2019-03-10 21:51:44'),
(532, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:51:48', '2019-03-10 21:51:48'),
(533, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"Product Category\",\"icon\":\"fa-th-large\",\"uri\":\"auth\\/product-categorys\",\"roles\":[null],\"permission\":null,\"_token\":\"Ez3SbXguEALCL7pl8NLzUO5wKsTC1U2vsek1p3Xt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-03-10 21:52:06', '2019-03-10 21:52:06'),
(534, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-10 21:52:06', '2019-03-10 21:52:06'),
(535, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:52:09', '2019-03-10 21:52:09'),
(536, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:52:14', '2019-03-10 21:52:14'),
(537, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-10 21:52:25', '2019-03-10 21:52:25'),
(538, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:52:33', '2019-03-10 21:52:33'),
(539, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-10 21:52:40', '2019-03-10 21:52:40'),
(540, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:52:42', '2019-03-10 21:52:42'),
(541, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:52:44', '2019-03-10 21:52:44'),
(542, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"Product Category\",\"icon\":\"fa-th-large\",\"uri\":\"auth\\/product-categorys\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"8q7l4hdnE6JG73a9jsZQaF8wjz40H0NGy94Lt0bS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-03-10 21:52:52', '2019-03-10 21:52:52'),
(543, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-10 21:52:53', '2019-03-10 21:52:53'),
(544, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:53:01', '2019-03-10 21:53:01'),
(545, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:53:10', '2019-03-10 21:53:10'),
(546, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:53:17', '2019-03-10 21:53:17'),
(547, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:53:52', '2019-03-10 21:53:52'),
(548, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:59:38', '2019-03-10 21:59:38'),
(549, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:59:54', '2019-03-10 21:59:54'),
(550, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 21:59:55', '2019-03-10 21:59:55'),
(551, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 22:00:00', '2019-03-10 22:00:00'),
(552, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-10 22:00:08', '2019-03-10 22:00:08'),
(553, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 22:00:11', '2019-03-10 22:00:11'),
(554, 3, 'admin/auth/product-categorys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 22:00:14', '2019-03-10 22:00:14'),
(555, 3, 'admin/auth/product-categorys', 'POST', '127.0.0.1', '{\"category_name\":\"asd\",\"_token\":\"V9TeUMYmrJjXuehF814VLCFRg5n5QQoxlqWp1zrF\",\"after-save\":\"3\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/product-categorys\"}', '2019-03-10 22:00:22', '2019-03-10 22:00:22'),
(556, 3, 'admin/auth/product-categorys/10', 'GET', '127.0.0.1', '[]', '2019-03-10 22:00:22', '2019-03-10 22:00:22'),
(557, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 22:00:26', '2019-03-10 22:00:26'),
(558, 3, 'admin/auth/product-categorys/10', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"V9TeUMYmrJjXuehF814VLCFRg5n5QQoxlqWp1zrF\"}', '2019-03-10 22:00:33', '2019-03-10 22:00:33'),
(559, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 22:00:33', '2019-03-10 22:00:33'),
(560, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-10 22:02:57', '2019-03-10 22:02:57'),
(561, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-10 22:03:03', '2019-03-10 22:03:03'),
(562, 3, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 22:03:06', '2019-03-10 22:03:06'),
(563, 3, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"PT. Andall Hasa Prima\",\"password\":\"$2y$10$FbCl6pvbbkD\\/lZBuzHP\\/QOBG6lfioDQ.p4pbxEzOt2\\/co6H8ww.lO\",\"password_confirmation\":\"$2y$10$FbCl6pvbbkD\\/lZBuzHP\\/QOBG6lfioDQ.p4pbxEzOt2\\/co6H8ww.lO\",\"_token\":\"V9TeUMYmrJjXuehF814VLCFRg5n5QQoxlqWp1zrF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\"}', '2019-03-10 22:03:14', '2019-03-10 22:03:14'),
(564, 3, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 22:03:14', '2019-03-10 22:03:14'),
(565, 3, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-03-10 22:03:16', '2019-03-10 22:03:16'),
(566, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-10 22:03:24', '2019-03-10 22:03:24'),
(567, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 07:45:48', '2019-03-11 07:45:48'),
(568, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 08:12:20', '2019-03-11 08:12:20'),
(569, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 08:13:37', '2019-03-11 08:13:37'),
(570, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Setting\",\"icon\":\"fa-gears\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"Hcu4ILgvFwQr32YT5FHO3emAfQdKrke58doSd8A5\"}', '2019-03-11 08:15:22', '2019-03-11 08:15:22'),
(571, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-11 08:15:23', '2019-03-11 08:15:23'),
(572, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"13\",\"title\":\"Visi Misi\",\"icon\":\"fa-graduation-cap\",\"uri\":\"auth\\/visi-misi\",\"roles\":[null],\"permission\":null,\"_token\":\"Hcu4ILgvFwQr32YT5FHO3emAfQdKrke58doSd8A5\"}', '2019-03-11 08:17:49', '2019-03-11 08:17:49'),
(573, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-11 08:17:50', '2019-03-11 08:17:50'),
(574, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 08:17:58', '2019-03-11 08:17:58'),
(575, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 08:18:02', '2019-03-11 08:18:02'),
(576, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 08:18:09', '2019-03-11 08:18:09'),
(577, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 08:18:23', '2019-03-11 08:18:23'),
(578, 1, 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 08:18:33', '2019-03-11 08:18:33'),
(579, 1, 'admin/auth/menu/14', 'PUT', '127.0.0.1', '{\"parent_id\":\"13\",\"title\":\"Visi Misi\",\"icon\":\"fa-graduation-cap\",\"uri\":\"auth\\/visi-misi\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"Hcu4ILgvFwQr32YT5FHO3emAfQdKrke58doSd8A5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2019-03-11 08:18:56', '2019-03-11 08:18:56'),
(580, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-11 08:18:56', '2019-03-11 08:18:56'),
(581, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 08:19:01', '2019-03-11 08:19:01'),
(582, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 08:19:05', '2019-03-11 08:19:05'),
(583, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-11 08:19:11', '2019-03-11 08:19:11'),
(584, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 08:19:17', '2019-03-11 08:19:17'),
(585, 1, 'admin/auth/visi-misi/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 08:19:22', '2019-03-11 08:19:22'),
(586, 1, 'admin/auth/visi-misi', 'POST', '127.0.0.1', '{\"deskripsi\":\"<h3><strong>Visi Perusahaan<\\/strong><\\/h3>\\r\\n\\r\\n<p>Berperan dalam pembangunan dan perkembangan perekonomian Indonesia.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h3><strong>Misi Perusahaan<\\/strong><\\/h3>\\r\\n\\r\\n<p>Menjadikan PT. Andall Hasa Prima sebagai distributor dan formulator obat-obatan pertanian yang besar dengan wilayah pemasaran di seluruh Indonesia.<\\/p>\",\"_token\":\"Hcu4ILgvFwQr32YT5FHO3emAfQdKrke58doSd8A5\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/visi-misi\"}', '2019-03-11 08:22:09', '2019-03-11 08:22:09'),
(587, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '[]', '2019-03-11 08:22:09', '2019-03-11 08:22:09'),
(588, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 08:22:50', '2019-03-11 08:22:50'),
(589, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '[]', '2019-03-11 08:26:00', '2019-03-11 08:26:00'),
(590, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 08:26:06', '2019-03-11 08:26:06'),
(591, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '[]', '2019-03-11 08:35:57', '2019-03-11 08:35:57'),
(592, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 08:36:11', '2019-03-11 08:36:11'),
(593, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"13\",\"title\":\"Privacy Policy\",\"icon\":\"fa-expeditedssl\",\"uri\":\"auth\\/privacy-policy\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"Hcu4ILgvFwQr32YT5FHO3emAfQdKrke58doSd8A5\"}', '2019-03-11 08:41:29', '2019-03-11 08:41:29'),
(594, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-11 08:41:32', '2019-03-11 08:41:32'),
(595, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"13\",\"title\":\"Faq\",\"icon\":\"fa-comments\",\"uri\":\"auth\\/faq\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"Hcu4ILgvFwQr32YT5FHO3emAfQdKrke58doSd8A5\"}', '2019-03-11 08:43:38', '2019-03-11 08:43:38'),
(596, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-11 08:43:38', '2019-03-11 08:43:38'),
(597, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"13\",\"title\":\"Term Of Use\",\"icon\":\"fa-term\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"Hcu4ILgvFwQr32YT5FHO3emAfQdKrke58doSd8A5\"}', '2019-03-11 08:46:33', '2019-03-11 08:46:33'),
(598, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-11 08:46:34', '2019-03-11 08:46:34'),
(599, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":null,\"icon\":\"fa-clipboard\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"Hcu4ILgvFwQr32YT5FHO3emAfQdKrke58doSd8A5\"}', '2019-03-11 08:49:27', '2019-03-11 08:49:27'),
(600, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-11 08:49:27', '2019-03-11 08:49:27'),
(601, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"13\",\"title\":\"Term Of Use\",\"icon\":\"fa-clipboard\",\"uri\":\"auth\\/term-of-use\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"Hcu4ILgvFwQr32YT5FHO3emAfQdKrke58doSd8A5\"}', '2019-03-11 08:50:10', '2019-03-11 08:50:10'),
(602, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-11 08:50:11', '2019-03-11 08:50:11'),
(603, 1, 'admin/auth/menu/17', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Hcu4ILgvFwQr32YT5FHO3emAfQdKrke58doSd8A5\"}', '2019-03-11 08:50:26', '2019-03-11 08:50:26'),
(604, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 08:50:27', '2019-03-11 08:50:27'),
(605, 1, 'admin/auth/faq', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 08:50:57', '2019-03-11 08:50:57'),
(606, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 08:51:10', '2019-03-11 08:51:10'),
(607, 1, 'admin/auth/privacy-policy', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 08:51:14', '2019-03-11 08:51:14'),
(608, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 08:51:19', '2019-03-11 08:51:19'),
(609, 1, 'admin/auth/faq', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 08:51:25', '2019-03-11 08:51:25'),
(610, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 08:51:29', '2019-03-11 08:51:29'),
(611, 1, 'admin/auth/term-of-use', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 08:51:35', '2019-03-11 08:51:35'),
(612, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:04:25', '2019-03-11 09:04:25'),
(613, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-03-11 09:07:28', '2019-03-11 09:07:28'),
(614, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:07:34', '2019-03-11 09:07:34'),
(615, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:07:43', '2019-03-11 09:07:43'),
(616, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 09:07:55', '2019-03-11 09:07:55'),
(617, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:08:02', '2019-03-11 09:08:02'),
(618, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:15:08', '2019-03-11 09:15:08'),
(619, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 09:15:20', '2019-03-11 09:15:20'),
(620, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:15:34', '2019-03-11 09:15:34'),
(621, 1, 'admin/auth/permissions/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:18:42', '2019-03-11 09:18:42'),
(622, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:19:53', '2019-03-11 09:19:53'),
(623, 1, 'admin/auth/permissions/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:20:01', '2019-03-11 09:20:01'),
(624, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:20:23', '2019-03-11 09:20:23'),
(625, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:20:34', '2019-03-11 09:20:34'),
(626, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:20:47', '2019-03-11 09:20:47'),
(627, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:21:31', '2019-03-11 09:21:31'),
(628, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:21:54', '2019-03-11 09:21:54'),
(629, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:22:09', '2019-03-11 09:22:09'),
(630, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:22:18', '2019-03-11 09:22:18'),
(631, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:22:25', '2019-03-11 09:22:25'),
(632, 1, 'admin/auth/roles/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:22:37', '2019-03-11 09:22:37'),
(633, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:22:44', '2019-03-11 09:22:44'),
(634, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:23:05', '2019-03-11 09:23:05'),
(635, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:23:21', '2019-03-11 09:23:21'),
(636, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:23:27', '2019-03-11 09:23:27'),
(637, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:23:39', '2019-03-11 09:23:39'),
(638, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:24:01', '2019-03-11 09:24:01'),
(639, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:24:09', '2019-03-11 09:24:09'),
(640, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:24:23', '2019-03-11 09:24:23'),
(641, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:24:52', '2019-03-11 09:24:52'),
(642, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 09:25:07', '2019-03-11 09:25:07'),
(643, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:25:55', '2019-03-11 09:25:55'),
(644, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 09:26:18', '2019-03-11 09:26:18'),
(645, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:27:20', '2019-03-11 09:27:20'),
(646, 1, 'admin/auth/roles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:27:47', '2019-03-11 09:27:47'),
(647, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:27:53', '2019-03-11 09:27:53'),
(648, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:27:56', '2019-03-11 09:27:56'),
(649, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:28:20', '2019-03-11 09:28:20'),
(650, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:28:24', '2019-03-11 09:28:24'),
(651, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:29:05', '2019-03-11 09:29:05'),
(652, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:29:11', '2019-03-11 09:29:11'),
(653, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:29:40', '2019-03-11 09:29:40'),
(654, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:29:48', '2019-03-11 09:29:48'),
(655, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:30:34', '2019-03-11 09:30:34'),
(656, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:31:12', '2019-03-11 09:31:12'),
(657, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:32:43', '2019-03-11 09:32:43'),
(658, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 09:32:51', '2019-03-11 09:32:51'),
(659, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:33:35', '2019-03-11 09:33:35'),
(660, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:34:07', '2019-03-11 09:34:07'),
(661, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:34:11', '2019-03-11 09:34:11'),
(662, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:34:15', '2019-03-11 09:34:15'),
(663, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:35:49', '2019-03-11 09:35:49'),
(664, 1, 'admin/auth/roles/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:36:02', '2019-03-11 09:36:02'),
(665, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:36:10', '2019-03-11 09:36:10'),
(666, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"owner\",\"name\":\"Owner\",\"permissions\":[null],\"_token\":\"agNqcvVe7YVNjWHu5maNJ9cuIw2aChD6RNIRSngl\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/roles\\/2\"}', '2019-03-11 09:36:25', '2019-03-11 09:36:25'),
(667, 1, 'admin/auth/roles/2', 'GET', '127.0.0.1', '[]', '2019-03-11 09:36:25', '2019-03-11 09:36:25'),
(668, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:36:29', '2019-03-11 09:36:29'),
(669, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:36:41', '2019-03-11 09:36:41');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(670, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:36:49', '2019-03-11 09:36:49'),
(671, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:36:54', '2019-03-11 09:36:54'),
(672, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"owner\",\"name\":\"Owner\",\"permissions\":[\"2\",\"3\",\"4\",null],\"_token\":\"agNqcvVe7YVNjWHu5maNJ9cuIw2aChD6RNIRSngl\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/roles\"}', '2019-03-11 09:37:06', '2019-03-11 09:37:06'),
(673, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-03-11 09:37:07', '2019-03-11 09:37:07'),
(674, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:37:12', '2019-03-11 09:37:12'),
(675, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:37:37', '2019-03-11 09:37:37'),
(676, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:37:59', '2019-03-11 09:37:59'),
(677, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 09:38:11', '2019-03-11 09:38:11'),
(678, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:39:11', '2019-03-11 09:39:11'),
(679, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 09:39:23', '2019-03-11 09:39:23'),
(680, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:39:34', '2019-03-11 09:39:34'),
(681, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:39:42', '2019-03-11 09:39:42'),
(682, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:39:52', '2019-03-11 09:39:52'),
(683, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:40:00', '2019-03-11 09:40:00'),
(684, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:40:03', '2019-03-11 09:40:03'),
(685, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:40:25', '2019-03-11 09:40:25'),
(686, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:40:40', '2019-03-11 09:40:40'),
(687, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:41:04', '2019-03-11 09:41:04'),
(688, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:41:28', '2019-03-11 09:41:28'),
(689, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:41:40', '2019-03-11 09:41:40'),
(690, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:41:48', '2019-03-11 09:41:48'),
(691, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:42:10', '2019-03-11 09:42:10'),
(692, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:42:25', '2019-03-11 09:42:25'),
(693, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 09:42:44', '2019-03-11 09:42:44'),
(694, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:42:55', '2019-03-11 09:42:55'),
(695, 1, 'admin/auth/users/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:43:04', '2019-03-11 09:43:04'),
(696, 1, 'admin/auth/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:43:07', '2019-03-11 09:43:07'),
(697, 1, 'admin/auth/users/3', 'PUT', '127.0.0.1', '{\"username\":\"andallhasaprima\",\"name\":\"PT. Andall Hasa Prima\",\"password\":\"$2y$10$FbCl6pvbbkD\\/lZBuzHP\\/QOBG6lfioDQ.p4pbxEzOt2\\/co6H8ww.lO\",\"password_confirmation\":\"$2y$10$FbCl6pvbbkD\\/lZBuzHP\\/QOBG6lfioDQ.p4pbxEzOt2\\/co6H8ww.lO\",\"roles\":[\"2\",null],\"permissions\":[\"2\",\"3\",\"4\",null],\"_token\":\"DinD4akaqIA3AwyPrWCpRN9uPjfh2Ov6Z8Alnfhm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/users\\/3\"}', '2019-03-11 09:43:53', '2019-03-11 09:43:53'),
(698, 1, 'admin/auth/users/3', 'GET', '127.0.0.1', '[]', '2019-03-11 09:43:53', '2019-03-11 09:43:53'),
(699, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:44:03', '2019-03-11 09:44:03'),
(700, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:44:11', '2019-03-11 09:44:11'),
(701, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:44:31', '2019-03-11 09:44:31'),
(702, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 09:44:44', '2019-03-11 09:44:44'),
(703, 3, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:45:28', '2019-03-11 09:45:28'),
(704, 3, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:45:57', '2019-03-11 09:45:57'),
(705, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:46:04', '2019-03-11 09:46:04'),
(706, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 09:46:20', '2019-03-11 09:46:20'),
(707, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:46:26', '2019-03-11 09:46:26'),
(708, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:46:41', '2019-03-11 09:46:41'),
(709, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:46:55', '2019-03-11 09:46:55'),
(710, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:47:03', '2019-03-11 09:47:03'),
(711, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:47:13', '2019-03-11 09:47:13'),
(712, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:48:38', '2019-03-11 09:48:38'),
(713, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 09:48:53', '2019-03-11 09:48:53'),
(714, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 10:19:12', '2019-03-11 10:19:12'),
(715, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 10:19:53', '2019-03-11 10:19:53'),
(716, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 10:20:10', '2019-03-11 10:20:10'),
(717, 1, 'admin/auth/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 10:20:14', '2019-03-11 10:20:14'),
(718, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 10:20:44', '2019-03-11 10:20:44'),
(719, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 10:20:50', '2019-03-11 10:20:50'),
(720, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 11:12:03', '2019-03-11 11:12:03'),
(721, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-11 11:34:06', '2019-03-11 11:34:06'),
(722, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 11:34:16', '2019-03-11 11:34:16'),
(723, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '[]', '2019-03-11 11:38:00', '2019-03-11 11:38:00'),
(724, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '[]', '2019-03-11 11:38:23', '2019-03-11 11:38:23'),
(725, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '[]', '2019-03-11 11:38:50', '2019-03-11 11:38:50'),
(726, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '[]', '2019-03-11 11:39:03', '2019-03-11 11:39:03'),
(727, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '[]', '2019-03-11 11:39:27', '2019-03-11 11:39:27'),
(728, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_export_\":\"page:1\"}', '2019-03-11 11:39:40', '2019-03-11 11:39:40'),
(729, 1, 'admin/auth/visi-misi/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 11:40:47', '2019-03-11 11:40:47'),
(730, 1, 'admin/auth/visi-misi/1', 'GET', '127.0.0.1', '[]', '2019-03-11 11:42:28', '2019-03-11 11:42:28'),
(731, 1, 'admin/auth/visi-misi/1', 'GET', '127.0.0.1', '[]', '2019-03-11 11:42:41', '2019-03-11 11:42:41'),
(732, 1, 'admin/auth/visi-misi/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 11:42:48', '2019-03-11 11:42:48'),
(733, 1, 'admin/auth/visi-misi/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 11:46:16', '2019-03-11 11:46:16'),
(734, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 11:46:18', '2019-03-11 11:46:18'),
(735, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '[]', '2019-03-11 11:46:21', '2019-03-11 11:46:21'),
(736, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '[]', '2019-03-11 11:47:30', '2019-03-11 11:47:30'),
(737, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '[]', '2019-03-11 11:47:51', '2019-03-11 11:47:51'),
(738, 1, 'admin/auth/privacy-policy', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 11:48:01', '2019-03-11 11:48:01'),
(739, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 11:48:07', '2019-03-11 11:48:07'),
(740, 1, 'admin/auth/privacy-policy', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 11:48:15', '2019-03-11 11:48:15'),
(741, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 11:48:19', '2019-03-11 11:48:19'),
(742, 1, 'admin/auth/privacy-policy', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 11:48:27', '2019-03-11 11:48:27'),
(743, 1, 'admin/auth/privacy-policy/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 11:48:30', '2019-03-11 11:48:30'),
(744, 1, 'admin/auth/privacy-policy/create', 'GET', '127.0.0.1', '[]', '2019-03-11 11:50:07', '2019-03-11 11:50:07'),
(745, 1, 'admin/auth/privacy-policy', 'POST', '127.0.0.1', '{\"deskripsi\":\"<h3><strong>Visi Perusahaan<\\/strong><\\/h3>\\r\\n\\r\\n<p>Berperan dalam pembangunan dan perkembangan perekonomian Indonesia.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h3><strong>Misi Perusahaan<\\/strong><\\/h3>\\r\\n\\r\\n<p>Menjadikan PT. Andall Hasa Prima sebagai distributor dan formulator obat-obatan pertanian yang besar dengan wilayah pemasaran di seluruh Indonesia.<\\/p>\",\"_token\":\"ZeLbbwWNwtDb78o8rfajeyF11rNn7MQfge93nViR\"}', '2019-03-11 11:50:16', '2019-03-11 11:50:16'),
(746, 1, 'admin/auth/privacy-policy', 'GET', '127.0.0.1', '[]', '2019-03-11 11:50:17', '2019-03-11 11:50:17'),
(747, 1, 'admin/auth/faq', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 11:50:26', '2019-03-11 11:50:26'),
(748, 1, 'admin/auth/faq/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 11:50:30', '2019-03-11 11:50:30'),
(749, 1, 'admin/auth/faq', 'POST', '127.0.0.1', '{\"deskripsi\":\"<h3><strong>Visi Perusahaan<\\/strong><\\/h3>\\r\\n\\r\\n<p>Berperan dalam pembangunan dan perkembangan perekonomian Indonesia.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h3><strong>Misi Perusahaan<\\/strong><\\/h3>\\r\\n\\r\\n<p>Menjadikan PT. Andall Hasa Prima sebagai distributor dan formulator obat-obatan pertanian yang besar dengan wilayah pemasaran di seluruh Indonesia.<\\/p>\",\"_token\":\"ZeLbbwWNwtDb78o8rfajeyF11rNn7MQfge93nViR\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/faq\"}', '2019-03-11 11:50:34', '2019-03-11 11:50:34'),
(750, 1, 'admin/auth/faq', 'GET', '127.0.0.1', '[]', '2019-03-11 11:50:35', '2019-03-11 11:50:35'),
(751, 1, 'admin/auth/term-of-use', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 11:50:40', '2019-03-11 11:50:40'),
(752, 1, 'admin/auth/term-of-use/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 11:50:42', '2019-03-11 11:50:42'),
(753, 1, 'admin/auth/term-of-use', 'POST', '127.0.0.1', '{\"deskripsi\":\"<h3><strong>Visi Perusahaan<\\/strong><\\/h3>\\r\\n\\r\\n<p>Berperan dalam pembangunan dan perkembangan perekonomian Indonesia.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h3><strong>Misi Perusahaan<\\/strong><\\/h3>\\r\\n\\r\\n<p>Menjadikan PT. Andall Hasa Prima sebagai distributor dan formulator obat-obatan pertanian yang besar dengan wilayah pemasaran di seluruh Indonesia.<\\/p>\",\"_token\":\"ZeLbbwWNwtDb78o8rfajeyF11rNn7MQfge93nViR\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/term-of-use\"}', '2019-03-11 11:50:47', '2019-03-11 11:50:47'),
(754, 1, 'admin/auth/term-of-use', 'GET', '127.0.0.1', '[]', '2019-03-11 11:50:48', '2019-03-11 11:50:48'),
(755, 1, 'admin/auth/term-of-use', 'GET', '127.0.0.1', '[]', '2019-03-11 11:51:55', '2019-03-11 11:51:55'),
(756, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 11:55:54', '2019-03-11 11:55:54'),
(757, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 11:56:36', '2019-03-11 11:56:36'),
(758, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-11 11:57:08', '2019-03-11 11:57:08'),
(759, 1, 'admin/auth/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 11:57:47', '2019-03-11 11:57:47'),
(760, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 11:58:02', '2019-03-11 11:58:02'),
(761, 1, 'admin/auth/products/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 11:58:19', '2019-03-11 11:58:19'),
(762, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 11:58:23', '2019-03-11 11:58:23'),
(763, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 11:58:57', '2019-03-11 11:58:57'),
(764, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 12:04:43', '2019-03-11 12:04:43'),
(765, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 18:36:18', '2019-03-11 18:36:18'),
(766, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:36:26', '2019-03-11 18:36:26'),
(767, 3, 'admin/auth/privacy-policy', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:36:31', '2019-03-11 18:36:31'),
(768, 3, 'admin/auth/faq', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:36:33', '2019-03-11 18:36:33'),
(769, 3, 'admin/auth/term-of-use', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:36:35', '2019-03-11 18:36:35'),
(770, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:36:39', '2019-03-11 18:36:39'),
(771, 3, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:36:41', '2019-03-11 18:36:41'),
(772, 3, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:37:14', '2019-03-11 18:37:14'),
(773, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:37:18', '2019-03-11 18:37:18'),
(774, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 18:40:38', '2019-03-11 18:40:38'),
(775, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:41:07', '2019-03-11 18:41:07'),
(776, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:41:11', '2019-03-11 18:41:11'),
(777, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:41:36', '2019-03-11 18:41:36'),
(778, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:41:38', '2019-03-11 18:41:38'),
(779, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:41:54', '2019-03-11 18:41:54'),
(780, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:43:25', '2019-03-11 18:43:25'),
(781, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:43:30', '2019-03-11 18:43:30'),
(782, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:43:35', '2019-03-11 18:43:35'),
(783, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-11 18:44:02', '2019-03-11 18:44:02'),
(784, 1, 'admin/auth/permissions/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:44:07', '2019-03-11 18:44:07'),
(785, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:44:43', '2019-03-11 18:44:43'),
(786, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:44:46', '2019-03-11 18:44:46'),
(787, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"auth.masterdata\",\"name\":\"Auth Master Data\",\"http_method\":[null],\"http_path\":\"\\/auth\\/product-categorys\\r\\n\\/auth\\/users\",\"_token\":\"NjQSq2tTs3NteutdXqtLWx8oTj4XC2mW4aQ5qhOR\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/permissions\"}', '2019-03-11 18:44:55', '2019-03-11 18:44:55'),
(788, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-11 18:44:55', '2019-03-11 18:44:55'),
(789, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2019-03-11 18:45:10', '2019-03-11 18:45:10'),
(790, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"auth.setting\",\"name\":\"Auth Setting\",\"http_method\":[null],\"http_path\":\"\\/auth\\/faq\\r\\n\\/auth\\/privacy-policy\\r\\n\\/auth\\/term-of-use\\r\\n\\/auth\\/visi-misi\",\"_token\":\"NjQSq2tTs3NteutdXqtLWx8oTj4XC2mW4aQ5qhOR\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/permissions\"}', '2019-03-11 18:46:11', '2019-03-11 18:46:11'),
(791, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-11 18:46:12', '2019-03-11 18:46:12'),
(792, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:46:36', '2019-03-11 18:46:36'),
(793, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:46:39', '2019-03-11 18:46:39'),
(794, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"owner\",\"name\":\"Owner\",\"permissions\":[\"2\",\"3\",\"4\",\"6\",\"7\",null],\"_token\":\"NjQSq2tTs3NteutdXqtLWx8oTj4XC2mW4aQ5qhOR\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/roles\"}', '2019-03-11 18:46:55', '2019-03-11 18:46:55'),
(795, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-03-11 18:46:56', '2019-03-11 18:46:56'),
(796, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:47:04', '2019-03-11 18:47:04'),
(797, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:47:11', '2019-03-11 18:47:11'),
(798, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:47:18', '2019-03-11 18:47:18'),
(799, 1, 'admin/auth/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:47:27', '2019-03-11 18:47:27'),
(800, 1, 'admin/auth/users/3', 'PUT', '127.0.0.1', '{\"username\":\"andallhasaprima\",\"name\":\"PT. Andall Hasa Prima\",\"password\":\"$2y$10$FbCl6pvbbkD\\/lZBuzHP\\/QOBG6lfioDQ.p4pbxEzOt2\\/co6H8ww.lO\",\"password_confirmation\":\"$2y$10$FbCl6pvbbkD\\/lZBuzHP\\/QOBG6lfioDQ.p4pbxEzOt2\\/co6H8ww.lO\",\"roles\":[\"2\",null],\"permissions\":[\"2\",\"3\",\"4\",\"6\",\"7\",null],\"_token\":\"NjQSq2tTs3NteutdXqtLWx8oTj4XC2mW4aQ5qhOR\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/users\"}', '2019-03-11 18:47:39', '2019-03-11 18:47:39'),
(801, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-11 18:47:40', '2019-03-11 18:47:40'),
(802, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:47:48', '2019-03-11 18:47:48'),
(803, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 18:47:58', '2019-03-11 18:47:58'),
(804, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:48:04', '2019-03-11 18:48:04'),
(805, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:48:10', '2019-03-11 18:48:10'),
(806, 3, 'admin/auth/privacy-policy', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:48:14', '2019-03-11 18:48:14'),
(807, 3, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:48:18', '2019-03-11 18:48:18'),
(808, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:48:22', '2019-03-11 18:48:22'),
(809, 3, 'admin/auth/term-of-use', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:48:28', '2019-03-11 18:48:28'),
(810, 3, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:48:34', '2019-03-11 18:48:34'),
(811, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:48:44', '2019-03-11 18:48:44'),
(812, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 18:48:57', '2019-03-11 18:48:57'),
(813, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:49:16', '2019-03-11 18:49:16'),
(814, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:49:19', '2019-03-11 18:49:19'),
(815, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:49:30', '2019-03-11 18:49:30'),
(816, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-11 18:49:37', '2019-03-11 18:49:37'),
(817, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:49:44', '2019-03-11 18:49:44'),
(818, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:51:12', '2019-03-11 18:51:12'),
(819, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:51:16', '2019-03-11 18:51:16'),
(820, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-11 18:54:17', '2019-03-11 18:54:17'),
(821, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:54:23', '2019-03-11 18:54:23'),
(822, 1, 'admin/auth/product-categorys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:55:19', '2019-03-11 18:55:19'),
(823, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:55:24', '2019-03-11 18:55:24'),
(824, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 18:55:33', '2019-03-11 18:55:33'),
(825, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:55:38', '2019-03-11 18:55:38'),
(826, 3, 'admin/auth/product-categorys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:55:40', '2019-03-11 18:55:40'),
(827, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:55:48', '2019-03-11 18:55:48'),
(828, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:55:59', '2019-03-11 18:55:59'),
(829, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:56:04', '2019-03-11 18:56:04'),
(830, 3, 'admin/auth/product-categorys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:56:07', '2019-03-11 18:56:07'),
(831, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:56:09', '2019-03-11 18:56:09'),
(832, 3, 'admin/auth/visi-misi/create', 'GET', '127.0.0.1', '[]', '2019-03-11 18:56:14', '2019-03-11 18:56:14'),
(833, 3, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2019-03-11 18:56:19', '2019-03-11 18:56:19'),
(834, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 18:59:11', '2019-03-11 18:59:11'),
(835, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:59:17', '2019-03-11 18:59:17'),
(836, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 18:59:22', '2019-03-11 18:59:22'),
(837, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '[]', '2019-03-11 18:59:23', '2019-03-11 18:59:23'),
(838, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '[]', '2019-03-11 19:00:58', '2019-03-11 19:00:58'),
(839, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:01:07', '2019-03-11 19:01:07'),
(840, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '[]', '2019-03-11 19:01:08', '2019-03-11 19:01:08'),
(841, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '[]', '2019-03-11 19:04:05', '2019-03-11 19:04:05'),
(842, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:04:13', '2019-03-11 19:04:13'),
(843, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '[]', '2019-03-11 19:04:14', '2019-03-11 19:04:14'),
(844, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '[]', '2019-03-11 19:12:16', '2019-03-11 19:12:16'),
(845, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:12:21', '2019-03-11 19:12:21'),
(846, 3, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:12:25', '2019-03-11 19:12:25'),
(847, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:12:30', '2019-03-11 19:12:30'),
(848, 3, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-11 19:12:31', '2019-03-11 19:12:31'),
(849, 3, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-11 19:18:05', '2019-03-11 19:18:05'),
(850, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:18:11', '2019-03-11 19:18:11'),
(851, 3, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-11 19:18:11', '2019-03-11 19:18:11'),
(852, 3, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-11 19:21:38', '2019-03-11 19:21:38'),
(853, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:23:27', '2019-03-11 19:23:27'),
(854, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:23:48', '2019-03-11 19:23:48'),
(855, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 19:23:57', '2019-03-11 19:23:57'),
(856, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:24:02', '2019-03-11 19:24:02'),
(857, 1, 'admin/auth/privacy-policy', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:24:36', '2019-03-11 19:24:36'),
(858, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:24:41', '2019-03-11 19:24:41'),
(859, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:24:43', '2019-03-11 19:24:43'),
(860, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:24:46', '2019-03-11 19:24:46'),
(861, 1, 'admin/auth/faq', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:27:16', '2019-03-11 19:27:16'),
(862, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:31:27', '2019-03-11 19:31:27'),
(863, 1, 'admin/auth/privacy-policy', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:31:30', '2019-03-11 19:31:30'),
(864, 1, 'admin/auth/term-of-use', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:31:32', '2019-03-11 19:31:32'),
(865, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:32:05', '2019-03-11 19:32:05'),
(866, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:32:12', '2019-03-11 19:32:12'),
(867, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:33:09', '2019-03-11 19:33:09'),
(868, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 19:33:19', '2019-03-11 19:33:19'),
(869, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:34:08', '2019-03-11 19:34:08'),
(870, 3, 'admin/auth/privacy-policy', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:34:11', '2019-03-11 19:34:11'),
(871, 3, 'admin/auth/faq', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:34:13', '2019-03-11 19:34:13'),
(872, 3, 'admin/auth/term-of-use', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:34:15', '2019-03-11 19:34:15'),
(873, 3, 'admin/auth/term-of-use', 'GET', '127.0.0.1', '[]', '2019-03-11 19:35:46', '2019-03-11 19:35:46'),
(874, 3, 'admin/auth/term-of-use', 'GET', '127.0.0.1', '[]', '2019-03-11 19:35:59', '2019-03-11 19:35:59'),
(875, 3, 'admin/auth/faq', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:36:09', '2019-03-11 19:36:09'),
(876, 3, 'admin/auth/faq', 'GET', '127.0.0.1', '[]', '2019-03-11 19:36:16', '2019-03-11 19:36:16'),
(877, 3, 'admin/auth/faq', 'GET', '127.0.0.1', '[]', '2019-03-11 19:36:24', '2019-03-11 19:36:24'),
(878, 3, 'admin/auth/faq', 'GET', '127.0.0.1', '[]', '2019-03-11 19:37:33', '2019-03-11 19:37:33'),
(879, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:37:43', '2019-03-11 19:37:43'),
(880, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 19:37:52', '2019-03-11 19:37:52'),
(881, 1, 'admin/auth/faq', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:37:57', '2019-03-11 19:37:57'),
(882, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:38:03', '2019-03-11 19:38:03'),
(883, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 19:38:13', '2019-03-11 19:38:13'),
(884, 3, 'admin/auth/faq', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:38:18', '2019-03-11 19:38:18'),
(885, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:41:17', '2019-03-11 19:41:17'),
(886, 3, 'admin/auth/privacy-policy', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:41:20', '2019-03-11 19:41:20'),
(887, 3, 'admin/auth/faq', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:41:22', '2019-03-11 19:41:22'),
(888, 3, 'admin/auth/term-of-use', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:41:24', '2019-03-11 19:41:24'),
(889, 3, 'admin/auth/term-of-use/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:41:28', '2019-03-11 19:41:28'),
(890, 3, 'admin/auth/term-of-use', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:41:31', '2019-03-11 19:41:31'),
(891, 3, 'admin/auth/term-of-use/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:41:37', '2019-03-11 19:41:37'),
(892, 3, 'admin/auth/term-of-use', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:41:40', '2019-03-11 19:41:40'),
(893, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:41:56', '2019-03-11 19:41:56'),
(894, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '[]', '2019-03-11 19:42:01', '2019-03-11 19:42:01'),
(895, 3, 'admin/auth/privacy-policy', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:42:06', '2019-03-11 19:42:06'),
(896, 3, 'admin/auth/faq', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:42:16', '2019-03-11 19:42:16'),
(897, 3, 'admin/auth/faq/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:42:19', '2019-03-11 19:42:19'),
(898, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:42:31', '2019-03-11 19:42:31'),
(899, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 19:42:40', '2019-03-11 19:42:40'),
(900, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:42:44', '2019-03-11 19:42:44'),
(901, 1, 'admin/auth/privacy-policy', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:42:47', '2019-03-11 19:42:47'),
(902, 1, 'admin/auth/privacy-policy/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:42:50', '2019-03-11 19:42:50'),
(903, 1, 'admin/auth/privacy-policy/1', 'PUT', '127.0.0.1', '{\"deskripsi\":\"<h3><strong>Privacy Policy<\\/strong><\\/h3>\",\"_token\":\"4rBxtlVgStPpt42gQN1E1NJVptp7YVMHOGFEfGt7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/privacy-policy\"}', '2019-03-11 19:44:30', '2019-03-11 19:44:30'),
(904, 1, 'admin/auth/privacy-policy', 'GET', '127.0.0.1', '[]', '2019-03-11 19:44:30', '2019-03-11 19:44:30'),
(905, 1, 'admin/auth/faq', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:44:36', '2019-03-11 19:44:36'),
(906, 1, 'admin/auth/faq/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:44:40', '2019-03-11 19:44:40'),
(907, 1, 'admin/auth/faq/1', 'PUT', '127.0.0.1', '{\"deskripsi\":\"<h3><strong>FAQ<\\/strong><\\/h3>\",\"_token\":\"4rBxtlVgStPpt42gQN1E1NJVptp7YVMHOGFEfGt7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/faq\"}', '2019-03-11 19:44:48', '2019-03-11 19:44:48'),
(908, 1, 'admin/auth/faq', 'GET', '127.0.0.1', '[]', '2019-03-11 19:44:49', '2019-03-11 19:44:49'),
(909, 1, 'admin/auth/term-of-use', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:44:54', '2019-03-11 19:44:54'),
(910, 1, 'admin/auth/term-of-use/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:44:58', '2019-03-11 19:44:58'),
(911, 1, 'admin/auth/term-of-use/1', 'PUT', '127.0.0.1', '{\"deskripsi\":\"<h3><strong>Term Of Use<\\/strong><\\/h3>\",\"_token\":\"4rBxtlVgStPpt42gQN1E1NJVptp7YVMHOGFEfGt7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/term-of-use\"}', '2019-03-11 19:45:08', '2019-03-11 19:45:08'),
(912, 1, 'admin/auth/term-of-use', 'GET', '127.0.0.1', '[]', '2019-03-11 19:45:09', '2019-03-11 19:45:09'),
(913, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:45:22', '2019-03-11 19:45:22'),
(914, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 19:45:39', '2019-03-11 19:45:39'),
(915, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 19:46:06', '2019-03-11 19:46:06'),
(916, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:46:15', '2019-03-11 19:46:15'),
(917, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:46:33', '2019-03-11 19:46:33'),
(918, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:46:38', '2019-03-11 19:46:38'),
(919, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:46:58', '2019-03-11 19:46:58'),
(920, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:47:08', '2019-03-11 19:47:08'),
(921, 1, 'admin/auth/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:47:12', '2019-03-11 19:47:12'),
(922, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:47:28', '2019-03-11 19:47:28'),
(923, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:47:32', '2019-03-11 19:47:32'),
(924, 3, 'admin/auth/visi-misi/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:47:36', '2019-03-11 19:47:36'),
(925, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:47:42', '2019-03-11 19:47:42'),
(926, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-11 19:47:52', '2019-03-11 19:47:52'),
(927, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '[]', '2019-03-11 19:47:56', '2019-03-11 19:47:56'),
(928, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:48:03', '2019-03-11 19:48:03'),
(929, 3, 'admin/auth/privacy-policy', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:48:05', '2019-03-11 19:48:05'),
(930, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:48:08', '2019-03-11 19:48:08'),
(931, 3, 'admin/auth/privacy-policy', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:49:37', '2019-03-11 19:49:37'),
(932, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:49:40', '2019-03-11 19:49:40'),
(933, 3, 'admin/auth/visi-misi/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:49:42', '2019-03-11 19:49:42'),
(934, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:49:44', '2019-03-11 19:49:44'),
(935, 1, 'admin/auth/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:50:02', '2019-03-11 19:50:02'),
(936, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:50:12', '2019-03-11 19:50:12'),
(937, 1, 'admin/auth/product-categorys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:50:13', '2019-03-11 19:50:13'),
(938, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:50:17', '2019-03-11 19:50:17'),
(939, 1, 'admin/auth/product-categorys/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:50:26', '2019-03-11 19:50:26'),
(940, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:50:33', '2019-03-11 19:50:33'),
(941, 3, 'admin/auth/product-categorys/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:50:36', '2019-03-11 19:50:36'),
(942, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:50:39', '2019-03-11 19:50:39'),
(943, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:50:55', '2019-03-11 19:50:55'),
(944, 1, 'admin/auth/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:50:59', '2019-03-11 19:50:59'),
(945, 1, 'admin/auth/users/3', 'PUT', '127.0.0.1', '{\"username\":\"andallhasaprima\",\"name\":\"PT. Andall Hasa Prima\",\"password\":\"$2y$10$FbCl6pvbbkD\\/lZBuzHP\\/QOBG6lfioDQ.p4pbxEzOt2\\/co6H8ww.lO\",\"password_confirmation\":\"$2y$10$FbCl6pvbbkD\\/lZBuzHP\\/QOBG6lfioDQ.p4pbxEzOt2\\/co6H8ww.lO\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"TRdYuch6qiYWx5L82ngngaNYoFhR4dpxR65IBK3n\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/users\"}', '2019-03-11 19:51:12', '2019-03-11 19:51:12'),
(946, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-11 19:51:12', '2019-03-11 19:51:12'),
(947, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '[]', '2019-03-11 19:51:19', '2019-03-11 19:51:19'),
(948, 3, 'admin/auth/product-categorys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:51:25', '2019-03-11 19:51:25'),
(949, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:51:27', '2019-03-11 19:51:27'),
(950, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:51:30', '2019-03-11 19:51:30'),
(951, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 19:51:44', '2019-03-11 19:51:44'),
(952, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:51:49', '2019-03-11 19:51:49'),
(953, 3, 'admin/auth/product-categorys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:51:52', '2019-03-11 19:51:52'),
(954, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:51:56', '2019-03-11 19:51:56'),
(955, 1, 'admin/auth/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:52:04', '2019-03-11 19:52:04'),
(956, 1, 'admin/auth/users/3', 'PUT', '127.0.0.1', '{\"username\":\"andallhasaprima\",\"name\":\"PT. Andall Hasa Prima\",\"password\":\"$2y$10$FbCl6pvbbkD\\/lZBuzHP\\/QOBG6lfioDQ.p4pbxEzOt2\\/co6H8ww.lO\",\"password_confirmation\":\"$2y$10$FbCl6pvbbkD\\/lZBuzHP\\/QOBG6lfioDQ.p4pbxEzOt2\\/co6H8ww.lO\",\"roles\":[\"2\",null],\"permissions\":[\"2\",\"3\",\"4\",\"6\",\"7\",null],\"_token\":\"TRdYuch6qiYWx5L82ngngaNYoFhR4dpxR65IBK3n\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/users\"}', '2019-03-11 19:52:31', '2019-03-11 19:52:31'),
(957, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-11 19:52:31', '2019-03-11 19:52:31'),
(958, 1, 'admin/auth/users/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:52:34', '2019-03-11 19:52:34'),
(959, 1, 'admin/auth/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:52:38', '2019-03-11 19:52:38'),
(960, 1, 'admin/auth/users/3', 'PUT', '127.0.0.1', '{\"username\":\"andallhasaprima\",\"name\":\"PT. Andall Hasa Prima\",\"password\":\"$2y$10$FbCl6pvbbkD\\/lZBuzHP\\/QOBG6lfioDQ.p4pbxEzOt2\\/co6H8ww.lO\",\"password_confirmation\":\"$2y$10$FbCl6pvbbkD\\/lZBuzHP\\/QOBG6lfioDQ.p4pbxEzOt2\\/co6H8ww.lO\",\"roles\":[\"1\",null],\"permissions\":[\"2\",\"3\",\"4\",\"6\",\"7\",null],\"_token\":\"TRdYuch6qiYWx5L82ngngaNYoFhR4dpxR65IBK3n\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/users\\/3\"}', '2019-03-11 19:52:48', '2019-03-11 19:52:48'),
(961, 1, 'admin/auth/users/3', 'GET', '127.0.0.1', '[]', '2019-03-11 19:52:49', '2019-03-11 19:52:49'),
(962, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '[]', '2019-03-11 19:52:54', '2019-03-11 19:52:54'),
(963, 3, 'admin/auth/product-categorys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:53:00', '2019-03-11 19:53:00'),
(964, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:53:03', '2019-03-11 19:53:03'),
(965, 1, 'admin/auth/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:53:14', '2019-03-11 19:53:14'),
(966, 1, 'admin/auth/users/3', 'PUT', '127.0.0.1', '{\"username\":\"andallhasaprima\",\"name\":\"PT. Andall Hasa Prima\",\"password\":\"$2y$10$FbCl6pvbbkD\\/lZBuzHP\\/QOBG6lfioDQ.p4pbxEzOt2\\/co6H8ww.lO\",\"password_confirmation\":\"$2y$10$FbCl6pvbbkD\\/lZBuzHP\\/QOBG6lfioDQ.p4pbxEzOt2\\/co6H8ww.lO\",\"roles\":[\"2\",null],\"permissions\":[\"2\",\"3\",\"4\",\"6\",\"7\",null],\"_token\":\"TRdYuch6qiYWx5L82ngngaNYoFhR4dpxR65IBK3n\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/users\\/3\"}', '2019-03-11 19:53:23', '2019-03-11 19:53:23'),
(967, 1, 'admin/auth/users/3', 'GET', '127.0.0.1', '[]', '2019-03-11 19:53:24', '2019-03-11 19:53:24'),
(968, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '[]', '2019-03-11 19:53:28', '2019-03-11 19:53:28'),
(969, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:53:35', '2019-03-11 19:53:35'),
(970, 1, 'admin/auth/permissions/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:53:51', '2019-03-11 19:53:51'),
(971, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:53:56', '2019-03-11 19:53:56'),
(972, 1, 'admin/auth/permissions/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:54:08', '2019-03-11 19:54:08'),
(973, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:54:11', '2019-03-11 19:54:11'),
(974, 1, 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:54:28', '2019-03-11 19:54:28'),
(975, 1, 'admin/auth/permissions/7', 'PUT', '127.0.0.1', '{\"slug\":\"auth.setting\",\"name\":\"Auth Setting\",\"http_method\":[null],\"http_path\":\"\\/auth\\/faq\\r\\n\\/auth\\/privacy-policy\\r\\n\\/auth\\/term-of-use\\r\\n\\/auth\\/visi-misi*\",\"_token\":\"TRdYuch6qiYWx5L82ngngaNYoFhR4dpxR65IBK3n\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/permissions\"}', '2019-03-11 19:54:42', '2019-03-11 19:54:42'),
(976, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-11 19:54:43', '2019-03-11 19:54:43'),
(977, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '[]', '2019-03-11 19:54:50', '2019-03-11 19:54:50'),
(978, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:55:22', '2019-03-11 19:55:22'),
(979, 3, 'admin/auth/visi-misi/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:55:24', '2019-03-11 19:55:24'),
(980, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:55:26', '2019-03-11 19:55:26'),
(981, 3, 'admin/auth/visi-misi/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:55:30', '2019-03-11 19:55:30'),
(982, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:55:34', '2019-03-11 19:55:34'),
(983, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:55:49', '2019-03-11 19:55:49'),
(984, 1, 'admin/auth/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:55:55', '2019-03-11 19:55:55'),
(985, 3, 'admin/auth/privacy-policy', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:56:02', '2019-03-11 19:56:02'),
(986, 3, 'admin/auth/privacy-policy/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:56:07', '2019-03-11 19:56:07'),
(987, 3, 'admin/auth/privacy-policy', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 19:56:09', '2019-03-11 19:56:09'),
(988, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 20:00:09', '2019-03-11 20:00:09'),
(989, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 20:00:10', '2019-03-11 20:00:10'),
(990, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 20:00:24', '2019-03-11 20:00:24'),
(991, 1, 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 20:00:29', '2019-03-11 20:00:29'),
(992, 1, 'admin/auth/permissions/7', 'PUT', '127.0.0.1', '{\"slug\":\"auth.setting\",\"name\":\"Auth Setting\",\"http_method\":[null],\"http_path\":\"\\/auth\\/faq*\\r\\n\\/auth\\/privacy-policy*\\r\\n\\/auth\\/term-of-use*\\r\\n\\/auth\\/visi-misi*\",\"_token\":\"TRdYuch6qiYWx5L82ngngaNYoFhR4dpxR65IBK3n\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/permissions\"}', '2019-03-11 20:00:43', '2019-03-11 20:00:43'),
(993, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-11 20:00:44', '2019-03-11 20:00:44'),
(994, 1, 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 20:00:48', '2019-03-11 20:00:48'),
(995, 1, 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"auth.masterdata\",\"name\":\"Auth Master Data\",\"http_method\":[null],\"http_path\":\"\\/auth\\/product-categorys*\\r\\n\\/auth\\/users*\",\"_token\":\"TRdYuch6qiYWx5L82ngngaNYoFhR4dpxR65IBK3n\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/permissions\"}', '2019-03-11 20:00:59', '2019-03-11 20:00:59'),
(996, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-11 20:01:00', '2019-03-11 20:01:00'),
(997, 3, 'admin/auth/privacy-policy', 'GET', '127.0.0.1', '[]', '2019-03-11 20:01:47', '2019-03-11 20:01:47'),
(998, 3, 'admin/auth/privacy-policy/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 20:01:57', '2019-03-11 20:01:57'),
(999, 3, 'admin/auth/privacy-policy/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 20:02:10', '2019-03-11 20:02:10'),
(1000, 3, 'admin/auth/privacy-policy', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 20:02:12', '2019-03-11 20:02:12'),
(1001, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-11 20:05:51', '2019-03-11 20:05:51'),
(1002, 3, 'admin/auth/privacy-policy', 'GET', '127.0.0.1', '[]', '2019-03-11 20:05:55', '2019-03-11 20:05:55'),
(1003, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 20:08:12', '2019-03-11 20:08:12'),
(1004, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '[]', '2019-03-11 20:08:18', '2019-03-11 20:08:18'),
(1005, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '[]', '2019-03-11 20:08:38', '2019-03-11 20:08:38'),
(1006, 3, 'admin/auth/visi-misi/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 20:08:45', '2019-03-11 20:08:45'),
(1007, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 20:08:48', '2019-03-11 20:08:48'),
(1008, 3, 'admin/auth/visi-misi/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 20:10:31', '2019-03-11 20:10:31'),
(1009, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 20:10:35', '2019-03-11 20:10:35'),
(1010, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '[]', '2019-03-11 20:11:44', '2019-03-11 20:11:44'),
(1011, 3, 'admin/auth/privacy-policy', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 20:13:45', '2019-03-11 20:13:45'),
(1012, 3, 'admin/auth/faq', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 20:13:48', '2019-03-11 20:13:48'),
(1013, 3, 'admin/auth/term-of-use', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 20:13:50', '2019-03-11 20:13:50');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1014, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 21:00:26', '2019-03-11 21:00:26'),
(1015, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 21:00:35', '2019-03-11 21:00:35'),
(1016, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 21:00:43', '2019-03-11 21:00:43'),
(1017, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 21:00:47', '2019-03-11 21:00:47'),
(1018, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"Produk Kategori\",\"icon\":\"fa-th-large\",\"uri\":\"auth\\/product-categorys\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"OfSmw8yTWRlUy6F5kMWhZOf0drfkI6x8D7U3vrbE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2019-03-11 21:01:00', '2019-03-11 21:01:00'),
(1019, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-11 21:01:01', '2019-03-11 21:01:01'),
(1020, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 21:01:06', '2019-03-11 21:01:06'),
(1021, 1, 'admin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"User\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"OfSmw8yTWRlUy6F5kMWhZOf0drfkI6x8D7U3vrbE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2019-03-11 21:01:13', '2019-03-11 21:01:13'),
(1022, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-11 21:01:14', '2019-03-11 21:01:14'),
(1023, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-11 21:01:20', '2019-03-11 21:01:20'),
(1024, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-11 21:02:23', '2019-03-11 21:02:23'),
(1025, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-11 21:07:16', '2019-03-11 21:07:16'),
(1026, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 07:23:38', '2019-03-12 07:23:38'),
(1027, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 07:41:33', '2019-03-12 07:41:33'),
(1028, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 07:42:36', '2019-03-12 07:42:36'),
(1029, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 07:42:54', '2019-03-12 07:42:54'),
(1030, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"13\",\"title\":\"Tentang Kami\",\"icon\":\"fa-info-circle\",\"uri\":\"auth\\/about-us\",\"roles\":[null],\"permission\":null,\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\"}', '2019-03-12 07:45:00', '2019-03-12 07:45:00'),
(1031, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 07:45:00', '2019-03-12 07:45:00'),
(1032, 1, 'admin/auth/menu/18/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 07:45:04', '2019-03-12 07:45:04'),
(1033, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 07:45:09', '2019-03-12 07:45:09'),
(1034, 1, 'admin/auth/menu/19/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 07:45:12', '2019-03-12 07:45:12'),
(1035, 1, 'admin/auth/menu/19', 'PUT', '127.0.0.1', '{\"parent_id\":\"13\",\"title\":\"Tentang Kami\",\"icon\":\"fa-info-circle\",\"uri\":\"auth\\/about-us\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-03-12 07:45:19', '2019-03-12 07:45:19'),
(1036, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 07:45:19', '2019-03-12 07:45:19'),
(1037, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 07:45:28', '2019-03-12 07:45:28'),
(1038, 1, 'admin/auth/menu/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 07:45:42', '2019-03-12 07:45:42'),
(1039, 1, 'admin/auth/menu/16', 'PUT', '127.0.0.1', '{\"parent_id\":\"13\",\"title\":\"FAQ\",\"icon\":\"fa-comments\",\"uri\":\"auth\\/faq\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-03-12 07:45:51', '2019-03-12 07:45:51'),
(1040, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 07:45:51', '2019-03-12 07:45:51'),
(1041, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 07:46:10', '2019-03-12 07:46:10'),
(1042, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":7},{\\\"id\\\":6},{\\\"id\\\":5},{\\\"id\\\":4}]},{\\\"id\\\":12,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":3}]},{\\\"id\\\":13,\\\"children\\\":[{\\\"id\\\":16},{\\\"id\\\":15},{\\\"id\\\":19},{\\\"id\\\":18},{\\\"id\\\":14}]}]\"}', '2019-03-12 07:46:27', '2019-03-12 07:46:27'),
(1043, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 07:46:27', '2019-03-12 07:46:27'),
(1044, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 07:46:30', '2019-03-12 07:46:30'),
(1045, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":6},{\\\"id\\\":7},{\\\"id\\\":5},{\\\"id\\\":4}]},{\\\"id\\\":12,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":3}]},{\\\"id\\\":13,\\\"children\\\":[{\\\"id\\\":16},{\\\"id\\\":15},{\\\"id\\\":19},{\\\"id\\\":18},{\\\"id\\\":14}]}]\"}', '2019-03-12 07:46:51', '2019-03-12 07:46:51'),
(1046, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 07:46:52', '2019-03-12 07:46:52'),
(1047, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 07:46:55', '2019-03-12 07:46:55'),
(1048, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 07:46:59', '2019-03-12 07:46:59'),
(1049, 3, 'admin/auth/about-us', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 07:47:04', '2019-03-12 07:47:04'),
(1050, 3, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 07:47:10', '2019-03-12 07:47:10'),
(1051, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 07:47:16', '2019-03-12 07:47:16'),
(1052, 1, 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 07:47:20', '2019-03-12 07:47:20'),
(1053, 1, 'admin/auth/permissions/7', 'PUT', '127.0.0.1', '{\"slug\":\"auth.setting\",\"name\":\"Auth Setting\",\"http_method\":[null],\"http_path\":\"\\/auth\\/faq*\\r\\n\\/auth\\/privacy-policy*\\r\\n\\/auth\\/about-us*\\r\\n\\/auth\\/term-of-use*\\r\\n\\/auth\\/visi-misi*\",\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2019-03-12 07:47:38', '2019-03-12 07:47:38'),
(1054, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-12 07:47:38', '2019-03-12 07:47:38'),
(1055, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 07:47:41', '2019-03-12 07:47:41'),
(1056, 3, 'admin/auth/about-us', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 07:47:45', '2019-03-12 07:47:45'),
(1057, 1, 'admin/auth/about-us', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 07:47:50', '2019-03-12 07:47:50'),
(1058, 1, 'admin/auth/about-us/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 07:50:02', '2019-03-12 07:50:02'),
(1059, 1, 'admin/auth/about-us/create', 'GET', '127.0.0.1', '[]', '2019-03-12 07:50:24', '2019-03-12 07:50:24'),
(1060, 1, 'admin/auth/about-us', 'POST', '127.0.0.1', '{\"deskripsi\":\"<h3><strong>PT. Andall Hasa Prima <\\/strong>didirikan di Bandar Lampung pada tanggal 23 Agustus 1999 oleh 3 orang pendiri yaitu:<\\/h3>\\r\\n\\r\\n<ol>\\r\\n\\t<li>\\r\\n\\t<h3>Ir. Poedjoasmoro<\\/h3>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<h3>Zakaria Halim dan<\\/h3>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<h3>Ir. Achmad Lutfi.<\\/h3>\\r\\n\\t<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<h3>Bidang Usaha PT. Andall Hasa Prima mencakup; Bidang Perdagangan umum,&nbsp; pengembangan pertanian dan pengadaan industri. Aktifitas perseroan saat ini adalah sebagai distributor pestisida, pemegang merk pestisida, benih dan alat alat pertanian. PT.Andall Hasa Prima merupakan distributor pestisida dan importir alat-alat pertanian yang kian melebarkan sayap menjangkau berbagai pasar bidang pertanian di sejumlah daerah dan kota di Indonesia<\\/h3>\",\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\"}', '2019-03-12 07:53:19', '2019-03-12 07:53:19'),
(1061, 1, 'admin/auth/about-us', 'GET', '127.0.0.1', '[]', '2019-03-12 07:53:19', '2019-03-12 07:53:19'),
(1062, 1, 'admin/auth/about-us/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 07:53:28', '2019-03-12 07:53:28'),
(1063, 1, 'admin/auth/about-us/1', 'PUT', '127.0.0.1', '{\"deskripsi\":\"<h3><strong>PT. Andall Hasa Prima <\\/strong>didirikan di Bandar Lampung pada tanggal 23 Agustus 1999 oleh 3 orang pendiri yaitu:<\\/h3>\\r\\n\\r\\n<ol>\\r\\n\\t<li>\\r\\n\\t<p>Ir. Poedjoasmoro<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>Zakaria Halim dan<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>Ir. Achmad Lutfi.<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>Bidang Usaha PT. Andall Hasa Prima mencakup; Bidang Perdagangan umum,&nbsp; pengembangan pertanian dan pengadaan industri. Aktifitas perseroan saat ini adalah sebagai distributor pestisida, pemegang merk pestisida, benih dan alat alat pertanian. PT.Andall Hasa Prima merupakan distributor pestisida dan importir alat-alat pertanian yang kian melebarkan sayap menjangkau berbagai pasar bidang pertanian di sejumlah daerah dan kota di Indonesia<\\/p>\",\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/about-us\"}', '2019-03-12 07:53:52', '2019-03-12 07:53:52'),
(1064, 1, 'admin/auth/about-us', 'GET', '127.0.0.1', '[]', '2019-03-12 07:53:52', '2019-03-12 07:53:52'),
(1065, 1, 'admin/auth/about-us/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 07:53:58', '2019-03-12 07:53:58'),
(1066, 1, 'admin/auth/about-us/1', 'PUT', '127.0.0.1', '{\"deskripsi\":\"<h3><strong>PT. Andall Hasa Prima<\\/strong><\\/h3>\\r\\n\\r\\n<p>Didirikan di Bandar Lampung pada tanggal 23 Agustus 1999 oleh 3 orang pendiri yaitu:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>\\r\\n\\t<p>Ir. Poedjoasmoro<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>Zakaria Halim dan<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>Ir. Achmad Lutfi.<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>Bidang Usaha PT. Andall Hasa Prima mencakup; Bidang Perdagangan umum,&nbsp; pengembangan pertanian dan pengadaan industri. Aktifitas perseroan saat ini adalah sebagai distributor pestisida, pemegang merk pestisida, benih dan alat alat pertanian. PT.Andall Hasa Prima merupakan distributor pestisida dan importir alat-alat pertanian yang kian melebarkan sayap menjangkau berbagai pasar bidang pertanian di sejumlah daerah dan kota di Indonesia<\\/p>\",\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/about-us\"}', '2019-03-12 07:54:26', '2019-03-12 07:54:26'),
(1067, 1, 'admin/auth/about-us', 'GET', '127.0.0.1', '[]', '2019-03-12 07:54:26', '2019-03-12 07:54:26'),
(1068, 3, 'admin/auth/about-us', 'GET', '127.0.0.1', '[]', '2019-03-12 07:54:36', '2019-03-12 07:54:36'),
(1069, 3, 'admin/auth/about-us/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 07:54:47', '2019-03-12 07:54:47'),
(1070, 3, 'admin/auth/about-us/1', 'PUT', '127.0.0.1', '{\"deskripsi\":\"<h3><strong>PT. Andall Hasa Prima<\\/strong><\\/h3>\\r\\n\\r\\n<p>Didirikan di Bandar Lampung pada tanggal 23 Agustus 1999 oleh 3 orang pendiri yaitu:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>\\r\\n\\t<p>Ir. Poedjoasmoro<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>Zakaria Halim dan<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>Ir. Achmad Lutfi.<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>Bidang Usaha<em> <strong>PT. Andall Hasa Prima<\\/strong><\\/em> mencakup : Bidang Perdagangan Umum,&nbsp; Pengembangan Pertanian dan Pengadaan Industri.Aktifitas perseroan saat ini adalah sebagai distributor pestisida, pemegang merk pestisida, benih dan alat alat pertanian. <strong><em>PT.Andall Hasa Prima<\\/em><\\/strong> merupakan distributor pestisida dan importir alat-alat pertanian yang kian melebarkan sayap menjangkau berbagai pasar bidang pertanian di sejumlah daerah dan kota di Indonesia<\\/p>\",\"_token\":\"Wc7ULn0c8dPz5pURg2ykkImxFSnSEVKbUbma0KKA\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/about-us\"}', '2019-03-12 07:56:07', '2019-03-12 07:56:07'),
(1071, 3, 'admin/auth/about-us', 'GET', '127.0.0.1', '[]', '2019-03-12 07:56:07', '2019-03-12 07:56:07'),
(1072, 3, 'admin/auth/about-us/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 07:56:18', '2019-03-12 07:56:18'),
(1073, 3, 'admin/auth/about-us', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 07:56:37', '2019-03-12 07:56:37'),
(1074, 1, 'admin/auth/about-us', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 07:59:14', '2019-03-12 07:59:14'),
(1075, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 07:59:39', '2019-03-12 07:59:39'),
(1076, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 07:59:42', '2019-03-12 07:59:42'),
(1077, 1, 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Dashboard\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-03-12 07:59:56', '2019-03-12 07:59:56'),
(1078, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 07:59:56', '2019-03-12 07:59:56'),
(1079, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 08:00:00', '2019-03-12 08:00:00'),
(1080, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 08:00:10', '2019-03-12 08:00:10'),
(1081, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 08:21:46', '2019-03-12 08:21:46'),
(1082, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 08:21:50', '2019-03-12 08:21:50'),
(1083, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 08:21:51', '2019-03-12 08:21:51'),
(1084, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 08:21:53', '2019-03-12 08:21:53'),
(1085, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 08:21:55', '2019-03-12 08:21:55'),
(1086, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 08:21:59', '2019-03-12 08:21:59'),
(1087, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Benefit\",\"icon\":\"fa-line-chart\",\"uri\":\"auth\\/benefit\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\"}', '2019-03-12 08:24:08', '2019-03-12 08:24:08'),
(1088, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 08:24:09', '2019-03-12 08:24:09'),
(1089, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":6},{\\\"id\\\":7},{\\\"id\\\":5},{\\\"id\\\":4}]},{\\\"id\\\":12,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":3}]},{\\\"id\\\":13,\\\"children\\\":[{\\\"id\\\":20},{\\\"id\\\":16},{\\\"id\\\":15},{\\\"id\\\":19},{\\\"id\\\":18},{\\\"id\\\":14}]}]\"}', '2019-03-12 08:24:18', '2019-03-12 08:24:18'),
(1090, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 08:24:19', '2019-03-12 08:24:19'),
(1091, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 08:24:24', '2019-03-12 08:24:24'),
(1092, 1, 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 08:24:27', '2019-03-12 08:24:27'),
(1093, 1, 'admin/auth/permissions/7', 'PUT', '127.0.0.1', '{\"slug\":\"auth.setting\",\"name\":\"Auth Setting\",\"http_method\":[null],\"http_path\":\"\\/auth\\/benefit*\\r\\n\\/auth\\/faq*\\r\\n\\/auth\\/privacy-policy*\\r\\n\\/auth\\/about-us*\\r\\n\\/auth\\/term-of-use*\\r\\n\\/auth\\/visi-misi*\",\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2019-03-12 08:24:41', '2019-03-12 08:24:41'),
(1094, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-12 08:24:41', '2019-03-12 08:24:41'),
(1095, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-12 08:24:44', '2019-03-12 08:24:44'),
(1096, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 08:24:48', '2019-03-12 08:24:48'),
(1097, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-12 08:24:50', '2019-03-12 08:24:50'),
(1098, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-12 08:25:11', '2019-03-12 08:25:11'),
(1099, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 08:25:16', '2019-03-12 08:25:16'),
(1100, 1, 'admin/auth/benefit/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 08:25:19', '2019-03-12 08:25:19'),
(1101, 1, 'admin/auth/benefit', 'POST', '127.0.0.1', '{\"title\":\"Beralih ke Produk Kami\",\"benefit1\":\"<p>Teknik pertanian merupakan pendekatan teknik (engineering) secara luas dalam bidang pertanian yang sangat dibutuhkan untuk melakukan transformasi sumberdaya alam secara efisien dan efektif untuk pemanfaatannya oleh manusia. Dalam sistematika keilmuan, bidang teknik pertanian tetap bertumpu pada bidang ilmu teknik untuk memcahkan berbagai permasalahan di bidang pertanian.<\\/p>\\r\\n\\r\\n<p>Oleh karena itu teknologi pertanian sangat dibutuhkan demi mensejahterakan kehidupan petani dan untuk memenuhi kebutuhan akan produk hasil pertanian dalam skala yang besar.<\\/p>\",\"benefit2\":\"<p>Dampak positif penggunaan teknologi pertanian seperti pengolahan lahan yang lebih mudah karena tidak dikerakan lagi secara manual melainkan dengan mesin. Produk hasil pertanian yang awalnya mudah rusak bisa dia atasi dengan teknologi pengolahan hasil pertanian. Adanya teknologi juga bisa menjamin kegiatan pertanian yang lebih pasti tanpa adanya kekhawatiran akan gagal panen dan kerusakan pada lahan pertanian.<\\/p>\",\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/benefit\"}', '2019-03-12 08:27:12', '2019-03-12 08:27:12'),
(1102, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 08:27:12', '2019-03-12 08:27:12'),
(1103, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 08:31:20', '2019-03-12 08:31:20'),
(1104, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 08:44:22', '2019-03-12 08:44:22'),
(1105, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 08:48:50', '2019-03-12 08:48:50'),
(1106, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 08:49:05', '2019-03-12 08:49:05'),
(1107, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 08:49:18', '2019-03-12 08:49:18'),
(1108, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 08:51:37', '2019-03-12 08:51:37'),
(1109, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 08:52:25', '2019-03-12 08:52:25'),
(1110, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 08:53:42', '2019-03-12 08:53:42'),
(1111, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 08:53:59', '2019-03-12 08:53:59'),
(1112, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 08:54:10', '2019-03-12 08:54:10'),
(1113, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 08:54:25', '2019-03-12 08:54:25'),
(1114, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 08:54:33', '2019-03-12 08:54:33'),
(1115, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 08:54:41', '2019-03-12 08:54:41'),
(1116, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 08:54:51', '2019-03-12 08:54:51'),
(1117, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 08:55:51', '2019-03-12 08:55:51'),
(1118, 1, 'admin/auth/benefit/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 08:56:02', '2019-03-12 08:56:02'),
(1119, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 08:56:06', '2019-03-12 08:56:06'),
(1120, 1, 'admin/auth/benefit/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 08:56:08', '2019-03-12 08:56:08'),
(1121, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 08:56:11', '2019-03-12 08:56:11'),
(1122, 1, 'admin/auth/benefit/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 08:56:15', '2019-03-12 08:56:15'),
(1123, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 08:56:17', '2019-03-12 08:56:17'),
(1124, 1, 'admin/auth/benefit/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 08:56:44', '2019-03-12 08:56:44'),
(1125, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 08:56:44', '2019-03-12 08:56:44'),
(1126, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 08:56:59', '2019-03-12 08:56:59'),
(1127, 1, 'admin/auth/benefit/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 08:57:01', '2019-03-12 08:57:01'),
(1128, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 08:57:02', '2019-03-12 08:57:02'),
(1129, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 08:57:18', '2019-03-12 08:57:18'),
(1130, 1, 'admin/auth/benefit/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 08:57:21', '2019-03-12 08:57:21'),
(1131, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 08:57:28', '2019-03-12 08:57:28'),
(1132, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 08:58:04', '2019-03-12 08:58:04'),
(1133, 1, 'admin/auth/benefit/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 08:58:06', '2019-03-12 08:58:06'),
(1134, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 08:58:37', '2019-03-12 08:58:37'),
(1135, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 08:58:39', '2019-03-12 08:58:39'),
(1136, 1, 'admin/auth/benefit/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 08:58:42', '2019-03-12 08:58:42'),
(1137, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 08:58:57', '2019-03-12 08:58:57'),
(1138, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 09:01:47', '2019-03-12 09:01:47'),
(1139, 1, 'admin/auth/benefit/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 09:01:50', '2019-03-12 09:01:50'),
(1140, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 09:01:56', '2019-03-12 09:01:56'),
(1141, 1, 'admin/auth/benefit/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 09:01:58', '2019-03-12 09:01:58'),
(1142, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 09:01:59', '2019-03-12 09:01:59'),
(1143, 1, 'admin/auth/benefit/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 09:02:02', '2019-03-12 09:02:02'),
(1144, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 09:02:05', '2019-03-12 09:02:05'),
(1145, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 09:04:03', '2019-03-12 09:04:03'),
(1146, 1, 'admin/auth/benefit/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 09:04:05', '2019-03-12 09:04:05'),
(1147, 1, 'admin/auth/benefit/1', 'GET', '127.0.0.1', '[]', '2019-03-12 09:04:58', '2019-03-12 09:04:58'),
(1148, 1, 'admin/auth/benefit/1', 'GET', '127.0.0.1', '[]', '2019-03-12 09:05:25', '2019-03-12 09:05:25'),
(1149, 1, 'admin/auth/benefit/1', 'GET', '127.0.0.1', '[]', '2019-03-12 09:05:30', '2019-03-12 09:05:30'),
(1150, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 09:12:04', '2019-03-12 09:12:04'),
(1151, 3, 'admin/auth/about-us', 'GET', '127.0.0.1', '[]', '2019-03-12 09:12:13', '2019-03-12 09:12:13'),
(1152, 3, 'admin/auth/benefit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 09:12:16', '2019-03-12 09:12:16'),
(1153, 3, 'admin/auth/benefit/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 09:12:18', '2019-03-12 09:12:18'),
(1154, 3, 'admin/auth/benefit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 09:12:24', '2019-03-12 09:12:24'),
(1155, 3, 'admin/auth/benefit/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 09:12:30', '2019-03-12 09:12:30'),
(1156, 3, 'admin/auth/benefit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 09:12:39', '2019-03-12 09:12:39'),
(1157, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 09:12:46', '2019-03-12 09:12:46'),
(1158, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 09:12:48', '2019-03-12 09:12:48'),
(1159, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 09:12:53', '2019-03-12 09:12:53'),
(1160, 3, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 09:18:29', '2019-03-12 09:18:29'),
(1161, 3, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 09:18:42', '2019-03-12 09:18:42'),
(1162, 3, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 09:18:56', '2019-03-12 09:18:56'),
(1163, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-12 09:40:01', '2019-03-12 09:40:01'),
(1164, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-12 09:42:17', '2019-03-12 09:42:17'),
(1165, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-12 09:42:35', '2019-03-12 09:42:35'),
(1166, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-12 09:43:12', '2019-03-12 09:43:12'),
(1167, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-12 09:43:31', '2019-03-12 09:43:31'),
(1168, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 09:43:42', '2019-03-12 09:43:42'),
(1169, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 09:49:48', '2019-03-12 09:49:48'),
(1170, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 09:50:07', '2019-03-12 09:50:07'),
(1171, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 09:50:16', '2019-03-12 09:50:16'),
(1172, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 09:50:23', '2019-03-12 09:50:23'),
(1173, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 09:51:18', '2019-03-12 09:51:18'),
(1174, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 09:51:29', '2019-03-12 09:51:29'),
(1175, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 09:52:17', '2019-03-12 09:52:17'),
(1176, 3, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 09:52:26', '2019-03-12 09:52:26'),
(1177, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 09:59:59', '2019-03-12 09:59:59'),
(1178, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 10:00:39', '2019-03-12 10:00:39'),
(1179, 3, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 10:00:51', '2019-03-12 10:00:51'),
(1180, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 10:01:22', '2019-03-12 10:01:22'),
(1181, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 10:01:52', '2019-03-12 10:01:52'),
(1182, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 10:02:04', '2019-03-12 10:02:04'),
(1183, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 10:02:12', '2019-03-12 10:02:12'),
(1184, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 10:02:21', '2019-03-12 10:02:21'),
(1185, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 10:02:46', '2019-03-12 10:02:46'),
(1186, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 10:06:34', '2019-03-12 10:06:34'),
(1187, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 10:15:38', '2019-03-12 10:15:38'),
(1188, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 10:15:41', '2019-03-12 10:15:41'),
(1189, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 10:17:00', '2019-03-12 10:17:00'),
(1190, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 10:17:42', '2019-03-12 10:17:42'),
(1191, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 10:23:41', '2019-03-12 10:23:41'),
(1192, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 10:25:09', '2019-03-12 10:25:09'),
(1193, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 10:25:43', '2019-03-12 10:25:43'),
(1194, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 10:26:08', '2019-03-12 10:26:08'),
(1195, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 10:26:18', '2019-03-12 10:26:18'),
(1196, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 10:28:16', '2019-03-12 10:28:16'),
(1197, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 10:28:40', '2019-03-12 10:28:40'),
(1198, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 10:29:48', '2019-03-12 10:29:48'),
(1199, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 10:32:28', '2019-03-12 10:32:28'),
(1200, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 10:33:47', '2019-03-12 10:33:47'),
(1201, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 10:48:14', '2019-03-12 10:48:14'),
(1202, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 10:50:16', '2019-03-12 10:50:16'),
(1203, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 10:59:29', '2019-03-12 10:59:29'),
(1204, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 11:02:49', '2019-03-12 11:02:49'),
(1205, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 11:06:06', '2019-03-12 11:06:06'),
(1206, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:20:03', '2019-03-12 11:20:03'),
(1207, 1, 'admin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:20:50', '2019-03-12 11:20:50'),
(1208, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:20:53', '2019-03-12 11:20:53'),
(1209, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 11:23:07', '2019-03-12 11:23:07'),
(1210, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 11:23:52', '2019-03-12 11:23:52'),
(1211, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 11:23:59', '2019-03-12 11:23:59'),
(1212, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 11:25:05', '2019-03-12 11:25:05'),
(1213, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:25:45', '2019-03-12 11:25:45'),
(1214, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 11:26:06', '2019-03-12 11:26:06'),
(1215, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 11:28:11', '2019-03-12 11:28:11'),
(1216, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 11:28:34', '2019-03-12 11:28:34'),
(1217, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 11:28:45', '2019-03-12 11:28:45'),
(1218, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 11:29:00', '2019-03-12 11:29:00'),
(1219, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 11:30:58', '2019-03-12 11:30:58'),
(1220, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:31:50', '2019-03-12 11:31:50'),
(1221, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:31:52', '2019-03-12 11:31:52'),
(1222, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:31:57', '2019-03-12 11:31:57'),
(1223, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:31:58', '2019-03-12 11:31:58'),
(1224, 3, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:32:16', '2019-03-12 11:32:16'),
(1225, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:32:18', '2019-03-12 11:32:18'),
(1226, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:32:23', '2019-03-12 11:32:23'),
(1227, 3, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:32:37', '2019-03-12 11:32:37'),
(1228, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 11:32:50', '2019-03-12 11:32:50'),
(1229, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:41:11', '2019-03-12 11:41:11'),
(1230, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"Produk Kelompok\",\"icon\":\"fa-cubes\",\"uri\":\"auth\\/product-groups\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\"}', '2019-03-12 11:42:45', '2019-03-12 11:42:45'),
(1231, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 11:42:45', '2019-03-12 11:42:45'),
(1232, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:42:54', '2019-03-12 11:42:54'),
(1233, 1, 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:42:57', '2019-03-12 11:42:57'),
(1234, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:43:00', '2019-03-12 11:43:00'),
(1235, 1, 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:43:09', '2019-03-12 11:43:09'),
(1236, 1, 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"auth.masterdata\",\"name\":\"Auth Master Data\",\"http_method\":[null],\"http_path\":\"\\/auth\\/product-categorys*\\r\\n\\/auth\\/product-groups*\\r\\n\\/auth\\/users*\",\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2019-03-12 11:43:19', '2019-03-12 11:43:19'),
(1237, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-12 11:43:20', '2019-03-12 11:43:20'),
(1238, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:43:28', '2019-03-12 11:43:28'),
(1239, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":6},{\\\"id\\\":7},{\\\"id\\\":5},{\\\"id\\\":4}]},{\\\"id\\\":12,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":21},{\\\"id\\\":3}]},{\\\"id\\\":13,\\\"children\\\":[{\\\"id\\\":20},{\\\"id\\\":16},{\\\"id\\\":15},{\\\"id\\\":19},{\\\"id\\\":18},{\\\"id\\\":14}]}]\"}', '2019-03-12 11:43:34', '2019-03-12 11:43:34'),
(1240, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:43:35', '2019-03-12 11:43:35'),
(1241, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-12 11:43:36', '2019-03-12 11:43:36'),
(1242, 1, 'admin/auth/product-groups', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:43:40', '2019-03-12 11:43:40'),
(1243, 1, 'admin/auth/product-groups', 'GET', '127.0.0.1', '[]', '2019-03-12 11:45:55', '2019-03-12 11:45:55'),
(1244, 1, 'admin/auth/product-groups/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:45:59', '2019-03-12 11:45:59'),
(1245, 1, 'admin/auth/product-groups', 'POST', '127.0.0.1', '{\"group_name\":\"Produk Baru\",\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/product-groups\"}', '2019-03-12 11:46:11', '2019-03-12 11:46:11'),
(1246, 1, 'admin/auth/product-groups', 'GET', '127.0.0.1', '[]', '2019-03-12 11:46:11', '2019-03-12 11:46:11'),
(1247, 1, 'admin/auth/product-groups/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:46:13', '2019-03-12 11:46:13'),
(1248, 1, 'admin/auth/product-groups', 'POST', '127.0.0.1', '{\"group_name\":\"Produk Baru\",\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/product-groups\"}', '2019-03-12 11:46:18', '2019-03-12 11:46:18'),
(1249, 1, 'admin/auth/product-groups/create', 'GET', '127.0.0.1', '[]', '2019-03-12 11:46:18', '2019-03-12 11:46:18'),
(1250, 1, 'admin/auth/product-groups', 'POST', '127.0.0.1', '{\"group_name\":\"produk baru\",\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\"}', '2019-03-12 11:46:28', '2019-03-12 11:46:28'),
(1251, 1, 'admin/auth/product-groups/create', 'GET', '127.0.0.1', '[]', '2019-03-12 11:46:28', '2019-03-12 11:46:28'),
(1252, 1, 'admin/auth/product-groups', 'POST', '127.0.0.1', '{\"group_name\":\"Penjualan Terbaik\",\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\"}', '2019-03-12 11:46:57', '2019-03-12 11:46:57'),
(1253, 1, 'admin/auth/product-groups', 'GET', '127.0.0.1', '[]', '2019-03-12 11:46:58', '2019-03-12 11:46:58'),
(1254, 1, 'admin/auth/product-groups/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:47:03', '2019-03-12 11:47:03'),
(1255, 1, 'admin/auth/product-groups', 'POST', '127.0.0.1', '{\"group_name\":\"Produk Lainnya\",\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/product-groups\"}', '2019-03-12 11:47:11', '2019-03-12 11:47:11'),
(1256, 1, 'admin/auth/product-groups/create', 'GET', '127.0.0.1', '[]', '2019-03-12 11:47:11', '2019-03-12 11:47:11'),
(1257, 1, 'admin/auth/product-groups', 'POST', '127.0.0.1', '{\"group_name\":\"Lain lain\",\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\"}', '2019-03-12 11:47:20', '2019-03-12 11:47:20'),
(1258, 1, 'admin/auth/product-groups', 'GET', '127.0.0.1', '[]', '2019-03-12 11:47:20', '2019-03-12 11:47:20'),
(1259, 1, 'admin/auth/product-groups/4', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\"}', '2019-03-12 11:47:24', '2019-03-12 11:47:24'),
(1260, 1, 'admin/auth/product-groups', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:47:24', '2019-03-12 11:47:24'),
(1261, 1, 'admin/auth/product-groups/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:47:27', '2019-03-12 11:47:27'),
(1262, 1, 'admin/auth/product-groups/3', 'PUT', '127.0.0.1', '{\"group_name\":\"Produk Lainnya\",\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/product-groups\"}', '2019-03-12 11:47:29', '2019-03-12 11:47:29'),
(1263, 1, 'admin/auth/product-groups', 'GET', '127.0.0.1', '[]', '2019-03-12 11:47:29', '2019-03-12 11:47:29'),
(1264, 1, 'admin/auth/product-groups/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:47:31', '2019-03-12 11:47:31'),
(1265, 1, 'admin/auth/product-groups/3', 'PUT', '127.0.0.1', '{\"group_name\":\"Produk Baru\",\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/product-groups\"}', '2019-03-12 11:47:35', '2019-03-12 11:47:35'),
(1266, 1, 'admin/auth/product-groups', 'GET', '127.0.0.1', '[]', '2019-03-12 11:47:35', '2019-03-12 11:47:35'),
(1267, 1, 'admin/auth/product-groups/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:47:42', '2019-03-12 11:47:42'),
(1268, 1, 'admin/auth/product-groups/3', 'PUT', '127.0.0.1', '{\"group_name\":\"Produk Lainnya\",\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/product-groups\"}', '2019-03-12 11:47:49', '2019-03-12 11:47:49'),
(1269, 1, 'admin/auth/product-groups', 'GET', '127.0.0.1', '[]', '2019-03-12 11:47:49', '2019-03-12 11:47:49'),
(1270, 1, 'admin/auth/product-groups/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:49:07', '2019-03-12 11:49:07'),
(1271, 1, 'admin/auth/product-groups', 'POST', '127.0.0.1', '{\"group_name\":null,\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/product-groups\"}', '2019-03-12 11:49:08', '2019-03-12 11:49:08'),
(1272, 1, 'admin/auth/product-groups/create', 'GET', '127.0.0.1', '[]', '2019-03-12 11:49:09', '2019-03-12 11:49:09'),
(1273, 1, 'admin/auth/product-groups/create', 'GET', '127.0.0.1', '[]', '2019-03-12 11:49:16', '2019-03-12 11:49:16'),
(1274, 1, 'admin/auth/product-groups/create', 'GET', '127.0.0.1', '[]', '2019-03-12 11:50:08', '2019-03-12 11:50:08'),
(1275, 1, 'admin/auth/product-groups', 'POST', '127.0.0.1', '{\"group_name\":null,\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\"}', '2019-03-12 11:50:10', '2019-03-12 11:50:10'),
(1276, 1, 'admin/auth/product-groups/create', 'GET', '127.0.0.1', '[]', '2019-03-12 11:50:11', '2019-03-12 11:50:11'),
(1277, 1, 'admin/auth/product-groups/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:50:14', '2019-03-12 11:50:14'),
(1278, 1, 'admin/auth/product-groups/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:50:16', '2019-03-12 11:50:16'),
(1279, 1, 'admin/auth/product-groups', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:50:25', '2019-03-12 11:50:25'),
(1280, 1, 'admin/auth/product-groups/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:50:27', '2019-03-12 11:50:27'),
(1281, 1, 'admin/auth/product-groups', 'POST', '127.0.0.1', '{\"group_name\":\"Produk Baru\",\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/product-groups\"}', '2019-03-12 11:50:29', '2019-03-12 11:50:29'),
(1282, 1, 'admin/auth/product-groups/create', 'GET', '127.0.0.1', '[]', '2019-03-12 11:50:30', '2019-03-12 11:50:30'),
(1283, 1, 'admin/auth/product-groups/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:50:33', '2019-03-12 11:50:33'),
(1284, 1, 'admin/auth/product-groups', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:50:35', '2019-03-12 11:50:35'),
(1285, 1, 'admin/auth/product-groups/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:50:38', '2019-03-12 11:50:38'),
(1286, 1, 'admin/auth/product-groups/3', 'PUT', '127.0.0.1', '{\"group_name\":\"Produk Baru\",\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/product-groups\"}', '2019-03-12 11:50:42', '2019-03-12 11:50:42'),
(1287, 1, 'admin/auth/product-groups/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-12 11:50:42', '2019-03-12 11:50:42'),
(1288, 1, 'admin/auth/product-groups/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:51:12', '2019-03-12 11:51:12'),
(1289, 1, 'admin/auth/product-groups/3', 'PUT', '127.0.0.1', '{\"group_name\":\"Produk Baru\",\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"_method\":\"PUT\"}', '2019-03-12 11:51:18', '2019-03-12 11:51:18'),
(1290, 1, 'admin/auth/product-groups/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-12 11:51:19', '2019-03-12 11:51:19'),
(1291, 1, 'admin/auth/product-groups/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:51:42', '2019-03-12 11:51:42'),
(1292, 1, 'admin/auth/product-groups/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:51:45', '2019-03-12 11:51:45'),
(1293, 1, 'admin/auth/product-groups/3', 'PUT', '127.0.0.1', '{\"group_name\":\"Produk Baru\",\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/product-groups\\/3\"}', '2019-03-12 11:51:49', '2019-03-12 11:51:49'),
(1294, 1, 'admin/auth/product-groups/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-12 11:51:49', '2019-03-12 11:51:49'),
(1295, 1, 'admin/auth/product-groups/3', 'PUT', '127.0.0.1', '{\"group_name\":\"Produk Lainnya\",\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"_method\":\"PUT\"}', '2019-03-12 11:51:54', '2019-03-12 11:51:54'),
(1296, 1, 'admin/auth/product-groups/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-12 11:51:54', '2019-03-12 11:51:54'),
(1297, 1, 'admin/auth/product-groups/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-12 11:52:55', '2019-03-12 11:52:55'),
(1298, 1, 'admin/auth/product-groups/3', 'PUT', '127.0.0.1', '{\"group_name\":\"Produk Baru\",\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/product-groups\\/create\"}', '2019-03-12 11:52:59', '2019-03-12 11:52:59'),
(1299, 1, 'admin/auth/product-groups/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-12 11:53:00', '2019-03-12 11:53:00'),
(1300, 1, 'admin/auth/product-groups/3', 'PUT', '127.0.0.1', '{\"group_name\":\"Produk Lainnya\",\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"_method\":\"PUT\"}', '2019-03-12 11:53:05', '2019-03-12 11:53:05'),
(1301, 1, 'admin/auth/product-groups', 'GET', '127.0.0.1', '[]', '2019-03-12 11:53:05', '2019-03-12 11:53:05'),
(1302, 1, 'admin/auth/product-groups/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:53:17', '2019-03-12 11:53:17'),
(1303, 1, 'admin/auth/product-groups/3', 'PUT', '127.0.0.1', '{\"group_name\":\"Produk Lainnya\",\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/product-groups\"}', '2019-03-12 11:53:18', '2019-03-12 11:53:18'),
(1304, 1, 'admin/auth/product-groups', 'GET', '127.0.0.1', '[]', '2019-03-12 11:53:18', '2019-03-12 11:53:18'),
(1305, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-12 11:53:35', '2019-03-12 11:53:35'),
(1306, 3, 'admin/auth/product-groups', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:53:38', '2019-03-12 11:53:38'),
(1307, 3, 'admin/auth/product-groups/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:53:40', '2019-03-12 11:53:40'),
(1308, 3, 'admin/auth/product-groups', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:53:41', '2019-03-12 11:53:41'),
(1309, 1, 'admin/auth/product-groups', 'GET', '127.0.0.1', '[]', '2019-03-12 11:54:16', '2019-03-12 11:54:16'),
(1310, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:54:25', '2019-03-12 11:54:25'),
(1311, 1, 'admin/auth/about-us', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:59:16', '2019-03-12 11:59:16'),
(1312, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:59:19', '2019-03-12 11:59:19'),
(1313, 1, 'admin/auth/benefit/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:59:27', '2019-03-12 11:59:27'),
(1314, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:59:33', '2019-03-12 11:59:33'),
(1315, 1, 'admin/auth/benefit/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 11:59:37', '2019-03-12 11:59:37'),
(1316, 1, 'admin/auth/benefit', 'POST', '127.0.0.1', '{\"title\":\"asdasd\",\"benefit1\":\"<p><img alt=\\\"Facebook\\\" src=\\\"https:\\/\\/3.bp.blogspot.com\\/-YDGs-CdK0nM\\/VwIYgCYH_wI\\/AAAAAAAAEBg\\/vJPZs3PTh-8BmaMmVw0B7wSKwblggKgpw\\/s1600\\/facebook.png\\\" style=\\\"height:56px; width:100px\\\" \\/><\\/p>\\r\\n\\r\\n<p><strong>Facebook<\\/strong>&nbsp;adalah sebuah&nbsp;<a href=\\\"https:\\/\\/id.wikipedia.org\\/wiki\\/Layanan_jejaring_sosial\\\">layanan jejaring sosial<\\/a>&nbsp;berkantor pusat di&nbsp;<a href=\\\"https:\\/\\/id.wikipedia.org\\/wiki\\/Menlo_Park,_California\\\">Menlo Park, California<\\/a>,&nbsp;<a href=\\\"https:\\/\\/id.wikipedia.org\\/wiki\\/Amerika_Serikat\\\">Amerika Serikat<\\/a>&nbsp;yang diluncurkan pada bulan Februari 2004. Hingga September 2012, Facebook memiliki lebih dari&nbsp;<a href=\\\"https:\\/\\/id.wikipedia.org\\/w\\/index.php?title=Daftar_komunitas_virtual_dengan_lebih_dari_100_juta_pengguna&amp;action=edit&amp;redlink=1\\\">satu miliar<\\/a>&nbsp;pengguna aktif,<a href=\\\"https:\\/\\/id.wikipedia.org\\/wiki\\/Facebook#cite_note-8\\\">[8]<\\/a>&nbsp;lebih dari separuhnya menggunakan&nbsp;<a href=\\\"https:\\/\\/id.wikipedia.org\\/wiki\\/Telepon_genggam\\\">telepon genggam<\\/a>.<a href=\\\"https:\\/\\/id.wikipedia.org\\/wiki\\/Facebook#cite_note-9\\\">[9]<\\/a>&nbsp;Pengguna harus mendaftar sebelum dapat menggunakan situs ini. Setelah itu, pengguna dapat membuat&nbsp;<a href=\\\"https:\\/\\/id.wikipedia.org\\/w\\/index.php?title=Profil_pengguna&amp;action=edit&amp;redlink=1\\\">profil pribadi<\\/a>, menambahkan pengguna lain sebagai&nbsp;<a href=\\\"https:\\/\\/id.wikipedia.org\\/w\\/index.php?title=Berteman&amp;action=edit&amp;redlink=1\\\">teman<\\/a>, dan bertukar pesan, termasuk pemberitahuan otomatis ketika mereka memperbarui profilnya. Selain itu, pengguna dapat bergabung dengan grup pengguna dengan ketertarikan yang sama, diurutkan berdasarkan tempat kerja, sekolah atau perguruan tinggi, atau ciri khas lainnya, dan mengelompokkan teman-teman mereka ke dalam daftar seperti &quot;Rekan Kerja&quot; atau &quot;Teman Dekat&quot;.<\\/p>\",\"benefit2\":null,\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/benefit\"}', '2019-03-12 12:02:40', '2019-03-12 12:02:40'),
(1317, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-12 12:02:40', '2019-03-12 12:02:40');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1318, 1, 'admin/auth/benefit/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"DClsiiNkbyl2D9IRxG3ZdquKdWyS99jGptlty5UH\"}', '2019-03-12 12:02:50', '2019-03-12 12:02:50'),
(1319, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-12 12:02:50', '2019-03-12 12:02:50'),
(1320, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-13 02:24:01', '2019-03-13 02:24:01'),
(1321, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 02:24:12', '2019-03-13 02:24:12'),
(1322, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 02:31:21', '2019-03-13 02:31:21'),
(1323, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 02:31:24', '2019-03-13 02:31:24'),
(1324, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-13 07:34:17', '2019-03-13 07:34:17'),
(1325, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-13 09:06:44', '2019-03-13 09:06:44'),
(1326, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:17:51', '2019-03-13 09:17:51'),
(1327, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:17:53', '2019-03-13 09:17:53'),
(1328, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"CMS\",\"icon\":\"fa-wordpress\",\"uri\":null,\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"7nHuCW6ss94BsJy3TpqgQYCIBjXaXA7SIjr1dR1T\"}', '2019-03-13 09:23:47', '2019-03-13 09:23:47'),
(1329, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-13 09:23:48', '2019-03-13 09:23:48'),
(1330, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-13 09:24:14', '2019-03-13 09:24:14'),
(1331, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"22\",\"title\":\"Banners\",\"icon\":\"fa-image\",\"uri\":\"auth\\/banners\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"7nHuCW6ss94BsJy3TpqgQYCIBjXaXA7SIjr1dR1T\"}', '2019-03-13 09:26:13', '2019-03-13 09:26:13'),
(1332, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-13 09:26:13', '2019-03-13 09:26:13'),
(1333, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"22\",\"title\":\"Our Partner\",\"icon\":\"fa-user-secret\",\"uri\":\"auth\\/our-partner\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"7nHuCW6ss94BsJy3TpqgQYCIBjXaXA7SIjr1dR1T\"}', '2019-03-13 09:29:44', '2019-03-13 09:29:44'),
(1334, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-13 09:29:44', '2019-03-13 09:29:44'),
(1335, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"7nHuCW6ss94BsJy3TpqgQYCIBjXaXA7SIjr1dR1T\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":6},{\\\"id\\\":7},{\\\"id\\\":5},{\\\"id\\\":4}]},{\\\"id\\\":12,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":21},{\\\"id\\\":3}]},{\\\"id\\\":13,\\\"children\\\":[{\\\"id\\\":20},{\\\"id\\\":16},{\\\"id\\\":15},{\\\"id\\\":19},{\\\"id\\\":18},{\\\"id\\\":14}]},{\\\"id\\\":22,\\\"children\\\":[{\\\"id\\\":23},{\\\"id\\\":24}]}]\"}', '2019-03-13 09:29:54', '2019-03-13 09:29:54'),
(1336, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:29:55', '2019-03-13 09:29:55'),
(1337, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:29:58', '2019-03-13 09:29:58'),
(1338, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:30:11', '2019-03-13 09:30:11'),
(1339, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:30:19', '2019-03-13 09:30:19'),
(1340, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:30:35', '2019-03-13 09:30:35'),
(1341, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:30:53', '2019-03-13 09:30:53'),
(1342, 1, 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '[]', '2019-03-13 09:30:57', '2019-03-13 09:30:57'),
(1343, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:30:59', '2019-03-13 09:30:59'),
(1344, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"auth.cms\",\"name\":\"Auth CMS\",\"http_method\":[null],\"http_path\":\"\\/auth\\/banners*\\r\\n\\/auth\\/our-partner*\",\"_token\":\"7nHuCW6ss94BsJy3TpqgQYCIBjXaXA7SIjr1dR1T\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2019-03-13 09:32:08', '2019-03-13 09:32:08'),
(1345, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-13 09:32:09', '2019-03-13 09:32:09'),
(1346, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:32:15', '2019-03-13 09:32:15'),
(1347, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:32:18', '2019-03-13 09:32:18'),
(1348, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"owner\",\"name\":\"Owner\",\"permissions\":[\"2\",\"3\",\"4\",\"6\",\"7\",\"8\",null],\"_token\":\"7nHuCW6ss94BsJy3TpqgQYCIBjXaXA7SIjr1dR1T\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2019-03-13 09:32:24', '2019-03-13 09:32:24'),
(1349, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-03-13 09:32:25', '2019-03-13 09:32:25'),
(1350, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-03-13 09:33:27', '2019-03-13 09:33:27'),
(1351, 1, 'admin/auth/our-partner', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:33:39', '2019-03-13 09:33:39'),
(1352, 1, 'admin/auth/our-partner/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:33:41', '2019-03-13 09:33:41'),
(1353, 1, 'admin/auth/our-partner', 'POST', '127.0.0.1', '{\"partner\":\"Indohoechst\",\"_token\":\"7nHuCW6ss94BsJy3TpqgQYCIBjXaXA7SIjr1dR1T\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/our-partner\"}', '2019-03-13 09:34:41', '2019-03-13 09:34:41'),
(1354, 1, 'admin/auth/our-partner/create', 'GET', '127.0.0.1', '[]', '2019-03-13 09:34:41', '2019-03-13 09:34:41'),
(1355, 1, 'admin/auth/our-partner', 'POST', '127.0.0.1', '{\"partner\":\"PT. Sekawan Maju Bersama Prima\",\"_token\":\"7nHuCW6ss94BsJy3TpqgQYCIBjXaXA7SIjr1dR1T\"}', '2019-03-13 09:35:26', '2019-03-13 09:35:26'),
(1356, 1, 'admin/auth/our-partner', 'GET', '127.0.0.1', '[]', '2019-03-13 09:35:27', '2019-03-13 09:35:27'),
(1357, 1, 'admin/auth/our-partner/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:35:39', '2019-03-13 09:35:39'),
(1358, 1, 'admin/auth/our-partner', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:35:47', '2019-03-13 09:35:47'),
(1359, 1, 'admin/auth/our-partner', 'GET', '127.0.0.1', '[]', '2019-03-13 09:37:04', '2019-03-13 09:37:04'),
(1360, 1, 'admin/auth/our-partner', 'GET', '127.0.0.1', '[]', '2019-03-13 09:37:27', '2019-03-13 09:37:27'),
(1361, 1, 'admin/auth/our-partner', 'GET', '127.0.0.1', '[]', '2019-03-13 09:37:44', '2019-03-13 09:37:44'),
(1362, 1, 'admin/auth/our-partner/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:39:22', '2019-03-13 09:39:22'),
(1363, 1, 'admin/auth/our-partner', 'POST', '127.0.0.1', '{\"partner\":\"Danken Indonesia\",\"_token\":\"7nHuCW6ss94BsJy3TpqgQYCIBjXaXA7SIjr1dR1T\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/our-partner\"}', '2019-03-13 09:39:38', '2019-03-13 09:39:38'),
(1364, 1, 'admin/auth/our-partner/create', 'GET', '127.0.0.1', '[]', '2019-03-13 09:39:39', '2019-03-13 09:39:39'),
(1365, 1, 'admin/auth/our-partner', 'POST', '127.0.0.1', '{\"partner\":\"PT. Catur Agrodaya Mandiri\",\"_token\":\"7nHuCW6ss94BsJy3TpqgQYCIBjXaXA7SIjr1dR1T\"}', '2019-03-13 09:40:03', '2019-03-13 09:40:03'),
(1366, 1, 'admin/auth/our-partner', 'GET', '127.0.0.1', '[]', '2019-03-13 09:40:03', '2019-03-13 09:40:03'),
(1367, 1, 'admin/auth/our-partner/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:40:21', '2019-03-13 09:40:21'),
(1368, 1, 'admin/auth/our-partner', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:40:23', '2019-03-13 09:40:23'),
(1369, 1, 'admin/auth/our-partner/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:40:25', '2019-03-13 09:40:25'),
(1370, 1, 'admin/auth/our-partner', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:40:28', '2019-03-13 09:40:28'),
(1371, 1, 'admin/auth/our-partner/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:40:31', '2019-03-13 09:40:31'),
(1372, 1, 'admin/auth/our-partner', 'POST', '127.0.0.1', '{\"partner\":\"PT. Sinar General Industries\",\"_token\":\"7nHuCW6ss94BsJy3TpqgQYCIBjXaXA7SIjr1dR1T\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/our-partner\"}', '2019-03-13 09:40:56', '2019-03-13 09:40:56'),
(1373, 1, 'admin/auth/our-partner', 'GET', '127.0.0.1', '[]', '2019-03-13 09:40:56', '2019-03-13 09:40:56'),
(1374, 1, 'admin/auth/our-partner', 'GET', '127.0.0.1', '[]', '2019-03-13 09:48:15', '2019-03-13 09:48:15'),
(1375, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:48:17', '2019-03-13 09:48:17'),
(1376, 1, 'admin/auth/banners/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:48:23', '2019-03-13 09:48:23'),
(1377, 1, 'admin/auth/banners/create', 'GET', '127.0.0.1', '[]', '2019-03-13 09:48:38', '2019-03-13 09:48:38'),
(1378, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:48:41', '2019-03-13 09:48:41'),
(1379, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '[]', '2019-03-13 09:48:42', '2019-03-13 09:48:42'),
(1380, 1, 'admin/auth/banners/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:48:44', '2019-03-13 09:48:44'),
(1381, 1, 'admin/auth/banners/create', 'GET', '127.0.0.1', '[]', '2019-03-13 09:48:57', '2019-03-13 09:48:57'),
(1382, 1, 'admin/auth/banners', 'POST', '127.0.0.1', '{\"_token\":\"7nHuCW6ss94BsJy3TpqgQYCIBjXaXA7SIjr1dR1T\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/banners\"}', '2019-03-13 09:50:46', '2019-03-13 09:50:46'),
(1383, 1, 'admin/auth/banners/create', 'GET', '127.0.0.1', '[]', '2019-03-13 09:50:46', '2019-03-13 09:50:46'),
(1384, 1, 'admin/auth/banners/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:51:24', '2019-03-13 09:51:24'),
(1385, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:51:29', '2019-03-13 09:51:29'),
(1386, 1, 'admin/auth/banners/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"7nHuCW6ss94BsJy3TpqgQYCIBjXaXA7SIjr1dR1T\"}', '2019-03-13 09:51:33', '2019-03-13 09:51:33'),
(1387, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:51:33', '2019-03-13 09:51:33'),
(1388, 1, 'admin/auth/banners/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:52:05', '2019-03-13 09:52:05'),
(1389, 1, 'admin/auth/banners', 'POST', '127.0.0.1', '{\"_token\":\"7nHuCW6ss94BsJy3TpqgQYCIBjXaXA7SIjr1dR1T\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/banners\"}', '2019-03-13 09:52:34', '2019-03-13 09:52:34'),
(1390, 1, 'admin/auth/banners/create', 'GET', '127.0.0.1', '[]', '2019-03-13 09:52:35', '2019-03-13 09:52:35'),
(1391, 1, 'admin/auth/banners', 'POST', '127.0.0.1', '{\"_token\":\"7nHuCW6ss94BsJy3TpqgQYCIBjXaXA7SIjr1dR1T\",\"after-save\":\"2\"}', '2019-03-13 09:52:42', '2019-03-13 09:52:42'),
(1392, 1, 'admin/auth/banners/create', 'GET', '127.0.0.1', '[]', '2019-03-13 09:52:42', '2019-03-13 09:52:42'),
(1393, 1, 'admin/auth/banners', 'POST', '127.0.0.1', '{\"_token\":\"7nHuCW6ss94BsJy3TpqgQYCIBjXaXA7SIjr1dR1T\"}', '2019-03-13 09:52:47', '2019-03-13 09:52:47'),
(1394, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '[]', '2019-03-13 09:52:48', '2019-03-13 09:52:48'),
(1395, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '[]', '2019-03-13 09:57:39', '2019-03-13 09:57:39'),
(1396, 1, 'admin/auth/our-partner', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:57:49', '2019-03-13 09:57:49'),
(1397, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:57:51', '2019-03-13 09:57:51'),
(1398, 1, 'admin/auth/menu/24/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:57:54', '2019-03-13 09:57:54'),
(1399, 1, 'admin/auth/menu/24', 'PUT', '127.0.0.1', '{\"parent_id\":\"22\",\"title\":\"Our Partner\",\"icon\":\"fa-user-plus\",\"uri\":\"auth\\/our-partner\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"7nHuCW6ss94BsJy3TpqgQYCIBjXaXA7SIjr1dR1T\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-03-13 09:58:14', '2019-03-13 09:58:14'),
(1400, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-13 09:58:14', '2019-03-13 09:58:14'),
(1401, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:58:22', '2019-03-13 09:58:22'),
(1402, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-13 09:58:30', '2019-03-13 09:58:30'),
(1403, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:58:35', '2019-03-13 09:58:35'),
(1404, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"wL9DDJrO6v1hPJM9lu8MzEywm8HBnC9JJxFfpuuk\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":6},{\\\"id\\\":7},{\\\"id\\\":5},{\\\"id\\\":4}]},{\\\"id\\\":22,\\\"children\\\":[{\\\"id\\\":23},{\\\"id\\\":24}]},{\\\"id\\\":12,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":21},{\\\"id\\\":3}]},{\\\"id\\\":13,\\\"children\\\":[{\\\"id\\\":20},{\\\"id\\\":16},{\\\"id\\\":15},{\\\"id\\\":19},{\\\"id\\\":18},{\\\"id\\\":14}]}]\"}', '2019-03-13 09:58:59', '2019-03-13 09:58:59'),
(1405, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:59:00', '2019-03-13 09:59:00'),
(1406, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-13 09:59:02', '2019-03-13 09:59:02'),
(1407, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:59:18', '2019-03-13 09:59:18'),
(1408, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-13 09:59:29', '2019-03-13 09:59:29'),
(1409, 3, 'admin/auth/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:59:48', '2019-03-13 09:59:48'),
(1410, 3, 'admin/auth/banners/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:59:51', '2019-03-13 09:59:51'),
(1411, 3, 'admin/auth/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:59:53', '2019-03-13 09:59:53'),
(1412, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 09:59:57', '2019-03-13 09:59:57'),
(1413, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-13 10:00:31', '2019-03-13 10:00:31'),
(1414, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-13 10:09:19', '2019-03-13 10:09:19'),
(1415, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-13 10:19:18', '2019-03-13 10:19:18'),
(1416, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 10:19:34', '2019-03-13 10:19:34'),
(1417, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '[]', '2019-03-13 10:24:40', '2019-03-13 10:24:40'),
(1418, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '[]', '2019-03-13 10:25:03', '2019-03-13 10:25:03'),
(1419, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '[]', '2019-03-13 10:25:14', '2019-03-13 10:25:14'),
(1420, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '[]', '2019-03-13 10:29:58', '2019-03-13 10:29:58'),
(1421, 1, 'admin/auth/our-partner', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 10:30:09', '2019-03-13 10:30:09'),
(1422, 1, 'admin/auth/our-partner', 'GET', '127.0.0.1', '[]', '2019-03-13 11:16:50', '2019-03-13 11:16:50'),
(1423, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:17:05', '2019-03-13 11:17:05'),
(1424, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"22\",\"title\":\"News\",\"icon\":\"fa-newspaper-o\",\"uri\":\"auth\\/news\",\"roles\":[\"1\",\"2\",null],\"permission\":\"*\",\"_token\":\"C4KIqlvgTxPBvOOMp7u04hSseHq1rnkC69q8Auls\"}', '2019-03-13 11:20:29', '2019-03-13 11:20:29'),
(1425, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-13 11:20:29', '2019-03-13 11:20:29'),
(1426, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:20:43', '2019-03-13 11:20:43'),
(1427, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:21:00', '2019-03-13 11:21:00'),
(1428, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:21:16', '2019-03-13 11:21:16'),
(1429, 1, 'admin/auth/permissions/8', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:21:19', '2019-03-13 11:21:19'),
(1430, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:21:28', '2019-03-13 11:21:28'),
(1431, 1, 'admin/auth/permissions/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:21:38', '2019-03-13 11:21:38'),
(1432, 1, 'admin/auth/permissions/8', 'PUT', '127.0.0.1', '{\"slug\":\"auth.cms\",\"name\":\"Auth CMS\",\"http_method\":[null],\"http_path\":\"\\/auth\\/banners*\\r\\n\\/auth\\/our-partner*\\r\\n\\/auth\\/news*\",\"_token\":\"C4KIqlvgTxPBvOOMp7u04hSseHq1rnkC69q8Auls\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2019-03-13 11:22:11', '2019-03-13 11:22:11'),
(1433, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-13 11:22:12', '2019-03-13 11:22:12'),
(1434, 1, 'admin/auth/permissions/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:22:22', '2019-03-13 11:22:22'),
(1435, 1, 'admin/auth/permissions/8', 'PUT', '127.0.0.1', '{\"slug\":\"auth.cms\",\"name\":\"Auth CMS\",\"http_method\":[\"GET\",null],\"http_path\":\"\\/auth\\/banners*\\r\\n\\/auth\\/our-partner*\\r\\n\\/auth\\/news*\",\"_token\":\"C4KIqlvgTxPBvOOMp7u04hSseHq1rnkC69q8Auls\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2019-03-13 11:22:46', '2019-03-13 11:22:46'),
(1436, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-13 11:22:47', '2019-03-13 11:22:47'),
(1437, 1, 'admin/auth/permissions/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:22:53', '2019-03-13 11:22:53'),
(1438, 1, 'admin/auth/permissions/8', 'PUT', '127.0.0.1', '{\"slug\":\"auth.cms\",\"name\":\"Auth CMS\",\"http_method\":[null],\"http_path\":\"\\/auth\\/banners*\\r\\n\\/auth\\/our-partner*\\r\\n\\/auth\\/news*\",\"_token\":\"C4KIqlvgTxPBvOOMp7u04hSseHq1rnkC69q8Auls\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2019-03-13 11:22:56', '2019-03-13 11:22:56'),
(1439, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-13 11:22:57', '2019-03-13 11:22:57'),
(1440, 1, 'admin/auth/permissions/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:23:10', '2019-03-13 11:23:10'),
(1441, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:23:18', '2019-03-13 11:23:18'),
(1442, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:23:57', '2019-03-13 11:23:57'),
(1443, 1, 'admin/auth/news', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:24:22', '2019-03-13 11:24:22'),
(1444, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-13 11:24:23', '2019-03-13 11:24:23'),
(1445, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-13 11:25:00', '2019-03-13 11:25:00'),
(1446, 1, 'admin/auth/news', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:25:04', '2019-03-13 11:25:04'),
(1447, 1, 'admin/auth/news', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:25:13', '2019-03-13 11:25:13'),
(1448, 1, 'admin/auth/news/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:25:15', '2019-03-13 11:25:15'),
(1449, 1, 'admin/auth/news/create', 'GET', '127.0.0.1', '[]', '2019-03-13 11:28:00', '2019-03-13 11:28:00'),
(1450, 1, 'admin/auth/news', 'POST', '127.0.0.1', '{\"title\":\"Petani lampung hasilkan 50 ton merah\",\"description\":\"<p>Bandar Lampung (05 Feb 2019)&nbsp;Tidak banyak pemuda yang bercita-cita menjadi petani. Kelompok kecil ini, yang benar-benar menjadikan pertanian sebagai passion dan mata pencaharian utama, mulai muncul ke permukaan. Geliatnya sudah mulai terasa terutama di media-media sosial, tempat mereka berbagi ilmu pertanian berdasarkan trial dan error.<\\/p>\\r\\n\\r\\n<p>dilakukan untuk mendukung kebijakan di bidang pertanian. Teknologi dibuat untuk mendukung pertanian. Maka tidak heran jika hari ini mereka menguasai ekspor pertanian dunia. Perdesaan yang perekonomiannya bercorak pertanian tidak seharusnya berubah menjadi perkotaan yang bercorak industri dan jasa untuk menjadi daerah yang maju. Desa bisa menjadi pendukung yang baik bagi kota. Begitupun sebaliknya. Desa bisa tumbuh, berkembang, dan maju setara dengan kota tanpa harus beralih menjadi daerah yang bercorak industri dan jasa. Profesi petani bisa setara dengan profesi lainnya terutama di bidang industri dan jasa. Pertanian tidak bisa tergantikan. Negara tanpa sistem pertanian yang baik akan selalu tergantung kepada negara lain. Indonesia memiliki sumber daya alam yang melimpah. Tanahnya subur, tapi ironis pertaniannya malah tidak lebih baik dari negara tetangganya. Sudah banyak kata sindiran ditulis namun tujuh puluh tiga tahun merdeka pertanian tidak banyak berubah. Sistem mengolah, menanam, sampai memanen seperti berjalan di tempat. Jika di Amerika petani sudah menenteng laptop dan pegangannya GPS, di negara kita masih saja mengayunkan cangkul. Tidak heran jika profesi ini semakin hari semakin ditinggalkan. Kebanyakan orangtua petani pun tidak ingin anaknya nanti berprofesi seperti mereka. Bagaimana regenerasi petani bisa dilakukan jika fakta di lapangan seperti itu?<\\/p>\\r\\n\\r\\n<p>Mungkin tidak pernah mendengar ada anak yang bercita-cita menjadi petani. Umumnya mereka bercita-cita menjadi dokter, polisi, yang penting di kantor, tidak kotor. Kotor identik dengan keterbelakangan. Bahkan mahasiswa Jurusan Pertanian sekalipun ketika lulus memilih menjadi karyawan. Ini menjadi tanda paling sederhana bahwa menjadi petani bukan sesuatu yang diharapkan --bukan profesi prestisius, apalagi menjanjikan. Kebanyakan petani adalah mereka yang &quot;kalah&quot; dalam persaingan bursa kerja --terpaksa daripada tidak bekerja. Akhirnya kualitas pertanian pun tidak pernah berkembang, karena ilmu yang dipakai tidak pernah di-upgrade. Bertani hanya sekadar menyambung hidup. Tanpa ada keinginan untuk mencari dan melakukan cara lain yang lebih modern.<\\/p>\\r\\n\\r\\n<p>Data memperlihatkan bahwa jumlah petani setiap tahunnya selalu menurun sekitar 1,1 persen, tanpa ada penambahan yang signifikan di kelompok usia muda. Data BPS dari hasil survei pertanian antarsensus 2018 menunjukkan hampir 70 persen petani adalah kelompok umur 45 tahun ke atas. Berkurangnya jumlah petani juga diikuti dengan luas lahan pertanian yang semakin menyusut setiap tahunnya karena alih fungsi.<\\/p>\\r\\n\\r\\n<p>Regenerasi sudah lama tidak berjalan, ditambah label di masyarakat tentang petani membuat anak muda maju-mundur untuk menjadi petani. Seorang sarjana pertanian memiliki ilmu tentang bertani, tapi tidak memiliki mental untuk menjadi petani. Sebenarnya tidak menjadi masalah yang terlalu serius jumlah petani semakin menyusut jika yang tersisa adalah petani yang memiliki keinginan besar dalam bidang pertanian. Orang-orang yang memiliki passion dalam bidang mana pun akan selalu berupaya. Melalui orang-orang seperti ini pertanian akan maju. Tapi, seberapa banyak orang yang memiliki passion di pertanian?<\\/p>\\r\\n\\r\\n<p>Menjadi tugas kita semua sebagai masyarakat untuk turut mendukung pertanian agar lebih maju. Salah satu caranya dengan menghapus gambaran kurang baik tentang petani. Paling tidak, kita tidak menjadi bagian yang menjatuhkan ketika seorang sarjana yang kata orang sudah sekolah tinggi-tinggi memutuskan untuk menjadi petani. Walaupun sebenarnya gambaran ini muncul lebih dikarenakan ketiadaan bukti petani yang berhasil melalui ilmu dan teknologi. Petani kita masih identik dengan pendidikan rendah dan kemiskinan. Selama ini gambaran tentang petani adalah mereka dengan pendidikan rendah dan hidup di bawah garis kemiskinan. Walaupun tidak sedikit yang sukses dan menjadi kaya, tetapi kalangan ini pun belum menarik minat generasi muda. Lagi-lagi petani yang sukses ini tidak lebih baik secara pendidikan. Keberhasilan mereka identik dengan kerja keras menggunakan otot. Sehingga terlihat masih kurang keren di mata anak muda.<\\/p>\\r\\n\\r\\n<p>Tugas untuk menghapus gambaran kurang baik tentang petani akan lebih mudah jika petaninya itu sendiri yang berubah. Salah satunya melalui petani-petani muda yang saya sebutkan tadi. Mereka memiliki kemauan dan passion di bidang pertanian. Mereka menghargai profesi pertanian. Dengan begitu kita berharap beberapa tahun ke depan akan muncul petani-petani sukses yang tentengannya laptop, bukan pacul --yang cara kerjanya dengan penerapan teknologi. Sehingga akan menggugah minat generasi selanjutnya. Maka regenerasi petani diharapkan akan tumbuh.<\\/p>\\r\\n\\r\\n<p>Pemerintah juga memiliki peran yang tidak kalah penting. Desa yang maju akan memudahkan petaninya. Desa yang maju adalah desa yang memiliki infrastruktur dasar yang baik, seperti fasilitas jalan yang baik, air bersih yang memadai, dan listrik. Di sinilah pemerintah hadir untuk menyediakan infrastruktur dasar yang lengkap.<\\/p>\\r\\n\\r\\n<p>Dengan begitu kita berharap di masa yang akan datang akan banyak anak muda yang bercita-cita menjadi seorang petani. Menumbuhkan kembali minat pertanian yang sebenarnya sangat cocok di alam Indonesia. Menumbuhkan semangat berdikari yang sampai hari ini masih menjadi slogan manis pemecut semangat. Sehingga lirik lagu kondang era 1970-an milik Koes Plus, &quot;Orang bilang tanah kita tanah surga, tongkat kayu dan batu jadi tanaman,&quot; tidak sekadar ironi di tanah subur yang hasil pertaniannya sendiri harus impor.<\\/p>\",\"source\":\"- Admin Redaksi AHP\",\"_token\":\"C4KIqlvgTxPBvOOMp7u04hSseHq1rnkC69q8Auls\"}', '2019-03-13 11:30:09', '2019-03-13 11:30:09'),
(1451, 1, 'admin/auth/news/create', 'GET', '127.0.0.1', '[]', '2019-03-13 11:30:10', '2019-03-13 11:30:10'),
(1452, 1, 'admin/auth/news', 'POST', '127.0.0.1', '{\"title\":\"Petani lampung hasilkan 50 ton merah\",\"description\":\"<p>Bandar Lampung (05 Feb 2019)&nbsp;Tidak banyak pemuda yang bercita-cita menjadi petani. Kelompok kecil ini, yang benar-benar menjadikan pertanian sebagai passion dan mata pencaharian utama, mulai muncul ke permukaan. Geliatnya sudah mulai terasa terutama di media-media sosial, tempat mereka berbagi ilmu pertanian berdasarkan trial dan error.<\\/p>\\r\\n\\r\\n<p>dilakukan untuk mendukung kebijakan di bidang pertanian. Teknologi dibuat untuk mendukung pertanian. Maka tidak heran jika hari ini mereka menguasai ekspor pertanian dunia. Perdesaan yang perekonomiannya bercorak pertanian tidak seharusnya berubah menjadi perkotaan yang bercorak industri dan jasa untuk menjadi daerah yang maju. Desa bisa menjadi pendukung yang baik bagi kota. Begitupun sebaliknya. Desa bisa tumbuh, berkembang, dan maju setara dengan kota tanpa harus beralih menjadi daerah yang bercorak industri dan jasa. Profesi petani bisa setara dengan profesi lainnya terutama di bidang industri dan jasa. Pertanian tidak bisa tergantikan. Negara tanpa sistem pertanian yang baik akan selalu tergantung kepada negara lain. Indonesia memiliki sumber daya alam yang melimpah. Tanahnya subur, tapi ironis pertaniannya malah tidak lebih baik dari negara tetangganya. Sudah banyak kata sindiran ditulis namun tujuh puluh tiga tahun merdeka pertanian tidak banyak berubah. Sistem mengolah, menanam, sampai memanen seperti berjalan di tempat. Jika di Amerika petani sudah menenteng laptop dan pegangannya GPS, di negara kita masih saja mengayunkan cangkul. Tidak heran jika profesi ini semakin hari semakin ditinggalkan. Kebanyakan orangtua petani pun tidak ingin anaknya nanti berprofesi seperti mereka. Bagaimana regenerasi petani bisa dilakukan jika fakta di lapangan seperti itu?<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\",\"source\":\"- Admin Redaksi AHP\",\"_token\":\"C4KIqlvgTxPBvOOMp7u04hSseHq1rnkC69q8Auls\"}', '2019-03-13 11:31:26', '2019-03-13 11:31:26'),
(1453, 1, 'admin/auth/news/create', 'GET', '127.0.0.1', '[]', '2019-03-13 11:31:26', '2019-03-13 11:31:26'),
(1454, 1, 'admin/auth/news', 'POST', '127.0.0.1', '{\"title\":\"Petani lampung hasilkan 50 ton merah\",\"description\":\"<p>Bandar Lampung (05 Feb 2019)&nbsp;Tidak banyak pemuda yang bercita-cita menjadi petani. Kelompok kecil ini, yang benar-benar menjadikan pertanian sebagai passion dan mata pencaharian utama, mulai muncul ke permukaan. Geliatnya sudah mulai terasa terutama di media-media sosial, tempat mereka berbagi ilmu pertanian berdasarkan trial dan error.<\\/p>\\r\\n\\r\\n<p>dilakukan untuk mendukung kebijakan di bidang pertanian. Teknologi dibuat untuk mendukung pertanian. Maka tidak heran jika hari ini mereka menguasai ekspor pertanian dunia. Perdesaan yang perekonomiannya bercorak pertanian tidak seharusnya berubah menjadi perkotaan yang bercorak industri dan jasa untuk menjadi daerah yang maju. Desa bisa menjadi pendukung yang baik bagi kota. Begitupun sebaliknya. Desa bisa tumbuh, berkembang, dan maju setara dengan kota tanpa harus beralih menjadi daerah yang bercorak industri dan jasa. Profesi petani bisa setara dengan profesi lainnya terutama di bidang industri dan jasa. Pertanian tidak bisa tergantikan. Negara tanpa sistem pertanian yang baik akan selalu tergantung kepada negara lain. Indonesia memiliki sumber daya alam yang melimpah. Tanahnya subur, tapi ironis pertaniannya malah tidak lebih baik dari negara tetangganya. Sudah banyak kata sindiran ditulis namun tujuh puluh tiga tahun merdeka pertanian tidak banyak berubah. Sistem mengolah, menanam, sampai memanen seperti berjalan di tempat. Jika di Amerika petani sudah menenteng laptop dan pegangannya GPS, di negara kita masih saja mengayunkan cangkul. Tidak heran jika profesi ini semakin hari semakin ditinggalkan. Kebanyakan orangtua petani pun tidak ingin anaknya nanti berprofesi seperti mereka. Bagaimana regenerasi petani bisa dilakukan jika fakta di lapangan seperti itu?<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\",\"source\":\"- Admin Redaksi AHP\",\"_token\":\"C4KIqlvgTxPBvOOMp7u04hSseHq1rnkC69q8Auls\"}', '2019-03-13 11:31:50', '2019-03-13 11:31:50'),
(1455, 1, 'admin/auth/news/create', 'GET', '127.0.0.1', '[]', '2019-03-13 11:31:51', '2019-03-13 11:31:51'),
(1456, 1, 'admin/auth/news', 'POST', '127.0.0.1', '{\"title\":\"Petani lampung hasilkan 50 ton merah\",\"description\":\"<p>Bandar Lampung (05 Feb 2019)&nbsp;Tidak banyak pemuda yang bercita-cita menjadi petani. Kelompok kecil ini, yang benar-benar menjadikan pertanian sebagai passion dan mata pencaharian utama, mulai muncul ke permukaan. Geliatnya sudah mulai terasa terutama di media-media sosial, tempat mereka berbagi ilmu pertanian berdasarkan trial dan error.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\",\"source\":\"- Admin Redaksi AHP\",\"_token\":\"C4KIqlvgTxPBvOOMp7u04hSseHq1rnkC69q8Auls\"}', '2019-03-13 11:32:18', '2019-03-13 11:32:18'),
(1457, 1, 'admin/auth/news/create', 'GET', '127.0.0.1', '[]', '2019-03-13 11:32:18', '2019-03-13 11:32:18'),
(1458, 1, 'admin/auth/news/create', 'GET', '127.0.0.1', '[]', '2019-03-13 11:33:37', '2019-03-13 11:33:37'),
(1459, 1, 'admin/auth/news', 'POST', '127.0.0.1', '{\"title\":\"Petani lampung hasilkan 50 ton merah\",\"description\":\"<p>- Admin Redaksi AHP<\\/p>\",\"source\":\"- Admin Redaksi AHP\",\"_token\":\"C4KIqlvgTxPBvOOMp7u04hSseHq1rnkC69q8Auls\"}', '2019-03-13 11:34:11', '2019-03-13 11:34:11'),
(1460, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-13 11:34:12', '2019-03-13 11:34:12'),
(1461, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-13 11:35:25', '2019-03-13 11:35:25'),
(1462, 1, 'admin/auth/news/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:35:44', '2019-03-13 11:35:44'),
(1463, 1, 'admin/auth/news/1', 'PUT', '127.0.0.1', '{\"title\":\"Petani lampung hasilkan 50 ton merah\",\"description\":\"<p><img alt=\\\"\\\" src=\\\"http:\\/\\/localhost\\/ahp-html\\/assets\\/img\\/Team.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p>Bandar Lampung (05 Feb 2019)&nbsp;Tidak banyak pemuda yang bercita-cita menjadi petani. Kelompok kecil ini, yang benar-benar menjadikan pertanian sebagai passion dan mata pencaharian utama, mulai muncul ke permukaan. Geliatnya sudah mulai terasa terutama di media-media sosial, tempat mereka berbagi ilmu pertanian berdasarkan trial dan error.<\\/p>\\r\\n\\r\\n<p>dilakukan untuk mendukung kebijakan di bidang pertanian. Teknologi dibuat untuk mendukung pertanian. Maka tidak heran jika hari ini mereka menguasai ekspor pertanian dunia. Perdesaan yang perekonomiannya bercorak pertanian tidak seharusnya berubah menjadi perkotaan yang bercorak industri dan jasa untuk menjadi daerah yang maju. Desa bisa menjadi pendukung yang baik bagi kota. Begitupun sebaliknya. Desa bisa tumbuh, berkembang, dan maju setara dengan kota tanpa harus beralih menjadi daerah yang bercorak industri dan jasa. Profesi petani bisa setara dengan profesi lainnya terutama di bidang industri dan jasa. Pertanian tidak bisa tergantikan. Negara tanpa sistem pertanian yang baik akan selalu tergantung kepada negara lain. Indonesia memiliki sumber daya alam yang melimpah. Tanahnya subur, tapi ironis pertaniannya malah tidak lebih baik dari negara tetangganya. Sudah banyak kata sindiran ditulis namun tujuh puluh tiga tahun merdeka pertanian tidak banyak berubah. Sistem mengolah, menanam, sampai memanen seperti berjalan di tempat. Jika di Amerika petani sudah menenteng laptop dan pegangannya GPS, di negara kita masih saja mengayunkan cangkul. Tidak heran jika profesi ini semakin hari semakin ditinggalkan. Kebanyakan orangtua petani pun tidak ingin anaknya nanti berprofesi seperti mereka. Bagaimana regenerasi petani bisa dilakukan jika fakta di lapangan seperti itu?<\\/p>\\r\\n\\r\\n<p>Mungkin tidak pernah mendengar ada anak yang bercita-cita menjadi petani. Umumnya mereka bercita-cita menjadi dokter, polisi, yang penting di kantor, tidak kotor. Kotor identik dengan keterbelakangan. Bahkan mahasiswa Jurusan Pertanian sekalipun ketika lulus memilih menjadi karyawan. Ini menjadi tanda paling sederhana bahwa menjadi petani bukan sesuatu yang diharapkan --bukan profesi prestisius, apalagi menjanjikan. Kebanyakan petani adalah mereka yang &quot;kalah&quot; dalam persaingan bursa kerja --terpaksa daripada tidak bekerja. Akhirnya kualitas pertanian pun tidak pernah berkembang, karena ilmu yang dipakai tidak pernah di-upgrade. Bertani hanya sekadar menyambung hidup. Tanpa ada keinginan untuk mencari dan melakukan cara lain yang lebih modern.<\\/p>\\r\\n\\r\\n<p>Data memperlihatkan bahwa jumlah petani setiap tahunnya selalu menurun sekitar 1,1 persen, tanpa ada penambahan yang signifikan di kelompok usia muda. Data BPS dari hasil survei pertanian antarsensus 2018 menunjukkan hampir 70 persen petani adalah kelompok umur 45 tahun ke atas. Berkurangnya jumlah petani juga diikuti dengan luas lahan pertanian yang semakin menyusut setiap tahunnya karena alih fungsi.<\\/p>\\r\\n\\r\\n<p>Regenerasi sudah lama tidak berjalan, ditambah label di masyarakat tentang petani membuat anak muda maju-mundur untuk menjadi petani. Seorang sarjana pertanian memiliki ilmu tentang bertani, tapi tidak memiliki mental untuk menjadi petani. Sebenarnya tidak menjadi masalah yang terlalu serius jumlah petani semakin menyusut jika yang tersisa adalah petani yang memiliki keinginan besar dalam bidang pertanian. Orang-orang yang memiliki passion dalam bidang mana pun akan selalu berupaya. Melalui orang-orang seperti ini pertanian akan maju. Tapi, seberapa banyak orang yang memiliki passion di pertanian?<\\/p>\\r\\n\\r\\n<p>Menjadi tugas kita semua sebagai masyarakat untuk turut mendukung pertanian agar lebih maju. Salah satu caranya dengan menghapus gambaran kurang baik tentang petani. Paling tidak, kita tidak menjadi bagian yang menjatuhkan ketika seorang sarjana yang kata orang sudah sekolah tinggi-tinggi memutuskan untuk menjadi petani. Walaupun sebenarnya gambaran ini muncul lebih dikarenakan ketiadaan bukti petani yang berhasil melalui ilmu dan teknologi. Petani kita masih identik dengan pendidikan rendah dan kemiskinan. Selama ini gambaran tentang petani adalah mereka dengan pendidikan rendah dan hidup di bawah garis kemiskinan. Walaupun tidak sedikit yang sukses dan menjadi kaya, tetapi kalangan ini pun belum menarik minat generasi muda. Lagi-lagi petani yang sukses ini tidak lebih baik secara pendidikan. Keberhasilan mereka identik dengan kerja keras menggunakan otot. Sehingga terlihat masih kurang keren di mata anak muda.<\\/p>\\r\\n\\r\\n<p>Tugas untuk menghapus gambaran kurang baik tentang petani akan lebih mudah jika petaninya itu sendiri yang berubah. Salah satunya melalui petani-petani muda yang saya sebutkan tadi. Mereka memiliki kemauan dan passion di bidang pertanian. Mereka menghargai profesi pertanian. Dengan begitu kita berharap beberapa tahun ke depan akan muncul petani-petani sukses yang tentengannya laptop, bukan pacul --yang cara kerjanya dengan penerapan teknologi. Sehingga akan menggugah minat generasi selanjutnya. Maka regenerasi petani diharapkan akan tumbuh.<\\/p>\\r\\n\\r\\n<p>Pemerintah juga memiliki peran yang tidak kalah penting. Desa yang maju akan memudahkan petaninya. Desa yang maju adalah desa yang memiliki infrastruktur dasar yang baik, seperti fasilitas jalan yang baik, air bersih yang memadai, dan listrik. Di sinilah pemerintah hadir untuk menyediakan infrastruktur dasar yang lengkap.<\\/p>\\r\\n\\r\\n<p>Dengan begitu kita berharap di masa yang akan datang akan banyak anak muda yang bercita-cita menjadi seorang petani. Menumbuhkan kembali minat pertanian yang sebenarnya sangat cocok di alam Indonesia. Menumbuhkan semangat berdikari yang sampai hari ini masih menjadi slogan manis pemecut semangat. Sehingga lirik lagu kondang era 1970-an milik Koes Plus, &quot;Orang bilang tanah kita tanah surga, tongkat kayu dan batu jadi tanaman,&quot; tidak sekadar ironi di tanah subur yang hasil pertaniannya sendiri harus impor.<\\/p>\",\"source\":\"- Admin Redaksi AHP\",\"_token\":\"C4KIqlvgTxPBvOOMp7u04hSseHq1rnkC69q8Auls\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/news\"}', '2019-03-13 11:36:07', '2019-03-13 11:36:07'),
(1464, 1, 'admin/auth/news/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-13 11:36:07', '2019-03-13 11:36:07'),
(1465, 1, 'admin/auth/news/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:36:17', '2019-03-13 11:36:17'),
(1466, 1, 'admin/auth/news/1', 'PUT', '127.0.0.1', '{\"title\":\"Petani lampung hasilkan 50 ton merah\",\"description\":\"<p>Bandar Lampung (05 Feb 2019)&nbsp;Tidak banyak pemuda yang bercita-cita menjadi petani. Kelompok kecil ini, yang benar-benar menjadikan pertanian sebagai passion dan mata pencaharian utama, mulai muncul ke permukaan. Geliatnya sudah mulai terasa terutama di media-media sosial, tempat mereka berbagi ilmu pertanian berdasarkan trial dan error.<\\/p>\\r\\n\\r\\n<p>dilakukan untuk mendukung kebijakan di bidang pertanian. Teknologi dibuat untuk mendukung pertanian. Maka tidak heran jika hari ini mereka menguasai ekspor pertanian dunia. Perdesaan yang perekonomiannya bercorak pertanian tidak seharusnya berubah menjadi perkotaan yang bercorak industri dan jasa untuk menjadi daerah yang maju. Desa bisa menjadi pendukung yang baik bagi kota. Begitupun sebaliknya. Desa bisa tumbuh, berkembang, dan maju setara dengan kota tanpa harus beralih menjadi daerah yang bercorak industri dan jasa. Profesi petani bisa setara dengan profesi lainnya terutama di bidang industri dan jasa. Pertanian tidak bisa tergantikan. Negara tanpa sistem pertanian yang baik akan selalu tergantung kepada negara lain. Indonesia memiliki sumber daya alam yang melimpah. Tanahnya subur, tapi ironis pertaniannya malah tidak lebih baik dari negara tetangganya. Sudah banyak kata sindiran ditulis namun tujuh puluh tiga tahun merdeka pertanian tidak banyak berubah. Sistem mengolah, menanam, sampai memanen seperti berjalan di tempat. Jika di Amerika petani sudah menenteng laptop dan pegangannya GPS, di negara kita masih saja mengayunkan cangkul. Tidak heran jika profesi ini semakin hari semakin ditinggalkan. Kebanyakan orangtua petani pun tidak ingin anaknya nanti berprofesi seperti mereka. Bagaimana regenerasi petani bisa dilakukan jika fakta di lapangan seperti itu?<\\/p>\\r\\n\\r\\n<p>Mungkin tidak pernah mendengar ada anak yang bercita-cita menjadi petani. Umumnya mereka bercita-cita menjadi dokter, polisi, yang penting di kantor, tidak kotor. Kotor identik dengan keterbelakangan. Bahkan mahasiswa Jurusan Pertanian sekalipun ketika lulus memilih menjadi karyawan. Ini menjadi tanda paling sederhana bahwa menjadi petani bukan sesuatu yang diharapkan --bukan profesi prestisius, apalagi menjanjikan. Kebanyakan petani adalah mereka yang &quot;kalah&quot; dalam persaingan bursa kerja --terpaksa daripada tidak bekerja. Akhirnya kualitas pertanian pun tidak pernah berkembang, karena ilmu yang dipakai tidak pernah di-upgrade. Bertani hanya sekadar menyambung hidup. Tanpa ada keinginan untuk mencari dan melakukan cara lain yang lebih modern.<\\/p>\\r\\n\\r\\n<p>Data memperlihatkan bahwa jumlah petani setiap tahunnya selalu menurun sekitar 1,1 persen, tanpa ada penambahan yang signifikan di kelompok usia muda. Data BPS dari hasil survei pertanian antarsensus 2018 menunjukkan hampir 70 persen petani adalah kelompok umur 45 tahun ke atas. Berkurangnya jumlah petani juga diikuti dengan luas lahan pertanian yang semakin menyusut setiap tahunnya karena alih fungsi.<\\/p>\\r\\n\\r\\n<p>Regenerasi sudah lama tidak berjalan, ditambah label di masyarakat tentang petani membuat anak muda maju-mundur untuk menjadi petani. Seorang sarjana pertanian memiliki ilmu tentang bertani, tapi tidak memiliki mental untuk menjadi petani. Sebenarnya tidak menjadi masalah yang terlalu serius jumlah petani semakin menyusut jika yang tersisa adalah petani yang memiliki keinginan besar dalam bidang pertanian. Orang-orang yang memiliki passion dalam bidang mana pun akan selalu berupaya. Melalui orang-orang seperti ini pertanian akan maju. Tapi, seberapa banyak orang yang memiliki passion di pertanian?<\\/p>\\r\\n\\r\\n<p>Menjadi tugas kita semua sebagai masyarakat untuk turut mendukung pertanian agar lebih maju. Salah satu caranya dengan menghapus gambaran kurang baik tentang petani. Paling tidak, kita tidak menjadi bagian yang menjatuhkan ketika seorang sarjana yang kata orang sudah sekolah tinggi-tinggi memutuskan untuk menjadi petani. Walaupun sebenarnya gambaran ini muncul lebih dikarenakan ketiadaan bukti petani yang berhasil melalui ilmu dan teknologi. Petani kita masih identik dengan pendidikan rendah dan kemiskinan. Selama ini gambaran tentang petani adalah mereka dengan pendidikan rendah dan hidup di bawah garis kemiskinan. Walaupun tidak sedikit yang sukses dan menjadi kaya, tetapi kalangan ini pun belum menarik minat generasi muda. Lagi-lagi petani yang sukses ini tidak lebih baik secara pendidikan. Keberhasilan mereka identik dengan kerja keras menggunakan otot. Sehingga terlihat masih kurang keren di mata anak muda.<\\/p>\\r\\n\\r\\n<p>Tugas untuk menghapus gambaran kurang baik tentang petani akan lebih mudah jika petaninya itu sendiri yang berubah. Salah satunya melalui petani-petani muda yang saya sebutkan tadi. Mereka memiliki kemauan dan passion di bidang pertanian. Mereka menghargai profesi pertanian. Dengan begitu kita berharap beberapa tahun ke depan akan muncul petani-petani sukses yang tentengannya laptop, bukan pacul --yang cara kerjanya dengan penerapan teknologi. Sehingga akan menggugah minat generasi selanjutnya. Maka regenerasi petani diharapkan akan tumbuh.<\\/p>\\r\\n\\r\\n<p>Pemerintah juga memiliki peran yang tidak kalah penting. Desa yang maju akan memudahkan petaninya. Desa yang maju adalah desa yang memiliki infrastruktur dasar yang baik, seperti fasilitas jalan yang baik, air bersih yang memadai, dan listrik. Di sinilah pemerintah hadir untuk menyediakan infrastruktur dasar yang lengkap.<\\/p>\\r\\n\\r\\n<p>Dengan begitu kita berharap di masa yang akan datang akan banyak anak muda yang bercita-cita menjadi seorang petani. Menumbuhkan kembali minat pertanian yang sebenarnya sangat cocok di alam Indonesia. Menumbuhkan semangat berdikari yang sampai hari ini masih menjadi slogan manis pemecut semangat. Sehingga lirik lagu kondang era 1970-an milik Koes Plus, &quot;Orang bilang tanah kita tanah surga, tongkat kayu dan batu jadi tanaman,&quot; tidak sekadar ironi di tanah subur yang hasil pertaniannya sendiri harus impor.<\\/p>\",\"source\":\"- Admin Redaksi AHP\",\"_token\":\"C4KIqlvgTxPBvOOMp7u04hSseHq1rnkC69q8Auls\",\"_method\":\"PUT\"}', '2019-03-13 11:36:40', '2019-03-13 11:36:40'),
(1467, 1, 'admin/auth/news/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-13 11:36:41', '2019-03-13 11:36:41'),
(1468, 1, 'admin/auth/news/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:37:00', '2019-03-13 11:37:00'),
(1469, 1, 'admin/auth/news', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:37:06', '2019-03-13 11:37:06'),
(1470, 1, 'admin/auth/news/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:37:08', '2019-03-13 11:37:08'),
(1471, 1, 'admin/auth/news/1', 'PUT', '127.0.0.1', '{\"title\":\"Petani lampung hasilkan 50 ton merah\",\"description\":\"<p>- Admin Redaksi AHP<\\/p>\",\"source\":\"- Admin Redaksi AHP\",\"_token\":\"C4KIqlvgTxPBvOOMp7u04hSseHq1rnkC69q8Auls\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/news\"}', '2019-03-13 11:37:21', '2019-03-13 11:37:21'),
(1472, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-13 11:37:22', '2019-03-13 11:37:22'),
(1473, 1, 'admin/auth/news/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:37:26', '2019-03-13 11:37:26');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1474, 1, 'admin/auth/news/1', 'PUT', '127.0.0.1', '{\"title\":\"Petani lampung hasilkan 50 ton merah\",\"description\":\"Bandar Lampung (05 Feb 2019) Tidak banyak pemuda yang bercita-cita menjadi petani. Kelompok kecil ini, yang benar-benar menjadikan pertanian sebagai passion dan mata pencaharian utama, mulai muncul ke permukaan. Geliatnya sudah mulai terasa terutama di media-media sosial, tempat mereka berbagi ilmu pertanian berdasarkan trial dan error.\\r\\n\\r\\ndilakukan untuk mendukung kebijakan di bidang pertanian. Teknologi dibuat untuk mendukung pertanian. Maka tidak heran jika hari ini mereka menguasai ekspor pertanian dunia. Perdesaan yang perekonomiannya bercorak pertanian tidak seharusnya berubah menjadi perkotaan yang bercorak industri dan jasa untuk menjadi daerah yang maju. Desa bisa menjadi pendukung yang baik bagi kota. Begitupun sebaliknya. Desa bisa tumbuh, berkembang, dan maju setara dengan kota tanpa harus beralih menjadi daerah yang bercorak industri dan jasa. Profesi petani bisa setara dengan profesi lainnya terutama di bidang industri dan jasa. Pertanian tidak bisa tergantikan. Negara tanpa sistem pertanian yang baik akan selalu tergantung kepada negara lain. Indonesia memiliki sumber daya alam yang melimpah. Tanahnya subur, tapi ironis pertaniannya malah tidak lebih baik dari negara tetangganya. Sudah banyak kata sindiran ditulis namun tujuh puluh tiga tahun merdeka pertanian tidak banyak berubah. Sistem mengolah, menanam, sampai memanen seperti berjalan di tempat. Jika di Amerika petani sudah menenteng laptop dan pegangannya GPS, di negara kita masih saja mengayunkan cangkul. Tidak heran jika profesi ini semakin hari semakin ditinggalkan. Kebanyakan orangtua petani pun tidak ingin anaknya nanti berprofesi seperti mereka. Bagaimana regenerasi petani bisa dilakukan jika fakta di lapangan seperti itu?\\r\\n\\r\\nMungkin tidak pernah mendengar ada anak yang bercita-cita menjadi petani. Umumnya mereka bercita-cita menjadi dokter, polisi, yang penting di kantor, tidak kotor. Kotor identik dengan keterbelakangan. Bahkan mahasiswa Jurusan Pertanian sekalipun ketika lulus memilih menjadi karyawan. Ini menjadi tanda paling sederhana bahwa menjadi petani bukan sesuatu yang diharapkan --bukan profesi prestisius, apalagi menjanjikan. Kebanyakan petani adalah mereka yang \\\"kalah\\\" dalam persaingan bursa kerja --terpaksa daripada tidak bekerja. Akhirnya kualitas pertanian pun tidak pernah berkembang, karena ilmu yang dipakai tidak pernah di-upgrade. Bertani hanya sekadar menyambung hidup. Tanpa ada keinginan untuk mencari dan melakukan cara lain yang lebih modern.\\r\\n\\r\\nData memperlihatkan bahwa jumlah petani setiap tahunnya selalu menurun sekitar 1,1 persen, tanpa ada penambahan yang signifikan di kelompok usia muda. Data BPS dari hasil survei pertanian antarsensus 2018 menunjukkan hampir 70 persen petani adalah kelompok umur 45 tahun ke atas. Berkurangnya jumlah petani juga diikuti dengan luas lahan pertanian yang semakin menyusut setiap tahunnya karena alih fungsi.\\r\\n\\r\\nRegenerasi sudah lama tidak berjalan, ditambah label di masyarakat tentang petani membuat anak muda maju-mundur untuk menjadi petani. Seorang sarjana pertanian memiliki ilmu tentang bertani, tapi tidak memiliki mental untuk menjadi petani. Sebenarnya tidak menjadi masalah yang terlalu serius jumlah petani semakin menyusut jika yang tersisa adalah petani yang memiliki keinginan besar dalam bidang pertanian. Orang-orang yang memiliki passion dalam bidang mana pun akan selalu berupaya. Melalui orang-orang seperti ini pertanian akan maju. Tapi, seberapa banyak orang yang memiliki passion di pertanian?\\r\\n\\r\\nMenjadi tugas kita semua sebagai masyarakat untuk turut mendukung pertanian agar lebih maju. Salah satu caranya dengan menghapus gambaran kurang baik tentang petani. Paling tidak, kita tidak menjadi bagian yang menjatuhkan ketika seorang sarjana yang kata orang sudah sekolah tinggi-tinggi memutuskan untuk menjadi petani. Walaupun sebenarnya gambaran ini muncul lebih dikarenakan ketiadaan bukti petani yang berhasil melalui ilmu dan teknologi. Petani kita masih identik dengan pendidikan rendah dan kemiskinan. Selama ini gambaran tentang petani adalah mereka dengan pendidikan rendah dan hidup di bawah garis kemiskinan. Walaupun tidak sedikit yang sukses dan menjadi kaya, tetapi kalangan ini pun belum menarik minat generasi muda. Lagi-lagi petani yang sukses ini tidak lebih baik secara pendidikan. Keberhasilan mereka identik dengan kerja keras menggunakan otot. Sehingga terlihat masih kurang keren di mata anak muda.\\r\\n\\r\\nTugas untuk menghapus gambaran kurang baik tentang petani akan lebih mudah jika petaninya itu sendiri yang berubah. Salah satunya melalui petani-petani muda yang saya sebutkan tadi. Mereka memiliki kemauan dan passion di bidang pertanian. Mereka menghargai profesi pertanian. Dengan begitu kita berharap beberapa tahun ke depan akan muncul petani-petani sukses yang tentengannya laptop, bukan pacul --yang cara kerjanya dengan penerapan teknologi. Sehingga akan menggugah minat generasi selanjutnya. Maka regenerasi petani diharapkan akan tumbuh.\\r\\n\\r\\nPemerintah juga memiliki peran yang tidak kalah penting. Desa yang maju akan memudahkan petaninya. Desa yang maju adalah desa yang memiliki infrastruktur dasar yang baik, seperti fasilitas jalan yang baik, air bersih yang memadai, dan listrik. Di sinilah pemerintah hadir untuk menyediakan infrastruktur dasar yang lengkap.\\r\\n\\r\\nDengan begitu kita berharap di masa yang akan datang akan banyak anak muda yang bercita-cita menjadi seorang petani. Menumbuhkan kembali minat pertanian yang sebenarnya sangat cocok di alam Indonesia. Menumbuhkan semangat berdikari yang sampai hari ini masih menjadi slogan manis pemecut semangat. Sehingga lirik lagu kondang era 1970-an milik Koes Plus, \\\"Orang bilang tanah kita tanah surga, tongkat kayu dan batu jadi tanaman,\\\" tidak sekadar ironi di tanah subur yang hasil pertaniannya sendiri harus impor.\",\"source\":\"- Admin Redaksi AHP\",\"_token\":\"C4KIqlvgTxPBvOOMp7u04hSseHq1rnkC69q8Auls\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/news\"}', '2019-03-13 11:37:34', '2019-03-13 11:37:34'),
(1475, 1, 'admin/auth/news/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-13 11:37:35', '2019-03-13 11:37:35'),
(1476, 1, 'admin/auth/news/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:37:38', '2019-03-13 11:37:38'),
(1477, 1, 'admin/auth/news/1', 'PUT', '127.0.0.1', '{\"title\":\"Petani lampung hasilkan 50 ton merah\",\"description\":\"Bandar Lampung (05 Feb 2019) Tidak banyak pemuda yang bercita-cita menjadi petani. Kelompok kecil ini, yang benar-benar menjadikan pertanian sebagai passion dan mata pencaharian utama, mulai muncul ke permukaan. Geliatnya sudah mulai terasa terutama di media-media sosial, tempat mereka berbagi ilmu pertanian berdasarkan trial dan error.\\r\\n\\r\\ndilakukan untuk mendukung kebijakan di bidang pertanian. Teknologi dibuat untuk mendukung pertanian. Maka tidak heran jika hari ini mereka menguasai ekspor pertanian dunia. Perdesaan yang perekonomiannya bercorak pertanian tidak seharusnya berubah menjadi perkotaan yang bercorak industri dan jasa untuk menjadi daerah yang maju. Desa bisa menjadi pendukung yang baik bagi kota. Begitupun sebaliknya. Desa bisa tumbuh, berkembang, dan maju setara dengan kota tanpa harus beralih menjadi daerah yang bercorak industri dan jasa. Profesi petani bisa setara dengan profesi lainnya terutama di bidang industri dan jasa. Pertanian tidak bisa tergantikan. Negara tanpa sistem pertanian yang baik akan selalu tergantung kepada negara lain. Indonesia memiliki sumber daya alam yang melimpah. Tanahnya subur, tapi ironis pertaniannya malah tidak lebih baik dari negara tetangganya. Sudah banyak kata sindiran ditulis namun tujuh puluh tiga tahun merdeka pertanian tidak banyak berubah. Sistem mengolah, menanam, sampai memanen seperti berjalan di tempat. Jika di Amerika petani sudah menenteng laptop dan pegangannya GPS, di negara kita masih saja mengayunkan cangkul. Tidak heran jika profesi ini semakin hari semakin ditinggalkan. Kebanyakan orangtua petani pun tidak ingin anaknya nanti berprofesi seperti mereka. Bagaimana regenerasi petani bisa dilakukan jika fakta di lapangan seperti itu?\\r\\n\\r\\nMungkin tidak pernah mendengar ada anak yang bercita-cita menjadi petani. Umumnya mereka bercita-cita menjadi dokter, polisi, yang penting di kantor, tidak kotor. Kotor identik dengan keterbelakangan. Bahkan mahasiswa Jurusan Pertanian sekalipun ketika lulus memilih menjadi karyawan. Ini menjadi tanda paling sederhana bahwa menjadi petani bukan sesuatu yang diharapkan --bukan profesi prestisius, apalagi menjanjikan. Kebanyakan petani adalah mereka yang \\\"kalah\\\" dalam persaingan bursa kerja --terpaksa daripada tidak bekerja. Akhirnya kualitas pertanian pun tidak pernah berkembang, karena ilmu yang dipakai tidak pernah di-upgrade. Bertani hanya sekadar menyambung hidup. Tanpa ada keinginan untuk mencari dan melakukan cara lain yang lebih modern.\\r\\n\\r\\nData memperlihatkan bahwa jumlah petani setiap tahunnya selalu menurun sekitar 1,1 persen, tanpa ada penambahan yang signifikan di kelompok usia muda. Data BPS dari hasil survei pertanian antarsensus 2018 menunjukkan hampir 70 persen petani adalah kelompok umur 45 tahun ke atas. Berkurangnya jumlah petani juga diikuti dengan luas lahan pertanian yang semakin menyusut setiap tahunnya karena alih fungsi.\\r\\n\\r\\nRegenerasi sudah lama tidak berjalan, ditambah label di masyarakat tentang petani membuat anak muda maju-mundur untuk menjadi petani. Seorang sarjana pertanian memiliki ilmu tentang bertani, tapi tidak memiliki mental untuk menjadi petani. Sebenarnya tidak menjadi masalah yang terlalu serius jumlah petani semakin menyusut jika yang tersisa adalah petani yang memiliki keinginan besar dalam bidang pertanian. Orang-orang yang memiliki passion dalam bidang mana pun akan selalu berupaya. Melalui orang-orang seperti ini pertanian akan maju. Tapi, seberapa banyak orang yang memiliki passion di pertanian?\",\"source\":\"- Admin Redaksi AHP\",\"_token\":\"C4KIqlvgTxPBvOOMp7u04hSseHq1rnkC69q8Auls\",\"_method\":\"PUT\"}', '2019-03-13 11:37:56', '2019-03-13 11:37:56'),
(1478, 1, 'admin/auth/news/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-13 11:37:56', '2019-03-13 11:37:56'),
(1479, 1, 'admin/auth/news/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:38:13', '2019-03-13 11:38:13'),
(1480, 1, 'admin/auth/news', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:38:16', '2019-03-13 11:38:16'),
(1481, 1, 'admin/auth/news/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:38:19', '2019-03-13 11:38:19'),
(1482, 1, 'admin/auth/news/1', 'PUT', '127.0.0.1', '{\"title\":\"Petani lampung hasilkan 50 ton merah\",\"description\":\"<p>- Admin Redaksi AHP<\\/p>jjjj\",\"source\":\"- Admin Redaksi AHP\",\"_token\":\"C4KIqlvgTxPBvOOMp7u04hSseHq1rnkC69q8Auls\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/news\"}', '2019-03-13 11:38:27', '2019-03-13 11:38:27'),
(1483, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-13 11:38:27', '2019-03-13 11:38:27'),
(1484, 1, 'admin/auth/news/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:38:40', '2019-03-13 11:38:40'),
(1485, 1, 'admin/auth/news', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:39:31', '2019-03-13 11:39:31'),
(1486, 1, 'admin/auth/news/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:39:33', '2019-03-13 11:39:33'),
(1487, 1, 'admin/auth/news', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:39:36', '2019-03-13 11:39:36'),
(1488, 1, 'admin/auth/news/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:39:39', '2019-03-13 11:39:39'),
(1489, 1, 'admin/auth/news', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:39:42', '2019-03-13 11:39:42'),
(1490, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-13 11:40:29', '2019-03-13 11:40:29'),
(1491, 1, 'admin/auth/news/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:40:33', '2019-03-13 11:40:33'),
(1492, 1, 'admin/auth/news', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:40:37', '2019-03-13 11:40:37'),
(1493, 1, 'admin/auth/news/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:40:39', '2019-03-13 11:40:39'),
(1494, 1, 'admin/auth/news/1', 'PUT', '127.0.0.1', '{\"title\":\"Petani lampung hasilkan 50 ton merah\",\"description\":\"<p>Bandar Lampung (05 Feb 2019)&nbsp;Tidak banyak pemuda yang bercita-cita menjadi petani. Kelompok kecil ini, yang benar-benar menjadikan pertanian sebagai passion dan mata pencaharian utama, mulai muncul ke permukaan. Geliatnya sudah mulai terasa terutama di media-media sosial, tempat mereka berbagi ilmu pertanian berdasarkan trial dan error.<\\/p>\\r\\n\\r\\n<p>dilakukan untuk mendukung kebijakan di bidang pertanian. Teknologi dibuat untuk mendukung pertanian. Maka tidak heran jika hari ini mereka menguasai ekspor pertanian dunia. Perdesaan yang perekonomiannya bercorak pertanian tidak seharusnya berubah menjadi perkotaan yang bercorak industri dan jasa untuk menjadi daerah yang maju. Desa bisa menjadi pendukung yang baik bagi kota. Begitupun sebaliknya. Desa bisa tumbuh, berkembang, dan maju setara dengan kota tanpa harus beralih menjadi daerah yang bercorak industri dan jasa. Profesi petani bisa setara dengan profesi lainnya terutama di bidang industri dan jasa. Pertanian tidak bisa tergantikan. Negara tanpa sistem pertanian yang baik akan selalu tergantung kepada negara lain. Indonesia memiliki sumber daya alam yang melimpah. Tanahnya subur, tapi ironis pertaniannya malah tidak lebih baik dari negara tetangganya. Sudah banyak kata sindiran ditulis namun tujuh puluh tiga tahun merdeka pertanian tidak banyak berubah. Sistem mengolah, menanam, sampai memanen seperti berjalan di tempat. Jika di Amerika petani sudah menenteng laptop dan pegangannya GPS, di negara kita masih saja mengayunkan cangkul. Tidak heran jika profesi ini semakin hari semakin ditinggalkan. Kebanyakan orangtua petani pun tidak ingin anaknya nanti berprofesi seperti mereka. Bagaimana regenerasi petani bisa dilakukan jika fakta di lapangan seperti itu?<\\/p>\\r\\n\\r\\n<p>Mungkin tidak pernah mendengar ada anak yang bercita-cita menjadi petani. Umumnya mereka bercita-cita menjadi dokter, polisi, yang penting di kantor, tidak kotor. Kotor identik dengan keterbelakangan. Bahkan mahasiswa Jurusan Pertanian sekalipun ketika lulus memilih menjadi karyawan. Ini menjadi tanda paling sederhana bahwa menjadi petani bukan sesuatu yang diharapkan --bukan profesi prestisius, apalagi menjanjikan. Kebanyakan petani adalah mereka yang &quot;kalah&quot; dalam persaingan bursa kerja --terpaksa daripada tidak bekerja. Akhirnya kualitas pertanian pun tidak pernah berkembang, karena ilmu yang dipakai tidak pernah di-upgrade. Bertani hanya sekadar menyambung hidup. Tanpa ada keinginan untuk mencari dan melakukan cara lain yang lebih modern.<\\/p>\\r\\n\\r\\n<p>Data memperlihatkan bahwa jumlah petani setiap tahunnya selalu menurun sekitar 1,1 persen, tanpa ada penambahan yang signifikan di kelompok usia muda. Data BPS dari hasil survei pertanian antarsensus 2018 menunjukkan hampir 70 persen petani adalah kelompok umur 45 tahun ke atas. Berkurangnya jumlah petani juga diikuti dengan luas lahan pertanian yang semakin menyusut setiap tahunnya karena alih fungsi.<\\/p>\\r\\n\\r\\n<p>Regenerasi sudah lama tidak berjalan, ditambah label di masyarakat tentang petani membuat anak muda maju-mundur untuk menjadi petani. Seorang sarjana pertanian memiliki ilmu tentang bertani, tapi tidak memiliki mental untuk menjadi petani. Sebenarnya tidak menjadi masalah yang terlalu serius jumlah petani semakin menyusut jika yang tersisa adalah petani yang memiliki keinginan besar dalam bidang pertanian. Orang-orang yang memiliki passion dalam bidang mana pun akan selalu berupaya. Melalui orang-orang seperti ini pertanian akan maju. Tapi, seberapa banyak orang yang memiliki passion di pertanian?<\\/p>\",\"source\":\"- Admin Redaksi AHP\",\"_token\":\"C4KIqlvgTxPBvOOMp7u04hSseHq1rnkC69q8Auls\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/news\"}', '2019-03-13 11:40:55', '2019-03-13 11:40:55'),
(1495, 1, 'admin/auth/news/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-13 11:40:56', '2019-03-13 11:40:56'),
(1496, 1, 'admin/auth/news/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-13 11:42:21', '2019-03-13 11:42:21'),
(1497, 1, 'admin/auth/news/1', 'PUT', '127.0.0.1', '{\"title\":\"Petani lampung hasilkan 50 ton merah\",\"description\":\"<p>Bandar Lampung (05 Feb 2019)&nbsp;Tidak banyak pemuda yang bercita-cita menjadi petani. Kelompok kecil ini, yang benar-benar menjadikan pertanian sebagai passion dan mata pencaharian utama, mulai muncul ke permukaan. Geliatnya sudah mulai terasa terutama di media-media sosial, tempat mereka berbagi ilmu pertanian berdasarkan trial dan error.<\\/p>\\r\\n\\r\\n<p>dilakukan untuk mendukung kebijakan di bidang pertanian. Teknologi dibuat untuk mendukung pertanian. Maka tidak heran jika hari ini mereka menguasai ekspor pertanian dunia. Perdesaan yang perekonomiannya bercorak pertanian tidak seharusnya berubah menjadi perkotaan yang bercorak industri dan jasa untuk menjadi daerah yang maju. Desa bisa menjadi pendukung yang baik bagi kota. Begitupun sebaliknya. Desa bisa tumbuh, berkembang, dan maju setara dengan kota tanpa harus beralih menjadi daerah yang bercorak industri dan jasa. Profesi petani bisa setara dengan profesi lainnya terutama di bidang industri dan jasa. Pertanian tidak bisa tergantikan. Negara tanpa sistem pertanian yang baik akan selalu tergantung kepada negara lain. Indonesia memiliki sumber daya alam yang melimpah. Tanahnya subur, tapi ironis pertaniannya malah tidak lebih baik dari negara tetangganya. Sudah banyak kata sindiran ditulis namun tujuh puluh tiga tahun merdeka pertanian tidak banyak berubah. Sistem mengolah, menanam, sampai memanen seperti berjalan di tempat. Jika di Amerika petani sudah menenteng laptop dan pegangannya GPS, di negara kita masih saja mengayunkan cangkul. Tidak heran jika profesi ini semakin hari semakin ditinggalkan. Kebanyakan orangtua petani pun tidak ingin anaknya nanti berprofesi seperti mereka. Bagaimana regenerasi petani bisa dilakukan jika fakta di lapangan seperti itu?<\\/p>\\r\\n\\r\\n<p>Mungkin tidak pernah mendengar ada anak yang bercita-cita menjadi petani. Umumnya mereka bercita-cita menjadi dokter, polisi, yang penting di kantor, tidak kotor. Kotor identik dengan keterbelakangan. Bahkan mahasiswa Jurusan Pertanian sekalipun ketika lulus memilih menjadi karyawan. Ini menjadi tanda paling sederhana bahwa menjadi petani bukan sesuatu yang diharapkan --bukan profesi prestisius, apalagi menjanjikan. Kebanyakan petani adalah mereka yang &quot;kalah&quot; dalam persaingan bursa kerja --terpaksa daripada tidak bekerja. Akhirnya kualitas pertanian pun tidak pernah berkembang, karena ilmu yang dipakai tidak pernah di-upgrade. Bertani hanya sekadar menyambung hidup. Tanpa ada keinginan untuk mencari dan melakukan cara lain yang lebih modern.<\\/p>\\r\\n\\r\\n<p>Data memperlihatkan bahwa jumlah petani setiap tahunnya selalu menurun sekitar 1,1 persen, tanpa ada penambahan yang signifikan di kelompok usia muda. Data BPS dari hasil survei pertanian antarsensus 2018 menunjukkan hampir 70 persen petani adalah kelompok umur 45 tahun ke atas. Berkurangnya jumlah petani juga diikuti dengan luas lahan pertanian yang semakin menyusut setiap tahunnya karena alih fungsi.<\\/p>\\r\\n\\r\\n<p>Regenerasi sudah lama tidak berjalan, ditambah label di masyarakat tentang petani membuat anak muda maju-mundur untuk menjadi petani. Seorang sarjana pertanian memiliki ilmu tentang bertani, tapi tidak memiliki mental untuk menjadi petani. Sebenarnya tidak menjadi masalah yang terlalu serius jumlah petani semakin menyusut jika yang tersisa adalah petani yang memiliki keinginan besar dalam bidang pertanian. Orang-orang yang memiliki passion dalam bidang mana pun akan selalu berupaya. Melalui orang-orang seperti ini pertanian akan maju. Tapi, seberapa banyak orang yang memiliki passion di pertanian?<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\",\"source\":\"- Admin Redaksi AHP\",\"_token\":\"C4KIqlvgTxPBvOOMp7u04hSseHq1rnkC69q8Auls\",\"_method\":\"PUT\"}', '2019-03-13 11:42:38', '2019-03-13 11:42:38'),
(1498, 1, 'admin/auth/news/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-13 11:42:39', '2019-03-13 11:42:39'),
(1499, 1, 'admin/auth/news/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-13 11:43:02', '2019-03-13 11:43:02'),
(1500, 1, 'admin/auth/news/1', 'PUT', '127.0.0.1', '{\"title\":\"Petani lampung hasilkan 50 ton merah\",\"description\":\"<p>Bandar Lampung (05 Feb 2019)&nbsp;Tidak banyak pemuda yang bercita-cita menjadi petani. Kelompok kecil ini, yang benar-benar menjadikan pertanian sebagai passion dan mata pencaharian utama, mulai muncul ke permukaan. Geliatnya sudah mulai terasa terutama di media-media sosial, tempat mereka berbagi ilmu pertanian berdasarkan trial dan error.<\\/p>\\r\\n\\r\\n<p>dilakukan untuk mendukung kebijakan di bidang pertanian. Teknologi dibuat untuk mendukung pertanian. Maka tidak heran jika hari ini mereka menguasai ekspor pertanian dunia. Perdesaan yang perekonomiannya bercorak pertanian tidak seharusnya berubah menjadi perkotaan yang bercorak industri dan jasa untuk menjadi daerah yang maju. Desa bisa menjadi pendukung yang baik bagi kota. Begitupun sebaliknya. Desa bisa tumbuh, berkembang, dan maju setara dengan kota tanpa harus beralih menjadi daerah yang bercorak industri dan jasa. Profesi petani bisa setara dengan profesi lainnya terutama di bidang industri dan jasa. Pertanian tidak bisa tergantikan. Negara tanpa sistem pertanian yang baik akan selalu tergantung kepada negara lain. Indonesia memiliki sumber daya alam yang melimpah. Tanahnya subur, tapi ironis pertaniannya malah tidak lebih baik dari negara tetangganya. Sudah banyak kata sindiran ditulis namun tujuh puluh tiga tahun merdeka pertanian tidak banyak berubah. Sistem mengolah, menanam, sampai memanen seperti berjalan di tempat. Jika di Amerika petani sudah menenteng laptop dan pegangannya GPS, di negara kita masih saja mengayunkan cangkul. Tidak heran jika profesi ini semakin hari semakin ditinggalkan. Kebanyakan orangtua petani pun tidak ingin anaknya nanti berprofesi seperti mereka. Bagaimana regenerasi petani bisa dilakukan jika fakta di lapangan seperti itu?<\\/p>\\r\\n\\r\\n<p>Mungkin tidak pernah mendengar ada anak yang bercita-cita menjadi petani. Umumnya mereka bercita-cita menjadi dokter, polisi, yang penting di kantor, tidak kotor. Kotor identik dengan keterbelakangan. Bahkan mahasiswa Jurusan Pertanian sekalipun ketika lulus memilih menjadi karyawan. Ini menjadi tanda paling sederhana bahwa menjadi petani bukan sesuatu yang diharapkan --bukan profesi prestisius, apalagi menjanjikan. Kebanyakan petani adalah mereka yang &quot;kalah&quot; dalam persaingan bursa kerja --terpaksa daripada tidak bekerja. Akhirnya kualitas pertanian pun tidak pernah berkembang, karena ilmu yang dipakai tidak pernah di-upgrade. Bertani hanya sekadar menyambung hidup. Tanpa ada keinginan untuk mencari dan melakukan cara lain yang lebih modern.<\\/p>\\r\\n\\r\\n<p>Data memperlihatkan bahwa jumlah petani setiap tahunnya selalu menurun sekitar 1,1 persen, tanpa ada penambahan yang signifikan di kelompok usia muda. Data BPS dari hasil survei pertanian antarsensus 2018 menunjukkan hampir 70 persen petani adalah kelompok umur 45 tahun ke atas. Berkurangnya jumlah petani juga diikuti dengan luas lahan pertanian yang semakin menyusut setiap tahunnya karena alih fungsi.<\\/p>\\r\\n\\r\\n<p>Regenerasi sudah lama tidak berjalan, ditambah label di masyarakat tentang petani membuat anak muda maju-mundur untuk menjadi petani. Seorang sarjana pertanian memiliki ilmu tentang bertani, tapi tidak memiliki mental untuk menjadi petani. Sebenarnya tidak menjadi masalah yang terlalu serius jumlah petani semakin menyusut jika yang tersisa adalah petani yang memiliki keinginan besar dalam bidang pertanian. Orang-orang yang memiliki passion dalam bidang mana pun akan selalu berupaya. Melalui orang-orang seperti ini pertanian akan maju. Tapi, seberapa banyak orang yang memiliki passion di pertanian?<\\/p>\",\"source\":\"- Admin Redaksi AHP\",\"_token\":\"C4KIqlvgTxPBvOOMp7u04hSseHq1rnkC69q8Auls\",\"_method\":\"PUT\"}', '2019-03-13 11:43:11', '2019-03-13 11:43:11'),
(1501, 1, 'admin/auth/news/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-13 11:43:11', '2019-03-13 11:43:11'),
(1502, 1, 'admin/auth/news/1', 'PUT', '127.0.0.1', '{\"title\":\"Petani lampung hasilkan 50 ton merah\",\"description\":\"<p>Bandar Lampung (05 Feb 2019)&nbsp;Tidak banyak pemuda yang bercita-cita menjadi petani. Kelompok kecil ini, yang benar-benar menjadikan pertanian sebagai passion dan mata pencaharian utama, mulai muncul ke permukaan. Geliatnya sudah mulai terasa terutama di media-media sosial, tempat mereka berbagi ilmu pertanian berdasarkan trial dan error.<\\/p>\\r\\n\\r\\n<p>dilakukan untuk mendukung kebijakan di bidang pertanian. Teknologi dibuat untuk mendukung pertanian. Maka tidak heran jika hari ini mereka menguasai ekspor pertanian dunia. Perdesaan yang perekonomiannya bercorak pertanian tidak seharusnya berubah menjadi perkotaan yang bercorak industri dan jasa untuk menjadi daerah yang maju. Desa bisa menjadi pendukung yang baik bagi kota. Begitupun sebaliknya. Desa bisa tumbuh, berkembang, dan maju setara dengan kota tanpa harus beralih menjadi daerah yang bercorak industri dan jasa. Profesi petani bisa setara dengan profesi lainnya terutama di bidang industri dan jasa. Pertanian tidak bisa tergantikan. Negara tanpa sistem pertanian yang baik akan selalu tergantung kepada negara lain. Indonesia memiliki sumber daya alam yang melimpah. Tanahnya subur, tapi ironis pertaniannya malah tidak lebih baik dari negara tetangganya. Sudah banyak kata sindiran ditulis namun tujuh puluh tiga tahun merdeka pertanian tidak banyak berubah. Sistem mengolah, menanam, sampai memanen seperti berjalan di tempat. Jika di Amerika petani sudah menenteng laptop dan pegangannya GPS, di negara kita masih saja mengayunkan cangkul. Tidak heran jika profesi ini semakin hari semakin ditinggalkan. Kebanyakan orangtua petani pun tidak ingin anaknya nanti berprofesi seperti mereka. Bagaimana regenerasi petani bisa dilakukan jika fakta di lapangan seperti itu?<\\/p>\\r\\n\\r\\n<p>Mungkin tidak pernah mendengar ada anak yang bercita-cita menjadi petani. Umumnya mereka bercita-cita menjadi dokter, polisi, yang penting di kantor, tidak kotor. Kotor identik dengan keterbelakangan. Bahkan mahasiswa Jurusan Pertanian sekalipun ketika lulus memilih menjadi karyawan. Ini menjadi tanda paling sederhana bahwa menjadi petani bukan sesuatu yang diharapkan --bukan profesi prestisius, apalagi menjanjikan. Kebanyakan petani adalah mereka yang &quot;kalah&quot; dalam persaingan bursa kerja --terpaksa daripada tidak bekerja. Akhirnya kualitas pertanian pun tidak pernah berkembang, karena ilmu yang dipakai tidak pernah di-upgrade. Bertani hanya sekadar menyambung hidup. Tanpa ada keinginan untuk mencari dan melakukan cara lain yang lebih modern.<\\/p>\\r\\n\\r\\n<p>Data memperlihatkan bahwa jumlah petani setiap tahunnya selalu menurun sekitar 1,1 persen, tanpa ada penambahan yang signifikan di kelompok usia muda. Data BPS dari hasil survei pertanian antarsensus 2018 menunjukkan hampir 70 persen petani adalah kelompok umur 45 tahun ke atas. Berkurangnya jumlah petani juga diikuti dengan luas lahan pertanian yang semakin menyusut setiap tahunnya karena alih fungsi.<\\/p>\\r\\n\\r\\n<p>Regenerasi sudah lama tidak berjalan, ditambah label di masyarakat tentang petani membuat anak muda maju-mundur untuk menjadi petani. Seorang sarjana pertanian memiliki ilmu tentang bertani, tapi tidak memiliki mental untuk menjadi petani. Sebenarnya tidak menjadi masalah yang terlalu serius jumlah petani semakin menyusut jika yang tersisa adalah petani yang memiliki keinginan besar dalam bidang pertanian. Orang-orang yang memiliki passion dalam bidang mana pun akan selalu berupaya. Melalui orang-orang seperti ini pertanian akan maju. Tapi, seberapa banyak orang yang memiliki passion di pertanian?<\\/p>\",\"source\":\"- Admin Redaksi AHP\",\"_token\":\"C4KIqlvgTxPBvOOMp7u04hSseHq1rnkC69q8Auls\",\"_method\":\"PUT\"}', '2019-03-13 11:49:30', '2019-03-13 11:49:30'),
(1503, 1, 'admin/auth/news/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-13 11:49:31', '2019-03-13 11:49:31'),
(1504, 1, 'admin/auth/news/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-13 11:52:10', '2019-03-13 11:52:10'),
(1505, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-13 11:52:27', '2019-03-13 11:52:27'),
(1506, 1, 'admin/auth/news/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 11:52:30', '2019-03-13 11:52:30'),
(1507, 1, 'admin/auth/news', 'POST', '127.0.0.1', '{\"title\":\"Petani lampung hasilkan 50 ton merah\",\"description\":\"<p>Bandar Lampung (05 Feb 2019)&nbsp;Tidak banyak pemuda yang bercita-cita menjadi petani. Kelompok kecil ini, yang benar-benar menjadikan pertanian sebagai passion dan mata pencaharian utama, mulai muncul ke permukaan. Geliatnya sudah mulai terasa terutama di media-media sosial, tempat mereka berbagi ilmu pertanian berdasarkan trial dan error.<\\/p>\\r\\n\\r\\n<p>dilakukan untuk mendukung kebijakan di bidang pertanian. Teknologi dibuat untuk mendukung pertanian. Maka tidak heran jika hari ini mereka menguasai ekspor pertanian dunia. Perdesaan yang perekonomiannya bercorak pertanian tidak seharusnya berubah menjadi perkotaan yang bercorak industri dan jasa untuk menjadi daerah yang maju. Desa bisa menjadi pendukung yang baik bagi kota. Begitupun sebaliknya. Desa bisa tumbuh, berkembang, dan maju setara dengan kota tanpa harus beralih menjadi daerah yang bercorak industri dan jasa. Profesi petani bisa setara dengan profesi lainnya terutama di bidang industri dan jasa. Pertanian tidak bisa tergantikan. Negara tanpa sistem pertanian yang baik akan selalu tergantung kepada negara lain. Indonesia memiliki sumber daya alam yang melimpah. Tanahnya subur, tapi ironis pertaniannya malah tidak lebih baik dari negara tetangganya. Sudah banyak kata sindiran ditulis namun tujuh puluh tiga tahun merdeka pertanian tidak banyak berubah. Sistem mengolah, menanam, sampai memanen seperti berjalan di tempat. Jika di Amerika petani sudah menenteng laptop dan pegangannya GPS, di negara kita masih saja mengayunkan cangkul. Tidak heran jika profesi ini semakin hari semakin ditinggalkan. Kebanyakan orangtua petani pun tidak ingin anaknya nanti berprofesi seperti mereka. Bagaimana regenerasi petani bisa dilakukan jika fakta di lapangan seperti itu?<\\/p>\\r\\n\\r\\n<p>Mungkin tidak pernah mendengar ada anak yang bercita-cita menjadi petani. Umumnya mereka bercita-cita menjadi dokter, polisi, yang penting di kantor, tidak kotor. Kotor identik dengan keterbelakangan. Bahkan mahasiswa Jurusan Pertanian sekalipun ketika lulus memilih menjadi karyawan. Ini menjadi tanda paling sederhana bahwa menjadi petani bukan sesuatu yang diharapkan --bukan profesi prestisius, apalagi menjanjikan. Kebanyakan petani adalah mereka yang &quot;kalah&quot; dalam persaingan bursa kerja --terpaksa daripada tidak bekerja. Akhirnya kualitas pertanian pun tidak pernah berkembang, karena ilmu yang dipakai tidak pernah di-upgrade. Bertani hanya sekadar menyambung hidup. Tanpa ada keinginan untuk mencari dan melakukan cara lain yang lebih modern.<\\/p>\\r\\n\\r\\n<p>Data memperlihatkan bahwa jumlah petani setiap tahunnya selalu menurun sekitar 1,1 persen, tanpa ada penambahan yang signifikan di kelompok usia muda. Data BPS dari hasil survei pertanian antarsensus 2018 menunjukkan hampir 70 persen petani adalah kelompok umur 45 tahun ke atas. Berkurangnya jumlah petani juga diikuti dengan luas lahan pertanian yang semakin menyusut setiap tahunnya karena alih fungsi.<\\/p>\\r\\n\\r\\n<p>Regenerasi sudah lama tidak berjalan, ditambah label di masyarakat tentang petani membuat anak muda maju-mundur untuk menjadi petani. Seorang sarjana pertanian memiliki ilmu tentang bertani, tapi tidak memiliki mental untuk menjadi petani. Sebenarnya tidak menjadi masalah yang terlalu serius jumlah petani semakin menyusut jika yang tersisa adalah petani yang memiliki keinginan besar dalam bidang pertanian. Orang-orang yang memiliki passion dalam bidang mana pun akan selalu berupaya. Melalui orang-orang seperti ini pertanian akan maju. Tapi, seberapa banyak orang yang memiliki passion di pertanian?<\\/p>\\r\\n\\r\\n<p>Menjadi tugas kita semua sebagai masyarakat untuk turut mendukung pertanian agar lebih maju. Salah satu caranya dengan menghapus gambaran kurang baik tentang petani. Paling tidak, kita tidak menjadi bagian yang menjatuhkan ketika seorang sarjana yang kata orang sudah sekolah tinggi-tinggi memutuskan untuk menjadi petani. Walaupun sebenarnya gambaran ini muncul lebih dikarenakan ketiadaan bukti petani yang berhasil melalui ilmu dan teknologi. Petani kita masih identik dengan pendidikan rendah dan kemiskinan. Selama ini gambaran tentang petani adalah mereka dengan pendidikan rendah dan hidup di bawah garis kemiskinan. Walaupun tidak sedikit yang sukses dan menjadi kaya, tetapi kalangan ini pun belum menarik minat generasi muda. Lagi-lagi petani yang sukses ini tidak lebih baik secara pendidikan. Keberhasilan mereka identik dengan kerja keras menggunakan otot. Sehingga terlihat masih kurang keren di mata anak muda.<\\/p>\\r\\n\\r\\n<p>Tugas untuk menghapus gambaran kurang baik tentang petani akan lebih mudah jika petaninya itu sendiri yang berubah. Salah satunya melalui petani-petani muda yang saya sebutkan tadi. Mereka memiliki kemauan dan passion di bidang pertanian. Mereka menghargai profesi pertanian. Dengan begitu kita berharap beberapa tahun ke depan akan muncul petani-petani sukses yang tentengannya laptop, bukan pacul --yang cara kerjanya dengan penerapan teknologi. Sehingga akan menggugah minat generasi selanjutnya. Maka regenerasi petani diharapkan akan tumbuh.<\\/p>\\r\\n\\r\\n<p>Pemerintah juga memiliki peran yang tidak kalah penting. Desa yang maju akan memudahkan petaninya. Desa yang maju adalah desa yang memiliki infrastruktur dasar yang baik, seperti fasilitas jalan yang baik, air bersih yang memadai, dan listrik. Di sinilah pemerintah hadir untuk menyediakan infrastruktur dasar yang lengkap.<\\/p>\\r\\n\\r\\n<p>Dengan begitu kita berharap di masa yang akan datang akan banyak anak muda yang bercita-cita menjadi seorang petani. Menumbuhkan kembali minat pertanian yang sebenarnya sangat cocok di alam Indonesia. Menumbuhkan semangat berdikari yang sampai hari ini masih menjadi slogan manis pemecut semangat. Sehingga lirik lagu kondang era 1970-an milik Koes Plus, &quot;Orang bilang tanah kita tanah surga, tongkat kayu dan batu jadi tanaman,&quot; tidak sekadar ironi di tanah subur yang hasil pertaniannya sendiri harus impor<\\/p>\",\"source\":\"- Admin Redaksi AHP\",\"_token\":\"C4KIqlvgTxPBvOOMp7u04hSseHq1rnkC69q8Auls\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/news\"}', '2019-03-13 11:52:47', '2019-03-13 11:52:47'),
(1508, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-13 11:52:47', '2019-03-13 11:52:47'),
(1509, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-13 12:01:10', '2019-03-13 12:01:10'),
(1510, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-13 12:02:24', '2019-03-13 12:02:24'),
(1511, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-13 12:03:25', '2019-03-13 12:03:25'),
(1512, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-13 12:04:54', '2019-03-13 12:04:54'),
(1513, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-13 12:05:29', '2019-03-13 12:05:29'),
(1514, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-13 12:05:52', '2019-03-13 12:05:52'),
(1515, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-13 12:06:13', '2019-03-13 12:06:13'),
(1516, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-13 12:06:28', '2019-03-13 12:06:28'),
(1517, 1, 'admin/auth/news/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 12:06:48', '2019-03-13 12:06:48'),
(1518, 1, 'admin/auth/news', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 12:06:55', '2019-03-13 12:06:55'),
(1519, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-13 12:07:43', '2019-03-13 12:07:43'),
(1520, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-13 12:09:56', '2019-03-13 12:09:56'),
(1521, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-13 12:10:27', '2019-03-13 12:10:27'),
(1522, 1, 'admin/auth/news', 'GET', '127.0.0.1', '{\"id\":null,\"title\":\"Petani lampung hasilkan 50 ton merah\",\"_pjax\":\"#pjax-container\"}', '2019-03-13 12:10:45', '2019-03-13 12:10:45'),
(1523, 1, 'admin/auth/news', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"title\":\"hhh\"}', '2019-03-13 12:10:51', '2019-03-13 12:10:51'),
(1524, 1, 'admin/auth/news', 'GET', '127.0.0.1', '{\"id\":null,\"title\":\"hhh\",\"_pjax\":\"#pjax-container\"}', '2019-03-13 12:11:40', '2019-03-13 12:11:40'),
(1525, 1, 'admin/auth/news', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-13 12:11:43', '2019-03-13 12:11:43'),
(1526, 1, 'admin/auth/news', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2019-03-13 12:12:02', '2019-03-13 12:12:02'),
(1527, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-14 04:33:25', '2019-03-14 04:33:25'),
(1528, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 04:33:35', '2019-03-14 04:33:35'),
(1529, 1, 'admin/auth/menu/25/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 04:33:49', '2019-03-14 04:33:49'),
(1530, 1, 'admin/auth/menu/25', 'PUT', '127.0.0.1', '{\"parent_id\":\"22\",\"title\":\"News\",\"icon\":\"fa-newspaper-o\",\"uri\":\"auth\\/news\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"zFhhRfNjnyjTHvGYAWNDcPv1ru9Tg24tUVOc0J9P\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-03-14 04:34:02', '2019-03-14 04:34:02'),
(1531, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-14 04:34:03', '2019-03-14 04:34:03'),
(1532, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 04:34:16', '2019-03-14 04:34:16'),
(1533, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 04:34:26', '2019-03-14 04:34:26'),
(1534, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-14 04:34:34', '2019-03-14 04:34:34'),
(1535, 3, 'admin/auth/news', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 04:34:47', '2019-03-14 04:34:47'),
(1536, 3, 'admin/auth/news/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 04:34:55', '2019-03-14 04:34:55'),
(1537, 3, 'admin/auth/news', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 04:35:02', '2019-03-14 04:35:02'),
(1538, 3, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-14 04:35:13', '2019-03-14 04:35:13'),
(1539, 3, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 04:35:28', '2019-03-14 04:35:28'),
(1540, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-14 04:35:37', '2019-03-14 04:35:37'),
(1541, 3, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 04:35:49', '2019-03-14 04:35:49'),
(1542, 3, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 04:36:40', '2019-03-14 04:36:40'),
(1543, 3, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 04:36:48', '2019-03-14 04:36:48'),
(1544, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-14 04:36:50', '2019-03-14 04:36:50'),
(1545, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-14 04:36:51', '2019-03-14 04:36:51'),
(1546, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-14 04:36:51', '2019-03-14 04:36:51'),
(1547, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-14 04:36:52', '2019-03-14 04:36:52'),
(1548, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-14 04:36:52', '2019-03-14 04:36:52'),
(1549, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-14 04:36:52', '2019-03-14 04:36:52'),
(1550, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-14 04:36:53', '2019-03-14 04:36:53'),
(1551, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-14 04:36:53', '2019-03-14 04:36:53'),
(1552, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-14 04:36:53', '2019-03-14 04:36:53'),
(1553, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-14 04:36:54', '2019-03-14 04:36:54'),
(1554, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-14 04:37:04', '2019-03-14 04:37:04'),
(1555, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-14 04:37:22', '2019-03-14 04:37:22'),
(1556, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-14 04:39:19', '2019-03-14 04:39:19'),
(1557, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-14 04:39:21', '2019-03-14 04:39:21'),
(1558, 3, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 04:39:29', '2019-03-14 04:39:29'),
(1559, 3, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 04:39:32', '2019-03-14 04:39:32'),
(1560, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-14 04:40:00', '2019-03-14 04:40:00'),
(1561, 3, 'admin/auth/benefit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 04:40:06', '2019-03-14 04:40:06'),
(1562, 3, 'admin/auth/faq', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 04:40:10', '2019-03-14 04:40:10'),
(1563, 3, 'admin/auth/benefit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 04:40:12', '2019-03-14 04:40:12'),
(1564, 3, 'admin/auth/faq', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 04:40:14', '2019-03-14 04:40:14'),
(1565, 3, 'admin/auth/privacy-policy', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 04:40:15', '2019-03-14 04:40:15'),
(1566, 3, 'admin/auth/about-us', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 04:40:16', '2019-03-14 04:40:16'),
(1567, 3, 'admin/auth/term-of-use', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 04:40:18', '2019-03-14 04:40:18'),
(1568, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 04:40:19', '2019-03-14 04:40:19'),
(1569, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 04:40:31', '2019-03-14 04:40:31'),
(1570, 3, 'admin/auth/product-groups', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 04:40:34', '2019-03-14 04:40:34'),
(1571, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 04:40:36', '2019-03-14 04:40:36'),
(1572, 3, 'admin/auth/product-categorys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 04:40:43', '2019-03-14 04:40:43'),
(1573, 3, 'admin/auth/product-categorys', 'POST', '127.0.0.1', '{\"category_name\":\"HERBISIDA (Pembasmi Gulma)\",\"_token\":\"y9bUYfqWXu9VrvXTTuu01FM2ZhabvI3U2JV76B84\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/product-categorys\"}', '2019-03-14 04:40:46', '2019-03-14 04:40:46'),
(1574, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '[]', '2019-03-14 04:40:46', '2019-03-14 04:40:46'),
(1575, 3, 'admin/auth/product-categorys/8', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"y9bUYfqWXu9VrvXTTuu01FM2ZhabvI3U2JV76B84\"}', '2019-03-14 04:40:50', '2019-03-14 04:40:50'),
(1576, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 04:40:51', '2019-03-14 04:40:51'),
(1577, 3, 'admin/auth/product-categorys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 04:41:11', '2019-03-14 04:41:11'),
(1578, 3, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 04:41:18', '2019-03-14 04:41:18'),
(1579, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-14 21:52:18', '2019-03-14 21:52:18'),
(1580, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 21:52:25', '2019-03-14 21:52:25'),
(1581, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-14 21:54:02', '2019-03-14 21:54:02'),
(1582, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-14 21:54:07', '2019-03-14 21:54:07'),
(1583, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-14 21:56:54', '2019-03-14 21:56:54'),
(1584, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-14 23:01:53', '2019-03-14 23:01:53'),
(1585, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 23:25:27', '2019-03-14 23:25:27'),
(1586, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 23:25:31', '2019-03-14 23:25:31'),
(1587, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 23:25:42', '2019-03-14 23:25:42'),
(1588, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-14 23:25:42', '2019-03-14 23:25:42'),
(1589, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-03-15 08:42:19', '2019-03-15 08:42:19'),
(1590, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-15 08:42:26', '2019-03-15 08:42:26'),
(1591, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 07:03:52', '2019-03-16 07:03:52'),
(1592, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 07:04:01', '2019-03-16 07:04:01'),
(1593, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 07:10:20', '2019-03-16 07:10:20'),
(1594, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 07:11:16', '2019-03-16 07:11:16'),
(1595, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 07:12:39', '2019-03-16 07:12:39'),
(1596, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 07:22:29', '2019-03-16 07:22:29'),
(1597, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 07:23:49', '2019-03-16 07:23:49'),
(1598, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 07:24:28', '2019-03-16 07:24:28'),
(1599, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 07:24:43', '2019-03-16 07:24:43'),
(1600, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 07:24:54', '2019-03-16 07:24:54'),
(1601, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 07:25:04', '2019-03-16 07:25:04'),
(1602, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 07:25:51', '2019-03-16 07:25:51'),
(1603, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 07:26:07', '2019-03-16 07:26:07'),
(1604, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 07:48:13', '2019-03-16 07:48:13'),
(1605, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 08:21:43', '2019-03-16 08:21:43'),
(1606, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 08:22:26', '2019-03-16 08:22:26'),
(1607, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 09:33:10', '2019-03-16 09:33:10'),
(1608, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 09:33:32', '2019-03-16 09:33:32'),
(1609, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 09:33:52', '2019-03-16 09:33:52'),
(1610, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 09:35:19', '2019-03-16 09:35:19'),
(1611, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 09:40:22', '2019-03-16 09:40:22'),
(1612, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 09:44:11', '2019-03-16 09:44:11'),
(1613, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 09:44:27', '2019-03-16 09:44:27'),
(1614, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 09:44:36', '2019-03-16 09:44:36'),
(1615, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 09:44:59', '2019-03-16 09:44:59'),
(1616, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 09:47:49', '2019-03-16 09:47:49'),
(1617, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 09:48:53', '2019-03-16 09:48:53'),
(1618, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 09:49:09', '2019-03-16 09:49:09'),
(1619, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Pengunjung\",\"icon\":\"fa-area-chart\",\"uri\":\"auth\\/pengunjung\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"3XR086fLfF7od5SuVZ5sPO4BJFp01PZurePEn313\"}', '2019-03-16 09:49:40', '2019-03-16 09:49:40'),
(1620, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-16 09:49:41', '2019-03-16 09:49:41'),
(1621, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-03-16 09:49:47', '2019-03-16 09:49:47'),
(1622, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-16 09:49:52', '2019-03-16 09:49:52'),
(1623, 1, 'admin/auth/permissions/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 09:50:04', '2019-03-16 09:50:04'),
(1624, 1, 'admin/auth/permissions/5', 'PUT', '127.0.0.1', '{\"slug\":\"auth.management\",\"name\":\"Auth management\",\"http_method\":[null],\"http_path\":\"\\/auth\\/roles\\r\\n\\/auth\\/permissions\\r\\n\\/auth\\/menu\\r\\n\\/auth\\/logs\\r\\n\\/auth\\/pengunjung\",\"_token\":\"3XR086fLfF7od5SuVZ5sPO4BJFp01PZurePEn313\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2019-03-16 09:50:15', '2019-03-16 09:50:15'),
(1625, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-16 09:50:16', '2019-03-16 09:50:16');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1626, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-16 09:50:41', '2019-03-16 09:50:41'),
(1627, 1, 'admin/auth/pengunjung', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 09:50:49', '2019-03-16 09:50:49'),
(1628, 1, 'admin/auth/pengunjung', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 09:51:12', '2019-03-16 09:51:12'),
(1629, 1, 'admin/auth/pengunjung', 'GET', '127.0.0.1', '[]', '2019-03-16 09:52:54', '2019-03-16 09:52:54'),
(1630, 1, 'admin/auth/pengunjung', 'GET', '127.0.0.1', '{\"id\":null,\"ip\":null,\"os\":\"s\",\"browser\":null,\"_pjax\":\"#pjax-container\"}', '2019-03-16 09:53:02', '2019-03-16 09:53:02'),
(1631, 1, 'admin/auth/pengunjung', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"ip\":null,\"os\":\"u\",\"browser\":null}', '2019-03-16 09:53:06', '2019-03-16 09:53:06'),
(1632, 1, 'admin/auth/pengunjung', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"ip\":\"127.0.0.0\",\"os\":null,\"browser\":null}', '2019-03-16 09:53:15', '2019-03-16 09:53:15'),
(1633, 1, 'admin/auth/pengunjung', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"ip\":\"127.0.0.1\",\"os\":null,\"browser\":null}', '2019-03-16 09:53:19', '2019-03-16 09:53:19'),
(1634, 1, 'admin/auth/pengunjung', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 09:53:26', '2019-03-16 09:53:26'),
(1635, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 09:53:45', '2019-03-16 09:53:45'),
(1636, 1, 'admin/auth/pengunjung', 'GET', '127.0.0.1', '[]', '2019-03-16 09:54:41', '2019-03-16 09:54:41'),
(1637, 1, 'admin/auth/pengunjung', 'GET', '127.0.0.1', '[]', '2019-03-16 09:55:11', '2019-03-16 09:55:11'),
(1638, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 09:55:30', '2019-03-16 09:55:30'),
(1639, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 09:57:34', '2019-03-16 09:57:34'),
(1640, 1, 'admin/auth/pengunjung', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 09:57:37', '2019-03-16 09:57:37'),
(1641, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 09:57:40', '2019-03-16 09:57:40'),
(1642, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 09:57:41', '2019-03-16 09:57:41'),
(1643, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 09:57:43', '2019-03-16 09:57:43'),
(1644, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 09:57:51', '2019-03-16 09:57:51'),
(1645, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 09:58:06', '2019-03-16 09:58:06'),
(1646, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 09:58:11', '2019-03-16 09:58:11'),
(1647, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 09:59:23', '2019-03-16 09:59:23'),
(1648, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 09:59:42', '2019-03-16 09:59:42'),
(1649, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 10:01:41', '2019-03-16 10:01:41'),
(1650, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 10:02:47', '2019-03-16 10:02:47'),
(1651, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 10:03:09', '2019-03-16 10:03:09'),
(1652, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 10:03:14', '2019-03-16 10:03:14'),
(1653, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 10:03:46', '2019-03-16 10:03:46'),
(1654, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 10:04:20', '2019-03-16 10:04:20'),
(1655, 1, 'admin/auth/news', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:04:46', '2019-03-16 10:04:46'),
(1656, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:04:49', '2019-03-16 10:04:49'),
(1657, 1, 'admin/auth/menu/25/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:05:04', '2019-03-16 10:05:04'),
(1658, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:05:10', '2019-03-16 10:05:10'),
(1659, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 10:06:30', '2019-03-16 10:06:30'),
(1660, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 10:06:45', '2019-03-16 10:06:45'),
(1661, 1, 'admin/auth/news', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:06:49', '2019-03-16 10:06:49'),
(1662, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:06:52', '2019-03-16 10:06:52'),
(1663, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 10:09:57', '2019-03-16 10:09:57'),
(1664, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 10:11:03', '2019-03-16 10:11:03'),
(1665, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:11:48', '2019-03-16 10:11:48'),
(1666, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"3XR086fLfF7od5SuVZ5sPO4BJFp01PZurePEn313\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":6},{\\\"id\\\":7},{\\\"id\\\":26},{\\\"id\\\":5},{\\\"id\\\":4}]},{\\\"id\\\":22,\\\"children\\\":[{\\\"id\\\":23},{\\\"id\\\":24},{\\\"id\\\":25}]},{\\\"id\\\":12,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":21},{\\\"id\\\":3}]},{\\\"id\\\":13,\\\"children\\\":[{\\\"id\\\":20},{\\\"id\\\":16},{\\\"id\\\":15},{\\\"id\\\":19},{\\\"id\\\":18},{\\\"id\\\":14}]}]\"}', '2019-03-16 10:11:54', '2019-03-16 10:11:54'),
(1667, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:11:55', '2019-03-16 10:11:55'),
(1668, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:12:50', '2019-03-16 10:12:50'),
(1669, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 10:12:54', '2019-03-16 10:12:54'),
(1670, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:13:16', '2019-03-16 10:13:16'),
(1671, 1, 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:13:34', '2019-03-16 10:13:34'),
(1672, 1, 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"auth.masterdata\",\"name\":\"Auth Master Data\",\"http_method\":[null],\"http_path\":\"\\/auth\\/log*\\r\\n\\/auth\\/pengunjung*\\r\\n\\/auth\\/product-categorys*\\r\\n\\/auth\\/product-groups*\\r\\n\\/auth\\/users*\",\"_token\":\"3XR086fLfF7od5SuVZ5sPO4BJFp01PZurePEn313\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2019-03-16 10:14:33', '2019-03-16 10:14:33'),
(1673, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-16 10:14:33', '2019-03-16 10:14:33'),
(1674, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:14:41', '2019-03-16 10:14:41'),
(1675, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 10:15:11', '2019-03-16 10:15:11'),
(1676, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:15:24', '2019-03-16 10:15:24'),
(1677, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 10:15:31', '2019-03-16 10:15:31'),
(1678, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:15:35', '2019-03-16 10:15:35'),
(1679, 1, 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:15:37', '2019-03-16 10:15:37'),
(1680, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:15:39', '2019-03-16 10:15:39'),
(1681, 1, 'admin/auth/permissions/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:15:42', '2019-03-16 10:15:42'),
(1682, 1, 'admin/auth/permissions/5', 'PUT', '127.0.0.1', '{\"slug\":\"auth.management\",\"name\":\"Auth management\",\"http_method\":[null],\"http_path\":\"\\/auth\\/roles\\r\\n\\/auth\\/permissions\\r\\n\\/auth\\/menu\\r\\n\\/auth\\/pengunjung\",\"_token\":\"mR7LQVi75mvPE7NuSYy9CirI2zB563z77WThHiF1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2019-03-16 10:15:49', '2019-03-16 10:15:49'),
(1683, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-16 10:15:49', '2019-03-16 10:15:49'),
(1684, 1, 'admin/auth/permissions/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:15:53', '2019-03-16 10:15:53'),
(1685, 1, 'admin/auth/permissions/5', 'PUT', '127.0.0.1', '{\"slug\":\"auth.management\",\"name\":\"Auth management\",\"http_method\":[null],\"http_path\":\"\\/auth\\/roles\\r\\n\\/auth\\/permissions\\r\\n\\/auth\\/menu\\r\\n\\/auth\\/log\",\"_token\":\"mR7LQVi75mvPE7NuSYy9CirI2zB563z77WThHiF1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2019-03-16 10:16:05', '2019-03-16 10:16:05'),
(1686, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-16 10:16:06', '2019-03-16 10:16:06'),
(1687, 1, 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:16:15', '2019-03-16 10:16:15'),
(1688, 1, 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"auth.masterdata\",\"name\":\"Auth Master Data\",\"http_method\":[null],\"http_path\":\"\\/auth\\/pengunjung*\\r\\n\\/auth\\/product-categorys*\\r\\n\\/auth\\/product-groups*\\r\\n\\/auth\\/users*\",\"_token\":\"mR7LQVi75mvPE7NuSYy9CirI2zB563z77WThHiF1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2019-03-16 10:16:21', '2019-03-16 10:16:21'),
(1689, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-16 10:16:22', '2019-03-16 10:16:22'),
(1690, 1, 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:16:24', '2019-03-16 10:16:24'),
(1691, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:16:29', '2019-03-16 10:16:29'),
(1692, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:16:36', '2019-03-16 10:16:36'),
(1693, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"mR7LQVi75mvPE7NuSYy9CirI2zB563z77WThHiF1\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":6},{\\\"id\\\":7},{\\\"id\\\":5},{\\\"id\\\":4}]},{\\\"id\\\":22,\\\"children\\\":[{\\\"id\\\":23},{\\\"id\\\":25},{\\\"id\\\":24},{\\\"id\\\":26}]},{\\\"id\\\":12,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":21},{\\\"id\\\":3}]},{\\\"id\\\":13,\\\"children\\\":[{\\\"id\\\":20},{\\\"id\\\":16},{\\\"id\\\":15},{\\\"id\\\":19},{\\\"id\\\":18},{\\\"id\\\":14}]}]\"}', '2019-03-16 10:17:13', '2019-03-16 10:17:13'),
(1694, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:17:13', '2019-03-16 10:17:13'),
(1695, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:17:19', '2019-03-16 10:17:19'),
(1696, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 10:17:28', '2019-03-16 10:17:28'),
(1697, 3, 'admin/auth/pengunjung', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:17:39', '2019-03-16 10:17:39'),
(1698, 3, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:17:47', '2019-03-16 10:17:47'),
(1699, 3, 'admin/auth/pengunjung', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:17:50', '2019-03-16 10:17:50'),
(1700, 3, 'admin/auth/about-us', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:19:36', '2019-03-16 10:19:36'),
(1701, 3, 'admin/auth/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:21:36', '2019-03-16 10:21:36'),
(1702, 3, 'admin/auth/our-partner', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:21:46', '2019-03-16 10:21:46'),
(1703, 3, 'admin/auth/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:21:51', '2019-03-16 10:21:51'),
(1704, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 10:28:52', '2019-03-16 10:28:52'),
(1705, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 10:45:15', '2019-03-16 10:45:15'),
(1706, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 12:13:21', '2019-03-16 12:13:21'),
(1707, 1, 'admin/auth/product-groups', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 12:13:23', '2019-03-16 12:13:23'),
(1708, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 12:18:17', '2019-03-16 12:18:17'),
(1709, 1, 'admin/auth/about-us', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 12:50:40', '2019-03-16 12:50:40'),
(1710, 1, 'admin/auth/about-us/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 12:50:45', '2019-03-16 12:50:45'),
(1711, 1, 'admin/auth/about-us/1', 'PUT', '127.0.0.1', '{\"deskripsi\":\"<h3>PT. Andall Hasa Prima<\\/h3>\\r\\n\\r\\n<p>Didirikan di Bandar Lampung pada tanggal 23 Agustus 1999 oleh 3 orang pendiri yaitu:<\\/p>\\r\\n\\r\\n<p>Ir. Poedjoasmoro<\\/p>\\r\\n\\r\\n<p>Zakaria Halim dan<\\/p>\\r\\n\\r\\n<p>Ir. Achmad Lutfi.<\\/p>\\r\\n\\r\\n<p>Bidang Usaha<em> PT. Andall Hasa Prima<\\/em> mencakup : Bidang Perdagangan Umum,&nbsp; Pengembangan Pertanian dan Pengadaan Industri.Aktifitas perseroan saat ini adalah sebagai distributor pestisida, pemegang merk pestisida, benih dan alat alat pertanian. <em>PT.Andall Hasa Prima<\\/em> merupakan distributor pestisida dan importir alat-alat pertanian yang kian melebarkan sayap menjangkau berbagai pasar bidang pertanian di sejumlah daerah dan kota di Indonesia<\\/p>\",\"_token\":\"uqIRKUEYFWwKKq6qwTKptiKZJzUAFuR9wLyu80G0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/about-us\"}', '2019-03-16 12:51:03', '2019-03-16 12:51:03'),
(1712, 1, 'admin/auth/about-us', 'GET', '127.0.0.1', '[]', '2019-03-16 12:51:04', '2019-03-16 12:51:04'),
(1713, 1, 'admin/auth/about-us/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 12:51:07', '2019-03-16 12:51:07'),
(1714, 1, 'admin/auth/about-us', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 12:51:08', '2019-03-16 12:51:08'),
(1715, 1, 'admin/auth/about-us/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 12:51:10', '2019-03-16 12:51:10'),
(1716, 1, 'admin/auth/about-us/1', 'PUT', '127.0.0.1', '{\"deskripsi\":\"<p>Didirikan di Bandar Lampung pada tanggal 23 Agustus 1999 oleh 3 orang pendiri yaitu:<\\/p>\\r\\n\\r\\n<p>Ir. Poedjoasmoro<\\/p>\\r\\n\\r\\n<p>Zakaria Halim dan<\\/p>\\r\\n\\r\\n<p>Ir. Achmad Lutfi.<\\/p>\\r\\n\\r\\n<p>Bidang Usaha<em> PT. Andall Hasa Prima<\\/em> mencakup : Bidang Perdagangan Umum,&nbsp; Pengembangan Pertanian dan Pengadaan Industri.Aktifitas perseroan saat ini adalah sebagai distributor pestisida, pemegang merk pestisida, benih dan alat alat pertanian. <em>PT.Andall Hasa Prima<\\/em> merupakan distributor pestisida dan importir alat-alat pertanian yang kian melebarkan sayap menjangkau berbagai pasar bidang pertanian di sejumlah daerah dan kota di Indonesia<\\/p>\",\"_token\":\"uqIRKUEYFWwKKq6qwTKptiKZJzUAFuR9wLyu80G0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/about-us\"}', '2019-03-16 12:51:22', '2019-03-16 12:51:22'),
(1717, 1, 'admin/auth/about-us', 'GET', '127.0.0.1', '[]', '2019-03-16 12:51:22', '2019-03-16 12:51:22'),
(1718, 1, 'admin/auth/about-us', 'GET', '127.0.0.1', '[]', '2019-03-16 12:53:01', '2019-03-16 12:53:01'),
(1719, 1, 'admin/auth/about-us/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 12:53:29', '2019-03-16 12:53:29'),
(1720, 1, 'admin/auth/about-us/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-16 12:53:44', '2019-03-16 12:53:44'),
(1721, 1, 'admin/auth/about-us/1', 'PUT', '127.0.0.1', '{\"deskripsi\":\"PT. Andall Hasa Prima didirikan di Bandar Lampung pada tanggal 23 Agustus 1999 oleh 3 orang pendiri yaitu: \\r\\nIr. Poedjoasmoro, Zakaria Halim dan Ir. Achmad Lutfi. Bidang Usaha PT. Andall Hasa Prima mencakup;\\r\\nBidang Perdagangan umum, pengembangan pertanian dan pengadaan industri. Aktifitas perseroan saat ini adalah sebagai distributor pestisida, pemegang merk pestisida, benih dan alat alat pertanian. PT Andall Hasa Prima merupakan distributor pestisida dan importir alat-alat pertanian yang kian melebarkan sayap menjangkau berbagai pasar bidang pertanian di sejumlah daerah dan kota di Indonesia\",\"_token\":\"uqIRKUEYFWwKKq6qwTKptiKZJzUAFuR9wLyu80G0\",\"_method\":\"PUT\"}', '2019-03-16 12:54:30', '2019-03-16 12:54:30'),
(1722, 1, 'admin/auth/about-us', 'GET', '127.0.0.1', '[]', '2019-03-16 12:54:31', '2019-03-16 12:54:31'),
(1723, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 12:55:09', '2019-03-16 12:55:09'),
(1724, 1, 'admin/auth/benefit/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 12:55:29', '2019-03-16 12:55:29'),
(1725, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 12:55:34', '2019-03-16 12:55:34'),
(1726, 1, 'admin/auth/benefit/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 13:27:28', '2019-03-16 13:27:28'),
(1727, 1, 'admin/auth/benefit/1', 'PUT', '127.0.0.1', '{\"key\":null,\"image2\":\"_file_del_\",\"_file_del_\":null,\"_token\":\"uqIRKUEYFWwKKq6qwTKptiKZJzUAFuR9wLyu80G0\",\"_method\":\"PUT\"}', '2019-03-16 13:27:36', '2019-03-16 13:27:36'),
(1728, 1, 'admin/auth/benefit/1', 'PUT', '127.0.0.1', '{\"title\":\"Beralih ke Produk Kami\",\"benefit1\":\"<p>Teknik pertanian merupakan pendekatan teknik (engineering) secara luas dalam bidang pertanian yang sangat dibutuhkan untuk melakukan transformasi sumberdaya alam secara efisien dan efektif untuk pemanfaatannya oleh manusia. Dalam sistematika keilmuan, bidang teknik pertanian tetap bertumpu pada bidang ilmu teknik untuk memcahkan berbagai permasalahan di bidang pertanian.<\\/p>\\r\\n\\r\\n<p>Oleh karena itu teknologi pertanian sangat dibutuhkan demi mensejahterakan kehidupan petani dan untuk memenuhi kebutuhan akan produk hasil pertanian dalam skala yang besar.<\\/p>\",\"benefit2\":\"<p>Dampak positif penggunaan teknologi pertanian seperti pengolahan lahan yang lebih mudah karena tidak dikerakan lagi secara manual melainkan dengan mesin. Produk hasil pertanian yang awalnya mudah rusak bisa dia atasi dengan teknologi pengolahan hasil pertanian. Adanya teknologi juga bisa menjamin kegiatan pertanian yang lebih pasti tanpa adanya kekhawatiran akan gagal panen dan kerusakan pada lahan pertanian.<\\/p>\",\"_token\":\"uqIRKUEYFWwKKq6qwTKptiKZJzUAFuR9wLyu80G0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/benefit\"}', '2019-03-16 13:28:09', '2019-03-16 13:28:09'),
(1729, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-16 13:28:09', '2019-03-16 13:28:09'),
(1730, 1, 'admin/auth/benefit/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 13:28:18', '2019-03-16 13:28:18'),
(1731, 1, 'admin/auth/benefit/1', 'PUT', '127.0.0.1', '{\"key\":null,\"image2\":\"_file_del_\",\"_file_del_\":null,\"_token\":\"uqIRKUEYFWwKKq6qwTKptiKZJzUAFuR9wLyu80G0\",\"_method\":\"PUT\"}', '2019-03-16 13:28:21', '2019-03-16 13:28:21'),
(1732, 1, 'admin/auth/benefit/1', 'PUT', '127.0.0.1', '{\"title\":\"Beralih ke Produk Kami\",\"benefit1\":\"<p>Teknik pertanian merupakan pendekatan teknik (engineering) secara luas dalam bidang pertanian yang sangat dibutuhkan untuk melakukan transformasi sumberdaya alam secara efisien dan efektif untuk pemanfaatannya oleh manusia. Dalam sistematika keilmuan, bidang teknik pertanian tetap bertumpu pada bidang ilmu teknik untuk memcahkan berbagai permasalahan di bidang pertanian.<\\/p>\\r\\n\\r\\n<p>Oleh karena itu teknologi pertanian sangat dibutuhkan demi mensejahterakan kehidupan petani dan untuk memenuhi kebutuhan akan produk hasil pertanian dalam skala yang besar.<\\/p>\",\"benefit2\":\"<p>Dampak positif penggunaan teknologi pertanian seperti pengolahan lahan yang lebih mudah karena tidak dikerakan lagi secara manual melainkan dengan mesin. Produk hasil pertanian yang awalnya mudah rusak bisa dia atasi dengan teknologi pengolahan hasil pertanian. Adanya teknologi juga bisa menjamin kegiatan pertanian yang lebih pasti tanpa adanya kekhawatiran akan gagal panen dan kerusakan pada lahan pertanian.<\\/p>\",\"_token\":\"uqIRKUEYFWwKKq6qwTKptiKZJzUAFuR9wLyu80G0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/benefit\"}', '2019-03-16 13:28:31', '2019-03-16 13:28:31'),
(1733, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '[]', '2019-03-16 13:28:31', '2019-03-16 13:28:31'),
(1734, 1, 'admin/auth/our-partner', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 13:36:45', '2019-03-16 13:36:45'),
(1735, 1, 'admin/auth/our-partner/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 13:36:55', '2019-03-16 13:36:55'),
(1736, 1, 'admin/auth/our-partner', 'POST', '127.0.0.1', '{\"partner\":\"Kresna\",\"_token\":\"uqIRKUEYFWwKKq6qwTKptiKZJzUAFuR9wLyu80G0\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/our-partner\"}', '2019-03-16 13:37:11', '2019-03-16 13:37:11'),
(1737, 1, 'admin/auth/our-partner', 'GET', '127.0.0.1', '[]', '2019-03-16 13:37:11', '2019-03-16 13:37:11'),
(1738, 1, 'admin/auth/our-partner/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 13:37:18', '2019-03-16 13:37:18'),
(1739, 1, 'admin/auth/our-partner', 'POST', '127.0.0.1', '{\"partner\":\"PT. Sanitas\",\"_token\":\"uqIRKUEYFWwKKq6qwTKptiKZJzUAFuR9wLyu80G0\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/our-partner\"}', '2019-03-16 13:37:31', '2019-03-16 13:37:31'),
(1740, 1, 'admin/auth/our-partner', 'GET', '127.0.0.1', '[]', '2019-03-16 13:37:31', '2019-03-16 13:37:31'),
(1741, 1, 'admin/auth/our-partner/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 13:37:33', '2019-03-16 13:37:33'),
(1742, 1, 'admin/auth/our-partner', 'POST', '127.0.0.1', '{\"partner\":\"Agricon\",\"_token\":\"uqIRKUEYFWwKKq6qwTKptiKZJzUAFuR9wLyu80G0\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/our-partner\"}', '2019-03-16 13:37:42', '2019-03-16 13:37:42'),
(1743, 1, 'admin/auth/our-partner', 'GET', '127.0.0.1', '[]', '2019-03-16 13:37:43', '2019-03-16 13:37:43'),
(1744, 1, 'admin/auth/news', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 13:38:43', '2019-03-16 13:38:43'),
(1745, 1, 'admin/auth/news/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 13:50:11', '2019-03-16 13:50:11'),
(1746, 1, 'admin/auth/news/1', 'PUT', '127.0.0.1', '{\"key\":null,\"image\":\"_file_del_\",\"_file_del_\":null,\"_token\":\"uqIRKUEYFWwKKq6qwTKptiKZJzUAFuR9wLyu80G0\",\"_method\":\"PUT\"}', '2019-03-16 13:50:15', '2019-03-16 13:50:15'),
(1747, 1, 'admin/auth/news/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-16 13:50:22', '2019-03-16 13:50:22'),
(1748, 1, 'admin/auth/news/1', 'PUT', '127.0.0.1', '{\"title\":\"Petani lampung hasilkan 50 ton merah\",\"description\":\"<p>Bandar Lampung (05 Feb 2019)&nbsp;Tidak banyak pemuda yang bercita-cita menjadi petani. Kelompok kecil ini, yang benar-benar menjadikan pertanian sebagai passion dan mata pencaharian utama, mulai muncul ke permukaan. Geliatnya sudah mulai terasa terutama di media-media sosial, tempat mereka berbagi ilmu pertanian berdasarkan trial dan error.<\\/p>\\r\\n\\r\\n<p>dilakukan untuk mendukung kebijakan di bidang pertanian. Teknologi dibuat untuk mendukung pertanian. Maka tidak heran jika hari ini mereka menguasai ekspor pertanian dunia. Perdesaan yang perekonomiannya bercorak pertanian tidak seharusnya berubah menjadi perkotaan yang bercorak industri dan jasa untuk menjadi daerah yang maju. Desa bisa menjadi pendukung yang baik bagi kota. Begitupun sebaliknya. Desa bisa tumbuh, berkembang, dan maju setara dengan kota tanpa harus beralih menjadi daerah yang bercorak industri dan jasa. Profesi petani bisa setara dengan profesi lainnya terutama di bidang industri dan jasa. Pertanian tidak bisa tergantikan. Negara tanpa sistem pertanian yang baik akan selalu tergantung kepada negara lain. Indonesia memiliki sumber daya alam yang melimpah. Tanahnya subur, tapi ironis pertaniannya malah tidak lebih baik dari negara tetangganya. Sudah banyak kata sindiran ditulis namun tujuh puluh tiga tahun merdeka pertanian tidak banyak berubah. Sistem mengolah, menanam, sampai memanen seperti berjalan di tempat. Jika di Amerika petani sudah menenteng laptop dan pegangannya GPS, di negara kita masih saja mengayunkan cangkul. Tidak heran jika profesi ini semakin hari semakin ditinggalkan. Kebanyakan orangtua petani pun tidak ingin anaknya nanti berprofesi seperti mereka. Bagaimana regenerasi petani bisa dilakukan jika fakta di lapangan seperti itu?<\\/p>\\r\\n\\r\\n<p>Mungkin tidak pernah mendengar ada anak yang bercita-cita menjadi petani. Umumnya mereka bercita-cita menjadi dokter, polisi, yang penting di kantor, tidak kotor. Kotor identik dengan keterbelakangan. Bahkan mahasiswa Jurusan Pertanian sekalipun ketika lulus memilih menjadi karyawan. Ini menjadi tanda paling sederhana bahwa menjadi petani bukan sesuatu yang diharapkan --bukan profesi prestisius, apalagi menjanjikan. Kebanyakan petani adalah mereka yang &quot;kalah&quot; dalam persaingan bursa kerja --terpaksa daripada tidak bekerja. Akhirnya kualitas pertanian pun tidak pernah berkembang, karena ilmu yang dipakai tidak pernah di-upgrade. Bertani hanya sekadar menyambung hidup. Tanpa ada keinginan untuk mencari dan melakukan cara lain yang lebih modern.<\\/p>\\r\\n\\r\\n<p>Data memperlihatkan bahwa jumlah petani setiap tahunnya selalu menurun sekitar 1,1 persen, tanpa ada penambahan yang signifikan di kelompok usia muda. Data BPS dari hasil survei pertanian antarsensus 2018 menunjukkan hampir 70 persen petani adalah kelompok umur 45 tahun ke atas. Berkurangnya jumlah petani juga diikuti dengan luas lahan pertanian yang semakin menyusut setiap tahunnya karena alih fungsi.<\\/p>\\r\\n\\r\\n<p>Regenerasi sudah lama tidak berjalan, ditambah label di masyarakat tentang petani membuat anak muda maju-mundur untuk menjadi petani. Seorang sarjana pertanian memiliki ilmu tentang bertani, tapi tidak memiliki mental untuk menjadi petani. Sebenarnya tidak menjadi masalah yang terlalu serius jumlah petani semakin menyusut jika yang tersisa adalah petani yang memiliki keinginan besar dalam bidang pertanian. Orang-orang yang memiliki passion dalam bidang mana pun akan selalu berupaya. Melalui orang-orang seperti ini pertanian akan maju. Tapi, seberapa banyak orang yang memiliki passion di pertanian?<\\/p>\\r\\n\\r\\n<p>Menjadi tugas kita semua sebagai masyarakat untuk turut mendukung pertanian agar lebih maju. Salah satu caranya dengan menghapus gambaran kurang baik tentang petani. Paling tidak, kita tidak menjadi bagian yang menjatuhkan ketika seorang sarjana yang kata orang sudah sekolah tinggi-tinggi memutuskan untuk menjadi petani. Walaupun sebenarnya gambaran ini muncul lebih dikarenakan ketiadaan bukti petani yang berhasil melalui ilmu dan teknologi. Petani kita masih identik dengan pendidikan rendah dan kemiskinan. Selama ini gambaran tentang petani adalah mereka dengan pendidikan rendah dan hidup di bawah garis kemiskinan. Walaupun tidak sedikit yang sukses dan menjadi kaya, tetapi kalangan ini pun belum menarik minat generasi muda. Lagi-lagi petani yang sukses ini tidak lebih baik secara pendidikan. Keberhasilan mereka identik dengan kerja keras menggunakan otot. Sehingga terlihat masih kurang keren di mata anak muda.<\\/p>\\r\\n\\r\\n<p>Tugas untuk menghapus gambaran kurang baik tentang petani akan lebih mudah jika petaninya itu sendiri yang berubah. Salah satunya melalui petani-petani muda yang saya sebutkan tadi. Mereka memiliki kemauan dan passion di bidang pertanian. Mereka menghargai profesi pertanian. Dengan begitu kita berharap beberapa tahun ke depan akan muncul petani-petani sukses yang tentengannya laptop, bukan pacul --yang cara kerjanya dengan penerapan teknologi. Sehingga akan menggugah minat generasi selanjutnya. Maka regenerasi petani diharapkan akan tumbuh.<\\/p>\\r\\n\\r\\n<p>Pemerintah juga memiliki peran yang tidak kalah penting. Desa yang maju akan memudahkan petaninya. Desa yang maju adalah desa yang memiliki infrastruktur dasar yang baik, seperti fasilitas jalan yang baik, air bersih yang memadai, dan listrik. Di sinilah pemerintah hadir untuk menyediakan infrastruktur dasar yang lengkap.<\\/p>\\r\\n\\r\\n<p>Dengan begitu kita berharap di masa yang akan datang akan banyak anak muda yang bercita-cita menjadi seorang petani. Menumbuhkan kembali minat pertanian yang sebenarnya sangat cocok di alam Indonesia. Menumbuhkan semangat berdikari yang sampai hari ini masih menjadi slogan manis pemecut semangat. Sehingga lirik lagu kondang era 1970-an milik Koes Plus, &quot;Orang bilang tanah kita tanah surga, tongkat kayu dan batu jadi tanaman,&quot; tidak sekadar ironi di tanah subur yang hasil pertaniannya sendiri harus impor<\\/p>\",\"source\":\"- Admin Redaksi AHP\",\"_token\":\"uqIRKUEYFWwKKq6qwTKptiKZJzUAFuR9wLyu80G0\",\"_method\":\"PUT\"}', '2019-03-16 13:50:37', '2019-03-16 13:50:37'),
(1749, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-16 13:50:38', '2019-03-16 13:50:38'),
(1750, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-16 13:58:18', '2019-03-16 13:58:18'),
(1751, 1, 'admin/auth/news/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 13:58:20', '2019-03-16 13:58:20'),
(1752, 1, 'admin/auth/news/1', 'PUT', '127.0.0.1', '{\"key\":null,\"image\":\"_file_del_\",\"_file_del_\":null,\"_token\":\"uqIRKUEYFWwKKq6qwTKptiKZJzUAFuR9wLyu80G0\",\"_method\":\"PUT\"}', '2019-03-16 13:58:23', '2019-03-16 13:58:23'),
(1753, 1, 'admin/auth/news/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-16 13:58:26', '2019-03-16 13:58:26'),
(1754, 1, 'admin/auth/news/1', 'PUT', '127.0.0.1', '{\"title\":\"Petani lampung hasilkan 50 ton merah\",\"description\":\"<p>Bandar Lampung (05 Feb 2019)&nbsp;Tidak banyak pemuda yang bercita-cita menjadi petani. Kelompok kecil ini, yang benar-benar menjadikan pertanian sebagai passion dan mata pencaharian utama, mulai muncul ke permukaan. Geliatnya sudah mulai terasa terutama di media-media sosial, tempat mereka berbagi ilmu pertanian berdasarkan trial dan error.<\\/p>\\r\\n\\r\\n<p>dilakukan untuk mendukung kebijakan di bidang pertanian. Teknologi dibuat untuk mendukung pertanian. Maka tidak heran jika hari ini mereka menguasai ekspor pertanian dunia. Perdesaan yang perekonomiannya bercorak pertanian tidak seharusnya berubah menjadi perkotaan yang bercorak industri dan jasa untuk menjadi daerah yang maju. Desa bisa menjadi pendukung yang baik bagi kota. Begitupun sebaliknya. Desa bisa tumbuh, berkembang, dan maju setara dengan kota tanpa harus beralih menjadi daerah yang bercorak industri dan jasa. Profesi petani bisa setara dengan profesi lainnya terutama di bidang industri dan jasa. Pertanian tidak bisa tergantikan. Negara tanpa sistem pertanian yang baik akan selalu tergantung kepada negara lain. Indonesia memiliki sumber daya alam yang melimpah. Tanahnya subur, tapi ironis pertaniannya malah tidak lebih baik dari negara tetangganya. Sudah banyak kata sindiran ditulis namun tujuh puluh tiga tahun merdeka pertanian tidak banyak berubah. Sistem mengolah, menanam, sampai memanen seperti berjalan di tempat. Jika di Amerika petani sudah menenteng laptop dan pegangannya GPS, di negara kita masih saja mengayunkan cangkul. Tidak heran jika profesi ini semakin hari semakin ditinggalkan. Kebanyakan orangtua petani pun tidak ingin anaknya nanti berprofesi seperti mereka. Bagaimana regenerasi petani bisa dilakukan jika fakta di lapangan seperti itu?<\\/p>\\r\\n\\r\\n<p>Mungkin tidak pernah mendengar ada anak yang bercita-cita menjadi petani. Umumnya mereka bercita-cita menjadi dokter, polisi, yang penting di kantor, tidak kotor. Kotor identik dengan keterbelakangan. Bahkan mahasiswa Jurusan Pertanian sekalipun ketika lulus memilih menjadi karyawan. Ini menjadi tanda paling sederhana bahwa menjadi petani bukan sesuatu yang diharapkan --bukan profesi prestisius, apalagi menjanjikan. Kebanyakan petani adalah mereka yang &quot;kalah&quot; dalam persaingan bursa kerja --terpaksa daripada tidak bekerja. Akhirnya kualitas pertanian pun tidak pernah berkembang, karena ilmu yang dipakai tidak pernah di-upgrade. Bertani hanya sekadar menyambung hidup. Tanpa ada keinginan untuk mencari dan melakukan cara lain yang lebih modern.<\\/p>\\r\\n\\r\\n<p>Data memperlihatkan bahwa jumlah petani setiap tahunnya selalu menurun sekitar 1,1 persen, tanpa ada penambahan yang signifikan di kelompok usia muda. Data BPS dari hasil survei pertanian antarsensus 2018 menunjukkan hampir 70 persen petani adalah kelompok umur 45 tahun ke atas. Berkurangnya jumlah petani juga diikuti dengan luas lahan pertanian yang semakin menyusut setiap tahunnya karena alih fungsi.<\\/p>\\r\\n\\r\\n<p>Regenerasi sudah lama tidak berjalan, ditambah label di masyarakat tentang petani membuat anak muda maju-mundur untuk menjadi petani. Seorang sarjana pertanian memiliki ilmu tentang bertani, tapi tidak memiliki mental untuk menjadi petani. Sebenarnya tidak menjadi masalah yang terlalu serius jumlah petani semakin menyusut jika yang tersisa adalah petani yang memiliki keinginan besar dalam bidang pertanian. Orang-orang yang memiliki passion dalam bidang mana pun akan selalu berupaya. Melalui orang-orang seperti ini pertanian akan maju. Tapi, seberapa banyak orang yang memiliki passion di pertanian?<\\/p>\\r\\n\\r\\n<p>Menjadi tugas kita semua sebagai masyarakat untuk turut mendukung pertanian agar lebih maju. Salah satu caranya dengan menghapus gambaran kurang baik tentang petani. Paling tidak, kita tidak menjadi bagian yang menjatuhkan ketika seorang sarjana yang kata orang sudah sekolah tinggi-tinggi memutuskan untuk menjadi petani. Walaupun sebenarnya gambaran ini muncul lebih dikarenakan ketiadaan bukti petani yang berhasil melalui ilmu dan teknologi. Petani kita masih identik dengan pendidikan rendah dan kemiskinan. Selama ini gambaran tentang petani adalah mereka dengan pendidikan rendah dan hidup di bawah garis kemiskinan. Walaupun tidak sedikit yang sukses dan menjadi kaya, tetapi kalangan ini pun belum menarik minat generasi muda. Lagi-lagi petani yang sukses ini tidak lebih baik secara pendidikan. Keberhasilan mereka identik dengan kerja keras menggunakan otot. Sehingga terlihat masih kurang keren di mata anak muda.<\\/p>\\r\\n\\r\\n<p>Tugas untuk menghapus gambaran kurang baik tentang petani akan lebih mudah jika petaninya itu sendiri yang berubah. Salah satunya melalui petani-petani muda yang saya sebutkan tadi. Mereka memiliki kemauan dan passion di bidang pertanian. Mereka menghargai profesi pertanian. Dengan begitu kita berharap beberapa tahun ke depan akan muncul petani-petani sukses yang tentengannya laptop, bukan pacul --yang cara kerjanya dengan penerapan teknologi. Sehingga akan menggugah minat generasi selanjutnya. Maka regenerasi petani diharapkan akan tumbuh.<\\/p>\\r\\n\\r\\n<p>Pemerintah juga memiliki peran yang tidak kalah penting. Desa yang maju akan memudahkan petaninya. Desa yang maju adalah desa yang memiliki infrastruktur dasar yang baik, seperti fasilitas jalan yang baik, air bersih yang memadai, dan listrik. Di sinilah pemerintah hadir untuk menyediakan infrastruktur dasar yang lengkap.<\\/p>\\r\\n\\r\\n<p>Dengan begitu kita berharap di masa yang akan datang akan banyak anak muda yang bercita-cita menjadi seorang petani. Menumbuhkan kembali minat pertanian yang sebenarnya sangat cocok di alam Indonesia. Menumbuhkan semangat berdikari yang sampai hari ini masih menjadi slogan manis pemecut semangat. Sehingga lirik lagu kondang era 1970-an milik Koes Plus, &quot;Orang bilang tanah kita tanah surga, tongkat kayu dan batu jadi tanaman,&quot; tidak sekadar ironi di tanah subur yang hasil pertaniannya sendiri harus impor<\\/p>\",\"source\":\"- Admin Redaksi AHP\",\"_token\":\"uqIRKUEYFWwKKq6qwTKptiKZJzUAFuR9wLyu80G0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/news\"}', '2019-03-16 13:58:34', '2019-03-16 13:58:34'),
(1755, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-16 13:58:35', '2019-03-16 13:58:35'),
(1756, 1, 'admin/auth/news/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 13:58:50', '2019-03-16 13:58:50'),
(1757, 1, 'admin/auth/news/2', 'PUT', '127.0.0.1', '{\"title\":\"Petani lampung hasilkan 50 ton merah\",\"description\":\"<p>Bandar Lampung (05 Feb 2019)&nbsp;Tidak banyak pemuda yang bercita-cita menjadi petani. Kelompok kecil ini, yang benar-benar menjadikan pertanian sebagai passion dan mata pencaharian utama, mulai muncul ke permukaan. Geliatnya sudah mulai terasa terutama di media-media sosial, tempat mereka berbagi ilmu pertanian berdasarkan trial dan error.<\\/p>\\r\\n\\r\\n<p>dilakukan untuk mendukung kebijakan di bidang pertanian. Teknologi dibuat untuk mendukung pertanian. Maka tidak heran jika hari ini mereka menguasai ekspor pertanian dunia. Perdesaan yang perekonomiannya bercorak pertanian tidak seharusnya berubah menjadi perkotaan yang bercorak industri dan jasa untuk menjadi daerah yang maju. Desa bisa menjadi pendukung yang baik bagi kota. Begitupun sebaliknya. Desa bisa tumbuh, berkembang, dan maju setara dengan kota tanpa harus beralih menjadi daerah yang bercorak industri dan jasa. Profesi petani bisa setara dengan profesi lainnya terutama di bidang industri dan jasa. Pertanian tidak bisa tergantikan. Negara tanpa sistem pertanian yang baik akan selalu tergantung kepada negara lain. Indonesia memiliki sumber daya alam yang melimpah. Tanahnya subur, tapi ironis pertaniannya malah tidak lebih baik dari negara tetangganya. Sudah banyak kata sindiran ditulis namun tujuh puluh tiga tahun merdeka pertanian tidak banyak berubah. Sistem mengolah, menanam, sampai memanen seperti berjalan di tempat. Jika di Amerika petani sudah menenteng laptop dan pegangannya GPS, di negara kita masih saja mengayunkan cangkul. Tidak heran jika profesi ini semakin hari semakin ditinggalkan. Kebanyakan orangtua petani pun tidak ingin anaknya nanti berprofesi seperti mereka. Bagaimana regenerasi petani bisa dilakukan jika fakta di lapangan seperti itu?<\\/p>\\r\\n\\r\\n<p>Mungkin tidak pernah mendengar ada anak yang bercita-cita menjadi petani. Umumnya mereka bercita-cita menjadi dokter, polisi, yang penting di kantor, tidak kotor. Kotor identik dengan keterbelakangan. Bahkan mahasiswa Jurusan Pertanian sekalipun ketika lulus memilih menjadi karyawan. Ini menjadi tanda paling sederhana bahwa menjadi petani bukan sesuatu yang diharapkan --bukan profesi prestisius, apalagi menjanjikan. Kebanyakan petani adalah mereka yang &quot;kalah&quot; dalam persaingan bursa kerja --terpaksa daripada tidak bekerja. Akhirnya kualitas pertanian pun tidak pernah berkembang, karena ilmu yang dipakai tidak pernah di-upgrade. Bertani hanya sekadar menyambung hidup. Tanpa ada keinginan untuk mencari dan melakukan cara lain yang lebih modern.<\\/p>\\r\\n\\r\\n<p>Data memperlihatkan bahwa jumlah petani setiap tahunnya selalu menurun sekitar 1,1 persen, tanpa ada penambahan yang signifikan di kelompok usia muda. Data BPS dari hasil survei pertanian antarsensus 2018 menunjukkan hampir 70 persen petani adalah kelompok umur 45 tahun ke atas. Berkurangnya jumlah petani juga diikuti dengan luas lahan pertanian yang semakin menyusut setiap tahunnya karena alih fungsi.<\\/p>\\r\\n\\r\\n<p>Regenerasi sudah lama tidak berjalan, ditambah label di masyarakat tentang petani membuat anak muda maju-mundur untuk menjadi petani. Seorang sarjana pertanian memiliki ilmu tentang bertani, tapi tidak memiliki mental untuk menjadi petani. Sebenarnya tidak menjadi masalah yang terlalu serius jumlah petani semakin menyusut jika yang tersisa adalah petani yang memiliki keinginan besar dalam bidang pertanian. Orang-orang yang memiliki passion dalam bidang mana pun akan selalu berupaya. Melalui orang-orang seperti ini pertanian akan maju. Tapi, seberapa banyak orang yang memiliki passion di pertanian?<\\/p>\\r\\n\\r\\n<p>Menjadi tugas kita semua sebagai masyarakat untuk turut mendukung pertanian agar lebih maju. Salah satu caranya dengan menghapus gambaran kurang baik tentang petani. Paling tidak, kita tidak menjadi bagian yang menjatuhkan ketika seorang sarjana yang kata orang sudah sekolah tinggi-tinggi memutuskan untuk menjadi petani. Walaupun sebenarnya gambaran ini muncul lebih dikarenakan ketiadaan bukti petani yang berhasil melalui ilmu dan teknologi. Petani kita masih identik dengan pendidikan rendah dan kemiskinan. Selama ini gambaran tentang petani adalah mereka dengan pendidikan rendah dan hidup di bawah garis kemiskinan. Walaupun tidak sedikit yang sukses dan menjadi kaya, tetapi kalangan ini pun belum menarik minat generasi muda. Lagi-lagi petani yang sukses ini tidak lebih baik secara pendidikan. Keberhasilan mereka identik dengan kerja keras menggunakan otot. Sehingga terlihat masih kurang keren di mata anak muda.<\\/p>\\r\\n\\r\\n<p>Tugas untuk menghapus gambaran kurang baik tentang petani akan lebih mudah jika petaninya itu sendiri yang berubah. Salah satunya melalui petani-petani muda yang saya sebutkan tadi. Mereka memiliki kemauan dan passion di bidang pertanian. Mereka menghargai profesi pertanian. Dengan begitu kita berharap beberapa tahun ke depan akan muncul petani-petani sukses yang tentengannya laptop, bukan pacul --yang cara kerjanya dengan penerapan teknologi. Sehingga akan menggugah minat generasi selanjutnya. Maka regenerasi petani diharapkan akan tumbuh.<\\/p>\\r\\n\\r\\n<p>Pemerintah juga memiliki peran yang tidak kalah penting. Desa yang maju akan memudahkan petaninya. Desa yang maju adalah desa yang memiliki infrastruktur dasar yang baik, seperti fasilitas jalan yang baik, air bersih yang memadai, dan listrik. Di sinilah pemerintah hadir untuk menyediakan infrastruktur dasar yang lengkap.<\\/p>\\r\\n\\r\\n<p>Dengan begitu kita berharap di masa yang akan datang akan banyak anak muda yang bercita-cita menjadi seorang petani. Menumbuhkan kembali minat pertanian yang sebenarnya sangat cocok di alam Indonesia. Menumbuhkan semangat berdikari yang sampai hari ini masih menjadi slogan manis pemecut semangat. Sehingga lirik lagu kondang era 1970-an milik Koes Plus, &quot;Orang bilang tanah kita tanah surga, tongkat kayu dan batu jadi tanaman,&quot; tidak sekadar ironi di tanah subur yang hasil pertaniannya sendiri harus impor<\\/p>\",\"source\":\"- Admin Redaksi AHP\",\"_token\":\"uqIRKUEYFWwKKq6qwTKptiKZJzUAFuR9wLyu80G0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/news\"}', '2019-03-16 13:59:05', '2019-03-16 13:59:05'),
(1758, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-16 13:59:05', '2019-03-16 13:59:05'),
(1759, 1, 'admin/auth/news/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 14:00:09', '2019-03-16 14:00:09'),
(1760, 1, 'admin/auth/news/2', 'PUT', '127.0.0.1', '{\"title\":\"4 Desa Di Lampung Panen Besar\",\"description\":\"<p>Kembali Panen, Empat Desa di Kecamatan Trimurjo Kabupaten Lampung Tengah<\\/p>\\r\\n\\r\\n<p>Kegiatan panen di Provinsi Lampung tanggal 17 Januari 2018, berada di empat desa di Kecamatan Trimurjo Kabupaten Lampung Tengah.<\\/p>\\r\\n\\r\\n<p>Desa Pujo Dadi Kecamatan Trimurjo Kabupaten Lampung Tengah, dilakukan panen luas 4 ha dari luas hamparan pertanaman padi 50 ha dengan harga gabah di tingkat petani Rp 5600\\/ kg GKP. Varietas yang di panen Padi Hibrida MNC dengan provitas 7.8 ton GKP.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"https:\\/\\/ptandallhasaprima.com\\/wp-content\\/uploads\\/2018\\/01\\/26733823_281497322377285_4555009961465596391_n.jpg\\\" style=\\\"height:720px; width:960px\\\" \\/><\\/p>\\r\\n\\r\\n<p>Desa Pujo Basuki Kec. Trimurjo Kab Lampung Tengah, dilakukan panen seluas 10 ha dari luas 100 hamparan pertanaman padi. Panen denga 4 unit combine dan beberapa sintok. Varietas yang di tanam Ciherang dengan provitas 7.2 ton \\/ha GKP. Harga gabah ditingkat petani Rp 5600\\/kg GKP.<\\/p>\\r\\n\\r\\n<p>Desa Pujo Asri Kec. Trimurjo Kab.Lampung Tengah, dilakukan panen 5 ha dari luasan hamparan padi 50 ha. Harga gabah di tingkat petani Rp 5800 \\/kg GKP provitas : 7.8 ton \\/ha. Panen di lakukan dengan dua unit combine harvester dan beberapa mesin perontok.<\\/p>\\r\\n\\r\\n<p>Desa Untoro Kec Trimurjo Kab. Lampung Tengah, panen dilakukan pada area 5 ha dari hamparan pertanaman padi luas 250 ha Varietas Inpari 30 dg provitas 7.2 ton\\/ha GKP dan harga gabah Rp 5800\\/kg GKP.<\\/p>\\r\\n\\r\\n<p><a href=\\\"https:\\/\\/www.facebook.com\\/hashtag\\/panenpanenpanen?source=feed_text&amp;story_id=281497845710566\\\">#PanenPanenPanen<\\/a><br \\/>\\r\\n<a href=\\\"https:\\/\\/www.facebook.com\\/hashtag\\/nusantarapanen?source=feed_text&amp;story_id=281497845710566\\\">#NusantaraPanen<\\/a><\\/p>\",\"source\":\"https:\\/\\/www.facebook.com\\/Balai-Pengkajian-Teknologi-Pertanian-Lampung-281093262417691\\/?hc_ref=ARR7-cBlvUD-HsY1IGo8X9LKlL9SNqNuT98AqAu_mACGPijzB_SROjB0Ounn1CIku70\",\"_token\":\"uqIRKUEYFWwKKq6qwTKptiKZJzUAFuR9wLyu80G0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/news\"}', '2019-03-16 14:02:14', '2019-03-16 14:02:14'),
(1761, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-16 14:02:14', '2019-03-16 14:02:14'),
(1762, 1, 'admin/auth/news/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 14:02:39', '2019-03-16 14:02:39'),
(1763, 1, 'admin/auth/news/2', 'PUT', '127.0.0.1', '{\"title\":\"4 Desa Di Lampung Panen Besar\",\"description\":\"<p>Kembali Panen, Empat Desa di Kecamatan Trimurjo Kabupaten Lampung Tengah<\\/p>\\r\\n\\r\\n<p>Kegiatan panen di Provinsi Lampung tanggal 17 Januari 2018, berada di empat desa di Kecamatan Trimurjo Kabupaten Lampung Tengah.<\\/p>\\r\\n\\r\\n<p>Desa Pujo Dadi Kecamatan Trimurjo Kabupaten Lampung Tengah, dilakukan panen luas 4 ha dari luas hamparan pertanaman padi 50 ha dengan harga gabah di tingkat petani Rp 5600\\/ kg GKP. Varietas yang di panen Padi Hibrida MNC dengan provitas 7.8 ton GKP.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"https:\\/\\/ptandallhasaprima.com\\/wp-content\\/uploads\\/2018\\/01\\/26733823_281497322377285_4555009961465596391_n.jpg\\\" style=\\\"height:720px; width:960px\\\" \\/><\\/p>\\r\\n\\r\\n<p>Desa Pujo Basuki Kec. Trimurjo Kab Lampung Tengah, dilakukan panen seluas 10 ha dari luas 100 hamparan pertanaman padi. Panen denga 4 unit combine dan beberapa sintok. Varietas yang di tanam Ciherang dengan provitas 7.2 ton \\/ha GKP. Harga gabah ditingkat petani Rp 5600\\/kg GKP.<\\/p>\\r\\n\\r\\n<p>Desa Pujo Asri Kec. Trimurjo Kab.Lampung Tengah, dilakukan panen 5 ha dari luasan hamparan padi 50 ha. Harga gabah di tingkat petani Rp 5800 \\/kg GKP provitas : 7.8 ton \\/ha. Panen di lakukan dengan dua unit combine harvester dan beberapa mesin perontok.<\\/p>\\r\\n\\r\\n<p>Desa Untoro Kec Trimurjo Kab. Lampung Tengah, panen dilakukan pada area 5 ha dari hamparan pertanaman padi luas 250 ha Varietas Inpari 30 dg provitas 7.2 ton\\/ha GKP dan harga gabah Rp 5800\\/kg GKP.<\\/p>\\r\\n\\r\\n<p><a href=\\\"https:\\/\\/www.facebook.com\\/hashtag\\/panenpanenpanen?source=feed_text&amp;story_id=281497845710566\\\">#PanenPanenPanen<\\/a><br \\/>\\r\\n<a href=\\\"https:\\/\\/www.facebook.com\\/hashtag\\/nusantarapanen?source=feed_text&amp;story_id=281497845710566\\\">#NusantaraPanen<\\/a><\\/p>\",\"source\":\"https:\\/\\/www.facebook.com\\/Balai-Pengkajian-Teknologi-Pertanian-Lampung-281093262417691\\/?hc_ref=ARR7-cBlvUD-HsY1IGo8X9LKlL9SNqNuT98AqAu_mACGPijzB_SROjB0Ounn1CIku70\",\"_token\":\"uqIRKUEYFWwKKq6qwTKptiKZJzUAFuR9wLyu80G0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/news\"}', '2019-03-16 14:03:42', '2019-03-16 14:03:42'),
(1764, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-16 14:03:42', '2019-03-16 14:03:42'),
(1765, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-16 23:49:04', '2019-03-16 23:49:04'),
(1766, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 23:49:16', '2019-03-16 23:49:16'),
(1767, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 23:49:27', '2019-03-16 23:49:27'),
(1768, 1, 'admin/auth/product-groups', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 23:49:32', '2019-03-16 23:49:32'),
(1769, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 23:49:56', '2019-03-16 23:49:56'),
(1770, 1, 'admin/auth/news', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 23:50:40', '2019-03-16 23:50:40'),
(1771, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-16 23:51:36', '2019-03-16 23:51:36'),
(1772, 1, 'admin/auth/about-us', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 23:51:40', '2019-03-16 23:51:40'),
(1773, 1, 'admin/auth/about-us/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-16 23:51:43', '2019-03-16 23:51:43');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1774, 1, 'admin/auth/about-us/1', 'PUT', '127.0.0.1', '{\"deskripsi\":\"<p>PT. Andall Hasa Prima didirikan di Bandar Lampung pada tanggal 23 Agustus 1999 oleh 3 orang pendiri yaitu: Ir. Poedjoasmoro, Zakaria Halim dan Ir. Achmad Lutfi. Bidang Usaha PT. Andall Hasa Prima mencakup; Bidang Perdagangan umum, pengembangan pertanian dan pengadaan industri. Aktifitas perseroan saat ini adalah sebagai distributor pestisida, pemegang merk pestisida, benih dan alat alat pertanian. PT Andall Hasa Prima merupakan distributor pestisida dan importir alat-alat pertanian yang kian melebarkan sayap menjangkau berbagai pasar bidang pertanian di sejumlah daerah dan kota di Indonesia<\\/p>\",\"_token\":\"yiwo2t7mXW7YIMxwJlck8JxhE5ISamLppuRbzLyu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/about-us\"}', '2019-03-16 23:51:47', '2019-03-16 23:51:47'),
(1775, 1, 'admin/auth/about-us', 'GET', '127.0.0.1', '[]', '2019-03-16 23:51:47', '2019-03-16 23:51:47'),
(1776, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-17 01:06:11', '2019-03-17 01:06:11'),
(1777, 1, 'admin/auth/our-partner', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-17 01:06:38', '2019-03-17 01:06:38'),
(1778, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-17 01:06:49', '2019-03-17 01:06:49'),
(1779, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-17 01:07:30', '2019-03-17 01:07:30'),
(1780, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-17 01:07:36', '2019-03-17 01:07:36'),
(1781, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"22\",\"title\":\"Testimonial\",\"icon\":\"fa-quote-left\",\"uri\":\"auth\\/testimonial\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"yiwo2t7mXW7YIMxwJlck8JxhE5ISamLppuRbzLyu\"}', '2019-03-17 01:09:24', '2019-03-17 01:09:24'),
(1782, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-17 01:09:25', '2019-03-17 01:09:25'),
(1783, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"22\",\"title\":\"Album Family\",\"icon\":\"fa-file-picture-o\",\"uri\":\"auth\\/album-family\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"yiwo2t7mXW7YIMxwJlck8JxhE5ISamLppuRbzLyu\"}', '2019-03-17 01:10:14', '2019-03-17 01:10:14'),
(1784, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-17 01:10:14', '2019-03-17 01:10:14'),
(1785, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-17 01:10:20', '2019-03-17 01:10:20'),
(1786, 1, 'admin/auth/testimonial', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-17 01:10:26', '2019-03-17 01:10:26'),
(1787, 1, 'admin/auth/testimonial/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-17 01:10:29', '2019-03-17 01:10:29'),
(1788, 1, 'admin/auth/testimonial', 'POST', '127.0.0.1', '{\"nama\":\"Rindang Ramadhan\",\"jenis_kelamin\":\"1\",\"pesan\":\"Rindangakfad a skdlas ad asd\",\"_token\":\"yiwo2t7mXW7YIMxwJlck8JxhE5ISamLppuRbzLyu\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/testimonial\"}', '2019-03-17 01:10:59', '2019-03-17 01:10:59'),
(1789, 1, 'admin/auth/testimonial/create', 'GET', '127.0.0.1', '[]', '2019-03-17 01:11:00', '2019-03-17 01:11:00'),
(1790, 1, 'admin/auth/testimonial/create', 'GET', '127.0.0.1', '[]', '2019-03-17 01:11:22', '2019-03-17 01:11:22'),
(1791, 1, 'admin/auth/testimonial', 'POST', '127.0.0.1', '{\"nama\":\"Rindang Ramadhan\",\"jenis_kelamin\":\"1\",\"pesan\":\"Riandkas a sd a\",\"_token\":\"yiwo2t7mXW7YIMxwJlck8JxhE5ISamLppuRbzLyu\"}', '2019-03-17 01:11:34', '2019-03-17 01:11:34'),
(1792, 1, 'admin/auth/testimonial/create', 'GET', '127.0.0.1', '[]', '2019-03-17 01:11:35', '2019-03-17 01:11:35'),
(1793, 1, 'admin/auth/testimonial/create', 'GET', '127.0.0.1', '[]', '2019-03-17 01:14:59', '2019-03-17 01:14:59'),
(1794, 1, 'admin/auth/testimonial', 'POST', '127.0.0.1', '{\"nama\":\"Rindang Ramadhan\",\"jenis_kelamin\":\"1\",\"pesan\":\"asd asd asd asd\",\"_token\":\"yiwo2t7mXW7YIMxwJlck8JxhE5ISamLppuRbzLyu\"}', '2019-03-17 01:15:09', '2019-03-17 01:15:09'),
(1795, 1, 'admin/auth/testimonial', 'GET', '127.0.0.1', '[]', '2019-03-17 01:15:10', '2019-03-17 01:15:10'),
(1796, 1, 'admin/auth/album-family', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-17 01:15:47', '2019-03-17 01:15:47'),
(1797, 1, 'admin/auth/album-family/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-17 01:15:49', '2019-03-17 01:15:49'),
(1798, 1, 'admin/auth/album-family', 'POST', '127.0.0.1', '{\"_token\":\"yiwo2t7mXW7YIMxwJlck8JxhE5ISamLppuRbzLyu\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/album-family\"}', '2019-03-17 01:16:00', '2019-03-17 01:16:00'),
(1799, 1, 'admin/auth/album-family', 'GET', '127.0.0.1', '[]', '2019-03-17 01:16:00', '2019-03-17 01:16:00'),
(1800, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-17 02:12:24', '2019-03-17 02:12:24'),
(1801, 1, 'admin/auth/album-family', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-17 02:25:41', '2019-03-17 02:25:41'),
(1802, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-17 02:25:56', '2019-03-17 02:25:56'),
(1803, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-17 02:36:21', '2019-03-17 02:36:21'),
(1804, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-17 02:40:40', '2019-03-17 02:40:40'),
(1805, 1, 'admin/auth/testimonial', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-17 02:45:36', '2019-03-17 02:45:36'),
(1806, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-17 02:52:41', '2019-03-17 02:52:41'),
(1807, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-17 02:52:46', '2019-03-17 02:52:46'),
(1808, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-17 02:53:04', '2019-03-17 02:53:04'),
(1809, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2019-03-17 02:53:08', '2019-03-17 02:53:08'),
(1810, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-18 06:12:35', '2019-03-18 06:12:35'),
(1811, 1, 'admin/auth/privacy-policy', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-18 06:12:48', '2019-03-18 06:12:48'),
(1812, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-21 01:30:56', '2019-03-21 01:30:56'),
(1813, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-21 01:31:08', '2019-03-21 01:31:08'),
(1814, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-21 01:31:14', '2019-03-21 01:31:14'),
(1815, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-21 04:18:55', '2019-03-21 04:18:55'),
(1816, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-22 05:46:35', '2019-03-22 05:46:35'),
(1817, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-22 05:48:52', '2019-03-22 05:48:52'),
(1818, 1, 'admin/auth/pengunjung', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 05:48:59', '2019-03-22 05:48:59'),
(1819, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-22 05:49:15', '2019-03-22 05:49:15'),
(1820, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 05:52:02', '2019-03-22 05:52:02'),
(1821, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Contact Us\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"wte6VrVWeKwSsU66uJF3R6laATCos8YHdePgWISN\"}', '2019-03-22 05:53:27', '2019-03-22 05:53:27'),
(1822, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-22 05:53:28', '2019-03-22 05:53:28'),
(1823, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":null,\"icon\":\"fa-phone-square\",\"uri\":null,\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"wte6VrVWeKwSsU66uJF3R6laATCos8YHdePgWISN\"}', '2019-03-22 05:54:35', '2019-03-22 05:54:35'),
(1824, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-22 05:54:36', '2019-03-22 05:54:36'),
(1825, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Contact Us\",\"icon\":\"fa-phone-square\",\"uri\":null,\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"wte6VrVWeKwSsU66uJF3R6laATCos8YHdePgWISN\"}', '2019-03-22 05:54:45', '2019-03-22 05:54:45'),
(1826, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-22 05:54:45', '2019-03-22 05:54:45'),
(1827, 1, 'admin/auth/menu/29', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"wte6VrVWeKwSsU66uJF3R6laATCos8YHdePgWISN\"}', '2019-03-22 05:54:52', '2019-03-22 05:54:52'),
(1828, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 05:54:53', '2019-03-22 05:54:53'),
(1829, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"30\",\"title\":\"Profile\",\"icon\":\"fa-building\",\"uri\":\"auth\\/contact-profile\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"wte6VrVWeKwSsU66uJF3R6laATCos8YHdePgWISN\"}', '2019-03-22 05:56:40', '2019-03-22 05:56:40'),
(1830, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-22 05:56:41', '2019-03-22 05:56:41'),
(1831, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"30\",\"title\":\"Support\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"wte6VrVWeKwSsU66uJF3R6laATCos8YHdePgWISN\"}', '2019-03-22 05:57:02', '2019-03-22 05:57:02'),
(1832, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-22 05:57:02', '2019-03-22 05:57:02'),
(1833, 1, 'admin/auth/menu/32/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 05:57:07', '2019-03-22 05:57:07'),
(1834, 1, 'admin/auth/menu/32', 'PUT', '127.0.0.1', '{\"parent_id\":\"30\",\"title\":\"Support\",\"icon\":\"fa-twitch\",\"uri\":\"auth\\/contact-support\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"wte6VrVWeKwSsU66uJF3R6laATCos8YHdePgWISN\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-03-22 05:58:35', '2019-03-22 05:58:35'),
(1835, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-22 05:58:36', '2019-03-22 05:58:36'),
(1836, 1, 'admin/auth/contact-profile', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 05:58:54', '2019-03-22 05:58:54'),
(1837, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 05:59:53', '2019-03-22 05:59:53'),
(1838, 1, 'admin/auth/contact-profile', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 05:59:55', '2019-03-22 05:59:55'),
(1839, 1, 'admin/auth/contact-profile/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:01:39', '2019-03-22 06:01:39'),
(1840, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:03:38', '2019-03-22 06:03:38'),
(1841, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:03:44', '2019-03-22 06:03:44'),
(1842, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:04:05', '2019-03-22 06:04:05'),
(1843, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"auth.contact\",\"name\":null,\"http_method\":[null],\"http_path\":null,\"_token\":\"wte6VrVWeKwSsU66uJF3R6laATCos8YHdePgWISN\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2019-03-22 06:04:20', '2019-03-22 06:04:20'),
(1844, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2019-03-22 06:04:20', '2019-03-22 06:04:20'),
(1845, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"auth.contact\",\"name\":\"Auth Contact\",\"http_method\":[null],\"http_path\":\"\\/auth\",\"_token\":\"wte6VrVWeKwSsU66uJF3R6laATCos8YHdePgWISN\"}', '2019-03-22 06:04:41', '2019-03-22 06:04:41'),
(1846, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-22 06:04:42', '2019-03-22 06:04:42'),
(1847, 1, 'admin/auth/permissions/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:04:50', '2019-03-22 06:04:50'),
(1848, 1, 'admin/auth/permissions/9', 'PUT', '127.0.0.1', '{\"slug\":\"auth.contact\",\"name\":\"Auth Contact\",\"http_method\":[null],\"http_path\":\"\\/auth\\/contact-profile*\\r\\n\\/auth\\/contact-support*\",\"_token\":\"wte6VrVWeKwSsU66uJF3R6laATCos8YHdePgWISN\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2019-03-22 06:05:16', '2019-03-22 06:05:16'),
(1849, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-22 06:05:17', '2019-03-22 06:05:17'),
(1850, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:05:37', '2019-03-22 06:05:37'),
(1851, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:05:41', '2019-03-22 06:05:41'),
(1852, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"owner\",\"name\":\"Owner\",\"permissions\":[\"2\",\"3\",\"4\",\"6\",\"7\",\"8\",\"9\",null],\"_token\":\"wte6VrVWeKwSsU66uJF3R6laATCos8YHdePgWISN\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2019-03-22 06:05:53', '2019-03-22 06:05:53'),
(1853, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-03-22 06:05:54', '2019-03-22 06:05:54'),
(1854, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-03-22 06:06:00', '2019-03-22 06:06:00'),
(1855, 1, 'admin/auth/contact-profile', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:06:10', '2019-03-22 06:06:10'),
(1856, 1, 'admin/auth/contact-profile/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:06:21', '2019-03-22 06:06:21'),
(1857, 1, 'admin/auth/contact-profile/create', 'GET', '127.0.0.1', '[]', '2019-03-22 06:06:52', '2019-03-22 06:06:52'),
(1858, 1, 'admin/auth/contact-profile', 'POST', '127.0.0.1', '{\"info\":\"<p>Anda dapat mengunjungi kami untuk informasi lebih lanjut.<\\/p>\",\"alamat\":\"<p>Jl. Raya Hajimena No. 6 Pemanggilan Natar Lampung Selatan 35362<\\/p>\",\"_token\":\"wte6VrVWeKwSsU66uJF3R6laATCos8YHdePgWISN\"}', '2019-03-22 06:13:01', '2019-03-22 06:13:01'),
(1859, 1, 'admin/auth/contact-profile', 'GET', '127.0.0.1', '[]', '2019-03-22 06:13:01', '2019-03-22 06:13:01'),
(1860, 1, 'admin/auth/contact-profile/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:13:27', '2019-03-22 06:13:27'),
(1861, 1, 'admin/auth/contact-profile', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:13:33', '2019-03-22 06:13:33'),
(1862, 1, 'admin/auth/contact-profile/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:13:37', '2019-03-22 06:13:37'),
(1863, 1, 'admin/auth/contact-profile', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:13:41', '2019-03-22 06:13:41'),
(1864, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:13:57', '2019-03-22 06:13:57'),
(1865, 1, 'admin/auth/menu/30/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:14:06', '2019-03-22 06:14:06'),
(1866, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:15:41', '2019-03-22 06:15:41'),
(1867, 1, 'admin/auth/menu/32/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:15:48', '2019-03-22 06:15:48'),
(1868, 1, 'admin/auth/menu/32', 'PUT', '127.0.0.1', '{\"parent_id\":\"30\",\"title\":\"Support\",\"icon\":\"fa-comments-o\",\"uri\":\"auth\\/contact-support\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"wte6VrVWeKwSsU66uJF3R6laATCos8YHdePgWISN\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-03-22 06:15:59', '2019-03-22 06:15:59'),
(1869, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-22 06:16:00', '2019-03-22 06:16:00'),
(1870, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"wte6VrVWeKwSsU66uJF3R6laATCos8YHdePgWISN\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":6},{\\\"id\\\":7},{\\\"id\\\":5},{\\\"id\\\":4}]},{\\\"id\\\":22,\\\"children\\\":[{\\\"id\\\":23},{\\\"id\\\":25},{\\\"id\\\":24},{\\\"id\\\":26},{\\\"id\\\":27},{\\\"id\\\":28}]},{\\\"id\\\":12,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":21},{\\\"id\\\":3}]},{\\\"id\\\":13,\\\"children\\\":[{\\\"id\\\":20},{\\\"id\\\":16},{\\\"id\\\":15},{\\\"id\\\":19},{\\\"id\\\":18},{\\\"id\\\":14}]},{\\\"id\\\":30,\\\"children\\\":[{\\\"id\\\":31},{\\\"id\\\":32}]}]\"}', '2019-03-22 06:16:33', '2019-03-22 06:16:33'),
(1871, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:16:34', '2019-03-22 06:16:34'),
(1872, 3, 'admin', 'GET', '192.168.1.22', '[]', '2019-03-22 06:30:50', '2019-03-22 06:30:50'),
(1873, 1, 'admin', 'GET', '192.168.1.18', '[]', '2019-03-22 06:30:57', '2019-03-22 06:30:57'),
(1874, 1, 'admin/auth/contact-profile', 'GET', '192.168.1.18', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:31:03', '2019-03-22 06:31:03'),
(1875, 1, 'admin', 'GET', '192.168.1.18', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:31:09', '2019-03-22 06:31:09'),
(1876, 1, 'admin', 'GET', '192.168.1.18', '[]', '2019-03-22 06:31:43', '2019-03-22 06:31:43'),
(1877, 1, 'admin', 'GET', '192.168.1.18', '[]', '2019-03-22 06:31:49', '2019-03-22 06:31:49'),
(1878, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-22 06:32:30', '2019-03-22 06:32:30'),
(1879, 1, 'admin/auth/contact-profile', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:33:12', '2019-03-22 06:33:12'),
(1880, 1, 'admin/auth/contact-support', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:33:14', '2019-03-22 06:33:14'),
(1881, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:33:18', '2019-03-22 06:33:18'),
(1882, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-22 06:33:38', '2019-03-22 06:33:38'),
(1883, 1, 'admin/auth/contact-support', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:33:48', '2019-03-22 06:33:48'),
(1884, 1, 'admin/auth/contact-support/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:34:06', '2019-03-22 06:34:06'),
(1885, 1, 'admin/auth/contact-support', 'POST', '127.0.0.1', '{\"nama\":\"Jhon Doe\",\"no_telp\":\"0721-784985\",\"whatsapp\":\"0852-6914-1777\",\"email\":\"jhondoe@gmail.com\",\"_token\":\"7nfJQo6RDCi9CUtCedltlSlvUdH5GpA2k8xd8gW9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/contact-support\"}', '2019-03-22 06:34:31', '2019-03-22 06:34:31'),
(1886, 1, 'admin/auth/contact-support', 'GET', '127.0.0.1', '[]', '2019-03-22 06:34:31', '2019-03-22 06:34:31'),
(1887, 1, 'admin/auth/contact-support/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:34:35', '2019-03-22 06:34:35'),
(1888, 1, 'admin/auth/contact-support', 'POST', '127.0.0.1', '{\"nama\":\"Lorem Ipsum\",\"no_telp\":\"0721-784985\",\"whatsapp\":\"0852-6914-1777\",\"email\":\"loremipsum@gmail.com\",\"_token\":\"7nfJQo6RDCi9CUtCedltlSlvUdH5GpA2k8xd8gW9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/contact-support\"}', '2019-03-22 06:35:27', '2019-03-22 06:35:27'),
(1889, 1, 'admin/auth/contact-support', 'GET', '127.0.0.1', '[]', '2019-03-22 06:35:27', '2019-03-22 06:35:27'),
(1890, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:38:08', '2019-03-22 06:38:08'),
(1891, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-22 06:39:43', '2019-03-22 06:39:43'),
(1892, 3, 'admin/auth/contact-profile', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:39:48', '2019-03-22 06:39:48'),
(1893, 3, 'admin/auth/contact-support', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:39:50', '2019-03-22 06:39:50'),
(1894, 3, 'admin/auth/contact-support', 'GET', '127.0.0.1', '[]', '2019-03-22 06:41:10', '2019-03-22 06:41:10'),
(1895, 3, 'admin/auth/contact-support', 'GET', '127.0.0.1', '{\"id\":null,\"nama\":\"Jhon Doe\",\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:41:16', '2019-03-22 06:41:16'),
(1896, 3, 'admin/auth/contact-support', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 06:41:18', '2019-03-22 06:41:18'),
(1897, 3, 'admin/auth/contact-profile', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 07:38:25', '2019-03-22 07:38:25'),
(1898, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 07:38:29', '2019-03-22 07:38:29'),
(1899, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-22 07:39:27', '2019-03-22 07:39:27'),
(1900, 1, 'admin/auth/contact-profile', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 07:39:42', '2019-03-22 07:39:42'),
(1901, 1, 'admin/auth/contact-profile/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 07:39:44', '2019-03-22 07:39:44'),
(1902, 1, 'admin/auth/contact-profile', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 08:45:19', '2019-03-22 08:45:19'),
(1903, 1, 'admin/auth/contact-profile', 'GET', '127.0.0.1', '[]', '2019-03-22 08:47:28', '2019-03-22 08:47:28'),
(1904, 1, 'admin/auth/contact-profile', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 08:48:52', '2019-03-22 08:48:52'),
(1905, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 08:49:01', '2019-03-22 08:49:01'),
(1906, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"Produk\",\"icon\":\"fa-cubes\",\"uri\":\"\\/auth\\/product\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"MQdm4qllpzHwbsVEkPxV86p5o78BQ2zOGQ6Y19WP\"}', '2019-03-22 08:50:00', '2019-03-22 08:50:00'),
(1907, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-22 08:50:01', '2019-03-22 08:50:01'),
(1908, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-22 08:50:04', '2019-03-22 08:50:04'),
(1909, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"MQdm4qllpzHwbsVEkPxV86p5o78BQ2zOGQ6Y19WP\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":6},{\\\"id\\\":7},{\\\"id\\\":5},{\\\"id\\\":4}]},{\\\"id\\\":22,\\\"children\\\":[{\\\"id\\\":23},{\\\"id\\\":25},{\\\"id\\\":24},{\\\"id\\\":26},{\\\"id\\\":27},{\\\"id\\\":28}]},{\\\"id\\\":12,\\\"children\\\":[{\\\"id\\\":33},{\\\"id\\\":10},{\\\"id\\\":21},{\\\"id\\\":3}]},{\\\"id\\\":13,\\\"children\\\":[{\\\"id\\\":20},{\\\"id\\\":16},{\\\"id\\\":15},{\\\"id\\\":19},{\\\"id\\\":18},{\\\"id\\\":14}]},{\\\"id\\\":30,\\\"children\\\":[{\\\"id\\\":31},{\\\"id\\\":32}]}]\"}', '2019-03-22 08:50:44', '2019-03-22 08:50:44'),
(1910, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 08:50:45', '2019-03-22 08:50:45'),
(1911, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-22 08:50:52', '2019-03-22 08:50:52'),
(1912, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 08:50:59', '2019-03-22 08:50:59'),
(1913, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 08:51:06', '2019-03-22 08:51:06'),
(1914, 1, 'admin/auth/menu/33/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 08:51:11', '2019-03-22 08:51:11'),
(1915, 1, 'admin/auth/menu/33', 'PUT', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"Produk\",\"icon\":\"fa-cubes\",\"uri\":\"\\/auth\\/products\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"MQdm4qllpzHwbsVEkPxV86p5o78BQ2zOGQ6Y19WP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-03-22 08:51:18', '2019-03-22 08:51:18'),
(1916, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-22 08:51:19', '2019-03-22 08:51:19'),
(1917, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-22 08:51:28', '2019-03-22 08:51:28'),
(1918, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 08:51:38', '2019-03-22 08:51:38'),
(1919, 1, 'admin/auth/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 08:51:42', '2019-03-22 08:51:42'),
(1920, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 08:56:28', '2019-03-22 08:56:28'),
(1921, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 08:56:31', '2019-03-22 08:56:31'),
(1922, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 08:56:36', '2019-03-22 08:56:36'),
(1923, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 08:56:44', '2019-03-22 08:56:44'),
(1924, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 08:56:46', '2019-03-22 08:56:46'),
(1925, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 08:56:59', '2019-03-22 08:56:59'),
(1926, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 08:57:01', '2019-03-22 08:57:01'),
(1927, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2019-03-22 09:01:37', '2019-03-22 09:01:37'),
(1928, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 09:01:48', '2019-03-22 09:01:48'),
(1929, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 09:01:57', '2019-03-22 09:01:57'),
(1930, 1, 'admin/auth/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 09:02:02', '2019-03-22 09:02:02'),
(1931, 1, 'admin/auth/products/create', 'GET', '127.0.0.1', '[]', '2019-03-22 09:03:04', '2019-03-22 09:03:04'),
(1932, 1, 'admin/auth/products/create', 'GET', '127.0.0.1', '[]', '2019-03-22 09:03:58', '2019-03-22 09:03:58'),
(1933, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 09:04:53', '2019-03-22 09:04:53'),
(1934, 1, 'admin/auth/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 09:04:58', '2019-03-22 09:04:58'),
(1935, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 09:05:10', '2019-03-22 09:05:10'),
(1936, 1, 'admin/auth/products/1', 'GET', '127.0.0.1', '[]', '2019-03-22 09:05:15', '2019-03-22 09:05:15'),
(1937, 1, 'admin/auth/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 09:05:18', '2019-03-22 09:05:18'),
(1938, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 09:05:33', '2019-03-22 09:05:33'),
(1939, 1, 'admin/auth/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 09:05:35', '2019-03-22 09:05:35'),
(1940, 1, 'admin/auth/products', 'POST', '127.0.0.1', '{\"product_name\":\"ANDALL 865 SL\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori\":\"2\",\"kelompok\":\"1\",\"_token\":\"MQdm4qllpzHwbsVEkPxV86p5o78BQ2zOGQ6Y19WP\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/products\"}', '2019-03-22 09:08:51', '2019-03-22 09:08:51'),
(1941, 1, 'admin/auth/products/create', 'GET', '127.0.0.1', '[]', '2019-03-22 09:08:51', '2019-03-22 09:08:51'),
(1942, 1, 'admin/auth/products', 'POST', '127.0.0.1', '{\"product_name\":\"ANDALL 865 SL\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori\":\"2\",\"kelompok\":\"1\",\"_token\":\"MQdm4qllpzHwbsVEkPxV86p5o78BQ2zOGQ6Y19WP\"}', '2019-03-22 09:09:29', '2019-03-22 09:09:29'),
(1943, 1, 'admin/auth/products/create', 'GET', '127.0.0.1', '[]', '2019-03-22 09:09:30', '2019-03-22 09:09:30'),
(1944, 1, 'admin/auth/products', 'POST', '127.0.0.1', '{\"product_name\":\"ANDALL 865 SL\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori\":\"2\",\"kelompok\":\"1\",\"_token\":\"MQdm4qllpzHwbsVEkPxV86p5o78BQ2zOGQ6Y19WP\"}', '2019-03-22 09:10:06', '2019-03-22 09:10:06'),
(1945, 1, 'admin/auth/products/create', 'GET', '127.0.0.1', '[]', '2019-03-22 09:10:07', '2019-03-22 09:10:07'),
(1946, 1, 'admin/auth/products', 'POST', '127.0.0.1', '{\"product_name\":\"ANDALL 865 SL\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori\":\"2\",\"kelompok\":\"1\",\"_token\":\"MQdm4qllpzHwbsVEkPxV86p5o78BQ2zOGQ6Y19WP\"}', '2019-03-22 09:10:23', '2019-03-22 09:10:23'),
(1947, 1, 'admin/auth/products/create', 'GET', '127.0.0.1', '[]', '2019-03-22 09:10:24', '2019-03-22 09:10:24'),
(1948, 1, 'admin/auth/products', 'POST', '127.0.0.1', '{\"product_name\":\"ANDALL 865 SL\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori\":\"2\",\"kelompok\":\"1\",\"_token\":\"MQdm4qllpzHwbsVEkPxV86p5o78BQ2zOGQ6Y19WP\"}', '2019-03-22 09:13:40', '2019-03-22 09:13:40'),
(1949, 1, 'admin/auth/products/create', 'GET', '127.0.0.1', '[]', '2019-03-22 09:13:41', '2019-03-22 09:13:41'),
(1950, 1, 'admin/auth/products', 'POST', '127.0.0.1', '{\"product_name\":\"ANDALL 865 SL\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori_id\":\"2\",\"kelompok_id\":\"1\",\"_token\":\"MQdm4qllpzHwbsVEkPxV86p5o78BQ2zOGQ6Y19WP\"}', '2019-03-22 09:14:02', '2019-03-22 09:14:02'),
(1951, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:14:03', '2019-03-22 09:14:03'),
(1952, 1, 'admin/auth/products/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"MQdm4qllpzHwbsVEkPxV86p5o78BQ2zOGQ6Y19WP\"}', '2019-03-22 09:14:08', '2019-03-22 09:14:08'),
(1953, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 09:14:08', '2019-03-22 09:14:08'),
(1954, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:15:08', '2019-03-22 09:15:08'),
(1955, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:16:03', '2019-03-22 09:16:03'),
(1956, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:20:24', '2019-03-22 09:20:24'),
(1957, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:21:26', '2019-03-22 09:21:26'),
(1958, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:21:45', '2019-03-22 09:21:45'),
(1959, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:24:22', '2019-03-22 09:24:22'),
(1960, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:24:45', '2019-03-22 09:24:45'),
(1961, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:25:46', '2019-03-22 09:25:46'),
(1962, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:26:32', '2019-03-22 09:26:32'),
(1963, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:26:44', '2019-03-22 09:26:44'),
(1964, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-22 09:26:51', '2019-03-22 09:26:51'),
(1965, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:33:33', '2019-03-22 09:33:33'),
(1966, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:33:41', '2019-03-22 09:33:41'),
(1967, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:34:07', '2019-03-22 09:34:07'),
(1968, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:34:13', '2019-03-22 09:34:13'),
(1969, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:34:17', '2019-03-22 09:34:17'),
(1970, 1, 'admin/auth/products/create', 'GET', '127.0.0.1', '[]', '2019-03-22 09:35:38', '2019-03-22 09:35:38'),
(1971, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 09:35:43', '2019-03-22 09:35:43'),
(1972, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-22 09:35:58', '2019-03-22 09:35:58'),
(1973, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-22 09:36:45', '2019-03-22 09:36:45'),
(1974, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 09:36:50', '2019-03-22 09:36:50'),
(1975, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:38:56', '2019-03-22 09:38:56'),
(1976, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-22 09:39:01', '2019-03-22 09:39:01'),
(1977, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:41:05', '2019-03-22 09:41:05'),
(1978, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:41:23', '2019-03-22 09:41:23'),
(1979, 1, 'admin/auth/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 09:41:26', '2019-03-22 09:41:26'),
(1980, 1, 'admin/auth/products/2', 'PUT', '127.0.0.1', '{\"product_name\":\"ANDALL 865 SL\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori_id\":\"2\",\"kelompok_id\":\"1\",\"_token\":\"MQdm4qllpzHwbsVEkPxV86p5o78BQ2zOGQ6Y19WP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/products\"}', '2019-03-22 09:41:31', '2019-03-22 09:41:31'),
(1981, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:41:32', '2019-03-22 09:41:32'),
(1982, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 09:41:51', '2019-03-22 09:41:51'),
(1983, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-22 09:44:13', '2019-03-22 09:44:13'),
(1984, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 09:44:24', '2019-03-22 09:44:24'),
(1985, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-22 09:44:24', '2019-03-22 09:44:24'),
(1986, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-22 09:44:41', '2019-03-22 09:44:41'),
(1987, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-22 09:50:22', '2019-03-22 09:50:22'),
(1988, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 09:50:30', '2019-03-22 09:50:30'),
(1989, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:50:48', '2019-03-22 09:50:48'),
(1990, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:50:57', '2019-03-22 09:50:57'),
(1991, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:51:32', '2019-03-22 09:51:32'),
(1992, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:55:53', '2019-03-22 09:55:53'),
(1993, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:56:11', '2019-03-22 09:56:11'),
(1994, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:56:48', '2019-03-22 09:56:48'),
(1995, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:57:04', '2019-03-22 09:57:04'),
(1996, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:57:09', '2019-03-22 09:57:09'),
(1997, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:59:31', '2019-03-22 09:59:31'),
(1998, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:59:34', '2019-03-22 09:59:34'),
(1999, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 09:59:48', '2019-03-22 09:59:48'),
(2000, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 10:00:02', '2019-03-22 10:00:02'),
(2001, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 10:00:28', '2019-03-22 10:00:28'),
(2002, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 10:00:47', '2019-03-22 10:00:47'),
(2003, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 10:03:27', '2019-03-22 10:03:27'),
(2004, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 10:03:50', '2019-03-22 10:03:50'),
(2005, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 10:04:00', '2019-03-22 10:04:00'),
(2006, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-03-22 10:20:39', '2019-03-22 10:20:39'),
(2007, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 10:20:45', '2019-03-22 10:20:45'),
(2008, 1, 'admin/auth/products/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 10:20:51', '2019-03-22 10:20:51'),
(2009, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 10:20:56', '2019-03-22 10:20:56'),
(2010, 1, 'admin/auth/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 10:20:58', '2019-03-22 10:20:58'),
(2011, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 10:22:19', '2019-03-22 10:22:19'),
(2012, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 10:22:20', '2019-03-22 10:22:20'),
(2013, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 10:22:21', '2019-03-22 10:22:21'),
(2014, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 10:22:48', '2019-03-22 10:22:48'),
(2015, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 10:23:08', '2019-03-22 10:23:08'),
(2016, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 10:23:20', '2019-03-22 10:23:20'),
(2017, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 10:23:36', '2019-03-22 10:23:36'),
(2018, 1, 'admin/auth/products/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 10:24:13', '2019-03-22 10:24:13'),
(2019, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 10:24:17', '2019-03-22 10:24:17'),
(2020, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 10:24:50', '2019-03-22 10:24:50'),
(2021, 1, 'admin/auth/products/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 10:24:53', '2019-03-22 10:24:53'),
(2022, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 10:24:58', '2019-03-22 10:24:58'),
(2023, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 10:25:24', '2019-03-22 10:25:24'),
(2024, 1, 'admin/auth/products/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 10:25:27', '2019-03-22 10:25:27'),
(2025, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 10:25:32', '2019-03-22 10:25:32'),
(2026, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 10:26:14', '2019-03-22 10:26:14'),
(2027, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 10:26:25', '2019-03-22 10:26:25'),
(2028, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-22 10:26:33', '2019-03-22 10:26:33'),
(2029, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 10:26:38', '2019-03-22 10:26:38'),
(2030, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 18:08:33', '2019-03-22 18:08:33'),
(2031, 1, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-22 18:12:45', '2019-03-22 18:12:45'),
(2032, 1, 'admin/auth/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 18:12:58', '2019-03-22 18:12:58'),
(2033, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 19:19:07', '2019-03-22 19:19:07'),
(2034, 1, 'admin/auth/benefit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 19:25:20', '2019-03-22 19:25:20'),
(2035, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 19:30:03', '2019-03-22 19:30:03'),
(2036, 1, 'admin/auth/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 19:30:08', '2019-03-22 19:30:08'),
(2037, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 19:30:16', '2019-03-22 19:30:16'),
(2038, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 19:40:09', '2019-03-22 19:40:09'),
(2039, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 19:42:34', '2019-03-22 19:42:34'),
(2040, 1, 'admin/auth/pengunjung', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 19:44:41', '2019-03-22 19:44:41'),
(2041, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 19:44:58', '2019-03-22 19:44:58'),
(2042, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-22 19:45:03', '2019-03-22 19:45:03'),
(2043, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 19:45:13', '2019-03-22 19:45:13'),
(2044, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 19:45:25', '2019-03-22 19:45:25'),
(2045, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 21:39:17', '2019-03-22 21:39:17'),
(2046, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 21:39:52', '2019-03-22 21:39:52'),
(2047, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 21:41:34', '2019-03-22 21:41:34'),
(2048, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 21:41:39', '2019-03-22 21:41:39'),
(2049, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Setting Produk\",\"icon\":\"fa-gear\",\"uri\":null,\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"ScZgA4a9B8Dba4zRp0e3dmE6vxBbnC8NFEsOUKit\"}', '2019-03-22 21:44:52', '2019-03-22 21:44:52'),
(2050, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-22 21:44:52', '2019-03-22 21:44:52'),
(2051, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-22 21:45:01', '2019-03-22 21:45:01'),
(2052, 1, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 21:45:42', '2019-03-22 21:45:42'),
(2053, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 21:46:13', '2019-03-22 21:46:13'),
(2054, 1, 'admin/auth/menu/33/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 21:46:48', '2019-03-22 21:46:48'),
(2055, 1, 'admin/auth/menu/33', 'PUT', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"Produk\",\"icon\":\"fa-cubes\",\"uri\":\"\\/auth\\/products\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"ScZgA4a9B8Dba4zRp0e3dmE6vxBbnC8NFEsOUKit\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-03-22 21:47:06', '2019-03-22 21:47:06'),
(2056, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-22 21:47:06', '2019-03-22 21:47:06'),
(2057, 1, 'admin/auth/menu/34/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 21:47:20', '2019-03-22 21:47:20'),
(2058, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 21:47:32', '2019-03-22 21:47:32'),
(2059, 1, 'admin/auth/menu/33/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 21:47:42', '2019-03-22 21:47:42');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(2060, 1, 'admin/auth/menu/33', 'PUT', '127.0.0.1', '{\"parent_id\":\"34\",\"title\":\"Produk\",\"icon\":\"fa-cubes\",\"uri\":\"\\/auth\\/products\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"ScZgA4a9B8Dba4zRp0e3dmE6vxBbnC8NFEsOUKit\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-03-22 21:47:59', '2019-03-22 21:47:59'),
(2061, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-22 21:47:59', '2019-03-22 21:47:59'),
(2062, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-22 21:48:20', '2019-03-22 21:48:20'),
(2063, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 21:54:02', '2019-03-22 21:54:02'),
(2064, 1, 'admin/auth/banners/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 22:22:39', '2019-03-22 22:22:39'),
(2065, 1, 'admin/auth/banners/2', 'PUT', '127.0.0.1', '{\"title\":\"PT ANDALL HASA PRIMA\",\"sub_title\":\"Your Agrochemicals Solution\",\"button\":\"Learn More\",\"url\":\"\\/about-us\",\"_token\":\"ScZgA4a9B8Dba4zRp0e3dmE6vxBbnC8NFEsOUKit\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/banners\"}', '2019-03-22 22:23:36', '2019-03-22 22:23:36'),
(2066, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '[]', '2019-03-22 22:23:37', '2019-03-22 22:23:37'),
(2067, 1, 'admin/auth/banners/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 22:28:09', '2019-03-22 22:28:09'),
(2068, 1, 'admin/auth/banners/2', 'PUT', '127.0.0.1', '{\"title\":\"PT ANDALL HASA PRIMA Uy\",\"sub_title\":\"Your Agrochemicals Solution\",\"button\":\"Learn More\",\"url\":\"\\/about-us\",\"_token\":\"ScZgA4a9B8Dba4zRp0e3dmE6vxBbnC8NFEsOUKit\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/banners\"}', '2019-03-22 22:28:21', '2019-03-22 22:28:21'),
(2069, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '[]', '2019-03-22 22:28:22', '2019-03-22 22:28:22'),
(2070, 1, 'admin/auth/banners/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 22:34:30', '2019-03-22 22:34:30'),
(2071, 1, 'admin/auth/banners/3', 'PUT', '127.0.0.1', '{\"title\":\"Produk Kami\",\"sub_title\":\"Hadirkan solusi dengan produk terbaik\",\"button\":\"See All Product\",\"url\":null,\"_token\":\"ScZgA4a9B8Dba4zRp0e3dmE6vxBbnC8NFEsOUKit\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/banners\"}', '2019-03-22 22:35:32', '2019-03-22 22:35:32'),
(2072, 1, 'admin/auth/banners/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-22 22:35:33', '2019-03-22 22:35:33'),
(2073, 1, 'admin/auth/banners/3', 'PUT', '127.0.0.1', '{\"title\":\"Produk Kami\",\"sub_title\":\"Hadirkan solusi dengan produk terbaik\",\"button\":\"See All Product\",\"url\":\"\\/product\",\"_token\":\"ScZgA4a9B8Dba4zRp0e3dmE6vxBbnC8NFEsOUKit\",\"_method\":\"PUT\"}', '2019-03-22 22:35:50', '2019-03-22 22:35:50'),
(2074, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '[]', '2019-03-22 22:35:50', '2019-03-22 22:35:50'),
(2075, 1, 'admin/auth/banners/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 22:35:57', '2019-03-22 22:35:57'),
(2076, 1, 'admin/auth/banners/4', 'PUT', '127.0.0.1', '{\"title\":\"Modern Machine\",\"sub_title\":\"Mengoptimalkan hasil dengan mesin berteknologi mutakhir\",\"button\":\"See All Alsintan\",\"url\":null,\"_token\":\"ScZgA4a9B8Dba4zRp0e3dmE6vxBbnC8NFEsOUKit\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/banners\"}', '2019-03-22 22:36:32', '2019-03-22 22:36:32'),
(2077, 1, 'admin/auth/banners/4/edit', 'GET', '127.0.0.1', '[]', '2019-03-22 22:36:32', '2019-03-22 22:36:32'),
(2078, 1, 'admin/auth/banners/4', 'PUT', '127.0.0.1', '{\"title\":\"Modern Machine\",\"sub_title\":\"Mengoptimalkan hasil dengan mesin berteknologi mutakhir\",\"button\":\"See All Alsintan\",\"url\":\"\\/alsintan\",\"_token\":\"ScZgA4a9B8Dba4zRp0e3dmE6vxBbnC8NFEsOUKit\",\"_method\":\"PUT\"}', '2019-03-22 22:36:44', '2019-03-22 22:36:44'),
(2079, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '[]', '2019-03-22 22:36:45', '2019-03-22 22:36:45'),
(2080, 1, 'admin/auth/banners/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 22:38:04', '2019-03-22 22:38:04'),
(2081, 1, 'admin/auth/banners/2', 'PUT', '127.0.0.1', '{\"title\":\"PT ANDALL HASA PRIMA\",\"sub_title\":\"Your Agrochemicals Solution\",\"button\":\"Learn More\",\"url\":\"\\/about-us\",\"_token\":\"ScZgA4a9B8Dba4zRp0e3dmE6vxBbnC8NFEsOUKit\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/banners\"}', '2019-03-22 22:38:12', '2019-03-22 22:38:12'),
(2082, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '[]', '2019-03-22 22:38:12', '2019-03-22 22:38:12'),
(2083, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 22:39:08', '2019-03-22 22:39:08'),
(2084, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-25 00:45:14', '2019-03-25 00:45:14'),
(2085, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 00:45:28', '2019-03-25 00:45:28'),
(2086, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 00:45:41', '2019-03-25 00:45:41'),
(2087, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-25 00:45:47', '2019-03-25 00:45:47'),
(2088, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-25 00:51:57', '2019-03-25 00:51:57'),
(2089, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 00:52:07', '2019-03-25 00:52:07'),
(2090, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 00:52:29', '2019-03-25 00:52:29'),
(2091, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 00:53:45', '2019-03-25 00:53:45'),
(2092, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 00:57:15', '2019-03-25 00:57:15'),
(2093, 1, 'admin/auth/permissions/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 00:57:32', '2019-03-25 00:57:32'),
(2094, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 00:57:40', '2019-03-25 00:57:40'),
(2095, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 00:57:45', '2019-03-25 00:57:45'),
(2096, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 00:57:58', '2019-03-25 00:57:58'),
(2097, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 00:58:31', '2019-03-25 00:58:31'),
(2098, 1, 'admin/auth/banners/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 00:58:44', '2019-03-25 00:58:44'),
(2099, 1, 'admin/auth/banners/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 00:58:45', '2019-03-25 00:58:45'),
(2100, 1, 'admin/auth/news', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 00:59:04', '2019-03-25 00:59:04'),
(2101, 1, 'admin/auth/news/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 00:59:12', '2019-03-25 00:59:12'),
(2102, 1, 'admin/auth/our-partner', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 00:59:39', '2019-03-25 00:59:39'),
(2103, 1, 'admin/auth/our-partner/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 00:59:45', '2019-03-25 00:59:45'),
(2104, 1, 'admin/auth/our-partner', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 00:59:53', '2019-03-25 00:59:53'),
(2105, 1, 'admin/auth/our-partner/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 00:59:57', '2019-03-25 00:59:57'),
(2106, 1, 'admin/auth/our-partner', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 01:00:03', '2019-03-25 01:00:03'),
(2107, 1, 'admin/auth/pengunjung', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 01:00:12', '2019-03-25 01:00:12'),
(2108, 1, 'admin/auth/contact-profile', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 01:02:38', '2019-03-25 01:02:38'),
(2109, 1, 'admin/auth/testimonial', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 01:03:05', '2019-03-25 01:03:05'),
(2110, 1, 'admin/auth/testimonial/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 01:03:11', '2019-03-25 01:03:11'),
(2111, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 01:03:29', '2019-03-25 01:03:29'),
(2112, 1, 'admin/auth/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 01:03:35', '2019-03-25 01:03:35'),
(2113, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-25 01:24:22', '2019-03-25 01:24:22'),
(2114, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 01:24:27', '2019-03-25 01:24:27'),
(2115, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 01:24:33', '2019-03-25 01:24:33'),
(2116, 1, 'admin/auth/banners/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-25 01:24:36', '2019-03-25 01:24:36'),
(2117, 1, 'admin/auth/banners/3', 'PUT', '127.0.0.1', '{\"title\":\"Produk Kami\",\"sub_title\":\"Hadirkan solusi dengan produk terbaik\",\"button\":\"See All Product\",\"url\":\"\\/product\",\"_token\":\"RtMhjjBIE5TcfAvVeojvDEEPZ0MHonzSd0ZNJJtj\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/banners\"}', '2019-03-25 01:24:58', '2019-03-25 01:24:58'),
(2118, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '[]', '2019-03-25 01:24:59', '2019-03-25 01:24:59'),
(2119, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-26 02:10:57', '2019-03-26 02:10:57'),
(2120, 1, 'admin/auth/pengunjung', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:11:10', '2019-03-26 02:11:10'),
(2121, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:11:46', '2019-03-26 02:11:46'),
(2122, 1, 'admin/auth/banners/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:33:00', '2019-03-26 02:33:00'),
(2123, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:33:08', '2019-03-26 02:33:08'),
(2124, 1, 'admin/auth/banners/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:33:52', '2019-03-26 02:33:52'),
(2125, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:33:55', '2019-03-26 02:33:55'),
(2126, 1, 'admin/auth/banners/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:33:57', '2019-03-26 02:33:57'),
(2127, 1, 'admin/auth/banners/4', 'PUT', '127.0.0.1', '{\"title\":\"Modern Machine\",\"sub_title\":\"Mengoptimalkan hasil dengan mesin berteknologi mutakhir\",\"button\":\"See All Alsintan\",\"url\":\"alinstan\",\"_token\":\"57MK9t3U6J1onoZd9cZpnwkVOjUUWHSsukgPgODv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/banners\"}', '2019-03-26 02:34:12', '2019-03-26 02:34:12'),
(2128, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '[]', '2019-03-26 02:34:13', '2019-03-26 02:34:13'),
(2129, 1, 'admin/auth/banners/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:34:15', '2019-03-26 02:34:15'),
(2130, 1, 'admin/auth/banners/3', 'PUT', '127.0.0.1', '{\"title\":\"Produk Kami\",\"sub_title\":\"Hadirkan solusi dengan produk terbaik\",\"button\":\"See All Product\",\"url\":\"products\",\"_token\":\"57MK9t3U6J1onoZd9cZpnwkVOjUUWHSsukgPgODv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/banners\"}', '2019-03-26 02:34:25', '2019-03-26 02:34:25'),
(2131, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '[]', '2019-03-26 02:34:25', '2019-03-26 02:34:25'),
(2132, 1, 'admin/auth/banners/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:34:27', '2019-03-26 02:34:27'),
(2133, 1, 'admin/auth/banners/2', 'PUT', '127.0.0.1', '{\"title\":\"PT ANDALL HASA PRIMA\",\"sub_title\":\"Your Agrochemicals Solution\",\"button\":\"Learn More\",\"url\":\"about-us\",\"_token\":\"57MK9t3U6J1onoZd9cZpnwkVOjUUWHSsukgPgODv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/banners\"}', '2019-03-26 02:35:26', '2019-03-26 02:35:26'),
(2134, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '[]', '2019-03-26 02:35:28', '2019-03-26 02:35:28'),
(2135, 1, 'admin/auth/banners/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:36:46', '2019-03-26 02:36:46'),
(2136, 1, 'admin/auth/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:37:16', '2019-03-26 02:37:16'),
(2137, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:46:36', '2019-03-26 02:46:36'),
(2138, 1, 'admin/auth/menu/34/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:46:50', '2019-03-26 02:46:50'),
(2139, 1, 'admin/auth/menu/34', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Setting Produk\",\"icon\":\"fa-cube\",\"uri\":null,\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"57MK9t3U6J1onoZd9cZpnwkVOjUUWHSsukgPgODv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-03-26 02:47:04', '2019-03-26 02:47:04'),
(2140, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-26 02:47:04', '2019-03-26 02:47:04'),
(2141, 1, 'admin/auth/menu/34/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:47:42', '2019-03-26 02:47:42'),
(2142, 1, 'admin/auth/menu/34', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Master Produk\",\"icon\":\"fa-cube\",\"uri\":null,\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"57MK9t3U6J1onoZd9cZpnwkVOjUUWHSsukgPgODv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-03-26 02:47:49', '2019-03-26 02:47:49'),
(2143, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-26 02:47:50', '2019-03-26 02:47:50'),
(2144, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-26 02:47:53', '2019-03-26 02:47:53'),
(2145, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"57MK9t3U6J1onoZd9cZpnwkVOjUUWHSsukgPgODv\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":6},{\\\"id\\\":7},{\\\"id\\\":5},{\\\"id\\\":4}]},{\\\"id\\\":22,\\\"children\\\":[{\\\"id\\\":23},{\\\"id\\\":25},{\\\"id\\\":24},{\\\"id\\\":26},{\\\"id\\\":27},{\\\"id\\\":28}]},{\\\"id\\\":30,\\\"children\\\":[{\\\"id\\\":31},{\\\"id\\\":32}]},{\\\"id\\\":12,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":21},{\\\"id\\\":3}]},{\\\"id\\\":34,\\\"children\\\":[{\\\"id\\\":33}]},{\\\"id\\\":13,\\\"children\\\":[{\\\"id\\\":20},{\\\"id\\\":16},{\\\"id\\\":15},{\\\"id\\\":19},{\\\"id\\\":18},{\\\"id\\\":14}]}]\"}', '2019-03-26 02:48:24', '2019-03-26 02:48:24'),
(2146, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:48:24', '2019-03-26 02:48:24'),
(2147, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"57MK9t3U6J1onoZd9cZpnwkVOjUUWHSsukgPgODv\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":6},{\\\"id\\\":7},{\\\"id\\\":5},{\\\"id\\\":4}]},{\\\"id\\\":22,\\\"children\\\":[{\\\"id\\\":23},{\\\"id\\\":25},{\\\"id\\\":24},{\\\"id\\\":26},{\\\"id\\\":27},{\\\"id\\\":28}]},{\\\"id\\\":30,\\\"children\\\":[{\\\"id\\\":31},{\\\"id\\\":32}]},{\\\"id\\\":12,\\\"children\\\":[{\\\"id\\\":3}]},{\\\"id\\\":34,\\\"children\\\":[{\\\"id\\\":33},{\\\"id\\\":10},{\\\"id\\\":21}]},{\\\"id\\\":13,\\\"children\\\":[{\\\"id\\\":20},{\\\"id\\\":16},{\\\"id\\\":15},{\\\"id\\\":19},{\\\"id\\\":18},{\\\"id\\\":14}]}]\"}', '2019-03-26 02:48:41', '2019-03-26 02:48:41'),
(2148, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:48:41', '2019-03-26 02:48:41'),
(2149, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-26 02:48:46', '2019-03-26 02:48:46'),
(2150, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"34\",\"title\":\"Main Produk\",\"icon\":\"fa-paragraph\",\"uri\":\"auth\\/main-product\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"57MK9t3U6J1onoZd9cZpnwkVOjUUWHSsukgPgODv\"}', '2019-03-26 02:50:45', '2019-03-26 02:50:45'),
(2151, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-26 02:50:46', '2019-03-26 02:50:46'),
(2152, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-26 02:50:50', '2019-03-26 02:50:50'),
(2153, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"57MK9t3U6J1onoZd9cZpnwkVOjUUWHSsukgPgODv\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":6},{\\\"id\\\":7},{\\\"id\\\":5},{\\\"id\\\":4}]},{\\\"id\\\":22,\\\"children\\\":[{\\\"id\\\":23},{\\\"id\\\":25},{\\\"id\\\":24},{\\\"id\\\":26},{\\\"id\\\":27},{\\\"id\\\":28}]},{\\\"id\\\":30,\\\"children\\\":[{\\\"id\\\":31},{\\\"id\\\":32}]},{\\\"id\\\":12,\\\"children\\\":[{\\\"id\\\":3}]},{\\\"id\\\":34,\\\"children\\\":[{\\\"id\\\":35},{\\\"id\\\":33},{\\\"id\\\":10},{\\\"id\\\":21}]},{\\\"id\\\":13,\\\"children\\\":[{\\\"id\\\":20},{\\\"id\\\":16},{\\\"id\\\":15},{\\\"id\\\":19},{\\\"id\\\":18},{\\\"id\\\":14}]}]\"}', '2019-03-26 02:50:56', '2019-03-26 02:50:56'),
(2154, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:50:57', '2019-03-26 02:50:57'),
(2155, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-26 02:51:01', '2019-03-26 02:51:01'),
(2156, 1, 'admin/auth/main-product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:51:08', '2019-03-26 02:51:08'),
(2157, 1, 'admin/auth/main-product/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:51:11', '2019-03-26 02:51:11'),
(2158, 1, 'admin/auth/main-product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:51:13', '2019-03-26 02:51:13'),
(2159, 1, 'admin/auth/main-product/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:51:23', '2019-03-26 02:51:23'),
(2160, 1, 'admin/auth/main-product', 'POST', '127.0.0.1', '{\"deskripsi\":\"Produk yang kami jual adalah produk dengan kualitas terbaik & sudah teruji di masayarakat luas.\",\"_token\":\"57MK9t3U6J1onoZd9cZpnwkVOjUUWHSsukgPgODv\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/main-product\"}', '2019-03-26 02:51:26', '2019-03-26 02:51:26'),
(2161, 1, 'admin/auth/main-product', 'GET', '127.0.0.1', '[]', '2019-03-26 02:51:26', '2019-03-26 02:51:26'),
(2162, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:55:12', '2019-03-26 02:55:12'),
(2163, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:55:39', '2019-03-26 02:55:39'),
(2164, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"auth.masterproduk\",\"name\":\"Auth Master Produk\",\"http_method\":[null],\"http_path\":\"\\/auth\\/main-product*\",\"_token\":\"57MK9t3U6J1onoZd9cZpnwkVOjUUWHSsukgPgODv\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2019-03-26 02:56:13', '2019-03-26 02:56:13'),
(2165, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-26 02:56:14', '2019-03-26 02:56:14'),
(2166, 1, 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:56:21', '2019-03-26 02:56:21'),
(2167, 1, 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"auth.masterdata\",\"name\":\"Auth Master Data\",\"http_method\":[null],\"http_path\":\"\\/auth\\/pengunjung*\\r\\n\\/auth\\/users*\",\"_token\":\"57MK9t3U6J1onoZd9cZpnwkVOjUUWHSsukgPgODv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2019-03-26 02:56:30', '2019-03-26 02:56:30'),
(2168, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-26 02:56:30', '2019-03-26 02:56:30'),
(2169, 1, 'admin/auth/permissions/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:56:37', '2019-03-26 02:56:37'),
(2170, 1, 'admin/auth/permissions/10', 'PUT', '127.0.0.1', '{\"slug\":\"auth.masterproduk\",\"name\":\"Auth Master Produk\",\"http_method\":[null],\"http_path\":\"\\/auth\\/main-product*\\r\\n\\/auth\\/product-categorys*\\r\\n\\/auth\\/product-groups*\",\"_token\":\"57MK9t3U6J1onoZd9cZpnwkVOjUUWHSsukgPgODv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2019-03-26 02:56:42', '2019-03-26 02:56:42'),
(2171, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-26 02:56:43', '2019-03-26 02:56:43'),
(2172, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:57:03', '2019-03-26 02:57:03'),
(2173, 1, 'admin/auth/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:57:05', '2019-03-26 02:57:05'),
(2174, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:57:07', '2019-03-26 02:57:07'),
(2175, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:57:08', '2019-03-26 02:57:08'),
(2176, 1, 'admin/auth/permissions/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:57:12', '2019-03-26 02:57:12'),
(2177, 1, 'admin/auth/permissions/10', 'PUT', '127.0.0.1', '{\"slug\":\"auth.masterproduk\",\"name\":\"Auth Master Produk\",\"http_method\":[null],\"http_path\":\"\\/auth\\/main-product*\\r\\n\\/auth\\/products*\\r\\n\\/auth\\/product-categorys*\\r\\n\\/auth\\/product-groups*\",\"_token\":\"57MK9t3U6J1onoZd9cZpnwkVOjUUWHSsukgPgODv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2019-03-26 02:57:21', '2019-03-26 02:57:21'),
(2178, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-26 02:57:22', '2019-03-26 02:57:22'),
(2179, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-26 02:57:30', '2019-03-26 02:57:30'),
(2180, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:57:35', '2019-03-26 02:57:35'),
(2181, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:57:38', '2019-03-26 02:57:38'),
(2182, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"owner\",\"name\":\"Owner\",\"permissions\":[\"2\",\"3\",\"4\",\"6\",\"7\",\"8\",\"9\",\"10\",null],\"_token\":\"57MK9t3U6J1onoZd9cZpnwkVOjUUWHSsukgPgODv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2019-03-26 02:57:44', '2019-03-26 02:57:44'),
(2183, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-03-26 02:57:44', '2019-03-26 02:57:44'),
(2184, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:58:26', '2019-03-26 02:58:26'),
(2185, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-26 02:58:45', '2019-03-26 02:58:45'),
(2186, 3, 'admin/auth/main-product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:58:52', '2019-03-26 02:58:52'),
(2187, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:59:02', '2019-03-26 02:59:02'),
(2188, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-26 02:59:09', '2019-03-26 02:59:09'),
(2189, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:59:12', '2019-03-26 02:59:12'),
(2190, 1, 'admin/auth/menu/35/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:59:16', '2019-03-26 02:59:16'),
(2191, 1, 'admin/auth/menu/35', 'PUT', '127.0.0.1', '{\"parent_id\":\"34\",\"title\":\"Main Title Produk\",\"icon\":\"fa-paragraph\",\"uri\":\"auth\\/main-product\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"7u2ZZ100xkKAupvcxIYiGePM0PsvonlKczV4lNxP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-03-26 02:59:26', '2019-03-26 02:59:26'),
(2192, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-03-26 02:59:26', '2019-03-26 02:59:26'),
(2193, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:59:29', '2019-03-26 02:59:29'),
(2194, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 02:59:36', '2019-03-26 02:59:36'),
(2195, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-26 02:59:43', '2019-03-26 02:59:43'),
(2196, 1, 'admin/auth/about-us', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 03:03:39', '2019-03-26 03:03:39'),
(2197, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 03:06:40', '2019-03-26 03:06:40'),
(2198, 1, 'admin/auth/visi-misi/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 03:06:48', '2019-03-26 03:06:48'),
(2199, 1, 'admin/auth/visi-misi', 'POST', '127.0.0.1', '{\"deskripsi\":\"<h3><strong>Misi Perusahaan<\\/strong><\\/h3>\\r\\n\\r\\n<p>Menjadikan PT. Andall Hasa Prima sebagai distributor dan formulator obat-obatan pertanian yang besar dengan wilayah pemasaran di seluruh Indonesia.<\\/p>\",\"_token\":\"oo7T0cSkMxMZ9ijDf9PHnBEKCYSeG8HPGatQQmF0\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/visi-misi\"}', '2019-03-26 03:06:52', '2019-03-26 03:06:52'),
(2200, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '[]', '2019-03-26 03:06:52', '2019-03-26 03:06:52'),
(2201, 1, 'admin/auth/visi-misi/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 03:06:56', '2019-03-26 03:06:56'),
(2202, 1, 'admin/auth/visi-misi/1', 'PUT', '127.0.0.1', '{\"deskripsi\":\"<h3><strong>Visi Perusahaan<\\/strong><\\/h3>\\r\\n\\r\\n<p>Berperan dalam pembangunan dan perkembangan perekonomian Indonesia.<\\/p>\",\"_token\":\"oo7T0cSkMxMZ9ijDf9PHnBEKCYSeG8HPGatQQmF0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/visi-misi\"}', '2019-03-26 03:07:02', '2019-03-26 03:07:02'),
(2203, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '[]', '2019-03-26 03:07:03', '2019-03-26 03:07:03'),
(2204, 1, 'admin/auth/visi-misi/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 03:14:38', '2019-03-26 03:14:38'),
(2205, 1, 'admin/auth/visi-misi/1', 'PUT', '127.0.0.1', '{\"deskripsi\":\"<h3>Berperan dalam pembangunan dan perkembangan perekonomian Indonesia.<\\/h3>\",\"_token\":\"oo7T0cSkMxMZ9ijDf9PHnBEKCYSeG8HPGatQQmF0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/visi-misi\"}', '2019-03-26 03:14:44', '2019-03-26 03:14:44'),
(2206, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '[]', '2019-03-26 03:14:44', '2019-03-26 03:14:44'),
(2207, 1, 'admin/auth/visi-misi/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 03:14:46', '2019-03-26 03:14:46'),
(2208, 1, 'admin/auth/visi-misi/2', 'PUT', '127.0.0.1', '{\"deskripsi\":\"<h3>Menjadikan PT. Andall Hasa Prima sebagai distributor dan formulator obat-obatan pertanian yang besar dengan wilayah pemasaran di seluruh Indonesia.<\\/h3>\",\"_token\":\"oo7T0cSkMxMZ9ijDf9PHnBEKCYSeG8HPGatQQmF0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/visi-misi\"}', '2019-03-26 03:14:50', '2019-03-26 03:14:50'),
(2209, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '[]', '2019-03-26 03:14:50', '2019-03-26 03:14:50'),
(2210, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '[]', '2019-03-26 03:17:45', '2019-03-26 03:17:45'),
(2211, 1, 'admin/auth/visi-misi/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 03:17:47', '2019-03-26 03:17:47'),
(2212, 1, 'admin/auth/visi-misi/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 03:17:51', '2019-03-26 03:17:51'),
(2213, 1, 'admin/auth/visi-misi/1', 'PUT', '127.0.0.1', '{\"deskripsi\":\"<p>Berperan dalam pembangunan dan perkembangan perekonomian Indonesia.<\\/p>\",\"_token\":\"oo7T0cSkMxMZ9ijDf9PHnBEKCYSeG8HPGatQQmF0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/visi-misi\\/1\"}', '2019-03-26 03:18:00', '2019-03-26 03:18:00'),
(2214, 1, 'admin/auth/visi-misi/1', 'GET', '127.0.0.1', '[]', '2019-03-26 03:18:00', '2019-03-26 03:18:00'),
(2215, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 03:18:03', '2019-03-26 03:18:03'),
(2216, 1, 'admin/auth/visi-misi/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 03:18:06', '2019-03-26 03:18:06'),
(2217, 1, 'admin/auth/visi-misi/2', 'PUT', '127.0.0.1', '{\"deskripsi\":\"<p>Menjadikan PT. Andall Hasa Prima sebagai distributor dan formulator obat-obatan pertanian yang besar dengan wilayah pemasaran di seluruh Indonesia.<\\/p>\",\"_token\":\"oo7T0cSkMxMZ9ijDf9PHnBEKCYSeG8HPGatQQmF0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/visi-misi\"}', '2019-03-26 03:18:13', '2019-03-26 03:18:13'),
(2218, 1, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '[]', '2019-03-26 03:18:13', '2019-03-26 03:18:13'),
(2219, 1, 'admin/auth/testimonial', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 03:19:49', '2019-03-26 03:19:49'),
(2220, 1, 'admin/auth/testimonial/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 03:20:05', '2019-03-26 03:20:05'),
(2221, 1, 'admin/auth/testimonial/1', 'PUT', '127.0.0.1', '{\"nama\":\"Rindang Ramadhan\",\"jenis_kelamin\":\"1\",\"pesan\":\"Saya bangga menjadi bagian dari keluarga PT Andall Hasa Prima. Sangat menghargai kami sebagai pekerja.\",\"_token\":\"oo7T0cSkMxMZ9ijDf9PHnBEKCYSeG8HPGatQQmF0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/testimonial\"}', '2019-03-26 03:20:12', '2019-03-26 03:20:12'),
(2222, 1, 'admin/auth/testimonial', 'GET', '127.0.0.1', '[]', '2019-03-26 03:20:12', '2019-03-26 03:20:12'),
(2223, 1, 'admin/auth/testimonial/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 03:20:15', '2019-03-26 03:20:15'),
(2224, 1, 'admin/auth/testimonial', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 03:20:19', '2019-03-26 03:20:19'),
(2225, 3, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-26 09:42:33', '2019-03-26 09:42:33'),
(2226, 3, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-26 09:45:24', '2019-03-26 09:45:24'),
(2227, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 09:49:02', '2019-03-26 09:49:02'),
(2228, 3, 'admin/auth/product-categorys/7', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"UUCWB1x0k9mTzzgj25QSBO3sKsYoBFQRGIF3mM79\"}', '2019-03-26 09:49:13', '2019-03-26 09:49:13'),
(2229, 3, 'admin/auth/product-categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 09:49:13', '2019-03-26 09:49:13'),
(2230, 3, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 10:14:00', '2019-03-26 10:14:00'),
(2231, 3, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 10:14:01', '2019-03-26 10:14:01'),
(2232, 3, 'admin/auth/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:12:42', '2019-03-26 11:12:42'),
(2233, 3, 'admin/auth/products/3', 'PUT', '127.0.0.1', '{\"key\":null,\"gambar\":\"_file_del_\",\"_file_del_\":null,\"_token\":\"UUCWB1x0k9mTzzgj25QSBO3sKsYoBFQRGIF3mM79\",\"_method\":\"PUT\"}', '2019-03-26 11:12:49', '2019-03-26 11:12:49'),
(2234, 3, 'admin/auth/products/3', 'PUT', '127.0.0.1', '{\"product_name\":\"ANDALL 865 SL\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori_id\":\"3\",\"kelompok_id\":\"2\",\"_token\":\"UUCWB1x0k9mTzzgj25QSBO3sKsYoBFQRGIF3mM79\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/products\"}', '2019-03-26 11:13:54', '2019-03-26 11:13:54'),
(2235, 3, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-26 11:13:55', '2019-03-26 11:13:55'),
(2236, 3, 'admin/auth/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:14:00', '2019-03-26 11:14:00'),
(2237, 3, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:14:58', '2019-03-26 11:14:58'),
(2238, 3, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-26 11:15:15', '2019-03-26 11:15:15'),
(2239, 3, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-26 11:16:10', '2019-03-26 11:16:10'),
(2240, 3, 'admin/auth/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:16:15', '2019-03-26 11:16:15'),
(2241, 3, 'admin/auth/products/2', 'PUT', '127.0.0.1', '{\"product_name\":\"ANDALL 865 SL\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori_id\":\"2\",\"kelompok_id\":\"1\",\"_token\":\"UUCWB1x0k9mTzzgj25QSBO3sKsYoBFQRGIF3mM79\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/products\"}', '2019-03-26 11:16:51', '2019-03-26 11:16:51'),
(2242, 3, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-26 11:16:51', '2019-03-26 11:16:51'),
(2243, 3, 'admin/auth/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:17:16', '2019-03-26 11:17:16'),
(2244, 3, 'admin/auth/products/2', 'PUT', '127.0.0.1', '{\"product_name\":\"ANDALL 865 SL\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori_id\":\"2\",\"kelompok_id\":\"1\",\"_token\":\"UUCWB1x0k9mTzzgj25QSBO3sKsYoBFQRGIF3mM79\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/products\"}', '2019-03-26 11:17:27', '2019-03-26 11:17:27'),
(2245, 3, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-26 11:17:27', '2019-03-26 11:17:27'),
(2246, 3, 'admin/auth/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:17:30', '2019-03-26 11:17:30'),
(2247, 3, 'admin/auth/products/3', 'PUT', '127.0.0.1', '{\"product_name\":\"Black Hawk\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori_id\":\"3\",\"kelompok_id\":\"2\",\"_token\":\"UUCWB1x0k9mTzzgj25QSBO3sKsYoBFQRGIF3mM79\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/products\"}', '2019-03-26 11:17:49', '2019-03-26 11:17:49'),
(2248, 3, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-26 11:17:50', '2019-03-26 11:17:50'),
(2249, 3, 'admin/auth/products/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:17:52', '2019-03-26 11:17:52'),
(2250, 3, 'admin/auth/products/4', 'PUT', '127.0.0.1', '{\"product_name\":\"BORER\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori_id\":\"4\",\"kelompok_id\":\"3\",\"_token\":\"UUCWB1x0k9mTzzgj25QSBO3sKsYoBFQRGIF3mM79\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/products\"}', '2019-03-26 11:18:05', '2019-03-26 11:18:05'),
(2251, 3, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-26 11:18:05', '2019-03-26 11:18:05'),
(2252, 3, 'admin/auth/products/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:18:09', '2019-03-26 11:18:09'),
(2253, 3, 'admin/auth/products/5', 'PUT', '127.0.0.1', '{\"product_name\":\"Badai\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori_id\":\"5\",\"kelompok_id\":\"1\",\"_token\":\"UUCWB1x0k9mTzzgj25QSBO3sKsYoBFQRGIF3mM79\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/products\"}', '2019-03-26 11:18:21', '2019-03-26 11:18:21'),
(2254, 3, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-26 11:18:22', '2019-03-26 11:18:22'),
(2255, 3, 'admin/auth/products/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:18:25', '2019-03-26 11:18:25'),
(2256, 3, 'admin/auth/products/6', 'PUT', '127.0.0.1', '{\"product_name\":\"BESTARI\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori_id\":\"2\",\"kelompok_id\":\"2\",\"_token\":\"UUCWB1x0k9mTzzgj25QSBO3sKsYoBFQRGIF3mM79\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/products\"}', '2019-03-26 11:18:39', '2019-03-26 11:18:39'),
(2257, 3, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-26 11:18:39', '2019-03-26 11:18:39'),
(2258, 3, 'admin/auth/products/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:18:52', '2019-03-26 11:18:52'),
(2259, 3, 'admin/auth/products/5', 'PUT', '127.0.0.1', '{\"product_name\":\"BADAI\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori_id\":\"5\",\"kelompok_id\":\"1\",\"_token\":\"UUCWB1x0k9mTzzgj25QSBO3sKsYoBFQRGIF3mM79\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/products\"}', '2019-03-26 11:18:56', '2019-03-26 11:18:56'),
(2260, 3, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-26 11:18:57', '2019-03-26 11:18:57'),
(2261, 3, 'admin/auth/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:19:03', '2019-03-26 11:19:03'),
(2262, 3, 'admin/auth/products/3', 'PUT', '127.0.0.1', '{\"product_name\":\"BLACK HAWK\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori_id\":\"3\",\"kelompok_id\":\"2\",\"_token\":\"UUCWB1x0k9mTzzgj25QSBO3sKsYoBFQRGIF3mM79\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/products\"}', '2019-03-26 11:19:11', '2019-03-26 11:19:11'),
(2263, 3, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-26 11:19:11', '2019-03-26 11:19:11'),
(2264, 3, 'admin/auth/products/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:19:16', '2019-03-26 11:19:16'),
(2265, 3, 'admin/auth/products/7', 'PUT', '127.0.0.1', '{\"product_name\":\"ALAT TANAM BENIH\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori_id\":\"3\",\"kelompok_id\":\"3\",\"_token\":\"UUCWB1x0k9mTzzgj25QSBO3sKsYoBFQRGIF3mM79\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/products\"}', '2019-03-26 11:19:36', '2019-03-26 11:19:36'),
(2266, 3, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-26 11:19:37', '2019-03-26 11:19:37'),
(2267, 3, 'admin/auth/products/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:19:41', '2019-03-26 11:19:41');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(2268, 3, 'admin/auth/products/8', 'PUT', '127.0.0.1', '{\"product_name\":\"CER ONE\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori_id\":\"4\",\"kelompok_id\":\"1\",\"_token\":\"UUCWB1x0k9mTzzgj25QSBO3sKsYoBFQRGIF3mM79\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/products\"}', '2019-03-26 11:19:54', '2019-03-26 11:19:54'),
(2269, 3, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-26 11:19:55', '2019-03-26 11:19:55'),
(2270, 3, 'admin/auth/products/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:20:00', '2019-03-26 11:20:00'),
(2271, 3, 'admin/auth/products/9', 'PUT', '127.0.0.1', '{\"product_name\":\"CIHERANG\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori_id\":\"5\",\"kelompok_id\":\"2\",\"_token\":\"UUCWB1x0k9mTzzgj25QSBO3sKsYoBFQRGIF3mM79\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/products\"}', '2019-03-26 11:20:13', '2019-03-26 11:20:13'),
(2272, 3, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-26 11:20:14', '2019-03-26 11:20:14'),
(2273, 3, 'admin/auth/products/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:20:34', '2019-03-26 11:20:34'),
(2274, 3, 'admin/auth/products/5', 'PUT', '127.0.0.1', '{\"product_name\":\"DK METRIN\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori_id\":\"5\",\"kelompok_id\":\"1\",\"_token\":\"UUCWB1x0k9mTzzgj25QSBO3sKsYoBFQRGIF3mM79\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/products\"}', '2019-03-26 11:20:47', '2019-03-26 11:20:47'),
(2275, 3, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-26 11:20:47', '2019-03-26 11:20:47'),
(2276, 3, 'admin/auth/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:21:29', '2019-03-26 11:21:29'),
(2277, 3, 'admin/auth/products/2', 'PUT', '127.0.0.1', '{\"product_name\":\"SINAR TOP\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori_id\":\"2\",\"kelompok_id\":\"1\",\"_token\":\"UUCWB1x0k9mTzzgj25QSBO3sKsYoBFQRGIF3mM79\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/products\"}', '2019-03-26 11:22:23', '2019-03-26 11:22:23'),
(2278, 3, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-26 11:22:23', '2019-03-26 11:22:23'),
(2279, 3, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-26 11:23:06', '2019-03-26 11:23:06'),
(2280, 3, 'admin/auth/products/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:23:11', '2019-03-26 11:23:11'),
(2281, 3, 'admin/auth/products/10', 'PUT', '127.0.0.1', '{\"product_name\":\"ALPHA 16\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori_id\":\"2\",\"kelompok_id\":\"1\",\"_token\":\"UUCWB1x0k9mTzzgj25QSBO3sKsYoBFQRGIF3mM79\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/products\"}', '2019-03-26 11:23:24', '2019-03-26 11:23:24'),
(2282, 3, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-26 11:23:25', '2019-03-26 11:23:25'),
(2283, 3, 'admin/auth/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:23:40', '2019-03-26 11:23:40'),
(2284, 3, 'admin/auth/products/2', 'PUT', '127.0.0.1', '{\"product_name\":\"BADAI\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori_id\":\"2\",\"kelompok_id\":\"1\",\"_token\":\"UUCWB1x0k9mTzzgj25QSBO3sKsYoBFQRGIF3mM79\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/products\"}', '2019-03-26 11:23:52', '2019-03-26 11:23:52'),
(2285, 3, 'admin/auth/products/2/edit', 'GET', '127.0.0.1', '[]', '2019-03-26 11:23:53', '2019-03-26 11:23:53'),
(2286, 3, 'admin/auth/products/2', 'PUT', '127.0.0.1', '{\"product_name\":\"ZIPHOS\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori_id\":\"2\",\"kelompok_id\":\"1\",\"_token\":\"UUCWB1x0k9mTzzgj25QSBO3sKsYoBFQRGIF3mM79\",\"_method\":\"PUT\"}', '2019-03-26 11:24:35', '2019-03-26 11:24:35'),
(2287, 3, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-26 11:24:35', '2019-03-26 11:24:35'),
(2288, 3, 'admin/auth/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:25:06', '2019-03-26 11:25:06'),
(2289, 3, 'admin/auth/products/3', 'PUT', '127.0.0.1', '{\"product_name\":\"BLACK HAWK\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori_id\":\"3\",\"kelompok_id\":\"2\",\"_token\":\"UUCWB1x0k9mTzzgj25QSBO3sKsYoBFQRGIF3mM79\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/products\"}', '2019-03-26 11:25:20', '2019-03-26 11:25:20'),
(2290, 3, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-26 11:25:20', '2019-03-26 11:25:20'),
(2291, 3, 'admin/auth/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:25:23', '2019-03-26 11:25:23'),
(2292, 3, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:25:28', '2019-03-26 11:25:28'),
(2293, 3, 'admin/auth/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:25:29', '2019-03-26 11:25:29'),
(2294, 3, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:25:31', '2019-03-26 11:25:31'),
(2295, 3, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-26 11:25:31', '2019-03-26 11:25:31'),
(2296, 3, 'admin/auth/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:25:35', '2019-03-26 11:25:35'),
(2297, 3, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:25:41', '2019-03-26 11:25:41'),
(2298, 3, 'admin/auth/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:25:42', '2019-03-26 11:25:42'),
(2299, 3, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:25:45', '2019-03-26 11:25:45'),
(2300, 3, 'admin/auth/products/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:25:56', '2019-03-26 11:25:56'),
(2301, 3, 'admin/auth/products/4/edit', 'GET', '127.0.0.1', '[]', '2019-03-26 11:26:05', '2019-03-26 11:26:05'),
(2302, 3, 'admin/auth/products/4', 'PUT', '127.0.0.1', '{\"product_name\":\"BORER\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori_id\":\"4\",\"kelompok_id\":\"3\",\"_token\":\"UUCWB1x0k9mTzzgj25QSBO3sKsYoBFQRGIF3mM79\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/products\"}', '2019-03-26 11:26:15', '2019-03-26 11:26:15'),
(2303, 3, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-26 11:26:15', '2019-03-26 11:26:15'),
(2304, 3, 'admin/auth/products/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:26:19', '2019-03-26 11:26:19'),
(2305, 3, 'admin/auth/products/5', 'PUT', '127.0.0.1', '{\"product_name\":\"DK METRIN\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori_id\":\"5\",\"kelompok_id\":\"1\",\"_token\":\"UUCWB1x0k9mTzzgj25QSBO3sKsYoBFQRGIF3mM79\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/products\"}', '2019-03-26 11:26:36', '2019-03-26 11:26:36'),
(2306, 3, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-26 11:26:37', '2019-03-26 11:26:37'),
(2307, 3, 'admin/auth/products/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:26:47', '2019-03-26 11:26:47'),
(2308, 3, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:27:13', '2019-03-26 11:27:13'),
(2309, 3, 'admin/auth/products/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:27:20', '2019-03-26 11:27:20'),
(2310, 3, 'admin/auth/products/8', 'PUT', '127.0.0.1', '{\"product_name\":\"CER ONE\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori_id\":\"4\",\"kelompok_id\":\"1\",\"_token\":\"UUCWB1x0k9mTzzgj25QSBO3sKsYoBFQRGIF3mM79\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/products\"}', '2019-03-26 11:27:28', '2019-03-26 11:27:28'),
(2311, 3, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-26 11:27:29', '2019-03-26 11:27:29'),
(2312, 3, 'admin/auth/products/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:27:45', '2019-03-26 11:27:45'),
(2313, 3, 'admin/auth/products/7', 'PUT', '127.0.0.1', '{\"product_name\":\"ALPUZ\",\"product_ingredients\":\"865 g\\/l 2,4-D DIMETILAMINA\",\"product_formulation\":\"LARUTAN DALAM AIR (SOLUBLE LIQUID\\/SL)\",\"product_use\":\"<p><strong>TUJUAN PENGGUNAAN :&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.<\\/li>\\r\\n\\t<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)<\\/li>\\r\\n\\t<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES<\\/li>\\r\\n<\\/ol>\",\"product_dose\":\"<ul>\\r\\n\\t<li>0,5-1\\/HA<\\/li>\\r\\n\\t<li>2-4 ML PER LITER AIR<\\/li>\\r\\n\\t<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)<\\/li>\\r\\n<\\/ul>\",\"product_package\":\"<ul>\\r\\n\\t<li>40 X 200 ML 3<\\/li>\\r\\n\\t<li>20 X 400 ML 3<\\/li>\\r\\n\\t<li>15 X 1 LITER 3<\\/li>\\r\\n\\t<li>20 LITER 3<\\/li>\\r\\n\\t<li>200 LITER<\\/li>\\r\\n<\\/ul>\",\"kategori_id\":\"3\",\"kelompok_id\":\"3\",\"_token\":\"UUCWB1x0k9mTzzgj25QSBO3sKsYoBFQRGIF3mM79\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/products\"}', '2019-03-26 11:27:59', '2019-03-26 11:27:59'),
(2314, 3, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-26 11:27:59', '2019-03-26 11:27:59'),
(2315, 3, 'admin/auth/products', 'GET', '127.0.0.1', '[]', '2019-03-26 11:35:59', '2019-03-26 11:35:59'),
(2316, 3, 'admin/auth/products', 'GET', '127.0.0.1', '{\"per_page\":\"10\",\"_pjax\":\"#pjax-container\"}', '2019-03-26 11:36:09', '2019-03-26 11:36:09'),
(2317, 3, 'admin/auth/products', 'GET', '127.0.0.1', '{\"per_page\":\"10\",\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-03-26 11:36:13', '2019-03-26 11:36:13'),
(2318, 3, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 13:35:08', '2019-03-26 13:35:08'),
(2319, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 13:56:25', '2019-03-26 13:56:25'),
(2320, 3, 'admin/auth/visi-misi/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 13:56:35', '2019-03-26 13:56:35'),
(2321, 3, 'admin/auth/visi-misi', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 13:56:42', '2019-03-26 13:56:42'),
(2322, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-26 13:56:45', '2019-03-26 13:56:45'),
(2323, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-27 05:55:25', '2019-03-27 05:55:25'),
(2324, 1, 'admin/auth/news', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 05:56:03', '2019-03-27 05:56:03'),
(2325, 1, 'admin/auth/news', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 06:29:11', '2019-03-27 06:29:11'),
(2326, 1, 'admin/auth/news/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 06:29:15', '2019-03-27 06:29:15'),
(2327, 1, 'admin/auth/news/3', 'PUT', '127.0.0.1', '{\"title\":\"Petani Lampung Diminta Manfaatkan Mesin Pertanian\",\"description\":\"<p>BANDAR LAMPUNG (Lampost.co)-- Petani di Lampung yang tergabung dalam kelompok tani maupun gabungan kelompok tani diminta untuk memanfaatkan alat mesin pertanian bantuan Kementerian Pertanian.<\\/p>\\r\\n\\r\\n<p>&quot;Masih ditemukan alat mesin pertanian menganggur tak hanya di poktan atau gapoktan, tapi juga di brigade provinsi maupun kabupaten dan kota,&quot; kata Kepala Badan Penyuluhan dan Pengembangan Sumber Daya Manusia Pertanian Kementerian Pertanian Momon Rusmono, di Bandar Lampung, Kamis (13\\/12\\/2018).<\\/p>\\r\\n\\r\\n<p>Ia menyebutkan, apabila semua alat mesin pertanian (alsintan) digunakan maka Luas Tambah Tanam (LTT) dan Indeks Pertanaman (IP) akan meningkat.&nbsp; Ia menjelaskan, semua alsintan olah tanam harus dimaksimalkan sehingga panen dapat optimal.<\\/p>\\r\\n\\r\\n<p>Menurutnya, jika alsintan bantuan Kementerian Pertanian sejak tahun 2014 hingga 2017 tidak dapat digunakan secara optimal, harus dilakukan<br \\/>\\r\\nidentifikasi berapa alat yang layak atau tidak layak, termasuk bantuan tahun 2018.<br \\/>\\r\\n&nbsp;<br \\/>\\r\\nKemudian, dihitung berapa alsintan yang layak digunakan atau tidak layak digunakan dengan mencari solusinya, misalkan jika alat pertanian tersebut rusak dengan diperbaiki.&nbsp; Dalam kesempatan itu juga mengharapkan alsinta disimpan di Unit Pelayanan Jasa Alsintan (UPJA) karena kalau di kelompok tani akan muncul ego dan menimbulkan tidak maksimal. &nbsp;<\\/p>\\r\\n\\r\\n<p>&quot;Biasanya jika alsintan dipegang oleh ketua kelompok tani, seakan-akan menjadi hak milik. Padahal alsintan itu milik bersama,&quot; katanya.&nbsp;<\\/p>\\r\\n\\r\\n<p>Ia menambahkan Kementerian Pertanian sejak tahun 2014 hingga 2017 telah mendistribusikan alat mesin pertanian sebanyak 150.000 unit, senilai Rp7 triliun.&nbsp; &quot;Rata-rata per tahun sekitar 30 ribu hingga 40 ribu unit alsintan didistribusikan untuk petani,&quot; katanya.<\\/p>\\r\\n\\r\\n<p>Ia memperkirakan alsintan yang didistribusikan akan tembus sekitar 180.000 unit, hingga tahun 2018. Sementara itu, Kepala Bidang Sarana dan Prasarana Dinas Tanaman Pangan dan Hortikultura Lampung Indriatmoko menjelaskan adanya bantuan alsintan telah banyak dan dirasakan manfaatnyan oleh petani. &nbsp;<\\/p>\\r\\n\\r\\n<p>Namun, lanjutnya, masih banyak yang harus dioptimalkan. &quot;Kita punya waduk Batu Tegi, yang termasuk sumber air kita, namun bertahun tahun terdapat limpasan. Saat ini kita banyak program atau target produksi pertanian cukup besar, yakni naik 20 persen,&quot; ujarnya.<\\/p>\\r\\n\\r\\n<p>Namun, lanjutnya, target produksi tersebut tak diimbangi lahan yang ada yang sekarang semakin mengecil.&nbsp; Untuk mengatasi masalah tersebut, lanjutnya, salah satunya menggunakan teknologi berupa penggunaan alsintan untuk percepatan panen.<\\/p>\\r\\n\\r\\n<p>Selain itu juga melakukan efisiensi penggunaan irigasi, dan percepatan pengelolaan tanah sehingga tidak boros dan bisa menampung air yang banyak.&nbsp; Ia menambahkan, bantuan yang diberikan pemerintah berupa alsintan yang banyak tentu tidak ada yang menolak.<\\/p>\\r\\n\\r\\n<p>Namun, menurutnya, terdapat pula kendala banyaknya alsintan yakni harus menggunakan operator, biaya operasional termasuk merawatnya agar bisa berdaya guna sesuai umur ekonomis.<br \\/>\\r\\n&nbsp;<br \\/>\\r\\n&quot;Hal Itu menjadi pekerjaan rumah kita ke depan untuk bisa memanfaatkan dengan optimal dan merawat dengan baik,&quot; jelasnya.<\\/p>\\r\\n\\r\\n<p>Indriatmoko menambahkan, meskipun pemerintah melalui Kementerian Pertanian banyak membantu alsintan, namun masih banyak kelompok petani di daerah ini yang belum mendapatkan alat pertanian tersebut, seperti<br \\/>\\r\\ntransplanter, pompa air dan lainnya.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\",\"source\":\"http:\\/\\/www.lampost.co\\/berita-petani-lampung-diminta-manfaatkan-mesin-pertanian.html\",\"_token\":\"a0uMk4Ea2jhCLXO2AWLhpwMvmWTcndyGFfmXapzK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/news\"}', '2019-03-27 06:30:43', '2019-03-27 06:30:43'),
(2328, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-27 06:30:44', '2019-03-27 06:30:44'),
(2329, 1, 'admin/auth/news/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 06:30:55', '2019-03-27 06:30:55'),
(2330, 1, 'admin/auth/news/2', 'PUT', '127.0.0.1', '{\"title\":\"4 Desa Di Lampung Panen Besar\",\"description\":\"<p>Kembali Panen, Empat Desa di Kecamatan Trimurjo Kabupaten Lampung Tengah<\\/p>\\r\\n\\r\\n<p>Kegiatan panen di Provinsi Lampung tanggal 17 Januari 2018, berada di empat desa di Kecamatan Trimurjo Kabupaten Lampung Tengah.<\\/p>\\r\\n\\r\\n<p>Desa Pujo Dadi Kecamatan Trimurjo Kabupaten Lampung Tengah, dilakukan panen luas 4 ha dari luas hamparan pertanaman padi 50 ha dengan harga gabah di tingkat petani Rp 5600\\/ kg GKP. Varietas yang di panen Padi Hibrida MNC dengan provitas 7.8 ton GKP.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"https:\\/\\/ptandallhasaprima.com\\/wp-content\\/uploads\\/2018\\/01\\/26733823_281497322377285_4555009961465596391_n.jpg\\\" style=\\\"height:720px; width:960px\\\" \\/><\\/p>\\r\\n\\r\\n<p>Desa Pujo Basuki Kec. Trimurjo Kab Lampung Tengah, dilakukan panen seluas 10 ha dari luas 100 hamparan pertanaman padi. Panen denga 4 unit combine dan beberapa sintok. Varietas yang di tanam Ciherang dengan provitas 7.2 ton \\/ha GKP. Harga gabah ditingkat petani Rp 5600\\/kg GKP.<\\/p>\\r\\n\\r\\n<p>Desa Pujo Asri Kec. Trimurjo Kab.Lampung Tengah, dilakukan panen 5 ha dari luasan hamparan padi 50 ha. Harga gabah di tingkat petani Rp 5800 \\/kg GKP provitas : 7.8 ton \\/ha. Panen di lakukan dengan dua unit combine harvester dan beberapa mesin perontok.<\\/p>\\r\\n\\r\\n<p>Desa Untoro Kec Trimurjo Kab. Lampung Tengah, panen dilakukan pada area 5 ha dari hamparan pertanaman padi luas 250 ha Varietas Inpari 30 dg provitas 7.2 ton\\/ha GKP dan harga gabah Rp 5800\\/kg GKP.<\\/p>\\r\\n\\r\\n<p><a href=\\\"https:\\/\\/www.facebook.com\\/hashtag\\/panenpanenpanen?source=feed_text&amp;story_id=281497845710566\\\">#PanenPanenPanen<\\/a><br \\/>\\r\\n<a href=\\\"https:\\/\\/www.facebook.com\\/hashtag\\/nusantarapanen?source=feed_text&amp;story_id=281497845710566\\\">#NusantaraPanen<\\/a><\\/p>\",\"source\":\"https:\\/\\/www.facebook.com\\/Balai-Pengkajian-Teknologi-Pertanian-Lampung-281093262417691\\/?hc_ref=ARR7-cBlvUD-HsY1IGo8X9LKlL9SNqNuT98AqAu_mACGPijzB_SROjB0Ounn1CIku70\",\"_token\":\"a0uMk4Ea2jhCLXO2AWLhpwMvmWTcndyGFfmXapzK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/news\"}', '2019-03-27 06:31:07', '2019-03-27 06:31:07'),
(2331, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-27 06:31:08', '2019-03-27 06:31:08'),
(2332, 1, 'admin/auth/news/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 06:31:17', '2019-03-27 06:31:17'),
(2333, 1, 'admin/auth/news/2', 'PUT', '127.0.0.1', '{\"key\":null,\"image\":\"_file_del_\",\"_file_del_\":null,\"_token\":\"a0uMk4Ea2jhCLXO2AWLhpwMvmWTcndyGFfmXapzK\",\"_method\":\"PUT\"}', '2019-03-27 06:31:19', '2019-03-27 06:31:19'),
(2334, 1, 'admin/auth/news/2/edit', 'GET', '127.0.0.1', '[]', '2019-03-27 06:31:22', '2019-03-27 06:31:22'),
(2335, 1, 'admin/auth/news/2', 'PUT', '127.0.0.1', '{\"title\":\"4 Desa Di Lampung Panen Besar\",\"description\":\"<p>Kembali Panen, Empat Desa di Kecamatan Trimurjo Kabupaten Lampung Tengah<\\/p>\\r\\n\\r\\n<p>Kegiatan panen di Provinsi Lampung tanggal 17 Januari 2018, berada di empat desa di Kecamatan Trimurjo Kabupaten Lampung Tengah.<\\/p>\\r\\n\\r\\n<p>Desa Pujo Dadi Kecamatan Trimurjo Kabupaten Lampung Tengah, dilakukan panen luas 4 ha dari luas hamparan pertanaman padi 50 ha dengan harga gabah di tingkat petani Rp 5600\\/ kg GKP. Varietas yang di panen Padi Hibrida MNC dengan provitas 7.8 ton GKP.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"https:\\/\\/ptandallhasaprima.com\\/wp-content\\/uploads\\/2018\\/01\\/26733823_281497322377285_4555009961465596391_n.jpg\\\" style=\\\"height:720px; width:960px\\\" \\/><\\/p>\\r\\n\\r\\n<p>Desa Pujo Basuki Kec. Trimurjo Kab Lampung Tengah, dilakukan panen seluas 10 ha dari luas 100 hamparan pertanaman padi. Panen denga 4 unit combine dan beberapa sintok. Varietas yang di tanam Ciherang dengan provitas 7.2 ton \\/ha GKP. Harga gabah ditingkat petani Rp 5600\\/kg GKP.<\\/p>\\r\\n\\r\\n<p>Desa Pujo Asri Kec. Trimurjo Kab.Lampung Tengah, dilakukan panen 5 ha dari luasan hamparan padi 50 ha. Harga gabah di tingkat petani Rp 5800 \\/kg GKP provitas : 7.8 ton \\/ha. Panen di lakukan dengan dua unit combine harvester dan beberapa mesin perontok.<\\/p>\\r\\n\\r\\n<p>Desa Untoro Kec Trimurjo Kab. Lampung Tengah, panen dilakukan pada area 5 ha dari hamparan pertanaman padi luas 250 ha Varietas Inpari 30 dg provitas 7.2 ton\\/ha GKP dan harga gabah Rp 5800\\/kg GKP.<\\/p>\\r\\n\\r\\n<p><a href=\\\"https:\\/\\/www.facebook.com\\/hashtag\\/panenpanenpanen?source=feed_text&story_id=281497845710566\\\">#PanenPanenPanen<\\/a><br \\/>\\r\\n<a href=\\\"https:\\/\\/www.facebook.com\\/hashtag\\/nusantarapanen?source=feed_text&story_id=281497845710566\\\">#NusantaraPanen<\\/a><\\/p>\",\"source\":\"https:\\/\\/www.facebook.com\\/Balai-Pengkajian-Teknologi-Pertanian-Lampung-281093262417691\\/?hc_ref=ARR7-cBlvUD-HsY1IGo8X9LKlL9SNqNuT98AqAu_mACGPijzB_SROjB0Ounn1CIku70\",\"_token\":\"a0uMk4Ea2jhCLXO2AWLhpwMvmWTcndyGFfmXapzK\",\"_method\":\"PUT\"}', '2019-03-27 06:31:29', '2019-03-27 06:31:29'),
(2336, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-27 06:31:29', '2019-03-27 06:31:29'),
(2337, 1, 'admin/auth/news/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 06:31:32', '2019-03-27 06:31:32'),
(2338, 1, 'admin/auth/news/2', 'PUT', '127.0.0.1', '{\"title\":\"4 Desa Di Lampung Panen Besar\",\"description\":\"<p>Kembali Panen, Empat Desa di Kecamatan Trimurjo Kabupaten Lampung Tengah<\\/p>\\r\\n\\r\\n<p>Kegiatan panen di Provinsi Lampung tanggal 17 Januari 2018, berada di empat desa di Kecamatan Trimurjo Kabupaten Lampung Tengah.<\\/p>\\r\\n\\r\\n<p>Desa Pujo Dadi Kecamatan Trimurjo Kabupaten Lampung Tengah, dilakukan panen luas 4 ha dari luas hamparan pertanaman padi 50 ha dengan harga gabah di tingkat petani Rp 5600\\/ kg GKP. Varietas yang di panen Padi Hibrida MNC dengan provitas 7.8 ton GKP.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"https:\\/\\/ptandallhasaprima.com\\/wp-content\\/uploads\\/2018\\/01\\/26733823_281497322377285_4555009961465596391_n.jpg\\\" style=\\\"height:720px; width:960px\\\" \\/><\\/p>\\r\\n\\r\\n<p>Desa Pujo Basuki Kec. Trimurjo Kab Lampung Tengah, dilakukan panen seluas 10 ha dari luas 100 hamparan pertanaman padi. Panen denga 4 unit combine dan beberapa sintok. Varietas yang di tanam Ciherang dengan provitas 7.2 ton \\/ha GKP. Harga gabah ditingkat petani Rp 5600\\/kg GKP.<\\/p>\\r\\n\\r\\n<p>Desa Pujo Asri Kec. Trimurjo Kab.Lampung Tengah, dilakukan panen 5 ha dari luasan hamparan padi 50 ha. Harga gabah di tingkat petani Rp 5800 \\/kg GKP provitas : 7.8 ton \\/ha. Panen di lakukan dengan dua unit combine harvester dan beberapa mesin perontok.<\\/p>\\r\\n\\r\\n<p>Desa Untoro Kec Trimurjo Kab. Lampung Tengah, panen dilakukan pada area 5 ha dari hamparan pertanaman padi luas 250 ha Varietas Inpari 30 dg provitas 7.2 ton\\/ha GKP dan harga gabah Rp 5800\\/kg GKP.<\\/p>\\r\\n\\r\\n<p><a href=\\\"https:\\/\\/www.facebook.com\\/hashtag\\/panenpanenpanen?source=feed_text&amp;story_id=281497845710566\\\">#PanenPanenPanen<\\/a><br \\/>\\r\\n<a href=\\\"https:\\/\\/www.facebook.com\\/hashtag\\/nusantarapanen?source=feed_text&amp;story_id=281497845710566\\\">#NusantaraPanen<\\/a><\\/p>\",\"source\":\"https:\\/\\/www.facebook.com\\/Balai-Pengkajian-Teknologi-Pertanian-Lampung-281093262417691\\/?hc_ref=ARR7-cBlvUD-HsY1IGo8X9LKlL9SNqNuT98AqAu_mACGPijzB_SROjB0Ounn1CIku70\",\"_token\":\"a0uMk4Ea2jhCLXO2AWLhpwMvmWTcndyGFfmXapzK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/news\"}', '2019-03-27 06:31:43', '2019-03-27 06:31:43'),
(2339, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-27 06:31:44', '2019-03-27 06:31:44'),
(2340, 1, 'admin/auth/news/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 06:31:47', '2019-03-27 06:31:47'),
(2341, 1, 'admin/auth/news/2', 'PUT', '127.0.0.1', '{\"title\":\"4 Desa Di Lampung Panen Besar\",\"description\":\"<p>Kembali Panen, Empat Desa di Kecamatan Trimurjo Kabupaten Lampung Tengah<\\/p>\\r\\n\\r\\n<p>Kegiatan panen di Provinsi Lampung tanggal 17 Januari 2018, berada di empat desa di Kecamatan Trimurjo Kabupaten Lampung Tengah.<\\/p>\\r\\n\\r\\n<p>Desa Pujo Dadi Kecamatan Trimurjo Kabupaten Lampung Tengah, dilakukan panen luas 4 ha dari luas hamparan pertanaman padi 50 ha dengan harga gabah di tingkat petani Rp 5600\\/ kg GKP. Varietas yang di panen Padi Hibrida MNC dengan provitas 7.8 ton GKP.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"https:\\/\\/ptandallhasaprima.com\\/wp-content\\/uploads\\/2018\\/01\\/26733823_281497322377285_4555009961465596391_n.jpg\\\" style=\\\"height:720px; width:960px\\\" \\/><\\/p>\\r\\n\\r\\n<p>Desa Pujo Basuki Kec. Trimurjo Kab Lampung Tengah, dilakukan panen seluas 10 ha dari luas 100 hamparan pertanaman padi. Panen denga 4 unit combine dan beberapa sintok. Varietas yang di tanam Ciherang dengan provitas 7.2 ton \\/ha GKP. Harga gabah ditingkat petani Rp 5600\\/kg GKP.<\\/p>\\r\\n\\r\\n<p>Desa Pujo Asri Kec. Trimurjo Kab.Lampung Tengah, dilakukan panen 5 ha dari luasan hamparan padi 50 ha. Harga gabah di tingkat petani Rp 5800 \\/kg GKP provitas : 7.8 ton \\/ha. Panen di lakukan dengan dua unit combine harvester dan beberapa mesin perontok.<\\/p>\\r\\n\\r\\n<p>Desa Untoro Kec Trimurjo Kab. Lampung Tengah, panen dilakukan pada area 5 ha dari hamparan pertanaman padi luas 250 ha Varietas Inpari 30 dg provitas 7.2 ton\\/ha GKP dan harga gabah Rp 5800\\/kg GKP.<\\/p>\\r\\n\\r\\n<p><a href=\\\"https:\\/\\/www.facebook.com\\/hashtag\\/panenpanenpanen?source=feed_text&story_id=281497845710566\\\">#PanenPanenPanen<\\/a><br \\/>\\r\\n<a href=\\\"https:\\/\\/www.facebook.com\\/hashtag\\/nusantarapanen?source=feed_text&story_id=281497845710566\\\">#NusantaraPanen<\\/a><\\/p>\",\"source\":\"https:\\/\\/www.facebook.com\\/Balai-Pengkajian-Teknologi-Pertanian-Lampung-281093262417691\\/?hc_ref=ARR7-cBlvUD-HsY1IGo8X9LKlL9SNqNuT98AqAu_mACGPijzB_SROjB0Ounn1CIku70\",\"_token\":\"a0uMk4Ea2jhCLXO2AWLhpwMvmWTcndyGFfmXapzK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/news\"}', '2019-03-27 06:31:51', '2019-03-27 06:31:51'),
(2342, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-27 06:31:52', '2019-03-27 06:31:52'),
(2343, 1, 'admin/auth/news/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 06:31:54', '2019-03-27 06:31:54'),
(2344, 1, 'admin/auth/news/2', 'PUT', '127.0.0.1', '{\"title\":\"4 Desa Di Lampung Panen Besar\",\"description\":\"<p>Kembali Panen, Empat Desa di Kecamatan Trimurjo Kabupaten Lampung Tengah<\\/p>\\r\\n\\r\\n<p>Kegiatan panen di Provinsi Lampung tanggal 17 Januari 2018, berada di empat desa di Kecamatan Trimurjo Kabupaten Lampung Tengah.<\\/p>\\r\\n\\r\\n<p>Desa Pujo Dadi Kecamatan Trimurjo Kabupaten Lampung Tengah, dilakukan panen luas 4 ha dari luas hamparan pertanaman padi 50 ha dengan harga gabah di tingkat petani Rp 5600\\/ kg GKP. Varietas yang di panen Padi Hibrida MNC dengan provitas 7.8 ton GKP.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"https:\\/\\/ptandallhasaprima.com\\/wp-content\\/uploads\\/2018\\/01\\/26733823_281497322377285_4555009961465596391_n.jpg\\\" style=\\\"height:720px; width:960px\\\" \\/><\\/p>\\r\\n\\r\\n<p>Desa Pujo Basuki Kec. Trimurjo Kab Lampung Tengah, dilakukan panen seluas 10 ha dari luas 100 hamparan pertanaman padi. Panen denga 4 unit combine dan beberapa sintok. Varietas yang di tanam Ciherang dengan provitas 7.2 ton \\/ha GKP. Harga gabah ditingkat petani Rp 5600\\/kg GKP.<\\/p>\\r\\n\\r\\n<p>Desa Pujo Asri Kec. Trimurjo Kab.Lampung Tengah, dilakukan panen 5 ha dari luasan hamparan padi 50 ha. Harga gabah di tingkat petani Rp 5800 \\/kg GKP provitas : 7.8 ton \\/ha. Panen di lakukan dengan dua unit combine harvester dan beberapa mesin perontok.<\\/p>\\r\\n\\r\\n<p>Desa Untoro Kec Trimurjo Kab. Lampung Tengah, panen dilakukan pada area 5 ha dari hamparan pertanaman padi luas 250 ha Varietas Inpari 30 dg provitas 7.2 ton\\/ha GKP dan harga gabah Rp 5800\\/kg GKP.<\\/p>\\r\\n\\r\\n<p><a href=\\\"https:\\/\\/www.facebook.com\\/hashtag\\/panenpanenpanen?source=feed_text&story_id=281497845710566\\\">#PanenPanenPanen<\\/a><br \\/>\\r\\n<a href=\\\"https:\\/\\/www.facebook.com\\/hashtag\\/nusantarapanen?source=feed_text&story_id=281497845710566\\\">#NusantaraPanen<\\/a><\\/p>\",\"source\":\"https:\\/\\/www.facebook.com\\/Balai-Pengkajian-Teknologi-Pertanian-Lampung-281093262417691\\/?hc_ref=ARR7-cBlvUD-HsY1IGo8X9LKlL9SNqNuT98AqAu_mACGPijzB_SROjB0Ounn1CIku70\",\"_token\":\"a0uMk4Ea2jhCLXO2AWLhpwMvmWTcndyGFfmXapzK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/news\"}', '2019-03-27 06:31:59', '2019-03-27 06:31:59'),
(2345, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-27 06:31:59', '2019-03-27 06:31:59'),
(2346, 1, 'admin/auth/news/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 06:33:35', '2019-03-27 06:33:35'),
(2347, 1, 'admin/auth/news', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 06:33:40', '2019-03-27 06:33:40'),
(2348, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-27 06:33:41', '2019-03-27 06:33:41'),
(2349, 1, 'admin/auth/news/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 06:33:44', '2019-03-27 06:33:44'),
(2350, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-27 06:33:52', '2019-03-27 06:33:52'),
(2351, 1, 'admin/auth/news/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 06:35:08', '2019-03-27 06:35:08'),
(2352, 1, 'admin/auth/news/3', 'PUT', '127.0.0.1', '{\"title\":\"Petani Lampung Diminta Manfaatkan Mesin Pertanian\",\"description\":\"<p>BANDAR LAMPUNG,&nbsp;Petani di Lampung yang tergabung dalam kelompok tani maupun gabungan kelompok tani diminta untuk memanfaatkan alat mesin pertanian bantuan Kementerian Pertanian.<\\/p>\\r\\n\\r\\n<p>&quot;Masih ditemukan alat mesin pertanian menganggur tak hanya di poktan atau gapoktan, tapi juga di brigade provinsi maupun kabupaten dan kota,&quot; kata Kepala Badan Penyuluhan dan Pengembangan Sumber Daya Manusia Pertanian Kementerian Pertanian Momon Rusmono, di Bandar Lampung, Kamis (13\\/12\\/2018).<\\/p>\\r\\n\\r\\n<p>Ia menyebutkan, apabila semua alat mesin pertanian (alsintan) digunakan maka Luas Tambah Tanam (LTT) dan Indeks Pertanaman (IP) akan meningkat.&nbsp; Ia menjelaskan, semua alsintan olah tanam harus dimaksimalkan sehingga panen dapat optimal.<\\/p>\\r\\n\\r\\n<p>Menurutnya, jika alsintan bantuan Kementerian Pertanian sejak tahun 2014 hingga 2017 tidak dapat digunakan secara optimal, harus dilakukan<br \\/>\\r\\nidentifikasi berapa alat yang layak atau tidak layak, termasuk bantuan tahun 2018.<br \\/>\\r\\n&nbsp;<br \\/>\\r\\nKemudian, dihitung berapa alsintan yang layak digunakan atau tidak layak digunakan dengan mencari solusinya, misalkan jika alat pertanian tersebut rusak dengan diperbaiki.&nbsp; Dalam kesempatan itu juga mengharapkan alsinta disimpan di Unit Pelayanan Jasa Alsintan (UPJA) karena kalau di kelompok tani akan muncul ego dan menimbulkan tidak maksimal. &nbsp;<\\/p>\\r\\n\\r\\n<p>&quot;Biasanya jika alsintan dipegang oleh ketua kelompok tani, seakan-akan menjadi hak milik. Padahal alsintan itu milik bersama,&quot; katanya.&nbsp;<\\/p>\\r\\n\\r\\n<p>Ia menambahkan Kementerian Pertanian sejak tahun 2014 hingga 2017 telah mendistribusikan alat mesin pertanian sebanyak 150.000 unit, senilai Rp7 triliun.&nbsp; &quot;Rata-rata per tahun sekitar 30 ribu hingga 40 ribu unit alsintan didistribusikan untuk petani,&quot; katanya.<\\/p>\\r\\n\\r\\n<p>Ia memperkirakan alsintan yang didistribusikan akan tembus sekitar 180.000 unit, hingga tahun 2018. Sementara itu, Kepala Bidang Sarana dan Prasarana Dinas Tanaman Pangan dan Hortikultura Lampung Indriatmoko menjelaskan adanya bantuan alsintan telah banyak dan dirasakan manfaatnyan oleh petani. &nbsp;<\\/p>\\r\\n\\r\\n<p>Namun, lanjutnya, masih banyak yang harus dioptimalkan. &quot;Kita punya waduk Batu Tegi, yang termasuk sumber air kita, namun bertahun tahun terdapat limpasan. Saat ini kita banyak program atau target produksi pertanian cukup besar, yakni naik 20 persen,&quot; ujarnya.<\\/p>\\r\\n\\r\\n<p>Namun, lanjutnya, target produksi tersebut tak diimbangi lahan yang ada yang sekarang semakin mengecil.&nbsp; Untuk mengatasi masalah tersebut, lanjutnya, salah satunya menggunakan teknologi berupa penggunaan alsintan untuk percepatan panen.<\\/p>\\r\\n\\r\\n<p>Selain itu juga melakukan efisiensi penggunaan irigasi, dan percepatan pengelolaan tanah sehingga tidak boros dan bisa menampung air yang banyak.&nbsp; Ia menambahkan, bantuan yang diberikan pemerintah berupa alsintan yang banyak tentu tidak ada yang menolak.<\\/p>\\r\\n\\r\\n<p>Namun, menurutnya, terdapat pula kendala banyaknya alsintan yakni harus menggunakan operator, biaya operasional termasuk merawatnya agar bisa berdaya guna sesuai umur ekonomis.<br \\/>\\r\\n&nbsp;<br \\/>\\r\\n&quot;Hal Itu menjadi pekerjaan rumah kita ke depan untuk bisa memanfaatkan dengan optimal dan merawat dengan baik,&quot; jelasnya.<\\/p>\\r\\n\\r\\n<p>Indriatmoko menambahkan, meskipun pemerintah melalui Kementerian Pertanian banyak membantu alsintan, namun masih banyak kelompok petani di daerah ini yang belum mendapatkan alat pertanian tersebut, seperti<br \\/>\\r\\ntransplanter, pompa air dan lainnya.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\",\"source\":\"http:\\/\\/www.lampost.co\\/berita-petani-lampung-diminta-manfaatkan-mesin-pertanian.html\",\"_token\":\"a0uMk4Ea2jhCLXO2AWLhpwMvmWTcndyGFfmXapzK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/news\"}', '2019-03-27 06:35:22', '2019-03-27 06:35:22'),
(2353, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-27 06:35:23', '2019-03-27 06:35:23'),
(2354, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-27 07:13:54', '2019-03-27 07:13:54'),
(2355, 1, 'admin/auth/news/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 07:20:33', '2019-03-27 07:20:33'),
(2356, 1, 'admin/auth/news/2', 'PUT', '127.0.0.1', '{\"title\":\"4 Desa Di Lampung Panen Besar\",\"description\":\"<p>Kembali Panen, Empat Desa di Kecamatan Trimurjo Kabupaten Lampung Tengah<\\/p>\\r\\n\\r\\n<p>Kegiatan panen di Provinsi Lampung tanggal 17 Januari 2018, berada di empat desa di Kecamatan Trimurjo Kabupaten Lampung Tengah.<\\/p>\\r\\n\\r\\n<p>Desa Pujo Dadi Kecamatan Trimurjo Kabupaten Lampung Tengah, dilakukan panen luas 4 ha dari luas hamparan pertanaman padi 50 ha dengan harga gabah di tingkat petani Rp 5600\\/ kg GKP. Varietas yang di panen Padi Hibrida MNC dengan provitas 7.8 ton GKP.<\\/p>\\r\\n\\r\\n<p>Desa Pujo Basuki Kec. Trimurjo Kab Lampung Tengah, dilakukan panen seluas 10 ha dari luas 100 hamparan pertanaman padi. Panen denga 4 unit combine dan beberapa sintok. Varietas yang di tanam Ciherang dengan provitas 7.2 ton \\/ha GKP. Harga gabah ditingkat petani Rp 5600\\/kg GKP.<\\/p>\\r\\n\\r\\n<p>Desa Pujo Asri Kec. Trimurjo Kab.Lampung Tengah, dilakukan panen 5 ha dari luasan hamparan padi 50 ha. Harga gabah di tingkat petani Rp 5800 \\/kg GKP provitas : 7.8 ton \\/ha. Panen di lakukan dengan dua unit combine harvester dan beberapa mesin perontok.<\\/p>\\r\\n\\r\\n<p>Desa Untoro Kec Trimurjo Kab. Lampung Tengah, panen dilakukan pada area 5 ha dari hamparan pertanaman padi luas 250 ha Varietas Inpari 30 dg provitas 7.2 ton\\/ha GKP dan harga gabah Rp 5800\\/kg GKP.<\\/p>\\r\\n\\r\\n<p><a href=\\\"https:\\/\\/www.facebook.com\\/hashtag\\/panenpanenpanen?source=feed_text&amp;story_id=281497845710566\\\">#PanenPanenPanen<\\/a><br \\/>\\r\\n<a href=\\\"https:\\/\\/www.facebook.com\\/hashtag\\/nusantarapanen?source=feed_text&amp;story_id=281497845710566\\\">#NusantaraPanen<\\/a><\\/p>\",\"source\":\"https:\\/\\/www.facebook.com\\/Balai-Pengkajian-Teknologi-Pertanian-Lampung-281093262417691\\/?hc_ref=ARR7-cBlvUD-HsY1IGo8X9LKlL9SNqNuT98AqAu_mACGPijzB_SROjB0Ounn1CIku70\",\"_token\":\"a0uMk4Ea2jhCLXO2AWLhpwMvmWTcndyGFfmXapzK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/news\"}', '2019-03-27 07:21:03', '2019-03-27 07:21:03'),
(2357, 1, 'admin/auth/news', 'GET', '127.0.0.1', '[]', '2019-03-27 07:21:04', '2019-03-27 07:21:04'),
(2358, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 07:32:39', '2019-03-27 07:32:39'),
(2359, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-27 07:33:26', '2019-03-27 07:33:26'),
(2360, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-27 07:33:35', '2019-03-27 07:33:35'),
(2361, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 07:33:57', '2019-03-27 07:33:57'),
(2362, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 07:33:59', '2019-03-27 07:33:59'),
(2363, 1, 'admin/auth/news', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 07:34:16', '2019-03-27 07:34:16'),
(2364, 1, 'admin/auth/news/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 07:34:22', '2019-03-27 07:34:22'),
(2365, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 07:34:30', '2019-03-27 07:34:30'),
(2366, 1, 'admin/auth/album-family', 'GET', '127.0.0.1', '[]', '2019-03-27 07:37:58', '2019-03-27 07:37:58'),
(2367, 1, 'admin/auth/testimonial', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 07:37:59', '2019-03-27 07:37:59'),
(2368, 1, 'admin/auth/album-family/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"a0uMk4Ea2jhCLXO2AWLhpwMvmWTcndyGFfmXapzK\"}', '2019-03-27 07:38:06', '2019-03-27 07:38:06'),
(2369, 1, 'admin/auth/album-family', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 07:38:06', '2019-03-27 07:38:06'),
(2370, 1, 'admin/auth/album-family/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 07:38:09', '2019-03-27 07:38:09'),
(2371, 1, 'admin/auth/album-family', 'POST', '127.0.0.1', '{\"_token\":\"a0uMk4Ea2jhCLXO2AWLhpwMvmWTcndyGFfmXapzK\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/album-family\"}', '2019-03-27 07:38:42', '2019-03-27 07:38:42'),
(2372, 1, 'admin/auth/album-family', 'GET', '127.0.0.1', '[]', '2019-03-27 07:38:42', '2019-03-27 07:38:42');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(2373, 1, 'admin/auth/album-family/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 07:38:44', '2019-03-27 07:38:44'),
(2374, 1, 'admin/auth/album-family', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 07:38:50', '2019-03-27 07:38:50'),
(2375, 1, 'admin/auth/album-family/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 07:38:51', '2019-03-27 07:38:51'),
(2376, 1, 'admin/auth/album-family', 'POST', '127.0.0.1', '{\"_token\":\"a0uMk4Ea2jhCLXO2AWLhpwMvmWTcndyGFfmXapzK\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/album-family\"}', '2019-03-27 07:38:55', '2019-03-27 07:38:55'),
(2377, 1, 'admin/auth/album-family', 'GET', '127.0.0.1', '[]', '2019-03-27 07:38:56', '2019-03-27 07:38:56'),
(2378, 1, 'admin/auth/album-family/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 07:38:57', '2019-03-27 07:38:57'),
(2379, 1, 'admin/auth/album-family', 'POST', '127.0.0.1', '{\"_token\":\"a0uMk4Ea2jhCLXO2AWLhpwMvmWTcndyGFfmXapzK\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/album-family\"}', '2019-03-27 07:39:04', '2019-03-27 07:39:04'),
(2380, 1, 'admin/auth/album-family/create', 'GET', '127.0.0.1', '[]', '2019-03-27 07:39:04', '2019-03-27 07:39:04'),
(2381, 1, 'admin/auth/album-family', 'POST', '127.0.0.1', '{\"_token\":\"a0uMk4Ea2jhCLXO2AWLhpwMvmWTcndyGFfmXapzK\",\"after-save\":\"2\"}', '2019-03-27 07:39:10', '2019-03-27 07:39:10'),
(2382, 1, 'admin/auth/album-family/create', 'GET', '127.0.0.1', '[]', '2019-03-27 07:39:10', '2019-03-27 07:39:10'),
(2383, 1, 'admin/auth/album-family/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 07:39:12', '2019-03-27 07:39:12'),
(2384, 1, 'admin/auth/album-family', 'POST', '127.0.0.1', '{\"_token\":\"a0uMk4Ea2jhCLXO2AWLhpwMvmWTcndyGFfmXapzK\"}', '2019-03-27 07:39:31', '2019-03-27 07:39:31'),
(2385, 1, 'admin/auth/album-family', 'GET', '127.0.0.1', '[]', '2019-03-27 07:39:31', '2019-03-27 07:39:31'),
(2386, 1, 'admin/auth/contact-profile', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 08:31:44', '2019-03-27 08:31:44'),
(2387, 1, 'admin/auth/contact-support', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 08:31:48', '2019-03-27 08:31:48'),
(2388, 1, 'admin/auth/contact-profile', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 08:31:49', '2019-03-27 08:31:49'),
(2389, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 08:34:46', '2019-03-27 08:34:46'),
(2390, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-27 08:34:57', '2019-03-27 08:34:57'),
(2391, 3, 'admin/auth/contact-profile', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 08:35:05', '2019-03-27 08:35:05'),
(2392, 3, 'admin/auth/contact-support', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 08:35:17', '2019-03-27 08:35:17'),
(2393, 3, 'admin/auth/contact-profile', 'GET', '127.0.0.1', '[]', '2019-03-27 08:35:19', '2019-03-27 08:35:19'),
(2394, 3, 'admin/auth/contact-support/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 08:53:34', '2019-03-27 08:53:34'),
(2395, 3, 'admin/auth/contact-support/2', 'PUT', '127.0.0.1', '{\"nama\":\"Rindang Ramadhan\",\"no_telp\":\"0721-784985\",\"whatsapp\":\"0852-6914-1777\",\"email\":\"loremipsum@gmail.com\",\"_token\":\"kDwJFPaDSEYsOqpUEBywYez3czjbE4KXskM3GveC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/contact-support\"}', '2019-03-27 08:53:44', '2019-03-27 08:53:44'),
(2396, 3, 'admin/auth/contact-support', 'GET', '127.0.0.1', '[]', '2019-03-27 08:53:45', '2019-03-27 08:53:45'),
(2397, 3, 'admin/auth/testimonial', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 08:57:41', '2019-03-27 08:57:41'),
(2398, 3, 'admin/auth/album-family', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 08:57:53', '2019-03-27 08:57:53'),
(2399, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 08:58:01', '2019-03-27 08:58:01'),
(2400, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-27 08:58:10', '2019-03-27 08:58:10'),
(2401, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 08:58:16', '2019-03-27 08:58:16'),
(2402, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 08:58:20', '2019-03-27 08:58:20'),
(2403, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 08:58:24', '2019-03-27 08:58:24'),
(2404, 1, 'admin/auth/permissions/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 08:58:31', '2019-03-27 08:58:31'),
(2405, 1, 'admin/auth/permissions/8', 'PUT', '127.0.0.1', '{\"slug\":\"auth.cms\",\"name\":\"Auth CMS\",\"http_method\":[null],\"http_path\":\"\\/auth\\/banners*\\r\\n\\/auth\\/our-partner*\\r\\n\\/auth\\/news*\\r\\n\\/auth\\/testimonial*\\r\\n\\/auth\\/album-family*\",\"_token\":\"BZv3TA31oWUofCJFqo7rtEVS8rxjlhsI88f1mk5H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2019-03-27 08:59:30', '2019-03-27 08:59:30'),
(2406, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-03-27 08:59:30', '2019-03-27 08:59:30'),
(2407, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 08:59:38', '2019-03-27 08:59:38'),
(2408, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-27 08:59:49', '2019-03-27 08:59:49'),
(2409, 3, 'admin/auth/testimonial', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 08:59:53', '2019-03-27 08:59:53'),
(2410, 3, 'admin/auth/album-family', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 08:59:57', '2019-03-27 08:59:57'),
(2411, 3, 'admin/auth/testimonial', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 09:00:00', '2019-03-27 09:00:00'),
(2412, 3, 'admin/auth/testimonial/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 09:00:03', '2019-03-27 09:00:03'),
(2413, 3, 'admin/auth/testimonial', 'POST', '127.0.0.1', '{\"nama\":\"Dwy Irama\",\"jenis_kelamin\":\"2\",\"pesan\":\"Saya bangga menjadi bagian dari keluarga PT Andall Hasa Prima. Sangat menghargai kami sebagai pekerja.\",\"_token\":\"BkVR2WLtxv0RNUtESQxlxftLbN7agAEH2SRMvar2\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/testimonial\"}', '2019-03-27 09:00:39', '2019-03-27 09:00:39'),
(2414, 3, 'admin/auth/testimonial', 'GET', '127.0.0.1', '[]', '2019-03-27 09:00:39', '2019-03-27 09:00:39'),
(2415, 3, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 09:18:38', '2019-03-27 09:18:38'),
(2416, 3, 'admin/auth/product-groups', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-27 09:19:17', '2019-03-27 09:19:17'),
(2417, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-28 02:03:26', '2019-03-28 02:03:26'),
(2418, 1, 'admin/auth/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-28 02:03:35', '2019-03-28 02:03:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/log', NULL, '2019-03-16 10:16:05'),
(6, 'Auth Master Data', 'auth.masterdata', '', '/auth/pengunjung*\r\n/auth/users*', '2019-03-11 18:44:55', '2019-03-26 02:56:30'),
(7, 'Auth Setting', 'auth.setting', '', '/auth/benefit*\r\n/auth/faq*\r\n/auth/privacy-policy*\r\n/auth/about-us*\r\n/auth/term-of-use*\r\n/auth/visi-misi*', '2019-03-11 18:46:11', '2019-03-12 08:24:41'),
(8, 'Auth CMS', 'auth.cms', '', '/auth/banners*\r\n/auth/our-partner*\r\n/auth/news*\r\n/auth/testimonial*\r\n/auth/album-family*', '2019-03-13 09:32:08', '2019-03-27 08:59:30'),
(9, 'Auth Contact', 'auth.contact', '', '/auth/contact-profile*\r\n/auth/contact-support*', '2019-03-22 06:04:41', '2019-03-22 06:05:16'),
(10, 'Auth Master Produk', 'auth.masterproduk', '', '/auth/main-product*\r\n/auth/products*\r\n/auth/product-categorys*\r\n/auth/product-groups*', '2019-03-26 02:56:13', '2019-03-26 02:57:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2019-02-23 23:52:04', '2019-02-23 23:52:04'),
(2, 'Owner', 'owner', '2019-03-04 21:38:25', '2019-03-04 21:38:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 9, NULL, NULL),
(1, 12, NULL, NULL),
(2, 12, NULL, NULL),
(1, 10, NULL, NULL),
(2, 10, NULL, NULL),
(1, 14, NULL, NULL),
(2, 14, NULL, NULL),
(1, 15, NULL, NULL),
(2, 15, NULL, NULL),
(1, 16, NULL, NULL),
(2, 16, NULL, NULL),
(1, 18, NULL, NULL),
(2, 18, NULL, NULL),
(1, 19, NULL, NULL),
(2, 19, NULL, NULL),
(1, 20, NULL, NULL),
(2, 20, NULL, NULL),
(1, 21, NULL, NULL),
(2, 21, NULL, NULL),
(1, 22, NULL, NULL),
(2, 22, NULL, NULL),
(1, 23, NULL, NULL),
(2, 23, NULL, NULL),
(1, 24, NULL, NULL),
(2, 24, NULL, NULL),
(1, 25, NULL, NULL),
(2, 25, NULL, NULL),
(1, 26, NULL, NULL),
(2, 26, NULL, NULL),
(1, 27, NULL, NULL),
(2, 27, NULL, NULL),
(1, 28, NULL, NULL),
(2, 28, NULL, NULL),
(1, 30, NULL, NULL),
(2, 30, NULL, NULL),
(1, 31, NULL, NULL),
(2, 31, NULL, NULL),
(1, 32, NULL, NULL),
(2, 32, NULL, NULL),
(1, 33, NULL, NULL),
(2, 33, NULL, NULL),
(1, 34, NULL, NULL),
(2, 34, NULL, NULL),
(1, 35, NULL, NULL),
(2, 35, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL),
(2, 3, NULL, NULL),
(2, 4, NULL, NULL),
(2, 6, NULL, NULL),
(2, 7, NULL, NULL),
(2, 8, NULL, NULL),
(2, 9, NULL, NULL),
(2, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$r1anIQK0kWl35WoKTQM98OqSNqpRb3J5uf59C0H/5n2BfI9gzwnJG', 'Rindang Ramadhan', 'images/29bb2573506242c5a099932b3084793f.jpg', 'OJs46AupGKSryw1F68YV73teuzHlRlnltieMb42juCOHDmxqodorXYwU833V', '2019-02-23 23:52:04', '2019-03-10 21:31:18'),
(3, 'andallhasaprima', '$2y$10$FbCl6pvbbkD/lZBuzHP/QOBG6lfioDQ.p4pbxEzOt2/co6H8ww.lO', 'PT. Andall Hasa Prima', 'images/IMG_20170115_004407-150x150.jpg', 'QFQWWqoHEMMPVo5VKo6xGSHjoXJSOFgbMNQQ4E8DIQgLnONLzzQ9jqLzrnGf', '2019-03-10 21:38:48', '2019-03-10 22:03:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admin_user_permissions`
--

INSERT INTO `admin_user_permissions` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(3, 2, NULL, NULL),
(3, 3, NULL, NULL),
(3, 4, NULL, NULL),
(3, 6, NULL, NULL),
(3, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `album_families`
--

CREATE TABLE `album_families` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `album_families`
--

INSERT INTO `album_families` (`id`, `image`, `created_at`, `updated_at`) VALUES
(2, 'images/IMG_0072.jpg', '2019-03-27 07:38:42', '2019-03-27 07:38:42'),
(3, 'images/IMG_0192.jpg', '2019-03-27 07:38:56', '2019-03-27 07:38:56'),
(4, 'images/IMG_4915_2.jpg', '2019-03-27 07:39:04', '2019-03-27 07:39:04'),
(5, 'images/IMG_5506.jpg', '2019-03-27 07:39:10', '2019-03-27 07:39:10'),
(6, 'images/noragami.jpg', '2019-03-27 07:39:31', '2019-03-27 07:39:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `button` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `banners`
--

INSERT INTO `banners` (`id`, `foto`, `created_at`, `updated_at`, `title`, `sub_title`, `button`, `url`) VALUES
(2, 'images/Office.jpg', '2019-03-13 09:52:34', '2019-03-26 02:35:28', 'PT ANDALL HASA PRIMA', 'Your Agrochemicals Solution', 'Learn More', 'about-us'),
(3, 'images/2bbeb1d76985a90bf0b0089b723bbde7.jpg', '2019-03-13 09:52:42', '2019-03-26 02:34:25', 'Produk Kami', 'Hadirkan solusi dengan produk terbaik', 'See All Product', 'products'),
(4, 'images/Alpuz.jpg', '2019-03-13 09:52:48', '2019-03-26 02:34:12', 'Modern Machine', 'Mengoptimalkan hasil dengan mesin berteknologi mutakhir', 'See All Alsintan', 'alinstan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `benefits`
--

CREATE TABLE `benefits` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `benefit1` text COLLATE utf8mb4_unicode_ci,
  `image2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `benefit2` text COLLATE utf8mb4_unicode_ci,
  `image3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `benefits`
--

INSERT INTO `benefits` (`id`, `title`, `image1`, `benefit1`, `image2`, `benefit2`, `image3`, `created_at`, `updated_at`) VALUES
(1, 'Beralih ke Produk Kami', 'images/why-1.jpg', '<p>Teknik pertanian merupakan pendekatan teknik (engineering) secara luas dalam bidang pertanian yang sangat dibutuhkan untuk melakukan transformasi sumberdaya alam secara efisien dan efektif untuk pemanfaatannya oleh manusia. Dalam sistematika keilmuan, bidang teknik pertanian tetap bertumpu pada bidang ilmu teknik untuk memcahkan berbagai permasalahan di bidang pertanian.</p>\r\n\r\n<p>Oleh karena itu teknologi pertanian sangat dibutuhkan demi mensejahterakan kehidupan petani dan untuk memenuhi kebutuhan akan produk hasil pertanian dalam skala yang besar.</p>', 'images/why-2.png', '<p>Dampak positif penggunaan teknologi pertanian seperti pengolahan lahan yang lebih mudah karena tidak dikerakan lagi secara manual melainkan dengan mesin. Produk hasil pertanian yang awalnya mudah rusak bisa dia atasi dengan teknologi pengolahan hasil pertanian. Adanya teknologi juga bisa menjamin kegiatan pertanian yang lebih pasti tanpa adanya kekhawatiran akan gagal panen dan kerusakan pada lahan pertanian.</p>', 'images/why-3.jpg', '2019-03-12 08:27:12', '2019-03-16 13:28:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_telephon` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pesan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `contacts`
--

INSERT INTO `contacts` (`id`, `nama`, `email`, `nomor_telephon`, `subject`, `pesan`, `created_at`, `updated_at`) VALUES
(1, 'Rindang Ramadhan', 'hjhj@gmsil.bi', '80909', 'hahah', 'hjahjhaj', '2019-03-22 18:44:43', '2019-03-22 18:44:43'),
(2, 'Rindang Ramadhan', 'hjhj@gmsil.bi', '80909', 'hahah', 'hjahjhaj', '2019-03-22 18:53:41', '2019-03-22 18:53:41'),
(3, 'Rindang Ramadhan', 'rindang@gmail.com', '9898989', 'coba', 'coba coba aja', '2019-03-22 18:54:52', '2019-03-22 18:54:52'),
(4, 'Rindang Ramadhan', 'rindang@gmail.com', '9898989', 'coba', 'coba coba aja', '2019-03-22 18:58:08', '2019-03-22 18:58:08'),
(5, 'Rindang Ramadhan', 'rindang@gmail.com', '9898989', 'coba', 'coba coba aja', '2019-03-22 18:58:43', '2019-03-22 18:58:43'),
(6, 'Rindang Ramadhan', 'rindangramadhan10@gmail.com', '0822-8159-7835', 'tes', 'yoshhhhh', '2019-03-22 19:04:02', '2019-03-22 19:04:02'),
(7, 'Rindang Ramadhan', 'rindangramadhan10@gmail.com', '0822-8159-7835', 'TEs', 'Yoshhhh againnns', '2019-03-22 19:10:19', '2019-03-22 19:10:19'),
(8, 'Rindang Ramadhan', 'rindangramadhan10@gmail.com', '0822-8159-7835', 'tess', 'yoshhhh', '2019-03-22 19:11:40', '2019-03-22 19:11:40'),
(9, 'Rindang Ramadhan', 'hjhj@gmsil.bi', '0822-8159-7835', 'asd', 'asdsad', '2019-03-22 19:14:29', '2019-03-22 19:14:29'),
(10, 'Rindang Ramadhan', 'rindangramadhan10@gmail.com', '0822-8159-7835', 'Test', 'Yoshhh', '2019-03-22 19:18:03', '2019-03-22 19:18:03'),
(11, 'Rindang Ramadhan', 'rindangramadhan10@gmail.com', '0822-8159-7835', 'Test', 'Yoshhh', '2019-03-22 19:18:30', '2019-03-22 19:18:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact_profiles`
--

CREATE TABLE `contact_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `contact_profiles`
--

INSERT INTO `contact_profiles` (`id`, `info`, `alamat`, `created_at`, `updated_at`) VALUES
(1, '<p>Anda dapat mengunjungi kami untuk informasi lebih lanjut.</p>', '<p>Jl. Raya Hajimena No. 6 Pemanggilan Natar Lampung Selatan 35362</p>', '2019-03-22 06:13:01', '2019-03-22 06:13:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact_supports`
--

CREATE TABLE `contact_supports` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `contact_supports`
--

INSERT INTO `contact_supports` (`id`, `nama`, `no_telp`, `whatsapp`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Jhon Doe', '0721-784985', '0852-6914-1777', 'jhondoe@gmail.com', '2019-03-22 06:34:31', '2019-03-22 06:34:31'),
(2, 'Rindang Ramadhan', '0721-784985', '0852-6914-1777', 'loremipsum@gmail.com', '2019-03-22 06:35:27', '2019-03-27 08:53:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `download_katalogs`
--

CREATE TABLE `download_katalogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perusahaan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `download_katalogs`
--

INSERT INTO `download_katalogs` (`id`, `nama_lengkap`, `perusahaan`, `email`, `no_telp`, `created_at`, `updated_at`) VALUES
(6, 'Rindang Ramadhan', '-', 'rindangramadhan10@gmail.com', '0822-8159-7835', '2019-03-17 01:24:51', '2019-03-17 01:24:51'),
(7, 'Rindang Ramadhan', '-', 'rindangramadhan10@gmail.com', '0822-8159-7835', '2019-03-17 01:26:53', '2019-03-17 01:26:53'),
(8, 'Rindang Ramadhan', '-', 'rindangramadhan10@gmail.com', '0822-8159-7835', '2019-03-17 01:28:28', '2019-03-17 01:28:28'),
(9, 'Rindang Ramadhan', '-', 'rindangramadhan10@gmail.com', '0822-8159-7835', '2019-03-17 01:28:52', '2019-03-17 01:28:52'),
(10, 'Rindang Ramadhan', '-', 'rindangramadhan10@gmail.com', '0822-8159-7835', '2019-03-17 01:29:39', '2019-03-17 01:29:39'),
(11, 'Rindang Ramadhan', '-', 'rindangramadhan10@gmail.com', '0822-8159-7835', '2019-03-17 01:29:43', '2019-03-17 01:29:43'),
(12, 'Rindang Ramadhan', '-', 'rindangramadhan10@gmail.com', '0822-8159-7835', '2019-03-17 01:30:11', '2019-03-17 01:30:11'),
(13, 'Rindang Ramadhan', '-', 'rindangramadhan10@gmail.com', '0822-8159-7835', '2019-03-17 01:45:32', '2019-03-17 01:45:32'),
(14, 'Rindang Ramadhan', '-', 'rindangramadhan10@gmail.com', '0822-8159-7835', '2019-03-17 01:47:07', '2019-03-17 01:47:07'),
(15, 'Rindang Ramadhan', '-', 'rindangramadhan10@gmail.com', '0822-8159-7835', '2019-03-17 01:47:54', '2019-03-17 01:47:54'),
(16, 'Rindang Ramadhan', '-', 'rindangramadhan10@gmail.com', '0822-8159-7835', '2019-03-17 01:48:03', '2019-03-17 01:48:03'),
(17, 'Rindang Ramadhan', '-', 'rindangramadhan10@gmail.com', '0822-8159-7835', '2019-03-17 01:48:15', '2019-03-17 01:48:15'),
(18, 'Rindang Ramadhan', '-', 'rindangramadhan10@gmail.com', '0822-8159-7835', '2019-03-17 01:50:27', '2019-03-17 01:50:27'),
(19, 'Rindang Ramadhan', '-', 'rindangramadhan10@gmail.com', '0822-8159-7835', '2019-03-17 01:50:29', '2019-03-17 01:50:29'),
(20, 'Rindang Ramadhan', '-', 'rindangramadhan10@gmail.com', '0822-8159-7835', '2019-03-17 01:50:40', '2019-03-17 01:50:40'),
(21, 'Rindang Ramadhan', '-', 'rindangramadhan10@gmail.com', '0822-8159-7835', '2019-03-17 01:50:52', '2019-03-17 01:50:52'),
(22, 'Rindang Ramadhan', '-', 'rindangramadhan10@gmail.com', '0822-8159-7835', '2019-03-17 01:51:05', '2019-03-17 01:51:05'),
(23, 'Rindang Ramadhan', '-', 'rindangramadhan10@gmail.com', '0822-8159-7835', '2019-03-17 01:51:32', '2019-03-17 01:51:32'),
(24, 'Rindang Ramadhan', '-', 'rindangramadhan10@gmail.com', '0822-8159-7835', '2019-03-17 01:56:39', '2019-03-17 01:56:39'),
(25, 'Rindang Ramadhan', '-', 'rindangramadhan10@gmail.com', '0822-8159-7835', '2019-03-17 01:58:16', '2019-03-17 01:58:16'),
(26, 'Rindang Ramadhan', '-', 'rindangramadhan10@gmail.com', '0822-8159-7835', '2019-03-21 04:22:35', '2019-03-21 04:22:35'),
(27, 'Rindang Ramadhan', '-', 'r.ramadhan@glovory.com', '0822-8159-7835', '2019-03-21 04:22:47', '2019-03-21 04:22:47'),
(28, 'Rindang Ramadhan', '-', 'rindangramadhan10@gmail.com', '822-8159-7835', '2019-03-22 07:23:38', '2019-03-22 07:23:38'),
(29, 'Rindang Ramadhan', '-', 'rindangramadhan10@gmail.com', '0822-8159-7835', '2019-03-22 07:28:15', '2019-03-22 07:28:15'),
(30, 'Rindang Ramadhan', '-', 'rindangramadhan10@gmail.com', '0822-8159-7835', '2019-03-22 07:28:22', '2019-03-22 07:28:22'),
(31, 'Rindang Ramadhan', '-', 'rindangramadhan10@gmail.com', '0822-8159-7835', '2019-03-22 07:45:35', '2019-03-22 07:45:35'),
(32, 'Rindang Ramadhan', '-', 'r.ramadhan@glovory.com', '0822-8159-7835', '2019-03-22 07:50:18', '2019-03-22 07:50:18'),
(33, 'Rindang Ramadhan', '-', 'r.ramadhan@glovory.com', '0822-8159-7835', '2019-03-22 07:51:44', '2019-03-22 07:51:44'),
(34, 'Rindang Ramadhan', 'ra', 'r.ramadhan@decode.com.sa', '0822-8159-7835', '2019-03-22 07:55:22', '2019-03-22 07:55:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `faqs`
--

INSERT INTO `faqs` (`id`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, '<h3><strong>FAQ</strong></h3>', '2019-03-11 11:50:34', '2019-03-11 19:44:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(5, '2019_02_24_105951_create_product_categories_table', 2),
(6, '2019_02_24_115526_create_products_table', 3),
(7, '2019_03_11_144805_create_visi_misis_table', 4),
(8, '2019_03_11_144950_create_faqs_table', 4),
(9, '2019_03_11_145037_create_term_of_uses_table', 4),
(10, '2019_03_11_145149_create_privacy_policies_table', 4),
(12, '2019_03_12_143542_create_tentang_kamis_table', 5),
(13, '2019_03_12_150529_create_benefits_table', 6),
(14, '2019_03_12_183607_create_product_groups_table', 7),
(15, '2019_03_13_160642_create_our_partners_table', 8),
(16, '2019_03_13_164132_create_banners_table', 9),
(18, '2019_03_13_173458_create_news_table', 10),
(19, '2019_03_16_152120_create_pengunjungs_table', 11),
(23, '2019_03_16_184330_create_testimonials_table', 12),
(24, '2019_03_17_065509_create_download_katalogs_table', 12),
(25, '2019_03_17_073300_create_album_families_table', 12),
(26, '2019_03_18_160328_create_contacts_table', 13),
(27, '2019_03_22_085307_create_contact_profiles_table', 13),
(28, '2019_03_22_092925_create_contact_supports_table', 13),
(29, '2019_03_22_143550_add_columns_to_products', 14),
(30, '2019_03_23_025945_create_about_products_table', 15),
(31, '2019_03_23_042301_add_column_to_banner', 16);

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`id`, `title`, `image`, `description`, `source`, `created_at`, `updated_at`) VALUES
(1, 'Petani lampung hasilkan 50 ton merah', 'images/news2.jpg', '<p>Bandar Lampung (05 Feb 2019)&nbsp;Tidak banyak pemuda yang bercita-cita menjadi petani. Kelompok kecil ini, yang benar-benar menjadikan pertanian sebagai passion dan mata pencaharian utama, mulai muncul ke permukaan. Geliatnya sudah mulai terasa terutama di media-media sosial, tempat mereka berbagi ilmu pertanian berdasarkan trial dan error.</p>\r\n\r\n<p>dilakukan untuk mendukung kebijakan di bidang pertanian. Teknologi dibuat untuk mendukung pertanian. Maka tidak heran jika hari ini mereka menguasai ekspor pertanian dunia. Perdesaan yang perekonomiannya bercorak pertanian tidak seharusnya berubah menjadi perkotaan yang bercorak industri dan jasa untuk menjadi daerah yang maju. Desa bisa menjadi pendukung yang baik bagi kota. Begitupun sebaliknya. Desa bisa tumbuh, berkembang, dan maju setara dengan kota tanpa harus beralih menjadi daerah yang bercorak industri dan jasa. Profesi petani bisa setara dengan profesi lainnya terutama di bidang industri dan jasa. Pertanian tidak bisa tergantikan. Negara tanpa sistem pertanian yang baik akan selalu tergantung kepada negara lain. Indonesia memiliki sumber daya alam yang melimpah. Tanahnya subur, tapi ironis pertaniannya malah tidak lebih baik dari negara tetangganya. Sudah banyak kata sindiran ditulis namun tujuh puluh tiga tahun merdeka pertanian tidak banyak berubah. Sistem mengolah, menanam, sampai memanen seperti berjalan di tempat. Jika di Amerika petani sudah menenteng laptop dan pegangannya GPS, di negara kita masih saja mengayunkan cangkul. Tidak heran jika profesi ini semakin hari semakin ditinggalkan. Kebanyakan orangtua petani pun tidak ingin anaknya nanti berprofesi seperti mereka. Bagaimana regenerasi petani bisa dilakukan jika fakta di lapangan seperti itu?</p>\r\n\r\n<p>Mungkin tidak pernah mendengar ada anak yang bercita-cita menjadi petani. Umumnya mereka bercita-cita menjadi dokter, polisi, yang penting di kantor, tidak kotor. Kotor identik dengan keterbelakangan. Bahkan mahasiswa Jurusan Pertanian sekalipun ketika lulus memilih menjadi karyawan. Ini menjadi tanda paling sederhana bahwa menjadi petani bukan sesuatu yang diharapkan --bukan profesi prestisius, apalagi menjanjikan. Kebanyakan petani adalah mereka yang &quot;kalah&quot; dalam persaingan bursa kerja --terpaksa daripada tidak bekerja. Akhirnya kualitas pertanian pun tidak pernah berkembang, karena ilmu yang dipakai tidak pernah di-upgrade. Bertani hanya sekadar menyambung hidup. Tanpa ada keinginan untuk mencari dan melakukan cara lain yang lebih modern.</p>\r\n\r\n<p>Data memperlihatkan bahwa jumlah petani setiap tahunnya selalu menurun sekitar 1,1 persen, tanpa ada penambahan yang signifikan di kelompok usia muda. Data BPS dari hasil survei pertanian antarsensus 2018 menunjukkan hampir 70 persen petani adalah kelompok umur 45 tahun ke atas. Berkurangnya jumlah petani juga diikuti dengan luas lahan pertanian yang semakin menyusut setiap tahunnya karena alih fungsi.</p>\r\n\r\n<p>Regenerasi sudah lama tidak berjalan, ditambah label di masyarakat tentang petani membuat anak muda maju-mundur untuk menjadi petani. Seorang sarjana pertanian memiliki ilmu tentang bertani, tapi tidak memiliki mental untuk menjadi petani. Sebenarnya tidak menjadi masalah yang terlalu serius jumlah petani semakin menyusut jika yang tersisa adalah petani yang memiliki keinginan besar dalam bidang pertanian. Orang-orang yang memiliki passion dalam bidang mana pun akan selalu berupaya. Melalui orang-orang seperti ini pertanian akan maju. Tapi, seberapa banyak orang yang memiliki passion di pertanian?</p>\r\n\r\n<p>Menjadi tugas kita semua sebagai masyarakat untuk turut mendukung pertanian agar lebih maju. Salah satu caranya dengan menghapus gambaran kurang baik tentang petani. Paling tidak, kita tidak menjadi bagian yang menjatuhkan ketika seorang sarjana yang kata orang sudah sekolah tinggi-tinggi memutuskan untuk menjadi petani. Walaupun sebenarnya gambaran ini muncul lebih dikarenakan ketiadaan bukti petani yang berhasil melalui ilmu dan teknologi. Petani kita masih identik dengan pendidikan rendah dan kemiskinan. Selama ini gambaran tentang petani adalah mereka dengan pendidikan rendah dan hidup di bawah garis kemiskinan. Walaupun tidak sedikit yang sukses dan menjadi kaya, tetapi kalangan ini pun belum menarik minat generasi muda. Lagi-lagi petani yang sukses ini tidak lebih baik secara pendidikan. Keberhasilan mereka identik dengan kerja keras menggunakan otot. Sehingga terlihat masih kurang keren di mata anak muda.</p>\r\n\r\n<p>Tugas untuk menghapus gambaran kurang baik tentang petani akan lebih mudah jika petaninya itu sendiri yang berubah. Salah satunya melalui petani-petani muda yang saya sebutkan tadi. Mereka memiliki kemauan dan passion di bidang pertanian. Mereka menghargai profesi pertanian. Dengan begitu kita berharap beberapa tahun ke depan akan muncul petani-petani sukses yang tentengannya laptop, bukan pacul --yang cara kerjanya dengan penerapan teknologi. Sehingga akan menggugah minat generasi selanjutnya. Maka regenerasi petani diharapkan akan tumbuh.</p>\r\n\r\n<p>Pemerintah juga memiliki peran yang tidak kalah penting. Desa yang maju akan memudahkan petaninya. Desa yang maju adalah desa yang memiliki infrastruktur dasar yang baik, seperti fasilitas jalan yang baik, air bersih yang memadai, dan listrik. Di sinilah pemerintah hadir untuk menyediakan infrastruktur dasar yang lengkap.</p>\r\n\r\n<p>Dengan begitu kita berharap di masa yang akan datang akan banyak anak muda yang bercita-cita menjadi seorang petani. Menumbuhkan kembali minat pertanian yang sebenarnya sangat cocok di alam Indonesia. Menumbuhkan semangat berdikari yang sampai hari ini masih menjadi slogan manis pemecut semangat. Sehingga lirik lagu kondang era 1970-an milik Koes Plus, &quot;Orang bilang tanah kita tanah surga, tongkat kayu dan batu jadi tanaman,&quot; tidak sekadar ironi di tanah subur yang hasil pertaniannya sendiri harus impor</p>', '- Admin Redaksi AHP', '2019-03-03 04:52:47', '2019-03-16 13:58:35'),
(2, '4 Desa Di Lampung Panen Besar', 'images/aaaaa.jpg', '<p>Kembali Panen, Empat Desa di Kecamatan Trimurjo Kabupaten Lampung Tengah</p>\r\n\r\n<p>Kegiatan panen di Provinsi Lampung tanggal 17 Januari 2018, berada di empat desa di Kecamatan Trimurjo Kabupaten Lampung Tengah.</p>\r\n\r\n<p>Desa Pujo Dadi Kecamatan Trimurjo Kabupaten Lampung Tengah, dilakukan panen luas 4 ha dari luas hamparan pertanaman padi 50 ha dengan harga gabah di tingkat petani Rp 5600/ kg GKP. Varietas yang di panen Padi Hibrida MNC dengan provitas 7.8 ton GKP.</p>\r\n\r\n<p>Desa Pujo Basuki Kec. Trimurjo Kab Lampung Tengah, dilakukan panen seluas 10 ha dari luas 100 hamparan pertanaman padi. Panen denga 4 unit combine dan beberapa sintok. Varietas yang di tanam Ciherang dengan provitas 7.2 ton /ha GKP. Harga gabah ditingkat petani Rp 5600/kg GKP.</p>\r\n\r\n<p>Desa Pujo Asri Kec. Trimurjo Kab.Lampung Tengah, dilakukan panen 5 ha dari luasan hamparan padi 50 ha. Harga gabah di tingkat petani Rp 5800 /kg GKP provitas : 7.8 ton /ha. Panen di lakukan dengan dua unit combine harvester dan beberapa mesin perontok.</p>\r\n\r\n<p>Desa Untoro Kec Trimurjo Kab. Lampung Tengah, panen dilakukan pada area 5 ha dari hamparan pertanaman padi luas 250 ha Varietas Inpari 30 dg provitas 7.2 ton/ha GKP dan harga gabah Rp 5800/kg GKP.</p>\r\n\r\n<p><a href=\"https://www.facebook.com/hashtag/panenpanenpanen?source=feed_text&amp;story_id=281497845710566\">#PanenPanenPanen</a><br />\r\n<a href=\"https://www.facebook.com/hashtag/nusantarapanen?source=feed_text&amp;story_id=281497845710566\">#NusantaraPanen</a></p>', 'https://www.facebook.com/Balai-Pengkajian-Teknologi-Pertanian-Lampung-281093262417691/?hc_ref=ARR7-cBlvUD-HsY1IGo8X9LKlL9SNqNuT98AqAu_mACGPijzB_SROjB0Ounn1CIku70', '2019-03-13 11:52:47', '2019-03-27 07:21:03'),
(3, 'Petani Lampung Diminta Manfaatkan Mesin Pertanian', 'images/petani-lampung-diminta-manfaatkan-mesin-pertanian.jpg', '<p>BANDAR LAMPUNG,&nbsp;Petani di Lampung yang tergabung dalam kelompok tani maupun gabungan kelompok tani diminta untuk memanfaatkan alat mesin pertanian bantuan Kementerian Pertanian.</p>\r\n\r\n<p>&quot;Masih ditemukan alat mesin pertanian menganggur tak hanya di poktan atau gapoktan, tapi juga di brigade provinsi maupun kabupaten dan kota,&quot; kata Kepala Badan Penyuluhan dan Pengembangan Sumber Daya Manusia Pertanian Kementerian Pertanian Momon Rusmono, di Bandar Lampung, Kamis (13/12/2018).</p>\r\n\r\n<p>Ia menyebutkan, apabila semua alat mesin pertanian (alsintan) digunakan maka Luas Tambah Tanam (LTT) dan Indeks Pertanaman (IP) akan meningkat.&nbsp; Ia menjelaskan, semua alsintan olah tanam harus dimaksimalkan sehingga panen dapat optimal.</p>\r\n\r\n<p>Menurutnya, jika alsintan bantuan Kementerian Pertanian sejak tahun 2014 hingga 2017 tidak dapat digunakan secara optimal, harus dilakukan<br />\r\nidentifikasi berapa alat yang layak atau tidak layak, termasuk bantuan tahun 2018.<br />\r\n&nbsp;<br />\r\nKemudian, dihitung berapa alsintan yang layak digunakan atau tidak layak digunakan dengan mencari solusinya, misalkan jika alat pertanian tersebut rusak dengan diperbaiki.&nbsp; Dalam kesempatan itu juga mengharapkan alsinta disimpan di Unit Pelayanan Jasa Alsintan (UPJA) karena kalau di kelompok tani akan muncul ego dan menimbulkan tidak maksimal. &nbsp;</p>\r\n\r\n<p>&quot;Biasanya jika alsintan dipegang oleh ketua kelompok tani, seakan-akan menjadi hak milik. Padahal alsintan itu milik bersama,&quot; katanya.&nbsp;</p>\r\n\r\n<p>Ia menambahkan Kementerian Pertanian sejak tahun 2014 hingga 2017 telah mendistribusikan alat mesin pertanian sebanyak 150.000 unit, senilai Rp7 triliun.&nbsp; &quot;Rata-rata per tahun sekitar 30 ribu hingga 40 ribu unit alsintan didistribusikan untuk petani,&quot; katanya.</p>\r\n\r\n<p>Ia memperkirakan alsintan yang didistribusikan akan tembus sekitar 180.000 unit, hingga tahun 2018. Sementara itu, Kepala Bidang Sarana dan Prasarana Dinas Tanaman Pangan dan Hortikultura Lampung Indriatmoko menjelaskan adanya bantuan alsintan telah banyak dan dirasakan manfaatnyan oleh petani. &nbsp;</p>\r\n\r\n<p>Namun, lanjutnya, masih banyak yang harus dioptimalkan. &quot;Kita punya waduk Batu Tegi, yang termasuk sumber air kita, namun bertahun tahun terdapat limpasan. Saat ini kita banyak program atau target produksi pertanian cukup besar, yakni naik 20 persen,&quot; ujarnya.</p>\r\n\r\n<p>Namun, lanjutnya, target produksi tersebut tak diimbangi lahan yang ada yang sekarang semakin mengecil.&nbsp; Untuk mengatasi masalah tersebut, lanjutnya, salah satunya menggunakan teknologi berupa penggunaan alsintan untuk percepatan panen.</p>\r\n\r\n<p>Selain itu juga melakukan efisiensi penggunaan irigasi, dan percepatan pengelolaan tanah sehingga tidak boros dan bisa menampung air yang banyak.&nbsp; Ia menambahkan, bantuan yang diberikan pemerintah berupa alsintan yang banyak tentu tidak ada yang menolak.</p>\r\n\r\n<p>Namun, menurutnya, terdapat pula kendala banyaknya alsintan yakni harus menggunakan operator, biaya operasional termasuk merawatnya agar bisa berdaya guna sesuai umur ekonomis.<br />\r\n&nbsp;<br />\r\n&quot;Hal Itu menjadi pekerjaan rumah kita ke depan untuk bisa memanfaatkan dengan optimal dan merawat dengan baik,&quot; jelasnya.</p>\r\n\r\n<p>Indriatmoko menambahkan, meskipun pemerintah melalui Kementerian Pertanian banyak membantu alsintan, namun masih banyak kelompok petani di daerah ini yang belum mendapatkan alat pertanian tersebut, seperti<br />\r\ntransplanter, pompa air dan lainnya.</p>\r\n\r\n<p>&nbsp;</p>', 'http://www.lampost.co/berita-petani-lampung-diminta-manfaatkan-mesin-pertanian.html', '2019-03-13 11:52:47', '2019-03-27 06:35:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `our_partners`
--

CREATE TABLE `our_partners` (
  `id` int(10) UNSIGNED NOT NULL,
  `partner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `our_partners`
--

INSERT INTO `our_partners` (`id`, `partner`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Indohoechst', 'images/10.png', '2019-03-13 09:34:41', '2019-03-13 09:34:41'),
(2, 'PT. Sekawan Maju Bersama Prima', 'images/11.png', '2019-03-13 09:35:26', '2019-03-13 09:35:26'),
(3, 'Danken Indonesia', 'images/2-1.png', '2019-03-13 09:39:39', '2019-03-13 09:39:39'),
(4, 'PT. Catur Agrodaya Mandiri', 'images/3.png', '2019-03-13 09:40:03', '2019-03-13 09:40:03'),
(5, 'PT. Sinar General Industries', 'images/4.png', '2019-03-13 09:40:56', '2019-03-13 09:40:56'),
(6, 'Kresna', 'images/5.png', '2019-03-16 13:37:11', '2019-03-16 13:37:11'),
(7, 'PT. Sanitas', 'images/6-1.png', '2019-03-16 13:37:31', '2019-03-16 13:37:31'),
(8, 'Agricon', 'images/7-1.png', '2019-03-16 13:37:43', '2019-03-16 13:37:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengunjungs`
--

CREATE TABLE `pengunjungs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengunjungs`
--

INSERT INTO `pengunjungs` (`id`, `ip`, `os`, `browser`, `created_at`, `updated_at`) VALUES
(5, '127.0.0.1', 'Unknown', 'Google Chrome v.72.0.3626.121', '2019-03-16 09:33:25', '2019-03-16 09:33:25'),
(6, '127.0.0.1', 'Unknown', 'Google Chrome v.72.0.3626.121', '2019-03-18 06:11:35', '2019-03-18 06:11:35'),
(7, '127.0.0.1', 'Unknown', 'Google Chrome v.72.0.3626.121', '2019-03-20 04:07:09', '2019-03-20 04:07:09'),
(8, '127.0.0.1', 'Unknown', 'Google Chrome v.72.0.3626.121', '2019-03-21 04:22:16', '2019-03-21 04:22:16'),
(9, '127.0.0.1', 'Unknown', 'Google Chrome v.72.0.3626.121', '2019-03-22 05:35:05', '2019-03-22 05:35:05'),
(10, '192.168.1.22', 'Linux', 'Mozilla Firefox v.65.0', '2019-03-22 06:18:07', '2019-03-22 06:18:07'),
(11, '192.168.1.18', 'Unknown', 'Google Chrome v.72.0.3626.121', '2019-03-22 06:19:44', '2019-03-22 06:19:44'),
(12, '192.168.1.22', 'Linux', 'Mozilla Firefox v.65.0', '2019-03-22 06:21:09', '2019-03-22 06:21:09'),
(13, '192.168.1.22', 'Linux', 'Mozilla Firefox v.65.0', '2019-03-22 06:21:10', '2019-03-22 06:21:10'),
(14, '192.168.1.22', 'Linux', 'Mozilla Firefox v.65.0', '2019-03-22 06:30:20', '2019-03-22 06:30:20'),
(15, '192.168.1.18', 'Unknown', 'Google Chrome v.72.0.3626.121', '2019-03-22 06:30:29', '2019-03-22 06:30:29'),
(16, '127.0.0.1', 'Unknown', 'Google Chrome v.73.0.3683.86', '2019-03-25 00:44:57', '2019-03-25 00:44:57'),
(17, '127.0.0.1', 'Unknown', 'Google Chrome v.73.0.3683.86', '2019-03-25 00:44:58', '2019-03-25 00:44:58'),
(18, '127.0.0.1', 'Unknown', 'Google Chrome v.73.0.3683.86', '2019-03-25 00:49:06', '2019-03-25 00:49:06'),
(19, '127.0.0.1', 'Unknown', 'Google Chrome v.73.0.3683.86', '2019-03-26 02:07:22', '2019-03-26 02:07:22'),
(20, '127.0.0.1', 'Unknown', 'Google Chrome v.73.0.3683.86', '2019-03-26 09:39:03', '2019-03-26 09:39:03'),
(21, '127.0.0.1', 'Unknown', 'Google Chrome v.73.0.3683.86', '2019-03-26 10:42:58', '2019-03-26 10:42:58'),
(22, '127.0.0.1', 'Unknown', 'Google Chrome v.73.0.3683.86', '2019-03-26 11:43:58', '2019-03-26 11:43:58'),
(23, '127.0.0.1', 'Unknown', 'Google Chrome v.73.0.3683.86', '2019-03-26 12:44:04', '2019-03-26 12:44:04'),
(24, '127.0.0.1', 'Unknown', 'Google Chrome v.73.0.3683.86', '2019-03-27 04:25:15', '2019-03-27 04:25:15'),
(25, '127.0.0.1', 'Unknown', 'Google Chrome v.73.0.3683.86', '2019-03-27 05:46:11', '2019-03-27 05:46:11'),
(26, '127.0.0.1', 'Unknown', 'Google Chrome v.73.0.3683.86', '2019-03-27 06:58:25', '2019-03-27 06:58:25'),
(27, '127.0.0.1', 'Unknown', 'Google Chrome v.73.0.3683.86', '2019-03-27 08:05:20', '2019-03-27 08:05:20'),
(28, '127.0.0.1', 'Unknown', 'Google Chrome v.73.0.3683.86', '2019-03-27 09:13:50', '2019-03-27 09:13:50'),
(29, '127.0.0.1', 'Unknown', 'Google Chrome v.73.0.3683.86', '2019-03-27 10:35:40', '2019-03-27 10:35:40'),
(30, '127.0.0.1', 'Unknown', 'Google Chrome v.73.0.3683.86', '2019-03-27 11:37:24', '2019-03-27 11:37:24'),
(31, '127.0.0.1', 'Unknown', 'Google Chrome v.73.0.3683.86', '2019-03-27 20:55:44', '2019-03-27 20:55:44'),
(32, '127.0.0.1', 'Unknown', 'Google Chrome v.73.0.3683.86', '2019-03-28 02:04:19', '2019-03-28 02:04:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `privacy_policies`
--

CREATE TABLE `privacy_policies` (
  `id` int(10) UNSIGNED NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `privacy_policies`
--

INSERT INTO `privacy_policies` (`id`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, '<h3><strong>Privacy Policy</strong></h3>', '2019-03-11 11:50:17', '2019-03-11 19:44:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_ingredients` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_formulation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_use` text COLLATE utf8mb4_unicode_ci,
  `product_dose` text COLLATE utf8mb4_unicode_ci,
  `product_package` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kategori_id` int(11) NOT NULL,
  `kelompok_id` int(11) NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_ingredients`, `product_formulation`, `product_use`, `product_dose`, `product_package`, `created_at`, `updated_at`, `kategori_id`, `kelompok_id`, `gambar`) VALUES
(2, 'ZIPHOS', '865 g/l 2,4-D DIMETILAMINA', 'LARUTAN DALAM AIR (SOLUBLE LIQUID/SL)', '<p><strong>TUJUAN PENGGUNAAN :&nbsp;</strong></p>\r\n\r\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:</p>\r\n\r\n<ol>\r\n	<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.</li>\r\n	<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)</li>\r\n	<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES</li>\r\n</ol>', '<ul>\r\n	<li>0,5-1/HA</li>\r\n	<li>2-4 ML PER LITER AIR</li>\r\n	<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)</li>\r\n</ul>', '<ul>\r\n	<li>40 X 200 ML 3</li>\r\n	<li>20 X 400 ML 3</li>\r\n	<li>15 X 1 LITER 3</li>\r\n	<li>20 LITER 3</li>\r\n	<li>200 LITER</li>\r\n</ul>', '2019-03-22 09:14:02', '2019-03-26 11:24:35', 2, 1, 'images/Ziphos.jpg'),
(3, 'BLACK HAWK', '865 g/l 2,4-D DIMETILAMINA', 'LARUTAN DALAM AIR (SOLUBLE LIQUID/SL)', '<p><strong>TUJUAN PENGGUNAAN :&nbsp;</strong></p>\r\n\r\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:</p>\r\n\r\n<ol>\r\n	<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.</li>\r\n	<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)</li>\r\n	<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES</li>\r\n</ol>', '<ul>\r\n	<li>0,5-1/HA</li>\r\n	<li>2-4 ML PER LITER AIR</li>\r\n	<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)</li>\r\n</ul>', '<ul>\r\n	<li>40 X 200 ML 3</li>\r\n	<li>20 X 400 ML 3</li>\r\n	<li>15 X 1 LITER 3</li>\r\n	<li>20 LITER 3</li>\r\n	<li>200 LITER</li>\r\n</ul>', '2019-03-22 09:14:02', '2019-03-26 11:25:20', 3, 2, 'images/Black Hawk.jpg'),
(4, 'BORER', '865 g/l 2,4-D DIMETILAMINA', 'LARUTAN DALAM AIR (SOLUBLE LIQUID/SL)', '<p><strong>TUJUAN PENGGUNAAN :&nbsp;</strong></p>\r\n\r\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:</p>\r\n\r\n<ol>\r\n	<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.</li>\r\n	<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)</li>\r\n	<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES</li>\r\n</ol>', '<ul>\r\n	<li>0,5-1/HA</li>\r\n	<li>2-4 ML PER LITER AIR</li>\r\n	<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)</li>\r\n</ul>', '<ul>\r\n	<li>40 X 200 ML 3</li>\r\n	<li>20 X 400 ML 3</li>\r\n	<li>15 X 1 LITER 3</li>\r\n	<li>20 LITER 3</li>\r\n	<li>200 LITER</li>\r\n</ul>', '2019-03-22 09:14:02', '2019-03-26 11:26:15', 4, 3, 'images/Borer.jpg'),
(5, 'DK METRIN', '865 g/l 2,4-D DIMETILAMINA', 'LARUTAN DALAM AIR (SOLUBLE LIQUID/SL)', '<p><strong>TUJUAN PENGGUNAAN :&nbsp;</strong></p>\r\n\r\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:</p>\r\n\r\n<ol>\r\n	<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.</li>\r\n	<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)</li>\r\n	<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES</li>\r\n</ol>', '<ul>\r\n	<li>0,5-1/HA</li>\r\n	<li>2-4 ML PER LITER AIR</li>\r\n	<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)</li>\r\n</ul>', '<ul>\r\n	<li>40 X 200 ML 3</li>\r\n	<li>20 X 400 ML 3</li>\r\n	<li>15 X 1 LITER 3</li>\r\n	<li>20 LITER 3</li>\r\n	<li>200 LITER</li>\r\n</ul>', '2019-03-22 09:14:02', '2019-03-26 11:26:36', 5, 1, 'images/DK Metrin.jpg'),
(6, 'BESTARI', '865 g/l 2,4-D DIMETILAMINA', 'LARUTAN DALAM AIR (SOLUBLE LIQUID/SL)', '<p><strong>TUJUAN PENGGUNAAN :&nbsp;</strong></p>\r\n\r\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:</p>\r\n\r\n<ol>\r\n	<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.</li>\r\n	<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)</li>\r\n	<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES</li>\r\n</ol>', '<ul>\r\n	<li>0,5-1/HA</li>\r\n	<li>2-4 ML PER LITER AIR</li>\r\n	<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)</li>\r\n</ul>', '<ul>\r\n	<li>40 X 200 ML 3</li>\r\n	<li>20 X 400 ML 3</li>\r\n	<li>15 X 1 LITER 3</li>\r\n	<li>20 LITER 3</li>\r\n	<li>200 LITER</li>\r\n</ul>', '2019-03-22 09:14:02', '2019-03-26 11:18:39', 2, 2, 'images/Bestari.png'),
(7, 'ALPUZ', '865 g/l 2,4-D DIMETILAMINA', 'LARUTAN DALAM AIR (SOLUBLE LIQUID/SL)', '<p><strong>TUJUAN PENGGUNAAN :&nbsp;</strong></p>\r\n\r\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:</p>\r\n\r\n<ol>\r\n	<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.</li>\r\n	<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)</li>\r\n	<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES</li>\r\n</ol>', '<ul>\r\n	<li>0,5-1/HA</li>\r\n	<li>2-4 ML PER LITER AIR</li>\r\n	<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)</li>\r\n</ul>', '<ul>\r\n	<li>40 X 200 ML 3</li>\r\n	<li>20 X 400 ML 3</li>\r\n	<li>15 X 1 LITER 3</li>\r\n	<li>20 LITER 3</li>\r\n	<li>200 LITER</li>\r\n</ul>', '2019-03-22 09:14:02', '2019-03-26 11:27:59', 3, 3, 'images/84f4be08cbf92cc3801deddbb9b0fb01.jpg'),
(8, 'CER ONE', '865 g/l 2,4-D DIMETILAMINA', 'LARUTAN DALAM AIR (SOLUBLE LIQUID/SL)', '<p><strong>TUJUAN PENGGUNAAN :&nbsp;</strong></p>\r\n\r\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:</p>\r\n\r\n<ol>\r\n	<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.</li>\r\n	<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)</li>\r\n	<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES</li>\r\n</ol>', '<ul>\r\n	<li>0,5-1/HA</li>\r\n	<li>2-4 ML PER LITER AIR</li>\r\n	<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)</li>\r\n</ul>', '<ul>\r\n	<li>40 X 200 ML 3</li>\r\n	<li>20 X 400 ML 3</li>\r\n	<li>15 X 1 LITER 3</li>\r\n	<li>20 LITER 3</li>\r\n	<li>200 LITER</li>\r\n</ul>', '2019-03-22 09:14:02', '2019-03-26 11:27:29', 4, 1, 'images/Cer One.jpg'),
(9, 'CIHERANG', '865 g/l 2,4-D DIMETILAMINA', 'LARUTAN DALAM AIR (SOLUBLE LIQUID/SL)', '<p><strong>TUJUAN PENGGUNAAN :&nbsp;</strong></p>\r\n\r\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:</p>\r\n\r\n<ol>\r\n	<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.</li>\r\n	<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)</li>\r\n	<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES</li>\r\n</ol>', '<ul>\r\n	<li>0,5-1/HA</li>\r\n	<li>2-4 ML PER LITER AIR</li>\r\n	<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)</li>\r\n</ul>', '<ul>\r\n	<li>40 X 200 ML 3</li>\r\n	<li>20 X 400 ML 3</li>\r\n	<li>15 X 1 LITER 3</li>\r\n	<li>20 LITER 3</li>\r\n	<li>200 LITER</li>\r\n</ul>', '2019-03-22 09:14:02', '2019-03-26 11:20:13', 5, 2, 'images/Ciherang.png'),
(10, 'ALPHA 16', '865 g/l 2,4-D DIMETILAMINA', 'LARUTAN DALAM AIR (SOLUBLE LIQUID/SL)', '<p><strong>TUJUAN PENGGUNAAN :&nbsp;</strong></p>\r\n\r\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:</p>\r\n\r\n<ol>\r\n	<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.</li>\r\n	<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)</li>\r\n	<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES</li>\r\n</ol>', '<ul>\r\n	<li>0,5-1/HA</li>\r\n	<li>2-4 ML PER LITER AIR</li>\r\n	<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)</li>\r\n</ul>', '<ul>\r\n	<li>40 X 200 ML 3</li>\r\n	<li>20 X 400 ML 3</li>\r\n	<li>15 X 1 LITER 3</li>\r\n	<li>20 LITER 3</li>\r\n	<li>200 LITER</li>\r\n</ul>', '2019-03-22 09:14:02', '2019-03-26 11:23:24', 2, 1, 'images/Alpha 16.jpg'),
(11, 'ZIPHOS', '865 g/l 2,4-D DIMETILAMINA', 'LARUTAN DALAM AIR (SOLUBLE LIQUID/SL)', '<p><strong>TUJUAN PENGGUNAAN :&nbsp;</strong></p>\r\n\r\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:</p>\r\n\r\n<ol>\r\n	<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.</li>\r\n	<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)</li>\r\n	<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES</li>\r\n</ol>', '<ul>\r\n	<li>0,5-1/HA</li>\r\n	<li>2-4 ML PER LITER AIR</li>\r\n	<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)</li>\r\n</ul>', '<ul>\r\n	<li>40 X 200 ML 3</li>\r\n	<li>20 X 400 ML 3</li>\r\n	<li>15 X 1 LITER 3</li>\r\n	<li>20 LITER 3</li>\r\n	<li>200 LITER</li>\r\n</ul>', '2019-03-22 09:14:02', '2019-03-26 11:24:35', 2, 1, 'images/Ziphos.jpg'),
(12, 'BESTARI', '865 g/l 2,4-D DIMETILAMINA', 'LARUTAN DALAM AIR (SOLUBLE LIQUID/SL)', '<p><strong>TUJUAN PENGGUNAAN :&nbsp;</strong></p>\r\n\r\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:</p>\r\n\r\n<ol>\r\n	<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.</li>\r\n	<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)</li>\r\n	<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES</li>\r\n</ol>', '<ul>\r\n	<li>0,5-1/HA</li>\r\n	<li>2-4 ML PER LITER AIR</li>\r\n	<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)</li>\r\n</ul>', '<ul>\r\n	<li>40 X 200 ML 3</li>\r\n	<li>20 X 400 ML 3</li>\r\n	<li>15 X 1 LITER 3</li>\r\n	<li>20 LITER 3</li>\r\n	<li>200 LITER</li>\r\n</ul>', '2019-03-22 09:14:02', '2019-03-26 11:18:39', 2, 2, 'images/Bestari.png'),
(13, 'ALPHA 16', '865 g/l 2,4-D DIMETILAMINA', 'LARUTAN DALAM AIR (SOLUBLE LIQUID/SL)', '<p><strong>TUJUAN PENGGUNAAN :&nbsp;</strong></p>\r\n\r\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:</p>\r\n\r\n<ol>\r\n	<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.</li>\r\n	<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)</li>\r\n	<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES</li>\r\n</ol>', '<ul>\r\n	<li>0,5-1/HA</li>\r\n	<li>2-4 ML PER LITER AIR</li>\r\n	<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)</li>\r\n</ul>', '<ul>\r\n	<li>40 X 200 ML 3</li>\r\n	<li>20 X 400 ML 3</li>\r\n	<li>15 X 1 LITER 3</li>\r\n	<li>20 LITER 3</li>\r\n	<li>200 LITER</li>\r\n</ul>', '2019-03-22 09:14:02', '2019-03-26 11:23:24', 2, 1, 'images/Alpha 16.jpg'),
(14, 'ZIPHOS', '865 g/l 2,4-D DIMETILAMINA', 'LARUTAN DALAM AIR (SOLUBLE LIQUID/SL)', '<p><strong>TUJUAN PENGGUNAAN :&nbsp;</strong></p>\r\n\r\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:</p>\r\n\r\n<ol>\r\n	<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.</li>\r\n	<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)</li>\r\n	<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES</li>\r\n</ol>', '<ul>\r\n	<li>0,5-1/HA</li>\r\n	<li>2-4 ML PER LITER AIR</li>\r\n	<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)</li>\r\n</ul>', '<ul>\r\n	<li>40 X 200 ML 3</li>\r\n	<li>20 X 400 ML 3</li>\r\n	<li>15 X 1 LITER 3</li>\r\n	<li>20 LITER 3</li>\r\n	<li>200 LITER</li>\r\n</ul>', '2019-03-22 09:14:02', '2019-03-26 11:24:35', 2, 1, 'images/Ziphos.jpg'),
(15, 'BESTARI', '865 g/l 2,4-D DIMETILAMINA', 'LARUTAN DALAM AIR (SOLUBLE LIQUID/SL)', '<p><strong>TUJUAN PENGGUNAAN :&nbsp;</strong></p>\r\n\r\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:</p>\r\n\r\n<ol>\r\n	<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.</li>\r\n	<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)</li>\r\n	<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES</li>\r\n</ol>', '<ul>\r\n	<li>0,5-1/HA</li>\r\n	<li>2-4 ML PER LITER AIR</li>\r\n	<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)</li>\r\n</ul>', '<ul>\r\n	<li>40 X 200 ML 3</li>\r\n	<li>20 X 400 ML 3</li>\r\n	<li>15 X 1 LITER 3</li>\r\n	<li>20 LITER 3</li>\r\n	<li>200 LITER</li>\r\n</ul>', '2019-03-22 09:14:02', '2019-03-26 11:18:39', 2, 2, 'images/Bestari.png'),
(16, 'ALPHA 16', '865 g/l 2,4-D DIMETILAMINA', 'LARUTAN DALAM AIR (SOLUBLE LIQUID/SL)', '<p><strong>TUJUAN PENGGUNAAN :&nbsp;</strong></p>\r\n\r\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:</p>\r\n\r\n<ol>\r\n	<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.</li>\r\n	<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)</li>\r\n	<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES</li>\r\n</ol>', '<ul>\r\n	<li>0,5-1/HA</li>\r\n	<li>2-4 ML PER LITER AIR</li>\r\n	<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)</li>\r\n</ul>', '<ul>\r\n	<li>40 X 200 ML 3</li>\r\n	<li>20 X 400 ML 3</li>\r\n	<li>15 X 1 LITER 3</li>\r\n	<li>20 LITER 3</li>\r\n	<li>200 LITER</li>\r\n</ul>', '2019-03-22 09:14:02', '2019-03-26 11:23:24', 2, 1, 'images/Alpha 16.jpg'),
(17, 'ZIPHOS', '865 g/l 2,4-D DIMETILAMINA', 'LARUTAN DALAM AIR (SOLUBLE LIQUID/SL)', '<p><strong>TUJUAN PENGGUNAAN :&nbsp;</strong></p>\r\n\r\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:</p>\r\n\r\n<ol>\r\n	<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.</li>\r\n	<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)</li>\r\n	<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES</li>\r\n</ol>', '<ul>\r\n	<li>0,5-1/HA</li>\r\n	<li>2-4 ML PER LITER AIR</li>\r\n	<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)</li>\r\n</ul>', '<ul>\r\n	<li>40 X 200 ML 3</li>\r\n	<li>20 X 400 ML 3</li>\r\n	<li>15 X 1 LITER 3</li>\r\n	<li>20 LITER 3</li>\r\n	<li>200 LITER</li>\r\n</ul>', '2019-03-22 09:14:02', '2019-03-26 11:24:35', 2, 1, 'images/Ziphos.jpg'),
(18, 'BESTARI', '865 g/l 2,4-D DIMETILAMINA', 'LARUTAN DALAM AIR (SOLUBLE LIQUID/SL)', '<p><strong>TUJUAN PENGGUNAAN :&nbsp;</strong></p>\r\n\r\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:</p>\r\n\r\n<ol>\r\n	<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.</li>\r\n	<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)</li>\r\n	<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES</li>\r\n</ol>', '<ul>\r\n	<li>0,5-1/HA</li>\r\n	<li>2-4 ML PER LITER AIR</li>\r\n	<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)</li>\r\n</ul>', '<ul>\r\n	<li>40 X 200 ML 3</li>\r\n	<li>20 X 400 ML 3</li>\r\n	<li>15 X 1 LITER 3</li>\r\n	<li>20 LITER 3</li>\r\n	<li>200 LITER</li>\r\n</ul>', '2019-03-22 09:14:02', '2019-03-26 11:18:39', 2, 2, 'images/Bestari.png'),
(19, 'ALPHA 16', '865 g/l 2,4-D DIMETILAMINA', 'LARUTAN DALAM AIR (SOLUBLE LIQUID/SL)', '<p><strong>TUJUAN PENGGUNAAN :&nbsp;</strong></p>\r\n\r\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:</p>\r\n\r\n<ol>\r\n	<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.</li>\r\n	<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)</li>\r\n	<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES</li>\r\n</ol>', '<ul>\r\n	<li>0,5-1/HA</li>\r\n	<li>2-4 ML PER LITER AIR</li>\r\n	<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)</li>\r\n</ul>', '<ul>\r\n	<li>40 X 200 ML 3</li>\r\n	<li>20 X 400 ML 3</li>\r\n	<li>15 X 1 LITER 3</li>\r\n	<li>20 LITER 3</li>\r\n	<li>200 LITER</li>\r\n</ul>', '2019-03-22 09:14:02', '2019-03-26 11:23:24', 2, 1, 'images/Alpha 16.jpg'),
(20, 'ZIPHOS', '865 g/l 2,4-D DIMETILAMINA', 'LARUTAN DALAM AIR (SOLUBLE LIQUID/SL)', '<p><strong>TUJUAN PENGGUNAAN :&nbsp;</strong></p>\r\n\r\n<p>ANDALL 865 SL ADALAH HERBISIDA SISTEMIK PURNA TUMBUH UNTUK MENGENDALIKAN GULMA BERDAUN LEBAR, RUMPUT-RUMPUTAN DAN TEKI PADA TANAMAN:</p>\r\n\r\n<ol>\r\n	<li>PADI SAWAH GULMA BERDAUN LEBAR: MONOCHORIA VAGINALIS (ECENG), LIMNOCHARIS FLAVA (GENJER), LUDWIGIA SP. (CACABEAN), LINDERNIA SP.</li>\r\n	<li>GULMA BERDAUN SEMPIT: PASPALUM DISTICHUM, ECHINOCHOLOA COLONUM (JAJAGOAN)</li>\r\n	<li>TEBU, KARET GULMA BERDAUN LEBAR; BORRERIA SP. 9KENTANGAN0, MIKANIA CORDATA, AGERATUM CONYZOIDES</li>\r\n</ol>', '<ul>\r\n	<li>0,5-1/HA</li>\r\n	<li>2-4 ML PER LITER AIR</li>\r\n	<li>3-6 TUTUP BOTOL PER SPAREYR (TANGKI)</li>\r\n</ul>', '<ul>\r\n	<li>40 X 200 ML 3</li>\r\n	<li>20 X 400 ML 3</li>\r\n	<li>15 X 1 LITER 3</li>\r\n	<li>20 LITER 3</li>\r\n	<li>200 LITER</li>\r\n</ul>', '2019-03-22 09:14:02', '2019-03-26 11:24:35', 2, 1, 'images/Ziphos.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_categories`
--

INSERT INTO `product_categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(2, 'HERBISIDA (Pembasmi Gulma)', '2019-02-24 04:31:26', '2019-02-24 04:39:54'),
(3, 'STICKER-SPIDER (Surfaktan)', '2019-02-24 04:37:24', '2019-02-24 04:39:43'),
(4, 'ALSINTAN (Alat Mesin Pertanian)', '2019-02-24 04:38:29', '2019-02-24 04:38:29'),
(5, 'HASA SEED (Benih)', '2019-02-24 04:38:47', '2019-02-24 04:38:47'),
(6, 'SPAREPART', '2019-02-24 04:39:16', '2019-02-24 04:39:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_groups`
--

CREATE TABLE `product_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_groups`
--

INSERT INTO `product_groups` (`id`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'Produk Baru', '2019-03-12 11:46:11', '2019-03-12 11:46:11'),
(2, 'Penjualan Terbaik', '2019-03-12 11:46:57', '2019-03-12 11:46:57'),
(3, 'Produk Lainnya', '2019-03-12 11:47:11', '2019-03-12 11:47:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tentang_kamis`
--

CREATE TABLE `tentang_kamis` (
  `id` int(10) UNSIGNED NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tentang_kamis`
--

INSERT INTO `tentang_kamis` (`id`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, '<p>PT. Andall Hasa Prima didirikan di Bandar Lampung pada tanggal 23 Agustus 1999 oleh 3 orang pendiri yaitu: Ir. Poedjoasmoro, Zakaria Halim dan Ir. Achmad Lutfi. Bidang Usaha PT. Andall Hasa Prima mencakup; Bidang Perdagangan umum, pengembangan pertanian dan pengadaan industri. Aktifitas perseroan saat ini adalah sebagai distributor pestisida, pemegang merk pestisida, benih dan alat alat pertanian. PT Andall Hasa Prima merupakan distributor pestisida dan importir alat-alat pertanian yang kian melebarkan sayap menjangkau berbagai pasar bidang pertanian di sejumlah daerah dan kota di Indonesia</p>', '2019-03-12 07:53:19', '2019-03-16 23:51:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `term_of_uses`
--

CREATE TABLE `term_of_uses` (
  `id` int(10) UNSIGNED NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `term_of_uses`
--

INSERT INTO `term_of_uses` (`id`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, '<h3><strong>Term Of Use</strong></h3>', '2019-03-11 11:50:47', '2019-03-11 19:45:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pesan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `testimonials`
--

INSERT INTO `testimonials` (`id`, `nama`, `jenis_kelamin`, `pesan`, `created_at`, `updated_at`) VALUES
(1, 'Rindang Ramadhan', '1', 'Saya bangga menjadi bagian dari keluarga PT Andall Hasa Prima. Sangat menghargai kami sebagai pekerja.', '2019-03-17 01:15:10', '2019-03-26 03:20:12'),
(2, 'Dwy Irama', '2', 'Saya bangga menjadi bagian dari keluarga PT Andall Hasa Prima. Sangat menghargai kami sebagai pekerja.', '2019-03-27 09:00:39', '2019-03-27 09:00:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `visi_misis`
--

CREATE TABLE `visi_misis` (
  `id` int(10) UNSIGNED NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `visi_misis`
--

INSERT INTO `visi_misis` (`id`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, '<p>Berperan dalam pembangunan dan perkembangan perekonomian Indonesia.</p>', '2019-03-11 08:22:09', '2019-03-26 03:18:00'),
(2, '<p>Menjadikan PT. Andall Hasa Prima sebagai distributor dan formulator obat-obatan pertanian yang besar dengan wilayah pemasaran di seluruh Indonesia.</p>', '2019-03-26 03:06:52', '2019-03-26 03:18:13');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `about_products`
--
ALTER TABLE `about_products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`);

--
-- Indeks untuk tabel `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`);

--
-- Indeks untuk tabel `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indeks untuk tabel `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indeks untuk tabel `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indeks untuk tabel `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indeks untuk tabel `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `album_families`
--
ALTER TABLE `album_families`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `benefits`
--
ALTER TABLE `benefits`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contact_profiles`
--
ALTER TABLE `contact_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contact_supports`
--
ALTER TABLE `contact_supports`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `download_katalogs`
--
ALTER TABLE `download_katalogs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `our_partners`
--
ALTER TABLE `our_partners`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pengunjungs`
--
ALTER TABLE `pengunjungs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product_groups`
--
ALTER TABLE `product_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tentang_kamis`
--
ALTER TABLE `tentang_kamis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `term_of_uses`
--
ALTER TABLE `term_of_uses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `visi_misis`
--
ALTER TABLE `visi_misis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `about_products`
--
ALTER TABLE `about_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2419;

--
-- AUTO_INCREMENT untuk tabel `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `album_families`
--
ALTER TABLE `album_families`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `benefits`
--
ALTER TABLE `benefits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `contact_profiles`
--
ALTER TABLE `contact_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `contact_supports`
--
ALTER TABLE `contact_supports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `download_katalogs`
--
ALTER TABLE `download_katalogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `our_partners`
--
ALTER TABLE `our_partners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pengunjungs`
--
ALTER TABLE `pengunjungs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `privacy_policies`
--
ALTER TABLE `privacy_policies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `product_groups`
--
ALTER TABLE `product_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tentang_kamis`
--
ALTER TABLE `tentang_kamis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `term_of_uses`
--
ALTER TABLE `term_of_uses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `visi_misis`
--
ALTER TABLE `visi_misis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
