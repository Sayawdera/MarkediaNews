-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 16 2023 г., 19:59
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `MarkediaNews`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Категория 123', 'kategoriya-2', '2023-04-14 06:26:00', '2023-04-14 07:12:36'),
(3, 'Категория 2', 'kategoriya-2-2', '2023-04-14 06:26:03', '2023-04-14 06:26:03'),
(4, 'Категория 2', 'kategoriya-2-3', '2023-04-14 06:27:41', '2023-04-14 06:27:41'),
(5, 'Категория 3', 'kategoriya-3', '2023-04-14 06:27:54', '2023-04-14 06:27:54'),
(6, 'Теперь это изменено 2', 'rfntujjhbz-6', '2023-04-14 06:54:01', '2023-04-14 07:04:25');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(13, '2023_04_14_033332_create_categories_table', 1),
(14, '2023_04_14_033446_create_tags_table', 1),
(15, '2023_04_14_033505_create_posts_table', 1),
(16, '2023_04_14_033631_create_post_tag_table', 1),
(17, '2023_04_15_143825_alter_table_users_add_isadmin', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `views` int UNSIGNED NOT NULL DEFAULT '0',
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `description`, `content`, `category_id`, `views`, `thumbnail`, `created_at`, `updated_at`) VALUES
(36, 'Статья 1', 'statya-1-2', 'Цитата 1', 'Контент 1', 2, 0, 'images/2023-04-15/bfOz7Lb9KyozW2sThxCnwU5mWDfa9Dk5fmkIgxNG.jpg', '2023-04-15 10:15:05', '2023-04-15 10:15:05'),
(38, 'Статья 2', 'statya-2-2', 'цитата 2', 'контент 2', 3, 0, 'images/2023-04-15/dLQNocuHRQq04tXjrPXIHr1Q5siDMw3KVmdDax17.jpg', '2023-04-15 10:22:01', '2023-04-15 10:22:01'),
(40, 'статья 3', 'statya-3-2', 'цитата 3', 'контент 3', 2, 0, 'images/2023-04-15/HeNmKucSa3mb3U9J49TH7dpHhUTwSCu0V4XV7ESC.jpg', '2023-04-15 10:24:58', '2023-04-15 10:24:58'),
(42, 'статья 4', 'statya-4-2', 'цитата 4', 'контент 4', 5, 0, 'images/2023-04-15/3jelox8bxiH37OOl1VSCTY2i0AHEfo95ZG5fMFB5.jpg', '2023-04-15 10:26:26', '2023-04-15 10:26:26'),
(44, 'статья 5', 'statya-5-2', 'цитата 5', 'контент 5', 6, 0, 'images/2023-04-15/7JwJHoZDAjMJfoGX9LVC09DTWrWfj4afd47DPARO.jpg', '2023-04-15 10:26:45', '2023-04-15 10:26:45'),
(46, 'Статья 6', 'statya-6-2', 'Цитата 6', 'Контент 6', 5, 0, 'images/2023-04-15/vx2HLqNxWiLJvqaHhDhR9odQ6g0oKTwTtriQwlji.jpg', '2023-04-15 11:19:27', '2023-04-15 11:19:27'),
(48, 'как тебе', 'kak-tebe-2', '<h2>Жирная Цитата</h2>', '<h3>минимальный контент</h3>', 4, 0, 'images/2023-04-16/UsKyYJnvTTr7bmhsITzvYz4Eyeays98CxyFtL6u1.webp', '2023-04-16 06:12:19', '2023-04-16 06:12:19');

-- --------------------------------------------------------

--
-- Структура таблицы `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int UNSIGNED NOT NULL,
  `tag_id` int UNSIGNED NOT NULL,
  `post_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `post_tag`
--

