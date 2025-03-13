-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-03-30 03:44:28
-- 伺服器版本： 10.4.27-MariaDB
-- PHP 版本： 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `fjuweb`
--

-- --------------------------------------------------------

--
-- 資料表結構 `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `link` varchar(500) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `news`
--

INSERT INTO `news` (`id`, `title`, `link`, `date`) VALUES
(1, '輔大築夢資訊網-輔大專屬高中生落點分析預測系統', 'http://140.136.129.84/fjudreamnetwork/head.php', '2023-02-27'),
(2, '輔仁大學112學年度申請入學備審資料準備指引', 'https://exam.fju.edu.tw/admission/86', '2023-02-24'),
(3, '112學年度運動成績優良學生單獨招生術科測驗細則', 'https://exam.fju.edu.tw/admission/101', '2023-02-15'),
(4, '「國際創業與經營管理碩士在職專班」112學年度線上招生說明會歡迎報名參加', 'https://exam.fju.edu.tw/admission/99', '2023-02-03'),
(5, '輔仁大學111學年度(日間部)寒假轉學生1階段第1梯次遞補名單', 'https://exam.fju.edu.tw/admission/89/announcement', '2023-01-17'),
(6, '輔仁大學112學年度進修學士班申請入學招生簡章', 'https://exam.fju.edu.tw/admission/103', '2023-01-12'),
(7, '輔仁大學112學年度運動成績優良學生單獨招生簡章', 'https://exam.fju.edu.tw/admission/101', '2023-01-12'),
(8, '輔仁大學111學年度進修學士班寒假轉學生招生錄取名單', 'https://api-gateway.fju.edu.tw/Admission/data/Bulletins/9b1c8334-4239-4dab-9e9a-f1a198510d16.pdf ', '2023-01-09'),
(9, '輔仁大學111學年度(日間部)寒假轉學生招生錄取名單', 'https://exam.fju.edu.tw/admission/89/announcement', '2023-01-09'),
(38, '輔仁大學112學年度碩士班招生甲類系所錄取名單', 'https://api-gateway.fju.edu.tw/Admission/data/Bulletins/50997ca3-28a2-46ba-9ca3-6aad12f233fb.pdf', '2023-03-21'),
(39, '輔仁大學112學年度碩士在職專班招生錄取名單', 'https://api-gateway.fju.edu.tw/Admission/data/Bulletins/a83c39bf-7795-43a8-b845-727b143b6bf5.pdf', '2023-03-21'),
(40, '輔仁大學112學年度護理學系二年制在職專班招生錄取名單', 'https://api-gateway.fju.edu.tw/Admission/data/Bulletins/484ac6e3-9d0f-456f-beb0-0f82d569ef27.pdf', '2023-03-21'),
(41, '輔仁大學112學年度博士班招生簡章', 'https://api-gateway.fju.edu.tw/Admission/data/Bulletins/6588a889-e970-41dc-b626-50071173fed1.pdf', '2023-03-10'),
(42, '輔仁大學112學年度申請入學第二階段甄試經濟不利學生入學考試補助申請', 'https://exam.fju.edu.tw/admission/86/announcement/50', '2023-03-09');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
