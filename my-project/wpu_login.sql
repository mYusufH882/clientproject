-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Apr 2020 pada 15.58
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu_login`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `event_ak`
--

CREATE TABLE `event_ak` (
  `id` int(11) NOT NULL,
  `boardgame` varchar(128) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(128) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `event_ak`
--

INSERT INTO `event_ak` (`id`, `boardgame`, `tanggal`, `tempat`, `status`) VALUES
(1, 'Nulla Facilisi Sed Ltd', '2019-09-04', 'Indonesia', 0),
(2, 'Ac Turpis Ltd', '2020-03-08', 'Indonesia', 1),
(3, 'Magna Incorporated', '2019-08-13', 'Indonesia', 0),
(4, 'Proin Vel Incorporated', '2019-07-30', 'Indonesia', 0),
(5, 'Sit Amet LLC', '2020-06-28', 'Indonesia', 0),
(6, 'Dictum Inc.', '2019-05-16', 'Indonesia', 1),
(7, 'Arcu Vestibulum Company', '2020-05-25', 'Indonesia', 0),
(8, 'Mauris Erat Ltd', '2021-03-20', 'Indonesia', 0),
(9, 'Quam Quis Limited', '2020-04-15', 'Indonesia', 1),
(10, 'Netus Et Malesuada Consulting', '2019-10-30', 'Indonesia', 1),
(11, 'Tristique Pellentesque Tellus Company', '2019-06-01', 'Indonesia', 0),
(12, 'Amet Ornare Institute', '2020-11-12', 'Indonesia', 1),
(13, 'Sed Eget Lacus Limited', '2020-03-27', 'Indonesia', 1),
(14, 'Faucibus Orci Luctus Consulting', '2019-06-10', 'Indonesia', 1),
(15, 'Ut Limited', '2020-03-08', 'Indonesia', 1),
(16, 'Non Luctus Sit Institute', '2019-07-22', 'Indonesia', 0),
(17, 'Sagittis Semper Corporation', '2020-04-05', 'Indonesia', 0),
(18, 'Ut Nec Company', '2020-05-01', 'Indonesia', 1),
(19, 'Egestas Incorporated', '2021-04-07', 'Indonesia', 0),
(20, 'Neque Consulting', '2020-06-28', 'Indonesia', 1),
(21, 'Mauris LLP', '2019-11-16', 'Indonesia', 1),
(22, 'Amet Inc.', '2020-05-04', 'Indonesia', 1),
(23, 'Ac Tellus Associates', '2019-05-29', 'Indonesia', 1),
(24, 'Semper Tellus Incorporated', '2019-12-16', 'Indonesia', 0),
(25, 'Libero Nec Inc.', '2020-01-01', 'Indonesia', 0),
(26, 'Egestas Hendrerit Neque Industries', '2020-12-15', 'Indonesia', 1),
(27, 'At Nisi Institute', '2019-09-26', 'Indonesia', 0),
(28, 'Odio Company', '2019-09-02', 'Indonesia', 1),
(29, 'Vel Institute', '2019-07-03', 'Indonesia', 0),
(30, 'Vitae Company', '2019-08-30', 'Indonesia', 0),
(31, 'Mauris Associates', '2020-05-06', 'Indonesia', 1),
(32, 'Tristique Ac Ltd', '2020-03-29', 'Indonesia', 1),
(33, 'Amet Lorem Ltd', '2019-09-24', 'Indonesia', 0),
(34, 'Pellentesque Eget Dictum Corp.', '2020-08-06', 'Indonesia', 1),
(35, 'Duis A Mi LLC', '2020-09-26', 'Indonesia', 1),
(36, 'Gravida Nunc Industries', '2020-12-02', 'Indonesia', 1),
(37, 'Urna Justo Foundation', '2021-01-27', 'Indonesia', 1),
(38, 'Sapien Nunc Associates', '2020-11-21', 'Indonesia', 0),
(39, 'In Limited', '2019-12-05', 'Indonesia', 0),
(40, 'Molestie Dapibus Ligula Corp.', '2019-05-01', 'Indonesia', 0),
(41, 'Cubilia Associates', '2020-09-06', 'Indonesia', 0),
(42, 'Turpis Associates', '2020-11-01', 'Indonesia', 1),
(43, 'Leo Elementum Sem Consulting', '2020-04-01', 'Indonesia', 0),
(44, 'Molestie Company', '2020-04-09', 'Indonesia', 0),
(45, 'Nisl Arcu Industries', '2021-01-19', 'Indonesia', 0),
(46, 'Enim Industries', '2020-07-06', 'Indonesia', 1),
(47, 'Augue Associates', '2021-04-14', 'Indonesia', 1),
(48, 'Eleifend Egestas Sed Associates', '2019-11-11', 'Indonesia', 0),
(49, 'Augue Ut Consulting', '2020-11-07', 'Indonesia', 0),
(50, 'Proin Limited', '2019-08-23', 'Indonesia', 1),
(51, 'Non Lobortis Incorporated', '2019-11-15', 'Indonesia', 0),
(52, 'Tempus Non LLC', '2020-05-06', 'Indonesia', 0),
(53, 'Hendrerit Consectetuer Ltd', '2021-01-22', 'Indonesia', 1),
(54, 'Felis Consulting', '2020-04-26', 'Indonesia', 1),
(55, 'Quisque Porttitor Eros LLC', '2021-02-27', 'Indonesia', 1),
(56, 'Consectetuer Adipiscing Elit LLP', '2019-09-12', 'Indonesia', 0),
(57, 'Ligula Industries', '2020-12-15', 'Indonesia', 1),
(58, 'Ante Nunc Institute', '2020-07-24', 'Indonesia', 0),
(59, 'Convallis Corporation', '2019-06-23', 'Indonesia', 1),
(60, 'Non Dapibus Rutrum LLC', '2019-07-24', 'Indonesia', 1),
(61, 'Risus LLC', '2020-04-09', 'Indonesia', 0),
(62, 'In Hendrerit PC', '2019-10-21', 'Indonesia', 1),
(63, 'Aliquet Molestie LLC', '2020-01-16', 'Indonesia', 1),
(64, 'Vivamus Sit Foundation', '2020-03-08', 'Indonesia', 0),
(65, 'Mi Limited', '2019-09-21', 'Indonesia', 0),
(66, 'Non Arcu Consulting', '2020-06-26', 'Indonesia', 0),
(67, 'Nunc Ut Inc.', '2019-06-04', 'Indonesia', 0),
(68, 'Quis Limited', '2020-12-10', 'Indonesia', 1),
(69, 'Quam Pellentesque Habitant Consulting', '2020-12-15', 'Indonesia', 1),
(70, 'Urna Nunc Quis Incorporated', '2020-03-03', 'Indonesia', 1),
(71, 'Morbi Tristique Institute', '2019-12-03', 'Indonesia', 1),
(72, 'Libero Nec Incorporated', '2020-10-02', 'Indonesia', 1),
(73, 'Scelerisque Neque Nullam Company', '2021-02-05', 'Indonesia', 0),
(74, 'Nunc Sed Libero PC', '2019-04-26', 'Indonesia', 1),
(75, 'Sit Amet Ante Company', '2021-02-07', 'Indonesia', 1),
(76, 'Mauris Sapien Cursus Institute', '2020-07-02', 'Indonesia', 0),
(77, 'Semper Associates', '2020-09-07', 'Indonesia', 1),
(78, 'Vel Lectus Institute', '2019-04-22', 'Indonesia', 0),
(79, 'Per PC', '2019-09-02', 'Indonesia', 0),
(80, 'Ornare LLP', '2019-08-13', 'Indonesia', 1),
(81, 'Fermentum Arcu Foundation', '2020-08-15', 'Indonesia', 0),
(82, 'Dapibus Institute', '2019-08-13', 'Indonesia', 1),
(83, 'Morbi Industries', '2020-03-10', 'Indonesia', 0),
(84, 'Odio Etiam Ligula Associates', '2020-08-12', 'Indonesia', 0),
(85, 'Torquent Per Corp.', '2020-12-09', 'Indonesia', 0),
(86, 'Commodo Company', '2019-12-29', 'Indonesia', 0),
(87, 'Et Arcu Imperdiet LLC', '2019-06-10', 'Indonesia', 0),
(88, 'Dictum Corporation', '2020-12-04', 'Indonesia', 1),
(89, 'Fringilla Est Limited', '2019-04-28', 'Indonesia', 0),
(90, 'Imperdiet Dictum Corp.', '2019-11-10', 'Indonesia', 1),
(91, 'Dapibus Ligula Corporation', '2021-03-23', 'Indonesia', 1),
(92, 'Semper Company', '2020-10-10', 'Indonesia', 1),
(93, 'Vivamus Corp.', '2020-12-29', 'Indonesia', 1),
(94, 'At Augue Foundation', '2019-12-11', 'Indonesia', 1),
(95, 'Ligula Institute', '2019-06-11', 'Indonesia', 0),
(96, 'Consectetuer Adipiscing LLC', '2019-11-01', 'Indonesia', 0),
(97, 'Egestas A Foundation', '2020-10-22', 'Indonesia', 0),
(98, 'Pellentesque Ut Ipsum Institute', '2020-03-14', 'Indonesia', 1),
(99, 'Consectetuer Mauris Institute', '2019-09-07', 'Indonesia', 0),
(100, 'Mi Associates', '2019-08-03', 'Indonesia', 0),
(101, 'Mollis Institute', '2021-04-04', 'Indonesia', 1),
(102, 'A Malesuada Id Institute', '2020-08-05', 'Indonesia', 0),
(103, 'Tincidunt Congue Turpis Institute', '2019-08-10', 'Indonesia', 0),
(104, 'Tempor Bibendum Inc.', '2020-01-21', 'Indonesia', 0),
(105, 'Eu Nulla At Foundation', '2019-12-08', 'Indonesia', 1),
(106, 'Turpis Non Enim Corporation', '2020-10-03', 'Indonesia', 1),
(107, 'Placerat Velit Quisque PC', '2020-01-11', 'Indonesia', 1),
(108, 'Urna Et Arcu Limited', '2019-05-18', 'Indonesia', 1),
(109, 'Lacus Aliquam Inc.', '2019-08-18', 'Indonesia', 1),
(110, 'Magna Duis Dignissim Incorporated', '2019-05-27', 'Indonesia', 1),
(111, 'Maecenas Incorporated', '2020-03-18', 'Indonesia', 0),
(112, 'Purus Duis Consulting', '2020-09-17', 'Indonesia', 0),
(113, 'Non Cursus Non Company', '2019-08-10', 'Indonesia', 0),
(114, 'Donec Industries', '2021-01-23', 'Indonesia', 0),
(115, 'Tempus Non Corporation', '2020-10-21', 'Indonesia', 1),
(116, 'Facilisis PC', '2020-07-28', 'Indonesia', 0),
(117, 'Pharetra Nam Institute', '2020-01-09', 'Indonesia', 0),
(118, 'Et Rutrum Ltd', '2020-02-13', 'Indonesia', 0),
(119, 'Ullamcorper Eu Ltd', '2019-04-20', 'Indonesia', 0),
(120, 'Feugiat Placerat Velit Ltd', '2021-01-16', 'Indonesia', 1),
(121, 'Risus LLP', '2019-05-24', 'Indonesia', 0),
(122, 'Lorem Ltd', '2020-05-08', 'Indonesia', 1),
(123, 'Adipiscing Elit Aliquam Associates', '2020-05-05', 'Indonesia', 1),
(124, 'Ornare Foundation', '2019-06-04', 'Indonesia', 1),
(125, 'Metus Aliquam Institute', '2019-06-20', 'Indonesia', 1),
(126, 'Donec Tincidunt Donec Industries', '2020-11-02', 'Indonesia', 1),
(127, 'Elit Erat Vitae Corp.', '2019-10-09', 'Indonesia', 1),
(128, 'Feugiat Corporation', '2021-01-17', 'Indonesia', 1),
(129, 'Blandit Limited', '2019-04-24', 'Indonesia', 1),
(130, 'Pretium Aliquet Metus LLC', '2019-12-18', 'Indonesia', 0),
(131, 'Enim Non Corp.', '2020-07-05', 'Indonesia', 1),
(132, 'Tempor Bibendum Donec Associates', '2020-02-16', 'Indonesia', 1),
(133, 'Ut Pharetra Company', '2020-05-14', 'Indonesia', 0),
(134, 'Nulla Cras Associates', '2020-12-08', 'Indonesia', 0),
(135, 'Mus Associates', '2019-07-07', 'Indonesia', 1),
(136, 'Volutpat Nulla Dignissim Incorporated', '2019-11-25', 'Indonesia', 0),
(137, 'Et Netus LLC', '2019-08-22', 'Indonesia', 1),
(138, 'Eget Corporation', '2019-11-08', 'Indonesia', 0),
(139, 'Enim Nisl Elementum Industries', '2020-12-21', 'Indonesia', 0),
(140, 'Pede Incorporated', '2020-12-01', 'Indonesia', 1),
(141, 'Vel Est Ltd', '2019-11-14', 'Indonesia', 1),
(142, 'A Limited', '2020-02-18', 'Indonesia', 0),
(143, 'Urna Nec Luctus Foundation', '2020-03-09', 'Indonesia', 0),
(144, 'Non Corp.', '2020-10-27', 'Indonesia', 1),
(145, 'Eros Nec Institute', '2020-12-14', 'Indonesia', 0),
(146, 'Ullamcorper Duis Cursus PC', '2019-07-05', 'Indonesia', 1),
(147, 'Metus Facilisis Industries', '2021-04-01', 'Indonesia', 1),
(148, 'Integer In Magna Corp.', '2021-02-19', 'Indonesia', 1),
(149, 'Enim Etiam Corporation', '2020-09-22', 'Indonesia', 0),
(150, 'Nec Urna Suscipit Associates', '2019-12-29', 'Indonesia', 0),
(151, 'Tempor Est Ac Ltd', '2021-04-10', 'Indonesia', 0),
(152, 'Vivamus Nibh Dolor Institute', '2019-08-28', 'Indonesia', 1),
(153, 'Velit In Aliquet Industries', '2020-03-26', 'Indonesia', 1),
(154, 'Ac Nulla Ltd', '2020-04-25', 'Indonesia', 0),
(155, 'Vel Institute', '2021-03-07', 'Indonesia', 1),
(156, 'Mauris Inc.', '2020-09-18', 'Indonesia', 0),
(157, 'Felis Ltd', '2019-08-26', 'Indonesia', 0),
(158, 'Leo Limited', '2020-06-09', 'Indonesia', 0),
(159, 'Per Conubia Corporation', '2021-01-23', 'Indonesia', 0),
(160, 'Mattis Velit Consulting', '2019-06-20', 'Indonesia', 1),
(161, 'Non Enim Incorporated', '2020-06-12', 'Indonesia', 1),
(162, 'Vel Convallis In Ltd', '2020-09-30', 'Indonesia', 1),
(163, 'Ipsum Inc.', '2020-06-10', 'Indonesia', 0),
(164, 'Eu Metus In PC', '2019-11-07', 'Indonesia', 0),
(165, 'Et Arcu Imperdiet Foundation', '2020-09-13', 'Indonesia', 0),
(166, 'At Arcu Vestibulum Inc.', '2020-06-27', 'Indonesia', 1),
(167, 'Nunc Foundation', '2019-11-09', 'Indonesia', 1),
(168, 'Sem Corporation', '2020-09-08', 'Indonesia', 0),
(169, 'Nunc Ullamcorper Eu Company', '2019-12-06', 'Indonesia', 1),
(170, 'Quam Company', '2019-06-22', 'Indonesia', 0),
(171, 'Pellentesque Ultricies Incorporated', '2020-11-24', 'Indonesia', 0),
(172, 'Arcu Imperdiet Ullamcorper Associates', '2020-09-25', 'Indonesia', 1),
(173, 'Auctor Non Inc.', '2021-03-11', 'Indonesia', 1),
(174, 'In Lorem Donec Inc.', '2021-03-31', 'Indonesia', 1),
(175, 'In Incorporated', '2019-06-22', 'Indonesia', 0),
(176, 'Sed LLP', '2019-11-13', 'Indonesia', 1),
(177, 'Cras Foundation', '2019-11-19', 'Indonesia', 1),
(178, 'Id Ltd', '2020-12-07', 'Indonesia', 1),
(179, 'Lectus Justo Eu Ltd', '2021-02-21', 'Indonesia', 1),
(180, 'Feugiat Placerat Velit Consulting', '2020-11-19', 'Indonesia', 0),
(181, 'Congue Turpis In PC', '2020-12-21', 'Indonesia', 1),
(182, 'Montes LLC', '2019-08-23', 'Indonesia', 0),
(183, 'Semper Nam Ltd', '2020-04-15', 'Indonesia', 0),
(184, 'Mauris LLC', '2020-11-02', 'Indonesia', 0),
(185, 'Faucibus Associates', '2019-09-18', 'Indonesia', 0),
(186, 'Magna A Inc.', '2019-10-08', 'Indonesia', 0),
(187, 'Mollis Nec Cursus Inc.', '2019-10-09', 'Indonesia', 1),
(188, 'Luctus Foundation', '2019-09-09', 'Indonesia', 1),
(189, 'Cras LLP', '2020-06-10', 'Indonesia', 0),
(190, 'Dolor Elit Incorporated', '2021-02-28', 'Indonesia', 1),
(191, 'Duis Consulting', '2020-09-22', 'Indonesia', 0),
(192, 'Quam Pellentesque Incorporated', '2019-09-11', 'Indonesia', 0),
(193, 'Metus Limited', '2020-09-23', 'Indonesia', 0),
(194, 'Proin Nisl Corp.', '2020-04-21', 'Indonesia', 1),
(195, 'Felis Ullamcorper Viverra Company', '2020-05-27', 'Indonesia', 0),
(196, 'Dolor Donec Fringilla Associates', '2019-07-26', 'Indonesia', 0),
(197, 'Eleifend Incorporated', '2020-01-14', 'Indonesia', 1),
(198, 'Metus Incorporated', '2020-08-28', 'Indonesia', 0),
(199, 'Aliquam Consulting', '2019-09-28', 'Indonesia', 1),
(200, 'Eu Tellus Eu Limited', '2020-03-21', 'Indonesia', 1),
(201, 'Bibendum Donec Foundation', '2020-09-12', 'Indonesia', 0),
(202, 'Non Arcu Vivamus Consulting', '2020-04-28', 'Indonesia', 1),
(203, 'Amet Limited', '2020-06-29', 'Indonesia', 0),
(204, 'Lacus Quisque Imperdiet PC', '2020-12-21', 'Indonesia', 1),
(205, 'Augue Sed Inc.', '2019-08-17', 'Indonesia', 0),
(206, 'Dis Parturient Foundation', '2021-03-03', 'Indonesia', 1),
(207, 'Justo Eu Arcu Industries', '2020-12-21', 'Indonesia', 1),
(208, 'Nulla Integer Incorporated', '2019-12-26', 'Indonesia', 1),
(209, 'Quisque Company', '2020-05-05', 'Indonesia', 1),
(210, 'Varius Institute', '2020-05-20', 'Indonesia', 0),
(211, 'Interdum Company', '2021-02-12', 'Indonesia', 0),
(212, 'Ligula Consulting', '2019-05-19', 'Indonesia', 0),
(213, 'Nibh Quisque Institute', '2020-04-28', 'Indonesia', 0),
(214, 'Adipiscing Enim Incorporated', '2019-06-27', 'Indonesia', 1),
(215, 'Arcu Vivamus Corporation', '2021-01-01', 'Indonesia', 1),
(216, 'Tellus Phasellus Elit Incorporated', '2019-06-07', 'Indonesia', 1),
(217, 'Risus Incorporated', '2020-04-04', 'Indonesia', 0),
(218, 'Ut Nulla Cras LLP', '2020-07-20', 'Indonesia', 0),
(219, 'Non Dapibus Inc.', '2019-08-15', 'Indonesia', 1),
(220, 'Auctor Mauris Corp.', '2019-12-07', 'Indonesia', 0),
(221, 'Ut Pharetra Ltd', '2020-08-15', 'Indonesia', 1),
(222, 'Aliquet Diam Sed Ltd', '2020-06-05', 'Indonesia', 1),
(223, 'Tristique Company', '2020-07-03', 'Indonesia', 1),
(224, 'Eleifend Cras Sed Foundation', '2019-06-22', 'Indonesia', 1),
(225, 'Elementum Corporation', '2020-02-11', 'Indonesia', 0),
(226, 'Ac Fermentum PC', '2020-11-22', 'Indonesia', 0),
(227, 'Urna Nec Luctus LLC', '2020-10-19', 'Indonesia', 1),
(228, 'Urna Ut Incorporated', '2020-12-10', 'Indonesia', 0),
(229, 'Fusce Aliquam Enim Industries', '2019-12-15', 'Indonesia', 1),
(230, 'Dolor Quam Elementum LLC', '2021-01-20', 'Indonesia', 1),
(231, 'Malesuada Ut LLP', '2020-09-12', 'Indonesia', 1),
(232, 'Amet Nulla Donec Industries', '2019-08-20', 'Indonesia', 1),
(233, 'Sociis Natoque Penatibus Associates', '2019-12-09', 'Indonesia', 0),
(234, 'Mauris Ut Mi PC', '2020-09-09', 'Indonesia', 0),
(235, 'Pede Cum Limited', '2019-07-05', 'Indonesia', 1),
(236, 'Aenean Limited', '2021-01-26', 'Indonesia', 0),
(237, 'Congue A Aliquet Consulting', '2020-08-27', 'Indonesia', 0),
(238, 'Tempor Bibendum Donec Corporation', '2020-02-18', 'Indonesia', 0),
(239, 'Fringilla Purus Foundation', '2019-08-06', 'Indonesia', 1),
(240, 'Imperdiet LLP', '2021-02-11', 'Indonesia', 0),
(241, 'Curae Phasellus Inc.', '2020-03-24', 'Indonesia', 1),
(242, 'Integer Aliquam Associates', '2019-10-05', 'Indonesia', 1),
(243, 'Orci Tincidunt Limited', '2021-01-04', 'Indonesia', 1),
(244, 'Aliquet Inc.', '2019-09-29', 'Indonesia', 1),
(245, 'Sit Amet Company', '2019-07-09', 'Indonesia', 0),
(246, 'Non Luctus Sit Institute', '2019-06-10', 'Indonesia', 0),
(247, 'Vestibulum Massa Associates', '2021-03-18', 'Indonesia', 1),
(248, 'Sed Orci Lobortis Inc.', '2019-06-09', 'Indonesia', 1),
(249, 'Ornare Placerat Orci LLC', '2020-01-08', 'Indonesia', 0),
(250, 'Quam Pellentesque Habitant Associates', '2020-06-01', 'Indonesia', 0),
(251, 'Vehicula Et Limited', '2019-09-05', 'Indonesia', 1),
(252, 'Nec Company', '2021-01-28', 'Indonesia', 1),
(253, 'In Consequat Enim Industries', '2020-07-14', 'Indonesia', 0),
(254, 'Sem Semper Foundation', '2021-03-12', 'Indonesia', 1),
(255, 'Massa Mauris Vestibulum Ltd', '2021-01-17', 'Indonesia', 0),
(256, 'Elementum PC', '2019-09-07', 'Indonesia', 0),
(257, 'Turpis Associates', '2019-12-29', 'Indonesia', 1),
(258, 'Praesent Eu Dui Consulting', '2021-02-10', 'Indonesia', 0),
(259, 'Sapien Foundation', '2019-11-09', 'Indonesia', 0),
(260, 'Est PC', '2020-07-25', 'Indonesia', 0),
(261, 'Mauris Sit Amet Industries', '2019-04-28', 'Indonesia', 0),
(262, 'Aliquam Fringilla Cursus Foundation', '2020-06-14', 'Indonesia', 1),
(263, 'Elit Fermentum Risus Incorporated', '2020-06-04', 'Indonesia', 1),
(264, 'Augue Company', '2020-07-11', 'Indonesia', 1),
(265, 'Lorem PC', '2019-09-10', 'Indonesia', 0),
(266, 'Ligula Consectetuer Corporation', '2020-10-14', 'Indonesia', 1),
(267, 'Egestas Rhoncus Incorporated', '2020-07-09', 'Indonesia', 1),
(268, 'Est Mauris Rhoncus Incorporated', '2019-09-16', 'Indonesia', 0),
(269, 'Amet Ultricies Industries', '2020-05-01', 'Indonesia', 1),
(270, 'Aenean Eget LLP', '2019-10-10', 'Indonesia', 1),
(271, 'Semper Auctor Incorporated', '2020-08-29', 'Indonesia', 1),
(272, 'Iaculis Enim Sit Foundation', '2020-04-15', 'Indonesia', 1),
(273, 'At Risus Consulting', '2021-01-06', 'Indonesia', 0),
(274, 'Nec Diam Duis Associates', '2020-03-02', 'Indonesia', 0),
(275, 'A Nunc Corp.', '2020-05-30', 'Indonesia', 0),
(276, 'Senectus Institute', '2019-12-24', 'Indonesia', 0),
(277, 'Consequat Nec Corporation', '2019-10-14', 'Indonesia', 0),
(278, 'Placerat Augue Sed Ltd', '2019-10-01', 'Indonesia', 1),
(279, 'Diam Eu Incorporated', '2021-03-25', 'Indonesia', 0),
(280, 'Sagittis Duis Gravida Institute', '2021-04-05', 'Indonesia', 1),
(281, 'Rhoncus PC', '2020-01-27', 'Indonesia', 0),
(282, 'Nisi Aenean Associates', '2019-10-21', 'Indonesia', 1),
(283, 'Dis Parturient Corporation', '2019-10-21', 'Indonesia', 0),
(284, 'Ullamcorper Nisl Arcu Institute', '2019-06-23', 'Indonesia', 0),
(285, 'Eget Institute', '2020-04-27', 'Indonesia', 0),
(286, 'Senectus Et Corp.', '2020-07-03', 'Indonesia', 1),
(287, 'Accumsan Neque Et Industries', '2020-08-13', 'Indonesia', 0),
(288, 'Bibendum Fermentum Metus PC', '2019-09-22', 'Indonesia', 0),
(289, 'Molestie Inc.', '2020-09-01', 'Indonesia', 1),
(290, 'Est Mauris Institute', '2020-12-25', 'Indonesia', 0),
(291, 'Nunc In Incorporated', '2020-06-30', 'Indonesia', 0),
(292, 'Nunc In Associates', '2020-08-01', 'Indonesia', 1),
(293, 'Suspendisse Dui Corporation', '2019-06-20', 'Indonesia', 1),
(294, 'Massa Suspendisse Ltd', '2020-07-04', 'Indonesia', 1),
(295, 'Lorem Eget Mollis Consulting', '2021-04-03', 'Indonesia', 0),
(296, 'Elementum Company', '2019-07-27', 'Indonesia', 0),
(297, 'Mi LLC', '2020-04-09', 'Indonesia', 1),
(298, 'Integer Associates', '2019-11-27', 'Indonesia', 1),
(299, 'Donec Nibh Limited', '2020-07-13', 'Indonesia', 0),
(300, 'Eu Eros Industries', '2020-11-13', 'Indonesia', 0),
(301, 'Sollicitudin Orci Sem Institute', '2021-01-03', 'Indonesia', 1),
(302, 'Consequat Consulting', '2020-10-14', 'Indonesia', 1),
(303, 'Erat Eget LLC', '2021-04-03', 'Indonesia', 0),
(304, 'Cursus Luctus LLC', '2019-08-26', 'Indonesia', 1),
(305, 'Non Incorporated', '2020-07-21', 'Indonesia', 0),
(306, 'Maecenas Iaculis Industries', '2020-12-03', 'Indonesia', 1),
(307, 'Molestie Incorporated', '2020-08-01', 'Indonesia', 1),
(308, 'Vel Arcu LLC', '2020-06-28', 'Indonesia', 1),
(309, 'Nam Consequat Dolor Associates', '2021-01-23', 'Indonesia', 1),
(310, 'Mi Fringilla Corp.', '2019-06-10', 'Indonesia', 1),
(311, 'Vivamus Nisi Mauris Incorporated', '2020-02-12', 'Indonesia', 1),
(312, 'Dolor LLP', '2020-08-02', 'Indonesia', 1),
(313, 'Pede LLP', '2020-07-10', 'Indonesia', 0),
(314, 'Neque Et Foundation', '2019-07-26', 'Indonesia', 1),
(315, 'Pulvinar Arcu Et Consulting', '2020-07-29', 'Indonesia', 0),
(316, 'Integer Tincidunt Aliquam Associates', '2019-05-14', 'Indonesia', 1),
(317, 'Et Arcu Industries', '2019-05-04', 'Indonesia', 0),
(318, 'Vitae Risus Duis Company', '2019-12-20', 'Indonesia', 0),
(319, 'Egestas PC', '2021-02-10', 'Indonesia', 0),
(320, 'Et Malesuada Fames Inc.', '2020-10-03', 'Indonesia', 0),
(321, 'Euismod Ltd', '2019-12-14', 'Indonesia', 1),
(322, 'Justo Nec Ante Institute', '2020-07-30', 'Indonesia', 0),
(323, 'Enim Corp.', '2020-07-31', 'Indonesia', 1),
(324, 'Lorem Sit Amet Ltd', '2020-07-26', 'Indonesia', 1),
(325, 'Nibh Incorporated', '2020-08-10', 'Indonesia', 0),
(326, 'Felis Orci Adipiscing Industries', '2020-06-13', 'Indonesia', 0),
(327, 'Gravida Molestie Arcu Consulting', '2020-06-11', 'Indonesia', 0),
(328, 'Vel Nisl Associates', '2020-04-09', 'Indonesia', 1),
(329, 'Nulla Integer Limited', '2020-03-19', 'Indonesia', 0),
(330, 'Dolor Fusce Mi Industries', '2019-05-03', 'Indonesia', 1),
(331, 'Donec Nibh Incorporated', '2020-11-16', 'Indonesia', 0),
(332, 'Eu Tempor Erat Associates', '2020-01-22', 'Indonesia', 0),
(333, 'Ligula Tortor Dictum Foundation', '2019-10-25', 'Indonesia', 1),
(334, 'Egestas Aliquam Institute', '2020-10-26', 'Indonesia', 1),
(335, 'Egestas Urna Justo Limited', '2019-11-27', 'Indonesia', 1),
(336, 'In Dolor Corporation', '2020-01-06', 'Indonesia', 1),
(337, 'Ornare Elit Incorporated', '2020-10-03', 'Indonesia', 0),
(338, 'Praesent Eu LLC', '2020-01-09', 'Indonesia', 0),
(339, 'Ac Foundation', '2020-03-26', 'Indonesia', 1),
(340, 'Fringilla Porttitor Vulputate LLP', '2020-08-04', 'Indonesia', 1),
(341, 'Risus Nunc LLP', '2019-08-02', 'Indonesia', 0),
(342, 'Ligula Donec LLC', '2020-02-14', 'Indonesia', 1),
(343, 'Mollis Vitae Posuere Corp.', '2021-02-21', 'Indonesia', 1),
(344, 'Rhoncus Id Mollis Company', '2020-07-12', 'Indonesia', 1),
(345, 'Pharetra Felis Corporation', '2019-04-28', 'Indonesia', 1),
(346, 'In Inc.', '2020-04-08', 'Indonesia', 1),
(347, 'Sit Corporation', '2020-05-27', 'Indonesia', 1),
(348, 'Suspendisse Tristique Neque Incorporated', '2019-05-03', 'Indonesia', 0),
(349, 'Massa Non Inc.', '2020-04-23', 'Indonesia', 1),
(350, 'Arcu LLC', '2020-01-13', 'Indonesia', 0),
(351, 'Diam Nunc Ullamcorper LLP', '2021-02-22', 'Indonesia', 1),
(352, 'Nec Urna Suscipit LLC', '2020-01-12', 'Indonesia', 0),
(353, 'Integer In Associates', '2019-11-14', 'Indonesia', 1),
(354, 'Tellus LLC', '2021-03-12', 'Indonesia', 1),
(355, 'Fermentum Institute', '2021-01-04', 'Indonesia', 1),
(356, 'Non Lorem Vitae Consulting', '2019-06-20', 'Indonesia', 0),
(357, 'Urna PC', '2020-05-31', 'Indonesia', 0),
(358, 'Vestibulum Ut Eros Associates', '2020-02-23', 'Indonesia', 1),
(359, 'Orci Industries', '2019-11-23', 'Indonesia', 0),
(360, 'Justo Eu Arcu Foundation', '2019-10-18', 'Indonesia', 0),
(361, 'Varius Et Incorporated', '2019-11-15', 'Indonesia', 1),
(362, 'Mauris Rhoncus Consulting', '2021-04-15', 'Indonesia', 0),
(363, 'Non Corporation', '2019-04-21', 'Indonesia', 0),
(364, 'Auctor Vitae Aliquet Corporation', '2019-04-18', 'Indonesia', 0),
(365, 'Lorem Ac Risus Ltd', '2020-10-06', 'Indonesia', 0),
(366, 'Dictum Ultricies Limited', '2020-01-02', 'Indonesia', 1),
(367, 'Purus Gravida Sagittis LLP', '2020-03-19', 'Indonesia', 1),
(368, 'Nulla LLP', '2020-03-08', 'Indonesia', 0),
(369, 'Sem Ut PC', '2019-12-24', 'Indonesia', 1),
(370, 'Diam Corp.', '2020-03-09', 'Indonesia', 0),
(371, 'Sed Libero Foundation', '2020-11-25', 'Indonesia', 1),
(372, 'Ornare Fusce Inc.', '2019-11-27', 'Indonesia', 0),
(373, 'Maecenas Iaculis Aliquet Foundation', '2020-09-17', 'Indonesia', 1),
(374, 'Sed Consulting', '2020-10-19', 'Indonesia', 1),
(375, 'Et LLP', '2020-09-06', 'Indonesia', 0),
(376, 'Sagittis Duis Gravida Inc.', '2020-08-02', 'Indonesia', 0),
(377, 'Odio Inc.', '2020-02-02', 'Indonesia', 0),
(378, 'Magna Praesent Institute', '2020-02-21', 'Indonesia', 1),
(379, 'Nunc Industries', '2020-01-28', 'Indonesia', 0),
(380, 'Non Consulting', '2020-03-10', 'Indonesia', 0),
(381, 'Lorem Vitae Foundation', '2019-08-14', 'Indonesia', 0),
(382, 'Ante Dictum Mi Corporation', '2019-05-26', 'Indonesia', 0),
(383, 'Nisi Aenean Eget PC', '2020-01-08', 'Indonesia', 0),
(384, 'Magnis Dis Parturient Institute', '2019-12-10', 'Indonesia', 1),
(385, 'Luctus Inc.', '2021-03-05', 'Indonesia', 0),
(386, 'Ac PC', '2020-10-11', 'Indonesia', 0),
(387, 'Interdum Industries', '2019-11-26', 'Indonesia', 0),
(388, 'Risus Nunc Ac Company', '2020-12-04', 'Indonesia', 0),
(389, 'Nibh Vulputate LLC', '2019-09-15', 'Indonesia', 1),
(390, 'Lobortis Consulting', '2020-05-12', 'Indonesia', 1),
(391, 'Pellentesque Habitant Morbi Foundation', '2021-02-18', 'Indonesia', 0),
(392, 'Vivamus Nisi Corporation', '2020-11-26', 'Indonesia', 1),
(393, 'Dolor Sit Amet Corp.', '2019-09-13', 'Indonesia', 0),
(394, 'Mauris Elit Industries', '2020-04-15', 'Indonesia', 1),
(395, 'Euismod Urna Institute', '2020-11-26', 'Indonesia', 1),
(396, 'Risus LLC', '2021-01-20', 'Indonesia', 0),
(397, 'Vivamus Nisi Limited', '2019-11-20', 'Indonesia', 1),
(398, 'Magna Nam Industries', '2021-03-31', 'Indonesia', 1),
(399, 'Dis Corp.', '2019-10-30', 'Indonesia', 0),
(400, 'Quis Pede Suspendisse LLP', '2019-09-07', 'Indonesia', 1),
(401, 'Faucibus Lectus A Corporation', '2021-04-07', 'Indonesia', 1),
(402, 'Egestas Institute', '2020-12-16', 'Indonesia', 0),
(403, 'Pede LLC', '2020-09-02', 'Indonesia', 1),
(404, 'Pharetra Foundation', '2020-11-10', 'Indonesia', 1),
(405, 'Imperdiet Nec Leo Corp.', '2020-09-28', 'Indonesia', 0),
(406, 'Cursus Vestibulum Mauris Inc.', '2019-06-23', 'Indonesia', 0),
(407, 'Eu LLC', '2019-06-01', 'Indonesia', 0),
(408, 'Porttitor Eros Nec Foundation', '2020-07-21', 'Indonesia', 1),
(409, 'Purus Mauris Institute', '2021-02-08', 'Indonesia', 0),
(410, 'Semper Pretium Limited', '2021-02-18', 'Indonesia', 1),
(411, 'Mus Consulting', '2020-11-28', 'Indonesia', 1),
(412, 'Varius Nam Incorporated', '2020-05-12', 'Indonesia', 1),
(413, 'Praesent Eu Nulla PC', '2021-03-13', 'Indonesia', 0),
(414, 'Est Inc.', '2020-03-23', 'Indonesia', 0),
(415, 'Ut Sem Nulla Foundation', '2019-06-20', 'Indonesia', 0),
(416, 'Quis Massa Inc.', '2019-08-07', 'Indonesia', 1),
(417, 'Nibh Vulputate Mauris Ltd', '2020-07-16', 'Indonesia', 1),
(418, 'Sed Sem Ltd', '2020-10-26', 'Indonesia', 1),
(419, 'Scelerisque Inc.', '2020-12-05', 'Indonesia', 0),
(420, 'Fringilla Purus Limited', '2019-11-12', 'Indonesia', 0),
(421, 'Iaculis Quis Pede LLP', '2020-05-03', 'Indonesia', 0),
(422, 'At Lacus LLC', '2020-02-27', 'Indonesia', 0),
(423, 'Nisi Incorporated', '2020-10-28', 'Indonesia', 1),
(424, 'Ornare Egestas LLP', '2020-02-01', 'Indonesia', 0),
(425, 'Pellentesque Habitant Morbi Associates', '2020-07-31', 'Indonesia', 0),
(426, 'Morbi Non Sapien Ltd', '2019-09-07', 'Indonesia', 0),
(427, 'Ultrices Corp.', '2020-03-06', 'Indonesia', 0),
(428, 'Consequat Purus Ltd', '2020-03-13', 'Indonesia', 1),
(429, 'Cras Pellentesque Inc.', '2020-07-30', 'Indonesia', 0),
(430, 'Sed Molestie Corp.', '2019-04-22', 'Indonesia', 0),
(431, 'Sociis Natoque Penatibus Inc.', '2021-03-01', 'Indonesia', 1),
(432, 'Ut Industries', '2020-07-20', 'Indonesia', 0),
(433, 'Luctus Sit Limited', '2020-06-04', 'Indonesia', 1),
(434, 'Lectus Cum Corp.', '2020-05-18', 'Indonesia', 1),
(435, 'Vestibulum Corp.', '2019-05-06', 'Indonesia', 0),
(436, 'Id Ante Dictum Institute', '2019-08-25', 'Indonesia', 0),
(437, 'Auctor Nunc Nulla Inc.', '2019-05-23', 'Indonesia', 0),
(438, 'Gravida Molestie Ltd', '2020-08-23', 'Indonesia', 0),
(439, 'Integer Limited', '2020-02-09', 'Indonesia', 1),
(440, 'Nunc Quis Company', '2020-10-04', 'Indonesia', 1),
(441, 'Dictum Sapien PC', '2019-04-24', 'Indonesia', 0),
(442, 'Luctus Curabitur Egestas Inc.', '2019-09-28', 'Indonesia', 0),
(443, 'Eget Ipsum Suspendisse Industries', '2019-10-25', 'Indonesia', 1),
(444, 'Mi Pede Industries', '2021-04-10', 'Indonesia', 1),
(445, 'Vivamus Sit Amet Company', '2019-12-19', 'Indonesia', 0),
(446, 'Tortor Dictum Institute', '2020-04-05', 'Indonesia', 0),
(447, 'Feugiat Corporation', '2020-06-10', 'Indonesia', 0),
(448, 'Vulputate Associates', '2019-07-14', 'Indonesia', 0),
(449, 'Mauris Integer Sem Corporation', '2019-09-26', 'Indonesia', 0),
(450, 'Lorem Institute', '2020-01-13', 'Indonesia', 0),
(451, 'Sit Amet Ornare Consulting', '2019-11-23', 'Indonesia', 0),
(452, 'Quis Lectus Nullam Limited', '2020-09-13', 'Indonesia', 1),
(453, 'Suspendisse Industries', '2019-07-06', 'Indonesia', 0),
(454, 'A Purus Ltd', '2020-07-22', 'Indonesia', 1),
(455, 'Est Ac Mattis Corp.', '2021-03-09', 'Indonesia', 0),
(456, 'Consequat Limited', '2020-08-23', 'Indonesia', 0),
(457, 'Egestas Ligula LLC', '2020-11-06', 'Indonesia', 0),
(458, 'Mauris Blandit Mattis Associates', '2020-09-26', 'Indonesia', 0),
(459, 'Tempus Scelerisque Lorem Institute', '2020-07-25', 'Indonesia', 0),
(460, 'Tempus Eu Ligula PC', '2021-02-03', 'Indonesia', 1),
(461, 'Tellus Imperdiet Foundation', '2019-09-27', 'Indonesia', 1),
(462, 'Vestibulum Neque Sed Industries', '2021-04-16', 'Indonesia', 1),
(463, 'Malesuada Ut Ltd', '2019-12-22', 'Indonesia', 0),
(464, 'Dignissim LLC', '2019-06-16', 'Indonesia', 1),
(465, 'Quis Company', '2020-07-24', 'Indonesia', 1),
(466, 'Ornare Sagittis Felis Corporation', '2019-08-16', 'Indonesia', 0),
(467, 'Ipsum Non Ltd', '2019-10-29', 'Indonesia', 0),
(468, 'Cubilia Curae Donec Associates', '2019-07-01', 'Indonesia', 0),
(469, 'Cum Sociis Foundation', '2019-05-06', 'Indonesia', 0),
(470, 'Magnis Dis Parturient Ltd', '2020-04-09', 'Indonesia', 0),
(471, 'Convallis Dolor Limited', '2020-03-20', 'Indonesia', 0),
(472, 'Lacus Quisque Ltd', '2019-10-19', 'Indonesia', 0),
(473, 'Nulla Interdum Curabitur Ltd', '2020-02-10', 'Indonesia', 1),
(474, 'Lectus Pede Et Limited', '2020-03-02', 'Indonesia', 0),
(475, 'Et Rutrum LLP', '2020-10-31', 'Indonesia', 0),
(476, 'Enim Associates', '2021-01-01', 'Indonesia', 0),
(477, 'Odio Corporation', '2020-05-25', 'Indonesia', 0),
(478, 'Facilisis LLC', '2020-09-14', 'Indonesia', 0),
(479, 'Tellus Non Magna PC', '2019-08-22', 'Indonesia', 0),
(480, 'Consectetuer Adipiscing Elit Consulting', '2020-10-10', 'Indonesia', 1),
(481, 'Leo Corporation', '2019-11-13', 'Indonesia', 0),
(482, 'Ante Vivamus Non Consulting', '2020-08-26', 'Indonesia', 0),
(483, 'Non Egestas Industries', '2019-08-08', 'Indonesia', 0),
(484, 'Cras Pellentesque Industries', '2019-12-31', 'Indonesia', 0),
(485, 'Urna Incorporated', '2019-07-05', 'Indonesia', 0),
(486, 'Nec Ltd', '2019-08-10', 'Indonesia', 1),
(487, 'Purus Nullam Scelerisque Incorporated', '2021-03-08', 'Indonesia', 0),
(488, 'Duis Volutpat Associates', '2020-05-17', 'Indonesia', 0),
(489, 'At Fringilla Limited', '2020-04-19', 'Indonesia', 0),
(490, 'Eget Volutpat Consulting', '2020-04-03', 'Indonesia', 1),
(491, 'Magna Phasellus Incorporated', '2020-08-11', 'Indonesia', 0),
(492, 'Donec Foundation', '2020-02-08', 'Indonesia', 1),
(493, 'Arcu Nunc Associates', '2020-09-16', 'Indonesia', 1),
(494, 'Sapien Molestie Orci Foundation', '2020-07-29', 'Indonesia', 1),
(495, 'Est Institute', '2020-12-20', 'Indonesia', 0),
(496, 'Magna Tellus Company', '2020-12-01', 'Indonesia', 0),
(497, 'Phasellus At LLP', '2020-11-13', 'Indonesia', 0),
(498, 'Ultrices PC', '2021-04-15', 'Indonesia', 0),
(499, 'Dui Nec Inc.', '2020-01-15', 'Indonesia', 1),
(500, 'At Auctor Ullamcorper PC', '2020-06-22', 'Indonesia', 1),
(551, 'King Arthur', '2019-10-26', 'Metro Caffe ', 1),
(552, 'Battle Royal', '2019-10-13', 'Bober cafe', 1),
(553, 'Fly Bird', '2019-10-26', '911 Coffe', 1),
(554, 'Citadels', '2019-11-02', '911 Coffee', 1),
(555, 'Rise of Nobility', '2019-10-11', 'Bober Cafe', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendapatan`
--

