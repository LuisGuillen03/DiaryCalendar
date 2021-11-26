-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 25, 2021 at 12:34 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `calendar2`
--

-- --------------------------------------------------------

--
-- Table structure for table `actividad`
--

CREATE TABLE `actividad` (
  `ID_Act` int(255) NOT NULL,
  `H_ini` timestamp NULL DEFAULT NULL,
  `H_fin` timestamp NULL DEFAULT NULL,
  `Descrip` varchar(30) NOT NULL,
  `Title` varchar(20) NOT NULL,
  `User_ID` int(255) NOT NULL,
  `Day_ID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `day`
--

CREATE TABLE `day` (
  `ID_Day` int(20) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `Month_ID` int(20) NOT NULL,
  `number` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `day`
--

INSERT INTO `day` (`ID_Day`, `Name`, `Month_ID`, `number`) VALUES
(1, 'Viernes', 1, '1'),
(2, 'Sábado', 1, '2'),
(3, 'Domingo', 1, '3'),
(4, 'Lunes', 1, '4'),
(5, 'Martes', 1, '5'),
(6, 'Miércoles', 1, '6'),
(7, 'Jueves', 1, '7'),
(8, 'Viernes', 1, '8'),
(9, 'Sábado', 1, '9'),
(10, 'Domingo', 1, '10'),
(11, 'Lunes', 1, '11'),
(12, 'Martes', 1, '12'),
(13, 'Miercoles', 1, '13'),
(14, 'Jueves', 1, '14'),
(15, 'Viernes', 1, '15'),
(16, 'Sábado', 1, '16'),
(17, 'Domingo', 1, '17'),
(18, 'Lunes', 1, '18'),
(19, 'Martes', 1, '19'),
(20, 'Miércoles', 1, '20'),
(21, 'Jueves', 1, '21'),
(22, 'Viernes', 1, '22'),
(23, 'Sábado', 1, '23'),
(24, 'Domingo', 1, '24'),
(25, 'Lunes', 1, '25'),
(26, 'Martes', 1, '26'),
(27, 'Miércoles', 1, '27'),
(28, 'Jueves', 1, '28'),
(29, 'Viernes', 1, '29'),
(30, 'Sábado', 1, '30'),
(31, 'Domingo ', 1, '31'),
(32, 'Lunes', 2, '1'),
(33, 'Martes', 2, '2'),
(34, 'Miércoles', 2, '3'),
(35, 'Jueves', 2, '4'),
(36, 'Viernes', 2, '5'),
(37, 'Sábado', 2, '6'),
(38, 'Domingo', 2, '7'),
(39, 'Lunes', 2, '8'),
(40, 'Martes', 2, '9'),
(41, 'Miércoles', 2, '10'),
(42, 'Jueves', 2, '11'),
(43, 'Viernes', 2, '12'),
(44, 'Sábado', 2, '13'),
(45, 'Domingo', 2, '14'),
(46, 'Lunes', 2, '15'),
(47, 'Martes', 2, '16'),
(48, 'Miércoles', 2, '17'),
(49, 'Jueves', 2, '18'),
(50, 'Viernes', 2, '19'),
(51, 'Sábado', 2, '20'),
(52, 'Domingo', 2, '21'),
(53, 'Lunes', 2, '22'),
(54, 'Martes', 2, '23'),
(55, 'Miércoles', 2, '24'),
(56, 'Jueves', 2, '25'),
(57, 'Viernes', 2, '26'),
(58, 'Sábado', 2, '27'),
(59, 'Domingo', 2, '28'),
(60, 'Lunes', 3, '1'),
(61, 'Martes', 3, '2'),
(62, 'Miércoles', 3, '3'),
(63, 'Jueves', 3, '4'),
(64, 'Viernes', 3, '5'),
(65, 'Sábado', 3, '6'),
(66, 'Domingo', 3, '7'),
(67, 'Lunes', 3, '8'),
(68, 'Martes', 3, '9'),
(69, 'Miércoles', 3, '10'),
(70, 'Jueves', 3, '11'),
(71, 'Viernes', 3, '12'),
(72, 'Sábado', 3, '13'),
(73, 'Domingo', 3, '14'),
(74, 'Lunes', 3, '15'),
(75, 'Martes', 3, '16'),
(76, 'Miércoles', 3, '17'),
(77, 'Jueves', 3, '18'),
(78, 'Viernes', 3, '19'),
(79, 'Sábado', 3, '20'),
(80, 'Domingo', 3, '21'),
(81, 'Lunes', 3, '22'),
(82, 'Martes', 3, '23'),
(83, 'Miércoles', 3, '24'),
(84, 'Jueves', 3, '25'),
(85, 'Viernes', 3, '26'),
(86, 'Sábado', 3, '27'),
(87, 'Domingo', 3, '28'),
(88, 'Lunes', 3, '29'),
(89, 'Martes', 3, '30'),
(90, 'Miércoles', 3, '31'),
(91, 'Jueves', 4, '1'),
(92, 'Viernes', 4, '2'),
(93, 'Sábado', 4, '3'),
(94, 'Domingo', 4, '4'),
(95, 'Lunes', 4, '5'),
(96, 'Martes', 4, '6'),
(97, 'Miércoles', 4, '7'),
(98, 'Jueves', 4, '8'),
(99, 'Viernes', 4, '9'),
(100, 'Sábado', 4, '10'),
(101, 'Domingo', 4, '11'),
(102, 'Lunes', 4, '12'),
(103, 'Martes', 4, '13'),
(104, 'Miércoles', 4, '14'),
(105, 'Jueves', 4, '15'),
(106, 'Viernes', 4, '16'),
(107, 'Sábado', 4, '17'),
(108, 'Domingo', 4, '18'),
(109, 'Lunes', 4, '19'),
(110, 'Martes', 4, '20'),
(111, 'Miercoles', 4, '21'),
(112, 'Jueves', 4, '22'),
(113, 'Viernes', 4, '23'),
(114, 'Sábado', 4, '24'),
(115, 'Domingo', 4, '25'),
(116, 'Lunes', 4, '26'),
(117, 'Martes', 4, '27'),
(118, 'Miércoles', 4, '28'),
(119, 'Jueves', 4, '29'),
(120, 'Viernes', 4, '30'),
(121, 'Sábado', 5, '1'),
(122, 'Domingo', 5, '2'),
(123, 'Lunes', 5, '3'),
(124, 'Martes', 5, '4'),
(125, 'Miércoles', 5, '5'),
(126, 'Jueves', 5, '6'),
(127, 'Viernes', 5, '7'),
(128, 'Sábado', 5, '8'),
(129, 'Domingo', 5, '9'),
(130, 'Lunes', 5, '10'),
(131, 'Martes', 5, '11'),
(132, 'Miércoles', 5, '12'),
(133, 'Jueves', 5, '13'),
(134, 'Viernes', 5, '14'),
(135, 'Sábado', 5, '15'),
(136, 'Domingo', 5, '16'),
(137, 'Lunes', 5, '17'),
(138, 'Martes', 5, '18'),
(139, 'Miércoles', 5, '19'),
(140, 'Jueves', 5, '20'),
(141, 'Viernes', 5, '21'),
(142, 'Sábado', 5, '22'),
(143, 'Domingo', 5, '23'),
(144, 'Lunes', 5, '24'),
(145, 'Martes', 5, '25'),
(146, 'Miércoles', 5, '26'),
(147, 'Jueves', 5, '27'),
(148, 'Viernes', 5, '28'),
(149, 'Sábado', 5, '29'),
(150, 'Domingo', 5, '30'),
(151, 'Lunes', 5, '31'),
(152, 'Martes', 6, '1'),
(153, 'Miércoles', 6, '2'),
(154, 'Jueves', 6, '3'),
(155, 'Viernes', 6, '4'),
(156, 'Sábado', 6, '5'),
(157, 'Domingo', 6, '6'),
(158, 'Lunes', 6, '7'),
(159, 'Martes', 6, '8'),
(160, 'Miércoles', 6, '9'),
(161, 'Jueves', 6, '10'),
(162, 'Viernes', 6, '11'),
(163, 'Sábado', 6, '12'),
(164, 'Domingo', 6, '13'),
(165, 'Lunes', 6, '14'),
(166, 'Martes', 6, '15'),
(167, 'Miércoles', 6, '16'),
(168, 'Jueves', 6, '17'),
(169, 'Viernes', 6, '18'),
(170, 'Sábado', 6, '19'),
(171, 'Domingo', 6, '20'),
(172, 'Lunes', 6, '21'),
(173, 'Martes', 6, '22'),
(174, 'Miércoles', 6, '23'),
(175, 'Jueves', 6, '24'),
(176, 'Viernes', 6, '25'),
(177, 'Sábado', 6, '26'),
(178, 'Domingo', 6, '27'),
(179, 'Lunes', 6, '28'),
(180, 'Martes', 6, '29'),
(181, 'Miércoles', 6, '30'),
(182, 'Jueves', 7, '1'),
(183, 'Viernes', 7, '2'),
(184, 'Sábado', 7, '3'),
(185, 'Domingo', 7, '4'),
(186, 'Lunes', 7, '5'),
(187, 'Martes', 7, '6'),
(188, 'Miércoles', 7, '7'),
(189, 'Jueves', 7, '8'),
(190, 'Viernes', 7, '9'),
(191, 'Sábado', 7, '10'),
(192, 'Domingo', 7, '11'),
(193, 'Lunes', 7, '12'),
(194, 'Martes', 7, '13'),
(195, 'Miércoles', 7, '14'),
(196, 'Jueves', 7, '15'),
(197, 'Viernes', 7, '16'),
(198, 'Sábado', 7, '17'),
(199, 'Domingo', 7, '18'),
(200, 'Lunes', 7, '19'),
(201, 'Martes', 7, '20'),
(202, 'Miércoles', 7, '21'),
(203, 'Jueves', 7, '22'),
(204, 'Viernes', 7, '23'),
(205, 'Sábado', 7, '24'),
(206, 'Domingo', 7, '25'),
(207, 'Lunes', 7, '26'),
(208, 'Martes', 7, '27'),
(209, 'Miércoles', 7, '28'),
(210, 'Jueves', 7, '29'),
(211, 'Viernes', 7, '30'),
(212, 'Sábado', 7, '31'),
(213, 'Domingo', 8, '1'),
(214, 'Lunes', 8, '2'),
(215, 'Martes', 8, '3'),
(216, 'Miércoles', 8, '4'),
(217, 'Jueves', 8, '5'),
(218, 'Viernes', 8, '6'),
(219, 'Sábado', 8, '7'),
(220, 'Domingo', 8, '8'),
(221, 'Lunes', 8, '9'),
(222, 'Martes', 8, '10'),
(223, 'Miércoles', 8, '11'),
(224, 'Jueves', 8, '12'),
(225, 'Viernes', 8, '13'),
(226, 'Sábado', 8, '14'),
(227, 'Domingo', 8, '15'),
(228, 'Lunes', 8, '16'),
(229, 'Martes', 8, '17'),
(230, 'Miércoles', 8, '18'),
(231, 'Jueves', 8, '19'),
(232, 'Viernes', 8, '20'),
(233, 'Sábado', 8, '21'),
(234, 'Domingo', 8, '22'),
(235, 'Lunes', 8, '23'),
(236, 'Martes', 8, '24'),
(237, 'Miércoles', 8, '25'),
(238, 'Jueves', 8, '26'),
(239, 'Viernes', 8, '27'),
(240, 'Sábado', 8, '28'),
(241, 'Domingo', 8, '29'),
(242, 'Lunes', 8, '30'),
(243, 'Martes', 8, '31'),
(244, 'Miércoles', 9, '1'),
(245, 'Jueves', 9, '2'),
(246, 'Viernes', 9, '3'),
(247, 'Sábado', 9, '4'),
(248, 'Domingo', 9, '5'),
(249, 'Lunes', 9, '6'),
(250, 'Martes', 9, '7'),
(251, 'Miércoles', 9, '8'),
(252, 'Jueves', 9, '9'),
(253, 'Viernes', 9, '10'),
(254, 'Sábado', 9, '11'),
(255, 'Domingo', 9, '12'),
(256, 'Lunes', 9, '13'),
(257, 'Martes', 9, '14'),
(258, 'Miércoles', 9, '15'),
(259, 'Jueves', 9, '16'),
(260, 'Viernes', 9, '17'),
(261, 'Sábado', 9, '18'),
(262, 'Domingo', 9, '19'),
(263, 'Lunes', 9, '20'),
(264, 'Martes', 9, '21'),
(265, 'Miércoles', 9, '22'),
(266, 'Jueves', 9, '23'),
(267, 'Viernes', 9, '24'),
(268, 'Sábado', 9, '25'),
(269, 'Domingo', 9, '26'),
(270, 'Lunes', 9, '27'),
(271, 'Martes', 9, '28'),
(272, 'Miércoles', 9, '29'),
(273, 'Jueves', 9, '30'),
(274, 'Viernes', 10, '1'),
(275, 'Sábado', 10, '2'),
(276, 'Domingo', 10, '3'),
(277, 'Lunes', 10, '4'),
(278, 'Martes', 10, '5'),
(279, 'Miércoles', 10, '6'),
(280, 'Jueves', 10, '7'),
(281, 'Viernes', 10, '8'),
(282, 'Sábado', 10, '9'),
(283, 'Domingo', 10, '10'),
(284, 'Lunes', 10, '11'),
(285, 'Martes', 10, '12'),
(286, 'Miércoles', 10, '13'),
(287, 'Jueves', 10, '14'),
(288, 'Viernes', 10, '15'),
(289, 'Sábado', 10, '16'),
(290, 'Domingo', 10, '17'),
(291, 'Lunes', 10, '18'),
(292, 'Martes', 10, '19'),
(293, 'Miércoles', 10, '20'),
(294, 'Jueves', 10, '21'),
(295, 'Viernes', 10, '22'),
(296, 'Sábado', 10, '23'),
(297, 'Domingo', 10, '24'),
(298, 'Lunes', 10, '25'),
(299, 'Martes', 10, '26'),
(300, 'Miércoles', 10, '27'),
(301, 'Jueves', 10, '28'),
(302, 'Viernes', 10, '29'),
(303, 'Sábado', 10, '30'),
(304, 'Domingo', 10, '31'),
(305, 'Lunes', 11, '1'),
(306, 'Martes', 11, '2'),
(307, 'Miércoles', 11, '3'),
(308, 'Jueves', 11, '4'),
(309, 'Viernes', 11, '5'),
(310, 'Sábado', 11, '6'),
(311, 'Domingo', 11, '7'),
(312, 'Lunes', 11, '8'),
(313, 'Martes', 11, '9'),
(314, 'Miércoles', 11, '10'),
(315, 'Jueves', 11, '11'),
(316, 'Viernes', 11, '12'),
(317, 'Sábado', 11, '13'),
(318, 'Domingo', 11, '14'),
(319, 'Lunes', 11, '15'),
(320, 'Martes', 11, '16'),
(321, 'Miércoles', 11, '17'),
(322, 'Jueves', 11, '18'),
(323, 'Viernes', 11, '19'),
(324, 'Sábado', 11, '20'),
(325, 'Domingo', 11, '21'),
(326, 'Lunes', 11, '22'),
(327, 'Martes', 11, '23'),
(328, 'Miércoles', 11, '24'),
(329, 'Jueves', 11, '25'),
(330, 'Viernes', 11, '26'),
(331, 'Sábado', 11, '27'),
(332, 'Domingo', 11, '28'),
(333, 'Lunes', 11, '29'),
(334, 'Martes', 11, '30'),
(335, 'Miércoles', 12, '1'),
(336, 'Jueves', 12, '2'),
(337, 'Viernes', 12, '3'),
(338, 'Sábado', 12, '4'),
(339, 'Domingo', 12, '5'),
(340, 'Lunes', 12, '6'),
(341, 'Martes', 12, '7'),
(342, 'Miércoles', 12, '8'),
(343, 'Jueves', 12, '9'),
(344, 'Viernes', 12, '10'),
(345, 'Sábado', 12, '11'),
(346, 'Domingo', 12, '12'),
(347, 'Lunes', 12, '13'),
(348, 'Martes', 12, '14'),
(349, 'Miércoles', 12, '15'),
(350, 'Jueves', 12, '16'),
(351, 'Viernes', 12, '17'),
(352, 'Sábado', 12, '18'),
(353, 'Domingo', 12, '19'),
(354, 'Lunes', 12, '20'),
(355, 'Martes', 12, '21'),
(356, 'Miércoles', 12, '22'),
(357, 'Jueves', 12, '23'),
(358, 'Viernes', 12, '24'),
(359, 'Sábado', 12, '25'),
(360, 'Domingo', 12, '26'),
(361, 'Lunes', 12, '27'),
(362, 'Martes', 12, '28'),
(363, 'Miércoles', 12, '29'),
(364, 'Jueves', 12, '30'),
(365, 'Viernes', 12, '31'),
(366, 'Sábado', 13, '1'),
(367, 'Domingo', 13, '2'),
(368, 'Lunes', 13, '3'),
(369, 'Martes', 13, '4'),
(370, 'Miércoles', 13, '5'),
(371, 'Jueves', 13, '6'),
(372, 'Viernes', 13, '7'),
(373, 'Sábado', 13, '8'),
(374, 'Domingo', 13, '9'),
(375, 'Lunes', 13, '10'),
(376, 'Martes', 13, '11'),
(377, 'Miércoles', 13, '12'),
(378, 'Jueves', 13, '13'),
(379, 'Viernes', 13, '14'),
(380, 'Sábado', 13, '15'),
(381, 'Domingo', 13, '16'),
(382, 'Lunes', 13, '17'),
(383, 'Martes', 13, '18'),
(384, 'Miércoles', 13, '19'),
(385, 'Jueves', 13, '20'),
(386, 'Viernes', 13, '21'),
(387, 'Sábado', 13, '22'),
(388, 'Domingo', 13, '23'),
(389, 'Lunes', 13, '24'),
(390, 'Martes', 13, '25'),
(391, 'Miércoles', 13, '26'),
(392, 'Jueves', 13, '27'),
(393, 'Viernes', 13, '28'),
(394, 'Sábado', 13, '29'),
(395, 'Domingo', 13, '30'),
(396, 'Lunes', 13, '31'),
(397, 'Martes', 14, '1'),
(398, 'Miércoles', 14, '2'),
(399, 'Jueves', 14, '3'),
(400, 'Viernes', 14, '4'),
(401, 'Sabado', 14, '5'),
(402, 'Domingo', 14, '6'),
(403, 'Lunes', 14, '7'),
(404, 'Martes', 14, '8'),
(405, 'Miércoles', 14, '9'),
(406, 'Jueves', 14, '10'),
(407, 'Viernes', 14, '11'),
(408, 'Sábado', 14, '12'),
(409, 'Domingo', 14, '13'),
(410, 'Lunes', 14, '14'),
(411, 'Martes', 14, '15'),
(412, 'Miércoles', 14, '16'),
(413, 'Jueves', 14, '17'),
(414, 'Viernes', 14, '18'),
(415, 'Sábado', 14, '19'),
(416, 'Domingo', 14, '20'),
(417, 'Lunes', 14, '21'),
(418, 'Martes', 14, '22'),
(419, 'Miércoles', 14, '23'),
(420, 'Jueves', 14, '24'),
(421, 'Viernes', 14, '25'),
(422, 'Sábado', 14, '26'),
(423, 'Domingo', 14, '27'),
(424, 'Lunes', 14, '28'),
(425, 'Martes', 15, '1'),
(426, 'Miercoles', 15, '2'),
(427, 'Jueves', 15, '3'),
(428, 'Viernes', 15, '4'),
(429, 'Sábado', 15, '5'),
(430, 'Domingo', 15, '6'),
(431, 'Lunes', 15, '7'),
(432, 'Martes', 15, '8'),
(433, 'Miércoles', 15, '9'),
(434, 'Jueves', 15, '10'),
(435, 'Viernes', 15, '11'),
(436, 'Sábado', 15, '12'),
(437, 'Domingo', 15, '13'),
(438, 'Lunes', 15, '14'),
(439, 'Martes', 15, '15'),
(440, 'Miércoles', 15, '16'),
(441, 'Jueves', 15, '17'),
(442, 'Viernes', 15, '18'),
(443, 'Sábado', 15, '19'),
(444, 'Domingo', 15, '20'),
(445, 'Lunes', 15, '21'),
(446, 'Martes', 15, '22'),
(447, 'Miércoles', 15, '23'),
(448, 'Jueves', 15, '24'),
(449, 'Viernes', 15, '25'),
(450, 'Sábado', 15, '26'),
(451, 'Domingo', 15, '27'),
(452, 'Lunes', 15, '28'),
(453, 'Martes', 15, '29'),
(454, 'Miércoles', 15, '30'),
(455, 'Jueves', 15, '31'),
(456, 'Viernes', 16, '1'),
(457, 'Sábado', 16, '2'),
(458, 'Domingo', 16, '3'),
(459, 'Lunes', 16, '4'),
(460, 'Martes', 16, '5'),
(461, 'Miércoles', 16, '6'),
(462, 'Jueves', 16, '7'),
(463, 'Viernes', 16, '8'),
(464, 'Sábado', 16, '9'),
(465, 'Domingo', 16, '10'),
(466, 'Lunes', 16, '11'),
(467, 'Martes', 16, '12'),
(468, 'Miércoles', 16, '13'),
(469, 'Jueves', 16, '14'),
(470, 'Viernes', 16, '15'),
(471, 'Sábado', 16, '16'),
(472, 'Domingo', 16, '17'),
(473, 'Lunes', 16, '18'),
(474, 'Martes', 16, '19'),
(475, 'Miércoles', 16, '20'),
(476, 'Jueves', 16, '21'),
(477, 'Viernes', 16, '22'),
(478, 'Sábado', 16, '23'),
(479, 'Domingo', 16, '24'),
(480, 'Lunes', 16, '25'),
(481, 'Martes', 16, '26'),
(482, 'Miércoles', 16, '27'),
(483, 'Jueves', 16, '28'),
(484, 'Viernes', 16, '29'),
(485, 'Sábado', 16, '30'),
(486, 'Domingo', 17, '1'),
(487, 'Lunes', 17, '2'),
(488, 'Martes', 17, '3'),
(489, 'Miércoles', 17, '4'),
(490, 'Jueves', 17, '5'),
(491, 'Viernes', 17, '6'),
(492, 'Sábado', 17, '7'),
(493, 'Domingo', 17, '8'),
(494, 'Lunes', 17, '9'),
(495, 'Martes', 17, '10'),
(496, 'Miércoles', 17, '11'),
(497, 'Jueves', 17, '12'),
(498, 'Viernes', 17, '13'),
(499, 'Sábado', 17, '14'),
(500, 'Domingo', 17, '15'),
(501, 'Lunes', 17, '16'),
(502, 'Martes', 17, '17'),
(503, 'Miércoles', 17, '18'),
(504, 'Jueves', 17, '19'),
(505, 'Viernes', 17, '20'),
(506, 'Sábado', 17, '21'),
(507, 'Domingo', 17, '22'),
(508, 'Lunes', 17, '23'),
(509, 'Martes', 17, '24'),
(510, 'Miércoles', 17, '25'),
(511, 'Jueves', 17, '26'),
(512, 'Viernes', 17, '27'),
(513, 'Sábado', 17, '28'),
(514, 'Domingo', 17, '29'),
(515, 'Lunes', 17, '30'),
(516, 'Martes', 17, '31'),
(517, 'Miércoles', 18, '1'),
(518, 'Jueves', 18, '2'),
(519, 'Viernes', 18, '3'),
(520, 'Sábado', 18, '4'),
(521, 'Domingo', 18, '5'),
(522, 'Lunes', 18, '6'),
(523, 'Martes', 18, '7'),
(524, 'Miércoles', 18, '8'),
(525, 'Jueves', 18, '9'),
(526, 'Viernes', 18, '10'),
(527, 'Sábado', 18, '11'),
(528, 'Domingo', 18, '12'),
(529, 'Lunes', 18, '13'),
(530, 'Martes', 18, '14'),
(531, 'Miércoles', 18, '15'),
(532, 'Jueves', 18, '16'),
(533, 'Viernes', 18, '17'),
(534, 'Sábado', 18, '18'),
(535, 'Domingo', 18, '19'),
(536, 'Lunes', 18, '20'),
(537, 'Martes', 18, '21'),
(538, 'Miércoles', 18, '22'),
(539, 'Jueves', 18, '23'),
(540, 'Viernes', 18, '24'),
(541, 'Sábado', 18, '25'),
(542, 'Domingo', 18, '26'),
(543, 'Lunes', 18, '27'),
(544, 'Martes', 18, '28'),
(545, 'Miércoles', 18, '29'),
(546, 'Jueves', 18, '30'),
(547, 'Viernes', 19, '1'),
(548, 'Sábado', 19, '2'),
(549, 'Domingo', 19, '3'),
(550, 'Lunes', 19, '4'),
(551, 'Martes', 19, '5'),
(552, 'Miércoles', 19, '6'),
(553, 'Jueves', 19, '7'),
(554, 'Viernes', 19, '8'),
(555, 'Sábado', 19, '9'),
(556, 'Domingo', 19, '10'),
(557, 'Lunes', 19, '11'),
(558, 'Martes', 19, '12'),
(559, 'Miércoles', 19, '13'),
(560, 'Jueves', 19, '14'),
(561, 'Viernes', 19, '15'),
(562, 'Sábado', 19, '16'),
(563, 'Domingo', 19, '17'),
(564, 'Lunes', 19, '18'),
(565, 'Martes', 19, '19'),
(566, 'Miércoles', 19, '20'),
(567, 'Jueves', 19, '21'),
(568, 'Viernes', 19, '22'),
(569, 'Sábado', 19, '23'),
(570, 'Domingo', 19, '24'),
(571, 'Lunes', 19, '25'),
(572, 'Martes', 19, '26'),
(573, 'Miércoles', 19, '27'),
(574, 'Jueves', 19, '28'),
(575, 'Viernes', 19, '29'),
(576, 'Sábado', 19, '30'),
(577, 'Domingo', 19, '31'),
(578, 'Lunes', 20, '1'),
(579, 'Martes', 20, '2'),
(580, 'Miércoles', 20, '3'),
(581, 'Jueves', 20, '4'),
(582, 'Viernes', 20, '5'),
(583, 'Sábado', 20, '6'),
(584, 'Domingo', 20, '7'),
(585, 'Lunes', 20, '8'),
(586, 'Martes', 20, '9'),
(587, 'Miércoles', 20, '10'),
(588, 'Jueves', 20, '11'),
(589, 'Viernes', 20, '12'),
(590, 'Sábado', 20, '13'),
(591, 'Domingo', 20, '14'),
(592, 'Lunes', 20, '15'),
(593, 'Martes', 20, '16'),
(594, 'Miércoles', 20, '17'),
(595, 'Jueves', 20, '18'),
(596, 'Viernes', 20, '19'),
(597, 'Sábado', 20, '20'),
(598, 'Domingo', 20, '21'),
(599, 'Lunes', 20, '22'),
(600, 'Martes', 20, '23'),
(601, 'Miércoles', 20, '24'),
(602, 'Jueves', 20, '25'),
(603, 'Viernes', 20, '26'),
(604, 'Sábado', 20, '27'),
(605, 'Domingo', 20, '28'),
(606, 'Lunes', 20, '29'),
(607, 'Martes', 20, '30'),
(608, 'Miércoles', 20, '31'),
(609, 'Jueves', 21, '1'),
(610, 'Viernes', 21, '2'),
(611, 'Sábado', 21, '3'),
(612, 'Domingo', 21, '4'),
(613, 'Lunes', 21, '5'),
(614, 'Martes', 21, '6'),
(615, 'Miercoles', 21, '7'),
(616, 'Jueves', 21, '8'),
(617, 'Viernes', 21, '9'),
(618, 'Sábado', 21, '10'),
(619, 'Domingo', 21, '11'),
(620, 'Lunes', 21, '12'),
(621, 'Martes', 21, '13'),
(622, 'Miércoles', 21, '14'),
(623, 'Jueves', 21, '15'),
(624, 'Sábado', 21, '16'),
(625, '', 21, '17'),
(626, 'Domingo', 21, '18'),
(627, 'Lunes', 21, '19'),
(628, 'Martes', 21, '20'),
(629, 'Miércoles', 21, '21'),
(630, 'Jueves', 21, '22'),
(631, 'Viernes', 21, '23'),
(632, 'Sábado', 21, '24'),
(633, 'Domingo', 21, '25'),
(634, 'Lunes', 21, '26'),
(635, 'Martes', 21, '27'),
(636, 'Miércoles', 21, '28'),
(637, 'Jueves', 21, '29'),
(638, 'Viernes', 21, '30'),
(639, 'Sábado', 22, '1'),
(640, 'Domingo', 22, '2'),
(641, 'Lunes', 22, '3'),
(642, 'Martes', 22, '4'),
(643, 'Miércoles', 22, '5'),
(644, 'Jueves', 22, '6'),
(645, 'Viernes', 22, '7'),
(646, 'Sábado', 22, '8'),
(647, 'Domingo', 22, '9'),
(648, 'Lunes', 22, '10'),
(649, 'Martes', 22, '11'),
(650, 'Miércoles', 22, '12'),
(651, 'Jueves', 22, '13'),
(652, 'Viernes', 22, '14'),
(653, 'Sábado', 22, '15'),
(654, 'Domingo', 22, '16'),
(655, 'Lunes', 22, '17'),
(656, 'Martes', 22, '18'),
(657, 'Miércoles', 22, '19'),
(658, 'Jueves', 22, '20'),
(659, 'Viernes', 22, '21'),
(660, 'Sábado', 22, '22'),
(661, 'Domingo', 22, '23'),
(662, 'Lunes', 22, '24'),
(663, 'Martes', 22, '25'),
(664, 'Miércoles', 22, '26'),
(665, 'Jueves', 22, '27'),
(666, 'Viernes', 22, '28'),
(667, 'Sábado', 22, '29'),
(668, 'Domingo', 22, '30'),
(669, 'Lunes', 22, '31'),
(670, 'Martes', 23, '1'),
(671, 'Miércoles', 23, '2'),
(672, 'Jueves', 23, '3'),
(673, 'Viernes', 23, '4'),
(674, 'Sábado', 23, '5'),
(675, 'Domingo', 23, '6'),
(676, 'Lunes', 23, '7'),
(677, 'Martes', 23, '8'),
(678, 'Miércoles', 23, '9'),
(679, 'Jueves', 23, '10'),
(680, 'Viernes', 23, '11'),
(681, 'Sábado', 23, '12'),
(682, 'Domingo', 23, '13'),
(683, 'Lunes', 23, '14'),
(684, 'Martes', 23, '15'),
(685, 'Miércoles', 23, '16'),
(686, 'Jueves', 23, '17'),
(687, 'Viernes', 23, '18'),
(688, 'Sábado', 23, '19'),
(689, 'Domingo', 23, '20'),
(690, 'Lunes', 23, '21'),
(691, 'Martes', 23, '22'),
(692, 'Miércoles', 23, '23'),
(693, 'Jueves', 23, '24'),
(694, 'Viernes', 23, '25'),
(695, 'Sábado', 23, '26'),
(696, 'Domingo', 23, '27'),
(697, 'Lunes', 23, '28'),
(698, 'Martes', 23, '29'),
(699, 'Miércoles', 23, '30'),
(700, 'Jueves', 24, '1'),
(701, 'Viernes', 24, '2'),
(702, 'Sábado', 24, '3'),
(703, 'Domingo', 24, '4'),
(704, 'Lunes', 24, '5'),
(705, 'Martes', 24, '6'),
(706, 'Miércoles', 24, '7'),
(707, 'Jueves', 24, '8'),
(708, 'Viernes', 24, '9'),
(709, 'Sábado', 24, '10'),
(710, 'Domingo', 24, '11'),
(711, 'Lunes', 24, '12'),
(712, 'Martes', 24, '13'),
(713, 'Miércoles', 24, '14'),
(714, 'Jueves', 24, '15'),
(715, 'Viernes', 24, '16'),
(716, 'Sábado', 24, '17'),
(717, 'Domingo', 24, '18'),
(718, 'Lunes', 24, '19'),
(719, 'Martes', 24, '20'),
(720, 'Miércoles', 24, '21'),
(721, 'Jueves', 24, '22'),
(722, 'Viernes', 24, '23'),
(723, 'Sábado', 24, '24'),
(724, 'Domingo', 24, '25'),
(725, 'Lunes', 24, '26'),
(726, 'Martes', 24, '27'),
(727, 'Miércoles', 24, '28'),
(728, 'Jueves', 24, '29'),
(729, 'Viernes', 24, '30'),
(730, 'Sábado', 24, '31');

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE `month` (
  `ID_Mes` int(20) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Year_ID` int(10) NOT NULL,
  `numMes` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`ID_Mes`, `Nombre`, `Year_ID`, `numMes`) VALUES
