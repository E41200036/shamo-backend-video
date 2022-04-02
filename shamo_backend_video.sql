-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Apr 2022 pada 23.15
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shamo_backend_video`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(16, '2019_08_19_000000_create_failed_jobs_table', 1),
(17, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(18, '2022_03_27_065429_create_sessions_table', 1),
(19, '2022_03_27_091752_add_field_to_users_table', 1),
(20, '2022_03_27_092831_create_product_categories_table', 1),
(21, '2022_03_27_093221_create_products_table', 1),
(22, '2022_03_27_093545_create_table_product_galleries_table', 1),
(23, '2022_03_27_093934_create_transactions_table', 1),
(24, '2022_03_27_094415_create_transaction_details_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'Personal Access Token', '2ce666ed074c6c500b9460606fcc8aad21152a57cf02d7b45d05aa601965aee4', '[\"*\"]', NULL, '2022-04-02 09:54:36', '2022-04-02 09:54:36'),
(2, 'App\\Models\\User', 1, 'Personal Access Token', 'cc0c9550c2fdb3bc985b2837f8fc5ade28442a62393cd660be9aa24c0b7e44c6', '[\"*\"]', '2022-04-02 09:55:24', '2022-04-02 09:55:03', '2022-04-02 09:55:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `tags`, `category_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Consequatur.', 86.88, 'Esse nihil quia pariatur delectus ut.', 'Animi qui odit aut aut illo.', 3, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(2, 'Voluptatem.', 44.92, 'Veritatis saepe aut id aperiam dolores veniam.', 'Officia dolorem et nihil autem quasi.', 2, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(3, 'Quaerat consequatur.', 16.06, 'Voluptatem sit eum iste aut aut totam dolorem.', 'Voluptas magnam qui minus consequuntur.', 3, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(4, 'Mollitia.', 44.05, 'Adipisci culpa illum ut.', 'Aliquid provident dolore et.', 4, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(5, 'Autem.', 83.83, 'Sed voluptas nobis distinctio mollitia voluptate quidem exercitationem.', 'Quaerat alias aliquid iste quia est non.', 3, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(6, 'Magnam deserunt.', 58.61, 'Neque et vel enim totam nihil.', 'Earum voluptates quia magnam aut.', 6, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(7, 'Fugiat tempore.', 13.95, 'Quis inventore in voluptas recusandae temporibus magnam voluptatem.', 'Id magnam voluptas quibusdam at.', 3, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(8, 'Expedita.', 82.88, 'Quidem culpa sequi ipsum.', 'Laudantium rem labore atque.', 7, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(9, 'Distinctio.', 31.03, 'Expedita laboriosam veniam voluptatem dignissimos sed eligendi.', 'Cumque dolore sed illum beatae.', 2, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(10, 'Asperiores cumque.', 79.62, 'Ducimus ducimus distinctio rerum eveniet earum est.', 'Ut voluptatibus natus eos omnis beatae.', 7, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(11, 'Eaque sint.', 33.95, 'Cupiditate non ut cumque.', 'Vero ut enim dolor enim.', 5, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(12, 'Accusamus.', 58.66, 'Deleniti eos repellendus autem aut quidem sunt.', 'A explicabo voluptas ipsam officiis est quia.', 7, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(13, 'Iusto.', 71.31, 'Provident et cum minima ex nulla vel minima.', 'Sed voluptas ut aut velit.', 4, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(14, 'Doloribus eos.', 96.65, 'Ducimus architecto quo perferendis et rerum eum nam voluptas.', 'Non praesentium modi molestias accusantium.', 1, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(15, 'Adipisci.', 5.46, 'Sit quia sit fuga est ab ea.', 'Aperiam incidunt commodi excepturi qui.', 7, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(16, 'Eius tempore.', 51.08, 'Et voluptatibus molestiae modi hic molestiae.', 'Vitae sit nesciunt deleniti in.', 2, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(17, 'Dolor eos.', 47.58, 'Voluptatibus aut autem iure error et soluta fugiat ut.', 'Esse in quaerat aut sit ut.', 4, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(18, 'Labore.', 78.78, 'Quia molestiae eum sed dicta veritatis.', 'Alias iste non sequi quibusdam est.', 6, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(19, 'Qui.', 43.69, 'Non eos deleniti nulla qui.', 'Velit sed inventore aut voluptas libero consequatur.', 6, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(20, 'Minima.', 32.30, 'Suscipit ut inventore hic.', 'Non reprehenderit ut qui.', 2, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(21, 'Mollitia aperiam.', 78.96, 'Minus qui magni est.', 'Repellat recusandae quia ut dolores.', 6, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(22, 'Eos vero.', 3.24, 'Veniam expedita voluptatem sed sed nulla odio.', 'Architecto aliquid eum est eligendi.', 6, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(23, 'Illum.', 59.16, 'Cumque voluptatibus quo fugiat dolores sit qui ducimus.', 'Eos ipsa natus minus consectetur est.', 3, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(24, 'Officiis.', 11.11, 'Soluta aut fuga ipsa quibusdam.', 'A voluptatem nihil deserunt nostrum sequi voluptatem dolore.', 2, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(25, 'Totam.', 39.47, 'Magni quia excepturi animi debitis assumenda.', 'Aperiam voluptate sunt assumenda reprehenderit.', 3, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(26, 'Sit beatae.', 24.15, 'Dolores officiis laborum quod porro.', 'Repellat consequatur veniam provident et exercitationem cum.', 2, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(27, 'Optio eveniet.', 58.01, 'Quis reiciendis impedit officia et adipisci possimus laudantium.', 'Nam nihil perspiciatis sunt quod a.', 5, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(28, 'Ut.', 57.51, 'Tenetur est saepe voluptas tenetur quis.', 'Ea qui suscipit excepturi ut eligendi.', 2, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(29, 'Sed nulla.', 81.22, 'Molestias laboriosam dicta ex ut ut.', 'Repudiandae fugiat consequatur eum commodi dolorem facilis mollitia.', 1, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(30, 'Dolor.', 85.68, 'Aut debitis non dolore occaecati repudiandae.', 'Exercitationem et sed quaerat a.', 1, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(31, 'Velit.', 90.63, 'Ratione nihil velit nihil cupiditate dolorum corrupti.', 'Laboriosam aliquid dolores doloremque autem.', 5, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(32, 'Est.', 52.58, 'Reiciendis nesciunt nostrum tenetur.', 'Debitis et aut laborum et porro fugit voluptatem.', 5, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(33, 'Sed consequatur.', 49.90, 'Vero illum perspiciatis sunt dolorum.', 'Dolores ut porro excepturi aliquam et delectus.', 7, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(34, 'Magnam sequi.', 34.71, 'Nihil et cupiditate ipsam ut a molestiae voluptas natus.', 'Inventore qui sapiente ipsa odio.', 5, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(35, 'Sunt mollitia.', 20.48, 'Facere ex nobis quia unde minima eos.', 'Consequuntur culpa exercitationem esse corporis esse et.', 6, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(36, 'Veniam nesciunt.', 45.06, 'Perspiciatis corporis in et illo.', 'Amet quis saepe dolorum molestias optio reprehenderit nisi.', 7, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(37, 'Aliquid.', 5.35, 'Deserunt quae voluptas aspernatur voluptate.', 'Voluptatibus assumenda ut hic doloremque accusamus aut.', 3, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(38, 'Ad.', 71.70, 'Vel veritatis ut modi.', 'Id magni omnis quia consectetur.', 3, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(39, 'Aut.', 21.05, 'Ex qui veniam ullam esse minus deserunt.', 'Laudantium officiis architecto quas quos modi.', 1, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(40, 'Perspiciatis.', 35.02, 'Molestias aliquid culpa voluptatum dicta cumque exercitationem.', 'Cumque perspiciatis iure assumenda harum ipsam quo.', 5, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(41, 'Et.', 43.89, 'Doloribus molestias sed rerum rerum nemo.', 'Dolorum officiis voluptatem enim enim earum.', 5, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(42, 'Tempore.', 34.30, 'Rerum sed aut doloribus.', 'Minima inventore incidunt placeat distinctio nostrum ut.', 4, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(43, 'Est.', 64.35, 'Itaque voluptatibus vel hic eius minima repellendus quia.', 'Error consectetur repellendus occaecati minima nobis provident asperiores.', 3, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(44, 'Facilis provident.', 71.88, 'Numquam ut fugit qui sit sequi debitis accusantium.', 'Sequi asperiores atque quia adipisci.', 1, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(45, 'Dolorem.', 84.13, 'Sint voluptatem et nihil rem earum iure officiis.', 'Quis enim asperiores incidunt minima dicta magnam eius.', 2, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(46, 'Molestias laborum.', 70.61, 'Sit adipisci incidunt magni.', 'Quia porro eligendi voluptatem libero ex in.', 4, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(47, 'Sunt sed.', 64.23, 'Perspiciatis aliquam et dolor commodi.', 'Et et corrupti illo nobis amet cumque.', 4, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(48, 'Qui et.', 30.71, 'Et officia fuga consequatur quam omnis tempora.', 'Unde consequatur dolore itaque eum illum et quidem sed.', 5, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(49, 'Hic.', 74.72, 'Dignissimos sit cumque sint aut.', 'Voluptate quos eum sapiente beatae consequuntur voluptatum molestiae.', 2, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(50, 'Repellendus aliquam.', 63.81, 'Dolore dolor rerum qui mollitia dolor mollitia quo accusamus.', 'Facere tempora quisquam occaecati exercitationem dignissimos dignissimos vitae.', 7, NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Sports & Outdoors', NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(2, 'Fashion', NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(3, 'Toys & Games', NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(4, 'Electronics', NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(5, 'Home & Garden', NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47'),
(6, 'Other', NULL, '2022-04-02 09:51:47', '2022-04-02 09:51:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ZsCDtjfKJtlge49hoM75HjAJmVVv1w2vwxMlBoJO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVEJXRUdhaUpMNzRvcGFYcEt0ZndhOTJKeFg3VFpKNXYxNzkzUEZBSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1648925209);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MANUAL',
  `total_price` double(8,2) NOT NULL DEFAULT 0.00,
  `shipping_price` double(8,2) NOT NULL DEFAULT 0.00,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `address`, `payment`, `total_price`, `shipping_price`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Probolinggo, Gending', 'MANUAL', 40000.00, 50000.00, 'PENDING', NULL, '2022-04-02 09:55:24', '2022-04-02 09:55:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `transaction_id` bigint(20) NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `user_id`, `product_id`, `transaction_id`, `quantity`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 4, NULL, '2022-04-02 09:55:24', '2022-04-02 09:55:24'),
(2, 1, 2, 1, 5, NULL, '2022-04-02 09:55:24', '2022-04-02 09:55:24'),
(3, 1, 3, 1, 5, NULL, '2022-04-02 09:55:24', '2022-04-02 09:55:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `roles`, `username`, `phone_number`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'ibnu abdurrohman sutio', 'ibnuabdurrohmansutio@gmail.com', 'USER', 'ibnu', '081515144981', NULL, '$2y$10$ruo3HFHtWGrhQVbJPGM6deLZj.EJRIRqD0p1v9P.VeOVxZZZx3D1.', NULL, NULL, NULL, NULL, NULL, '2022-04-02 09:54:36', '2022-04-02 09:54:36');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- Indeks untuk tabel `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
