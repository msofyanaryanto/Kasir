-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2021 at 04:40 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `bonus`
--
-- Error reading structure for table db_web.bonus: #1932 - Table 'db_web.bonus' doesn't exist in engine
-- Error reading data for table db_web.bonus: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `db_web`.`bonus`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--
-- Error reading structure for table db_web.customers: #1932 - Table 'db_web.customers' doesn't exist in engine
-- Error reading data for table db_web.customers: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `db_web`.`customers`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `ref_group`
--

CREATE TABLE `ref_group` (
  `id_group` int(11) NOT NULL,
  `name_group` varchar(225) NOT NULL,
  `create_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_group`
--

INSERT INTO `ref_group` (`id_group`, `name_group`, `create_at`, `modified_at`) VALUES
(1, 'Administrator', '2016-08-21 04:10:11', '2017-03-05 22:46:52'),
(2, 'User', '2018-08-02 17:40:51', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ref_icon`
--

CREATE TABLE `ref_icon` (
  `id_icon` int(11) NOT NULL,
  `name_icon` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_icon`
--

INSERT INTO `ref_icon` (`id_icon`, `name_icon`) VALUES
(1, 'adjust'),
(2, 'anchor'),
(3, 'archive'),
(4, 'area-chart'),
(5, 'arrows'),
(6, 'arrows-h'),
(7, 'arrows-v\r\n'),
(8, 'asterisk'),
(9, 'at'),
(10, 'automobile'),
(11, 'ban'),
(12, 'bank'),
(13, 'bar-chart'),
(14, 'bar-chart-o'),
(15, 'barcode'),
(16, 'bars'),
(17, 'bed'),
(18, 'beer'),
(19, 'bell'),
(20, 'bell-o'),
(21, 'bell-slash'),
(22, 'bell-slash-o'),
(23, 'bicycle'),
(24, 'binoculars'),
(25, 'birthday-cake'),
(26, 'bolt'),
(27, 'bomb'),
(28, 'book'),
(29, 'bookmark'),
(30, 'bookmark-o'),
(31, 'briefcase'),
(32, 'bug'),
(33, 'building'),
(34, 'building-o'),
(35, 'bullhorn'),
(36, 'bullseye'),
(37, 'bus'),
(38, 'cab'),
(39, 'calculator'),
(40, 'calendar'),
(41, 'calendar-o'),
(42, 'camera'),
(43, 'camera-retro'),
(44, 'car'),
(45, 'caret-square-o-down'),
(46, 'caret-square-o-left'),
(47, 'caret-square-o-right'),
(48, 'caret-square-o-up'),
(49, 'cart-arrow-down'),
(50, 'cart-plus'),
(51, 'cc'),
(52, 'certificate'),
(53, 'check'),
(54, 'check-circle'),
(55, 'check-circle-o'),
(56, 'check-square'),
(57, 'check-square-o'),
(58, 'child'),
(59, 'circle'),
(60, 'circle-o'),
(61, 'circle-o-notch'),
(62, 'circle-thin'),
(63, 'clock-o'),
(64, 'close'),
(65, 'cloud'),
(66, 'cloud-download'),
(67, 'cloud-upload'),
(68, 'code'),
(69, 'code-fork'),
(70, 'coffee'),
(71, 'cog'),
(72, 'cogs'),
(73, 'comment'),
(74, 'comment-o'),
(75, 'comments'),
(76, 'comments-o'),
(77, 'compass'),
(78, 'copyright'),
(79, 'credit-card'),
(80, 'crop'),
(81, 'crosshairs'),
(82, 'cube'),
(83, 'cubes'),
(84, 'cutlery'),
(85, 'dashboard'),
(86, 'database'),
(87, 'desktop'),
(88, 'diamond'),
(89, 'dot-circle-o'),
(90, 'download'),
(91, 'edit'),
(92, 'ellipsis-h'),
(93, 'ellipsis-v'),
(94, 'envelope'),
(95, 'envelope-o'),
(96, 'envelope-square'),
(97, 'eraser'),
(98, 'exchange'),
(99, 'exclamation'),
(100, 'exclamation-circle'),
(101, 'exclamation-triangle'),
(102, 'external-link'),
(103, 'external-link-square'),
(104, 'eye'),
(105, 'eye-slash'),
(106, 'eyedropper'),
(107, 'fax'),
(108, 'female'),
(109, 'fighter-jet'),
(110, 'file-archive-o'),
(111, 'file-audio-o'),
(112, 'file-code-o'),
(113, 'file-excel-o'),
(114, 'file-image-o'),
(115, 'file-movie-o'),
(116, 'file-pdf-o'),
(117, 'file-photo-o'),
(118, 'file-picture-o'),
(119, 'file-powerpoint-o'),
(120, 'file-sound-o'),
(121, 'file-video-o'),
(122, 'file-word-o'),
(123, 'file-zip-o'),
(124, 'film'),
(125, 'filter'),
(126, 'fire'),
(127, 'fire-extinguisher'),
(128, 'flag'),
(129, 'flag-checkered'),
(130, 'flag-o'),
(131, 'flash'),
(132, 'flask'),
(133, 'folder'),
(134, 'folder-o'),
(135, 'folder-open'),
(136, 'folder-open-o'),
(137, 'frown-o'),
(138, 'futbol-o'),
(139, 'gamepad'),
(140, 'gavel'),
(141, 'gear'),
(142, 'gears'),
(143, 'genderless'),
(144, 'gift'),
(145, 'glass'),
(146, 'globe'),
(147, 'graduation-cap'),
(148, 'group'),
(149, 'hdd-o'),
(150, 'headphones'),
(151, 'heart'),
(152, 'heart-o'),
(153, 'heartbeat'),
(154, 'history'),
(155, 'home'),
(156, 'hotel'),
(157, 'image'),
(158, 'inbox'),
(159, 'info'),
(160, 'info-circle'),
(161, 'institution'),
(162, 'key'),
(163, 'keyboard-o'),
(164, 'language'),
(165, 'laptop'),
(166, 'leaf'),
(167, 'legal'),
(168, 'lemon-o'),
(169, 'level-down'),
(170, 'level-up'),
(171, 'life-bouy'),
(172, 'life-buoy'),
(173, 'life-ring'),
(174, 'life-saver'),
(175, 'lightbulb-o'),
(176, 'line-chart'),
(177, 'location-arrow'),
(178, 'lock'),
(179, 'magic'),
(180, 'magnet'),
(181, 'mail-forward'),
(182, 'mail-reply'),
(183, 'mail-reply-all'),
(184, 'male'),
(185, 'map-marker'),
(186, 'meh-o'),
(187, 'microphone'),
(188, 'microphone-slash'),
(189, 'minus'),
(190, 'minus-circle'),
(191, 'minus-square'),
(192, 'minus-square-o'),
(193, 'mobile'),
(194, 'mobile-phone'),
(195, 'money'),
(196, 'moon-o'),
(197, 'mortar-board'),
(198, 'motorcycle'),
(199, 'music'),
(200, 'navicon'),
(202, 'newspaper-o'),
(203, 'paint-brush'),
(204, 'paper-plane'),
(205, 'paper-plane-o'),
(206, 'paw'),
(207, 'pencil'),
(208, 'pencil-square'),
(209, 'pencil-square-o'),
(210, 'phone'),
(211, 'phone-square'),
(212, 'photo'),
(213, 'picture-o'),
(214, 'pie-chart'),
(215, 'plane'),
(216, 'plug'),
(217, 'plus'),
(218, 'plus-circle'),
(219, 'plus-square'),
(220, 'plus-square-o'),
(221, 'power-off'),
(222, 'print'),
(223, 'puzzle-piece'),
(224, 'qrcode'),
(225, 'question'),
(226, 'question-circle'),
(227, 'quote-left'),
(228, 'quote-right'),
(229, 'random'),
(230, 'recycle'),
(231, 'refresh'),
(232, 'remove'),
(233, 'reorder'),
(234, 'reply'),
(235, 'reply-all'),
(236, 'retweet'),
(237, 'road'),
(238, 'rocket'),
(239, 'rss'),
(240, 'rss-square'),
(241, 'search'),
(242, 'search-minus'),
(243, 'search-plus'),
(244, 'send'),
(245, 'send-o'),
(246, 'server'),
(247, 'share'),
(248, 'share-alt'),
(249, 'share-alt-square'),
(250, 'share-square'),
(251, 'share-square-o'),
(252, 'shield'),
(253, 'ship'),
(254, 'shopping-cart'),
(255, 'sign-in'),
(256, 'sign-out'),
(257, 'signal'),
(258, 'sitemap'),
(259, 'sliders'),
(260, 'smile-o'),
(261, 'soccer-ball-o'),
(262, 'sort'),
(263, 'sort-alpha-asc'),
(264, 'sort-alpha-desc'),
(265, 'sort-amount-asc'),
(266, 'sort-amount-desc'),
(267, 'sort-asc'),
(268, 'sort-desc'),
(269, 'sort-down'),
(270, 'sort-numeric-asc'),
(271, 'sort-numeric-desc'),
(272, 'sort-up'),
(273, 'space-shuttle'),
(274, 'spinner'),
(275, 'spoon'),
(276, 'square'),
(277, 'square-o'),
(278, 'star'),
(279, 'star-half'),
(280, 'star-half-empty'),
(281, 'star-half-full'),
(282, 'star-half-o'),
(283, 'star-o'),
(284, 'street-view'),
(285, 'suitcase'),
(286, 'sun-o'),
(287, 'support'),
(288, 'tablet'),
(289, 'tachometer'),
(290, 'tag'),
(291, 'tags'),
(292, 'tasks'),
(293, 'taxi'),
(294, 'terminal'),
(295, 'thumb-tack'),
(296, 'thumbs-down'),
(297, 'thumbs-o-down'),
(298, 'thumbs-o-up'),
(299, 'thumbs-up'),
(300, 'ticket'),
(301, 'times'),
(302, 'times-circle'),
(303, 'times-circle-o'),
(304, 'tint'),
(305, 'toggle-down'),
(306, 'toggle-left'),
(307, 'toggle-off'),
(308, 'toggle-on'),
(309, 'toggle-right'),
(310, 'toggle-up'),
(311, 'trash'),
(312, 'trash-o'),
(313, 'tree'),
(314, 'trophy'),
(315, 'truck'),
(316, 'tty'),
(317, 'umbrella'),
(318, 'university'),
(319, 'unlock'),
(320, 'unlock-alt'),
(321, 'unsorted'),
(322, 'upload'),
(323, 'user'),
(324, 'user-plus'),
(325, 'user-secret'),
(326, 'user-times'),
(327, 'users'),
(328, 'video-camera'),
(329, 'volume-down'),
(330, 'volume-off'),
(331, 'volume-up'),
(332, 'warning'),
(333, 'wheelchair'),
(334, 'wifi'),
(335, 'cc-amex'),
(336, 'cc-discover'),
(337, 'cc-mastercard'),
(338, 'cc-paypal'),
(339, 'cc-stripe'),
(340, 'cc-visa'),
(341, 'credit-card'),
(342, 'google-wallet'),
(343, 'paypal'),
(344, 'bitcoin'),
(345, 'btc'),
(346, 'cny'),
(347, 'dollar'),
(348, 'eur'),
(349, 'euro'),
(350, 'gbp'),
(351, 'ils'),
(352, 'inr'),
(353, 'jpy'),
(354, 'krw'),
(355, 'money'),
(356, 'th'),
(357, 'th-list'),
(358, 'th-large'),
(359, 'chain-broken'),
(360, 'angle-double-down'),
(361, 'angle-double-left'),
(362, 'angle-double-right'),
(363, 'angle-double-up'),
(364, 'angle-down'),
(365, 'angle-left'),
(366, 'angle-right'),
(367, 'angle-up');

-- --------------------------------------------------------

--
-- Table structure for table `ref_module`
--

CREATE TABLE `ref_module` (
  `id_module` int(11) NOT NULL,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `name_module` varchar(225) NOT NULL,
  `name_controller` varchar(225) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `sort` int(3) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_module`
--

INSERT INTO `ref_module` (`id_module`, `id_parent`, `name_module`, `name_controller`, `icon`, `sort`, `created_at`, `modified_at`) VALUES
(1, 0, 'Configuration Users', '#', 'cogs', 100, '2016-08-24 00:00:00', '2016-09-05 14:12:47'),
(2, 1, 'Group management', 'group', 'sitemap', 2, '2016-08-24 00:00:00', '2018-08-02 17:35:13'),
(3, 1, 'User management', 'user', 'users', 3, '2016-08-24 00:00:00', '2018-08-02 17:35:47'),
(64, 0, 'Penawaran Harga', '#', 'dollar', 2, '2021-01-15 12:44:45', '0000-00-00 00:00:00'),
(63, 0, 'Master Data', '#', 'database', 1, '2021-01-15 12:42:35', '0000-00-00 00:00:00'),
(65, 0, 'PO Customer', '#', 'file-powerpoint-o', 3, '2021-01-15 12:45:48', '0000-00-00 00:00:00'),
(66, 0, 'PO Supplier', '#', 'file-powerpoint-o', 4, '2021-01-15 12:46:14', '0000-00-00 00:00:00'),
(67, 0, 'Delivery Order', '#', 'folder-open-o', 5, '2021-01-15 12:46:39', '0000-00-00 00:00:00'),
(68, 0, 'Invoice', '#', 'briefcase', 6, '2021-01-15 12:47:03', '0000-00-00 00:00:00'),
(69, 0, 'Report', '#', 'folder-o', 7, '2021-01-15 12:47:24', '0000-00-00 00:00:00'),
(70, 0, 'Dashboard', '#', 'tachometer', 0, '2021-01-15 12:48:56', '0000-00-00 00:00:00'),
(71, 64, 'Form Penawaran Harga', 'penawaranHarga', 'pencil-square-o', 1, '2021-01-15 12:52:07', '0000-00-00 00:00:00'),
(72, 64, 'List Request PH', 'requestPH', 'circle-thin', 2, '2021-01-15 12:52:54', '0000-00-00 00:00:00'),
(73, 64, 'List Revisi PH', 'revisiPH', 'circle-thin', 3, '2021-01-15 12:53:32', '0000-00-00 00:00:00'),
(74, 64, ':List Penawaran Harga', 'penawaranHarga', 'circle-thin', 4, '2021-01-15 12:54:04', '0000-00-00 00:00:00'),
(75, 65, 'Form PO Customer', 'poCustomer', 'circle-o', 1, '2021-01-15 16:38:34', '0000-00-00 00:00:00'),
(76, 65, 'List PO Customer', 'listPOCustomer', 'circle-o', 2, '2021-01-15 16:39:20', '0000-00-00 00:00:00'),
(77, 66, 'Form PO Supplier', 'poSupplier', 'circle-o', 1, '2021-01-15 16:40:05', '0000-00-00 00:00:00'),
(78, 66, 'List Request Supplier', 'requestSupplier', 'circle-o', 2, '2021-01-15 16:40:50', '0000-00-00 00:00:00'),
(79, 66, 'List Revisi PO', 'revisiPO', 'circle-o', 3, '2021-01-15 16:41:24', '0000-00-00 00:00:00'),
(80, 66, 'List PO Supplier', 'listPOSupplier', 'circle-o', 4, '2021-01-15 16:42:00', '0000-00-00 00:00:00'),
(81, 66, 'Penerimaan Barang', 'penerimaanBarang', 'circle-o', 5, '2021-01-15 16:42:31', '0000-00-00 00:00:00'),
(82, 67, 'Form Delivery Order', 'deliveryOrder', 'circle-o', 1, '2021-01-15 16:43:42', '0000-00-00 00:00:00'),
(83, 67, 'List Delivery Order', 'listDeliveryOrder', 'circle-o', 2, '2021-01-15 16:44:25', '0000-00-00 00:00:00'),
(84, 68, 'Form PO Customer', 'invoicePOCustomer', 'circle-o', 1, '2021-01-15 16:46:02', '0000-00-00 00:00:00'),
(85, 68, 'List invoice', 'invoice', 'circle-o', 2, '2021-01-15 16:54:21', '0000-00-00 00:00:00'),
(86, 68, 'Monitoring Invoice', 'monitoringInvoice', 'circle-o', 3, '2021-01-15 16:54:50', '0000-00-00 00:00:00'),
(87, 63, 'Brand', 'Brand', 'circle-o', 1, '2021-01-15 16:55:54', '0000-00-00 00:00:00'),
(88, 63, 'Company Type', 'companyType', 'circle-o', 2, '2021-01-15 16:56:22', '0000-00-00 00:00:00'),
(89, 63, 'Customers', 'customer', 'circle-o', 3, '2021-01-15 16:56:58', '0000-00-00 00:00:00'),
(90, 63, 'Delivery Address', 'deliveryAddress', 'circle-o', 4, '2021-01-15 16:57:45', '0000-00-00 00:00:00'),
(91, 63, 'Delivery Agent', 'deliveryAgent', 'circle-o', 5, '2021-01-15 16:58:22', '0000-00-00 00:00:00'),
(92, 63, 'Delivery Time', 'deliveryTime', 'circle-o', 6, '2021-01-15 16:59:03', '0000-00-00 00:00:00'),
(93, 63, 'Delivery Type', 'deliveryType', 'circle-o', 7, '2021-01-15 16:59:36', '0000-00-00 00:00:00'),
(94, 63, 'DO Status', 'doStatus', 'circle-o', 8, '2021-01-15 17:00:08', '0000-00-00 00:00:00'),
(95, 63, 'Invoice Status', 'invoiceStatus', 'circle-o', 9, '2021-01-15 17:00:42', '0000-00-00 00:00:00'),
(96, 63, 'Products', 'products', 'circle-o', 10, '2021-01-15 17:01:14', '0000-00-00 00:00:00'),
(97, 63, 'Products PO', 'productPO', 'circle-o', 11, '2021-01-15 17:01:50', '0000-00-00 00:00:00'),
(98, 63, 'Sales', 'sales', 'circle-o', 12, '2021-01-15 17:02:14', '0000-00-00 00:00:00'),
(99, 63, 'Suppliers', 'suppliers', 'circle-o', 13, '2021-01-15 17:02:54', '0000-00-00 00:00:00'),
(100, 63, 'Term Of Payment', 'termOfPayment', 'circle-o', 14, '2021-01-15 17:03:35', '0000-00-00 00:00:00'),
(101, 63, 'Type', 'type', 'circle-o', 15, '2021-01-15 17:03:55', '0000-00-00 00:00:00'),
(102, 63, 'Validity', 'validity', 'circle-o', 16, '2021-01-15 17:04:25', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ref_user`
--

CREATE TABLE `ref_user` (
  `id_user` int(11) NOT NULL,
  `id_group` int(11) NOT NULL,
  `gaji` bigint(20) NOT NULL,
  `name_user` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_user`
--

INSERT INTO `ref_user` (`id_user`, `id_group`, `gaji`, `name_user`, `username`, `password`, `created_at`, `modified_at`) VALUES
(1, 1, 0, 'Administrator', 'admin', 'c3284d0f94606de1fd2af172aba15bf3', '2016-08-21 00:00:00', '0000-00-00 00:00:00'),
(3, 2, 3000000, 'Ahmad', 'ahmad', '19da52afc75eddcc00e951b9a8f22bb8', '2018-08-03 04:42:40', '0000-00-00 00:00:00'),
(4, 2, 3100000, 'Ani', 'ani', '778bd9bb3ed2c535dc1b4c9916e0bbe1', '2018-08-03 04:43:16', '0000-00-00 00:00:00'),
(5, 2, 2500000, 'Budi', 'budi', '3074d9b7ba24b27d9ae573e9c021a487', '2018-08-03 04:43:51', '0000-00-00 00:00:00'),
(6, 2, 4500000, 'Dedi', 'dedi', '643ce26cbd170209c48f424e0f568d95', '2018-08-03 04:45:17', '0000-00-00 00:00:00'),
(7, 2, 4000000, 'Eni', 'eni', 'c4e64f52b9b04e4612428ba9be4745d7', '2018-08-03 04:45:51', '0000-00-00 00:00:00'),
(8, 2, 2900000, 'Fitri', 'fitri', 'cc64d9da75a1414a49ea891f29f46e38', '2018-08-03 04:46:21', '0000-00-00 00:00:00'),
(9, 2, 3500000, 'Galih', 'Galih', '0cf6b734bf713f2cc4a6f568e185a0e9', '2018-08-03 04:46:55', '0000-00-00 00:00:00'),
(12, 1, 1000000, 'Muhamad Sof', '123', 'd9b1d7db4cd6e70935368a1efb10e377', '2018-11-05 14:29:07', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ref_user_access`
--

CREATE TABLE `ref_user_access` (
  `id_user_access` int(11) NOT NULL,
  `id_group` int(11) NOT NULL,
  `id_module` int(11) NOT NULL,
  `akses` int(1) NOT NULL DEFAULT 0,
  `tambah` int(1) NOT NULL DEFAULT 0,
  `lihat` int(1) NOT NULL DEFAULT 0,
  `edit` int(1) NOT NULL DEFAULT 0,
  `hapus` int(1) NOT NULL DEFAULT 0,
  `ex_excel` int(1) NOT NULL DEFAULT 0,
  `ex_pdf` int(1) NOT NULL DEFAULT 0,
  `id_parent` int(11) NOT NULL,
  `create_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_user_access`
--

INSERT INTO `ref_user_access` (`id_user_access`, `id_group`, `id_module`, `akses`, `tambah`, `lihat`, `edit`, `hapus`, `ex_excel`, `ex_pdf`, `id_parent`, `create_at`, `modified_at`) VALUES
(1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, '2016-08-24 00:00:00', '2021-01-15 17:05:07'),
(2, 1, 2, 1, 1, 1, 1, 1, 0, 0, 1, '2016-08-24 00:00:00', '2021-01-15 17:05:07'),
(3, 1, 3, 1, 1, 1, 1, 1, 0, 0, 1, '2016-08-24 00:00:00', '2021-01-15 17:05:07'),
(288, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, 1, 64, 1, 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(297, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, 1, 63, 1, 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(295, 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 0, 65, 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 1, 65, 1, 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(301, 0, 66, 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(302, 1, 66, 1, 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(303, 0, 67, 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, 1, 67, 1, 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(305, 0, 68, 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, 1, 68, 1, 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(307, 0, 69, 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(308, 1, 69, 1, 1, 1, 1, 1, 1, 1, 0, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(309, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(310, 1, 70, 1, 1, 1, 1, 1, 1, 1, 0, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(311, 0, 71, 0, 0, 0, 0, 0, 0, 0, 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(312, 1, 71, 1, 1, 1, 1, 1, 1, 1, 64, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(313, 0, 72, 0, 0, 0, 0, 0, 0, 0, 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(314, 1, 72, 1, 1, 1, 1, 1, 1, 1, 64, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(315, 0, 73, 0, 0, 0, 0, 0, 0, 0, 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(316, 1, 73, 1, 1, 1, 1, 1, 1, 1, 64, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(317, 0, 74, 0, 0, 0, 0, 0, 0, 0, 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(318, 1, 74, 1, 1, 1, 1, 1, 1, 1, 64, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(319, 0, 75, 0, 0, 0, 0, 0, 0, 0, 65, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(320, 1, 75, 1, 1, 1, 1, 1, 1, 1, 65, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(321, 0, 76, 0, 0, 0, 0, 0, 0, 0, 65, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(322, 1, 76, 1, 1, 1, 1, 1, 1, 1, 65, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(323, 0, 77, 0, 0, 0, 0, 0, 0, 0, 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(324, 1, 77, 1, 1, 1, 1, 1, 1, 1, 66, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(325, 0, 78, 0, 0, 0, 0, 0, 0, 0, 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(326, 1, 78, 1, 1, 1, 1, 1, 1, 1, 66, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(327, 0, 79, 0, 0, 0, 0, 0, 0, 0, 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(328, 1, 79, 1, 1, 1, 1, 1, 1, 1, 66, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(329, 0, 80, 0, 0, 0, 0, 0, 0, 0, 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(330, 1, 80, 1, 1, 1, 1, 1, 1, 1, 66, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(331, 0, 81, 0, 0, 0, 0, 0, 0, 0, 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(332, 1, 81, 1, 1, 1, 1, 1, 1, 1, 66, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(333, 0, 82, 0, 0, 0, 0, 0, 0, 0, 67, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(334, 1, 82, 1, 1, 1, 1, 1, 1, 1, 67, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(335, 0, 83, 0, 0, 0, 0, 0, 0, 0, 67, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(336, 1, 83, 1, 1, 1, 1, 1, 1, 1, 67, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(337, 0, 84, 0, 0, 0, 0, 0, 0, 0, 68, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(338, 1, 84, 1, 1, 1, 1, 1, 1, 1, 68, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(339, 0, 85, 0, 0, 0, 0, 0, 0, 0, 68, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(340, 1, 85, 1, 1, 1, 1, 1, 1, 1, 68, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(341, 0, 86, 0, 0, 0, 0, 0, 0, 0, 68, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(342, 1, 86, 1, 1, 1, 1, 1, 1, 1, 68, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(343, 0, 87, 0, 0, 0, 0, 0, 0, 0, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(344, 1, 87, 1, 1, 1, 1, 1, 1, 1, 63, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(345, 0, 88, 0, 0, 0, 0, 0, 0, 0, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(346, 1, 88, 1, 1, 1, 1, 1, 1, 1, 63, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(347, 0, 89, 0, 0, 0, 0, 0, 0, 0, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(348, 1, 89, 1, 1, 1, 1, 1, 1, 1, 63, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(349, 0, 90, 0, 0, 0, 0, 0, 0, 0, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, 1, 90, 1, 1, 1, 1, 1, 1, 1, 63, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(351, 0, 91, 0, 0, 0, 0, 0, 0, 0, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(352, 1, 91, 1, 1, 1, 1, 1, 1, 1, 63, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(353, 0, 92, 0, 0, 0, 0, 0, 0, 0, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(354, 1, 92, 1, 1, 1, 1, 1, 1, 1, 63, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(355, 0, 93, 0, 0, 0, 0, 0, 0, 0, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(356, 1, 93, 1, 1, 1, 1, 1, 1, 1, 63, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(357, 0, 94, 0, 0, 0, 0, 0, 0, 0, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(358, 1, 94, 1, 1, 1, 1, 1, 1, 1, 63, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(359, 0, 95, 0, 0, 0, 0, 0, 0, 0, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(360, 1, 95, 1, 1, 1, 1, 1, 1, 1, 63, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(361, 0, 96, 0, 0, 0, 0, 0, 0, 0, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(362, 1, 96, 1, 1, 1, 1, 1, 1, 1, 63, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(363, 0, 97, 0, 0, 0, 0, 0, 0, 0, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(364, 1, 97, 1, 1, 1, 1, 1, 1, 1, 63, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(365, 0, 98, 0, 0, 0, 0, 0, 0, 0, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(366, 1, 98, 1, 1, 1, 1, 1, 1, 1, 63, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(367, 0, 99, 0, 0, 0, 0, 0, 0, 0, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(368, 1, 99, 1, 1, 1, 1, 1, 1, 1, 63, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(369, 0, 100, 0, 0, 0, 0, 0, 0, 0, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(370, 1, 100, 1, 1, 1, 1, 1, 1, 1, 63, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(371, 0, 101, 0, 0, 0, 0, 0, 0, 0, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(372, 1, 101, 1, 1, 1, 1, 1, 1, 1, 63, '0000-00-00 00:00:00', '2021-01-15 17:05:07'),
(373, 0, 102, 0, 0, 0, 0, 0, 0, 0, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(374, 1, 102, 1, 1, 1, 1, 1, 1, 1, 63, '0000-00-00 00:00:00', '2021-01-15 17:05:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ref_group`
--
ALTER TABLE `ref_group`
  ADD PRIMARY KEY (`id_group`);

--
-- Indexes for table `ref_module`
--
ALTER TABLE `ref_module`
  ADD PRIMARY KEY (`id_module`),
  ADD UNIQUE KEY `id_module` (`id_module`);

--
-- Indexes for table `ref_user`
--
ALTER TABLE `ref_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `ref_user_access`
--
ALTER TABLE `ref_user_access`
  ADD PRIMARY KEY (`id_user_access`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ref_group`
--
ALTER TABLE `ref_group`
  MODIFY `id_group` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ref_module`
--
ALTER TABLE `ref_module`
  MODIFY `id_module` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `ref_user`
--
ALTER TABLE `ref_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ref_user_access`
--
ALTER TABLE `ref_user_access`
  MODIFY `id_user_access` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=375;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
