-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 26 2022 г., 04:08
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
  `product_id` int NOT NULL,
  `priceInBasket` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `basket`
--

INSERT INTO `basket` (`id`, `session_id`, `product_id`, `priceInBasket`) VALUES
(1, '111', 1, 1),
(2, '222', 2, 2),
(3, '111', 2, 0),
(4, 'akvqsduhm1afg39dh0lsom8ltugu6fre', 1, 0),
(5, 'akvqsduhm1afg39dh0lsom8ltugu6fre', 3, 0),
(6, 'pqb4b4squr2b10n1mm631o64nrju88vf', 2, 0),
(7, 'pqb4b4squr2b10n1mm631o64nrju88vf', 2, 0),
(8, 'akvqsduhm1afg39dh0lsom8ltugu6fre', 2, 0),
(9, 'akvqsduhm1afg39dh0lsom8ltugu6fre', 2, 0),
(10, 'pqb4b4squr2b10n1mm631o64nrju88vf', 1, 0),
(17, 'l52h5bbmabniaqshud1q4kui7nb6dakm', 2, 0),
(18, 'l52h5bbmabniaqshud1q4kui7nb6dakm', 3, 0),
(19, 'l6qc9l31utj8o286b7usm7vme355kp6s', 2, 0),
(21, '1qcu62j8opb6bgogsb9ganqd4oqtgdq9', 2, 0),
(23, 'qv27rhg310m7egjfg9m4gqcc52ucm4sg', 1, 0),
(24, 'qv27rhg310m7egjfg9m4gqcc52ucm4sg', 2, 0),
(25, 'qv27rhg310m7egjfg9m4gqcc52ucm4sg', 2, 0),
(26, 'qv27rhg310m7egjfg9m4gqcc52ucm4sg', 1, 0),
(27, 'qv27rhg310m7egjfg9m4gqcc52ucm4sg', 2, 0),
(28, 'qv27rhg310m7egjfg9m4gqcc52ucm4sg', 1, 0),
(29, 'qv27rhg310m7egjfg9m4gqcc52ucm4sg', 1, 0),
(30, 'qv27rhg310m7egjfg9m4gqcc52ucm4sg', 1, 0),
(31, 'qv27rhg310m7egjfg9m4gqcc52ucm4sg', 1, 0),
(32, '3oj2uvng8luorb713icesqup974r6eft', 1, 0),
(33, 'gihqn7t7m1s70anss7bfvu51scdud1ic', 1, 0),
(34, 'gihqn7t7m1s70anss7bfvu51scdud1ic', 2, 0),
(35, 'gihqn7t7m1s70anss7bfvu51scdud1ic', 2, 0),
(36, 'l169s0acbriqousmrcr5lpg4qmmb01ot', 2, 0),
(37, 'l169s0acbriqousmrcr5lpg4qmmb01ot', 2, 0),
(38, 'l169s0acbriqousmrcr5lpg4qmmb01ot', 1, 0),
(39, 'f9k3o12u227pobesj1csvkukuttna7h2', 1, 0),
(40, '5vuepcdkg0t2ignkn2386on16ifkqnba', 1, 0),
(41, '5vuepcdkg0t2ignkn2386on16ifkqnba', 1, 6),
(42, '5vuepcdkg0t2ignkn2386on16ifkqnba', 1, 7),
(43, '5vuepcdkg0t2ignkn2386on16ifkqnba', 1, 0),
(44, '5vuepcdkg0t2ignkn2386on16ifkqnba', 1, 5),
(45, 'a1quud87porv4ekbv3778hnnuahei1o9', 1, 30),
(46, 'a1quud87porv4ekbv3778hnnuahei1o9', 1, 30);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `session_id` text NOT NULL,
  `phone` int NOT NULL,
  `price` int NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `session_id`, `phone`, `price`, `status`) VALUES
(1, '123', 123, 245325, 'newOrder'),
(2, 'l52h5bbmabniaqshud1q4kui7nb6dakm', 567, 379, 'onTheWay'),
(3, 'l52h5bbmabniaqshud1q4kui7nb6dakm', 2434, 379, 'onTheWay'),
(4, 'l6qc9l31utj8o286b7usm7vme355kp6s', 987654321, 100, 'onTheWay'),
(5, '1qcu62j8opb6bgogsb9ganqd4oqtgdq9', 2323, 100, 'onTheWay'),
(6, 'qv27rhg310m7egjfg9m4gqcc52ucm4sg', 0, 480, 'done'),
(7, 'f9k3o12u227pobesj1csvkukuttna7h2', 987654321, 30, 'done'),
(8, '5vuepcdkg0t2ignkn2386on16ifkqnba', 11111111, 150, 'newOrder');

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
