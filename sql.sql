-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 02 2020 г., 13:27
-- Версия сервера: 10.4.14-MariaDB
-- Версия PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `emp`
--

-- --------------------------------------------------------

--
-- Структура таблицы `dic_country`
--

CREATE TABLE `dic_country` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dic_country`
--

INSERT INTO `dic_country` (`ID`, `NAME`) VALUES
(1, 'Нур-Султан'),
(2, 'Алматы');

-- --------------------------------------------------------

--
-- Структура таблицы `review`
--

CREATE TABLE `review` (
  `ID` int(11) NOT NULL,
  `REV_TENDER` mediumtext NOT NULL,
  `LIKE_REV` mediumtext NOT NULL,
  `NOTLIKE_REV` mediumtext NOT NULL,
  `ALL_CONCL` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `ID` int(11) NOT NULL,
  `NAME_SERV` varchar(255) NOT NULL,
  `SPECID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`ID`, `NAME_SERV`, `SPECID`) VALUES
(4, 'Ремонт кухни', 3),
(5, 'Ремонт офиса', 3),
(6, 'Строительство сруба', 3),
(7, 'Строительство гаража', 3),
(8, 'Работа 2', 4),
(9, 'Работа 3', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `speciality`
--

CREATE TABLE `speciality` (
  `ID` int(11) NOT NULL,
  `NAME_SPEC` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `speciality`
--

INSERT INTO `speciality` (`ID`, `NAME_SPEC`) VALUES
(3, 'КОМПЛЕКСНЫЕ РАБОТЫ'),
(4, 'Некомплексные работы');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `LASTNAME` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `PHONE` varchar(255) NOT NULL,
  `TYPE` int(11) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `STATUS` int(11) NOT NULL,
  `LOCATION` int(11) NOT NULL,
  `ABOUT` mediumtext NOT NULL,
  `AVATAR` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`ID`, `NAME`, `LASTNAME`, `PHONE`, `TYPE`, `PASSWORD`, `STATUS`, `LOCATION`, `ABOUT`, `AVATAR`) VALUES
(18, 'qweqwew', '', '+7(771) 980-5314', 2, '88468caed55221baac033a615533285a', 1, 1, '', ''),
(17, 'Bahon', '', '+7(771) 980-5314', 2, '88468caed55221baac033a615533285a', 1, 2, '', ''),
(19, 'asd', 'ter', '+77004000556', 2, 'asd', 1, 2, '', ''),
(20, 'test', '', 'test', 1, 'test', 2, 1, '', ''),
(21, 'test', 'teste', '+7(700) 400-0556', 2, 'ef86656266184d77e084510113a11edf', 1, 1, 'Предлагаю качественную работу в сфере строительства.Опыт работы на рынке строительных услуг 11 лет. Составляю сметы и помогаю в закупке материала. Сотрудничаю с дизайнером. Выполняю ремонт любой сложности, работаю сам и с бригадой в зависимости от объекта. Гарантирую быструю и качественную работу, выполненную в соответствии со всеми требованиями и стандартами.Будутt вопросы задавайте всегда рад помочь советом. ', '');

-- --------------------------------------------------------

--
-- Структура таблицы `users_speciality`
--

CREATE TABLE `users_speciality` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `USER_SPECIALITY` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users_speciality`
--

INSERT INTO `users_speciality` (`ID`, `USER_ID`, `USER_SPECIALITY`) VALUES
(20, 19, 4),
(19, 17, 5),
(18, 17, 4),
(21, 20, 4),
(22, 21, 4),
(23, 21, 5),
(24, 21, 6),
(25, 21, 8);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `dic_country`
--
ALTER TABLE `dic_country`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `speciality`
--
ALTER TABLE `speciality`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `users_speciality`
--
ALTER TABLE `users_speciality`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `dic_country`
--
ALTER TABLE `dic_country`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `review`
--
ALTER TABLE `review`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `speciality`
--
ALTER TABLE `speciality`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `users_speciality`
--
ALTER TABLE `users_speciality`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
