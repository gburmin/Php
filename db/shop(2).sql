-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 06 2022 г., 06:27
-- Версия сервера: 8.0.24
-- Версия PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `basket`
--

CREATE TABLE `basket` (
  `id` int NOT NULL,
  `session_id` text NOT NULL,
  `product_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `basket`
--

INSERT INTO `basket` (`id`, `session_id`, `product_id`) VALUES
(1, '111', 1),
(2, '222', 2),
(3, '111', 2),
(4, 'akvqsduhm1afg39dh0lsom8ltugu6fre', 1),
(5, 'akvqsduhm1afg39dh0lsom8ltugu6fre', 3),
(6, 'pqb4b4squr2b10n1mm631o64nrju88vf', 2),
(7, 'pqb4b4squr2b10n1mm631o64nrju88vf', 2),
(8, 'akvqsduhm1afg39dh0lsom8ltugu6fre', 2),
(9, 'akvqsduhm1afg39dh0lsom8ltugu6fre', 2),
(10, 'pqb4b4squr2b10n1mm631o64nrju88vf', 1),
(17, 'l52h5bbmabniaqshud1q4kui7nb6dakm', 2),
(18, 'l52h5bbmabniaqshud1q4kui7nb6dakm', 3),
(19, 'l6qc9l31utj8o286b7usm7vme355kp6s', 2),
(21, '1qcu62j8opb6bgogsb9ganqd4oqtgdq9', 2),
(23, 'qv27rhg310m7egjfg9m4gqcc52ucm4sg', 1),
(24, 'qv27rhg310m7egjfg9m4gqcc52ucm4sg', 2),
(25, 'qv27rhg310m7egjfg9m4gqcc52ucm4sg', 2),
(26, 'qv27rhg310m7egjfg9m4gqcc52ucm4sg', 1),
(27, 'qv27rhg310m7egjfg9m4gqcc52ucm4sg', 2),
(28, 'qv27rhg310m7egjfg9m4gqcc52ucm4sg', 1),
(29, 'qv27rhg310m7egjfg9m4gqcc52ucm4sg', 1),
(30, 'qv27rhg310m7egjfg9m4gqcc52ucm4sg', 1),
(31, 'qv27rhg310m7egjfg9m4gqcc52ucm4sg', 1),
(32, '3oj2uvng8luorb713icesqup974r6eft', 1),
(33, 'gihqn7t7m1s70anss7bfvu51scdud1ic', 1),
(34, 'gihqn7t7m1s70anss7bfvu51scdud1ic', 2),
(35, 'gihqn7t7m1s70anss7bfvu51scdud1ic', 2),
(36, 'l169s0acbriqousmrcr5lpg4qmmb01ot', 2),
(37, 'l169s0acbriqousmrcr5lpg4qmmb01ot', 2),
(38, 'l169s0acbriqousmrcr5lpg4qmmb01ot', 1),
(39, 'f9k3o12u227pobesj1csvkukuttna7h2', 1),
(40, '5vuepcdkg0t2ignkn2386on16ifkqnba', 1),
(41, '5vuepcdkg0t2ignkn2386on16ifkqnba', 1),
(42, '5vuepcdkg0t2ignkn2386on16ifkqnba', 1),
(43, '5vuepcdkg0t2ignkn2386on16ifkqnba', 1),
(44, '5vuepcdkg0t2ignkn2386on16ifkqnba', 1),
(45, 'a1quud87porv4ekbv3778hnnuahei1o9', 1),
(46, 'a1quud87porv4ekbv3778hnnuahei1o9', 1),
(47, 'k119kiv8eam0gipiafguvd00pkn7eun3', 1),
(48, 'k119kiv8eam0gipiafguvd00pkn7eun3', 1),
(49, 'k119kiv8eam0gipiafguvd00pkn7eun3', 1),
(50, 'k119kiv8eam0gipiafguvd00pkn7eun3', 2),
(53, '5hs5ph6o9et62tgc5diqcuijelk37q72', 1),
(56, '5tnls250o953l194ttguukk40o4ajpn8', 2),
(57, '5tnls250o953l194ttguukk40o4ajpn8', 1),
(58, '5tnls250o953l194ttguukk40o4ajpn8', 1),
(59, '5tnls250o953l194ttguukk40o4ajpn8', 1),
(60, 'lo9865e1e2sb5ove1ffb4sqfs2he9i66', 1),
(61, '343ppc955dehuv4vnhctobrsd2p5q194', 2),
(62, '343ppc955dehuv4vnhctobrsd2p5q194', 2),
(63, 'b7sq7p6hd7kl5s3ikgufemnbs8m27p66', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `session_id` text NOT NULL,
  `phone` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `session_id`, `phone`) VALUES
(1, '123', 123),
(2, 'l52h5bbmabniaqshud1q4kui7nb6dakm', 567),
(3, 'l52h5bbmabniaqshud1q4kui7nb6dakm', 2434),
(4, 'l6qc9l31utj8o286b7usm7vme355kp6s', 987654321),
(5, '1qcu62j8opb6bgogsb9ganqd4oqtgdq9', 2323),
(6, 'qv27rhg310m7egjfg9m4gqcc52ucm4sg', 0),
(7, 'f9k3o12u227pobesj1csvkukuttna7h2', 987654321),
(8, '5vuepcdkg0t2ignkn2386on16ifkqnba', 11111111),
(9, '5tnls250o953l194ttguukk40o4ajpn8', 123),
(10, '5tnls250o953l194ttguukk40o4ajpn8', 12),
(11, '5tnls250o953l194ttguukk40o4ajpn8', 123),
(12, '5tnls250o953l194ttguukk40o4ajpn8', 3344),
(13, '5tnls250o953l194ttguukk40o4ajpn8', 88005553),
(14, 'lo9865e1e2sb5ove1ffb4sqfs2he9i66', 9900),
(15, '343ppc955dehuv4vnhctobrsd2p5q194', 112),
(16, '6hp2qk601eg6slcfohjm88ma42k0nu1d', 112),
(17, '24iodc7sjjd50bt7iajc6u906p45rchj', 32),
(18, 'odi8h221rl44rhqiln1qr4hasdaa2p6r', 327),
(19, 'sul0pqvt2o4t3f9bh0n31he9oc3j7eso', 7567),
(20, 'b7sq7p6hd7kl5s3ikgufemnbs8m27p66', 778),
(21, 's99tsjtrjmv06ba0sk5v7mkurjktgl4r', 778),
(22, '4bl4ttl4rl0cnmbm0leuu1d7h5pk3tc8', 778);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`) VALUES
(1, 'Чай', 'Цейлонский', 120),
(2, 'стул', 'Пепперони', 190),
(3, 'Одежда', 'Брендовая', 120),
(5, 'Пицца', 'Описание', 120),
(6, 'Пицца', 'Описание', 140),
(7, 'Пицца', 'Описание', 120),
(9, 'Пицца', 'Описание', 120),
(10, 'pizza', 'asdasda', 333);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `login` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pass` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `pass`) VALUES
(1, 'admin', '$2y$10$O5/MqBq90V/PdOvCxiHOLek1QYNhAbhKkZNiODurEfgQ7GvACx6/W'),
(2, 'user', '$2y$10$6CR2ZcPYxni1m6NWO.rJwegp4zltoH1Jtc/jrZo2ookttvW8PhUhG');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
