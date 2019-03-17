-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Мар 03 2019 г., 18:54
-- Версия сервера: 10.1.37-MariaDB
-- Версия PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `27102018_3project`
--
CREATE DATABASE IF NOT EXISTS `27102018_3project` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `27102018_3project`;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `sku` int(11) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `photo` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `sale` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `description`, `price`, `photo`, `active`, `sale`) VALUES
(1, 'Синяя куртка', 234235, 'Синяя куртка', 1999.9, '/images/catalog/1.jpg', 1, 0),
(2, 'Серая куртка', 93412, 'Серая куртка', 11900, '/images/catalog/2.jpg', 1, 0),
(3, 'Черная куртка', 88889, 'Черная куртка', 14900, '/images/catalog/4.jpg', 0, 0),
(4, 'Коричневая куртка', 11118, 'Коричневая куртка', 21800, '/images/catalog/5.jpg', 1, 0),
(5, 'Кеды', 119994, 'Красивые кеды', 7900, '/images/catalog/7.jpg', 1, 0.15),
(6, 'Джинсы', 32428, 'Джинсы', 3900, '/images/catalog/11.jpg', 1, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
