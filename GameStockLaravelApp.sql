-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 19 2023 г., 02:49
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
-- База данных: `GameStockLaravelApp`
--

-- --------------------------------------------------------

--
-- Структура таблицы `backgrounds`
--

CREATE TABLE `backgrounds` (
  `id` bigint UNSIGNED NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `backgrounds`
--

INSERT INTO `backgrounds` (`id`, `image`, `image_url`, `created_at`, `updated_at`) VALUES
(12, '_1700340695background_image.png', 'http://gamestocklaravelapp/public/storage/images/_1700340695background_image.png', '2023-11-18 17:51:35', '2023-11-18 17:51:35'),
(13, '_1700340728background_image.png', 'http://gamestocklaravelapp/public/storage/images/_1700340728background_image.png', '2023-11-18 17:52:08', '2023-11-18 17:52:08'),
(14, '_1700340775background_image.png', 'http://gamestocklaravelapp/public/storage/images/_1700340775background_image.png', '2023-11-18 17:52:55', '2023-11-18 17:52:55'),
(15, '_1700340782background_image.png', 'http://gamestocklaravelapp/public/storage/images/_1700340782background_image.png', '2023-11-18 17:53:02', '2023-11-18 17:53:02'),
(16, '_1700340790background_image.png', 'http://gamestocklaravelapp/public/storage/images/_1700340790background_image.png', '2023-11-18 17:53:10', '2023-11-18 17:53:10'),
(17, '_1700340800background_image.png', 'http://gamestocklaravelapp/public/storage/images/_1700340800background_image.png', '2023-11-18 17:53:20', '2023-11-18 17:53:20'),
(18, '_1700340810background_image.png', 'http://gamestocklaravelapp/public/storage/images/_1700340810background_image.png', '2023-11-18 17:53:30', '2023-11-18 17:53:30');

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
-- Структура таблицы `games`
--

CREATE TABLE `games` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `genre_id` bigint UNSIGNED DEFAULT NULL,
  `image_url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `download_link` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `games`
--

INSERT INTO `games` (`id`, `name`, `short_description`, `description`, `image`, `created_at`, `updated_at`, `genre_id`, `image_url`, `file`, `download_link`, `user_id`) VALUES
(9, 'Alan Wake 2', 'вторая часть популярного игрового проекта, разработанного в жанре приключенческого экшена. Первым делом познакомься с главным героем Аланом Вейком – писателем, который уже на протяжении длительного времени проживает творческий кризис.', 'Alan Wake 2 (Алан Вейк 2) – вторая часть популярного игрового проекта, разработанного в жанре приключенческого экшена. Первым делом познакомься с главным героем Аланом Вейком – писателем, который уже на протяжении длительного времени проживает творческий кризис. В поиске выхода из своего состояния, Алан вместе со своей девушкой принимают решение переехать в другой город, где его возлюбленная внезапно пропадает. Главный герой немедленно отправляется на поиски, но понимает, что сделать это будет очень непросто, ведь впереди преодоление массы преград и борьба с коварными оппонентами. Что касается изменений, которые предлагает нам вторая часть, то нужно отметить, что они в особенности коснулись графической составляющей, которая стала ещё более реалистичной, а также линии сюжета, которая была полностью переписана, порадует нас множеством тайн и неожиданных поворотов событий. Пройди все испытания, истреби зло и верни свою любовь.', 'Alan Wake 21700336636image.jpg', '2023-11-18 16:43:56', '2023-11-18 16:43:56', 6, 'http://gamestocklaravelapp/public/storage/images/Alan Wake 21700336636image.jpg', 'Alan Wake 21700336636.torrent', 'http://gamestocklaravelapp/public/storage/files/Alan Wake 21700336636.torrent', 1),
(10, 'BIGFOOT', 'BIGFOOT (Finding Bigfoot) – игра, которая позволит тебе лично стать в центре динамично развивающихся событий наполненных странными обстоятельствами.', 'BIGFOOT (Finding Bigfoot) – игра, которая позволит тебе лично стать в центре динамично развивающихся событий наполненных странными обстоятельствами. Тебе предстоит встать на путь исследования совершенно странной ситуации, когда огромное количество людей стало пропадать в чаще леса. Наш главный героя уверен на сто процентов, что во всей этой ситуации виноват снежный человек, поймать которого не представляется возможным даже для правительства. Для начала тебе необходимо отыскать единомышленников и вместе с ними отправится на тщательное исследование каждого уголка этого опасного леса. Отправляйся в опасную экспедицию, находи различные  улики и постарайся сделать все возможное, чтобы не только раскрыть это ужасное дело, но и не попасть в коварные лапы этого жуткого создания.', 'BIGFOOT_1700338383image.jpg', '2023-11-18 17:12:23', '2023-11-18 17:17:03', 6, 'http://gamestocklaravelapp/public/storage/images/BIGFOOT_1700338623image.jpg', 'BIGFOOT_1700338383.torrent', 'http://gamestocklaravelapp/public/storage/files/BIGFOOT_1700338343.torrent', 1),
(11, 'Remnant 2', 'Remnant II – сиквел знакомого многим приключенческого ролевого экшена, где нам предстоит спасти мир от полного уничтожения. Твоими главными противниками станут жуткие монстры и это значит, что к битве к ним нужно как следует подготовиться.', 'Remnant II – сиквел знакомого многим приключенческого ролевого экшена, где нам предстоит спасти мир от полного уничтожения. Твоими главными противниками станут жуткие монстры и это значит, что к битве к ним нужно как следует подготовиться. Собери мощный оружейный арсенал, атрибуты защиты и все необходимые ресурсы для эффективного ведения боя. В игре важно постоянно развивать навыки и боевые характеристики, которые позволят истреблять более сильных оппонентов и из боссов. Порадует наличие незаурядной сюжетной линии, которая позволит нам пройти по истории, раскрывать массу мрачных тайн и узнать, от куда возникло зло. Арсенал вооружения довольно обширный, поэтому тебе всегда будет из чего выбрать. Каждое сражение, в котором ты будешь принимать участие, будет максимально эпичным и динамичным, поэтому скучать точно времени не останется. Графика исполнена в уникальном стиле и позволит каждому с головой окунуться в этот мрачный, пугающий и непредсказуемый мир.', 'Remnant 2_1700338730image.jpg', '2023-11-18 17:18:50', '2023-11-18 17:19:01', 2, 'http://gamestocklaravelapp/public/storage/images/Remnant 2_1700338741image.jpg', 'Remnant 2_1700338730.torrent', 'http://gamestocklaravelapp/public/storage/files/Remnant 2_1700338730.torrent', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `genres`
--

CREATE TABLE `genres` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Стратегия', '2023-11-18 08:57:19', '2023-11-18 08:57:19'),
(2, 'Шутер', '2023-11-18 09:02:04', '2023-11-18 09:02:04'),
(5, 'пери утконос hull hd', '2023-11-18 11:11:09', '2023-11-18 11:11:09'),
(6, 'Хоррор', '2023-11-18 16:09:42', '2023-11-18 16:09:42');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_17_210157_create_games_table', 1),
(6, '2023_11_17_210732_create_roles_table', 1),
(8, '2023_11_18_111855_create_genres_table', 2),
(9, '2023_11_18_111837_update_games_table', 3),
(10, '2023_11_18_132118_update_games_table', 4),
(13, '2023_11_18_192114_update_games_table', 5),
(14, '2023_11_18_202413_create_backgrounds_table', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'user', NULL, NULL),
(2, 'admin', NULL, NULL);

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
  `role_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Pr4vD4', 'sam_samich_05@mail.ru', NULL, '$2y$12$.JS5/hir2cw2fq8CyJTfuu8AY1GrvhHlZsadttsazT0I4bl3Giow2', 2, 'VOa6Hslp3cg1YUDDCr7WB8deJbfv1qLzFAyIKXtpF8PDfjTU6Up8aTwTakES', '2023-11-17 19:07:45', '2023-11-17 19:07:45'),
(2, '11', '11@mail.ru', NULL, '$2y$12$IFvz1FIpGdFo56KYePcRtOywIjxsxbdeKBXQt.giZ4mWln.3.6ad.', 1, '5iFmxafoTRyGe0Y9OPTyrfGHA5YRsCZ8rJBfnvB6utk7ZT2Gr6PgCz3WigTm', '2023-11-18 07:16:48', '2023-11-18 18:48:07'),
(3, 'amanagaz', 'popapipiskakakashka@mail.ru', NULL, '$2y$12$ZXG81oYvw50miSVA0ma33OS8qeN2UshKCADlIHjNzQ8oBDnS2tbJW', 1, 'gRQ1S4nNEuipbJ81ZMQjQYQZmv6OHN04TLYc9yhvgyJXTrCM0qQ7t3SozJ6a', '2023-11-18 11:06:16', '2023-11-18 11:06:16');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `backgrounds`
--
ALTER TABLE `backgrounds`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT для таблицы `backgrounds`
--
ALTER TABLE `backgrounds`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