(1, 'Enero', 1, 1),
(2, 'Febrero', 1, 2),
(3, 'Marzo', 1, 3),
(4, 'Abril', 1, 4),
(5, 'Mayo', 1, 5),
(6, 'Junio', 1, 6),
(7, 'Julio', 1, 7),
(8, 'Agosto', 1, 8),
(9, 'Septiembre', 1, 9),
(10, 'Octubre', 1, 10),
(11, 'Noviembre', 1, 11),
(12, 'Diciembre', 1, 12),
(13, 'Enero', 3, 1),
(14, 'Febrero', 3, 2),
(15, 'Marzo', 3, 3),
(16, 'Abril', 3, 4),
(17, 'Mayo', 3, 5),
(18, 'Junio', 3, 6),
(19, 'Julio', 3, 7),
(20, 'Agosto', 3, 8),
(21, 'Septiembre', 3, 9),
(22, 'Octubre', 3, 10),
(23, 'Noviembre', 3, 11),
(24, 'Diciembre', 3, 12);

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `ID_Nota` int(20) NOT NULL,
  `Apunte` text NOT NULL,
  `Act_ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID_User` int(255) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(80) NOT NULL,
  `fullname` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `ID_Year` int(10) NOT NULL,
  `Nom` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`ID_Year`, `Nom`) VALUES
