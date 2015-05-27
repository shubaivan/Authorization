-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Май 27 2015 г., 08:36
-- Версия сервера: 5.5.43-0ubuntu0.14.04.1
-- Версия PHP: 5.5.9-1ubuntu4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `aog_profile`
--

-- --------------------------------------------------------

--
-- Структура таблицы `developers`
--

CREATE TABLE IF NOT EXISTS `developers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_outsource` tinyint(1) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qualification` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `skills` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `english` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `rate` smallint(6) NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cv_uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count_show` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `approved` int(11) NOT NULL,
  `rating` double NOT NULL,
  `sum_rating` double NOT NULL,
  `numVotes` smallint(6) NOT NULL,
  `created_at` date NOT NULL,
  `certificates` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL,
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_summary` longtext COLLATE utf8_unicode_ci,
  `unsubscribe_date` date NOT NULL,
  `unsubscribe_token` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `main_skill` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Ukraine',
  `tags` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  `tokens` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=304 ;

--
-- Дамп данных таблицы `developers`
--

INSERT INTO `developers` (`id`, `is_outsource`, `email`, `qualification`, `level`, `skills`, `english`, `rate`, `location`, `type`, `cv_uri`, `count_show`, `active`, `approved`, `rating`, `sum_rating`, `numVotes`, `created_at`, `certificates`, `name`, `password`, `role`, `first_name`, `last_name`, `skype`, `telephone`, `company`, `description`, `created`, `image_path`, `profile_summary`, `unsubscribe_date`, `unsubscribe_token`, `main_skill`, `country`, `tags`, `tokens`) VALUES
(82, 0, 'a.stetsuk@icloud.com', 'Backend', 'Middle', 'a:6:{i:0;s:5:"HTML5";i:1;s:3:"PHP";i:2;s:3:"CSS";i:3;s:4:"Java";i:4;s:8:"Xamarine";i:5;s:4:"Ruby";}', 'Advanced', 19, NULL, NULL, 'uploads/cv/1430921101_Koala.jpg', 2, 0, 0, 0, 0, 0, '2015-05-05', 'a:0:{}', 'Alex-St', '3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d', 'ROLE_FREELANCER', 'Alex2', 'St2', 'a.stetsuk', '+380938624628', NULL, '121', '2015-05-05 17:21:10', 'uploads/photo/1430921238_Chrysanthemum.jpg', '1111112\r\nві', '2015-05-05', 'b4f42cd3b1cb0f9e7b213ff042d9f8a4988df586', 'Javascript', 'Ukraine', 'a:2:{i:0;s:11:"vladimir li";i:1;s:4:"dima";}', NULL),
(89, 0, 'TwoAlex2@bigmir.net', 'Frontend', 'Middle', 'a:3:{i:0;s:10:"Javascript";i:1;s:5:"HTML5";i:2;s:3:"CSS";}', 'Basic', 11, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '2015-05-06', 'a:1:{i:0;s:5:"12121";}', 'Two-Alex', '3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d', 'ROLE_FREELANCER', 'Two', 'Alex', 'TwoAlex', '+380938624628', NULL, '1', '2015-05-06 09:13:49', 'uploads/photo/1432222111_1335983809_awful_office_015.jpg', '123456789', '2015-05-06', '1fa7aff5ad1ca6f43bcec5c84516a4148ef971fa', 'Java', 'Ukraine', 'a:3:{i:0;s:4:"tag1";i:1;s:11:"vladimir li";i:2;s:4:"dima";}', NULL),
(90, 0, 'FourAlex4@bigmir.net', 'Backend', 'Senior', 'a:3:{i:0;s:10:"Javascript";i:1;s:3:"PHP";i:2;s:3:"CSS";}', 'Advanced', 35, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '2015-05-06', 'a:0:{}', 'Four-Alex', '9afd82e852b13f31ff9cbf9ae85b7ceb8a77a28e', 'ROLE_FREELANCER', 'Four', 'Alex', 'FourAlex', '+380938624628', NULL, NULL, '2015-05-06 09:39:08', NULL, '111111', '2015-05-06', 'b643a9cc1679e4748d29b89c33bbe091d30938ad', 'Javascript', 'Ukraine', 'a:0:{}', NULL),
(93, 0, 'OneCompany1@bigmir.net', 'Frontend', 'Middle', 'a:2:{i:0;s:4:"Java";i:1;s:5:"HTML5";}', 'Intermediate', 11, NULL, '0', NULL, 0, 0, 0, 0, 0, 0, '2015-05-06', 'a:0:{}', 'John', NULL, 'ROLE_AGENT', 'gdfgd', NULL, 'OneCompany1', '+380938624628', 'One', 'fsdfs', '2015-05-06 15:45:38', '', 'fsd11', '2015-05-06', '713a71d152f2255c336e8ed1699327f6f574b61e', 'HTML5', 'Ukraine', NULL, NULL),
(96, 0, 'tepalenko@gmail.com', 'Backend', 'Junior', 'a:1:{i:0;s:4:"Java";}', 'Basic', 34, NULL, '0', NULL, 0, 0, 0, 0, 0, 0, '2015-05-07', 'a:0:{}', 'Test developer', NULL, 'ROLE_AGENT', 'Test developer', NULL, NULL, NULL, NULL, NULL, '2015-05-07 09:40:03', '', 'asfsd', '2015-05-07', NULL, 'Java', 'Ukraine', NULL, NULL),
(97, 0, 'OneAlex1@bigmir.net', 'Frontend', 'Middle', 'a:1:{i:0;s:4:"Ruby";}', 'Intermediate', 4, NULL, '0', NULL, 0, 0, 0, 0, 0, 0, '2015-05-07', 'a:0:{}', 'Amanda', NULL, 'ROLE_AGENT', 'Amanda', NULL, 'OneAlex', '+380938624628', NULL, NULL, '2015-05-07 10:30:18', NULL, '1121', '2015-05-07', '98a0280dd0a16e6d17084423fe72b5517bf123dc', 'Java', 'Ukraine', 'a:1:{i:0;s:4:"dima";}', NULL),
(121, 0, 'a.a.stetsuk@hotmail.com', 'Frontend', 'Senior', 'a:0:{}', 'Advanced', 15, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '0000-00-00', 'a:0:{}', 'Alexandr', NULL, '', 'Alexandr', 'Stetsuk', 'Linkedin_A.A.Stetsuk', '+380938624628', NULL, 'AQWtLz-x83IPeAltORQQZl0bfvgKOxpeFWmTJFl8q6nNZ9c9bpRBas0AXtT_8Me_R0o1GWsH042bfzVvY1ryonHg6M5_i8LwKLFin-whYtf5CMHB-3I8TTQE0a2dl0nexLvPRgHjI0cYwnQuAjEnSSaxuY2RFx_AnPBPh6ArQ9EDzseIHrA-_-linkedin', '2015-05-25 15:37:30', 'uploads/photo/1431095506_Koala.jpg', '111', '0000-00-00', NULL, 'HTML5', 'Ukraine', 'a:0:{}', NULL),
(124, 0, 'nelia.kovbasa@aiesec.net', NULL, '', 'a:0:{}', '', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '0000-00-00', 'a:0:{}', '', NULL, '', 'Nelia', 'Kovbasa', 'nelka.smile', '+380677439752', NULL, 'AQUAVSmUJLV8yPuAeFBKsVHvN3UPFo-9_zgrUeibdDw-zVdr6Ptm-2p2igOJgFpM_k2xl02a0LpFd5RbhY4mTkStN9ReV9Tk8z9HY9VDAJKEY7rF2VqLCLmEMJyA9bEKAHpAvJSuhmZwY2hlnThvAKgDwa06Ttkzxgbw8dLkTs6uzc8fsC8-_-linkedin', '0000-00-00 00:00:00', NULL, NULL, '0000-00-00', NULL, NULL, 'Ukraine', NULL, NULL),
(125, 0, 'test@test.com', 'Backend', 'Junior', 'a:1:{i:0;s:4:"Java";}', 'Basic', -40, NULL, '0', NULL, 0, 0, 0, 0, 0, 0, '2015-05-11', 'a:0:{}', 'Test developer', NULL, 'ROLE_AGENT', 'Test developer', NULL, NULL, NULL, NULL, NULL, '2015-05-11 12:00:00', NULL, NULL, '2015-05-11', NULL, 'Java', 'Ukraine', 'a:3:{i:0;s:8:"firsttag";i:1;s:11:"vladimir li";i:2;s:4:"tag1";}', NULL),
(126, 0, 'dmotion@yandex.ru', 'Full stack', 'Senior', 'a:5:{i:0;s:10:"cocos 2d-x";i:1;s:8:"Torque3D";i:2;s:6:"OpenCL";i:3;s:5:"NoSQL";i:4;s:7:"Node.js";}', 'Basic', 0, NULL, '0', 'uploads/cv/1431337117_SyrokomskiyAndrey-Resume_(1).docx', 1, 0, 0, 0, 0, 0, '2015-05-11', 'a:0:{}', 'Andrey Syrokomskiy', NULL, 'ROLE_AGENT', 'Андрей Сырокомский', NULL, 'sandreyv', '+38 050 335-16-18', NULL, 'github.com/signmotion \r\n linkedin.com/in/signmotion', '2015-05-11 12:18:53', NULL, 'май 2013 — апр 2014 ✓\r\nПрограммист C++\r\nАвиасимулятор. Torque3D + портирование на x64 + коммиты в комьюнити.\r\nLogicKing\r\nкомпьютерные игры\r\nноя 2007 — фев 2013\r\nВладелец\r\nДалион\r\nвеб-сервисы\r\nиюн 2001 — окт 2007\r\nРуководитель отдела IT\r\nСобственная разработка & внедрение легко и дёшево масштабируемой АСУП, на которой работают с 2002 года по сей день.\r\nНочной экспресс \r\nгрузовые перевозки по Украине, 40 представительств в городах Украины с оборотом от 50 до 5 000 заказов в день\r\nмар 2001 — дек 2001\r\nПрограммист-консультант\r\nТри короны\r\nдоставка продтоваров\r\nсен 1999 — мар 2001\r\nВнедрение ERP-системы, поддержка пользователей\r\n12-ть разноотраслевых предприятий Киева, DeloPro2.\r\nКсиком Софт\r\nERP\r\nянв 1998 — авг 1999\r\nАдминистратор КС и БД\r\nВнедрение ERP-системы DeloPro2.\r\nВерона / Автопланета\r\nавтозапчасти из Европы\r\n\r\nянв 1993 — авг 1998\r\nвысшее образование\r\nсистемный программист\r\nКиевский Международный Университет Гражданской Авиации (КМУГА)\r\n\r\nзнаю хорошо\r\nC++ 3++ года  Torque3D 1 год  Cocos2d-x 1+ год  OpenCL 1+ год  Qt 1 год  Javascript 3 года  NodeJS 1 год  T-SQL 3 года  NoSQL (CouchDB) 3 года\r\nPHP 2 года  UML  Visio  Экстремальное программирование 1 год\r\nзнаком\r\nPython  Lua  Дракон  ITIL (сертификат слушателя)  Agile (Scrum)  Проектный офис  Ant  Blender3D  Debian / Ubuntu  Apache HTTP\r\n\r\nСемейное положение\r\nхолост', '2015-05-11', '89790358fad31d8c63e2a07da8ce6c663bcc5e16', 'C++', 'Ukraine', 'a:2:{i:0;s:11:"vladimir li";i:1;s:29:"vladimir''s connection from LI";}', NULL),
(132, 0, 'anthony.weres.force@gmail.com', NULL, '', 'a:0:{}', '', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '0000-00-00', 'a:0:{}', '', NULL, '', 'Antony', 'Generalov', 'antonypride', '0685762932', NULL, 'AQVouHmfreXqJBvRCbGc18vMDZyBxiECJr8KyAFC-K4Jvj6ZZbtr0ZVjNCMK8WHIpyO8le9DCFAOQTE35j2QmeKH6HrFr-HuOZ5Vp75Qij1yPDqvRnKVC5D3wxWwFUa-pQRnzV7Z8sVGDrWlzn-HN3HKLsvsNK50mVTHLG8cHC2wwzxTaO8-_-linkedin', '0000-00-00 00:00:00', NULL, NULL, '0000-00-00', NULL, NULL, 'Ukraine', NULL, NULL),
(133, 0, 'doomguard@pisem.net', NULL, '', 'a:0:{}', '', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '0000-00-00', 'a:0:{}', '', NULL, '', 'Antony', 'Generalov', 'antonypride', '0685762932', NULL, 'AQWMu5kYqmMOeRzc2Av1Twk8g2p_7wBiNRJBJZ-7KSe5EZKBebqeEqV3WYksyAPPFSbvQ8z4wFSoSFsq6hfqjRsr_XKCp4l-TAkU_JFStheOyeHOmiZrtPCxw9lLVfAYW3SCp24zEkTW93iDvbyXJ_va8Zpm4HNsXLNPXnPABLoKO_dyXJo-_-linkedin', '0000-00-00 00:00:00', NULL, NULL, '0000-00-00', NULL, NULL, 'Ukraine', NULL, NULL),
(134, 0, 'Nu.mb.Sales@gmail.com', 'Backend', 'Middle', 'a:1:{i:0;s:5:"HTML5";}', 'Intermediate', 3, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '2015-05-12', 'a:0:{}', 'Irina-Stetsuk', '3e1b6ce9376495e050fd5ec77c0df82a6a13da14', 'ROLE_FREELANCER', 'Irina', 'Stetsuk', 'Numb_Irina', '+380938624628', NULL, NULL, '2015-05-12 16:28:04', NULL, NULL, '2015-05-12', '5b92e508f0963045ea158fb422bc744464c6f13c', 'JQuery', 'Ukraine', 'a:0:{}', 'a:0:{}'),
(135, 0, 'Alex.2.Alex.One@gmail.com', 'Backend', 'Senior', 'a:2:{i:0;s:5:"HTML5";i:1;s:4:"JSON";}', 'Advanced', 33, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '2015-05-12', 'a:0:{}', 'One-Alex2Alex', 'b1ec0dd2e6e4e43f5ddb82eeebc31109ba87d980', 'ROLE_FREELANCER', 'One', 'Alex2Alex', 'Jack Nikolson', '+380938624628', NULL, NULL, '2015-05-12 16:53:04', NULL, '111', '2015-05-12', '7fd2c1cdc0ed4569912926eae1f00f4df4d712d3', 'Magento', 'Ukraine', 'a:0:{}', 'a:0:{}'),
(138, 0, 'tepalenko+custom@gmail.com', 'Backend', 'Junior', 'a:1:{i:0;s:6:"custom";}', 'Basic', 0, NULL, '0', NULL, 0, 0, 0, 0, 0, 0, '2015-05-13', 'a:0:{}', 'Dima Tepalenko', NULL, 'ROLE_FREELANCER', 'Dima Tepalenko', 'Tepalenko', 'skype', NULL, NULL, NULL, '2015-05-13 12:58:56', NULL, NULL, '2015-05-13', NULL, NULL, 'Ukraine', 'a:0:{}', 'a:0:{}'),
(139, 0, 'Alex.2.AlexOne@gmail.com', 'Full stack', 'Junior', 'a:30:{i:0;s:4:"Zend";i:1;s:4:"JSON";i:2;s:4:"Java";i:3;s:10:"Javascript";i:4;s:5:"HTML5";i:5;s:3:"PHP";i:6;s:4:".NET";i:7;s:6:"Python";i:8;s:4:"Ruby";i:9;s:13:"Ruby On Rails";i:10;s:1:"C";i:11;s:3:"C++";i:12;s:2:"C#";i:13;s:7:"Magento";i:14;s:3:"SQL";i:15;s:5:"MySQL";i:16;s:3:"CSS";i:17;s:9:"Symfony 2";i:18;s:6:"JQuery";i:19;s:5:"JBoss";i:20;s:6:"TomCat";i:21;s:11:"Codeigniter";i:22;s:6:"Drupal";i:23;s:11:"Android SDK";i:24;s:6:"OpenCL";i:25;s:5:"NoSQL";i:26;s:7:"Node.js";i:27;s:8:"Selenium";i:28;s:6:"custom";i:29;s:13:"Bootstrap CSS";}', 'Intermediate', 6, NULL, '0', NULL, 0, 0, 0, 0, 0, 0, '2015-05-14', 'a:0:{}', 'Alex Stetsuk', NULL, 'ROLE_FREELANCER', 'Alex Stetsuk', 'Stetsuk', 'Alex.2.Alex', '+380938624628', NULL, '```', '2015-05-14 16:09:25', NULL, '````', '2015-05-14', '30e10872e35ec70302c840a68f4c84c3a3812831', 'Bootstrap CSS', 'Ukraine', 'a:2:{i:0;s:8:"firsttag";i:1;s:11:"vladimir li";}', 'a:0:{}'),
(140, 0, 'OneCompany1@bigmir.net', NULL, 'Senior', 'a:3:{i:0;s:4:"Java";i:1;s:6:"JQuery";i:2;s:8:"Selenium";}', 'Intermediate', 15, NULL, '0', NULL, 0, 0, 0, 0, 0, 0, '2015-05-15', 'a:0:{}', 'Jonny', NULL, 'ROLE_AGENT', 'Jonny', NULL, 'OneCompany1', '+380938624628', 'One', '111', '2015-05-15 09:32:52', '', '111', '2015-05-15', '713a71d152f2255c336e8ed1699327f6f574b61e', 'PHP', 'Ukraine', 'a:0:{}', 'a:0:{}'),
(141, 0, 'v.dybenko@gmail.com', NULL, '', 'a:0:{}', '', 34, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '0000-00-00', 'a:0:{}', '', NULL, '', 'Volodymyr', 'Dybenko ★★★★★', 'vdybenko', '#80988357709', NULL, 'AQVzfiNcUp258KHytTaNNtcYmYnTpxMWvONG0IonrvPqfZX1J6e_cN4bgLVA0xDO1agaQF6F75_eBpNAjSUlCc4zRyiwB-kxFMfbDvGNC9ob5Iv5qxwGrh03B9R7k9yVp83cbcF5GXslyxb4saKMJrYlJBYQsFnZLzDoflLs3PWyYZWxG9o-_-linkedin', '2015-05-21 14:38:16', NULL, NULL, '0000-00-00', NULL, NULL, 'Ukraine', NULL, NULL),
(288, 0, 'nalavi124@yahoo.com', NULL, '', 'a:0:{}', '', 18, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '0000-00-00', 'a:0:{}', '', NULL, '', 'Larisa', 'Timish', 'larisa.timish', '+380950125362', NULL, 'odesk-_-9cb2ea21fe204cb0858e0d51caf9c0a9<-->3e7b5232405ad029', '2015-05-18 12:46:55', NULL, NULL, '0000-00-00', NULL, NULL, 'Ukraine', NULL, NULL),
(289, 0, 'mikhailyutkin@gmail.com', NULL, '', 'a:0:{}', '', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '0000-00-00', 'a:0:{}', '', NULL, '', 'Mikhail', 'Yutkin', 'james..keeper', '+375297688780', NULL, 'github-_-5e094eb55c7b83d2a7aa4b2289c58650a06bb389', '0000-00-00 00:00:00', NULL, NULL, '0000-00-00', NULL, NULL, 'Ukraine', NULL, NULL),
(290, 0, 'ariekdev@gmail.com', NULL, '', 'a:0:{}', '', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '0000-00-00', 'a:0:{}', '', NULL, '', 'Vitaly', 'Pestov', 'adasd', '0939860880', NULL, 'AQWnnDAMpdKcnHO-HeSl42WicPOFi4T4_TPDBVQ0smy0qYcDn98-e0dmYTDREAyToJ3EhwLErd44B_SR3AAGrLM-aT-wK7bBSt_JreZzjPv-TqU4JLT4NyUrTBOzC0jSitEVjv-mrfEQcRVkNuKETkqPNfmPzDdEO1bvjS57f1o8OnFtC60-_-linkedin', '2015-05-18 15:04:55', NULL, NULL, '0000-00-00', NULL, NULL, 'Ukraine', NULL, NULL),
(291, 0, 'm.dybenko@gmail.com', NULL, '', 'a:0:{}', '', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '0000-00-00', 'a:0:{}', '', NULL, '', 'Max', 'Dybenko', 'sfgsgf', '745945432', NULL, 'AQXIciZ-N2HIptwqAweFeEri52EhBZ5BQN6VQjyV7WCr0K1GaDI7CIO8BfYovt7m0axGGJ4C5isoH1vNajxqcQNBbLiLNeIwor126HHTqyuGe6a8CsdzZTY3eG2wd0s6OwcMeBqZNY0T3O13XYLBDVailQo6A3F6DeMFK1xbH8rrMI3nBOM-_-linkedin', '2015-05-19 05:01:13', NULL, NULL, '0000-00-00', NULL, NULL, 'Ukraine', NULL, NULL),
(292, 0, 'vd@a-og.eu', NULL, '', 'a:0:{}', '', 23, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '0000-00-00', 'a:0:{}', '', NULL, '', 'Vladimir', 'Dybenko', 'vdybenko', '380988357709', NULL, 'odesk-_-3e7b73c6f7bf5973cb7fd4e04cde3f66<-->25a65aaacdb960ad', '2015-05-18 20:24:12', NULL, NULL, '0000-00-00', NULL, NULL, 'Ukraine', NULL, NULL),
(293, 0, 'serhii.nadolinskyi@gmail.com', NULL, '', 'a:0:{}', '', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '0000-00-00', 'a:0:{}', '', NULL, '', 'Serhii', 'Nadolinsky', 'serg0x_x', '0939410791', NULL, 'AQWdgxDpdYxEO3USN3_SnYnyeh_HLNSU1CRk3dLDUrWpHVQtOBr3x37_X8W2WRNCau7FdW8bVre4BllM-z7QYxRWihxDiLcnxN8iKH3olJznkrY_V1Yf64DNB7hxgrGHNgCUfO-fpK2RYfmGGzByyuEXBQ2ma2_5J2hcMrfkF_yomh32Dm4-_-linkedin', '0000-00-00 00:00:00', NULL, NULL, '0000-00-00', NULL, NULL, 'Ukraine', NULL, NULL),
(294, 0, 'easthunch@gmail.com', NULL, '', 'a:0:{}', '', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '0000-00-00', 'a:0:{}', '', NULL, '', 'Sergey', 'Illarionov', 'dfgdfgfdg', '234234445', NULL, 'github-_-dddb52a783a16b879ee3299f9f86faa1584e2e3b', '0000-00-00 00:00:00', NULL, NULL, '0000-00-00', NULL, NULL, 'Ukraine', NULL, NULL),
(295, 0, 'patwhittal@gmail.com', NULL, '', 'a:0:{}', '', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '0000-00-00', 'a:0:{}', '', NULL, '', 'pat', 'whittal', 'maheeglobal', '00 91 91 6025 0004', NULL, 'AQUbRZnYLqM81_SL-pFb5wLLCj4MjjCviW8Mkf_U4ZhgIAhuHMsBLe-wwd1XDcYVjIeAPljzCoBPPXZUY5QbytFEXCZ9LtJIhYSLQUiVJtx9tNCpwVuRbIdOH_HAqoK3o-73adDhKdz5mS6-vfD2nh753iuJ7z0-qD8W7gVEeST3NNCMIUU-_-linkedin', '2015-05-19 10:53:27', NULL, NULL, '0000-00-00', NULL, NULL, 'Ukraine', NULL, NULL),
(296, 0, 'andrei.lavrenyuk@gmail.com', NULL, '', 'a:0:{}', '', 19, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '0000-00-00', 'a:0:{}', '', NULL, '', 'Andrei', 'Lavrenyuk', 'andrei.lavrenyuk', '+380934222047', NULL, 'linkedin-_-AQV58lFGEgGSK0ap4UUNtbvV7I4MQkX999pIvNy2rDtyvnwd_A_lMH85Sg3xYoF5u-sCJPXTH4Khv8KKk4C_MR_9eikKnEv520eXunx_LR5KnyWkdl0OMBEG_IXxi4g7zOPlGAkshoXZ6lsI0YH8eEgJid8nsFlxRr_TnzJLCUhKbX6q2_Q', '2015-05-19 22:02:49', NULL, NULL, '0000-00-00', NULL, NULL, 'Ukraine', NULL, NULL),
(297, 0, 'v.d.yb.enko@gmail.com', NULL, '', 'a:0:{}', '', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '0000-00-00', 'a:0:{}', '', NULL, '', 'Volodymyr', 'Dybenko', 'vdybenko', '0988357709', NULL, 'linkedin-_-AQWeFbcbpm1Ss3LdllPwVLwU0X4s6tMaGPdnAbcZrmwbN18Z8YbyOQoM10WLBze7ZAIqQDWEPrQouVvqnFbNIuTa7Yq8AakG9efM0Zzr80NH1yQVzUTUwXtOluuuoZcnOWiNZKhraq1WG3-WVVdq8srRkdzQpSxdizMYrJuDmYGZc9JmL5E', '0000-00-00 00:00:00', NULL, NULL, '0000-00-00', NULL, NULL, 'Ukraine', NULL, NULL),
(298, 0, 'valik.dev@gmail.com', NULL, '', 'a:0:{}', '', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '0000-00-00', 'a:0:{}', '', NULL, '', 'Валентин', 'Коваленко', 'valik.dev', '+380000000000', NULL, 'AQX4l-a06uVEL5um9T5j6vBx7upbZrPcJchtzXiiHkWwyeZj7VCic-VMKrcr3j5qMf1qFqiVku49tLow_RtQsxPS_CfHflm0qNCNTKnvuwxgzNUa5Ktt7DXnMetB-9ouX3pxItR8OumLG82OlMH5GiiMUuYF29COROc_hYCDrIoiF7EmWdE-_-linkedin', '0000-00-00 00:00:00', NULL, NULL, '0000-00-00', NULL, NULL, 'Ukraine', NULL, NULL),
(299, 0, '2ys.pro@gmail.com', NULL, '', 'a:0:{}', '', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '0000-00-00', 'a:0:{}', '', NULL, '', 'Sergey', 'Lipchik', 'web-nrj', '+375297760637', NULL, 'AQUli7e0CLH2M1gIq6bv6JPSUzCU66bq-RI9-2iq-JHG3QO37d1yMnxxf5RluKL8RtPesPg-PJVaHxlPcEvFc8SsihunQiTN0CV0iXJT1oJZqpGWqU58aA_0eAACcM-kAUN3An_PQnh_zbiH45XTCfy4PnddNDUWXX6sdngPj3fSIdddFb0-_-linkedin', '0000-00-00 00:00:00', NULL, NULL, '0000-00-00', NULL, NULL, 'Ukraine', NULL, NULL),
(300, 0, 'olga.vorochek@antarasoft.com', NULL, '', 'a:0:{}', '', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '0000-00-00', 'a:0:{}', '', NULL, '', 'Olga', 'Vorochek', 'olga.vorochek', '0666326304', NULL, '71f23edc01a005603ea572ed28d89169<-->e023b8d1e1559d1f-_-odesk', '0000-00-00 00:00:00', NULL, NULL, '0000-00-00', NULL, NULL, 'Ukraine', NULL, NULL),
(301, 0, 'expertum.ave@gmail.com', NULL, '', 'a:0:{}', '', 20, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '0000-00-00', 'a:0:{}', '', NULL, '', 'artem', 'strilets', 'allmdying', '+380991253215', NULL, 'github-_-0f8f4a9265a250c149be6b60261cf324267e7d73', '2015-05-22 08:00:00', NULL, NULL, '0000-00-00', NULL, NULL, 'Ukraine', NULL, NULL),
(302, 0, 'marynckast@gmail.com', NULL, '', 'a:0:{}', '', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '0000-00-00', 'a:0:{}', '', NULL, '', 'Maryna', 'Stavnycha', 'tseslic', '0633934390', NULL, 'AQUk7uuHREJPfxN-_lN-P6KAGYnRq7SVuMw2rZuUrsZj4Xa1V3E_pWs1pYfUhPlya9I3UZ_7k2w8Qn4xUlzLwUaMLCdR27ZjI5A9_fWmpXZwksOrz9zKfPfCpoKB6IQnhwySI7u5ho4FCRu0t0azjOSjUufPXsv_aEBZqrjrTlphCdVSc2s-_-linkedin', '0000-00-00 00:00:00', NULL, NULL, '0000-00-00', NULL, NULL, 'Ukraine', NULL, NULL),
(303, 0, 'tepalenko+test17@gmail.com', 'Frontend', 'Junior', 'a:1:{i:0;s:9:"AngularJS";}', 'Basic', 40, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '2015-05-25', 'a:0:{}', 'Dima3-Test', '9766a171f876a98d881d4dd83c6087f3421fec2d', 'ROLE_FREELANCER', 'Dima3', 'Test', NULL, NULL, NULL, NULL, '2015-05-25 14:26:15', NULL, NULL, '2015-05-25', NULL, 'ASP.NET MVC', 'Russia', 'a:0:{}', 'a:1:{s:6:"github";s:8:"11111111";}');

