-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2021 at 09:56 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hpfood`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add catagory', 7, 'add_catagory'),
(26, 'Can change catagory', 7, 'change_catagory'),
(27, 'Can delete catagory', 7, 'delete_catagory'),
(28, 'Can view catagory', 7, 'view_catagory'),
(29, 'Can add customer', 8, 'add_customer'),
(30, 'Can change customer', 8, 'change_customer'),
(31, 'Can delete customer', 8, 'delete_customer'),
(32, 'Can view customer', 8, 'view_customer'),
(33, 'Can add customer address', 9, 'add_customeraddress'),
(34, 'Can change customer address', 9, 'change_customeraddress'),
(35, 'Can delete customer address', 9, 'delete_customeraddress'),
(36, 'Can view customer address', 9, 'view_customeraddress'),
(37, 'Can add menuitem', 10, 'add_menuitem'),
(38, 'Can change menuitem', 10, 'change_menuitem'),
(39, 'Can delete menuitem', 10, 'delete_menuitem'),
(40, 'Can view menuitem', 10, 'view_menuitem'),
(41, 'Can add order', 11, 'add_order'),
(42, 'Can change order', 11, 'change_order'),
(43, 'Can delete order', 11, 'delete_order'),
(44, 'Can view order', 11, 'view_order'),
(45, 'Can add restaurant', 12, 'add_restaurant'),
(46, 'Can change restaurant', 12, 'change_restaurant'),
(47, 'Can delete restaurant', 12, 'delete_restaurant'),
(48, 'Can view restaurant', 12, 'view_restaurant'),
(49, 'Can add orderd item', 13, 'add_orderditem'),
(50, 'Can change orderd item', 13, 'change_orderditem'),
(51, 'Can delete orderd item', 13, 'delete_orderditem'),
(52, 'Can view orderd item', 13, 'view_orderditem'),
(53, 'Can add order detail', 14, 'add_orderdetail'),
(54, 'Can change order detail', 14, 'change_orderdetail'),
(55, 'Can delete order detail', 14, 'delete_orderdetail'),
(56, 'Can view order detail', 14, 'view_orderdetail'),
(57, 'Can add order track', 15, 'add_ordertrack'),
(58, 'Can change order track', 15, 'change_ordertrack'),
(59, 'Can delete order track', 15, 'delete_ordertrack'),
(60, 'Can view order track', 15, 'view_ordertrack'),
(61, 'Can add img', 16, 'add_img'),
(62, 'Can change img', 16, 'change_img'),
(63, 'Can delete img', 16, 'delete_img'),
(64, 'Can view img', 16, 'view_img'),
(65, 'Can add transection', 17, 'add_transection'),
(66, 'Can change transection', 17, 'change_transection'),
(67, 'Can delete transection', 17, 'delete_transection'),
(68, 'Can view transection', 17, 'view_transection'),
(69, 'Can add resuser', 18, 'add_resuser'),
(70, 'Can change resuser', 18, 'change_resuser'),
(71, 'Can delete resuser', 18, 'delete_resuser'),
(72, 'Can view resuser', 18, 'view_resuser'),
(73, 'Can add imgs', 19, 'add_imgs'),
(74, 'Can change imgs', 19, 'change_imgs'),
(75, 'Can delete imgs', 19, 'delete_imgs'),
(76, 'Can view imgs', 19, 'view_imgs'),
(77, 'Can add favourite', 20, 'add_favourite'),
(78, 'Can change favourite', 20, 'change_favourite'),
(79, 'Can delete favourite', 20, 'delete_favourite'),
(80, 'Can view favourite', 20, 'view_favourite');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$gQG274XmbokD$9rrIwnOmeCzkRw/iBmZ9rAn69qliEUN4BTX+YqW1z/4=', '2021-06-19 07:41:12.004428', 1, 'admin', '', '', '', 1, 1, '2021-02-23 06:19:29.842097');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-02-27 13:31:24.365513', '1', 'Gwalia', 1, '[{\"added\": {}}]', 12, 1),
(2, '2021-02-27 13:59:03.208100', '1', 'Gwalia', 2, '[{\"changed\": {\"fields\": [\"R logo\"]}}]', 12, 1),
(3, '2021-02-27 14:01:58.473345', '1', 'Gwalia', 2, '[{\"changed\": {\"fields\": [\"R logo\"]}}]', 12, 1),
(4, '2021-02-27 14:02:52.914493', '1', 'Gwalia', 2, '[{\"changed\": {\"fields\": [\"R logo\"]}}]', 12, 1),
(5, '2021-03-02 12:50:36.448498', '1', 'Recommanded', 1, '[{\"added\": {}}]', 7, 1),
(6, '2021-03-02 12:55:44.955349', '2', 'Special', 1, '[{\"added\": {}}]', 7, 1),
(7, '2021-03-04 04:57:21.961365', '1', 'Pizza', 1, '[{\"added\": {}}]', 10, 1),
(8, '2021-03-04 04:57:39.727625', '2', 'burger', 1, '[{\"added\": {}}]', 10, 1),
(9, '2021-03-04 05:40:33.498582', '3', 'chai', 1, '[{\"added\": {}}]', 10, 1),
(10, '2021-03-04 05:41:53.777014', '4', 'cofee', 1, '[{\"added\": {}}]', 10, 1),
(11, '2021-03-04 05:42:50.579393', '4', 'cofee', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(12, '2021-03-05 11:45:06.621012', '4', 'coffee', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 10, 1),
(13, '2021-03-05 11:56:27.280335', '1', 'Gwalia', 2, '[{\"changed\": {\"fields\": [\"Approved\"]}}]', 12, 1),
(14, '2021-03-05 13:37:56.129020', '1', 'OrderdItem object (1)', 1, '[{\"added\": {}}]', 13, 1),
(15, '2021-03-05 13:46:24.999126', '4', 'harsh', 1, '[{\"added\": {}}]', 9, 1),
(16, '2021-03-05 14:09:38.526619', '1', '1', 1, '[{\"added\": {}}]', 14, 1),
(17, '2021-03-11 13:19:28.242540', '2', 'burger', 2, '[{\"changed\": {\"fields\": [\"Veg\"]}}]', 10, 1),
(18, '2021-03-11 13:43:24.353129', '1', 'Pizza', 2, '[{\"changed\": {\"fields\": [\"Veg\"]}}]', 10, 1),
(19, '2021-03-11 13:44:41.033013', '3', 'chai', 2, '[{\"changed\": {\"fields\": [\"Veg\"]}}]', 10, 1),
(20, '2021-03-11 13:49:32.633013', '1', 'Pizza', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 10, 1),
(21, '2021-03-11 13:54:43.235622', '4', 'coffee', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 10, 1),
(22, '2021-03-11 13:56:15.652594', '3', 'chai', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 10, 1),
(23, '2021-03-11 13:56:22.358679', '2', 'burger', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 10, 1),
(24, '2021-03-12 05:04:58.771729', '5', 'Pizza', 1, '[{\"added\": {}}]', 10, 1),
(25, '2021-03-12 05:05:55.300964', '6', 'Pizza', 1, '[{\"added\": {}}]', 10, 1),
(26, '2021-03-12 05:06:30.276458', '7', 'coffee', 1, '[{\"added\": {}}]', 10, 1),
(27, '2021-03-12 05:07:23.454071', '8', 'Pizza', 1, '[{\"added\": {}}]', 10, 1),
(28, '2021-03-12 05:08:49.999948', '9', 'Pizza', 1, '[{\"added\": {}}]', 10, 1),
(29, '2021-03-12 14:59:36.468106', '11', 'pasta uu', 3, '', 10, 1),
(30, '2021-03-12 14:59:36.550101', '10', 'pasta', 3, '', 10, 1),
(31, '2021-03-13 03:44:57.908985', '14', 'pks', 3, '', 10, 1),
(32, '2021-03-13 03:44:58.009338', '13', 'pasta', 3, '', 10, 1),
(33, '2021-03-13 03:44:58.074653', '12', 'pasta', 3, '', 10, 1),
(34, '2021-03-13 04:04:42.645792', '15', 'chesse', 3, '', 10, 1),
(35, '2021-03-13 04:35:44.598155', '17', 'pavan', 3, '', 10, 1),
(36, '2021-03-13 04:35:45.628468', '16', 'chesse', 3, '', 10, 1),
(37, '2021-03-17 10:02:20.114815', '9', 'Pizza', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(38, '2021-03-17 10:03:22.986649', '3', 'harsh', 3, '', 7, 1),
(39, '2021-03-17 14:03:25.604065', '16', 'OrderdItem object (16)', 3, '', 13, 1),
(40, '2021-03-17 14:03:25.696100', '15', 'OrderdItem object (15)', 3, '', 13, 1),
(41, '2021-03-17 14:03:25.783308', '14', 'OrderdItem object (14)', 3, '', 13, 1),
(42, '2021-03-17 14:03:25.837676', '13', 'OrderdItem object (13)', 3, '', 13, 1),
(43, '2021-03-17 14:03:25.915584', '12', 'OrderdItem object (12)', 3, '', 13, 1),
(44, '2021-03-17 14:03:25.970442', '11', 'OrderdItem object (11)', 3, '', 13, 1),
(45, '2021-03-17 14:03:26.037693', '10', 'OrderdItem object (10)', 3, '', 13, 1),
(46, '2021-03-17 14:03:26.266967', '9', 'OrderdItem object (9)', 3, '', 13, 1),
(47, '2021-03-17 14:03:26.322363', '8', 'OrderdItem object (8)', 3, '', 13, 1),
(48, '2021-03-17 14:03:26.354245', '7', 'OrderdItem object (7)', 3, '', 13, 1),
(49, '2021-03-17 14:03:26.411093', '6', 'OrderdItem object (6)', 3, '', 13, 1),
(50, '2021-03-17 14:03:26.443006', '5', 'OrderdItem object (5)', 3, '', 13, 1),
(51, '2021-03-17 14:03:26.497859', '4', 'OrderdItem object (4)', 3, '', 13, 1),
(52, '2021-03-17 14:03:26.563683', '3', 'OrderdItem object (3)', 3, '', 13, 1),
(53, '2021-03-17 14:03:26.596595', '2', 'OrderdItem object (2)', 3, '', 13, 1),
(54, '2021-03-17 14:03:26.652444', '1', 'OrderdItem object (1)', 3, '', 13, 1),
(55, '2021-03-17 14:28:38.468477', '5', 'nagar', 1, '[{\"added\": {}}]', 9, 1),
(56, '2021-03-17 14:33:27.707527', '5', 'nagar', 3, '', 9, 1),
(57, '2021-03-17 14:33:28.061197', '4', 'harsh', 3, '', 9, 1),
(58, '2021-03-17 14:36:00.227221', '6', 'hdhgdjh', 1, '[{\"added\": {}}]', 9, 1),
(59, '2021-03-17 16:09:40.498206', '49', 'OrderdItem object (49)', 3, '', 13, 1),
(60, '2021-03-17 16:09:41.238060', '48', 'OrderdItem object (48)', 3, '', 13, 1),
(61, '2021-03-17 16:09:41.336457', '47', 'OrderdItem object (47)', 3, '', 13, 1),
(62, '2021-03-17 16:09:41.401017', '46', 'OrderdItem object (46)', 3, '', 13, 1),
(63, '2021-03-17 16:09:41.465018', '45', 'OrderdItem object (45)', 3, '', 13, 1),
(64, '2021-03-17 16:09:41.544886', '44', 'OrderdItem object (44)', 3, '', 13, 1),
(65, '2021-03-17 16:09:41.635173', '43', 'OrderdItem object (43)', 3, '', 13, 1),
(66, '2021-03-17 16:09:41.697722', '42', 'OrderdItem object (42)', 3, '', 13, 1),
(67, '2021-03-17 16:09:41.773733', '41', 'OrderdItem object (41)', 3, '', 13, 1),
(68, '2021-03-17 16:09:41.995025', '40', 'OrderdItem object (40)', 3, '', 13, 1),
(69, '2021-03-17 16:09:42.050618', '39', 'OrderdItem object (39)', 3, '', 13, 1),
(70, '2021-03-17 16:09:42.106609', '38', 'OrderdItem object (38)', 3, '', 13, 1),
(71, '2021-03-17 16:09:42.250063', '37', 'OrderdItem object (37)', 3, '', 13, 1),
(72, '2021-03-17 16:09:42.346098', '36', 'OrderdItem object (36)', 3, '', 13, 1),
(73, '2021-03-17 16:09:42.458067', '35', 'OrderdItem object (35)', 3, '', 13, 1),
(74, '2021-03-17 16:09:42.514626', '34', 'OrderdItem object (34)', 3, '', 13, 1),
(75, '2021-03-17 16:09:42.578602', '33', 'OrderdItem object (33)', 3, '', 13, 1),
(76, '2021-03-17 16:09:42.690619', '32', 'OrderdItem object (32)', 3, '', 13, 1),
(77, '2021-03-17 16:09:42.848294', '31', 'OrderdItem object (31)', 3, '', 13, 1),
(78, '2021-03-17 16:09:42.912127', '30', 'OrderdItem object (30)', 3, '', 13, 1),
(79, '2021-03-17 16:09:42.999747', '29', 'OrderdItem object (29)', 3, '', 13, 1),
(80, '2021-03-17 16:09:43.072294', '28', 'OrderdItem object (28)', 3, '', 13, 1),
(81, '2021-03-17 16:09:43.152293', '27', 'OrderdItem object (27)', 3, '', 13, 1),
(82, '2021-03-17 16:09:43.239897', '26', 'OrderdItem object (26)', 3, '', 13, 1),
(83, '2021-03-17 16:09:43.327318', '25', 'OrderdItem object (25)', 3, '', 13, 1),
(84, '2021-03-17 16:09:43.415850', '24', 'OrderdItem object (24)', 3, '', 13, 1),
(85, '2021-03-17 16:09:43.503357', '23', 'OrderdItem object (23)', 3, '', 13, 1),
(86, '2021-03-17 16:09:43.559353', '22', 'OrderdItem object (22)', 3, '', 13, 1),
(87, '2021-03-17 16:09:43.599319', '21', 'OrderdItem object (21)', 3, '', 13, 1),
(88, '2021-03-17 16:09:43.655322', '20', 'OrderdItem object (20)', 3, '', 13, 1),
(89, '2021-03-17 16:09:43.767866', '19', 'OrderdItem object (19)', 3, '', 13, 1),
(90, '2021-03-17 16:09:43.807602', '18', 'OrderdItem object (18)', 3, '', 13, 1),
(91, '2021-03-17 16:09:43.879703', '17', 'OrderdItem object (17)', 3, '', 13, 1),
(92, '2021-03-17 16:30:26.782654', '51', 'OrderdItem object (51)', 3, '', 13, 1),
(93, '2021-03-17 16:30:26.862643', '50', 'OrderdItem object (50)', 3, '', 13, 1),
(94, '2021-03-17 16:39:57.114714', '11', '11', 3, '', 15, 1),
(95, '2021-03-17 16:39:57.333142', '10', '10', 3, '', 15, 1),
(96, '2021-03-17 16:39:57.373634', '9', '9', 3, '', 15, 1),
(97, '2021-03-17 16:39:58.353021', '8', '8', 3, '', 15, 1),
(98, '2021-03-17 16:39:58.441022', '6', '6', 3, '', 15, 1),
(99, '2021-03-17 16:39:58.512477', '3', '3', 3, '', 15, 1),
(100, '2021-03-17 16:39:58.577921', '1', '1', 3, '', 15, 1),
(101, '2021-03-17 17:29:01.709519', '25', '25', 3, '', 15, 1),
(102, '2021-03-17 17:29:03.495154', '24', '24', 3, '', 15, 1),
(103, '2021-03-17 17:29:04.225000', '23', '23', 3, '', 15, 1),
(104, '2021-03-17 17:29:04.339627', '22', '22', 3, '', 15, 1),
(105, '2021-03-17 17:29:04.598854', '21', '21', 3, '', 15, 1),
(106, '2021-03-17 17:29:04.663401', '20', '20', 3, '', 15, 1),
(107, '2021-03-17 17:29:04.703389', '19', '19', 3, '', 15, 1),
(108, '2021-03-17 17:29:04.759400', '18', '18', 3, '', 15, 1),
(109, '2021-03-17 17:29:07.910201', '17', '17', 3, '', 15, 1),
(110, '2021-03-17 17:29:08.169267', '16', '16', 3, '', 15, 1),
(111, '2021-03-17 17:29:08.281264', '15', '15', 3, '', 15, 1),
(112, '2021-03-17 17:29:08.323417', '14', '14', 3, '', 15, 1),
(113, '2021-03-17 17:29:08.379421', '13', '13', 3, '', 15, 1),
(114, '2021-03-17 17:29:08.420160', '12', '12', 3, '', 15, 1),
(115, '2021-03-17 17:34:53.002062', '26', '26', 1, '[{\"added\": {}}]', 15, 1),
(116, '2021-03-17 17:38:48.202562', '27', '27', 1, '[{\"added\": {}}]', 15, 1),
(117, '2021-03-18 05:27:23.058734', '36', '36', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(118, '2021-03-18 05:32:52.724614', '36', '36', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(119, '2021-03-18 07:21:26.648415', '36', '36', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(120, '2021-03-18 07:48:31.360269', '36', '36', 3, '', 15, 1),
(121, '2021-03-18 07:48:31.424513', '35', '35', 3, '', 15, 1),
(122, '2021-03-18 07:48:31.501214', '34', '34', 3, '', 15, 1),
(123, '2021-03-18 07:48:31.564372', '33', '33', 3, '', 15, 1),
(124, '2021-03-18 07:48:31.611670', '32', '32', 3, '', 15, 1),
(125, '2021-03-18 07:48:31.704456', '31', '31', 3, '', 15, 1),
(126, '2021-03-18 07:48:31.787200', '29', '29', 3, '', 15, 1),
(127, '2021-03-18 07:48:31.828093', '28', '28', 3, '', 15, 1),
(128, '2021-03-18 07:48:31.883943', '27', '27', 3, '', 15, 1),
(129, '2021-03-18 07:48:31.918848', '26', '26', 3, '', 15, 1),
(130, '2021-03-18 07:50:30.422510', '37', '37', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(131, '2021-03-18 07:52:43.095871', '38', '38', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(132, '2021-03-18 08:08:18.757736', '2', 'vipul dudhiya', 1, '[{\"added\": {}}]', 12, 1),
(133, '2021-03-18 08:09:04.258775', '10', 'Pizza', 1, '[{\"added\": {}}]', 10, 1),
(134, '2021-03-18 08:09:30.744859', '10', 'Pizza', 3, '', 10, 1),
(135, '2021-03-18 08:09:58.533983', '3', 'Special', 1, '[{\"added\": {}}]', 7, 1),
(136, '2021-03-18 08:15:18.824381', '11', 'hh', 1, '[{\"added\": {}}]', 10, 1),
(137, '2021-03-19 09:58:07.167826', '2', 'crispy burger', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Veg\"]}}]', 10, 1),
(138, '2021-03-20 06:45:21.639520', '39', '39', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(139, '2021-03-20 06:45:41.171310', '39', '39', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(140, '2021-03-23 03:51:56.281400', '1', 'Resuser object (1)', 1, '[{\"added\": {}}]', 18, 1),
(141, '2021-03-23 09:44:59.597429', '40', '40', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(142, '2021-03-23 13:39:29.588280', '3', 'Vikas', 1, '[{\"added\": {}}]', 12, 1),
(143, '2021-03-23 13:39:38.843303', '3', 'Vikas', 3, '', 12, 1),
(144, '2021-03-23 13:40:00.065286', '1', 'Gwalia', 2, '[{\"changed\": {\"fields\": [\"Resuser\"]}}]', 12, 1),
(145, '2021-03-23 13:40:14.709440', '2', 'vipul dudhiya', 2, '[{\"changed\": {\"fields\": [\"Resuser\"]}}]', 12, 1),
(146, '2021-03-23 14:54:33.359797', '5', 'Resuser object (5)', 3, '', 18, 1),
(147, '2021-03-23 14:54:33.752269', '4', 'Resuser object (4)', 3, '', 18, 1),
(148, '2021-03-23 14:54:33.862750', '3', 'Resuser object (3)', 3, '', 18, 1),
(149, '2021-03-24 08:10:28.890233', '12', 'Pizza', 1, '[{\"added\": {}}]', 10, 1),
(150, '2021-03-24 08:11:11.394213', '12', 'Pizza', 2, '[{\"changed\": {\"fields\": [\"Catagory\"]}}]', 10, 1),
(151, '2021-03-24 10:07:38.912315', '3', 'chai', 2, '[{\"changed\": {\"fields\": [\"Catagory\"]}}]', 10, 1),
(152, '2021-03-25 09:22:37.453001', '7', 'Customer object (7)', 2, '[{\"changed\": {\"fields\": [\"Email\"]}}]', 8, 1),
(153, '2021-03-25 10:42:44.917440', '42', '42', 2, '[{\"changed\": {\"fields\": [\"Order\"]}}]', 15, 1),
(154, '2021-03-25 10:44:14.435089', '100', 'OrderdItem object (100)', 2, '[{\"changed\": {\"fields\": [\"OrderedBy\"]}}]', 13, 1),
(155, '2021-03-25 10:51:57.152707', '41', '41', 3, '', 15, 1),
(156, '2021-03-25 10:54:38.892149', '104', 'OrderdItem object (104)', 2, '[{\"changed\": {\"fields\": [\"OrderedBy\"]}}]', 13, 1),
(157, '2021-03-25 10:57:42.098708', '37', '37', 2, '[{\"changed\": {\"fields\": [\"Order\"]}}]', 15, 1),
(158, '2021-03-25 11:15:12.218377', '105', 'OrderdItem object (105)', 3, '', 13, 1),
(159, '2021-03-25 11:15:43.216832', '104', 'OrderdItem object (104)', 3, '', 13, 1),
(160, '2021-03-25 11:15:43.398163', '103', 'OrderdItem object (103)', 3, '', 13, 1),
(161, '2021-03-25 11:15:43.452727', '102', 'OrderdItem object (102)', 3, '', 13, 1),
(162, '2021-03-25 11:15:43.505905', '101', 'OrderdItem object (101)', 3, '', 13, 1),
(163, '2021-03-25 11:15:43.552532', '100', 'OrderdItem object (100)', 3, '', 13, 1),
(164, '2021-03-25 11:15:43.582959', '99', 'OrderdItem object (99)', 3, '', 13, 1),
(165, '2021-03-25 11:15:43.618522', '98', 'OrderdItem object (98)', 3, '', 13, 1),
(166, '2021-03-25 11:15:43.648680', '97', 'OrderdItem object (97)', 3, '', 13, 1),
(167, '2021-03-25 11:15:43.684465', '96', 'OrderdItem object (96)', 3, '', 13, 1),
(168, '2021-03-25 11:15:43.739412', '95', 'OrderdItem object (95)', 3, '', 13, 1),
(169, '2021-03-25 11:15:43.846122', '94', 'OrderdItem object (94)', 3, '', 13, 1),
(170, '2021-03-25 11:15:43.881063', '93', 'OrderdItem object (93)', 3, '', 13, 1),
(171, '2021-03-25 11:15:43.911945', '92', 'OrderdItem object (92)', 3, '', 13, 1),
(172, '2021-03-25 11:15:43.988784', '91', 'OrderdItem object (91)', 3, '', 13, 1),
(173, '2021-03-25 11:15:44.024647', '90', 'OrderdItem object (90)', 3, '', 13, 1),
(174, '2021-03-25 11:15:44.055565', '89', 'OrderdItem object (89)', 3, '', 13, 1),
(175, '2021-03-25 11:15:44.090469', '88', 'OrderdItem object (88)', 3, '', 13, 1),
(176, '2021-03-25 11:15:44.155010', '87', 'OrderdItem object (87)', 3, '', 13, 1),
(177, '2021-03-25 11:15:44.204426', '86', 'OrderdItem object (86)', 3, '', 13, 1),
(178, '2021-03-25 11:15:44.257676', '85', 'OrderdItem object (85)', 3, '', 13, 1),
(179, '2021-03-25 11:15:44.287042', '84', 'OrderdItem object (84)', 3, '', 13, 1),
(180, '2021-03-25 11:15:44.344103', '83', 'OrderdItem object (83)', 3, '', 13, 1),
(181, '2021-03-25 11:15:44.408095', '82', 'OrderdItem object (82)', 3, '', 13, 1),
(182, '2021-03-25 11:15:44.440988', '81', 'OrderdItem object (81)', 3, '', 13, 1),
(183, '2021-03-25 11:15:44.497994', '80', 'OrderdItem object (80)', 3, '', 13, 1),
(184, '2021-03-25 11:15:44.528200', '79', 'OrderdItem object (79)', 3, '', 13, 1),
(185, '2021-03-25 11:15:44.586609', '78', 'OrderdItem object (78)', 3, '', 13, 1),
(186, '2021-03-25 11:15:44.617192', '77', 'OrderdItem object (77)', 3, '', 13, 1),
(187, '2021-03-25 11:15:44.674781', '76', 'OrderdItem object (76)', 3, '', 13, 1),
(188, '2021-03-25 11:15:44.704963', '75', 'OrderdItem object (75)', 3, '', 13, 1),
(189, '2021-03-25 11:15:44.762578', '74', 'OrderdItem object (74)', 3, '', 13, 1),
(190, '2021-03-25 11:15:45.097139', '73', 'OrderdItem object (73)', 3, '', 13, 1),
(191, '2021-03-25 11:15:45.156976', '72', 'OrderdItem object (72)', 3, '', 13, 1),
(192, '2021-03-25 11:15:45.187896', '71', 'OrderdItem object (71)', 3, '', 13, 1),
(193, '2021-03-25 11:15:45.246738', '70', 'OrderdItem object (70)', 3, '', 13, 1),
(194, '2021-03-25 11:15:45.298599', '69', 'OrderdItem object (69)', 3, '', 13, 1),
(195, '2021-03-25 11:15:45.387363', '68', 'OrderdItem object (68)', 3, '', 13, 1),
(196, '2021-03-25 11:15:45.419274', '67', 'OrderdItem object (67)', 3, '', 13, 1),
(197, '2021-03-25 11:15:45.465943', '66', 'OrderdItem object (66)', 3, '', 13, 1),
(198, '2021-03-25 11:15:45.496125', '65', 'OrderdItem object (65)', 3, '', 13, 1),
(199, '2021-03-25 11:15:45.542745', '64', 'OrderdItem object (64)', 3, '', 13, 1),
(200, '2021-03-25 11:15:45.598557', '63', 'OrderdItem object (63)', 3, '', 13, 1),
(201, '2021-03-25 11:15:45.663830', '62', 'OrderdItem object (62)', 3, '', 13, 1),
(202, '2021-03-25 11:15:45.729832', '61', 'OrderdItem object (61)', 3, '', 13, 1),
(203, '2021-03-25 11:15:45.788818', '60', 'OrderdItem object (60)', 3, '', 13, 1),
(204, '2021-03-25 11:15:45.826890', '59', 'OrderdItem object (59)', 3, '', 13, 1),
(205, '2021-03-25 11:15:45.873976', '58', 'OrderdItem object (58)', 3, '', 13, 1),
(206, '2021-03-25 11:15:45.904628', '57', 'OrderdItem object (57)', 3, '', 13, 1),
(207, '2021-03-25 11:15:45.950017', '56', 'OrderdItem object (56)', 3, '', 13, 1),
(208, '2021-03-25 11:15:46.013191', '55', 'OrderdItem object (55)', 3, '', 13, 1),
(209, '2021-03-25 11:15:46.061486', '54', 'OrderdItem object (54)', 3, '', 13, 1),
(210, '2021-03-25 11:15:46.169336', '53', 'OrderdItem object (53)', 3, '', 13, 1),
(211, '2021-03-25 11:15:46.226562', '52', 'OrderdItem object (52)', 3, '', 13, 1),
(212, '2021-03-25 11:15:59.749050', '42', '42', 3, '', 15, 1),
(213, '2021-03-25 11:15:59.814228', '40', '40', 3, '', 15, 1),
(214, '2021-03-25 11:16:00.149259', '39', '39', 3, '', 15, 1),
(215, '2021-03-25 11:16:00.210558', '38', '38', 3, '', 15, 1),
(216, '2021-03-25 11:16:00.276773', '37', '37', 3, '', 15, 1),
(217, '2021-03-25 12:33:34.046701', '43', '43', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(218, '2021-03-25 13:00:42.261899', '43', '43', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(219, '2021-03-25 13:16:06.707707', '43', '43', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(220, '2021-03-25 13:18:54.273116', '7', 'harsh', 1, '[{\"added\": {}}]', 9, 1),
(221, '2021-03-25 13:19:19.102689', '7', 'harsh', 2, '[]', 9, 1),
(222, '2021-03-26 03:35:15.738153', '43', '43', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(223, '2021-03-26 03:35:43.156078', '43', '43', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(224, '2021-03-26 03:36:40.410426', '43', '43', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(225, '2021-03-26 03:37:41.255513', '43', '43', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(226, '2021-03-26 03:47:57.307907', '8', 'harsh', 1, '[{\"added\": {}}]', 9, 1),
(227, '2021-03-26 04:55:59.940339', '43', '43', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(228, '2021-03-26 04:56:09.428639', '43', '43', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(229, '2021-03-26 04:57:20.926248', '43', '43', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(230, '2021-03-26 04:57:41.978289', '43', '43', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(231, '2021-03-26 04:57:49.750747', '43', '43', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(232, '2021-03-26 14:33:01.862759', '2', 'Menuitem object (2)', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Price\"]}}]', 10, 1),
(233, '2021-03-26 15:54:59.046335', '6', 'CustomerAddress object (6)', 2, '[{\"changed\": {\"fields\": [\"Address\"]}}]', 9, 1),
(234, '2021-03-26 16:43:41.115547', '44', '44', 3, '', 15, 1),
(235, '2021-03-26 16:43:54.067613', '108', 'OrderdItem object (108)', 3, '', 13, 1),
(236, '2021-03-27 09:51:10.380118', '8', 'CustomerAddress object (8)', 3, '', 9, 1),
(237, '2021-03-27 09:51:11.453402', '7', 'CustomerAddress object (7)', 3, '', 9, 1),
(238, '2021-03-27 09:51:11.704041', '6', 'CustomerAddress object (6)', 3, '', 9, 1),
(239, '2021-03-27 09:51:11.768621', '5', 'CustomerAddress object (5)', 3, '', 9, 1),
(240, '2021-03-27 09:51:11.816047', '4', 'CustomerAddress object (4)', 3, '', 9, 1),
(241, '2021-03-27 09:51:54.547967', '47', '47', 3, '', 15, 1),
(242, '2021-03-27 09:51:55.986155', '46', '46', 3, '', 15, 1),
(243, '2021-03-27 09:51:56.106113', '45', '45', 3, '', 15, 1),
(244, '2021-03-27 09:51:56.138599', '43', '43', 3, '', 15, 1),
(245, '2021-03-27 09:52:09.301539', '111', 'OrderdItem object (111)', 3, '', 13, 1),
(246, '2021-03-27 09:52:09.365531', '110', 'OrderdItem object (110)', 3, '', 13, 1),
(247, '2021-03-27 09:52:09.578039', '109', 'OrderdItem object (109)', 3, '', 13, 1),
(248, '2021-03-27 09:52:09.618004', '107', 'OrderdItem object (107)', 3, '', 13, 1),
(249, '2021-03-27 09:52:09.721935', '106', 'OrderdItem object (106)', 3, '', 13, 1),
(250, '2021-03-27 09:52:21.144025', '8', 'CustomerAddress object (8)', 3, '', 9, 1),
(251, '2021-03-27 09:52:21.481468', '7', 'CustomerAddress object (7)', 3, '', 9, 1),
(252, '2021-03-27 09:52:21.545426', '6', 'CustomerAddress object (6)', 3, '', 9, 1),
(253, '2021-03-27 09:52:21.593394', '5', 'CustomerAddress object (5)', 3, '', 9, 1),
(254, '2021-03-27 09:52:21.625335', '4', 'CustomerAddress object (4)', 3, '', 9, 1),
(255, '2021-03-27 09:55:48.374691', '8', 'CustomerAddress object (8)', 3, '', 9, 1),
(256, '2021-03-27 09:55:58.862270', '7', 'CustomerAddress object (7)', 3, '', 9, 1),
(257, '2021-03-27 09:55:59.050113', '6', 'CustomerAddress object (6)', 3, '', 9, 1),
(258, '2021-03-27 09:56:11.717550', '5', 'CustomerAddress object (5)', 3, '', 9, 1),
(259, '2021-03-27 09:56:11.805490', '4', 'CustomerAddress object (4)', 3, '', 9, 1),
(260, '2021-03-27 10:05:10.465025', '5', 'CustomerAddress object (5)', 3, '', 9, 1),
(261, '2021-03-28 05:20:53.899253', '2', 'Menuitem object (2)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(262, '2021-03-28 07:12:07.057458', '3', 'das khaman', 3, '', 12, 1),
(263, '2021-03-28 07:12:54.715697', '2', 'vipul dudhiya', 2, '[{\"changed\": {\"fields\": [\"R logo\"]}}]', 12, 1),
(264, '2021-03-28 07:13:31.140779', '1', 'Gwalia', 2, '[{\"changed\": {\"fields\": [\"R logo\"]}}]', 12, 1),
(265, '2021-03-28 07:15:51.363786', '4', 'das khaman', 2, '[{\"changed\": {\"fields\": [\"R logo\"]}}]', 12, 1),
(266, '2021-03-28 08:35:42.362767', '4', 'ganesh khaman', 2, '[{\"changed\": {\"fields\": [\"Rname\"]}}]', 12, 1),
(267, '2021-03-28 09:12:35.958339', '4', 'das khaman', 2, '[{\"changed\": {\"fields\": [\"Rname\"]}}]', 12, 1),
(268, '2021-03-28 09:12:48.829466', '2', 'vipul dudhiya', 2, '[{\"changed\": {\"fields\": [\"Approved\"]}}]', 12, 1),
(269, '2021-03-28 09:18:13.853561', '2', 'vipul dudhiya', 2, '[{\"changed\": {\"fields\": [\"Area\", \"City\", \"State\"]}}]', 12, 1),
(270, '2021-03-28 09:18:45.313291', '1', 'Gwalia', 2, '[{\"changed\": {\"fields\": [\"Area\", \"City\", \"State\", \"Cost for two\"]}}]', 12, 1),
(271, '2021-03-28 09:34:16.755083', '9', 'CustomerAddress object (9)', 1, '[{\"added\": {}}]', 9, 1),
(272, '2021-03-28 09:45:47.725182', '9', 'CustomerAddress object (9)', 2, '[{\"changed\": {\"fields\": [\"City\", \"State\"]}}]', 9, 1),
(273, '2021-03-28 09:47:22.355023', '9', 'CustomerAddress object (9)', 2, '[{\"changed\": {\"fields\": [\"City\", \"State\"]}}]', 9, 1),
(274, '2021-03-28 10:47:37.088496', '9', 'CustomerAddress object (9)', 2, '[{\"changed\": {\"fields\": [\"Customer\"]}}]', 9, 1),
(275, '2021-03-28 10:49:47.866157', '11', 'CustomerAddress object (11)', 3, '', 9, 1),
(276, '2021-03-28 10:49:56.255961', '9', 'CustomerAddress object (9)', 2, '[{\"changed\": {\"fields\": [\"Customer\"]}}]', 9, 1),
(277, '2021-03-28 10:50:07.824333', '10', 'CustomerAddress object (10)', 2, '[{\"changed\": {\"fields\": [\"Customer\"]}}]', 9, 1),
(278, '2021-03-30 04:47:00.772691', '9', 'Menuitem object (9)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(279, '2021-03-30 09:30:46.878321', '48', '48', 2, '[{\"changed\": {\"fields\": [\"R id\"]}}]', 15, 1),
(280, '2021-03-30 09:47:53.850492', '50', '50', 2, '[{\"changed\": {\"fields\": [\"Orderconfirm\"]}}]', 15, 1),
(281, '2021-03-30 09:48:10.124481', '50', '50', 2, '[{\"changed\": {\"fields\": [\"Orderconfirm\"]}}]', 15, 1),
(282, '2021-03-30 10:02:40.946550', '51', '51', 3, '', 15, 1),
(283, '2021-03-30 10:05:16.539121', '52', '52', 3, '', 15, 1),
(284, '2021-03-30 10:22:05.561536', '50', '50', 2, '[{\"changed\": {\"fields\": [\"Order\"]}}]', 15, 1),
(285, '2021-04-01 04:25:39.685603', '3', 'Menuitem object (3)', 2, '[]', 10, 1),
(286, '2021-04-01 04:31:32.364883', '11', 'Menuitem object (11)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(287, '2021-04-01 11:03:41.979345', '4', 'Recommanded', 1, '[{\"added\": {}}]', 7, 1),
(288, '2021-04-01 11:06:29.248380', '4', 'Recommanded', 3, '', 7, 1),
(289, '2021-04-01 11:10:49.098134', '6', 'holi special', 1, '[{\"added\": {}}]', 7, 1),
(290, '2021-04-01 11:16:59.327134', '6', 'holi special', 3, '', 7, 1),
(291, '2021-04-01 11:16:59.415333', '5', 'Recommanded', 3, '', 7, 1),
(292, '2021-04-01 13:13:07.908625', '50', '50', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(293, '2021-04-02 05:13:14.558604', '50', '50', 2, '[{\"changed\": {\"fields\": [\"Order\"]}}]', 15, 1),
(294, '2021-04-02 05:21:32.111942', '50', '50', 2, '[{\"changed\": {\"fields\": [\"Order\"]}}]', 15, 1),
(295, '2021-04-02 06:10:35.089686', '50', '50', 2, '[{\"changed\": {\"fields\": [\"R id\"]}}]', 15, 1),
(296, '2021-04-02 06:40:08.487630', '124', 'OrderdItem object (124)', 2, '[{\"changed\": {\"fields\": [\"Qty\"]}}]', 13, 1),
(297, '2021-04-02 06:40:49.171897', '50', '50', 2, '[{\"changed\": {\"fields\": [\"Orderconfirm\"]}}]', 15, 1),
(298, '2021-04-02 06:43:31.004356', '50', '50', 2, '[{\"changed\": {\"fields\": [\"Payment\"]}}]', 15, 1),
(299, '2021-04-02 06:43:43.397851', '50', '50', 2, '[{\"changed\": {\"fields\": [\"Payment\"]}}]', 15, 1),
(300, '2021-04-02 06:53:03.723005', '50', '50', 2, '[{\"changed\": {\"fields\": [\"Orderconfirm\"]}}]', 15, 1),
(301, '2021-04-02 06:53:31.968386', '50', '50', 2, '[{\"changed\": {\"fields\": [\"Orderconfirm\"]}}]', 15, 1),
(302, '2021-04-02 06:55:24.184405', '50', '50', 2, '[{\"changed\": {\"fields\": [\"Orderconfirm\"]}}]', 15, 1),
(303, '2021-04-03 13:04:19.001982', '14', 'Menuitem object (14)', 2, '[{\"changed\": {\"fields\": [\"Available\"]}}]', 10, 1),
(304, '2021-04-03 13:04:35.347818', '14', 'Menuitem object (14)', 2, '[{\"changed\": {\"fields\": [\"Available\"]}}]', 10, 1),
(305, '2021-04-03 13:06:08.945772', '13', 'Menuitem object (13)', 2, '[{\"changed\": {\"fields\": [\"Available\"]}}]', 10, 1),
(306, '2021-04-03 13:06:23.348138', '13', 'Menuitem object (13)', 2, '[{\"changed\": {\"fields\": [\"Available\"]}}]', 10, 1),
(307, '2021-04-13 12:25:32.213773', '51', '51', 1, '[{\"added\": {}}]', 15, 1),
(308, '2021-04-13 12:29:56.841530', '48', '48', 2, '[{\"changed\": {\"fields\": [\"R id\"]}}]', 15, 1),
(309, '2021-04-14 05:25:48.759374', '49', '49', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Payment\"]}}]', 15, 1),
(310, '2021-04-14 05:28:16.840258', '49', '49', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(311, '2021-04-16 12:19:23.377870', '52', '52', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(312, '2021-04-16 12:19:49.383560', '52', '52', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(313, '2021-04-16 12:20:02.014968', '52', '52', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(314, '2021-04-16 12:24:49.432422', '52', '52', 2, '[{\"changed\": {\"fields\": [\"Orderconfirm\"]}}]', 15, 1),
(315, '2021-04-16 12:31:00.896664', '52', '52', 3, '', 15, 1),
(316, '2021-04-16 12:34:10.605833', '53', '53', 3, '', 15, 1),
(317, '2021-04-17 13:16:11.679047', '2', 'vipul dudhiya', 2, '[{\"changed\": {\"fields\": [\"Favourite\"]}}]', 12, 1),
(318, '2021-04-24 04:45:00.648853', '54', '54', 2, '[{\"changed\": {\"fields\": [\"R id\"]}}]', 15, 1),
(319, '2021-04-24 04:46:03.654354', '54', '54', 2, '[{\"changed\": {\"fields\": [\"Orderconfirm\"]}}]', 15, 1),
(320, '2021-04-24 04:51:54.378983', '50', '50', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(321, '2021-04-24 04:53:08.934290', '50', '50', 2, '[{\"changed\": {\"fields\": [\"R id\"]}}]', 15, 1),
(322, '2021-04-24 04:55:56.820656', '50', '50', 2, '[{\"changed\": {\"fields\": [\"R id\"]}}]', 15, 1),
(323, '2021-04-24 04:56:27.624044', '50', '50', 2, '[{\"changed\": {\"fields\": [\"R id\"]}}]', 15, 1),
(324, '2021-04-24 04:56:47.674336', '50', '50', 2, '[{\"changed\": {\"fields\": [\"R id\", \"Status\"]}}]', 15, 1),
(325, '2021-04-24 08:11:54.674818', '54', '54', 2, '[]', 15, 1),
(326, '2021-04-24 08:15:38.935100', '54', '54', 2, '[{\"changed\": {\"fields\": [\"Orderconfirm\"]}}]', 15, 1),
(327, '2021-04-24 08:18:14.531936', '54', '54', 2, '[{\"changed\": {\"fields\": [\"Orderconfirm\"]}}]', 15, 1),
(328, '2021-04-24 08:18:36.902564', '51', '51', 2, '[{\"changed\": {\"fields\": [\"R id\"]}}]', 15, 1),
(329, '2021-04-24 08:20:50.771220', '51', '51', 2, '[{\"changed\": {\"fields\": [\"Orderconfirm\"]}}]', 15, 1),
(330, '2021-04-24 08:22:39.898893', '54', '54', 2, '[{\"changed\": {\"fields\": [\"Orderconfirm\"]}}]', 15, 1),
(331, '2021-06-18 12:10:53.895220', '54', '54', 2, '[{\"changed\": {\"fields\": [\"Orderconfirm\"]}}]', 15, 1),
(332, '2021-06-18 12:16:02.628927', '54', '54', 2, '[{\"changed\": {\"fields\": [\"Orderconfirm\"]}}]', 15, 1),
(333, '2021-06-18 12:17:10.573371', '54', '54', 2, '[{\"changed\": {\"fields\": [\"Orderconfirm\"]}}]', 15, 1),
(334, '2021-06-18 12:23:38.691547', '54', '54', 2, '[{\"changed\": {\"fields\": [\"Orderconfirm\"]}}]', 15, 1),
(335, '2021-06-18 12:32:24.607396', '54', '54', 2, '[{\"changed\": {\"fields\": [\"Orderconfirm\"]}}]', 15, 1),
(336, '2021-06-19 07:41:44.232272', '49', '49', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(337, '2021-06-19 07:42:46.193871', '51', '51', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(338, '2021-06-19 14:19:24.071084', '54', '54', 2, '[{\"changed\": {\"fields\": [\"Orderconfirm\"]}}]', 15, 1),
(339, '2021-06-19 14:20:06.072423', '54', '54', 2, '[{\"changed\": {\"fields\": [\"Orderconfirm\"]}}]', 15, 1),
(340, '2021-06-19 14:23:10.868889', '51', '51', 2, '[{\"changed\": {\"fields\": [\"Orderconfirm\"]}}]', 15, 1),
(341, '2021-06-19 14:29:23.123242', '54', '54', 2, '[{\"changed\": {\"fields\": [\"Orderconfirm\"]}}]', 15, 1),
(342, '2021-06-19 14:36:53.340594', '54', '54', 2, '[{\"changed\": {\"fields\": [\"Orderconfirm\"]}}]', 15, 1),
(343, '2021-06-19 15:14:39.639121', '54', '54', 2, '[{\"changed\": {\"fields\": [\"Orderconfirm\"]}}]', 15, 1),
(344, '2021-06-19 15:21:36.303593', '54', '54', 2, '[{\"changed\": {\"fields\": [\"Orderconfirm\"]}}]', 15, 1),
(345, '2021-06-19 15:22:51.048873', '54', '54', 2, '[{\"changed\": {\"fields\": [\"Orderconfirm\"]}}]', 15, 1),
(346, '2021-06-19 15:24:29.505894', '54', '54', 2, '[{\"changed\": {\"fields\": [\"Orderconfirm\"]}}]', 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'foodapp', 'catagory'),
(8, 'foodapp', 'customer'),
(9, 'foodapp', 'customeraddress'),
(20, 'foodapp', 'favourite'),
(16, 'foodapp', 'img'),
(19, 'foodapp', 'imgs'),
(10, 'foodapp', 'menuitem'),
(11, 'foodapp', 'order'),
(14, 'foodapp', 'orderdetail'),
(13, 'foodapp', 'orderditem'),
(15, 'foodapp', 'ordertrack'),
(12, 'foodapp', 'restaurant'),
(18, 'foodapp', 'resuser'),
(17, 'foodapp', 'transection'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-02-23 06:18:25.305471'),
(2, 'auth', '0001_initial', '2021-02-23 06:18:27.707815'),
(3, 'admin', '0001_initial', '2021-02-23 06:18:34.388444'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-02-23 06:18:36.669594'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-02-23 06:18:36.703239'),
(6, 'admin', '0004_auto_20201030_1840', '2021-02-23 06:18:37.416843'),
(7, 'admin', '0005_auto_20201030_1854', '2021-02-23 06:18:38.131533'),
(8, 'contenttypes', '0002_remove_content_type_name', '2021-02-23 06:18:39.264264'),
(9, 'auth', '0002_alter_permission_name_max_length', '2021-02-23 06:18:40.042411'),
(10, 'auth', '0003_alter_user_email_max_length', '2021-02-23 06:18:40.913830'),
(11, 'auth', '0004_alter_user_username_opts', '2021-02-23 06:18:40.974272'),
(12, 'auth', '0005_alter_user_last_login_null', '2021-02-23 06:18:41.694337'),
(13, 'auth', '0006_require_contenttypes_0002', '2021-02-23 06:18:41.746832'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2021-02-23 06:18:41.788247'),
(15, 'auth', '0008_alter_user_username_max_length', '2021-02-23 06:18:42.739321'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2021-02-23 06:18:43.964609'),
(17, 'auth', '0010_alter_group_name_max_length', '2021-02-23 06:18:44.750049'),
(18, 'auth', '0011_update_proxy_permissions', '2021-02-23 06:18:44.789381'),
(19, 'foodapp', '0001_initial', '2021-02-23 06:18:48.578834'),
(20, 'sessions', '0001_initial', '2021-02-23 06:18:59.453766'),
(21, 'foodapp', '0002_auto_20210225_0925', '2021-02-25 03:57:33.556648'),
(22, 'foodapp', '0003_auto_20210225_0927', '2021-02-25 03:57:47.147173'),
(23, 'foodapp', '0004_auto_20210227_1855', '2021-02-27 13:25:38.815833'),
(24, 'foodapp', '0005_restaurant_cost_for_two', '2021-02-27 13:34:49.223327'),
(25, 'foodapp', '0006_auto_20210304_1037', '2021-03-04 05:08:09.343022'),
(26, 'foodapp', '0007_auto_20210304_1048', '2021-03-04 05:18:22.585982'),
(27, 'foodapp', '0008_menuitem_veg', '2021-03-04 05:54:14.469674'),
(28, 'foodapp', '0002_menuitem_description', '2021-03-11 13:49:05.102905'),
(29, 'foodapp', '0003_auto_20210311_1925', '2021-03-11 13:55:54.891103'),
(30, 'foodapp', '0004_img', '2021-03-13 13:39:41.874656'),
(31, 'foodapp', '0005_auto_20210316_1920', '2021-03-16 13:50:51.668140'),
(32, 'foodapp', '0006_auto_20210317_1849', '2021-03-17 13:19:13.248551'),
(33, 'foodapp', '0007_auto_20210317_1855', '2021-03-17 13:26:03.609152'),
(34, 'foodapp', '0008_auto_20210317_2017', '2021-03-17 14:47:41.992835'),
(35, 'foodapp', '0009_auto_20210318_0922', '2021-03-18 03:53:04.582584'),
(36, 'foodapp', '0010_auto_20210318_1055', '2021-03-18 05:25:54.792328'),
(37, 'foodapp', '0011_delete_img', '2021-03-20 12:50:15.903110'),
(38, 'foodapp', '0002_resuser_password', '2021-03-23 03:49:08.810980'),
(39, 'foodapp', '0002_auto_20210323_0945', '2021-03-23 04:16:14.089771'),
(40, 'foodapp', '0003_remove_resuser_username', '2021-03-23 13:03:05.218225'),
(41, 'foodapp', '0004_auto_20210323_1907', '2021-03-23 13:37:55.395003'),
(42, 'foodapp', '0005_auto_20210323_2020', '2021-03-23 14:50:59.918138'),
(43, 'foodapp', '0006_remove_restaurant_min_ord', '2021-03-24 06:58:01.793789'),
(44, 'foodapp', '0007_auto_20210325_1646', '2021-03-25 11:17:14.500778'),
(45, 'foodapp', '0008_auto_20210326_0904', '2021-03-26 03:34:38.387809'),
(46, 'foodapp', '0009_auto_20210327_1515', '2021-03-27 09:45:24.775518'),
(47, 'foodapp', '0010_auto_20210327_1519', '2021-03-27 09:50:12.302829'),
(48, 'foodapp', '0011_auto_20210327_1525', '2021-03-27 09:55:27.948220'),
(49, 'foodapp', '0012_auto_20210327_1716', '2021-03-27 11:46:13.071547'),
(50, 'foodapp', '0013_imgs', '2021-03-28 04:40:04.437772'),
(51, 'foodapp', '0014_delete_imgs', '2021-03-28 05:06:11.618065'),
(52, 'foodapp', '0015_restaurant_deliverytime', '2021-03-28 09:20:13.851227'),
(53, 'foodapp', '0016_auto_20210328_1453', '2021-03-28 09:23:33.212671'),
(54, 'foodapp', '0017_customeraddress_name', '2021-03-28 09:24:25.087182'),
(55, 'foodapp', '0018_auto_20210328_1514', '2021-03-28 09:44:20.807940'),
(56, 'foodapp', '0019_auto_20210330_1431', '2021-03-30 09:01:16.362695'),
(57, 'foodapp', '0020_auto_20210330_1450', '2021-03-30 09:20:47.989508'),
(58, 'foodapp', '0021_auto_20210401_1816', '2021-04-01 12:47:16.780636'),
(59, 'foodapp', '0022_favourite', '2021-04-13 06:37:07.452907'),
(60, 'foodapp', '0023_delete_favourite', '2021-04-15 14:33:56.817872'),
(61, 'foodapp', '0024_restaurant_favourite', '2021-04-17 13:08:36.619573');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('01n41avd6ccst0c2f9nyvl1g6klri6ep', 'ZDYwZjkzYmE5ZTFmYTljNzJkODQ3ODMxMGRiOTRmOTFhNTQ5MTQ5Zjp7ImNhcnQiOnsiMiI6MSwiOSI6MX0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzlkMGRiODRjMmE0YTAyMTdlMWM1MWI1M2YxZTYxYjA4MDg4MTRmIn0=', '2021-03-31 14:28:13.220213'),
('01u32obzi83ynwx22zdb5k7zlfrq0ikp', 'NDRmNmExYWRiMzZlY2I5MWVhNDg0ZjU2MTZjNTk5Mjg1OTkwM2ZhNjp7ImNhcnQiOnsiMyI6Mn0sImN1c3RvbWVyIjo3LCJyZXMiOjJ9', '2021-04-09 16:48:58.847177'),
('0a1qx1kuxaiwfri1c77jg5rbwy2dj7sd', 'MTIyMjViNWZjOWJkMjAxMzIwNjQwMjk1OTlkZWIwNWU4MDU1ZTAyMzp7ImNhcnQiOnsiMiI6MX19', '2021-04-01 04:44:11.923899'),
('0irebqcf1xvlbwmv613wof3dk34ajpk6', 'MTEyZWVmNjFmOGJlY2Q5NWQ1ZjI1OWM3ZDZiNGVjMmRkYTNlN2ZhNDp7ImNhcnQiOnt9LCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTc5ZDBkYjg0YzJhNGEwMjE3ZTFjNTFiNTNmMWU2MWIwODA4ODE0ZiIsInJlc3RhdXJhbnQiOjYsImN1c3RvbWVyIjo3fQ==', '2021-07-03 14:00:53.069712'),
('0un7vx0jwt7x5sxrtgv50gj3l6wbqfwc', 'ZDYwZjkzYmE5ZTFmYTljNzJkODQ3ODMxMGRiOTRmOTFhNTQ5MTQ5Zjp7ImNhcnQiOnsiMiI6MSwiOSI6MX0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzlkMGRiODRjMmE0YTAyMTdlMWM1MWI1M2YxZTYxYjA4MDg4MTRmIn0=', '2021-03-31 16:32:12.301555'),
('2342uq4mlaxft4ja5kyhdm79x261kflm', 'OWMzMTQ5MWE5MWE5OTAwNjY2MjBmY2I2ZDU5MDU2NjA0NGExYTJkZjp7ImN1c3RvbWVyIjo1fQ==', '2021-03-11 04:26:38.747968'),
('2dojqpe6b9igbcwauabu8lzdbmbiioo9', 'ZDYwZjkzYmE5ZTFmYTljNzJkODQ3ODMxMGRiOTRmOTFhNTQ5MTQ5Zjp7ImNhcnQiOnsiMiI6MSwiOSI6MX0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzlkMGRiODRjMmE0YTAyMTdlMWM1MWI1M2YxZTYxYjA4MDg4MTRmIn0=', '2021-03-31 17:21:11.672310'),
('3887axahumk02apg0pugpl0373wr3090', 'ZGYyNjNiZDBmOTlmODIzMDFkNTQ5MGViODQ1Zjk1MGM4YWMzZjBkZTp7ImNhcnQiOnsiMTEiOjF9fQ==', '2021-04-01 08:42:51.335264'),
('3qglvqzjmajlvtoe3fovu1xrl6sh4kez', 'N2VkNDIwZjQwODI5NjljYjg1YjE5ZGFjNzJjYzA1NDY5OGM5M2Q0Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzlkMGRiODRjMmE0YTAyMTdlMWM1MWI1M2YxZTYxYjA4MDg4MTRmIiwiY3VzdG9tZXIiOjF9', '2021-03-09 15:14:31.196146'),
('4cd5ssm0ncf9z9y5av1qig4kv2ryyn4c', 'MTIxYjYyNjg2N2NiMzVkYmRmMTRiNGM1ZDlhZDBlZDAxMzFlZmIzZDp7ImNhcnQiOnsiMSI6MX19', '2021-03-18 12:25:33.837000'),
('4n441jvo2k9wryrseuxfv7uuc36q97vu', 'OWYyMjllMWIwNDhjYjQ2YzcxNmZjNWE5MTM4Y2Y3NjY0MjE3OGU5NDp7ImNhcnQiOnsiMTEiOjF9LCJyZXMiOjJ9', '2021-04-06 10:17:05.042090'),
('4x3zhlsqy807ono0t3tzasykxny3erv9', 'YWEwZmE0ZGM0NjEzZDFjZGU0ZmU1Y2U3ZTJjYTMxZjI1NWE1MDIwMDp7ImNhcnQiOnsiMyI6Mn0sImN1c3RvbWVyIjo3LCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTc5ZDBkYjg0YzJhNGEwMjE3ZTFjNTFiNTNmMWU2MWIwODA4ODE0ZiIsInJlcyI6MiwiYWRkcmVzcyI6MTF9', '2021-04-30 12:31:30.914278'),
('4z71vu1bw8hi4cwpj6zjjmtr6nwu9xwn', 'ZGM0MTZhZmRmMTFlZjlmOWU5NWFlMzM1MmM2M2MxYWJlOWFiYTljOTp7ImNhcnQiOnsiOSI6MSwiMiI6MX19', '2021-04-01 12:34:38.162633'),
('5n2hiw7geoqdfqybxmr5bi6wkw2qtrtt', 'OWM3Njc5NDdkNzI5YjNmNTMwMThmYjJhYTUxNjhjOTY2MWFlMTk0ODp7ImNhcnQiOnt9LCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTc5ZDBkYjg0YzJhNGEwMjE3ZTFjNTFiNTNmMWU2MWIwODA4ODE0ZiIsInZpa2kiOiJoYXJzaCIsImN1c3RvbWVyIjo3LCJhZGRyZXNzIjo5LCJyZXN0YXVyYW50Ijo2fQ==', '2021-04-15 16:44:40.564836'),
('84w89dyp0ekj1b1sl2l590j6gb62w8xi', 'NDUxZDgxNDc4YWIwZTVjZGVhYWMxZGEyMThkMGFlMTJiNzEyMTcyNjp7ImNhcnQiOm51bGwsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzlkMGRiODRjMmE0YTAyMTdlMWM1MWI1M2YxZTYxYjA4MDg4MTRmIn0=', '2021-04-01 03:54:57.650890'),
('8g1odcp72t5sznsnz92iv5i819ns9wcv', 'YjZmZWU5ZjI3ZjQzNDQxMmYzNDZhMmFhZTA0ZGY3NmI0NDJlZjA5Zjp7ImNhcnQiOnsiMiI6MX0sInJlcyI6MX0=', '2021-04-01 12:37:17.699793'),
('8lmtxwjdijv1xah27w19xnefvr7djtj5', 'NmNhZGJmMDJlMmFhYTQ5OWM3OTNiZTBjNGJlY2JiNTJiZjRlZTI5NDp7ImNhcnQiOnsiMiI6MiwiOSI6Mn0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzlkMGRiODRjMmE0YTAyMTdlMWM1MWI1M2YxZTYxYjA4MDg4MTRmIn0=', '2021-03-31 14:11:42.818403'),
('8t7vdec1x9l62om8o5wmfrb1i7h47l8w', 'ZDYwZjkzYmE5ZTFmYTljNzJkODQ3ODMxMGRiOTRmOTFhNTQ5MTQ5Zjp7ImNhcnQiOnsiMiI6MSwiOSI6MX0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzlkMGRiODRjMmE0YTAyMTdlMWM1MWI1M2YxZTYxYjA4MDg4MTRmIn0=', '2021-03-31 16:42:10.964689'),
('a62pamg6nkjzcnz88asr1jcauoenhyhq', 'OWE1ZWZiYmIwNmY5OGI2Mzg2N2Y2OGZhZmNhNDcxYTcxNTJmYzQwMjp7ImNhcnQiOnt9fQ==', '2021-06-15 07:29:17.739964'),
('ada0m4auurca1dpmytj7c3196icq0vbr', 'NWE4NDYyYmM1MWMzNWM0YzcwYmRhNzcwZmMwMWI0ZmMwNGFlM2ZmNjp7ImNhcnQiOnsiMiI6MX0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzlkMGRiODRjMmE0YTAyMTdlMWM1MWI1M2YxZTYxYjA4MDg4MTRmIn0=', '2021-04-01 03:51:11.231602'),
('aq881hg2u7xw18ey6sy8u9nuxe5ys5j4', 'ZDRkYzRmMThjNDhkYzcwM2Q0N2YzYjljYWNhNGJlMWNiY2Q1OWMxNTp7ImNhcnQiOnsiMiI6MSwiMTEiOjJ9LCJyZXMiOjJ9', '2021-04-01 09:51:23.967214'),
('bnpnzf0u4f3dgn4w5g8sj54mwg30rnn4', 'NWE4NDYyYmM1MWMzNWM0YzcwYmRhNzcwZmMwMWI0ZmMwNGFlM2ZmNjp7ImNhcnQiOnsiMiI6MX0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzlkMGRiODRjMmE0YTAyMTdlMWM1MWI1M2YxZTYxYjA4MDg4MTRmIn0=', '2021-04-01 07:51:23.069908'),
('cyywd02673gmonv3zlmusaghpc94j6s2', 'NGRiYTkxMTEwM2M0ZjVmNDM2NjA1OWQzOTViZTg1MzBmMWZjYjhlMDp7ImNhcnQiOnsiMyI6MX0sImN1c3RvbWVyIjo3LCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTc5ZDBkYjg0YzJhNGEwMjE3ZTFjNTFiNTNmMWU2MWIwODA4ODE0ZiIsInJlcyI6MiwiYWRkcmVzcyI6MTF9', '2021-04-30 12:39:07.093305'),
('d5iy55d2zgv6uwt43boftu0e46b17vyj', 'OTMzNjc1Y2FmZjVmNWJiZjczMzAxMzk5MTFjZDQ2ZDVjODRjMWY5OTp7ImNhcnQiOnsiMTEiOjIsInJlcyI6Mn19', '2021-04-01 08:44:44.532946'),
('d5vmg79p0wlw12hbqu3repx6uh8cwgyk', 'MDFkZDgwYmRkZDMwZTg4NmYyZTdlZjE3YmQ5ZDU0OGQxODIwZDFmYzp7ImNhcnQiOnsiMTEiOjEsIjIiOjF9LCJyZXMiOjJ9', '2021-04-01 09:54:44.567218'),
('dwubd24viun8ros1zgr3x8lkm0hbsmbz', 'OWYyMjllMWIwNDhjYjQ2YzcxNmZjNWE5MTM4Y2Y3NjY0MjE3OGU5NDp7ImNhcnQiOnsiMTEiOjF9LCJyZXMiOjJ9', '2021-04-01 09:53:01.577569'),
('e7h1uqevu1skijn1wd20dvodvc54w6fj', 'YmNlYzgwNGI4ZWMzMWQ1MjkxZjIwNjhlYWI3ODk2MTYxZGM2ZDM4ZTp7ImNhcnQiOnsiMTEiOjEsIjIiOjJ9fQ==', '2021-04-01 09:30:44.949966'),
('eoct9phu0uzdj88nusp1r2l1v0tmn724', 'Y2E4MzAzZmEyMDEwZmZiN2JhZTc0ZTFmMGU0MDJmNTc3ZDEzYTE5ZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzlkMGRiODRjMmE0YTAyMTdlMWM1MWI1M2YxZTYxYjA4MDg4MTRmIiwiY3VzdG9tZXIiOjN9', '2021-03-11 04:15:21.022675'),
('g2g9cel6bjlpwfoymdj5bi52b3jr49tp', 'ZDY2OWQ1ZjkwMWJlYmIwZDMyODFiNDczNjcxNWQxMDY2ZWY0MTZhYzp7ImNhcnQiOnsiMSI6MSwiMiI6MX0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzlkMGRiODRjMmE0YTAyMTdlMWM1MWI1M2YxZTYxYjA4MDg4MTRmIn0=', '2021-03-29 12:57:26.077226'),
('gbyw7eztr73gd68aacdgn6kq9yqu2se4', 'OTMzNjc1Y2FmZjVmNWJiZjczMzAxMzk5MTFjZDQ2ZDVjODRjMWY5OTp7ImNhcnQiOnsiMTEiOjIsInJlcyI6Mn19', '2021-04-01 08:40:14.810962'),
('gknu1ka8hi1jep49nmk87rpm06glmpew', 'ZDhlMmQ5YzBmMjE4MzNjOWVkZjAyMzBlYzg3MzYzNTg4ZTc2MDk0Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzlkMGRiODRjMmE0YTAyMTdlMWM1MWI1M2YxZTYxYjA4MDg4MTRmIiwiY2FydCI6eyIxIjoxfX0=', '2021-03-18 12:12:03.137099'),
('gpptvunktwxeem0hjaytla4owmbgkxn3', 'MTIyMjViNWZjOWJkMjAxMzIwNjQwMjk1OTlkZWIwNWU4MDU1ZTAyMzp7ImNhcnQiOnsiMiI6MX19', '2021-04-01 04:11:23.264667'),
('grokno3llqtqqkbzw82s917id5smibqz', 'NDlhN2QyMjNlOGE0N2YzOWQwOGM5MzY0OWU3ODA3YTViMjcwMzY4MTp7ImNhcnQiOnsiMiI6MywicmVzIjoyLCIxMSI6M30sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzlkMGRiODRjMmE0YTAyMTdlMWM1MWI1M2YxZTYxYjA4MDg4MTRmIn0=', '2021-04-01 08:28:14.991373'),
('hzj8cywlbnyowbfl4yxuploq4zpkr4h4', 'ZGE5NDIyYmI5YTRlMDA4MzU2MDVkNjg3N2VlNTEzYzk1OGY4ZDhkZTp7ImNhcnQiOnsiMyI6Mn0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzlkMGRiODRjMmE0YTAyMTdlMWM1MWI1M2YxZTYxYjA4MDg4MTRmIiwiY3VzdG9tZXIiOjcsInJlcyI6Mn0=', '2021-04-09 16:46:33.545763'),
('i5o78646ejhypoasp2zshwghq5aogbhg', 'MTZhZTA5YzExYjc2YjFkZjI2YTZlODU2OGI0Mzk5NTIzYzg2Yzc0Zjp7ImNhcnQiOnsicmVzIjoyLCIxMSI6M319', '2021-04-01 09:36:13.125517'),
('j3wv6puo0v82by7z2dspcyr2oz5h607a', 'OWYyMjllMWIwNDhjYjQ2YzcxNmZjNWE5MTM4Y2Y3NjY0MjE3OGU5NDp7ImNhcnQiOnsiMTEiOjF9LCJyZXMiOjJ9', '2021-04-01 09:51:49.026980'),
('jwdub3d7jpc5z5zoe765skrgxj25xlna', 'MTlkZTRkN2YzMTdkOWUzYjEyZWQzM2FlYzc3YWI5NzI4ZTZiNjE3Yjp7ImNhcnQiOm51bGx9', '2021-04-16 04:34:46.944099'),
('kjjrmxar7hzjubv91kc5f8l4ixiq0rd8', 'MjJhNjA1NGU1NzE1YjMwNjQ4MTMzMTI3NjBkOGYyZGJkYTNmMmRmMDp7ImNhcnQiOnsiMTEiOjF9LCJyZXMiOjIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzlkMGRiODRjMmE0YTAyMTdlMWM1MWI1M2YxZTYxYjA4MDg4MTRmIiwicmVzdGF1cmFudCI6NiwiY3VzdG9tZXIiOjd9', '2021-04-08 09:00:06.765141'),
('l1c94y6vjhntjz376zpkenohptk98by0', 'NzYyNjRhNDMzZTExM2E1ZmMwYjkxYzU4ZTY2ZGQ1MjNmOThlZWI4ZTp7ImNhcnQiOnsiMTEiOjJ9fQ==', '2021-04-01 09:29:43.438785'),
('lg7xm1r8whkycrioenyvf0mufcovk4cx', 'NjA1MTI2MGY4ZThiZjlhZjViZjllZTU2OTNjZTExMGU5Y2I1NmFmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzlkMGRiODRjMmE0YTAyMTdlMWM1MWI1M2YxZTYxYjA4MDg4MTRmIiwiY2FydCI6eyIyIjoxLCI5IjoxfSwiY3VzdG9tZXIiOjcsInJlcyI6MSwiYWRkcmVzcyI6OSwicmVzdGF1cmFudCI6Nn0=', '2021-05-08 06:54:39.039774'),
('lvr2kueqz00d10wmojvr6dn7p4rp38ro', 'OWYyMjllMWIwNDhjYjQ2YzcxNmZjNWE5MTM4Y2Y3NjY0MjE3OGU5NDp7ImNhcnQiOnsiMTEiOjF9LCJyZXMiOjJ9', '2021-04-06 09:42:32.357006'),
('mw4bt2q647gdr7os8tjyglfn0yameggu', 'ZWE5NGQ1MzEwYzJhNjFkYjI2ZGM3NmNhM2EyY2Q2OGQ5ZTA5OWI4Njp7ImNhcnQiOnsiMyI6MSwiMiI6MX0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzlkMGRiODRjMmE0YTAyMTdlMWM1MWI1M2YxZTYxYjA4MDg4MTRmIiwicmVzIjoxfQ==', '2021-04-02 04:49:27.993194'),
('mziq1hq4v1hlgz7byqg7fx0atktb6dp3', 'MjJlNzU3YzdhODkxYjlhMjg3NjFhNWZiOTEwNGY5Yzc1ZGRhYzdiNjp7ImN1c3RvbWVyIjo2LCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTc5ZDBkYjg0YzJhNGEwMjE3ZTFjNTFiNTNmMWU2MWIwODA4ODE0ZiJ9', '2021-03-11 05:16:01.392662'),
('n2jcdqqcy8t57yw372ewy84xr09hyddi', 'ODEzNmQwYjYzZDdmMGZiYmE1MzY5YzZiMzFhY2M0NmUyZjcyNTE0Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzlkMGRiODRjMmE0YTAyMTdlMWM1MWI1M2YxZTYxYjA4MDg4MTRmIiwidXNlciI6MX0=', '2021-03-09 13:59:27.465455'),
('ow75bxaqh26sxus2aljuvn4js6wbdl0m', 'NDk3YTM4YTgwZjk4MzgwM2FiMGEzNzJjMjc0NjZhMTIzNTY5MTBjMTp7ImNhcnQiOnsiMyI6MiwiMTEiOjF9LCJjdXN0b21lciI6NywicmVzIjoyLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTc5ZDBkYjg0YzJhNGEwMjE3ZTFjNTFiNTNmMWU2MWIwODA4ODE0ZiIsIm90cCI6ODAzMjUsInJlc3RhdXJhbnQiOjZ9', '2021-04-11 07:14:21.600683'),
('pahbwm7hxhr9nbffszp2obubto9bscgq', 'NzQwMGE1ZTQxZmQ2MjI5MmRmMzhjNjZjYWIzMGU2M2ZmNDliMTNhZDp7ImNhcnQiOnsiMiI6MiwiOSI6Mn19', '2021-03-31 13:04:00.113186'),
('pmm8u06w7iphq2331n6be69z9sxlymet', 'OWYyMjllMWIwNDhjYjQ2YzcxNmZjNWE5MTM4Y2Y3NjY0MjE3OGU5NDp7ImNhcnQiOnsiMTEiOjF9LCJyZXMiOjJ9', '2021-04-01 08:50:26.298395'),
('pvdroaliy2e7ppjiw4xi7meag9paudml', 'NzY1ZGNjYWY4NmQ3OTY5Mjk4YTZlZTU5NmNiZDQxNzQyMjdkNmE4ZDp7ImNhcnQiOnsiMiI6MSwiOSI6MX0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzlkMGRiODRjMmE0YTAyMTdlMWM1MWI1M2YxZTYxYjA4MDg4MTRmIiwicmVzIjoxfQ==', '2021-04-06 09:51:02.949102'),
('q348j4jysfp449qmq6uzuf389jvuzlvg', 'YjNkNjA5NzIzMTRlNzhlMWQ2ZDNhMWM2MmYwYmY1ZTUxNDVhNGMzMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzlkMGRiODRjMmE0YTAyMTdlMWM1MWI1M2YxZTYxYjA4MDg4MTRmIn0=', '2021-03-16 12:49:58.916673'),
('qo5rnrlhxm895i8rj8v2ia3kujdea1yc', 'NmE1OGY5ZDU5NmE2YjdmNTdiNGM4NGMzZmUzNTA2NTRiY2JiOTgwNDp7ImNhcnQiOnsiMTEiOjF9LCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTc5ZDBkYjg0YzJhNGEwMjE3ZTFjNTFiNTNmMWU2MWIwODA4ODE0ZiIsImN1c3RvbWVyIjo3LCJyZXMiOjJ9', '2021-04-06 08:11:30.539983'),
('sxwka8v3mmxk42rayjdbm55e67lzpai1', 'NDUxZDgxNDc4YWIwZTVjZGVhYWMxZGEyMThkMGFlMTJiNzEyMTcyNjp7ImNhcnQiOm51bGwsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzlkMGRiODRjMmE0YTAyMTdlMWM1MWI1M2YxZTYxYjA4MDg4MTRmIn0=', '2021-04-01 05:26:24.202126'),
('sybaowyjrlt6bw8p0fr06zhjjrjfqg0g', 'ZDYwZjkzYmE5ZTFmYTljNzJkODQ3ODMxMGRiOTRmOTFhNTQ5MTQ5Zjp7ImNhcnQiOnsiMiI6MSwiOSI6MX0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzlkMGRiODRjMmE0YTAyMTdlMWM1MWI1M2YxZTYxYjA4MDg4MTRmIn0=', '2021-03-31 16:10:31.477898'),
('tfpzte08yxwi10pi4w9rl7ufn6ivujel', 'NDkyMDE4ZTU4MjYxNzBjZWJlNzc3OGFjYmY1NGZjOTE4MDczZGExOTp7ImNhcnQiOnsiMiI6MSwiOSI6MX19', '2021-03-31 16:37:11.339006'),
('u3cyczyc3eyqgakcawm25wgm76mh3d6n', 'M2ZlNDg2ZDE5NDkwYmZiYjBlMjIwMmNhYWY4ZTNiYWEyZGFiNjdiYTp7ImNhcnQiOnsiMyI6M30sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzlkMGRiODRjMmE0YTAyMTdlMWM1MWI1M2YxZTYxYjA4MDg4MTRmIiwicmVzdGF1cmFudCI6NiwiY3VzdG9tZXIiOjcsImFkZHJlc3MiOjksInJlcyI6Mn0=', '2021-04-30 12:15:07.850244'),
('u92jwfkttdlvssnseg9q6ek9l69zo5ku', 'ZDYwZjkzYmE5ZTFmYTljNzJkODQ3ODMxMGRiOTRmOTFhNTQ5MTQ5Zjp7ImNhcnQiOnsiMiI6MSwiOSI6MX0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzlkMGRiODRjMmE0YTAyMTdlMWM1MWI1M2YxZTYxYjA4MDg4MTRmIn0=', '2021-04-01 03:45:17.505410'),
('ukeyeqt9tokq6k9t12kxvnqw74upyklb', 'MWQzYWEwMDI3NTE2Yzg2YzMyMjQ3ZGU3YTM3MzM1MzIxMWJkZTE1Zjp7ImN1c3RvbWVyIjo0LCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTc5ZDBkYjg0YzJhNGEwMjE3ZTFjNTFiNTNmMWU2MWIwODA4ODE0ZiJ9', '2021-03-11 04:24:40.956708'),
('uqmxth7mpveb5jk05rwwgytdtye1gmlm', 'YjNkNjA5NzIzMTRlNzhlMWQ2ZDNhMWM2MmYwYmY1ZTUxNDVhNGMzMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzlkMGRiODRjMmE0YTAyMTdlMWM1MWI1M2YxZTYxYjA4MDg4MTRmIn0=', '2021-03-20 05:23:39.582313'),
('ux1cyk007763yj47tv9zdaayi6sbk5o3', 'NTc4OWRkZDBiMTU3ZTI3ODllZjk3OTJiNmVhN2VlMTBmNzhiYmVlYjp7ImNhcnQiOnsiMiI6MSwiOSI6MSwiMyI6MSwiNyI6MX0sInJlcyI6MX0=', '2021-04-02 08:59:10.608369'),
('vc3235uqw4nrz7p1xnhuhk31jp32j815', 'OWYyMjllMWIwNDhjYjQ2YzcxNmZjNWE5MTM4Y2Y3NjY0MjE3OGU5NDp7ImNhcnQiOnsiMTEiOjF9LCJyZXMiOjJ9', '2021-04-01 09:53:48.365489'),
('vlu6c4bg7rq4gxfug80t5ktgn7uefziq', 'ZGVlOWZhYTRkNDhhMDFiNjI4NjQyM2JkMzI3MWYwMTY2OGM2MGZjNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzlkMGRiODRjMmE0YTAyMTdlMWM1MWI1M2YxZTYxYjA4MDg4MTRmIiwiY2FydCI6eyIyIjoxfX0=', '2021-04-01 07:48:10.870858'),
('vr2a9n9ciy7sf1lw9q4yg62eitk3wce7', 'MTIxYjYyNjg2N2NiMzVkYmRmMTRiNGM1ZDlhZDBlZDAxMzFlZmIzZDp7ImNhcnQiOnsiMSI6MX19', '2021-03-18 12:30:51.305276'),
('wm89y9a2ggmkdn7cqrl8e6y1sfbwp88g', 'NzBiNmRhNTUzMzcyNmZjMTc0N2U5YzM4YTk2NWVmMzE3M2JjYTE1MTp7ImNhcnQiOnt9LCJyZXN0YXVyYW50Ijo2LCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTc5ZDBkYjg0YzJhNGEwMjE3ZTFjNTFiNTNmMWU2MWIwODA4ODE0ZiJ9', '2021-07-03 07:41:12.227290'),
('xephr6nzwrh39fka3bgioz4dlfl73wvi', 'MzBkYjg4ZWNmMGQ2YjBiZmRiYWZmZDFkZmM5NmY2MzA2ZjI4OWQzNjp7ImNhcnQiOnsicmVzIjoyLCIxMSI6Mn19', '2021-04-01 08:42:34.495873'),
('y0a317l365x58965x5sjmeagq5w570re', 'M2ZlZDkxM2UwYjUwZTUwMTllMjFlYjg0OTliNWMyNmEzNTA2NWEwYTp7ImNhcnQiOnt9LCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTc5ZDBkYjg0YzJhNGEwMjE3ZTFjNTFiNTNmMWU2MWIwODA4ODE0ZiJ9', '2021-03-31 10:27:11.208819'),
('yoivu604r4558kny9kkpi8h3deytho7l', 'MTk4NTdjNTAzYjAxNTRmMmYwYmVhNzI4ZjMzNjRmMzA0NzdlNjBiMDp7ImNhcnQiOnsiMiI6MSwiOSI6MX0sImN1c3RvbWVyIjo3LCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTc5ZDBkYjg0YzJhNGEwMjE3ZTFjNTFiNTNmMWU2MWIwODA4ODE0ZiIsInJlcyI6MX0=', '2021-04-08 11:20:34.235887'),
('yra1y0dypem3zqc3pm7xepkq3k8huqfs', 'YjNkNjA5NzIzMTRlNzhlMWQ2ZDNhMWM2MmYwYmY1ZTUxNDVhNGMzMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzlkMGRiODRjMmE0YTAyMTdlMWM1MWI1M2YxZTYxYjA4MDg4MTRmIn0=', '2021-03-12 04:41:41.212907'),
('zjt9t186glwq6tmt5g1752gszm7vyw7v', 'ZTI2MjZkZGI0Y2JlZWU3MGIzOGMyMTIyMDZjMzY4YmEzMjM3ZWZhYzp7ImNhcnQiOnsiMiI6Mn0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzlkMGRiODRjMmE0YTAyMTdlMWM1MWI1M2YxZTYxYjA4MDg4MTRmIn0=', '2021-04-03 06:43:30.632140');

-- --------------------------------------------------------

--
-- Table structure for table `foodapp_catagory`
--

CREATE TABLE `foodapp_catagory` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `available` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foodapp_catagory`
--