(1, '2021'),
(3, '2022');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`ID_Act`),
  ADD KEY `fk_User_ID` (`User_ID`),
  ADD KEY `fk_Day_ID` (`Day_ID`);

--
-- Indexes for table `day`
--
ALTER TABLE `day`
  ADD PRIMARY KEY (`ID_Day`),
  ADD KEY `fk_Month_ID` (`Month_ID`);

--
-- Indexes for table `month`
--
ALTER TABLE `month`
  ADD PRIMARY KEY (`ID_Mes`),
  ADD KEY `fk_Year_ID` (`Year_ID`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`ID_Nota`),
  ADD KEY `fk_Act_ID` (`Act_ID`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID_User`);

--
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`ID_Year`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actividad`
--
ALTER TABLE `actividad`
  MODIFY `ID_Act` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `day`
--
ALTER TABLE `day`
  MODIFY `ID_Day` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=731;

--
-- AUTO_INCREMENT for table `month`
--
ALTER TABLE `month`
  MODIFY `ID_Mes` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
  MODIFY `ID_Nota` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID_User` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `year`
--
ALTER TABLE `year`
  MODIFY `ID_Year` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actividad`
--
ALTER TABLE `actividad`
  ADD CONSTRAINT `fk_Day_ID` FOREIGN KEY (`Day_ID`) REFERENCES `day` (`ID_Day`),
  ADD CONSTRAINT `fk_User_ID` FOREIGN KEY (`User_ID`) REFERENCES `users` (`ID_User`);

--
-- Constraints for table `day`
--
ALTER TABLE `day`
  ADD CONSTRAINT `fk_Month_ID` FOREIGN KEY (`Month_ID`) REFERENCES `month` (`ID_Mes`);

--
-- Constraints for table `month`
--
ALTER TABLE `month`
  ADD CONSTRAINT `fk_Year_ID` FOREIGN KEY (`Year_ID`) REFERENCES `year` (`ID_Year`);

--
-- Constraints for table `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `fk_Act_ID` FOREIGN KEY (`Act_ID`) REFERENCES `actividad` (`ID_Act`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
