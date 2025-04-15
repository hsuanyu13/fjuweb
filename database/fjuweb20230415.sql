-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-04-15 13:53:32
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

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
-- 資料表結構 `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `event` varchar(500) NOT NULL
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

-- --------------------------------------------------------

--
-- 資料表結構 `history_english`
--

CREATE TABLE `history_english` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `event` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `history_english`
--

INSERT INTO `history_english` (`id`, `year`, `event`) VALUES
(1, 1925, 'Founded in Beijing by the Benedictines of the United States, the university preparatory course was initially named \"Furen Club Affiliated to Beijing Catholic University\".'),
(2, 1927, 'The Beiyang government approved the trial operation, and officially changed the name of the school to \"Fu Jen Catholic University\", taking the meaning from \"The Analects of Confucius\": \"Make friends with literature, and help people with friends\".'),
(3, 1929, 'After the national government unified the country, the board of directors reorganized and petitioned the Ministry of Education for formal filing.'),
(4, 1933, 'The SVD Mission would take over.'),
(5, 1952, 'Fu Jen was merged into Beijing Normal University due to the adjustment of departments.'),
(6, 1956, 'Fu Jen Catholic University Alumni Association in Taiwan called for the resumption of the school'),
(7, 1959, 'Pope John XXIII appointed Archbishop Yu Bin as the first principal and prepared for the resumption of the school. The Chinese diocesan clergy, the Sacred Word Society and the Jesuits jointly participated in the school restoration plan.'),
(8, 1960, 'The Ministry of Education approved the establishment.'),
(9, 1961, 'College of Liberal Arts was established.\r\nThe Institute of Philosophy recruits students, and Fu Jen Catholic University officially reopens in Taiwan.'),
(10, 1963, 'College of Science and Engineering was established.\r\nCollege of Law was established.\r\nSet up 3 schools and 10 department groups, and recruit students from the university department.'),
(11, 1969, 'College of Management was established.\r\nSchool of Continuing Education was established.'),
(12, 1980, 'College of Foreign Languages & Literatures was established.'),
(13, 1984, 'College of Arts was established.'),
(14, 1990, 'College of Medicine was established.'),
(15, 1994, 'College of Human Ecology was established.'),
(16, 2010, 'College of Communication was established.\r\nCollege of Education was established.'),
(17, 2012, 'Fu Jen University Station MRT opened to traffic.'),
(18, 2017, 'College of Fashion & Textiles was established.\r\nOpening of Fu Jen Catholic University Hospital.');

-- --------------------------------------------------------

--
-- 資料表結構 `member_table`
--

CREATE TABLE `member_table` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `member_table`
--

INSERT INTO `member_table` (`id`, `username`, `password`) VALUES
(1, 'manager1', 'FJCU'),
(2, 'manager2', 'FJCU'),
(3, 'manager3', 'FJCU'),
(4, 'manager4', 'FJCU');

-- --------------------------------------------------------

--
-- 資料表結構 `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `link` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `topnews` varchar(5) NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `news`
--

