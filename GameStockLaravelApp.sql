-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 20 2023 г., 00:14
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
(9, 'Alan Wake 2', 'вторая часть популярного игрового проекта, разработанного в жанре приключенческого экшена. Первым делом познакомься с главным героем Аланом Вейком – писателем, который уже на протяжении длительного времени проживает творческий кризис.', 'Alan Wake 2 (Алан Вейк 2) – вторая часть популярного игрового проекта, разработанного в жанре приключенческого экшена. Первым делом познакомься с главным героем Аланом Вейком – писателем, который уже на протяжении длительного времени проживает творческий кризис. В поиске выхода из своего состояния, Алан вместе со своей девушкой принимают решение переехать в другой город, где его возлюбленная внезапно пропадает. Главный герой немедленно отправляется на поиски, но понимает, что сделать это будет очень непросто, ведь впереди преодоление массы преград и борьба с коварными оппонентами. Что касается изменений, которые предлагает нам вторая часть, то нужно отметить, что они в особенности коснулись графической составляющей, которая стала ещё более реалистичной, а также линии сюжета, которая была полностью переписана, порадует нас множеством тайн и неожиданных поворотов событий. Пройди все испытания, истреби зло и верни свою любовь', 'Alan Wake 21700336636image.jpg', '2023-11-18 16:43:56', '2023-11-19 11:20:14', 6, 'http://gamestocklaravelapp/public/storage/images/Alan Wake 21700336636image.jpg', 'Alan Wake 21700336636.torrent', 'http://gamestocklaravelapp/public/storage/files/Alan Wake 21700336636.torrent', 1),
(10, 'BIGFOOT', 'BIGFOOT (Finding Bigfoot) – игра, которая позволит тебе лично стать в центре динамично развивающихся событий наполненных странными обстоятельствами.', 'BIGFOOT (Finding Bigfoot) – игра, которая позволит тебе лично стать в центре динамично развивающихся событий наполненных странными обстоятельствами. Тебе предстоит встать на путь исследования совершенно странной ситуации, когда огромное количество людей стало пропадать в чаще леса. Наш главный героя уверен на сто процентов, что во всей этой ситуации виноват снежный человек, поймать которого не представляется возможным даже для правительства. Для начала тебе необходимо отыскать единомышленников и вместе с ними отправится на тщательное исследование каждого уголка этого опасного леса. Отправляйся в опасную экспедицию, находи различные  улики и постарайся сделать все возможное, чтобы не только раскрыть это ужасное дело, но и не попасть в коварные лапы этого жуткого создания.', 'BIGFOOT_1700338383image.jpg', '2023-11-18 17:12:23', '2023-11-18 17:17:03', 6, 'http://gamestocklaravelapp/public/storage/images/BIGFOOT_1700338623image.jpg', 'BIGFOOT_1700338383.torrent', 'http://gamestocklaravelapp/public/storage/files/BIGFOOT_1700338343.torrent', 1),
(11, 'Remnant 2', 'Remnant II – сиквел знакомого многим приключенческого ролевого экшена, где нам предстоит спасти мир от полного уничтожения. Твоими главными противниками станут жуткие монстры и это значит, что к битве к ним нужно как следует подготовиться.', 'Remnant II – сиквел знакомого многим приключенческого ролевого экшена, где нам предстоит спасти мир от полного уничтожения. Твоими главными противниками станут жуткие монстры и это значит, что к битве к ним нужно как следует подготовиться. Собери мощный оружейный арсенал, атрибуты защиты и все необходимые ресурсы для эффективного ведения боя. В игре важно постоянно развивать навыки и боевые характеристики, которые позволят истреблять более сильных оппонентов и из боссов. Порадует наличие незаурядной сюжетной линии, которая позволит нам пройти по истории, раскрывать массу мрачных тайн и узнать, от куда возникло зло. Арсенал вооружения довольно обширный, поэтому тебе всегда будет из чего выбрать. Каждое сражение, в котором ты будешь принимать участие, будет максимально эпичным и динамичным, поэтому скучать точно времени не останется. Графика исполнена в уникальном стиле и позволит каждому с головой окунуться в этот мрачный, пугающий и непредсказуемый мир.', 'Remnant 2_1700338730image.jpg', '2023-11-18 17:18:50', '2023-11-18 17:19:01', 2, 'http://gamestocklaravelapp/public/storage/images/Remnant 2_1700338741image.jpg', 'Remnant 2_1700338730.torrent', 'http://gamestocklaravelapp/public/storage/files/Remnant 2_1700338730.torrent', 1),
(12, 'Victoria 3', 'Victoria 3 – продолжение захватывающей саги с элементами стратегического жанра, где тебе предстоит создать идеальное общество.', 'Victoria 3 – продолжение захватывающей саги с элементами стратегического жанра, где тебе предстоит создать идеальное общество. События игры отправляют нас на просторы мира, существовавшего в период промышленной революции, а именно начиная с девятнадцатого и заканчиваю частью двадцатого столетия. Мир изменялся со стремительной скоростью и поэтому главный герой решил создать собственное общество, полностью развитое и многофункциональное. Важно в игре подключать навыки стратегического планирования действий, которые позволят точно выполнить задуманное, допустив малое количество ошибок. Главная цель – процветающее государство, но для этого потребуется сделать его жителей счастливыми, уделяя внимание потребностям и создавая все условия для максимально комфортного существования. Касательно визуального исполнения, то игра проработана на отлично и позволит каждому стать частью этого необычного мира прошлого.', 'Victoria 3_1700403028image.jpg', '2023-11-19 11:10:28', '2023-11-19 11:10:28', 1, 'http://gamestocklaravelapp/public/storage/images/Victoria 3_1700403028image.jpg', 'Victoria 3_1700403028.torrent', 'http://gamestocklaravelapp/public/storage/files/Victoria 3_1700403028.torrent', 1),
(13, 'Sea of Thieves', 'Sea of Thieves – многопользовательский, ролевой, приключенческий игровой проект, который поднимает тему пиратов. Здесь ты возьмёшься за исполнение роли этого отважного и бесстрашного покорителя морей и океанов, отправившись навстречу увлекательным, но в то же время максимально опасным событиям.', 'Sea of Thieves – многопользовательский, ролевой, приключенческий игровой проект, который поднимает тему пиратов. Здесь ты возьмёшься за исполнение роли этого отважного и бесстрашного покорителя морей и океанов, отправившись навстречу увлекательным, но в то же время максимально опасным событиям. Предстоит тратить все свои силы на борьбу за жизнь, ведь испытания и мрачные тайны не оставят тебя в покое но на минуту. Борозди морские просторы, исследуй все локации, веди борьбу не только с другими пиратами, но и с безжалостными монстрами подводного мира. Ты будешь стараться отыскать как можно больше сокровищ, подходить всевозможные квесты и получать дополнительные бонусы, которые, в свою очередь, позволят тебе развиваться как самый отважный пират. Из особенностей стоит отметить наличие многопользовательского режима, в котором ты здорово проведешь время в компании своих друзей. Открой новые земли для себя, а также собери самую могущественную команду, дабы завоевать весь мир. Множество событий в данной игре будут генерироваться случайным образом, что сделает твое прохождение ещё более интересным.', 'Sea of Thieves_1700403090image.png', '2023-11-19 11:11:30', '2023-11-19 11:12:12', 7, 'http://gamestocklaravelapp/public/storage/images/Sea of Thieves_1700403090image.png', 'Sea of Thieves_1700403090.torrent', 'http://gamestocklaravelapp/public/storage/files/Sea of Thieves_1700403090.torrent', 1),
(14, 'Slime Rancher 2', 'Slime Rancher 2 (Слайм Ранчер 2) – вторая часть знаменитой приключенческой игры о слаймах. Исполни роль главной героини и вновь отправляйся на любимый Радужный остров. Здесь ты займешься развитием собственной фермы, где будешь выращивать разные виды милых существ.', 'Slime Rancher 2 (Слайм Ранчер 2) – вторая часть знаменитой приключенческой игры о слаймах. Исполни роль главной героини и вновь отправляйся на любимый Радужный остров. Здесь ты займешься развитием собственной фермы, где будешь выращивать разные виды милых существ. Не обойдется в игре и без опасностей, различных испытаний и врагов, которые будут охранять территории с более ценными и интересными видами. Заданий будет масса и постепенно ты сумеешь открыть все новые и новые локации, ведь остров довольно большой. Важно развивать территорию фермы и всячески ее модифицировать, чтобы все слаймы чувствовали себя комфортно и безопасно. Отправляйся на исследование локаций, занимайся охотой, продумывая действия наперед, ведь впереди тебя ждут битвы с коварными слизнями. Мир игры полностью открыт, а для игрока предлагается полная свобода действий, что делает прохождение ещё более увлекательным. Визуальное исполнение порадует приятной рисовкой, эффектами и яркими красками.', 'Slime Rancher 2_1700403185image.jpg', '2023-11-19 11:13:05', '2023-11-19 11:13:05', 7, 'http://gamestocklaravelapp/public/storage/images/Slime Rancher 2_1700403185image.jpg', 'Slime Rancher 2_1700403185.torrent', 'http://gamestocklaravelapp/public/storage/files/Slime Rancher 2_1700403185.torrent', 1),
(15, 'DREDGE', 'DREDGE – занимательная, иногда довольно мрачная игра, разработанная в приключенческом жанре, где там предстоит раскрыть мрачные тайны и дать ответы на важные жизненные вопросы.', 'DREDGE – занимательная, иногда довольно мрачная игра, разработанная в приключенческом жанре, где там предстоит раскрыть мрачные тайны и дать ответы на важные жизненные вопросы. Мы сыграем роль рыбака, который всю свою жизнь провел на морских просторах. В одну из, казалось бы, обычных рыбалок, наш герой попадает в необычное место и теперь ему предстоит путешествовать между двумя мирами. По мере следования ты узнаешь, что на глубинах спят могущественные левиафаны, тайны которых тебе и потребуется разгадать, чтобы достичь поставленной цели. Изучай окружение, внимательно исследуй каждую локацию, добывай ценные ресурсы и зацепки, которые приведут к ответам. Главная задача игры – остановить надвигающуюся катастрофу, которая способна разрушить твой родной мир. Сделать это будет очень непросто, поэтому особое внимание удели развитию своих навыков, подключив смекалку, быстродействие и навыки тактического планирования. Графика игры проработана в уникальной рисовке, а в дополнении со звуковым сопровождением создаёт незабываемую атмосферу.', 'DREDGE_1700403240image.jpg', '2023-11-19 11:14:00', '2023-11-19 11:19:27', 1, 'http://gamestocklaravelapp/public/storage/images/DREDGE_1700403247image.jpg', 'DREDGE_1700403240.torrent', 'http://gamestocklaravelapp/public/storage/files/DREDGE_1700403240.torrent', 1),
(16, 'Age of Wonders 4', 'Age of Wonders 4 – продолжение довольно популярной стратегической ролевой игры. Мы вновь готовы отправиться на просторы фантастической вселенной, где исполним важную роль – роль предводителя, которому предстоит привести свой народ к процветанию.', 'Age of Wonders 4 – продолжение довольно популярной стратегической ролевой игры. Мы вновь готовы отправиться на просторы фантастической вселенной, где исполним важную роль – роль предводителя, которому предстоит привести свой народ к процветанию. Ты с самого начала воссоздашь уникальную расу, будешь всячески ее развивать и совершенствовать. Ты, как лидер, тоже обязан улучшать свои профессиональные навыки, ведь чем дальше ты проходишь, тем сложнее будут становиться перед тобой задачи. Не обойдется и без битв с противниками, ведь одна из твоих основных целей – завоевание территорий, поэтому важно проявлять свои стратегические способности, хитрость и смекалку. Не менее важно следить за состоянием экономики, а также учитывай пожелания горожан, чтобы сделать их жизнь комфортной и безопасной. Порадует визуальное исполнение, которое наделено крутыми эффектами, многообразием красок и небольшой реалистичностью.', 'Age of Wonders 4_1700403434image.jpg', '2023-11-19 11:17:14', '2023-11-19 11:17:14', 1, 'http://gamestocklaravelapp/public/storage/images/Age of Wonders 4_1700403434image.jpg', 'Age of Wonders 4_1700403434.torrent', 'http://gamestocklaravelapp/public/storage/files/Age of Wonders 4_1700403434.torrent', 1),
(17, 'Caves of Lore', 'Caves of Lore – ролевая стратегическая игра, которая делает нас частью динамичных, максимально безумных сражений с коварными оппонентами. Первым делом стоит отметить качественную проработку графики, исполненную в пиксельном стиле, наделенную крутыми эффектами и яркими красками.', 'Caves of Lore – ролевая стратегическая игра, которая делает нас частью динамичных, максимально безумных сражений с коварными оппонентами. Первым делом стоит отметить качественную проработку графики, исполненную в пиксельном стиле, наделенную крутыми эффектами и яркими красками. Ты – отважный предводитель команды отважных воинов, которых выберешь самостоятельно, определив уникальные навыки и боевые характеристики. К подбору состава команды нужно подойти с особым вниманием, ведь каждая способность персонажа будет влиять на ход событий на поле боя. События будут происходить на просторах мрачного подземелья, главными обитателями которого являются жуткие монстры, от которых нам и требуется избавиться. Выполнение квестов принесет ещё больше возможностей и позволит нам совершенствовать свою команду, делая ее сильной и непобедимой перед любой силой врага. Конечно же, не забывай о магии, которая станет для команды верным спутником и значительно увеличит шансы на победу.', 'Caves of Lore_1700403525image.jpg', '2023-11-19 11:18:45', '2023-11-19 11:18:45', 8, 'http://gamestocklaravelapp/public/storage/images/Caves of Lore_1700403525image.jpg', 'Caves of Lore_1700403525.torrent', 'http://gamestocklaravelapp/public/storage/files/Caves of Lore_1700403525.torrent', 1);

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
(6, 'Хоррор', '2023-11-18 16:09:42', '2023-11-18 16:09:42'),
(7, 'Приключения', '2023-11-19 11:11:51', '2023-11-19 11:11:51'),
(8, 'RPG', '2023-11-19 11:17:52', '2023-11-19 11:17:52');

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
