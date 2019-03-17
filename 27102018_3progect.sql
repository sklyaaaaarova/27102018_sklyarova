-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 03 2019 г., 18:58
-- Версия сервера: 10.1.35-MariaDB
-- Версия PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `27102018_3progect`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `sku` int(11) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `photo` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `sale` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `description`, `price`, `photo`, `active`, `sale`) VALUES
(1, 'Синяя куртка', 1, 'Синяя куртка, на осень ', 4500, '/images/catalog/1.jpg', 0, 0),
(2, 'Куртка болотная', 2, 'Куртка зеленая', 5469.99, '/images/catalog/2.jpg', 0, 0),
(3, 'Зеленая куртка', 3, 'Зеленая куртка, с логотипчиком на плече ', 9999.99, '/images/catalog/3.jpg', 0, 0),
(4, 'Кожаная куртка', 4, 'Куртка из натуральной кжи', 15446, '/images/catalog/4.jpg', 0, 0),
(5, 'Куртка с корманами', 253, 'Куртка с карманами, их много', 10222.2, '/images/catalog/5.jpg', 0, 0),
(6, 'Другая куртка', 236, 'Куртка с карманами и кожи', 15000.7, '/images/catalog/6.jpg', 0, 0),
(7, 'Серые кеды', 2569, 'Серые кеды с полосками', 3000.99, '/images/catalog/7.jpg', 0, 0),
(8, 'Черные кеды', 5236, 'Черные кеды с полосками', 7000, '/images/catalog/8.jpg', 1, 0.25),
(9, 'Кожаные черные кеды', 5897, 'Кожаные черные кеды', 10501, '/images/catalog/9.jpg', 0, 0),
(10, 'Резиновые ботинки', 258, 'Резиновые ботинки', 11501, '/images/catalog/10.jpg', 1, 0.15);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
