-- phpMyAdmin SQL Dump
-- Время создания: Мар 07 2023 г., 09:27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `stud`
--

DELIMITER $$
--
-- Процедуры
--
$$

$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `EMPLOYEE`
--

CREATE TABLE `EMPLOYEE` (
  `ID` int(11) NOT NULL COMMENT 'Идентификатор',
  `LAST_NAME` varchar(45) NOT NULL COMMENT 'Фамилия',
  `FIRST_NAME` varchar(45) NOT NULL COMMENT 'Имя',
  `MIDDLE_NAME` varchar(45) DEFAULT NULL COMMENT 'Отчество',
  `BIRTHDAY` date DEFAULT NULL COMMENT 'День рождения'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `EMPLOYEE`
--

INSERT INTO `EMPLOYEE` (`ID`, `LAST_NAME`, `FIRST_NAME`, `MIDDLE_NAME`, `BIRTHDAY`) VALUES
(1, 'Иванов', 'Иван', 'Иванович', '2012-09-01'),
(2, 'Зубарев', 'Петр', 'Степанович', '1970-10-05'),
(3, 'Кривошеев', 'Никита', 'Алексеевич', '1999-04-01'),
(4, 'Иванова', 'Анастасия', 'Петровна', '1991-06-01'),
(5, 'Ильин', 'Александр', 'Иванович', '1982-10-05'),
(6, 'Калашников', 'Илья', 'Владимирович', '1999-06-01'),
(7, 'Калинин', 'Сергей', 'Григорьевич', '1999-06-01');

-- --------------------------------------------------------

--
-- Структура таблицы `GRADE`
--

CREATE TABLE `GRADE` (
  `ID` int(11) NOT NULL COMMENT 'Идентификатор',
  `STUDENT_IN_GROUP_ID` int(11) DEFAULT NULL COMMENT 'ИД студента в группе',
  `MODULE_NUMBER` int(11) DEFAULT NULL COMMENT 'Номер модуля',
  `GRADE` int(11) DEFAULT NULL COMMENT 'Оценка'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `GRADE`
--

INSERT INTO `GRADE` (`ID`, `STUDENT_IN_GROUP_ID`, `MODULE_NUMBER`, `GRADE`) VALUES
(1, 64, 5, 10),
(4, 2, 3, 10),
(5, 66, 4, 4),
(6, 3, 5, 5),
(7, 67, 3, 7),
(8, 4, 2, 8),
(9, 68, 3, 6),
(10, 5, 4, 4),
(11, 69, 2, 3),
(12, 6, 2, 9),
(13, 70, 4, 8),
(14, 7, 5, 2),
(15, 71, 5, 6),
(16, 8, 3, 4),
(17, 9, 2, 7),
(18, 72, 4, 5),
(19, 10, 2, 9),
(20, 73, 3, 5),
(21, 11, 2, 7),
(22, 74, 1, 9),
(23, 12, 4, 5),
(24, 75, 2, 2),
(25, 13, 4, 3),
(26, 76, 5, 1),
(27, 14, 3, 9),
(28, 77, 3, 4),
(29, 15, 2, 5),
(30, 78, 2, 6),
(31, 16, 3, 9),
(32, 79, 4, 3),
(33, 17, 5, 8),
(34, 80, 1, 9),
(35, 18, 3, 2),
(36, 81, 5, 4),
(37, 19, 4, 9),
(38, 20, 5, 3),
(39, 82, 2, 10),
(40, 21, 4, 3),
(41, 83, 4, 2),
(42, 22, 3, 5),
(43, 84, 2, 9),
(44, 23, 3, 2),
(45, 85, 4, 7),
(46, 24, 5, 6),
(47, 86, 2, 6),
(48, 25, 1, 8),
(49, 87, 3, 5),
(50, 26, 3, 7),
(51, 88, 2, 4),
(52, 27, 4, 3),
(53, 89, 3, 10),
(54, 28, 2, 7),
(55, 90, 3, 2),
(56, 29, 3, 9),
(57, 91, 4, 8),
(58, 30, 2, 9),
(59, 92, 4, 8),
(60, 31, 5, 3),
(61, 93, 2, 4),
(62, 32, 1, 5),
(63, 94, 1, 2),
(64, 33, 3, 6),
(65, 95, 3, 1),
(66, 34, 3, 5),
(67, 96, 3, 6),
(68, 35, 1, 5),
(69, 97, 2, 4),
(70, 36, 4, 2),
(71, 98, 4, 8),
(72, 37, 2, 5),
(73, 99, 1, 8),
(74, 38, 1, 9),
(75, 100, 3, 4),
(76, 39, 2, 7),
(77, 101, 3, 8),
(78, 40, 5, 4),
(79, 102, 4, 4),
(80, 41, 1, 5),
(81, 103, 4, 9),
(82, 42, 1, 4),
(83, 104, 4, 10),
(84, 43, 3, 1),
(85, 105, 1, 4),
(86, 44, 2, 1),
(87, 106, 3, 8),
(88, 45, 2, 3),
(89, 107, 2, 8),
(90, 46, 5, 3),
(91, 108, 3, 5),
(92, 47, 4, 7),
(93, 109, 5, 7),
(94, 48, 3, 3),
(95, 110, 4, 5),
(96, 49, 4, 4),
(97, 111, 2, 8),
(98, 50, 4, 9),
(146, 64, 4, 8),
(147, 1, 4, 4),
(148, 65, 2, 4),
(149, 2, 5, 9),
(150, 66, 3, 9),
(152, 67, 2, 5),
(153, 4, 3, 3),
(154, 68, 4, 3),
(156, 69, 1, 5),
(159, 7, 2, 7),
(160, 71, 3, 9),
(161, 8, 2, 8),
(162, 9, 1, 8),
(165, 73, 4, 2),
(167, 74, 5, 7),
(168, 12, 3, 6),
(169, 75, 1, 6),
(170, 13, 5, 6),
(171, 76, 3, 4),
(172, 14, 2, 2),
(173, 77, 1, 7),
(174, 15, 3, 9),
(175, 78, 1, 8),
(176, 16, 5, 2),
(178, 17, 2, 9),
(179, 80, 4, 8),
(180, 18, 4, 4),
(181, 81, 3, 2),
(182, 19, 2, 7),
(183, 20, 4, 1),
(184, 82, 4, 5),
(185, 21, 2, 7),
(188, 84, 5, 4),
(189, 23, 4, 2),
(190, 85, 1, 9),
(191, 24, 2, 10),
(192, 86, 5, 7),
(193, 25, 3, 1),
(194, 87, 2, 6),
(197, 27, 2, 5),
(198, 89, 4, 3),
(199, 28, 1, 5),
(200, 90, 1, 9),
(201, 29, 2, 3),
(203, 30, 1, 1),
(205, 31, 4, 7),
(206, 93, 5, 9),
(207, 32, 3, 6),
(208, 94, 4, 5),
(209, 33, 2, 2),
(210, 95, 5, 2),
(211, 34, 4, 9),
(212, 96, 4, 3),
(213, 35, 4, 1),
(214, 97, 1, 3),
(217, 37, 1, 4),
(218, 99, 3, 1),
(219, 38, 4, 4),
(220, 100, 5, 7),
(221, 39, 3, 10),
(222, 101, 5, 10),
(223, 40, 4, 5),
(224, 102, 5, 10),
(227, 42, 3, 3),
(228, 104, 2, 9),
(229, 43, 4, 6),
(230, 105, 5, 9),
(231, 44, 3, 2),
(232, 106, 4, 1),
(233, 45, 3, 8),
(234, 107, 1, 1),
(235, 46, 1, 3),
(236, 108, 4, 6),
(237, 47, 1, 8),
(238, 109, 3, 4),
(239, 48, 1, 6),
(240, 110, 2, 3),
(241, 49, 1, 6),
(242, 111, 4, 9),
(243, 50, 2, 10),
(273, 64, 3, 7),
(274, 1, 2, 7),
(275, 65, 3, 3),
(278, 3, 2, 7),
(280, 4, 5, 2),
(282, 5, 3, 9),
(283, 69, 5, 3),
(284, 6, 1, 10),
(285, 70, 3, 10),
(286, 7, 1, 7),
(288, 8, 1, 2),
(289, 9, 3, 7),
(290, 72, 2, 4),
(291, 10, 4, 8),
(293, 11, 3, 4),
(294, 74, 3, 6),
(295, 12, 5, 3),
(296, 75, 3, 3),
(298, 76, 2, 7),
(303, 16, 4, 8),
(304, 79, 3, 2),
(308, 81, 2, 10),
(310, 20, 2, 8),
(312, 21, 3, 9),
(313, 83, 2, 3),
(314, 22, 1, 5),
(315, 84, 1, 10),
(319, 86, 1, 2),
(320, 25, 4, 8),
(321, 87, 4, 7),
(322, 26, 5, 6),
(323, 88, 1, 5),
(324, 27, 1, 9),
(329, 91, 2, 7),
(330, 30, 3, 5),
(331, 92, 3, 8),
(332, 31, 2, 6),
(334, 32, 4, 8),
(336, 33, 1, 8),
(337, 95, 4, 8),
(338, 34, 2, 6),
(339, 96, 2, 2),
(342, 36, 2, 3),
(343, 98, 1, 5),
(345, 99, 2, 3),
(346, 38, 2, 6),
(351, 102, 1, 2),
(352, 41, 2, 9),
(355, 104, 5, 4),
(357, 105, 4, 5),
(358, 44, 1, 9),
(359, 106, 2, 7),
(360, 45, 4, 6),
(361, 107, 4, 7),
(362, 46, 3, 5),
(364, 47, 3, 7),
(365, 109, 2, 9),
(366, 48, 4, 3),
(368, 49, 2, 6),
(370, 50, 5, 4),
(400, 64, 2, 5),
(402, 65, 1, 6),
(403, 2, 2, 3),
(404, 66, 5, 10),
(408, 68, 5, 2),
(410, 69, 3, 3),
(411, 6, 3, 5),
(412, 70, 1, 10),
(413, 7, 4, 5),
(414, 71, 1, 2),
(418, 10, 5, 7),
(419, 73, 2, 7),
(423, 75, 4, 9),
(425, 76, 4, 2),
(427, 77, 4, 5),
(428, 15, 5, 7),
(430, 16, 2, 3),
(432, 17, 3, 8),
(433, 80, 2, 8),
(434, 18, 2, 6),
(435, 81, 1, 6),
(441, 22, 4, 1),
(443, 23, 1, 9),
(445, 24, 1, 9),
(450, 88, 5, 8),
(452, 89, 1, 9),
(455, 29, 1, 1),
(456, 91, 5, 7),
(460, 93, 1, 9),
(462, 94, 2, 5),
(465, 34, 5, 2),
(467, 35, 2, 10),
(470, 98, 3, 8),
(471, 37, 4, 9),
(472, 99, 5, 2),
(474, 100, 2, 7),
(475, 39, 4, 7),
(476, 101, 2, 6),
(478, 102, 3, 8),
(479, 41, 5, 6),
(480, 103, 5, 10),
(485, 44, 4, 4),
(488, 107, 3, 3),
(493, 48, 5, 4),
(494, 110, 1, 3),
(496, 111, 5, 4),
(528, 1, 3, 4),
(529, 65, 4, 3),
(532, 3, 3, 8),
(533, 67, 4, 5),
(534, 4, 4, 9),
(538, 6, 4, 3),
(540, 7, 3, 8),
(541, 71, 2, 7),
(542, 8, 5, 1),
(544, 72, 5, 2),
(545, 10, 3, 7),
(547, 11, 4, 3),
(548, 74, 2, 3),
(550, 75, 5, 3),
(551, 13, 3, 5),
(553, 14, 5, 7),
(556, 78, 3, 4),
(557, 16, 1, 2),
(562, 81, 4, 2),
(564, 20, 3, 3),
(567, 83, 3, 1),
(571, 85, 5, 10),
(573, 86, 4, 9),
(576, 26, 2, 5),
(577, 88, 3, 3),
(578, 27, 3, 2),
(580, 28, 4, 7),
(581, 90, 2, 10),
(583, 91, 1, 2),
(588, 32, 2, 7),
(595, 97, 3, 9),
(596, 36, 5, 10),
(597, 98, 2, 9),
(598, 37, 5, 2),
(599, 99, 4, 4),
(600, 38, 3, 4),
(608, 42, 5, 8),
(610, 43, 2, 6),
(611, 105, 3, 3),
(612, 44, 5, 3),
(614, 45, 1, 5),
(619, 109, 4, 2),
(620, 48, 2, 4),
(621, 110, 3, 7),
(622, 49, 5, 4),
(624, 50, 3, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `GROUP_ST`
--

CREATE TABLE `GROUP_ST` (
  `ID` int(11) NOT NULL COMMENT 'Идентификатор',
  `GROUP_CODE` varchar(45) DEFAULT NULL COMMENT 'Код группы',
  `TEACHER_ID` int(11) DEFAULT NULL COMMENT 'ИД сотрудника-преподавателя',
  `CURATOR_ID` int(11) DEFAULT NULL COMMENT 'ИД сотрудника-куратора'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `GROUP_ST`
--

INSERT INTO `GROUP_ST` (`ID`, `GROUP_CODE`, `TEACHER_ID`, `CURATOR_ID`) VALUES
(1, 'SA_2021-22_03', 2, 3),
(2, 'SA_2021-22_02', 4, 5),
(3, 'SA_2021-22_01', 6, 7),
(4, 'SA_2021-22_04', NULL, NULL),
(5, 'SA_2022-22_01', NULL, NULL),
(6, 'SA_2022-22_02', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `STUDENT`
--

CREATE TABLE `STUDENT` (
  `ID` int(11) NOT NULL COMMENT 'Идентификатор',
  `LAST_NAME` varchar(45) NOT NULL COMMENT 'Фамилия',
  `FIRST_NAME` varchar(45) NOT NULL COMMENT 'Имя',
  `MIDDLE_NAME` varchar(45) DEFAULT NULL COMMENT 'Отчество',
  `BIRTHDAY` date DEFAULT NULL COMMENT 'День рождения'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `STUDENT`
--

INSERT INTO `STUDENT` (`ID`, `LAST_NAME`, `FIRST_NAME`, `MIDDLE_NAME`, `BIRTHDAY`) VALUES
(1, 'Абрамов', 'Даниил', 'Кириллович', '1999-06-01'),
(2, 'Агафонов', 'Мирон', 'Алексеевич', '1995-06-28'),
(3, 'Агафонова', 'Таисия', 'Захаровна', '1987-09-21'),
(4, 'Аксенова', 'Виктория', 'Ильинична', '1999-02-13'),
(5, 'Александрова', 'София', 'Владимировна', '1999-05-01'),
(6, 'Алексеева', 'Ярослава', 'Леоновна', '1995-06-13'),
(7, 'Анисимов', 'Адам', 'Кириллович', '1999-05-01'),
(8, 'Артемова', 'Варвара', 'Арсеньевна', '1999-06-13'),
(9, 'Афанасьева', 'Елизавета', 'Владимировна', '1999-02-13'),
(10, 'Баранов', 'Марк', 'Михайлович', '1999-10-05'),
(11, 'Баранов', 'Андрей', 'Георгиевич', '1999-06-01'),
(12, 'Баранова', 'Елизавета', 'Георгиевна', '1999-06-01'),
(13, 'Белов', 'Александр', 'Родионович', '1999-06-01'),
(14, 'Беляев', 'Даниил', 'Константинович', '1999-09-21'),
(15, 'Белякова', 'Полина', 'Егоровна', '1999-03-01'),
(16, 'Быкова', 'Алиса', 'Владимировна', '1999-03-15'),
(18, 'Васильев', 'Степан', 'Артёмович', '1999-03-01'),
(19, 'Виноградова', 'Полина', 'Павловна', '1991-03-01'),
(20, 'Власов', 'Даниил', 'Матвеевич', '1999-03-01'),
(21, 'Волкова', 'Ирина', 'Николаевна', '1992-10-05'),
(22, 'Волкова', 'Анастасия', 'Евгеньевна', '1991-06-01'),
(23, 'Воронцова', 'Анна', 'Григорьевна', '1999-06-01'),
(24, 'Галкин', 'Артемий', 'Кириллович', '1999-12-01'),
(25, 'Галкина', 'Злата', 'Мирославовна', '1991-06-15'),
(26, 'Гончарова', 'Кристина', 'Егоровна', '1986-09-15'),
(27, 'Гончарова', 'Ева', 'Марковна', '1999-03-01'),
(28, 'Гордеев', 'Тимофей', 'Артёмович', '1991-03-01'),
(29, 'Грачева', 'София', 'Тимофеевна', '1999-03-01'),
(30, 'Громов', 'Алексей', 'Александрович', '1999-06-01'),
(31, 'Громова', 'Евгения', 'Александровна', '1991-04-01'),
(32, 'Громова', 'Лилия', 'Максимовна', '1999-06-01'),
(33, 'Давыдова', 'Ксения', 'Романовна', '1999-04-01'),
(34, 'Дмитриева', 'Александра', 'Григорьевна', '1991-06-01'),
(35, 'Егорова', 'Алёна', 'Артёмовна', '1999-09-20'),
(36, 'Егорова', 'Яна', 'Гордеевна', '1999-06-01'),
(37, 'Зайцев', 'Роман', 'Платонович', '1999-04-01'),
(38, 'Захаров', 'Иван', 'Дмитриевич', '1999-06-01'),
(40, 'Зубков', 'Максим', 'Степанович', '1991-02-11'),
(41, 'Зубов', 'Никита', 'Александрович', '1999-04-01'),
(42, 'Иванова', 'Елизавета', 'Никитична', '1991-06-01'),
(43, 'Ильин', 'Александр', 'Иванович', '1999-04-01'),
(44, 'Калашникова', 'Анна', 'Владимировна', '1999-09-15'),
(45, 'Калинина', 'Виктория', 'Григорьевна', '1999-06-01'),
(46, 'Киселева', 'Ева', 'Денисовна', '1999-06-01'),
(47, 'Ковалев', 'Михаил', 'Глебович', '1999-06-01'),
(48, 'Колпаков', 'Дмитрий', 'Александрович', '1999-06-01'),
(49, 'Комаров', 'Степан', 'Михайлович', '1999-04-01'),
(50, 'Крылов', 'Святослав', 'Александрович', '1999-09-16'),
(51, 'Кузнецова', 'Валерия', 'Макаровна', '1999-04-01'),
(52, 'Кузнецова', 'Арина', 'Матвеевна', '1999-05-01'),
(53, 'Лобанова', 'Анастасия', 'Максимовна', '1999-06-01'),
(54, 'Логинова', 'Дарья', 'Артёмовна', '1989-06-01'),
(55, 'Лукина', 'Елизавета', 'Фёдоровна', '1999-06-01'),
(56, 'Макаров', 'Егор', 'Романович', '1999-09-17'),
(57, 'Макарова', 'Мария', 'Захаровна', '1999-06-01'),
(58, 'Мартынова', 'Злата', 'Ивановна', '1999-06-01'),
(59, 'Меркулова', 'Дарья', 'Тимофеевна', '1989-06-01'),
(60, 'Миронова', 'Таисия', 'Ярославовна', '1999-06-01'),
(61, 'Михеев', 'Филипп', 'Иванович', '1999-06-01'),
(62, 'Моисеева', 'София', 'Фёдоровна', '1999-09-20'),
(63, 'Морозова', 'Алина', 'Руслановна', '1999-02-11'),
(64, 'Назаров', 'Макар', 'Тимурович', '1999-06-01'),
(65, 'Нечаева', 'Милана', 'Александровна', '1999-06-01'),
(66, 'Никифоров', 'Александр', 'Александрович', '1989-06-01'),
(67, 'Никифоров', 'Демид', 'Константинович', '1999-06-01'),
(68, 'Носов', 'Адам', 'Максимович', '1999-06-01'),
(69, 'Овсянников', 'Андрей', 'Егорович', '1999-06-01'),
(70, 'Орлова', 'Светлана', 'Ильинична', '1999-06-01'),
(71, 'Островский', 'Артём', 'Миронович', '1999-09-17'),
(72, 'Павлова', 'Екатерина', 'Богдановна', '1989-06-01'),
(73, 'Пастухов', 'Марк', 'Степанович', '1999-06-01'),
(74, 'Петров', 'Даниил', 'Святославович', '1999-06-01'),
(75, 'Петухов', 'Ярослав', 'Маркович', '1999-06-01'),
(76, 'Платонов', 'Михаил', 'Демидович', '1999-06-01'),
(77, 'Потапов', 'Владимир', 'Константинович', '1999-06-01'),
(78, 'Потапова', 'Мария', 'Артёмовна', '1989-09-18'),
(79, 'Романова', 'Полина', 'Тимофеевна', '1999-06-01'),
(80, 'Савина', 'Дарья', 'Максимовна', '1995-06-01'),
(81, 'Семенова', 'Василиса', 'Егоровна', '1999-06-05'),
(82, 'Сидоров', 'Тихон', 'Даниилович', '1995-06-05'),
(83, 'Симонов', 'Никита', 'Артёмович', '1999-09-19'),
(84, 'Смирнов', 'Серафим', 'Кириллович', '1999-06-01'),
(85, 'Соколов', 'Николай', 'Александрович', '1999-06-01'),
(86, 'Степанова', 'Арина', 'Макаровна', '1999-06-01'),
(87, 'Сычев', 'Лев', 'Матвеевич', '1999-06-01'),
(88, 'Устинов', 'Александр', 'Дмитриевич', '1995-06-05'),
(89, 'Федорова', 'Дарья', 'Ивановна', '1999-09-16'),
(90, 'Филиппов', 'Георгий', 'Кириллович', '1999-06-01'),
(91, 'Фомина', 'Таисия', 'Николаевна', '1999-06-01'),
(92, 'Фролов', 'Егор', 'Иванович', '1999-06-01'),
(93, 'Фролов', 'Сергей', 'Никитич', '1999-06-01'),
(94, 'Хохлов', 'Николай', 'Вячеславович', '1999-09-18'),
(95, 'Черкасова', 'Дарья', 'Ильинична', '1995-06-01'),
(96, 'Шаповалов', 'Руслан', 'Сергеевич', '1999-06-01'),
(97, 'Шишкина', 'Ева', 'Марковна', '1999-06-01'),
(98, 'Шубин', 'Никита', 'Даниилович', '1999-06-01'),
(99, 'Юдин', 'Евгений', 'Борисович', '1999-09-19'),
(100, 'Яшин', 'Евгений', 'Александрович', '1999-06-01'),
(101, 'Сидоров', 'Сидор', 'Сидорович', NULL),
(102, 'Антонов', 'Антон', 'Антонович', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `STUDENT_GROUP_STATUS`
--

CREATE TABLE `STUDENT_GROUP_STATUS` (
  `ID` int(11) NOT NULL COMMENT 'Идентифкатор',
  `STATUS_NAME` varchar(45) NOT NULL COMMENT 'Наименование статуса'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `STUDENT_GROUP_STATUS`
--

INSERT INTO `STUDENT_GROUP_STATUS` (`ID`, `STATUS_NAME`) VALUES
(3, 'Завершил'),
(1, 'Зачислен'),
(4, 'Отчислен'),
(2, 'Учится');

-- --------------------------------------------------------

--
-- Структура таблицы `STUDENT_IN_GROUP`
--

CREATE TABLE `STUDENT_IN_GROUP` (
  `ID` int(11) NOT NULL,
  `STUDENT_ID` int(11) NOT NULL COMMENT 'ИД студента',
  `GROUP_ST_ID` int(11) DEFAULT NULL COMMENT 'ИД группы',
  `STUDENT_STATUS_ID` int(11) NOT NULL COMMENT 'ИД статуса студента'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `STUDENT_IN_GROUP`
--

INSERT INTO `STUDENT_IN_GROUP` (`ID`, `STUDENT_ID`, `GROUP_ST_ID`, `STUDENT_STATUS_ID`) VALUES
(1, 2, 1, 1),
(2, 4, 1, 1),
(3, 6, 1, 1),
(4, 8, 1, 1),
(5, 10, 1, 1),
(6, 12, 1, 1),
(7, 14, 1, 1),
(8, 16, 1, 1),
(9, 18, 1, 1),
(10, 20, 1, 1),
(11, 22, 1, 1),
(12, 24, 1, 1),
(13, 26, 1, 1),
(14, 28, 1, 1),
(15, 30, 1, 1),
(16, 32, 1, 1),
(17, 34, 1, 1),
(18, 36, 1, 1),
(19, 38, 1, 1),
(20, 40, 1, 1),
(21, 42, 1, 1),
(22, 44, 1, 1),
(23, 46, 1, 1),
(24, 48, 1, 1),
(25, 50, 1, 1),
(26, 52, 1, 1),
(27, 54, 1, 1),
(28, 56, 1, 1),
(29, 58, 1, 1),
(30, 60, 1, 1),
(31, 62, 1, 1),
(32, 64, 1, 1),
(33, 66, 1, 1),
(34, 68, 1, 1),
(35, 70, 1, 1),
(36, 72, 1, 1),
(37, 74, 1, 1),
(38, 76, 1, 1),
(39, 78, 1, 1),
(40, 80, 1, 1),
(41, 82, 1, 1),
(42, 84, 1, 1),
(43, 86, 1, 1),
(44, 88, 1, 1),
(45, 90, 1, 1),
(46, 92, 1, 1),
(47, 94, 1, 1),
(48, 96, 1, 1),
(49, 98, 1, 1),
(50, 100, 1, 1),
(64, 1, 2, 1),
(65, 3, 2, 1),
(66, 5, 2, 1),
(67, 7, 2, 1),
(68, 9, 2, 1),
(69, 11, 2, 1),
(70, 13, 2, 1),
(71, 15, 2, 1),
(72, 19, 2, 1),
(73, 21, 2, 1),
(74, 23, 2, 1),
(75, 25, 2, 1),
(76, 27, 2, 1),
(77, 29, 2, 1),
(78, 31, 2, 1),
(79, 33, 2, 1),
(80, 35, 2, 1),
(81, 37, 2, 1),
(82, 41, 2, 1),
(83, 43, 2, 1),
(84, 45, 2, 1),
(85, 47, 2, 1),
(86, 49, 2, 1),
(87, 51, 2, 1),
(88, 53, 2, 1),
(89, 55, 2, 1),
(90, 57, 2, 1),
(91, 59, 2, 1),
(92, 61, 2, 1),
(93, 63, 2, 1),
(94, 65, 2, 1),
(95, 67, 2, 1),
(96, 69, 2, 1),
(97, 71, 2, 1),
(98, 73, 2, 1),
(99, 75, 2, 1),
(100, 77, 2, 1),
(101, 79, 2, 1),
(102, 81, 2, 1),
(103, 83, 2, 1),
(104, 85, 2, 1),
(105, 87, 2, 1),
(106, 89, 2, 1),
(107, 91, 2, 1),
(108, 93, 2, 1),
(109, 95, 2, 1),
(110, 97, 2, 1),
(111, 99, 2, 1);

-- --------------------------------------------------------

--
-- Структура для представления `CURRENT_STUD_VIEW`
--
DROP TABLE IF EXISTS `CURRENT_STUD_VIEW`;

CREATE VIEW `CURRENT_STUD_VIEW`  AS  select `gs`.`ID` AS `GROUP_ID`,`gs`.`GROUP_CODE` AS `GROUP_CODE`,`s`.`ID` AS `ID`,`s`.`LAST_NAME` AS `LAST_NAME`,`s`.`FIRST_NAME` AS `FIRST_NAME`,`s`.`MIDDLE_NAME` AS `MIDDLE_NAME`,`s`.`BIRTHDAY` AS `BIRTHDAY`,`ss`.`STATUS_NAME` AS `STATUS_NAME`,(case ((dayofmonth(`s`.`BIRTHDAY`) = dayofmonth(now())) and (month(`s`.`BIRTHDAY`) = month(now()))) when TRUE then (year(now()) - year(`s`.`BIRTHDAY`)) end) AS `CONGRATULATE` from (((`STUDENT_IN_GROUP` `sg` join `STUDENT` `s` on((`sg`.`STUDENT_ID` = `s`.`ID`))) join `STUDENT_GROUP_STATUS` `ss` on((`sg`.`STUDENT_STATUS_ID` = `ss`.`ID`))) join `GROUP_ST` `gs` on((`sg`.`GROUP_ST_ID` = `gs`.`ID`))) ;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `GRADE`
--
ALTER TABLE `GRADE`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_GRADE_STUDENT_IN_GROUP1_idx` (`STUDENT_IN_GROUP_ID`);

--
-- Индексы таблицы `GROUP_ST`
--
ALTER TABLE `GROUP_ST`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_GROUP_ST_EMPLOYEE1_idx` (`TEACHER_ID`),
  ADD KEY `fk_GROUP_ST_EMPLOYEE2_idx` (`CURATOR_ID`);

--
-- Индексы таблицы `STUDENT`
--
ALTER TABLE `STUDENT`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `STUDENT_GROUP_STATUS`
--
ALTER TABLE `STUDENT_GROUP_STATUS`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `STATUS_NAME_UNIQUE` (`STATUS_NAME`);

--
-- Индексы таблицы `STUDENT_IN_GROUP`
--
ALTER TABLE `STUDENT_IN_GROUP`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_STUDENT_has_GROUP_ST_GROUP_ST1_idx` (`GROUP_ST_ID`),
  ADD KEY `fk_STUDENT_has_GROUP_ST_STUDENT_idx` (`STUDENT_ID`),
  ADD KEY `fk_STUDENT_IN_GROUP_STUDENT_GROUP_STATUS1_idx` (`STUDENT_STATUS_ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор', AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `GRADE`
--
ALTER TABLE `GRADE`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор', AUTO_INCREMENT=625;
--
-- AUTO_INCREMENT для таблицы `STUDENT`
--
ALTER TABLE `STUDENT`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор', AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT для таблицы `STUDENT_IN_GROUP`
--
ALTER TABLE `STUDENT_IN_GROUP`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `GRADE`
--
ALTER TABLE `GRADE`
  ADD CONSTRAINT `fk_GRADE_STUDENT_IN_GROUP1` FOREIGN KEY (`STUDENT_IN_GROUP_ID`) REFERENCES `STUDENT_IN_GROUP` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `GROUP_ST`
--
ALTER TABLE `GROUP_ST`
  ADD CONSTRAINT `fk_GROUP_ST_EMPLOYEE1` FOREIGN KEY (`TEACHER_ID`) REFERENCES `EMPLOYEE` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_GROUP_ST_EMPLOYEE2` FOREIGN KEY (`CURATOR_ID`) REFERENCES `EMPLOYEE` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `STUDENT_IN_GROUP`
--
ALTER TABLE `STUDENT_IN_GROUP`
  ADD CONSTRAINT `fk_STUDENT_IN_GROUP_STUDENT_GROUP_STATUS1` FOREIGN KEY (`STUDENT_STATUS_ID`) REFERENCES `STUDENT_GROUP_STATUS` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_STUDENT_has_GROUP_ST_GROUP_ST1` FOREIGN KEY (`GROUP_ST_ID`) REFERENCES `GROUP_ST` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_STUDENT_has_GROUP_ST_STUDENT` FOREIGN KEY (`STUDENT_ID`) REFERENCES `STUDENT` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