-- --------------------------------------------------------

--
-- Структура таблицы `skills`
--

CREATE TABLE IF NOT EXISTS `skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `skill` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=174 ;

--
-- Дамп данных таблицы `skills`
--

INSERT INTO `skills` (`id`, `skill`) VALUES
(1, 'Ajax'),
(2, 'Android'),
(3, 'AngularJS'),
(4, 'API'),
(5, 'ASP.NET'),
(6, 'ASP.NET MVC'),
(7, 'Backbone.js'),
(8, 'C'),
(9, 'C#'),
(10, 'C++'),
(11, 'CakePHP'),
(12, 'Clojure'),
(13, 'CMS'),
(14, 'Cocoa'),
(15, 'CoffeeScript'),
(16, 'Delphi'),
(17, 'DevOps'),
(18, 'Django'),
(19, 'Dojo'),
(20, 'Drupal'),
(21, 'Erlang'),
(22, 'ERP'),
(23, 'Express.js'),
(24, 'Ext JS'),
(25, 'F#'),
(26, 'Flash'),
(27, 'Front-end'),
(28, 'Game Development'),
(29, 'GIS'),
(30, 'Grails'),
(31, 'Groovy'),
(32, 'Hadoop'),
(33, 'Haskell'),
(34, 'Hibernate'),
(35, 'HTML5'),
(36, 'iOS'),
(37, 'Java'),
(38, 'Java EE'),
(39, 'JavaScript'),
(40, 'jQuery'),
(41, 'LAMP'),
(42, 'LMS'),
(43, 'Machine Learning'),
(44, 'Magento'),
(45, 'MATLAB'),
(46, 'Microsoft'),
(47, 'Mobile'),
(48, 'MSSQL'),
(49, 'MySQL'),
(50, '.NET'),
(51, 'Node.js'),
(52, 'Objective-C'),
(53, 'OCaml'),
(54, 'OpenGL'),
(55, 'Perl'),
(56, 'PHP'),
(57, 'POS'),
(58, 'PostgreSQL'),
(59, 'PyObjc'),
(60, 'PyQT'),
(61, 'Python'),
(62, 'Ruby'),
(63, 'Ruby on Rails'),
(64, 'SalesForce'),
(65, 'Scala'),
(66, 'Sharepoint'),
(67, 'Silverlight'),
(68, 'Socket.IO'),
(69, 'Spring'),
(70, 'SQL'),
(71, 'Struts'),
(72, 'Symfony'),
(73, 'Sys Admin'),
(74, 'System Security'),
(75, 'Twitter Bootstrap'),
(76, 'UI'),
(77, 'Unity'),
(78, 'Unity3D'),
(79, 'VB.NET'),
(80, 'Visual Studio'),
(81, 'Web'),
(82, 'Windows'),
(83, 'WordPress'),
(84, 'WPF'),
(85, 'Xamarin'),
(86, 'Xcode'),
(87, 'Yii'),
(88, 'Zend'),
(89, 'GIT'),
(90, 'CSS'),
(91, 'Joomla'),
(92, 'HAML'),
(93, 'Sass'),
(94, 'MongoDB'),
(95, 'Redis'),
(96, 'Cucumber'),
(97, 'Nginx'),
(98, 'CodeIgniter'),
(99, 'CSS3'),
(100, 'Cocos2d'),
(101, 'Eclipse'),
(102, 'JSON'),
(103, 'SQLite'),
(104, 'xCodeb'),
(105, 'CoreData'),
(106, 'ActionScript'),
(107, 'XML'),
(108, 'Meteor'),
(109, 'less'),
(110, 'OPENCART'),
(111, 'MODX'),
(112, 'Java ME'),
(113, 'J2EE'),
(114, 'Flex'),
(115, 'Oracle'),
(116, 'jBoss'),
(117, 'TomCat'),
(118, 'Firebird'),
(119, 'SVN'),
(120, 'Azure'),
(121, 'KnockoutJS'),
(122, 'MVVMCross'),
(123, 'TypeScript'),
(124, 'RequireJS'),
(125, 'Amazon'),
(126, 'Titanium'),
(127, 'Marmalade'),
(128, 'Swift'),
(129, 'iBeacons'),
(130, 'Servlets'),
(131, 'J2ME'),
(132, 'SCRUM'),
(133, 'XSLT'),
(134, 'Assembler'),
(135, 'Sinatra'),
(136, 'CofeeScript'),
(137, 'Kohana'),
(138, 'Laravel'),
(139, 'Akelos'),
(140, 'Tornado'),
(141, 'PrestaShop'),
(142, 'Corona SDK'),
(143, 'Alfresco'),
(144, 'Linux'),
(145, 'Debian'),
(146, 'Apache'),
(147, 'CORBA'),
(148, 'Parse'),
(149, 'SOAP'),
(150, 'jenkins'),
(151, 'mail'),
(152, 'asterisk'),
(153, 'vmware'),
(154, 'cloud'),
(155, 'load balancing'),
(156, 'DNS'),
(157, 'Sugar Crm'),
(158, 'Smarty'),
(159, 'XHTML'),
(160, 'Slicing'),
(161, 'Bootstrap CSS'),
(162, 'JAVA, Linux, Tomcat DB'),
(163, 'backend'),
(164, 'leveldb'),
(165, 'Cisco'),
(166, 'Zabbix'),
(167, 'gui'),
(168, 'doctrine 2'),
(169, 'Memcache'),
(170, 'QA'),
(171, 'testing'),
(172, 'web design'),
(173, 'EJB 3');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