INSERT INTO `news` (`id`, `title`, `link`, `date`, `topnews`) VALUES
(1, '輔大築夢資訊網-輔大專屬高中生落點分析預測系統', 'http://140.136.129.84/fjudreamnetwork/head.php', '2023-02-27', 'YES'),
(2, '輔仁大學112學年度申請入學備審資料準備指引', 'https://exam.fju.edu.tw/admission/86', '2023-02-24', 'NO'),
(3, '112學年度運動成績優良學生單獨招生術科測驗細則', 'https://exam.fju.edu.tw/admission/101', '2023-02-15', 'NO'),
(4, '「國際創業與經營管理碩士在職專班」112學年度線上招生說明會歡迎報名參加', 'https://exam.fju.edu.tw/admission/99', '2023-02-03', 'NO'),
(5, '輔仁大學111學年度(日間部)寒假轉學生1階段第1梯次遞補名單', 'https://exam.fju.edu.tw/admission/89/announcement', '2023-01-17', 'NO'),
(6, '輔仁大學112學年度進修學士班申請入學招生簡章', 'https://exam.fju.edu.tw/admission/103', '2023-01-12', 'NO'),
(7, '輔仁大學112學年度運動成績優良學生單獨招生簡章', 'https://exam.fju.edu.tw/admission/101', '2023-01-12', 'NO'),
(8, '輔仁大學111學年度進修學士班寒假轉學生招生錄取名單', 'https://api-gateway.fju.edu.tw/Admission/data/Bulletins/9b1c8334-4239-4dab-9e9a-f1a198510d16.pdf ', '2023-01-09', 'NO'),
(9, '輔仁大學111學年度(日間部)寒假轉學生招生錄取名單', 'https://exam.fju.edu.tw/admission/89/announcement', '2023-01-09', 'NO'),
(10, '112學年度輔仁大學博士班暨碩士班甄試招生錄取名單', 'https://exam.fju.edu.tw/admission/84/announcement', '2022-12-07', 'NO'),
(11, '112學年度「輔仁大學鼓勵學士班成績優異學生就讀碩士班獎學金」獲獎名單', 'https://api-gateway.fju.edu.tw/Admission/data/Bulletins/f28f8c40-1682-485f-a3b3-0ad9cd857c01.pdf', '2022-12-07', 'NO'),
(12, '輔仁大學112學年度學士班特殊選才招生錄取名單', 'https://api-gateway.fju.edu.tw/Admission/data/Bulletins/51a20500-d367-4317-90f3-237ab7601d09.pdf ', '2022-12-06', 'NO'),
(13, '輔仁大學112學年度碩士班招生簡章', 'https://exam.fju.edu.tw/admission/95', '2022-11-29', 'NO'),
(14, '輔仁大學 112 學年度碩士在職專班招生簡章', 'https://exam.fju.edu.tw/admission/93', '2022-10-28', 'NO'),
(15, '輔仁大學111學年度進修學士班寒假轉學生招生簡章', 'https://exam.fju.edu.tw/admission/90', '2022-10-27', 'NO'),
(16, '輔仁大學111學年度(日間部)寒假轉學生招生簡章', 'https://exam.fju.edu.tw/admission/89', '2022-10-27', 'NO'),
(17, '輔仁大學2023年僑生及港澳生研究所單獨招生報名連結', 'https://exam.fju.edu.tw/admission/91', '2022-10-18', 'NO'),
(18, '輔大2023世界大學排名全國第12 不只贏國立！「產學收入」居全球頂標之上', 'https://www.fju.edu.tw/focusDetail.jsp?focusID=1952&focusClassID=3', '2022-10-12', 'NO'),
(19, '輔仁大學112學年度博士班暨碩士班甄試招生簡章', 'https://exam.fju.edu.tw/admission/84', '2022-09-27', 'NO'),
(20, '輔仁大學2023僑生及港澳生研究所單獨招生(第一階段)簡章公告', 'https://api-gateway.fju.edu.tw/Admission/data/Bulletins/a49f2e6a-d19d-4265-8033-74af52bbf0c2.pdf', '2022-09-26', 'NO'),
(21, '再創佳績! 輔大MGEM榮獲2022英國金融時報全球MiM排行第35名', 'https://www.fju.edu.tw/awardDetail.jsp?newsID=6959', '2022-09-23', 'NO'),
(22, '輔仁大學112學年度學士班特殊選才招生簡章', 'https://exam.fju.edu.tw/admission/85', '2022-09-22', 'NO'),
(23, '輔仁大學111學年度護理學系二年制在職專班招生簡章公告', 'https://api-gateway.fju.edu.tw/Admission/data/Bulletins/e419fe90-ae7d-4a11-8d6f-0ad0d14689fa.pdf', '2021-12-14', 'NO'),
(24, '大學甄選入學委員會(中正大學)', 'https://www.cac.edu.tw/cacportal/index.php', '2021-01-18', 'NO'),
(26, '112學年度『國際創業與經營管理碩士在職專班』招生說明會歡迎報名參加', 'https://exam.fju.edu.tw/admission/99/announcement', '2022-12-01', 'NO'),
(27, '112學年度輔仁大學織品系碩士在職專班招生說明會，開始報名!', '查無相關公告', '2022-10-28', 'NO'),
(28, '歡迎蒞臨「輔大金融碩士在職專班」-112學年度招生說明會', 'http://ems.fib.fju.edu.tw/index.php?action=ix-detail&id=116', '2022-10-26', 'NO'),
(29, '輔大資管系碩士在職專班112學年度線上招生說明會', 'http://www.im.fju.edu.tw/site/?p=6736', '2022-10-26', 'NO'),
(38, '輔仁大學112學年度碩士班招生甲類系所錄取名單', 'https://api-gateway.fju.edu.tw/Admission/data/Bulletins/50997ca3-28a2-46ba-9ca3-6aad12f233fb.pdf', '2023-03-21', 'NO'),
(39, '輔仁大學112學年度碩士在職專班招生錄取名單', 'https://api-gateway.fju.edu.tw/Admission/data/Bulletins/a83c39bf-7795-43a8-b845-727b143b6bf5.pdf', '2023-03-21', 'YES'),
(40, '輔仁大學112學年度護理學系二年制在職專班招生錄取名單', 'https://api-gateway.fju.edu.tw/Admission/data/Bulletins/484ac6e3-9d0f-456f-beb0-0f82d569ef27.pdf', '2023-03-21', 'NO'),
(41, '輔仁大學112學年度博士班招生簡章', 'https://api-gateway.fju.edu.tw/Admission/data/Bulletins/6588a889-e970-41dc-b626-50071173fed1.pdf', '2023-03-10', 'NO'),
(42, '輔仁大學112學年度申請入學第二階段甄試經濟不利學生入學考試補助申請', 'https://exam.fju.edu.tw/admission/86/announcement/50', '2023-03-09', 'NO');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `history_english`
--
ALTER TABLE `history_english`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `member_table`
--
ALTER TABLE `member_table`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `history_english`
--
ALTER TABLE `history_english`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member_table`
--
ALTER TABLE `member_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
