-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-02-03 06:07:07
-- 伺服器版本： 10.4.22-MariaDB
-- PHP 版本： 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `fjuweb`
--

-- --------------------------------------------------------

--
-- 資料表結構 `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `event` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `history`
--

INSERT INTO `history` (`id`, `year`, `event`) VALUES
(1, 1925, '由美國本篤會於北京創辦，初期設大學預科名為「北京公教大學附屬輔仁社」'),
(2, 1927, '北洋政府准予試辦，並正式將校名改為「輔仁大學」，取《論語》:「以文會友，以友輔仁」之意'),
(3, 1929, '國民政府統一全國後，董事會改組呈請教育部正式立案'),
(4, 1933, '改由聖言會接辦'),
(5, 1952, '因院系調整併入北京師範大學'),
(6, 1956, '輔仁大學在臺校友會呼籲復校'),
(7, 1959, '教宗若望二十三世任命于斌總主教為首任校長並籌備復校事宜。中國教區神職、聖言會及耶穌會共同參與復校計畫'),
(8, 1960, '教育部核准進行籌設'),
(9, 1961, '成立文學院\n哲學研究所招生，輔仁大學正式在台復校'),
(10, 1963, '成立理學院\n成立法學院\n設立3學校10系組，大學部招生'),
(11, 1969, '成立商學院\n成立夜間部'),
(12, 1980, '成立外語學院'),
(13, 1984, '成立藝術學院'),
(14, 1990, '成立醫學院'),
(15, 1994, '成立民生學院'),
(16, 2003, '成立法律學院'),
(17, 2010, '成立傳播學院\n成立教育學院'),
(18, 2012, '捷運輔大站通車'),
(19, 2017, '成立織品服裝學院\n附設醫院開幕');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
