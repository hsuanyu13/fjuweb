-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2025-04-14 16:04:46
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.3.11

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
(19, 2017, '成立織品服裝學院\n附設醫院開幕'),
(28, 2023, '輔大醫院晉升區域醫院'),
(31, 2024, '教育學院更名為教育與運動健康學院');

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
(18, 2017, 'College of Fashion & Textiles was established.\r\nOpening of Fu Jen Catholic University Hospital.'),
(24, 2023, 'Fu Jen Catholic University Hospital promoted to Regional Hospital');

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
(1, '  輔大築夢資訊網-輔大專屬高中生落點分析預測系統', ' http://140.136.202.95/fjudreamnetwork/head.php', '2024-02-27', 'YES'),
(2, '輔仁大學112學年度申請入學備審資料準備指引', 'https://exam.fju.edu.tw/admission/86', '2023-02-24', 'NO'),
(3, '112學年度運動成績優良學生單獨招生術科測驗細則', 'https://exam.fju.edu.tw/admission/101', '2023-02-15', 'NO'),
(4, '「國際創業與經營管理碩士在職專班」112學年度線上招生說明會歡迎報名參加', 'https://exam.fju.edu.tw/admission/99', '2023-02-03', 'NO'),
(5, '輔仁大學111學年度(日間部)寒假轉學生1階段第1梯次遞補名單', 'https://exam.fju.edu.tw/admission/89/announcement', '2023-01-17', 'NO'),
(6, '輔仁大學112學年度進修學士班申請入學招生簡章', 'https://exam.fju.edu.tw/admission/103', '2023-01-12', 'NO'),
(7, '輔仁大學112學年度運動成績優良學生單獨招生簡章', 'https://exam.fju.edu.tw/admission/101', '2023-01-12', 'NO'),
(11, '112學年度「輔仁大學鼓勵學士班成績優異學生就讀碩士班獎學金」獲獎名單', 'https://api-gateway.fju.edu.tw/Admission/data/Bulletins/f28f8c40-1682-485f-a3b3-0ad9cd857c01.pdf', '2022-12-07', 'NO'),
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
(41, '輔仁大學112學年度博士班招生簡章', 'https://api-gateway.fju.edu.tw/Admission/data/Bulletins/6588a889-e970-41dc-b626-50071173fed1.pdf', '2023-03-10', 'NO'),
(42, '輔仁大學112學年度申請入學第二階段甄試經濟不利學生入學考試補助申請', 'https://exam.fju.edu.tw/admission/86/announcement/50', '2023-03-09', 'NO'),
(45, ' 輔仁大學112學年度申請入學及繁星醫學第二階段指定項目甄試考生須知', ' https://api-gateway.fju.edu.tw/Admission/data/Bulletins/619ccc26-09fb-4f5f-b15c-b148f68aecda.pdf', '2023-04-12', 'NO'),
(48, ' 大學申請入學錄取本校正/備取生向甄選委員會登記就讀志願序', ' https://exam.fju.edu.tw/admission/86', '2023-06-08', 'NO'),
(51, ' 天主教輔仁大學 112 學年度 天主教研修學士學位學程招生', ' https://exam.fju.edu.tw/admission/105', '2023-06-01', 'NO'),
(55, ' 輔仁大學2023僑生及港澳生研究所(第二階段)單獨招生', ' https://exam.fju.edu.tw/admission/107', '2023-05-02', 'NO'),
(56, ' 輔仁大學112學年度進修學士班考試入學招生', ' https://exam.fju.edu.tw/admission/111', '2023-06-12', 'NO'),
(59, '  112 學年度大學分發入學招生', ' https://api-gateway.fju.edu.tw/Admission/data/Bulletins/50d65340-1303-47b6-aad8-98bfee205f5d.pdf', '2023-07-12', 'NO'),
(65, '   輔仁大學113學年度學士班特殊選才招生簡章', '  https://exam.fju.edu.tw/admission/120/announcement', '2023-09-22', 'NO'),
(66, '    天主教輔仁大學2024年僑生及港澳生單獨招生專區', '   https://exam.fju.edu.tw/admission/121/announcement', '2023-09-25', 'NO'),
(67, '   輔仁大學113學年度博士班暨碩士班甄試招生簡章', '   https://exam.fju.edu.tw/admission/124/announcement', '2023-09-26', 'NO'),
(68, ' 泰晤士高等教育特刊公布2024年度世界大學排名輔仁大學排名優於眾多國立大學', ' https://www.fju.edu.tw/focusDetail.jsp?focusID=2193&focusClassID=3', '2023-09-28', 'NO'),
(69, ' 輔仁大學NPO管理×社會企業碩士在職專班聯合招生說明會', ' https://exam.fju.edu.tw/admission/125/announcement', '2023-10-20', 'NO'),
(70, ' 輔仁大學113學年度「會計學系碩士在職專班」招生說明會', ' https://exam.fju.edu.tw/admission/125/announcement', '2023-10-20', 'NO'),
(71, '  輔仁大學112學年度(日間部)寒假轉學生招生簡章', 'https://exam.fju.edu.tw/admission/129t', '2023-10-24', 'NO'),
(72, ' 天主教輔仁大學 113學年度碩士在職專班招生簡章', ' https://exam.fju.edu.tw/admission/125/announcement', '2023-10-24', 'NO'),
(73, ' 輔仁大學113學年度「科技管理碩士在職專班」招生說明會', ' https://exam.fju.edu.tw/admission/125/announcement', '2023-10-24', 'NO'),
(74, '  113學年度輔仁大學織品服裝學系碩士在職專班招生說明會開跑囉', 'https://exam.fju.edu.tw/admission/125/announcement', '2023-10-24', 'NO'),
(75, ' 輔仁大學113學年度統計資訊學系應用統計研究所碩士在職專班招生說明會', 'https://exam.fju.edu.tw/admission/125/announcement', '2023-10-27', 'NO'),
(76, ' 輔仁大學113學年度「企業管理學系管理學碩士在職專班」招生說明會', 'https://exam.fju.edu.tw/admission/125/announcement', '2023-10-27', 'NO'),
(77, '輔仁大學112學年度進修學士班寒假轉學生招生簡章', 'https://exam.fju.edu.tw/admission/128', '2023-10-26', 'NO'),
(78, ' 113學年度輔仁大學哲學系碩士在職專班招生說明會，歡迎報名參加', ' https://exam.fju.edu.tw/admission/125/announcement', '2023-10-27', 'NO'),
(79, '【輔大大傳所碩專班 招生講座 】 成為跨領域人才 大傳所碩專班正適合你', 'https://exam.fju.edu.tw/admission/125/announcement', '2023-10-27', 'NO'),
(80, ' 專業X品質X人脈 三大保證【輔仁大學管理學院碩士在職班】招生說明會', ' https://exam.fju.edu.tw/admission/125/announcement', '2023-10-31', 'NO'),
(81, '2024/1/20國際創業與經營管理碩士在職專班招生說明會歡迎報名參加', 'https://exam.fju.edu.tw/admission/125/announcement', '2023-11-24', 'NO'),
(82, '輔仁大學 113學年度碩士班招生簡章', 'https://exam.fju.edu.tw/admission/131/announcement', '2023-11-28', 'NO'),
(83, '輔仁大學113學年度學士班特殊選才招生錄取名單', 'https://exam.fju.edu.tw/admission/120/announcement', '2023-12-05', 'NO'),
(84, '輔仁大學113學年度博士班暨碩士班甄試招生錄取名單', 'https://exam.fju.edu.tw/admission/124/announcement', '2023-12-06', 'NO'),
(85, '輔仁大學113學年度運動成績優良學生單獨招生簡章', 'https://exam.fju.edu.tw/admission/132/announcement', '2024-01-12', 'NO'),
(86, '輔仁大學 113 學年度國際創業與經營管理碩士學位學程在職專班招生簡章', 'https://exam.fju.edu.tw/admission/126/announcement', '2024-01-12', 'NO'),
(87, '輔仁大學112學年度大學繁星推薦入學招生 - 各學群校系錄取標準一覽表', 'https://exam.fju.edu.tw/admission/118/announcement', '2024-02-27', 'NO'),
(88, '輔仁大學112學年度大學申請入學招生各校系篩選標準及分發標準一覽表', 'https://exam.fju.edu.tw/admission/117/announcement', '2024-02-27', 'NO'),
(89, '2024 輔仁跨域遊樂趣．探索無限∞-open day活動', 'https://exam.fju.edu.tw/newslist/page/535', '2024-02-27', 'NO'),
(90, '《大學品牌力》十指標評比百校！成大居首，前十名輔大唯一私校', 'https://blog.104.com.tw/104data-university-brand/', '2024-02-29', 'NO'),
(91, '輔仁大學113學年度申請入學備審資料準備指引', ' https://exam.fju.edu.tw/guide?admissionCategoryBaseSn=117', '2024-03-01', 'NO'),
(92, '輔仁大學113學年度進修學士班申請入學招生簡章', 'https://exam.fju.edu.tw/admission/144/announcement', '2024-03-08', 'NO'),
(93, '天主教輔仁大學113 學年度學士後護理學系招生簡章', 'https://exam.fju.edu.tw/admission/143/announcement', '2024-03-11', 'NO'),
(94, '輔仁大學113學年度學系申請入學備審資料準備指引暨注意事項', ' https://exam.fju.edu.tw/guide?admissionCategoryBaseSn=117', '2024-03-28', 'NO'),
(95, '輔仁大學113學年度(日間部)轉學生招生簡章', 'https://exam.fju.edu.tw/admission/147/announcement', '2024-04-23', 'NO'),
(96, '輔仁大學113學年度進修學士班轉學生招生簡章', 'https://exam.fju.edu.tw/admission/141/announcement', '2024-04-23', 'NO'),
(97, '天主教輔仁大學113學年度學士後法律學系招生錄取名單', 'https://exam.fju.edu.tw/admission/140/announcement', '2024-05-28', 'NO'),
(98, '天主教輔仁大學113學年度國際創業與經營管理碩士學位學程在職專班招生錄取名單', 'https://exam.fju.edu.tw/admission/126/announcement', '2024-05-28', 'NO'),
(99, '天主教輔仁大學113學年度博士班招生錄取名單', 'https://exam.fju.edu.tw/admission/139/announcement', '2024-05-29', 'NO'),
(100, '天主教輔仁大學113學年度學士後護理學系招生錄取名單', 'https://exam.fju.edu.tw/admission/143/announcement', '2024-06-04', 'NO'),
(101, '天主教輔仁大學113學年度學士後多元專長培力課程招生簡章', 'https://api-gateway.fju.edu.tw/Admission/data/Bulletins/528e8532-9143-4e53-a7b0-e4ad0330a4ca.pdf', '2024-05-28', 'NO'),
(102, '天主教輔仁大學113學年度進修學士班甄審登記入學招生簡章', 'https://exam.fju.edu.tw/admission/145', '2024-04-29', 'NO'),
(103, '天主教輔仁大學113學年度大學申請入學招生統一分發結果', 'https://www.cac.edu.tw/CacLink/apply113/113appLy_F3gh9Yd_EntraNce_D95pE3ta/html_entrance_77Gf9Kw2/result_html/result_apply/web/020.htm', '2024-06-13', 'NO'),
(104, '天主教輔仁大學 113學年度進修學士班申請入學招生錄取名單', 'https://exam.fju.edu.tw/admission/144/announcement', '2024-06-18', 'NO'),
(106, '輔仁大學114學年度學士班特殊選才招生簡章', 'https://exam.fju.edu.tw/admission/161/announcement', '2024-09-12', 'NO'),
(107, '輔仁大學114學年度博士班暨碩士班甄試招生簡章', '   https://exam.fju.edu.tw/admission/162/announcement', '2024-09-18', 'NO'),
(108, '天主教輔仁大學113學年度(日間部)寒假轉學生招生簡章', 'https://exam.fju.edu.tw/admission/169/announcement', '2024-10-24', 'NO'),
(109, '【大傳所碩專班招生講座】｜ 說明會+ 講座課程', 'https://exam.fju.edu.tw/admission/168/announcement', '2024-10-23', 'NO'),
(110, '【宗教學系碩士在職專班招生說明會】', 'https://exam.fju.edu.tw/admission/168/announcement', '2024-10-24', 'NO'),
(111, ' 114學年度輔仁大學哲學系碩士在職專班招生說明會，歡迎報名參加!', ' https://exam.fju.edu.tw/admission/168/announcement', '2024-10-24', 'NO'),
(112, ' ColleGo!大學選才與高中育才輔助系統', ' https://collego.edu.tw/Highschool/School?school=020', '2024-11-08', 'NO'),
(113, '輔仁大學114學年度學士班特殊選才招生錄取名單', 'https://exam.fju.edu.tw/admission/161/announcement', '2024-11-25', 'NO'),
(114, '輔仁大學114學年度博士班暨碩士班甄試招生錄取名單', 'https://exam.fju.edu.tw/admission/162/announcement', '2024-11-25', 'NO'),
(115, '2025/01/11「國際創業與經營管理碩士在職專班」114學年度招生說明會及創新創業專題演講', 'https://exam.fju.edu.tw/admission/168/announcement', '2024-11-25', 'NO'),
(116, ' 輔大連兩年獲104《最佳大學品牌力》 全國十強 ​ 私校第一', ' https://travellerlink.fju.edu.tw/Admission/data/Bulletins/6e7d8c55-12d1-4c9a-bc68-35e5a9e335ab.mp4', '2025-02-27', 'YES'),
(117, ' 2025/3/8  輔大開箱日-學系薈萃．百年風華', ' http://140.136.202.95/fjuweb/open.html', '2025-02-27', 'NO'),
(118, '輔仁大學114學年度申請入學備審資料準備指引', 'https://exam.fju.edu.tw/guide?admissionCategoryBaseSn=174', '2025-03-03', 'NO'),
(119, '輔仁大學114學年度碩士班招生甲類系所錄取名單', 'https://exam.fju.edu.tw/admission/172/announcement', '2025-03-11', 'NO'),
(120, '輔仁大學114學年度碩士班招生乙類系所初試合格名單', 'https://exam.fju.edu.tw/admission/172/announcement', '2025-03-11', 'NO'),
(121, '輔仁大學114學年度碩士在職專班招生錄取名單', 'https://exam.fju.edu.tw/admission/168/announcement', '2025-03-12', 'NO');

-- --------------------------------------------------------

--
-- 資料表結構 `video_url`
--

CREATE TABLE `video_url` (
  `id` int(11) NOT NULL,
  `url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `video_url`
--

INSERT INTO `video_url` (`id`, `url`) VALUES
(1, 'https://www.youtube.com/embed/videoseries?list=PLtTsVUvyUQleoKfyaXpB8GQuGYhuuoiBk&autoplay=1&mute=1&loop=1');

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
-- 資料表索引 `video_url`
--
ALTER TABLE `video_url`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `history_english`
--
ALTER TABLE `history_english`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member_table`
--
ALTER TABLE `member_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `video_url`
--
ALTER TABLE `video_url`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