INSERT INTO `post_tag` (`id`, `tag_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 2, 8, NULL, NULL),
(2, 3, 8, NULL, NULL),
(3, 4, 8, NULL, NULL),
(4, 3, 10, '2023-04-15 06:09:03', '2023-04-15 06:09:03'),
(5, 4, 10, '2023-04-15 06:09:03', '2023-04-15 06:09:03'),
(6, 3, 12, '2023-04-15 06:58:13', '2023-04-15 06:58:13'),
(7, 4, 12, '2023-04-15 06:58:13', '2023-04-15 06:58:13'),
(8, 5, 12, '2023-04-15 07:05:02', '2023-04-15 07:05:02'),
(9, 1, 14, '2023-04-15 07:14:25', '2023-04-15 07:14:25'),
(10, 4, 14, '2023-04-15 07:14:25', '2023-04-15 07:14:25'),
(11, 5, 16, '2023-04-15 07:17:56', '2023-04-15 07:17:56'),
(12, 3, 18, '2023-04-15 07:21:52', '2023-04-15 07:21:52'),
(13, 4, 18, '2023-04-15 07:21:52', '2023-04-15 07:21:52'),
(14, 4, 20, '2023-04-15 07:22:44', '2023-04-15 07:22:44'),
(15, 4, 22, '2023-04-15 07:23:37', '2023-04-15 07:23:37'),
(16, 3, 24, '2023-04-15 07:23:59', '2023-04-15 07:23:59'),
(17, 1, 26, '2023-04-15 08:08:07', '2023-04-15 08:08:07'),
(18, 2, 28, '2023-04-15 08:08:38', '2023-04-15 08:08:38'),
(19, 3, 30, '2023-04-15 08:11:04', '2023-04-15 08:11:04'),
(20, 3, 32, '2023-04-15 08:12:10', '2023-04-15 08:12:10'),
(21, 3, 34, '2023-04-15 08:12:47', '2023-04-15 08:12:47'),
(22, 1, 36, '2023-04-15 10:15:05', '2023-04-15 10:15:05'),
(23, 2, 38, '2023-04-15 10:22:01', '2023-04-15 10:22:01'),
(24, 3, 40, '2023-04-15 10:24:58', '2023-04-15 10:24:58'),
(25, 4, 42, '2023-04-15 10:26:27', '2023-04-15 10:26:27'),
(26, 5, 44, '2023-04-15 10:26:45', '2023-04-15 10:26:45'),
(27, 5, 46, '2023-04-15 11:19:27', '2023-04-15 11:19:27'),
(28, 4, 48, '2023-04-16 06:12:20', '2023-04-16 06:12:20');

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Тег 1', 'teg-1', '2023-04-14 07:34:18', '2023-04-14 07:34:18'),
(2, 'Тег 2', 'teg-2', '2023-04-14 07:35:47', '2023-04-14 07:42:14'),
(3, 'Тег 3', 'teg-3', '2023-04-14 07:42:25', '2023-04-14 07:42:25'),
(4, 'Тег 4', 'teg-4', '2023-04-14 07:42:30', '2023-04-14 07:42:30'),
(5, 'Тег 5', 'teg-5', '2023-04-14 07:42:36', '2023-04-14 07:42:36');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'admin', 'admin@mail.com', NULL, '$2y$10$.qsyBlO9S8fhbyemmevH4e8JEYrtBbiWGmbpmes2pQq3l6m2S7X6W', NULL, '2023-04-15 11:53:31', '2023-04-15 11:53:31', 1),
(2, 'admin1', 'admin1@mail.com', NULL, '$2y$10$JKzGSpdUglnnE8gSr37hE.Bxwg/IwKnSEk.encuPAany80d5QWSfW', NULL, '2023-04-15 11:54:06', '2023-04-15 11:54:06', 0),
(3, 'admin3', 'admin3@mail.com', NULL, '$2y$10$aIVW/uVz6s0FC7eMR6AbH.clBowen7as1bEB3lK8WAx29DSGiBSPW', NULL, '2023-04-15 11:57:18', '2023-04-15 11:57:18', 0),
(4, 'admin4', 'admin4@mail.com', NULL, '$2y$10$Mo1MvP5.qVImxMRa.6.paecNql.p7SLqJ7SHuKBjDkwwoiWD1MXxy', NULL, '2023-04-15 11:57:38', '2023-04-15 11:57:38', 0),
(5, 'user', 'user@gmail.com', NULL, '$2y$10$zZDnATDfmCGjNpNlURpr2ePQEAbH59H7FJQpTlrwItMsFwW6aZSYi', NULL, '2023-04-15 11:58:01', '2023-04-15 11:58:01', 0),
(6, 'user12', 'user12@mail.ru', NULL, '$2y$10$qVSe4FFtmikKHPzR5Wqxye4uBhrpwog63zFl3Z3TEsgvVosHgFdP.', NULL, '2023-04-15 15:09:45', '2023-04-15 15:09:45', 0),
(7, 'dirge', 'dirge@gmail.com', NULL, '$2y$10$cBc8h8pVu82LoUGJnMzSjuBHeKbaNBe1KT8gdqTBFEoWY4SAPkP/K', NULL, '2023-04-15 23:39:24', '2023-04-15 23:39:24', 0),
(8, 'ADMINMAN', 'adminman@gmail.com', NULL, '$2y$10$IGTDsUDjWta5Aw/BcD/yfu4GWxOHam.U17VzPPy5KGHiD1h3wecvW', NULL, '2023-04-16 07:20:28', '2023-04-16 07:20:28', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Индексы таблицы `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
