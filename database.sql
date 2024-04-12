-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 12 2024 г., 10:28
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `labb`
--
CREATE DATABASE IF NOT EXISTS `labb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `labb`;

-- --------------------------------------------------------

--
-- Структура таблицы `meetings`
--

CREATE TABLE `meetings` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text DEFAULT '\'-\'',
  `place_where` varchar(100) NOT NULL,
  `date_when` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `meetings`
--

INSERT INTO `meetings` (`id`, `title`, `description`, `place_where`, `date_when`, `created_at`) VALUES
(1, 'sxdf', ' xc', 'zxzcz', '0000-00-00 00:00:00', '2024-03-27 06:42:29'),
(2, 'ZX', ' ZX', 'ZX', '0000-00-00 00:00:00', '2024-03-27 06:43:18'),
(3, 'asd', ' sad', 'sad', '2024-04-05 17:00:00', '2024-03-27 06:43:44'),
(4, 'asd', ' sad', 'asd', '2024-04-06 17:00:00', '2024-03-27 06:46:06'),
(5, 'asd', ' sad', 'asd', '2024-04-06 17:00:00', '2024-03-27 07:04:30'),
(6, 'asdsad', ' asdsad', 'asdsad', '2024-04-07 13:30:00', '2024-03-27 07:24:36'),
(7, 'asdsad', ' asdsad', 'asdsad', '2024-04-04 13:30:00', '2024-03-27 07:24:42'),
(8, 'asdsad', ' asdsad', 'asdsad', '2024-04-04 13:30:00', '2024-03-27 07:25:17'),
(9, 'sdfdsf', ' ', 'fffffff', '2024-04-05 11:29:00', '2024-03-27 07:25:29'),
(10, 'sdfdsf', ' ', 'fffffff', '2024-04-05 11:29:00', '2024-03-27 07:26:18'),
(11, 'sdfdsf', ' ', 'fffffff', '2024-04-05 11:29:00', '2024-03-27 07:28:50'),
(12, 'sdfdsf', ' ', 'fffffff', '2024-04-05 11:29:00', '2024-03-27 07:33:12'),
(13, 'sdfdsf', NULL, 'fffffff', '2024-03-27 07:39:45', '2024-03-27 07:35:04'),
(14, 'sdfdsf', ' -', 'fffffff', '2024-03-27 07:45:37', '2024-03-27 07:39:56'),
(15, 'sdfdsf', ' ', 'fffffff', '2024-04-05 11:29:00', '2024-03-27 07:45:42'),
(16, 'фффф', ' фффф', 'фыфы', '2024-03-31 08:21:00', '2024-03-27 08:22:00'),
(17, 'fzcxz', ' cxzcxzc', 'xzcxzc', '2024-04-05 08:22:00', '2024-03-27 08:22:36'),
(18, 'dfg', ' sdfg', 'fdg', '2024-04-07 08:23:00', '2024-03-27 08:23:48'),
(19, 'dfg', ' sdfg', 'fdg', '2024-04-07 08:23:00', '2024-03-27 08:37:56'),
(20, 'ZXZ', ' ZXZX', 'ZXz', '2024-03-30 08:50:00', '2024-03-27 08:50:25'),
(21, 'asdasd', ' sadsad', 'asdsa', '2024-04-07 08:52:00', '2024-03-27 08:52:30'),
(22, 'фыв', ' ыфв', 'фыв', '2024-03-31 08:58:00', '2024-03-27 08:58:49'),
(23, 'фыв', ' ыфв', 'фыв', '2024-03-31 08:58:00', '2024-03-27 09:03:54'),
(24, 'фыв', ' ыфв', 'фыв', '2024-03-31 08:58:00', '2024-03-27 09:08:58'),
(25, 'фыв', ' ыфв', 'фыв', '2024-03-31 08:58:00', '2024-03-27 15:26:57'),
(26, 'ооооо', ' оооо', 'ооо', '2024-04-05 05:39:00', '2024-03-28 05:39:08'),
(27, 'ооооо', ' оооо', 'ооо', '2024-04-05 05:39:00', '2024-03-28 06:23:23'),
(28, 'as', ' as', '', '2024-04-12 12:30:00', '2024-03-28 07:24:17');

-- --------------------------------------------------------

--
-- Структура таблицы `meetings_in_timetable`
--

CREATE TABLE `meetings_in_timetable` (
  `meeting_id` int(11) NOT NULL,
  `day_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `meetings_in_timetable`