CREATE TABLE `pendapatan` (
  `id` int(11) NOT NULL,
  `id_boardgame` int(11) NOT NULL,
  `jl_partisipan` int(50) NOT NULL,
  `harga_tiket` int(100) NOT NULL,
  `pd_masuk` int(128) NOT NULL,
  `pengeluaran` int(128) NOT NULL,
  `pd_bersih` int(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pendapatan`
--

INSERT INTO `pendapatan` (`id`, `id_boardgame`, `jl_partisipan`, `harga_tiket`, `pd_masuk`, `pengeluaran`, `pd_bersih`) VALUES
(11, 11, 10, 12000, 120000, 50000, 70000),
(13, 4, 7, 25000, 175000, 100000, 75000),
(14, 12, 5, 20000, 100000, 40000, 60000),
(16, 13, 10, 15000, 150000, 45000, 105000),
(18, 14, 5, 15000, 75000, 35000, 40000),
(19, 15, 6, 10000, 60000, 35000, 25000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peserta`
--

CREATE TABLE `peserta` (
  `id` int(11) NOT NULL,
  `id_eventak` int(11) NOT NULL,
  `nama_ps` varchar(100) NOT NULL,
  `umur` int(10) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `email_ps` varchar(100) NOT NULL,
  `biaya_pendaftaran` int(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `disetujui` enum('1','2') NOT NULL,
  `tgl_disetujui` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peserta`
--

INSERT INTO `peserta` (`id`, `id_eventak`, `nama_ps`, `umur`, `no_telp`, `email_ps`, `biaya_pendaftaran`, `date`, `disetujui`, `tgl_disetujui`) VALUES
(1, 51, 'Faith', 26, '62 16 290 7359', 'nulla.vulputate.dui@eget.edu', 25000, '2020-04-16 01:00:08', '1', '2020-10-30 08:07:18'),
(2, 385, 'Jelani', 19, '62 40 221 7067', 'Fusce.mi@liberoestcongue.co.uk', 25000, '2020-04-16 01:00:08', '1', '2019-08-14 12:24:01'),
(3, 182, 'Berk', 19, '62 55 335 3038', 'ut.lacus@mattis.org', 25000, '2020-04-16 01:00:08', '1', '2020-03-12 09:57:39'),
(4, 261, 'Brooke', 17, '62 25 266 3898', 'massa.Mauris.vestibulum@facilisisnon.org', 25000, '2020-04-16 01:00:08', '1', '2019-11-19 21:39:33'),
(5, 433, 'Christopher', 25, '62 61 773 6337', 'Nunc.mauris@sedturpisnec.ca', 25000, '2020-04-16 01:00:08', '1', '2019-11-28 00:20:33'),
(6, 1, 'Cleo', 17, '62 72 663 6083', 'iaculis.lacus.pede@netus.net', 25000, '2020-04-16 01:00:08', '1', '2020-08-01 09:30:19'),
(7, 302, 'Stacy', 24, '62 41 862 1551', 'pellentesque.Sed.dictum@Craseget.edu', 25000, '2020-04-16 01:00:08', '1', '2020-01-09 04:21:29'),
(8, 426, 'Emily', 19, '62 65 808 9152', 'venenatis.lacus.Etiam@vel.org', 25000, '2020-04-16 01:00:08', '1', '2020-09-22 07:33:20'),
(9, 71, 'Melodie', 25, '62 23 490 2272', 'Aliquam@eros.net', 25000, '2020-04-16 01:00:08', '1', '2021-04-14 13:50:22'),
(10, 433, 'Chiquita', 17, '62 74 698 3773', 'turpis@torquentperconubia.co.uk', 25000, '2020-04-16 00:48:10', '2', '2020-10-20 00:16:47'),
(11, 80, 'Phyllis', 20, '62 35 858 7063', 'mi.lacinia.mattis@ametluctusvulputate.ca', 25000, '2020-04-16 00:58:59', '2', '2020-01-06 12:36:16'),
(12, 436, 'Regan', 27, '62 18 446 2262', 'leo@atvelit.co.uk', 25000, '2020-04-16 00:48:10', '2', '2020-10-20 18:35:41'),
(13, 205, 'Karly', 21, '62 17 296 7361', 'orci.quis@montesnasceturridiculus.net', 25000, '2020-04-16 00:48:10', '2', '2019-12-10 15:07:07'),
(14, 119, 'Indira', 18, '62 92 640 0905', 'lobortis.augue.scelerisque@pharetrasedhendrerit.edu', 25000, '2020-04-16 00:58:59', '2', '2019-05-02 17:42:33'),
(15, 426, 'Raymond', 26, '62 59 580 5880', 'tellus@Phasellus.edu', 25000, '2020-04-16 00:58:59', '2', '2020-10-04 23:14:58'),
(16, 43, 'Emily', 24, '62 95 444 7759', 'nec.orci@urnaconvalliserat.co.uk', 25000, '2020-04-16 00:48:10', '2', '2019-08-02 10:55:28'),
(17, 142, 'Jennifer', 26, '62 77 531 3543', 'malesuada.malesuada@pulvinar.edu', 25000, '2020-04-16 00:58:59', '2', '2021-01-04 08:44:12'),
(18, 325, 'Alana', 23, '62 97 829 5767', 'sit@consequat.co.uk', 25000, '2020-04-16 00:48:10', '2', '2021-03-18 11:58:10'),
(19, 393, 'Basia', 26, '62 29 752 9968', 'faucibus@Proin.edu', 25000, '2020-04-16 00:48:10', '2', '2020-01-12 06:47:37'),
(20, 96, 'Zenaida', 23, '62 95 574 3350', 'a.ultricies@FuscefeugiatLorem.com', 25000, '2020-04-16 00:58:59', '2', '2019-08-28 04:30:27'),
(21, 354, 'Mariam', 18, '62 91 712 0154', 'convallis.in.cursus@vitae.edu', 25000, '2020-04-16 00:58:59', '2', '2020-06-26 07:37:34'),
(22, 85, 'Anjolie', 17, '62 54 787 7375', 'facilisis.Suspendisse.commodo@orci.net', 25000, '2020-04-16 00:48:10', '2', '2019-06-15 01:46:07'),
(23, 28, 'Nero', 22, '62 48 356 0213', 'eget.venenatis.a@hendrerit.net', 25000, '2020-04-16 00:58:59', '2', '2020-06-11 03:03:42'),
(24, 48, 'Marsden', 22, '62 87 958 2521', 'orci.sem@cursusNuncmauris.ca', 25000, '2020-04-16 00:48:10', '2', '2020-07-17 00:50:52'),
(25, 147, 'Cooper', 27, '62 72 963 3831', 'nec@mattisvelit.com', 25000, '2020-04-16 00:58:59', '2', '2021-03-04 07:23:00'),
(26, 327, 'Nita', 22, '62 21 422 5123', 'nulla@aliquet.co.uk', 25000, '2020-04-16 00:48:10', '2', '2020-06-29 01:38:47'),
(27, 153, 'Patience', 18, '62 27 591 8199', 'Aenean@nonquamPellentesque.com', 25000, '2020-04-16 00:58:59', '2', '2019-06-05 23:17:33'),
(28, 304, 'Emily', 19, '62 65 308 9649', 'rutrum.magna.Cras@tortor.com', 25000, '2020-04-16 00:58:59', '2', '2020-11-03 14:16:25'),
(29, 494, 'Ocean', 25, '62 99 202 6818', 'nibh.sit@iaculisenim.org', 25000, '2020-04-16 00:48:10', '2', '2020-09-22 10:34:43'),
(30, 426, 'Dorian', 25, '62 79 055 2910', 'Suspendisse.sed.dolor@lobortis.net', 25000, '2020-04-16 00:58:59', '2', '2019-07-28 13:50:37'),
(31, 341, 'Owen', 22, '62 28 909 9087', 'et.libero@nullaCraseu.org', 25000, '2020-04-16 00:58:59', '2', '2020-04-04 04:23:10'),
(32, 229, 'Candace', 18, '62 29 932 0004', 'Nunc.sollicitudin.commodo@cursus.ca', 25000, '2020-04-16 00:48:10', '2', '2020-10-01 19:45:04'),
(33, 42, 'Jarrod', 22, '62 20 618 7006', 'fermentum@quis.net', 25000, '2020-04-16 00:48:10', '2', '2019-11-20 21:02:59'),
(34, 58, 'Allistair', 20, '62 33 244 4833', 'ante.bibendum@utodio.net', 25000, '2020-04-16 00:48:10', '2', '2021-03-05 00:25:38'),
(35, 200, 'Emerald', 22, '62 31 053 5294', 'non.enim.commodo@enimcondimentum.net', 25000, '2020-04-16 00:58:59', '2', '2019-08-19 19:13:06'),
(36, 27, 'Courtney', 20, '62 47 353 0224', 'sed@felisadipiscingfringilla.com', 25000, '2020-04-16 00:58:59', '2', '2020-01-02 12:50:42'),
(37, 461, 'Melanie', 18, '62 73 781 3728', 'scelerisque.neque.Nullam@loremacrisus.net', 25000, '2020-04-16 00:58:59', '2', '2019-10-13 00:27:45'),
(38, 399, 'Felix', 23, '62 95 875 5796', 'turpis.nec@semmollis.co.uk', 25000, '2020-04-16 00:58:59', '2', '2019-04-15 21:53:36'),
(39, 327, 'Zachery', 20, '62 37 556 5017', 'ac.nulla@eratVivamus.ca', 25000, '2020-04-16 00:58:59', '2', '2021-04-05 07:34:19'),
(40, 29, 'Rahim', 23, '62 23 812 5302', 'auctor.nunc.nulla@ante.ca', 25000, '2020-04-16 00:58:59', '2', '2019-06-23 08:05:22'),
(41, 245, 'Elvis', 24, '62 96 852 1089', 'et.ultrices@ac.org', 25000, '2020-04-16 00:58:59', '2', '2020-10-21 17:07:13'),
(42, 492, 'Ivor', 24, '62 92 897 4202', 'placerat@ipsumleoelementum.co.uk', 25000, '2020-04-16 00:58:59', '2', '2019-05-03 00:14:36'),
(43, 87, 'Anthony', 17, '62 56 048 8478', 'Phasellus.ornare@cursus.net', 25000, '2020-04-16 00:48:10', '2', '2019-08-25 12:19:41'),
(44, 417, 'Valentine', 19, '62 28 619 3351', 'magna.et@luctuslobortisClass.com', 25000, '2020-04-16 00:58:59', '2', '2019-12-15 09:16:30'),
(45, 417, 'Isabelle', 27, '62 56 484 8996', 'sit.amet@Vivamussitamet.ca', 25000, '2020-04-16 00:48:10', '2', '2021-02-01 11:52:24'),
(46, 118, 'Molly', 27, '62 62 938 9612', 'Sed@velest.edu', 25000, '2020-04-16 00:58:59', '2', '2020-10-09 19:58:04'),
(47, 216, 'Burton', 25, '62 12 390 9546', 'ante@Craslorem.ca', 25000, '2020-04-16 00:48:10', '2', '2019-04-21 17:04:46'),
(48, 97, 'Griffin', 21, '62 96 268 2084', 'elit.Curabitur@Integeridmagna.com', 25000, '2020-04-16 00:58:59', '2', '2020-09-07 16:41:02'),
(49, 42, 'Gary', 26, '62 55 995 6318', 'tempor.erat@elementumsem.net', 25000, '2020-04-16 00:58:59', '2', '2020-04-03 08:25:57'),
(50, 270, 'Jonas', 26, '62 67 065 0464', 'Nulla.semper.tellus@acmattisvelit.net', 25000, '2020-04-16 00:58:59', '2', '2019-10-16 21:26:40'),
(51, 83, 'Mason', 27, '62 73 262 0344', 'auctor@Duis.ca', 50000, '2020-04-16 00:47:45', '2', '2019-08-20 08:28:55'),
(52, 410, 'Walker', 20, '62 70 564 1870', 'orci.luctus.et@elementum.net', 50000, '2020-04-16 00:47:45', '2', '2019-10-19 11:20:57'),
(53, 392, 'Luke', 17, '62 46 744 8178', 'nisl.arcu@auctor.com', 50000, '2020-04-16 00:47:45', '2', '2020-12-21 14:53:42'),
(54, 62, 'Isadora', 17, '62 58 488 4880', 'vel.sapien@orcisem.com', 50000, '2020-04-16 00:58:59', '2', '2020-06-24 19:28:53'),
(55, 110, 'Magee', 24, '62 57 887 3562', 'congue@sapien.com', 50000, '2020-04-16 00:58:59', '2', '2020-08-11 10:04:40'),
(56, 133, 'Grady', 26, '62 28 913 6350', 'tincidunt.nunc@ornaresagittis.com', 50000, '2020-04-16 00:58:59', '2', '2021-02-16 04:08:51'),
(57, 102, 'Valentine', 20, '62 27 075 6771', 'Pellentesque.habitant@sem.net', 50000, '2020-04-16 00:47:45', '2', '2020-06-05 22:20:54'),
(58, 121, 'Channing', 24, '62 77 132 1753', 'risus@justo.edu', 50000, '2020-04-16 00:58:59', '2', '2021-02-07 04:21:04'),
(59, 317, 'Kathleen', 21, '62 37 369 3065', 'lorem@mattis.org', 50000, '2020-04-16 00:58:59', '2', '2020-11-12 14:26:01'),
(60, 29, 'Aiko', 27, '62 56 661 0017', 'mollis.dui.in@nonlacinia.co.uk', 50000, '2020-04-16 00:47:45', '2', '2020-01-03 15:57:09'),
(61, 115, 'Yael', 23, '62 64 919 8917', 'augue.Sed.molestie@arcuSedet.org', 50000, '2020-04-16 00:58:59', '2', '2020-10-31 17:16:23'),
(62, 279, 'Imogene', 25, '62 51 203 3449', 'quam@placeratorcilacus.ca', 50000, '2020-04-16 00:58:59', '2', '2019-10-17 03:05:38'),
(63, 103, 'Katell', 23, '62 77 000 4125', 'Aenean.eget@conubianostraper.ca', 50000, '2020-04-16 00:47:45', '2', '2020-01-31 03:00:39'),
(64, 116, 'Gray', 23, '62 79 888 5763', 'adipiscing.elit.Etiam@nec.ca', 50000, '2020-04-16 00:58:59', '2', '2019-10-03 17:13:15'),
(65, 455, 'Wynne', 18, '62 72 160 6587', 'eget@NullamnislMaecenas.edu', 50000, '2020-04-16 00:58:59', '2', '2020-01-19 19:45:36'),
(66, 290, 'Vernon', 20, '62 39 976 3889', 'ultrices@ut.net', 50000, '2020-04-16 00:47:45', '2', '2019-11-30 10:38:46'),
(67, 126, 'Dakota', 27, '62 85 505 2763', 'Aliquam.vulputate.ullamcorper@quam.com', 50000, '2020-04-16 00:58:59', '2', '2019-09-11 11:59:33'),
(68, 133, 'Dante', 26, '62 77 328 5498', 'sociis@mattissemper.co.uk', 50000, '2020-04-16 00:58:59', '2', '2021-03-20 12:33:22'),
(69, 437, 'Jade', 17, '62 57 566 5913', 'ligula.elit@eget.org', 50000, '2020-04-16 00:47:45', '2', '2021-01-01 15:13:26'),
(70, 133, 'Melissa', 27, '62 58 567 6244', 'scelerisque.dui@intempuseu.com', 50000, '2020-04-16 00:47:45', '2', '2021-04-05 08:01:43'),
(71, 148, 'Preston', 21, '62 27 784 4926', 'gravida@metus.ca', 50000, '2020-04-16 00:58:59', '2', '2020-02-17 22:38:09'),
(72, 40, 'Ali', 17, '62 14 237 0547', 'at.auctor.ullamcorper@at.co.uk', 50000, '2020-04-16 00:58:59', '2', '2020-06-12 22:27:26'),
(73, 176, 'Grace', 25, '62 42 327 0466', 'quam@ullamcorper.net', 50000, '2020-04-16 00:47:45', '2', '2021-04-03 09:18:57'),
(74, 82, 'Anne', 17, '62 46 487 1066', 'facilisis@nec.edu', 50000, '2020-04-16 00:47:45', '2', '2019-08-10 04:58:20'),
(75, 396, 'Levi', 17, '62 88 184 3435', 'semper.erat.in@erat.edu', 50000, '2020-04-16 00:47:45', '2', '2020-01-02 07:29:02'),
(76, 173, 'Brendan', 25, '62 29 362 3336', 'dui.Cum.sociis@non.com', 50000, '2020-04-16 00:58:59', '2', '2019-07-28 00:43:31'),
(77, 157, 'Desirae', 22, '62 15 747 2211', 'iaculis@arcuVestibulumante.com', 50000, '2020-04-16 00:58:59', '2', '2021-04-13 04:00:19'),
(78, 162, 'Ronan', 18, '62 34 254 3965', 'Suspendisse.aliquet.molestie@DonecegestasDuis.org', 50000, '2020-04-16 00:58:59', '2', '2020-03-01 18:55:59'),
(79, 50, 'Holmes', 17, '62 84 741 5244', 'elementum@laoreetipsum.com', 50000, '2020-04-16 00:58:59', '2', '2021-02-15 17:01:33'),
(80, 271, 'Geraldine', 19, '62 82 059 1125', 'semper.Nam@mattisInteger.co.uk', 50000, '2020-04-16 00:47:45', '2', '2020-11-18 00:05:02'),
(81, 391, 'Hamilton', 17, '62 37 789 3592', 'mauris.a@nec.edu', 50000, '2020-04-16 00:58:59', '2', '2020-09-10 17:18:58'),
(82, 53, 'Jin', 26, '62 96 503 8738', 'dui.Fusce.diam@pellentesquea.org', 50000, '2020-04-16 00:58:59', '2', '2020-07-27 05:33:27'),
(83, 138, 'Denise', 19, '62 41 098 3981', 'malesuada@eu.org', 50000, '2020-04-16 00:47:45', '2', '2019-09-23 11:33:28'),
(84, 292, 'Leslie', 19, '62 93 732 6956', 'Vivamus.sit@Nullamfeugiat.edu', 50000, '2020-04-16 00:58:59', '2', '2019-12-30 09:58:46'),
(85, 88, 'Adria', 27, '62 24 324 3161', 'vulputate@molestiepharetranibh.net', 50000, '2020-04-16 00:47:45', '2', '2021-04-16 12:38:24'),
(86, 428, 'Sacha', 23, '62 52 248 3416', 'eu.arcu@ullamcorper.edu', 50000, '2020-04-16 00:47:45', '2', '2019-10-10 05:02:28'),
(87, 363, 'Vielka', 24, '62 34 362 4971', 'vulputate@vitaevelit.co.uk', 50000, '2020-04-16 00:58:59', '2', '2019-11-16 04:05:05'),
(88, 111, 'Brian', 18, '62 28 326 8536', 'Nullam.nisl.Maecenas@egestas.net', 50000, '2020-04-16 00:58:59', '2', '2019-07-21 20:24:15'),
(89, 307, 'Ira', 26, '62 64 050 9508', 'nec@euismodacfermentum.ca', 50000, '2020-04-16 00:58:59', '2', '2020-05-26 07:09:43'),
(90, 14, 'Jermaine', 18, '62 13 261 0815', 'et.ultrices@cursusdiamat.edu', 50000, '2020-04-16 00:58:59', '2', '2019-07-06 07:11:00'),
(91, 322, 'Tarik', 26, '62 46 419 2348', 'aliquam.arcu.Aliquam@imperdietnec.net', 50000, '2020-04-16 00:58:59', '2', '2019-08-27 09:13:15'),
(92, 196, 'Penelope', 25, '62 20 569 1413', 'faucibus.Morbi.vehicula@Maecenasmalesuadafringilla.net', 50000, '2020-04-16 00:47:45', '2', '2020-01-19 23:14:02'),
(93, 88, 'Ian', 20, '62 81 867 7350', 'Curabitur@mus.co.uk', 50000, '2020-04-16 00:47:45', '2', '2020-07-30 02:56:51'),
(94, 427, 'Flavia', 21, '62 97 436 4089', 'Fusce@arcu.net', 50000, '2020-04-16 00:58:59', '2', '2020-06-26 14:27:57'),
(95, 160, 'Maxine', 18, '62 50 226 6164', 'amet@consequatauctor.ca', 50000, '2020-04-16 00:58:59', '2', '2020-06-01 05:54:02'),
(96, 89, 'Kiara', 25, '62 66 870 7117', 'sed.est@elit.co.uk', 50000, '2020-04-16 00:58:59', '2', '2020-09-24 11:54:04'),
(97, 102, 'Hiroko', 21, '62 33 821 8165', 'et.commodo.at@Quisquepurus.ca', 50000, '2020-04-16 00:58:59', '2', '2019-05-18 12:59:01'),
(98, 44, 'Geraldine', 20, '62 89 608 8402', 'mauris.sagittis.placerat@justoPraesentluctus.net', 50000, '2020-04-16 00:47:45', '2', '2020-01-09 04:58:37'),
(99, 337, 'Brian', 26, '62 46 143 0383', 'Fusce@magnanecquam.edu', 50000, '2020-04-16 00:58:59', '2', '2021-02-22 20:18:59'),
(100, 152, 'Byron', 24, '62 55 879 5327', 'dolor.sit.amet@eu.edu', 50000, '2020-04-16 00:58:59', '2', '2020-05-18 10:57:38'),
(101, 12, 'Signe', 21, '62 68 933 1067', 'Phasellus@Loremipsumdolor.net', 35000, '2020-04-16 00:46:11', '2', '2019-04-17 07:22:14'),
(102, 412, 'Ingrid', 22, '62 20 965 1745', 'netus.et.malesuada@Vivamus.ca', 35000, '2020-04-16 00:58:59', '2', '2020-06-23 14:25:02'),
(103, 455, 'Hamish', 23, '62 94 328 1750', 'penatibus@Quisqueimperdiet.net', 35000, '2020-04-16 00:46:11', '2', '2021-03-13 23:59:49'),
(104, 493, 'Wallace', 26, '62 12 857 2200', 'elit.pellentesque.a@IncondimentumDonec.co.uk', 35000, '2020-04-16 00:58:59', '2', '2019-04-17 05:50:43'),
(105, 254, 'Kuame', 20, '62 30 720 7100', 'non.arcu@venenatisvelfaucibus.edu', 35000, '2020-04-16 00:46:11', '2', '2020-10-01 01:09:19'),
(106, 203, 'Hector', 17, '62 23 031 0167', 'velit@gravidanunc.edu', 35000, '2020-04-16 00:58:59', '2', '2019-04-17 22:13:16'),
(107, 425, 'Debra', 17, '62 83 602 7033', 'Cras.lorem.lorem@Suspendissesagittis.co.uk', 35000, '2020-04-16 00:58:59', '2', '2020-12-15 13:55:28'),
(108, 246, 'Kitra', 20, '62 86 005 2741', 'gravida.Praesent@molestieorci.org', 35000, '2020-04-16 00:46:11', '2', '2019-09-23 21:42:46'),
(109, 54, 'Whitney', 22, '62 76 712 6775', 'egestas.hendrerit@tinciduntnibh.org', 35000, '2020-04-16 00:46:11', '2', '2019-05-21 05:29:38'),
(111, 27, 'andi', 18, '085656576766', 'haryadim28@gmail.com', 55000, '2020-04-17 13:24:21', '2', '2020-04-17 12:00:00'),
(114, 25, 'Alex', 18, '085656576766', 'haryadim28@gmail.com', 55000, '2020-04-17 13:30:47', '2', '2020-04-17 12:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(18, 'Abimanyu', 'abimbaim@yahoo.com', 'default.jpg', '$2y$10$x/E.CJ6mVrq/rC6aAaKfvupzFsqsPPu2fQo5NKb2ghSBfW296G7LW', 2, 1, 1567673154),
(23, 'Steven Axwell', 'prayogabimanyu20@gmail.com', 'default.jpg', '$2y$10$4TvQso6VoSiIjkkty0PpxOaxQ1MFqHBmIgdGiJOXBSxnKNePxQyci', 2, 1, 1569431003),
(24, 'Andi', 'andi234@yahoo.com', 'default.jpg', '$2y$10$kq60n835Ln0uW7V/zq5nJeB9f1Gy0BIyyl/bVJ4kcGR9//ct//BzC', 2, 1, 1587115257);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pendapatan`
--
ALTER TABLE `pendapatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pendapatan`
--
ALTER TABLE `pendapatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
