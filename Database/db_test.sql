-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2018 at 12:10 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `bonus`
--

CREATE TABLE `bonus` (
  `bonus_id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `bonus` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(50) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `country` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `FirstName`, `LastName`, `phone`, `address`, `city`, `country`) VALUES
(1, 'Carine ', 'Schmitt', '40.32.2555', '54, rue Royale', 'Nantes', 'France'),
(2, 'Jean', 'King', '7025551838', '8489 Strong St.', 'Las Vegas', 'USA'),
(3, 'Peter', 'Ferguson', '03 9520 4555', '636 St Kilda Road', 'Melbourne', 'Australia'),
(4, 'Janine ', 'Labrune', '40.67.8555', '67, rue des Cinquante Otages', 'Nantes', 'France'),
(5, 'Jonas ', 'Bergulfsen', '07-98 9555', 'Erling Skakkes gate 78', 'Stavern', 'Norway'),
(6, 'Susan', 'Nelson', '4155551450', '5677 Strong St.', 'San Rafael', 'USA'),
(7, 'Zbyszek ', 'Piestrzeniewicz', '(26) 642-7555', 'ul. Filtrowa 68', 'Warszawa', 'Poland'),
(8, 'Roland', 'Keitel', '+49 69 66 90 2555', 'Lyonerstr. 34', 'Frankfurt', 'Germany'),
(9, 'Julie', 'Murphy', '6505555787', '5557 North Pendale Street', 'San Francisco', 'USA'),
(10, 'Kwai', 'Lee', '2125557818', '897 Long Airport Avenue', 'NYC', 'USA'),
(11, 'Diego ', 'Freyre', '(91) 555 94 44', 'C/ Moralzarzal, 86', 'Madrid', 'Spain'),
(12, 'Christina ', 'Berglund', '0921-12 3555', 'Berguvsvägen  8', 'Luleå', 'Sweden'),
(13, 'Jytte ', 'Petersen', '31 12 3555', 'Vinbæltet 34', 'Kobenhavn', 'Denmark'),
(14, 'Mary ', 'Saveley', '78.32.5555', '2, rue du Commerce', 'Lyon', 'France'),
(15, 'Eric', 'Natividad', '+65 221 7555', 'Bronz Sok.', 'Singapore', 'Singapore'),
(16, 'Jeff', 'Young', '2125557413', '4092 Furth Circle', 'NYC', 'USA'),
(17, 'Kelvin', 'Leong', '2155551555', '7586 Pompton St.', 'Allentown', 'USA'),
(18, 'Juri', 'Hashimoto', '6505556809', '9408 Furth Circle', 'Burlingame', 'USA'),
(19, 'Wendy', 'Victorino', '+65 224 1555', '106 Linden Road Sandown', 'Singapore', 'Singapore'),
(20, 'Veysel', 'Oeztan', '+47 2267 3215', 'Brehmen St. 121', 'Bergen', 'Norway  '),
(21, 'Keith', 'Franco', '2035557845', '149 Spinnaker Dr.', 'New Haven', 'USA'),
(22, 'Isabel ', 'de Castro', '(1) 356-5555', 'Estrada da saúde n. 58', 'Lisboa', 'Portugal'),
(23, 'Martine ', 'Rancé', '20.16.1555', '184, chaussée de Tournai', 'Lille', 'France'),
(24, 'Marie', 'Bertrand', '(1) 42.34.2555', '265, boulevard Charonne', 'Paris', 'France'),
(25, 'Jerry', 'Tseng', '6175555555', '4658 Baden Av.', 'Cambridge', 'USA'),
(26, 'Julie', 'King', '2035552570', '25593 South Bay Ln.', 'Bridgewater', 'USA'),
(27, 'Mory', 'Kentary', '+81 06 6342 5555', '1-6-20 Dojima', 'Kita-ku', 'Japan'),
(28, 'Michael', 'Frick', '2125551500', '2678 Kingston Rd.', 'NYC', 'USA'),
(29, 'Matti', 'Karttunen', '90-224 8555', 'Keskuskatu 45', 'Helsinki', 'Finland'),
(30, 'Rachel', 'Ashworth', '(171) 555-1555', 'Fauntleroy Circus', 'Manchester', 'UK'),
(31, 'Dean', 'Cassidy', '+353 1862 1555', '25 Maiden Lane', 'Dublin', 'Ireland'),
(32, 'Leslie', 'Taylor', '6175558428', '16780 Pompton St.', 'Brickhaven', 'USA'),
(33, 'Elizabeth', 'Devon', '(171) 555-2282', '12, Berkeley Gardens Blvd', 'Liverpool', 'UK'),
(34, 'Yoshi ', 'Tamuri', '(604) 555-3392', '1900 Oak St.', 'Vancouver', 'Canada'),
(35, 'Miguel', 'Barajas', '6175557555', '7635 Spinnaker Dr.', 'Brickhaven', 'USA'),
(36, 'Julie', 'Young', '6265557265', '78934 Hillside Dr.', 'Pasadena', 'USA'),
(37, 'Brydey', 'Walker', '+612 9411 1555', 'Suntec Tower Three', 'Singapore', 'Singapore'),
(38, 'Frédérique ', 'Citeaux', '88.60.1555', '24, place Kléber', 'Strasbourg', 'France'),
(39, 'Mike', 'Gao', '+852 2251 1555', 'Bank of China Tower', 'Central Hong Kong', 'Hong Kong'),
(40, 'Eduardo ', 'Saavedra', '(93) 203 4555', 'Rambla de Cataluña, 23', 'Barcelona', 'Spain'),
(41, 'Mary', 'Young', '3105552373', '4097 Douglas Av.', 'Glendale', 'USA'),
(42, 'Horst ', 'Kloss', '0372-555188', 'Taucherstraße 10', 'Cunewalde', 'Germany'),
(43, 'Palle', 'Ibsen', '86 21 3555', 'Smagsloget 45', 'Århus', 'Denmark'),
(44, 'Jean ', 'Fresnière', '(514) 555-8054', '43 rue St. Laurent', 'Montréal', 'Canada'),
(45, 'Alejandra ', 'Camino', '(91) 745 6555', 'Gran Vía, 1', 'Madrid', 'Spain'),
(46, 'Valarie', 'Thompson', '7605558146', '361 Furth Circle', 'San Diego', 'USA'),
(47, 'Helen ', 'Bennett', '(198) 555-8888', 'Garden House', 'Cowes', 'UK'),
(48, 'Annette ', 'Roulet', '61.77.6555', '1 rue Alsace-Lorraine', 'Toulouse', 'France'),
(49, 'Renate ', 'Messner', '069-0555984', 'Magazinweg 7', 'Frankfurt', 'Germany'),
(50, 'Paolo ', 'Accorti', '011-4988555', 'Via Monte Bianco 34', 'Torino', 'Italy'),
(51, 'Daniel', 'Da Silva', '+33 1 46 62 7555', '27 rue du Colonel Pierre Avia', 'Paris', 'France'),
(52, 'Daniel ', 'Tonini', '30.59.8555', '67, avenue de l\'Europe', 'Versailles', 'France'),
(53, 'Henriette ', 'Pfalzheim', '0221-5554327', 'Mehrheimerstr. 369', 'Köln', 'Germany'),
(54, 'Elizabeth ', 'Lincoln', '(604) 555-4555', '23 Tsawassen Blvd.', 'Tsawassen', 'Canada'),
(55, 'Peter ', 'Franken', '089-0877555', 'Berliner Platz 43', 'München', 'Germany'),
(56, 'Anna', 'O\'Hara', '02 9936 8555', '201 Miller Street', 'North Sydney', 'Australia'),
(57, 'Giovanni ', 'Rovelli', '035-640555', 'Via Ludovico il Moro 22', 'Bergamo', 'Italy'),
(58, 'Adrian', 'Huxley', '+61 2 9495 8555', 'Monitor Money Building', 'Chatswood', 'Australia'),
(59, 'Marta', 'Hernandez', '6175558555', '39323 Spinnaker Dr.', 'Cambridge', 'USA'),
(60, 'Ed', 'Harrison', '+41 26 425 50 01', 'Rte des Arsenaux 41 ', 'Fribourg', 'Switzerland'),
(61, 'Mihael', 'Holz', '0897-034555', 'Grenzacherweg 237', 'Genève', 'Switzerland'),
(62, 'Jan', 'Klaeboe', '+47 2212 1555', 'Drammensveien 126A', 'Oslo', 'Norway  '),
(63, 'Bradley', 'Schuyler', '+31 20 491 9555', 'Kingsfordweg 151', 'Amsterdam', 'Netherlands'),
(64, 'Mel', 'Andersen', '030-0074555', 'Obere Str. 57', 'Berlin', 'Germany'),
(65, 'Pirkko', 'Koskitalo', '981-443655', 'Torikatu 38', 'Oulu', 'Finland'),
(66, 'Catherine ', 'Dewey', '(02) 5554 67', 'Rue Joseph-Bens 532', 'Bruxelles', 'Belgium'),
(67, 'Steve', 'Frick', '9145554562', '3758 North Pendale Street', 'White Plains', 'USA'),
(68, 'Wing', 'Huang', '5085559555', '4575 Hillside Dr.', 'New Bedford', 'USA'),
(69, 'Julie', 'Brown', '6505551386', '7734 Strong St.', 'San Francisco', 'USA'),
(70, 'Mike', 'Graham', '+64 9 312 5555', '162-164 Grafton Road', 'Auckland  ', 'New Zealand'),
(71, 'Ann ', 'Brown', '(171) 555-0297', '35 King George', 'London', 'UK'),
(72, 'William', 'Brown', '2015559350', '7476 Moss Rd.', 'Newark', 'USA'),
(73, 'Ben', 'Calaghan', '61-7-3844-6555', '31 Duncan St. West End', 'South Brisbane', 'Australia'),
(74, 'Kalle', 'Suominen', '+358 9 8045 555', 'Software Engineering Center', 'Espoo', 'Finland'),
(75, 'Philip ', 'Cramer', '0555-09555', 'Maubelstr. 90', 'Brandenburg', 'Germany'),
(76, 'Francisca', 'Cervantes', '2155554695', '782 First Street', 'Philadelphia', 'USA'),
(77, 'Jesus', 'Fernandez', '+34 913 728 555', 'Merchants House', 'Madrid', 'Spain'),
(78, 'Brian', 'Chandler', '2155554369', '6047 Douglas Av.', 'Los Angeles', 'USA'),
(79, 'Patricia ', 'McKenna', '2967 555', '8 Johnstown Road', 'Cork', 'Ireland'),
(80, 'Laurence ', 'Lebihan', '91.24.4555', '12, rue des Bouchers', 'Marseille', 'France'),
(81, 'Paul ', 'Henriot', '26.47.1555', '59 rue de l\'Abbaye', 'Reims', 'France'),
(82, 'Armand', 'Kuger', '+27 21 550 3555', '1250 Pretorius Street', 'Hatfield', 'South Africa'),
(83, 'Wales', 'MacKinlay', '64-9-3763555', '199 Great North Road', 'Auckland', 'New Zealand'),
(84, 'Karin', 'Josephs', '0251-555259', 'Luisenstr. 48', 'Münster', 'Germany'),
(85, 'Juri', 'Yoshido', '6175559555', '8616 Spinnaker Dr.', 'Boston', 'USA'),
(86, 'Dorothy', 'Young', '6035558647', '2304 Long Airport Avenue', 'Nashua', 'USA'),
(87, 'Lino ', 'Rodriguez', '(1) 354-2555', 'Jardim das rosas n. 32', 'Lisboa', 'Portugal'),
(88, 'Braun', 'Urs', '0452-076555', 'Hauptstr. 29', 'Bern', 'Switzerland'),
(89, 'Allen', 'Nelson', '6175558555', '7825 Douglas Av.', 'Brickhaven', 'USA'),
(90, 'Pascale ', 'Cartrain', '(071) 23 67 2555', 'Boulevard Tirou, 255', 'Charleroi', 'Belgium'),
(91, 'Georg ', 'Pipps', '6562-9555', 'Geislweg 14', 'Salzburg', 'Austria'),
(92, 'Arnold', 'Cruz', '+63 2 555 3587', '15 McCallum Street', 'Makati City', 'Philippines'),
(93, 'Maurizio ', 'Moroni', '0522-556555', 'Strada Provinciale 124', 'Reggio Emilia', 'Italy'),
(94, 'Akiko', 'Shimamura', '+81 3 3584 0555', '2-2-8 Roppongi', 'Minato-ku', 'Japan'),
(95, 'Dominique', 'Perrier', '(1) 47.55.6555', '25, rue Lauriston', 'Paris', 'France'),
(96, 'Rita ', 'Müller', '0711-555361', 'Adenauerallee 900', 'Stuttgart', 'Germany'),
(97, 'Sarah', 'McRoy', '04 499 9555', '101 Lambton Quay', 'Wellington', 'New Zealand'),
(98, 'Michael', 'Donnermeyer', ' +49 89 61 08 9555', 'Hansastr. 15', 'Munich', 'Germany'),
(99, 'Maria', 'Hernandez', '2125558493', '5905 Pompton St.', 'NYC', 'USA'),
(100, 'Alexander ', 'Feuer', '0342-555176', 'Heerstr. 22', 'Leipzig', 'Germany'),
(101, 'Dan', 'Lewis', '2035554407', '2440 Pompton St.', 'Glendale', 'USA'),
(102, 'Martha', 'Larsson', '0695-34 6555', 'Åkergatan 24', 'Bräcke', 'Sweden'),
(103, 'Sue', 'Frick', '4085553659', '3086 Ingle Ln.', 'San Jose', 'USA'),
(104, 'Roland ', 'Mendel', '7675-3555', 'Kirchgasse 6', 'Graz', 'Austria'),
(105, 'Leslie', 'Murphy', '2035559545', '567 North Pendale Street', 'New Haven', 'USA'),
(106, 'Yu', 'Choi', '2125551957', '5290 North Pendale Street', 'NYC', 'USA'),
(107, 'Martín ', 'Sommer', '(91) 555 22 82', 'C/ Araquil, 67', 'Madrid', 'Spain'),
(108, 'Sven ', 'Ottlieb', '0241-039123', 'Walserweg 21', 'Aachen', 'Germany'),
(109, 'Violeta', 'Benitez', '5085552555', '1785 First Street', 'New Bedford', 'USA'),
(110, 'Carmen', 'Anton', '+34 913 728555', 'c/ Gobelas, 19-1 Urb. La Florida', 'Madrid', 'Spain'),
(111, 'Sean', 'Clenahan', '61-9-3844-6555', '7 Allen Street', 'Glen Waverly', 'Australia'),
(112, 'Franco', 'Ricotti', '+39 022515555', '20093 Cologno Monzese', 'Milan', 'Italy'),
(113, 'Steve', 'Thompson', '3105553722', '3675 Furth Circle', 'Burbank', 'USA'),
(114, 'Hanna ', 'Moos', '0621-08555', 'Forsterstr. 57', 'Mannheim', 'Germany'),
(115, 'Alexander ', 'Semenov', '+7 812 293 0521', '2 Pobedy Square', 'Saint Petersburg', 'Russia'),
(116, 'Raanan', 'Altagar,G M', '+ 972 9 959 8555', '3 Hagalim Blv.', 'Herzlia', 'Israel'),
(117, 'José Pedro ', 'Roel', '(95) 555 82 82', 'C/ Romero, 33', 'Sevilla', 'Spain'),
(118, 'Rosa', 'Salazar', '2155559857', '11328 Douglas Av.', 'Philadelphia', 'USA'),
(119, 'Sue', 'Taylor', '4155554312', '2793 Furth Circle', 'Brisbane', 'USA'),
(120, 'Thomas ', 'Smith', '(171) 555-7555', '120 Hanover Sq.', 'London', 'UK'),
(121, 'Valarie', 'Franco', '6175552555', '6251 Ingle Ln.', 'Boston', 'USA'),
(122, 'Tony', 'Snowden', '+64 9 5555500', 'Arenales 1938 3\'A\'', 'Auckland  ', 'New Zealand');

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
  `id_parent` int(11) NOT NULL DEFAULT '0',
  `name_module` varchar(225) NOT NULL,
  `name_controller` varchar(225) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `sort` int(3) NOT NULL DEFAULT '0',
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
(61, 0, 'Bonus', 'bonus', 'money', 2, '2018-08-02 17:43:07', '2018-08-02 17:43:40'),
(62, 0, 'Data Karyawan', 'user', 'file-powerpoint-o', 1, '2018-08-03 14:57:02', '2018-08-03 14:57:38');

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
(1, 1, 0, 'Administrator TEST', 'admin', 'c3284d0f94606de1fd2af172aba15bf3', '2016-08-21 00:00:00', '0000-00-00 00:00:00'),
(3, 2, 3000000, 'Ahmad', 'ahmad', '19da52afc75eddcc00e951b9a8f22bb8', '2018-08-03 04:42:40', '0000-00-00 00:00:00'),
(4, 2, 3100000, 'Ani', 'ani', '778bd9bb3ed2c535dc1b4c9916e0bbe1', '2018-08-03 04:43:16', '0000-00-00 00:00:00'),
(5, 2, 2500000, 'Budi', 'budi', '3074d9b7ba24b27d9ae573e9c021a487', '2018-08-03 04:43:51', '0000-00-00 00:00:00'),
(6, 2, 4500000, 'Dedi', 'dedi', '643ce26cbd170209c48f424e0f568d95', '2018-08-03 04:45:17', '0000-00-00 00:00:00'),
(7, 2, 4000000, 'Eni', 'eni', 'c4e64f52b9b04e4612428ba9be4745d7', '2018-08-03 04:45:51', '0000-00-00 00:00:00'),
(8, 2, 2900000, 'Fitri', 'fitri', 'cc64d9da75a1414a49ea891f29f46e38', '2018-08-03 04:46:21', '0000-00-00 00:00:00'),
(9, 2, 3500000, 'Galih', 'Galih', '0cf6b734bf713f2cc4a6f568e185a0e9', '2018-08-03 04:46:55', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ref_user_access`
--

CREATE TABLE `ref_user_access` (
  `id_user_access` int(11) NOT NULL,
  `id_group` int(11) NOT NULL,
  `id_module` int(11) NOT NULL,
  `akses` int(1) NOT NULL DEFAULT '0',
  `tambah` int(1) NOT NULL DEFAULT '0',
  `lihat` int(1) NOT NULL DEFAULT '0',
  `edit` int(1) NOT NULL DEFAULT '0',
  `hapus` int(1) NOT NULL DEFAULT '0',
  `ex_excel` int(1) NOT NULL DEFAULT '0',
  `ex_pdf` int(1) NOT NULL DEFAULT '0',
  `id_parent` int(11) NOT NULL,
  `create_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_user_access`
--

INSERT INTO `ref_user_access` (`id_user_access`, `id_group`, `id_module`, `akses`, `tambah`, `lihat`, `edit`, `hapus`, `ex_excel`, `ex_pdf`, `id_parent`, `create_at`, `modified_at`) VALUES
(1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, '2016-08-24 00:00:00', '2018-08-03 14:58:12'),
(2, 1, 2, 1, 1, 1, 1, 1, 0, 0, 1, '2016-08-24 00:00:00', '2018-08-03 14:58:12'),
(3, 1, 3, 1, 1, 1, 1, 1, 0, 0, 1, '2016-08-24 00:00:00', '2018-08-03 14:58:12'),
(288, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, 1, 61, 1, 1, 1, 1, 1, 1, 1, 0, '0000-00-00 00:00:00', '2018-08-03 14:58:12'),
(293, 0, 62, 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, 1, 62, 1, 1, 1, 1, 1, 1, 1, 0, '0000-00-00 00:00:00', '2018-08-03 14:58:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bonus`
--
ALTER TABLE `bonus`
  ADD PRIMARY KEY (`bonus_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `bonus`
--
ALTER TABLE `bonus`
  MODIFY `bonus_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `ref_group`
--
ALTER TABLE `ref_group`
  MODIFY `id_group` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ref_module`
--
ALTER TABLE `ref_module`
  MODIFY `id_module` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `ref_user`
--
ALTER TABLE `ref_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ref_user_access`
--
ALTER TABLE `ref_user_access`
  MODIFY `id_user_access` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=295;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
