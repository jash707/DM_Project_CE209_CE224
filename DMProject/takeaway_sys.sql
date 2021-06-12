-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 12, 2021 at 04:57 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `takeaway_sys`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `img` varchar(250) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `name`, `img`) VALUES
(1, 'Soup & Chinese Shorba', 'menu_img/Soup.jpg'),
(3, 'Tandoori Starters', 'menu_img/tandoori.jpg'),
(4, 'Chinese Starters', 'menu_img/tandoori.jpg'),
(5, 'Pantry', 'menu_img/pantry.jpg'),
(6, 'Raita', 'menu_img/pantry.jpg'),
(7, 'Paneer Se...', 'menu_img/paneer.jpg'),
(8, 'Vegetable Se...', 'menu_img/vegetable se.jpg'),
(9, 'Kofta', 'menu_img/kofta 1.jpg'),
(10, 'Kajuwali', 'menu_img/kajuwali.jpg'),
(11, 'Mushroom', 'menu_img/mushroom.jpg'),
(12, 'Chinese Main Course', 'menu_img/chinese.jpg'),
(13, 'Chinese Rice Se...', 'menu_img/rice.jpg'),
(14, 'Sizzler Hot', 'menu_img/sizler.jpg'),
(15, 'Tandoor Ka Kamal', 'menu_img/tandoor.jpg'),
(16, 'Basmati Ka Kamal...', 'menu_img/rice1.jpg'),
(17, 'Dal Se...', 'menu_img/dal.jpg'),
(18, 'Fast Food', 'menu_img/f1.jpg'),
(19, 'Pasta', 'menu_img/pasta.jpg'),
(20, 'Kathiyawadi', 'menu_img/kathiyawadi.jpg'),
(21, 'Continental', 'menu_img/c.jpg'),
(22, 'Hot Beverages', 'menu_img/tea.jpg'),
(23, 'Appetizer', 'menu_img/lime water.jpg'),
(24, 'Ice Cream', 'menu_img/ice.jpg'),
(25, 'Thaali', 'menu_img/download.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `food_order`
--

DROP TABLE IF EXISTS `food_order`;
CREATE TABLE IF NOT EXISTS `food_order` (
  `foid` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `order_type` varchar(150) NOT NULL,
  PRIMARY KEY (`foid`),
  KEY `user` (`userid`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_order`
--

INSERT INTO `food_order` (`foid`, `userid`, `mid`, `quantity`, `order_type`) VALUES
(141, 81, 162, 1, 'takeaway');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `mid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `image` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `priority` int(10) NOT NULL,
  `restaurant_show` varchar(10) NOT NULL,
  `takeaway_show` varchar(10) NOT NULL,
  `price` int(10) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `category` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`mid`, `name`, `image`, `description`, `priority`, `restaurant_show`, `takeaway_show`, `price`, `type`) VALUES
(18, 'Tomato Soup', '', '', 2, 'YES', 'YES', 90, 1),
(19, 'Minestrone Soup', '', '', 2, 'YES', 'YES', 100, 1),
(20, 'Veg. Clear Soup', '', '', 2, 'YES', 'YES', 90, 1),
(21, 'Veg. Sweet Corn Soup', '', '', 2, 'YES', 'YES', 100, 1),
(22, 'Veg. Munchow Soup', '', '', 2, 'YES', 'YES', 110, 1),
(23, 'Veg. Hot & Sour Soup', '', '', 2, 'YES', 'YES', 110, 1),
(24, 'Veg. Manchurian Soup', '', '', 2, 'YES', 'YES', 115, 1),
(25, 'Broccoli Almond Soup', '', '', 2, 'YES', 'YES', 120, 1),
(26, 'Cheese Corn Soup', '', '', 2, 'YES', 'YES', 130, 1),
(27, 'Lemon Coriander Soup', '', '', 2, 'YES', 'YES', 120, 1),
(28, 'Cream Of Mushroom Soup', '', '', 3, 'YES', 'YES', 125, 1),
(29, 'Palak Ka Shorba', '', '', 3, 'YES', 'YES', 100, 1),
(30, 'Hara Bhara Kabab', '', '', 3, 'YES', 'YES', 180, 3),
(31, 'Veg. Sheek Kabab', '', '', 2, 'YES', 'YES', 190, 3),
(32, 'Veg. Rock Kabab', '', '', 2, 'YES', 'YES', 200, 3),
(33, 'Resmi Kabab', '', '', 3, 'YES', 'YES', 200, 3),
(34, 'Veg. Dahi Kabab', '', '', 2, 'YES', 'YES', 190, 3),
(35, 'Paneer Tikka Dry', '', '', 2, 'YES', 'YES', 210, 3),
(36, 'Paneer Garlic Tikka Dry', '', '', 2, 'YES', 'YES', 210, 3),
(37, 'Paneer Hariyali Tikka Dry', '', '', 2, 'YES', 'YES', 215, 3),
(38, 'Paneer Achari Tikka Dry', '', '', 2, 'YES', 'YES', 215, 3),
(39, 'Paneer Ajwani Tikka Dry', '', '', 2, 'YES', 'YES', 220, 3),
(40, 'Paneer Chilly Dry', '', '', 3, 'YES', 'YES', 200, 4),
(41, 'Paneer 65', '', '', 2, 'YES', 'YES', 200, 4),
(42, 'Paneer Manchurian Dry', '', '', 1, 'YES', 'YES', 200, 4),
(43, 'Paneer Crunchy Dry', '', '', 3, 'YES', 'YES', 210, 4),
(44, 'Veg. Spring Roll', '', '', 2, 'YES', 'YES', 190, 4),
(45, 'Veg. Crispy', '', '', 3, 'YES', 'YES', 190, 4),
(46, 'Veg. 65', '', '', 2, 'YES', 'YES', 180, 4),
(47, 'Cheese Balls', '', '', 2, 'YES', 'YES', 210, 4),
(48, 'Mushroom Chilly Dry', '', '', 2, 'YES', 'YES', 200, 4),
(49, 'Baby Corn Chilly Dry', '', '', 2, 'YES', 'YES', 200, 4),
(50, 'Veg. Manchurian Dry', '', '', 3, 'YES', 'YES', 150, 4),
(51, 'Green Salad', '', '', 2, 'YES', 'YES', 60, 5),
(52, 'Tomato Salad', '', '', 2, 'YES', 'YES', 40, 5),
(53, 'Russian Salad', '', '', 2, 'YES', 'YES', 70, 5),
(54, 'Cucumber Salad', '', '', 2, 'YES', 'YES', 50, 5),
(55, 'Roasted Papad', '', '', 2, 'YES', 'YES', 20, 5),
(56, 'Masala Papad', '', '', 2, 'YES', 'YES', 25, 5),
(57, 'Fried Papad', '', '', 3, 'YES', 'YES', 20, 5),
(58, 'Butter Milk', '', '', 2, 'YES', 'YES', 20, 5),
(59, 'Masala Butter Milk', '', '', 2, 'YES', 'YES', 30, 5),
(60, 'Lassi Salt', '', '', 2, 'YES', 'YES', 40, 5),
(61, 'Lassi Sweet', '', '', 2, 'YES', 'YES', 45, 5),
(62, 'S.P.L Lassi', '', '', 2, 'YES', 'YES', 80, 5),
(63, 'S.P.L Lassi With Ice Cream', '', '', 3, 'YES', 'YES', 100, 5),
(64, 'Mix Raita', '', '', 3, 'YES', 'YES', 45, 6),
(65, 'Mix Fruit Raita', '', '', 3, 'YES', 'YES', 50, 6),
(66, 'Boondi Raita', '', '', 2, 'YES', 'YES', 60, 6),
(67, 'Onion Raita', '', '', 3, 'YES', 'YES', 50, 6),
(68, 'Paneer Butter Masala', '', '', 3, 'YES', 'YES', 170, 7),
(69, 'Paneer Tikka Masala', '', '', 3, 'YES', 'YES', 180, 7),
(70, 'Paneer Kadai', '', '', 3, 'YES', 'YES', 170, 7),
(71, 'Paneer Handi', '', '', 3, 'YES', 'YES', 180, 7),
(72, 'Paneer Balti', '', '', 3, 'YES', 'YES', 170, 7),
(73, 'Paneer Tawa Masala', '', '', 2, 'YES', 'YES', 180, 7),
(74, 'Paneer Patiala', '', '', 3, 'YES', 'YES', 190, 7),
(75, 'Paneer Angara', '', '', 2, 'YES', 'YES', 190, 7),
(76, 'Paneer Laziz', '', '', 3, 'YES', 'YES', 190, 7),
(77, 'Paneer Do Payaza', '', '', 3, 'YES', 'YES', 180, 7),
(78, 'Paneer Toofani', '', '', 2, 'YES', 'YES', 190, 7),
(79, 'Paneer Chatpata', '', '', 2, 'YES', 'YES', 190, 7),
(80, 'Paneer Adraki', '', '', 2, 'YES', 'YES', 180, 7),
(81, 'Paneer Pasanda', '', '', 3, 'YES', 'YES', 190, 7),
(82, 'Palak Paneer', '', '', 2, 'YES', 'YES', 150, 7),
(83, 'Mutter Paneer', '', '', 2, 'YES', 'YES', 130, 7),
(84, 'Paneer Bhurji', '', '', 3, 'YES', 'YES', 200, 7),
(85, 'Yajmaan Special Paneer', '', '', 2, 'YES', 'YES', 230, 7),
(86, 'Mix Veg.', '', '', 2, 'YES', 'YES', 100, 8),
(87, 'Veg. Makhanwala', '', '', 2, 'YES', 'YES', 120, 8),
(88, 'Veg. Kolhapuri', '', '', 2, 'YES', 'YES', 130, 8),
(89, 'Veg. Kadai', '', '', 2, 'YES', 'YES', 120, 8),
(90, 'Veg. Handi', '', '', 3, 'YES', 'YES', 130, 8),
(91, 'Veg. Tawa Masala', '', '', 2, 'YES', 'YES', 135, 8),
(92, 'Veg. Patiala', '', '', 3, 'YES', 'YES', 135, 8),
(93, 'Veg. Jaipuri', '', '', 3, 'YES', 'YES', 120, 8),
(94, 'Veg. Toofani', '', '', 2, 'YES', 'YES', 130, 8),
(95, 'Veg. Hariyali', '', '', 3, 'YES', 'YES', 130, 8),
(96, 'Veg. Korma', '', '', 2, 'YES', 'YES', 120, 8),
(97, 'Diwani Handi', '', '', 1, 'YES', 'YES', 135, 8),
(98, 'Veg. Angara', '', '', 2, 'YES', 'YES', 140, 8),
(99, 'Veg. Garlic Masala', '', '', 2, 'YES', 'YES', 140, 8),
(100, 'Veg. Pahadi', '', '', 2, 'YES', 'YES', 160, 8),
(101, 'Veg. Do Payaza', '', '', 2, 'YES', 'YES', 140, 8),
(102, 'Yajmaan Special Vegetable', '', '', 4, 'YES', 'YES', 200, 8),
(103, 'Malai Kofta Sweet', '', '', 2, 'YES', 'YES', 150, 9),
(104, 'Veg. Kofta', '', '', 3, 'YES', 'YES', 140, 9),
(105, 'Nargis Kofta', '', '', 2, 'YES', 'YES', 145, 9),
(106, 'Cheese Kofta', '', '', 2, 'YES', 'YES', 160, 9),
(107, 'Paneer Kofta', '', '', 2, 'YES', 'YES', 150, 9),
(108, 'Kaju Curry', '', '', 2, 'YES', 'YES', 180, 10),
(109, 'Kaju Masala', '', '', 2, 'YES', 'YES', 190, 10),
(110, 'Kaju Butter Masala', '', '', 2, 'YES', 'YES', 200, 10),
(111, 'Khoya Kaju Sweet ', '', '', 2, 'YES', 'YES', 190, 10),
(112, 'Khoya Cheese Masala', '', '', 2, 'YES', 'YES', 200, 10),
(113, 'Khoya Paneer Masala', '', '', 3, 'YES', 'YES', 200, 10),
(114, 'Mushroom Masala', '', '', 3, 'YES', 'YES', 180, 11),
(115, 'Mushroom Butter Masala', '', '', 2, 'YES', 'YES', 190, 11),
(116, 'Mushroom Mutter', '', '', 2, 'YES', 'YES', 150, 11),
(117, 'Mushroom Corn Masala', '', '', 2, 'YES', 'YES', 160, 11),
(118, 'Veg. Hakka Noodle', '', '', 2, 'YES', 'YES', 130, 12),
(119, 'Veg. Chow Chow', '', '', 2, 'YES', 'YES', 140, 12),
(120, 'Veg. Chowmein', '', '', 2, 'YES', 'YES', 135, 12),
(121, 'Veg. American Chopsuey', '', '', 3, 'YES', 'YES', 140, 12),
(122, 'Chinese Chopsuey', '', '', 2, 'YES', 'YES', 135, 12),
(123, 'Veg. Balls Hot Garlic Sauce', '', '', 3, 'YES', 'YES', 150, 12),
(124, 'Schezwan Noodles', '', '', 2, 'YES', 'YES', 150, 12),
(125, 'Veg. Fried Rice', '', '', 2, 'YES', 'YES', 120, 13),
(126, 'Lemon Fried Rice', '', '', 2, 'YES', 'YES', 125, 13),
(127, 'Schezwan Fried Rice', '', '', 2, 'YES', 'YES', 130, 13),
(128, 'Manchurian Fried Rice', '', '', 2, 'YES', 'YES', 125, 13),
(129, 'Tripal Fried Rice', '', '', 3, 'YES', 'YES', 140, 13),
(130, 'Chinese Bhel', '', '', 1, 'YES', 'YES', 130, 13),
(131, 'Veg. Sizzler', '', '', 2, 'YES', 'YES', 260, 14),
(132, 'Chinese Sizzler', '', '', 1, 'YES', 'YES', 280, 14),
(133, 'Paneer Stick Sizzler', '', '', 4, 'YES', 'YES', 300, 14),
(134, 'Paneer Shashlik Sizzler', '', '', 1, 'YES', 'YES', 300, 14),
(135, 'Yajmaan Special Sizzler', '', '1 Cold Drink + Roasted Papad + Salad', 1, 'YES', 'YES', 500, 14),
(136, 'Plain Roti', '', '', 1, 'YES', 'YES', 20, 15),
(137, 'Butter Roti ', '', '', 3, 'YES', 'YES', 25, 15),
(138, 'Missi Roti', '', '', 2, 'YES', 'YES', 35, 15),
(139, 'Plain Naan ', '', '', 2, 'YES', 'YES', 35, 15),
(140, 'Butter Naan', '', '', 1, 'YES', 'YES', 40, 15),
(141, 'Plain Paratha', '', '', 2, 'YES', 'YES', 40, 15),
(142, 'Butter Paratha', '', '', 3, 'YES', 'YES', 45, 15),
(143, 'Butter Kulcha', '', '', 2, 'YES', 'YES', 50, 15),
(144, 'Onion Kulcha', '', '', 2, 'YES', 'YES', 55, 15),
(145, 'Paneer Kulcha', '', '', 2, 'YES', 'YES', 60, 15),
(146, 'Stuff Kulcha', '', '', 2, 'YES', 'YES', 50, 15),
(147, 'Cheese Naan', '', '', 1, 'YES', 'YES', 65, 15),
(148, 'Garlic Naan', '', '', 2, 'YES', 'YES', 50, 15),
(149, 'Kashmiri Naan', '', '', 3, 'YES', 'YES', 60, 15),
(150, 'Cheese Chilly Naan', '', '', 1, 'YES', 'YES', 70, 15),
(151, 'Methi Paratha', '', '', 2, 'YES', 'YES', 45, 15),
(152, 'Aloo Paratha with Curd', '', '', 2, 'YES', 'YES', 100, 15),
(153, 'Plain Rice', '', '', 2, 'YES', 'YES', 70, 16),
(154, 'Jeera Rice', '', '', 4, 'YES', 'YES', 80, 16),
(155, 'Veg. Pulao', '', '', 2, 'YES', 'YES', 110, 16),
(156, 'Veg. Biryani', '', '', 3, 'YES', 'YES', 120, 16),
(157, 'Veg. Hyderabadi Biryani', '', '', 3, 'YES', 'YES', 120, 16),
(158, 'Handi Dum Biryani', '', '', 3, 'YES', 'YES', 130, 16),
(159, 'Kashmiri Pulao(Sweet)', '', '', 2, 'YES', 'YES', 110, 16),
(160, 'Kolhapuri Biryani', '', '', 1, 'YES', 'YES', 130, 16),
(161, 'Yajmaan Special Biryani', '', '', 2, 'YES', 'YES', 150, 16),
(162, 'Dal Fry ', '', '', 1, 'YES', 'YES', 80, 17),
(163, 'Dal Tadka', '', '', 1, 'YES', 'YES', 100, 17),
(164, 'Dal Makhani', '', '', 2, 'YES', 'YES', 110, 17),
(165, 'Dal Palak ', '', '', 1, 'YES', 'YES', 100, 17),
(166, 'Bread Butter', '', '', 2, 'YES', 'YES', 50, 18),
(167, 'Bread Butter with Jam', '', '', 2, 'YES', 'YES', 60, 18),
(168, 'Garlic Bread', '', '', 2, 'YES', 'YES', 90, 18),
(169, 'Veg. Sandwich', '', '', 3, 'YES', 'YES', 80, 18),
(170, 'Cheese Sandwich', '', '', 3, 'YES', 'YES', 100, 18),
(171, 'Veg. Grill Sandwich', '', '', 4, 'YES', 'YES', 110, 18),
(172, 'Cheese Grill Sandwich', '', '', 2, 'YES', 'YES', 120, 18),
(173, 'Veg. Pizza', '', '', 1, 'YES', 'YES', 100, 18),
(174, 'Cheese Pizza', '', '', 4, 'YES', 'YES', 120, 18),
(175, 'Margarita Pizza', '', '', 1, 'YES', 'YES', 120, 18),
(176, 'Italian Pizza', '', '', 1, 'YES', 'YES', 120, 18),
(177, 'Mexican Pizza', '', '', 1, 'YES', 'YES', 130, 18),
(178, 'Yajmaan Special Pizza', '', '', 2, 'YES', 'YES', 140, 18),
(179, 'Arrabbiata Pasta', '', '', 1, 'YES', 'YES', 220, 19),
(180, 'Pink Sauce Pasta', '', '', 3, 'YES', 'YES', 230, 19),
(181, 'Alfredo Pasta', '', '', 1, 'YES', 'YES', 230, 19),
(182, 'Sev Tomato', '', '', 2, 'YES', 'YES', 90, 20),
(183, 'Undhiyu', '', '', 2, 'YES', 'YES', 100, 20),
(184, 'Rajwadi Dhokla', '', '', 2, 'YES', 'YES', 120, 20),
(185, 'Bharela Bhinda', '', '', 2, 'YES', 'YES', 130, 20),
(186, 'Baigan Ka Bhartha', '', '', 2, 'YES', 'YES', 120, 20),
(187, 'Bhindi Masala', '', '', 2, 'YES', 'YES', 110, 20),
(188, 'Bhindi Fry', '', '', 4, 'YES', 'YES', 120, 20),
(189, 'Lasaniya Bataka', '', '', 2, 'YES', 'YES', 110, 20),
(190, 'Dahi Tikhari', '', '', 5, 'YES', 'YES', 130, 20),
(191, 'Desi Chana', '', '', 1, 'YES', 'YES', 130, 20),
(192, 'Shuki Chori', '', '', 1, 'YES', 'YES', 130, 20),
(193, 'Mag. Masala', '', '', 2, 'YES', 'YES', 130, 20),
(194, 'Dal Bhat (Lunch)', '', '', 2, 'YES', 'YES', 100, 20),
(195, 'Kadhi Khichdi (Dinner)', '', '', 2, 'YES', 'YES', 120, 20),
(196, 'Rajwadi Khichdi', '', '', 2, 'YES', 'YES', 150, 20),
(197, 'Plain Chapati', '', '', 2, 'YES', 'YES', 10, 20),
(198, 'Butter Chapati', '', '', 2, 'YES', 'YES', 15, 20),
(199, 'Tawa Paratha', '', '', 3, 'YES', 'YES', 20, 20),
(200, 'Bajra Ka Rotla', '', '', 2, 'YES', 'YES', 25, 20),
(201, 'Vagharelo Rotlo', '', '', 2, 'YES', 'YES', 50, 20),
(202, 'Baked Macaroni', '', '', 2, 'YES', 'YES', 200, 21),
(203, 'Baked Macaroni with Cheese', '', '', 2, 'YES', 'YES', 220, 21),
(204, 'Baked Veg. With Cheese', '', '', 3, 'YES', 'YES', 200, 21),
(205, 'Tea', '', '', 3, 'YES', 'YES', 20, 22),
(206, 'Tea Masala', '', '', 1, 'YES', 'YES', 25, 22),
(207, 'Hot Coffee', '', '', 2, 'YES', 'YES', 30, 22),
(208, 'Hot Milk', '', '', 2, 'YES', 'YES', 40, 22),
(209, 'Fresh Lemon Water', '', '', 1, 'YES', 'YES', 30, 23),
(210, 'Jal-Jeera', '', '', 1, 'YES', 'YES', 35, 23),
(211, 'Fresh Lemon Soda (Sweet / Salt)', '', '', 2, 'YES', 'YES', 40, 23),
(212, 'Mint Lemon Water (Sweet)', '', '', 2, 'YES', 'YES', 35, 23),
(213, 'Mineral Water', '', '', 2, 'YES', 'YES', 20, 23),
(214, 'Cold Drink 200ml.', '', '', 2, 'YES', 'YES', 20, 23),
(215, 'Fix Thaali', '', '2 Subji, 3 Butter Roti, Dal Fry, Jeera Rice, Roasted Papad, Butter Milk', 2, 'YES', 'YES', 120, 25),
(216, 'Special Thaali', '', 'Paneer Subji, Veg. Subji, Butter Roti 3 / Tawa Roti 4 / Tandoori Roti 3, Dal Fry, Jeera Rice & Pulao, Sweet, Roasted Papad, Butter Milk, Onion & Pickle', 2, 'YES', 'YES', 140, 25);

-- --------------------------------------------------------

--
-- Table structure for table `slot`
--

DROP TABLE IF EXISTS `slot`;
CREATE TABLE IF NOT EXISTS `slot` (
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slot`
--

INSERT INTO `slot` (`time`) VALUES
('08:00:00'),
('09:00:00'),
('10:00:00'),
('11:00:00'),
('12:00:00'),
('13:00:00'),
('14:00:00'),
('15:00:00'),
('16:00:00'),
('17:00:00'),
('18:00:00'),
('19:00:00'),
('20:00:00'),
('21:00:00'),
('22:00:00'),
('08:00:00'),
('09:00:00'),
('10:00:00'),
('11:00:00'),
('12:00:00'),
('13:00:00'),
('14:00:00'),
('15:00:00'),
('16:00:00'),
('17:00:00'),
('18:00:00'),
('19:00:00'),
('20:00:00'),
('21:00:00'),
('22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `takeaway_user`
--

DROP TABLE IF EXISTS `takeaway_user`;
CREATE TABLE IF NOT EXISTS `takeaway_user` (
  `tuid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `mobile_no` varchar(12) NOT NULL,
  `date_time` datetime NOT NULL,
  `total_bill` int(12) NOT NULL,
  `status` int(2) NOT NULL,
  `time_of_delivery` time NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  PRIMARY KEY (`tuid`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `takeaway_user`
--

INSERT INTO `takeaway_user` (`tuid`, `name`, `email`, `mobile_no`, `date_time`, `total_bill`, `status`, `time_of_delivery`, `payment_mode`) VALUES
(81, 'jash', 'jash.tamakuwala777@gmail.com', '9723912479', '2021-06-12 21:46:31', 84, 2, '20:00:00', 'cash');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `userid` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `password` varchar(150) NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `email`, `contact`, `password`) VALUES
('krunal', '20ceubd013@ddu.ac.in', '8795612345', 'krunal'),
('yajmanre', 'jaimikc@gmail.com', '7895135896', 'yajman!123'),
('jash', 'jash.tamakuwala777@gmail.com', '9723912479', 'jash'),
('kk', 'jash.tamakuwala@yahoo.com', '5468754256', 'kk1234'),
('mr.kk', 'krunalkishnadwala786@gmail.com', '7898878999', 'kk12345'),
('vraj', 'vrajsoni97@gmail.com', '7895226999', 'vraj');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food_order`
--
ALTER TABLE `food_order`
  ADD CONSTRAINT `mid` FOREIGN KEY (`mid`) REFERENCES `menu` (`mid`),
  ADD CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `takeaway_user` (`tuid`);

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `category` FOREIGN KEY (`type`) REFERENCES `category` (`cid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