INSERT INTO `foodapp_catagory` (`id`, `name`, `restaurant_id`, `available`) VALUES
(1, 'Recommanded', 1, 1),
(2, 'Special', 1, 1),
(3, 'Special', 2, 1),
(7, 'Recommanded', 4, 1),
(8, 'Special ', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `foodapp_customer`
--

CREATE TABLE `foodapp_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `email` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foodapp_customer`
--

INSERT INTO `foodapp_customer` (`id`, `name`, `phone_number`, `email`) VALUES
(1, 'nagar', '4294967295', 'pavankoshti786@gmail.com'),
(2, 'harsh', '7990463880', 'ajju@gmail.com'),
(3, 'hdhgdjh', '1654564654', 'ajju@gmail.com'),
(4, 'harsh', '79904454', 'ajju@gmail.com'),
(5, 'nagar', '799046388', 'pavankoshti786@gmail.com'),
(6, 'ajay', '8898989', 'shermapooja442@gmail.com'),
(7, 'harsh', '7984708905', 'harshnagar7984@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `foodapp_customeraddress`
--

CREATE TABLE `foodapp_customeraddress` (
  `id` int(11) NOT NULL,
  `address` varchar(300) NOT NULL,
  `landmark` varchar(100) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `pincode` varchar(7) NOT NULL,
  `name` varchar(20) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foodapp_customeraddress`
--

INSERT INTO `foodapp_customeraddress` (`id`, `address`, `landmark`, `customer_id`, `pincode`, `name`, `city`, `state`) VALUES
(4, '35 , anjana soc. gate no 3', 'near lala kaka hall', 2, '380004', '1', '1', '1'),
(9, '25, anjana soc.  gate no 3 shahpur', 'near lala kaka hall', 7, '380004', 'harsh', 'Ahmedabad', 'Gujarat'),
(10, 'shahpur', 'dariyapur', 7, '380001', 'nagar', 'Ahmedabad', 'Gujarat'),
(11, '214,jugldas ni chali no 3', 'opp.city center ', 7, '380016', 'pavan', 'Ahmedabad', 'Gujarat');

-- --------------------------------------------------------

--
-- Table structure for table `foodapp_menuitem`
--

CREATE TABLE `foodapp_menuitem` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `catagory_id` int(11) NOT NULL,
  `veg` tinyint(1) NOT NULL,
  `description` varchar(50) NOT NULL,
  `available` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foodapp_menuitem`
--

INSERT INTO `foodapp_menuitem` (`id`, `name`, `image`, `price`, `catagory_id`, `veg`, `description`, `available`) VALUES
(2, 'crispy burger', 'abcde_zEveYuK.jpg', 200, 1, 1, 'what a yummy burger', 1),
(3, 'chai', '', 50, 3, 0, '', 1),
(7, 'coffee', '', 100, 2, 1, 'must try....', 1),
(9, 'Pizza', 'abcde_dptiLnO.jpg', 100, 1, 1, 'must try....', 1),
(11, 'hh', 'media/abcde_gnJTfzN.jpg', 100, 3, 1, 'must try....', 1),
(12, 'Pizza', '', 100, 3, 1, 'must try....', 1),
(14, 'Lassi', 'media/Indian-Rupee-Coins-PNG-Image-715x715.jpg', 200, 8, 1, 'must try....', 1),
(15, 'aam rass', 'media/off1.jpg', 120, 8, 1, 'must try....', 1),
(16, 'Roasted ', 'car-2030056_960_720.png', 850, 7, 0, 'must try....', 1);

-- --------------------------------------------------------

--
-- Table structure for table `foodapp_order`
--

CREATE TABLE `foodapp_order` (
  `id` int(11) NOT NULL,
  `total_amount` double NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `status` varchar(50) NOT NULL,
  `delivery_addr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foodapp_order`
--

INSERT INTO `foodapp_order` (`id`, `total_amount`, `timestamp`, `status`, `delivery_addr_id`) VALUES
(1, 0, '2021-03-05 14:06:44.658909', 'Order Pending', 4);

-- --------------------------------------------------------

--
-- Table structure for table `foodapp_orderditem`
--

CREATE TABLE `foodapp_orderditem` (
  `id` int(11) NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foodapp_orderditem`
--

INSERT INTO `foodapp_orderditem` (`id`, `qty`, `item_id`) VALUES
(112, 2, 3),
(113, 1, 11),
(114, 2, 3),
(115, 1, 11),
(116, 2, 3),
(117, 1, 11),
(118, 2, 3),
(119, 1, 11),
(120, 2, 3),
(121, 1, 11),
(122, 2, 3),
(123, 1, 11),
(124, 1, 3),
(125, 1, 11),
(126, 1, 3),
(127, 1, 11),
(128, 1, 3),
(129, 1, 11),
(130, 3, 3),
(131, 2, 3),
(132, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `foodapp_ordertrack`
--

CREATE TABLE `foodapp_ordertrack` (
  `id` int(11) NOT NULL,
  `total_amount` double NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `status` varchar(50) NOT NULL,
  `delivery_addr_id` int(11) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `orderedBy_id` int(11) NOT NULL,
  `orderconfirm` tinyint(1) DEFAULT NULL,
  `payment` tinyint(1) NOT NULL,
  `r_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foodapp_ordertrack`
--

INSERT INTO `foodapp_ordertrack` (`id`, `total_amount`, `timestamp`, `status`, `delivery_addr_id`, `order_id`, `orderedBy_id`, `orderconfirm`, `payment`, `r_id_id`) VALUES
(48, 200, '2021-03-30 09:01:37.846475', 'Order Recieved', 9, '1wzs6p9yn9', 7, NULL, 0, 1),
(49, 200, '2021-03-30 09:02:53.299581', 'Baking', 9, 'rrr1x4kas5', 7, 1, 1, 1),
(50, 200, '2021-03-30 09:05:02.204892', 'Order Delivered', 9, 'ib8yirvmza', 7, 0, 1, 4),
(51, 400, '2021-04-13 12:25:31.846352', 'Order Delivered', 4, 'ghjghjfhh2', 7, 1, 1, 4),
(54, 50, '2021-04-16 12:39:09.531112', 'Order Recieved', 11, '9v2v3uqdt6', 7, NULL, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `foodapp_ordertrack_order`
--

CREATE TABLE `foodapp_ordertrack_order` (
  `id` int(11) NOT NULL,
  `ordertrack_id` int(11) NOT NULL,
  `orderditem_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foodapp_ordertrack_order`
--

INSERT INTO `foodapp_ordertrack_order` (`id`, `ordertrack_id`, `orderditem_id`) VALUES
(37, 48, 120),
(38, 48, 121),
(39, 49, 122),
(40, 49, 123),
(41, 50, 124),
(48, 50, 112),
(49, 51, 113),
(50, 51, 116),
(53, 54, 132);

-- --------------------------------------------------------

--
-- Table structure for table `foodapp_order_order`
--

CREATE TABLE `foodapp_order_order` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `orderditem_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `foodapp_restaurant`
--

CREATE TABLE `foodapp_restaurant` (
  `resuser_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `rname` varchar(100) NOT NULL,
  `address` varchar(40) NOT NULL,
  `r_logo` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `owner_name` varchar(100) NOT NULL,
  `owner_phone` varchar(10) NOT NULL,
  `cost_for_two` int(10) UNSIGNED NOT NULL,
  `city` varchar(20) NOT NULL,
  `area` varchar(10) NOT NULL,
  `state` varchar(20) NOT NULL,
  `deliverytime` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foodapp_restaurant`
--

INSERT INTO `foodapp_restaurant` (`resuser_id`, `id`, `rname`, `address`, `r_logo`, `status`, `approved`, `owner_name`, `owner_phone`, `cost_for_two`, `city`, `area`, `state`, `deliverytime`) VALUES
(1, 1, 'Gwalia', 'navragpura', 'media/IMG_20180805_114440.jpg', 'Open', 1, 'vikas', '7984708905', 200, 'ahmedabad', 'satalite', 'gujarat', '30'),
(2, 2, 'vipul dudhiya', 'navragpura', 'media/abcde.jpg', 'Open', 1, 'harsh', '7984708905', 100, 'ahmedabad', 'navragpura', 'gujarat', '30'),
(6, 4, 'das khaman', 'shahpur', 'r1.jpg', 'Open', 0, 'harsh nagar', '7984708905', 100, 'Ahmedabad', 'vadaj', 'Gujarat', '30');

-- --------------------------------------------------------

--
-- Table structure for table `foodapp_restaurant_favourite`
--

CREATE TABLE `foodapp_restaurant_favourite` (
  `id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foodapp_restaurant_favourite`
--

INSERT INTO `foodapp_restaurant_favourite` (`id`, `restaurant_id`, `customer_id`) VALUES
(7, 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `foodapp_resuser`
--

CREATE TABLE `foodapp_resuser` (
  `id` int(11) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foodapp_resuser`
--

INSERT INTO `foodapp_resuser` (`id`, `phone`, `email`, `password`) VALUES
(1, '7984708906', 'pavan@gmail.com', '1234'),
(2, '7990463880', 'nagarharsh8140@gmail.com', 'e10adc3949ba59ab'),
(6, '7984708900', 'pavashti786@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `foodapp_transection`
--

CREATE TABLE `foodapp_transection` (
  `id` int(11) NOT NULL,
  `TXNID` varchar(50) NOT NULL,
  `TXNAMOUNT` int(11) NOT NULL,
  `PAYMENTMODE` varchar(100) NOT NULL,
  `TXNDATE` datetime(6) NOT NULL,
  `order_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `foodapp_catagory`
--
ALTER TABLE `foodapp_catagory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foodapp_catagory_restaurant_id_d9625080_fk_foodapp_restaurant_id` (`restaurant_id`);

--
-- Indexes for table `foodapp_customer`
--
ALTER TABLE `foodapp_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foodapp_customeraddress`
--
ALTER TABLE `foodapp_customeraddress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foodapp_customeraddr_customer_id_6a06274a_fk_foodapp_c` (`customer_id`);

--
-- Indexes for table `foodapp_menuitem`
--
ALTER TABLE `foodapp_menuitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foodapp_menuitem_catagory_id_662495b8_fk_foodapp_catagory_id` (`catagory_id`);

--
-- Indexes for table `foodapp_order`
--
ALTER TABLE `foodapp_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `delivery_addr_id` (`delivery_addr_id`);

--
-- Indexes for table `foodapp_orderditem`
--
ALTER TABLE `foodapp_orderditem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foodapp_orderditem_item_id_491bf0a3_fk_foodapp_menuitem_id` (`item_id`);

--
-- Indexes for table `foodapp_ordertrack`
--
ALTER TABLE `foodapp_ordertrack`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foodapp_ordertrack_delivery_addr_id_b87a3678` (`delivery_addr_id`),
  ADD KEY `foodapp_ordertrack_orderedBy_id_27f04a4c_fk_foodapp_customer_id` (`orderedBy_id`),
  ADD KEY `foodapp_ordertrack_r_id_id_cba82e48_fk_foodapp_restaurant_id` (`r_id_id`);

--
-- Indexes for table `foodapp_ordertrack_order`
--
ALTER TABLE `foodapp_ordertrack_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foodapp_order_order`
--
ALTER TABLE `foodapp_order_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `foodapp_order_order_order_id_orderditem_id_d1aafa0d_uniq` (`order_id`,`orderditem_id`),
  ADD KEY `foodapp_order_order_orderditem_id_f45b8520_fk_foodapp_o` (`orderditem_id`);

--
-- Indexes for table `foodapp_restaurant`
--
ALTER TABLE `foodapp_restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foodapp_restaurant_favourite`
--
ALTER TABLE `foodapp_restaurant_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `foodapp_restaurant_favou_restaurant_id_customer_i_35de5662_uniq` (`restaurant_id`,`customer_id`),
  ADD KEY `foodapp_restaurant_f_customer_id_25a3b46b_fk_foodapp_c` (`customer_id`);

--
-- Indexes for table `foodapp_resuser`
--
ALTER TABLE `foodapp_resuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foodapp_transection`
--
ALTER TABLE `foodapp_transection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foodapp_transection_order_id_id_1d6336d5_fk_foodapp_o` (`order_id_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `foodapp_catagory`
--
ALTER TABLE `foodapp_catagory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `foodapp_customer`
--
ALTER TABLE `foodapp_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `foodapp_customeraddress`
--
ALTER TABLE `foodapp_customeraddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `foodapp_menuitem`
--
ALTER TABLE `foodapp_menuitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `foodapp_order`
--
ALTER TABLE `foodapp_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `foodapp_orderditem`
--
ALTER TABLE `foodapp_orderditem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `foodapp_ordertrack`
--
ALTER TABLE `foodapp_ordertrack`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `foodapp_ordertrack_order`
--
ALTER TABLE `foodapp_ordertrack_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `foodapp_order_order`
--
ALTER TABLE `foodapp_order_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `foodapp_restaurant`
--
ALTER TABLE `foodapp_restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `foodapp_restaurant_favourite`
--
ALTER TABLE `foodapp_restaurant_favourite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `foodapp_resuser`
--
ALTER TABLE `foodapp_resuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `foodapp_transection`
--
ALTER TABLE `foodapp_transection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `foodapp_catagory`
--
ALTER TABLE `foodapp_catagory`
  ADD CONSTRAINT `foodapp_catagory_restaurant_id_d9625080_fk_foodapp_restaurant_id` FOREIGN KEY (`restaurant_id`) REFERENCES `foodapp_restaurant` (`id`);

--
-- Constraints for table `foodapp_customeraddress`
--
ALTER TABLE `foodapp_customeraddress`
  ADD CONSTRAINT `foodapp_customeraddr_customer_id_6a06274a_fk_foodapp_c` FOREIGN KEY (`customer_id`) REFERENCES `foodapp_customer` (`id`);

--
-- Constraints for table `foodapp_menuitem`
--
ALTER TABLE `foodapp_menuitem`
  ADD CONSTRAINT `foodapp_menuitem_catagory_id_662495b8_fk_foodapp_catagory_id` FOREIGN KEY (`catagory_id`) REFERENCES `foodapp_catagory` (`id`);

--
-- Constraints for table `foodapp_order`
--
ALTER TABLE `foodapp_order`
  ADD CONSTRAINT `foodapp_order_delivery_addr_id_64b1f708_fk_foodapp_c` FOREIGN KEY (`delivery_addr_id`) REFERENCES `foodapp_customeraddress` (`id`);

--
-- Constraints for table `foodapp_orderditem`
--
ALTER TABLE `foodapp_orderditem`
  ADD CONSTRAINT `foodapp_orderditem_item_id_491bf0a3_fk_foodapp_menuitem_id` FOREIGN KEY (`item_id`) REFERENCES `foodapp_menuitem` (`id`);

--
-- Constraints for table `foodapp_ordertrack`
--
ALTER TABLE `foodapp_ordertrack`
  ADD CONSTRAINT `foodapp_ordertrack_orderedBy_id_27f04a4c_fk_foodapp_customer_id` FOREIGN KEY (`orderedBy_id`) REFERENCES `foodapp_customer` (`id`),
  ADD CONSTRAINT `foodapp_ordertrack_r_id_id_cba82e48_fk_foodapp_restaurant_id` FOREIGN KEY (`r_id_id`) REFERENCES `foodapp_restaurant` (`id`);

--
-- Constraints for table `foodapp_order_order`
--
ALTER TABLE `foodapp_order_order`
  ADD CONSTRAINT `foodapp_order_order_order_id_b21ec716_fk_foodapp_order_id` FOREIGN KEY (`order_id`) REFERENCES `foodapp_order` (`id`),
  ADD CONSTRAINT `foodapp_order_order_orderditem_id_f45b8520_fk_foodapp_o` FOREIGN KEY (`orderditem_id`) REFERENCES `foodapp_orderditem` (`id`);

--
-- Constraints for table `foodapp_restaurant_favourite`
--
ALTER TABLE `foodapp_restaurant_favourite`
  ADD CONSTRAINT `foodapp_restaurant_f_customer_id_25a3b46b_fk_foodapp_c` FOREIGN KEY (`customer_id`) REFERENCES `foodapp_customer` (`id`),
  ADD CONSTRAINT `foodapp_restaurant_f_restaurant_id_376b13f8_fk_foodapp_r` FOREIGN KEY (`restaurant_id`) REFERENCES `foodapp_restaurant` (`id`);

--
-- Constraints for table `foodapp_transection`
--
ALTER TABLE `foodapp_transection`
  ADD CONSTRAINT `foodapp_transection_order_id_id_1d6336d5_fk_foodapp_o` FOREIGN KEY (`order_id_id`) REFERENCES `foodapp_ordertrack` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