--

INSERT INTO `meetings_in_timetable` (`meeting_id`, `day_id`) VALUES
(26, 5),
(27, 5),
(28, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `notes`
--

INSERT INTO `notes` (`id`, `title`, `description`) VALUES
(1, 'jfjajfjafj', 'kafkakfkafkafkkaf'),
(2, 'fff', 'aaaa'),
(3, 'fff', 'aaaa'),
(4, 'fff', 'aaaa'),
(5, 'fff', 'aaaa'),
(6, 'fff', 'aaaa'),
(7, 'fff', 'aaaa'),
(8, 'fff', 'aaaa'),
(9, 'fff', 'aaaa'),
(10, 'fff', 'aaaa'),
(11, 'fff', 'aaaa'),
(12, 'fff', 'aaaa'),
(13, 'fff', 'aaaa'),
(14, 'sasha', 'loh');

-- --------------------------------------------------------

--
-- Структура таблицы `timetable`
--

CREATE TABLE `timetable` (
  `id` int(11) NOT NULL,
  `name_day_of_week` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `timetable`
--

INSERT INTO `timetable` (`id`, `name_day_of_week`) VALUES
(0, 'Воскресенье'),
(1, ' Понедельник'),
(2, 'Вторник'),
(3, 'Среда'),
(4, 'Четверг'),
(5, 'Пятница'),
(6, 'Суббота');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `first_name`, `last_name`) VALUES
(1, 'vvv', 'Иван', ' Иванов'),
(2, 'pipi', '', ''),
(3, 'lala', 'вавава', 'ррлрлрл');

-- --------------------------------------------------------

--
-- Структура таблицы `users_meetings`
--

CREATE TABLE `users_meetings` (
  `user_id` int(11) NOT NULL,
  `meeting_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users_meetings`
--

INSERT INTO `users_meetings` (`user_id`, `meeting_id`) VALUES
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28);

-- --------------------------------------------------------

--
-- Структура таблицы `users_notes`
--

CREATE TABLE `users_notes` (
  `user_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users_notes`
--

INSERT INTO `users_notes` (`user_id`, `note_id`) VALUES
(1, 14);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `meetings_in_timetable`
--
ALTER TABLE `meetings_in_timetable`
  ADD KEY `day_id` (`day_id`),
  ADD KEY `meeting_id` (`meeting_id`);

--
-- Индексы таблицы `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users_meetings`
--
ALTER TABLE `users_meetings`
  ADD KEY `meeting_id` (`meeting_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `users_notes`
--
ALTER TABLE `users_notes`
  ADD KEY `note_id` (`note_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `meetings_in_timetable`
--
ALTER TABLE `meetings_in_timetable`
  ADD CONSTRAINT `meetings_in_timetable_ibfk_1` FOREIGN KEY (`day_id`) REFERENCES `timetable` (`id`),
  ADD CONSTRAINT `meetings_in_timetable_ibfk_2` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`);

--
-- Ограничения внешнего ключа таблицы `users_meetings`
--
ALTER TABLE `users_meetings`
  ADD CONSTRAINT `users_meetings_ibfk_1` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`),
  ADD CONSTRAINT `users_meetings_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `users_notes`
--
ALTER TABLE `users_notes`
  ADD CONSTRAINT `users_notes_ibfk_1` FOREIGN KEY (`note_id`) REFERENCES `notes` (`id`),
  ADD CONSTRAINT `users_notes_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
--
-- База данных: `mvc`
--
CREATE DATABASE IF NOT EXISTS `mvc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mvc`;

-- --------------------------------------------------------

--
-- Структура таблицы `building`
--

CREATE TABLE `building` (
  `build_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `list_room`
--

CREATE TABLE `list_room` (
  `build_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`role_id`, `name`) VALUES
(1, 'Администратор'),
(2, 'Сотрудник деканата');

-- --------------------------------------------------------

--
-- Структура таблицы `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `number_of_seats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `types`
--

CREATE TABLE `types` (
  `type_id` int(11) NOT NULL,
  `name` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `surname` varchar(127) NOT NULL,
  `name` varchar(127) NOT NULL,
  `patronymic` varchar(127) DEFAULT NULL,
  `nickname` varchar(64) NOT NULL,
  `email` varchar(127) NOT NULL,
  `password` varchar(127) NOT NULL,
  `avatar` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `surname`, `name`, `patronymic`, `nickname`, `email`, `password`, `avatar`) VALUES
(1, 1, 'Иванов', 'Иван', 'Иванович', 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', ''),
(2, 2, 'Userov', 'User', 'Userovich', 'user', 'user@gmail.com', 'ee11cbb19052e40b07aac0ca060c23ee', '');

--
-- Триггеры `users`
--
DELIMITER $$
CREATE TRIGGER `hash_password` BEFORE INSERT ON `users` FOR EACH ROW SET NEW.password = MD5(NEW.password)
$$
DELIMITER ;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`build_id`);

--
-- Индексы таблицы `list_room`
--
ALTER TABLE `list_room`
  ADD KEY `build_id` (`build_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Индексы таблицы `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Индексы таблицы `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`type_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nickname` (`nickname`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `building`
--
ALTER TABLE `building`
  MODIFY `build_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `types`
--
ALTER TABLE `types`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `building`
--
ALTER TABLE `building`
  ADD CONSTRAINT `building_ibfk_1` FOREIGN KEY (`build_id`) REFERENCES `list_buildings` (`build_id`);

--
-- Ограничения внешнего ключа таблицы `list_room`
--
ALTER TABLE `list_room`
  ADD CONSTRAINT `list_room_ibfk_1` FOREIGN KEY (`build_id`) REFERENCES `building` (`build_id`),
  ADD CONSTRAINT `list_room_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Ограничения внешнего ключа таблицы `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `types` (`type_id`);

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);
--
-- База данных: `my_project`
--
CREATE DATABASE IF NOT EXISTS `my_project` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `my_project`;

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `author_id`, `name`, `text`, `created_at`) VALUES
(9, 1, 'Я обновил статью', 'Что, не может быть?', '2024-04-04 13:09:37');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `text_comment` varchar(599) NOT NULL,
  `date_comment` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nickname` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `role` enum('admin','user') NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `auth_token` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `nickname`, `email`, `is_confirmed`, `role`, `password_hash`, `auth_token`, `created_at`) VALUES
(1, 'admin', 'admin@gmail.com', 1, 'admin', 'hash1', 'token1', '2024-04-03 10:24:34'),
(2, 'user', 'user@gmail.com', 1, 'user', 'hash2', 'token2', '2024-04-03 10:24:34'),
(3, 'kek', 'lol@gmail.com', 0, 'user', '$2y$10$D8tWB.LnOvU2JDaQ8Fq6bOP5jrlzJeAdX4HPds9xRu9qxxXaHbsTy', '56ff8f13bac4bb2ff423f2ad88fb2e9016c493a2', '2024-04-04 14:05:25'),
(4, 'qwe123', 'lol2@gmail.com', 0, 'user', '$2y$10$NnvCeJJgEvIxn5BbKOCpJOYQ72LixWBRl45dkHmhBj6K86oZkrzca', '99ecdb865219b5aa65ec30e2818069072169ac1b', '2024-04-04 14:08:35'),
(12, 'aekkakti', 'music.tomsk1@gmail.com', 1, 'user', '$2y$10$XeijU3HP/Zu70IQsgUWcveSi1/6HvaYbhE0T0jSRD4BQpvOGkMH3W', '0bd46988b7224485ab236b9335c407aef5e69845b40e787263458a6cc22aa23f2fa8e1c6cd6dea25', '2024-04-04 14:32:00'),
(13, 'test', 'tested1@gmail.com', 0, 'user', '$2y$10$6mmNJP31yKHXPtVoqV3uKeq7yFwbgaMJ.0cbKI975A4bVeoO67z6a', '29cec7f9594d152e08679fa123340ecda967774e', '2024-04-05 10:45:59'),
(14, '123', '123@gmail.com', 0, 'user', '$2y$10$br1bbUWzG2k8279FmHwk5udQ0VCFKXdQm1IdGZjk1eSFl.zVKyXPe', '3a482e2cee97f9530b5a323cc6419630cba04116', '2024-04-05 11:37:16');

-- --------------------------------------------------------

--
-- Структура таблицы `users_activation_codes`
--

CREATE TABLE `users_activation_codes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `users_activation_codes`
--

INSERT INTO `users_activation_codes` (`id`, `user_id`, `code`) VALUES
(1, 5, '8b7aea340f96f404c502fb5cf4939cde'),
(2, 6, 'fae28515905d89e1ee562663263c9e76'),
(3, 7, '3ba3cf08c79130c8989c9c90ed940bee'),
(4, 8, 'cf223acbaa4e753553b787b78abdebe9'),
(5, 9, 'd1ee1c1b6263e9726e7ddb9c2ab065ef'),
(6, 10, '5dbc97390bff33ee4186613a15413398'),
(7, 11, 'a26906ff35d47875eb2e3b0169bc7afc'),
(8, 12, '4b2abb6709d570de4b194932da9e3998'),
(9, 13, '69c780ae4720b430c3ee707bfaf9c9b2'),
(10, 14, 'cdcf179abcad7c20cd4aad6b77a6697f');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `article_id` (`article_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nickname` (`nickname`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `users_activation_codes`
--
ALTER TABLE `users_activation_codes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `users_activation_codes`
--
ALTER TABLE `users_activation_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);
--
-- База данных: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Структура таблицы `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Дамп данных таблицы `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Дамп данных таблицы `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'mvc', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"building\",\"list_buildings\",\"list_room\",\"roles\",\"room\",\"types\",\"users\"],\"table_structure[]\":[\"building\",\"list_buildings\",\"list_room\",\"roles\",\"room\",\"types\",\"users\"],\"table_data[]\":[\"building\",\"list_buildings\",\"list_room\",\"roles\",\"room\",\"types\",\"users\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Структура таблицы @TABLE@\",\"latex_structure_continued_caption\":\"Структура таблицы @TABLE@ (продолжение)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Содержимое таблицы @TABLE@\",\"latex_data_continued_caption\":\"Содержимое таблицы @TABLE@ (продолжение)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Дамп данных таблицы `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"mvc\",\"table\":\"users\"},{\"db\":\"mvc\",\"table\":\"room\"},{\"db\":\"mvc\",\"table\":\"list_room\"},{\"db\":\"mvc\",\"table\":\"building\"},{\"db\":\"mvc\",\"table\":\"list_buildings\"},{\"db\":\"mvc\",\"table\":\"roles\"},{\"db\":\"backend_practice\",\"table\":\"building\"},{\"db\":\"backend_practice\",\"table\":\"list_buildings\"},{\"db\":\"backend_practice\",\"table\":\"list_room\"},{\"db\":\"backend_practice\",\"table\":\"roles\"}]');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Дамп данных таблицы `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('backend_practice', 'building', 'name'),
('backend_practice', 'room', 'name'),
('backend_practice', 'users', 'surname'),
('mvc', 'divisions', 'title_division'),
('mvc', 'staffs', 'surname');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Дамп данных таблицы `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'mvc', 'users', '[]', '2024-04-10 03:15:25');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Дамп данных таблицы `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-04-12 08:26:38', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"ru\",\"ThemeDefault\":\"pmahomme\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Индексы таблицы `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Индексы таблицы `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Индексы таблицы `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Индексы таблицы `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Индексы таблицы `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Индексы таблицы `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Индексы таблицы `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Индексы таблицы `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Индексы таблицы `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Индексы таблицы `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Индексы таблицы `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Индексы таблицы `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Индексы таблицы `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- База данных: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
