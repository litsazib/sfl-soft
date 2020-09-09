-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 08, 2020 at 12:58 PM
-- Server version: 10.3.24-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingav_sfl`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_name`
--

CREATE TABLE `accounts_name` (
  `acc_id` int(11) NOT NULL,
  `accounts_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts_name`
--

INSERT INTO `accounts_name` (`acc_id`, `accounts_name`) VALUES
(1, 'Cash'),
(2, 'bKash'),
(3, 'Cheque'),
(4, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `id_catagory` int(11) NOT NULL,
  `cat_code` varchar(40) CHARACTER SET latin1 NOT NULL,
  `cat_name` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`id_catagory`, `cat_code`, `cat_name`, `reg_date`, `status`) VALUES
(49, 'SFL - 2001', 'Layer Layer ', '2018-01-03 04:09:18', 'Active'),
(50, '100', 'Fish Feed', '2019-11-04 11:03:29', 'Active'),
(51, 'SFL- 1000', 'Puechase Row', '2019-12-31 14:39:44', 'Active'),
(52, 'MD-00001', 'Medicine', '2020-01-09 11:41:30', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `catagory_sub`
--

CREATE TABLE `catagory_sub` (
  `id_sub_catagory` int(11) NOT NULL,
  `sub_cat_code` varchar(40) NOT NULL,
  `catagory_id` int(11) NOT NULL DEFAULT 0,
  `sub_cat_name` varchar(80) DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Active',
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catagory_sub`
--

INSERT INTO `catagory_sub` (`id_sub_catagory`, `sub_cat_code`, `catagory_id`, `sub_cat_name`, `status`, `reg_date`) VALUES
(37, 'SFL - 1001', 49, 'Layer Layer 1', 'Active', '2018-01-03 04:11:43'),
(38, 'SFL - 1002', 49, 'Layer Layer 2', 'Active', '2018-01-03 04:12:24'),
(39, 'SFL - 1003', 49, 'Layer Grower', 'Active', '2018-01-03 04:13:01'),
(40, 'SFL - 1004', 49, 'Layer Starter (C)', 'Active', '2018-01-03 04:13:54'),
(41, 'SFL - 1005', 49, 'Layer Stater (M)', 'Active', '2018-01-03 04:14:18'),
(42, 'SFL - 110', 50, 'Mas', 'Active', '2019-11-04 11:08:53'),
(43, 'SFL - 111', 50, 'Pellet', 'Active', '2019-11-04 11:09:19'),
(44, 'SFL- 1010', 51, 'Ricesh Polish', 'Active', '2019-12-31 14:41:08'),
(45, 'SFL- 1011', 51, 'Corn (Maize)', 'Active', '2019-12-31 14:42:09'),
(46, 'SFL- 1012', 51, 'Limestone', 'Active', '2019-12-31 14:42:58'),
(47, 'SFL- 1013', 51, 'Soybean', 'Active', '2019-12-31 14:43:58'),
(48, 'SFL- 1014', 51, 'Bosta  Bag', 'Active', '2019-12-31 14:45:06'),
(49, 'SFL- 1015', 51, 'Protein', 'Active', '2019-12-31 14:47:48'),
(50, 'SFL- 1016', 51, 'Distillers grains (DDGS)', 'Active', '2019-12-31 14:48:45'),
(51, 'MD-00005', 52, ' Premix', 'Active', '2020-01-09 11:49:03'),
(53, 'MD-00007', 52, 'D.C.P', 'Active', '2020-01-09 11:50:56'),
(56, 'MD-00014', 52, 'L-Lysine', 'Active', '2020-01-09 11:53:43'),
(57, 'MD-00015', 52, 'Choline Chloride', 'Active', '2020-01-09 11:55:05'),
(58, 'MD-00020', 52, 'Availa ZM', 'Active', '2020-01-09 11:56:06'),
(60, 'MD-00010', 52, 'Methionine (99%)', 'Active', '2020-01-09 11:58:22'),
(61, 'MD-00011', 52, 'Toxin binder', 'Active', '2020-01-09 11:59:38'),
(62, 'MD-00012', 52, 'Salkil', 'Active', '2020-01-09 12:00:34'),
(63, 'MD-00013', 52, 'Enzyme', 'Active', '2020-01-09 12:01:26'),
(64, 'MD-00002', 52, 'A', 'Active', '2020-01-11 05:20:54');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `default_balance` float NOT NULL DEFAULT 0,
  `customer_code` int(11) NOT NULL DEFAULT 0,
  `name` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `address` text CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `contact` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `cutomer_type` varchar(30) NOT NULL,
  `company_name` varchar(60) DEFAULT NULL,
  `images_up` text DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(13) CHARACTER SET latin1 NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `default_balance`, `customer_code`, `name`, `address`, `email`, `contact`, `cutomer_type`, `company_name`, `images_up`, `reg_date`, `status`) VALUES
(318, 623260, 1, 'Md Abdul Based', 'Bhuapur, Tangail', 'No', '01992606801', 'Loyal Customer', 'Tanjila Bithi Enterprices', './upload_image/CUSTOMER/default.png', '2020-01-01 09:26:39', 'Active'),
(319, 2003150, 2, 'Abdul Malek Bepary', 'Gobindashi, Bhuapur, Tangail', 'No', '01713866039', 'Loyal Customer', 'Mitu Layer Farm', './upload_image/CUSTOMER/default.png', '2020-01-01 09:28:30', 'Active'),
(320, 212100, 3, 'Raton Sorker', 'Koyra ,Nikrail,Bhuapur,Tangail', 'No', '01307054599', 'Loyal Customer', 'Abbdula Sorker Layer Farm', './upload_image/CUSTOMER/default.png', '2020-01-01 09:31:58', 'Active'),
(321, 3050760, 4, 'Hanif Bepary', 'Gobindashi, Bhuapur, Tangail', '', '01712597681', 'Loyal Customer', '', './upload_image/CUSTOMER/default.png', '2020-01-01 09:33:06', 'Active'),
(322, 793056, 5, 'Rasel Miya', 'Corkoyra,Nikrail,Bhuapur,Tangail', 'No', '01720642907', 'Loyal Customer', '', './upload_image/CUSTOMER/default.png', '2020-01-01 09:34:23', 'Active'),
(323, 79550, 6, 'Md Abdul Hamid', 'Modhupur, Tangail', 'No', '01761593775', 'Loyal Customer', 'Modupur SFL Dipu ', './upload_image/CUSTOMER/default.png', '2020-01-01 09:36:04', 'Active'),
(324, 211475, 7, 'Ilyesh Ali', 'Alipur,Tangail', 'No', '01753450641', 'Loyal Customer', '', './upload_image/CUSTOMER/default.png', '2020-01-01 09:37:34', 'Active'),
(325, 603413, 8, 'Shajahan Ali', 'Gobindashi, Bhuapur, Tangail', 'No', '01630604420', 'Loyal Customer', '', './upload_image/CUSTOMER/default.png', '2020-01-01 09:39:08', 'Active'),
(326, 30000, 9, 'Anower Hossain', 'Soratol,Nikrail,Bhuapur,Tangail', 'No', '01768484289', 'Loyal Customer', '', './upload_image/CUSTOMER/1577951723gkscea6lh1ljkqsfob6h7g1pt4.png', '2020-01-01 09:40:44', 'Active'),
(327, 439500, 10, 'Monjurul Islam', 'Vadurichor,Bhuapur,Tangail', 'No', '01711711589', 'Loyal Customer', '', './upload_image/CUSTOMER/default.png', '2020-01-01 09:42:42', 'Active'),
(328, 105770, 11, 'Rofiqul Islam', 'Vadurichor,Bhuapur,Tangail', 'No', '01624772739', 'Loyal Customer', '', './upload_image/CUSTOMER/default.png', '2020-01-01 09:44:18', 'Active'),
(329, 30000, 12, 'Mostofa ', 'Soratol,Nikrail,Bhuapur,Tangail', 'No', '01715550298', 'Loyal Customer', '', './upload_image/CUSTOMER/default.png', '2020-01-01 09:45:22', 'Active'),
(330, 165570, 13, 'Nozrul Islam', 'Chornikla,Bhuapur,Tangail', 'No', '01721743476', 'Loyal Customer', '', './upload_image/CUSTOMER/default.png', '2020-01-01 09:46:37', 'Active'),
(331, 3000, 14, 'Montu Miya', 'Aorjuna ,Gopulpur', 'No', '01744513498', 'Loyal Customer', '', './upload_image/CUSTOMER/default.png', '2020-01-01 09:47:50', 'Active'),
(332, 598465, 15, 'Sumon Sorker', 'Koyra ,Nikrail,Bhuapur,Tangail', 'No', '01716558151', 'Loyal Customer', '', './upload_image/CUSTOMER/default.png', '2020-01-01 09:49:26', 'Active'),
(333, 75000, 16, 'Abdul Khalek Bepary', 'Gobindashi, Bhuapur, Tangail', 'No', '01722003789', 'Loyal Customer', '', './upload_image/CUSTOMER/default.png', '2020-01-01 09:51:32', 'Active'),
(334, 121150, 17, 'Minhaj Modupur', 'Modupur,Tangail', 'No', '01720078957', 'Loyal Customer', '', './upload_image/CUSTOMER/default.png', '2020-01-01 09:56:59', 'Active'),
(335, 117960, 18, 'SFL Ghatail Dipu', 'Somil  Rod Ghatail Tangail', 'No', '01992606807', 'Loyal Customer', '', './upload_image/CUSTOMER/default.png', '2020-01-01 09:58:41', 'Active'),
(336, 357675, 19, 'Faruk Hossain ', 'Pakutiya ,Ghatail,Tangail', 'No', '01740927829', 'Loyal Customer', '', './upload_image/CUSTOMER/default.png', '2020-01-01 09:59:44', 'Active'),
(337, 18000, 20, 'Rujbel Islam', 'Bilcapra,Gobindashi,Bhuapur,Tangail', '', '01317781777', 'Loyal Customer', '', './upload_image/CUSTOMER/default.png', '2020-01-01 10:00:55', 'Active'),
(338, 116800, 21, 'Lothif Hossain', 'Vadurichor,Bhuapur,Tangail', '', '01745745366', 'Loyal Customer', '', './upload_image/CUSTOMER/default.png', '2020-01-01 10:01:40', 'Active'),
(339, 300000, 22, 'Johirul Islam', 'Alanga,Tangail', 'No', '01728695476', 'Loyal Customer', 'Baba Mar Dowa Layer Farm', './upload_image/CUSTOMER/default.png', '2020-01-01 10:02:59', 'Active'),
(340, 92250, 23, 'Jomuna oil Mil Dokan', 'Gobindashi, Bhuapur, Tangail', '', '01716962578', 'Loyal Customer', '', './upload_image/CUSTOMER/default.png', '2020-01-01 10:04:25', 'Active'),
(341, 144000, 24, 'Abdur Rahaman', 'Sirajkandi,Nikrail,Bhuapur,Tangail', '', '01727776666', 'Loyal Customer', 'Rafiya Rosni Layer Farm', './upload_image/CUSTOMER/default.png', '2020-01-01 10:06:01', 'Active'),
(342, 60000, 25, 'Barek Miya', 'Gobindashi, Bhuapur, Tangail', '', '01765000588', 'Loyal Customer', '', './upload_image/CUSTOMER/default.png', '2020-01-01 10:07:02', 'Active'),
(343, 27000, 26, 'Suruj Miya', 'Gobindashi, Bhuapur, Tangail', '', '01725697655', 'Loyal Customer', '', './upload_image/CUSTOMER/default.png', '2020-01-01 10:08:08', 'Active'),
(344, 0, 27, 'Md Anower Hossan Rony', 'Rajshahi,Bangladesh', '', '01746160784', 'Loyal Customer', '', './upload_image/CUSTOMER/default.png', '2020-01-01 10:09:22', 'Active'),
(345, 0, 28, 'Mamun Bhuapur', 'Bhuapur Tangail', '', '', 'Loyal Customer', '', './upload_image/CUSTOMER/default.png', '2020-01-01 10:10:03', 'Active'),
(346, 199700, 29, 'Jamal Prodhan', 'Koyra ,Nikrail,Bhuapur,Tangail', '', '01733173540', 'Loyal Customer', '', './upload_image/CUSTOMER/default.png', '2020-01-01 10:14:57', 'Active'),
(347, 536300, 30, 'Tanjila Bithi Others ', 'Mill', '', '01992606807', 'Loyal Customer', '', './upload_image/CUSTOMER/default.png', '2020-01-01 10:17:35', 'Active'),
(348, 0, 31, 'Al Mamun ', 'Dewpur,Kalihati,Tangail', '', '01758586927', 'Loyal Customer', '', './upload_image/CUSTOMER/default.png', '2020-01-01 10:18:58', 'Active'),
(349, 2850, 32, 'Khokhon Miya', 'Gobindashi, Bhuapur, Tangail', 'No', '01725722293', 'Loyal Customer', '', './upload_image/CUSTOMER/default.png', '2020-01-01 11:46:18', 'Active'),
(350, 182900, 33, 'Tanjila Bithi Bacca ', 'Bhuapur Tangail', '', '01992606805', 'Loyal Customer', '', './upload_image/CUSTOMER/default.png', '2020-01-01 11:48:27', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `customer_accounts`
--

CREATE TABLE `customer_accounts` (
  `id` int(11) NOT NULL,
  `recipt_code` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `reperence_status` varchar(40) NOT NULL DEFAULT 'Payment',
  `ref_osm_full_id` varchar(50) NOT NULL,
  `total_amount` float NOT NULL DEFAULT 0,
  `payment_amount` float NOT NULL DEFAULT 0,
  `net_blance` float NOT NULL DEFAULT 0,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `accounts_id` int(11) NOT NULL,
  `bank_name` varchar(80) NOT NULL DEFAULT 'NULL',
  `cheque_number` varchar(80) NOT NULL,
  `bkash_trans_id` varchar(40) DEFAULT NULL,
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_accounts`
--

INSERT INTO `customer_accounts` (`id`, `recipt_code`, `customer_id`, `reperence_status`, `ref_osm_full_id`, `total_amount`, `payment_amount`, `net_blance`, `create_date`, `accounts_id`, `bank_name`, `cheque_number`, `bkash_trans_id`, `remarks`) VALUES
(1301, 1, 335, 'Sales', 'Sales-0120200101', 547000, 0, 547000, '2020-01-01 11:50:58', 4, '', '', '', NULL),
(1302, 2, 350, 'Sales', 'Sales-0120200102', 41000, 0, 41000, '2020-01-01 11:52:14', 4, '', '', '', NULL),
(1303, 3, 322, 'Sales', 'Sales-0120200103', 13560, 0, 13560, '2020-01-01 11:55:17', 4, '', '', '', NULL),
(1304, 4, 332, 'Sales', 'Sales-0120200104', 13560, 0, 13560, '2020-01-01 11:56:02', 4, '', '', '', NULL),
(1305, 5, 321, 'Sales', 'Sales-0120200105', 11865, 0, 11865, '2020-01-01 11:56:42', 4, '', '', '', NULL),
(1306, 6, 330, 'Sales', 'Sales-0120200106', 32000, 0, 32000, '2020-01-01 11:57:41', 4, '', '', '', NULL),
(1307, 7, 319, 'Sales', 'Sales-0120200107', 16000, 0, 16000, '2020-01-01 11:58:17', 4, '', '', '', NULL),
(1308, 8, 319, 'Sales', 'Sales-0120200108', 37400, 0, 53400, '2020-01-01 11:59:28', 4, '', '', '', NULL),
(1309, 9, 324, 'Sales', 'Sales-0120200109', 32000, 0, 32000, '2020-01-01 12:00:52', 4, '', '', '', NULL),
(1310, 10, 349, 'Sales', 'Sales-01202001010', 30000, 0, 30000, '2020-01-01 12:01:32', 4, '', '', '', NULL),
(1311, 11, 347, 'Sales', 'Sales-01202001011', 3000, 0, 3000, '2020-01-01 12:02:21', 4, '', '', '', NULL),
(1312, 12, 320, 'Sales', 'Sales-01202001012', 15500, 0, 15500, '2020-01-01 12:02:59', 4, '', '', '', NULL),
(1313, 13, 342, 'Sales', 'Sales-01202001013', 15000, 0, 15000, '2020-01-01 12:03:39', 4, '', '', '', NULL),
(1314, 14, 324, 'Payment', 'Rael', 0, 32000, 0, '2020-01-01 13:16:07', 1, '', '', NULL, 'Nowka Thake'),
(1315, 15, 347, 'Payment', 'v', 0, 3000, 0, '2020-01-01 13:16:33', 1, '', '', NULL, 'v'),
(1316, 16, 335, 'Payment', 'v', 0, 73900, 473100, '2020-01-01 13:17:02', 1, '', '', NULL, 'v'),
(1317, 17, 328, 'Sales', 'Sales-01202002014', 32000, 0, 32000, '2020-01-02 11:45:38', 4, '', '', '', NULL),
(1318, 18, 323, 'Sales', 'Sales-01202002015', 45500, 0, 45500, '2020-01-02 11:47:31', 4, '', '', '', NULL),
(1319, 19, 334, 'Sales', 'Sales-01202002016', 75000, 0, 75000, '2020-01-02 11:48:19', 4, '', '', '', NULL),
(1320, 20, 318, 'Sales', 'Sales-01202002017', 15000, 0, 15000, '2020-01-02 11:49:15', 4, '', '', '', NULL),
(1321, 21, 319, 'Sales', 'Sales-01202002018', 27700, 0, 81100, '2020-01-02 11:50:41', 4, '', '', '', NULL),
(1322, 22, 325, 'Sales', 'Sales-01202002019', 4100, 0, 4100, '2020-01-02 11:51:34', 4, '', '', '', NULL),
(1323, 23, 350, 'Sales', 'Sales-01202002020', 20500, 0, 61500, '2020-01-02 11:52:19', 4, '', '', '', NULL),
(1324, 24, 341, 'Sales', 'Sales-01202002021', 36000, 0, 36000, '2020-01-02 11:55:46', 4, '', '', '', NULL),
(1325, 25, 320, 'Sales', 'Sales-01202002022', 15500, 0, 31000, '2020-01-02 11:56:29', 4, '', '', '', NULL),
(1326, 26, 343, 'Sales', 'Sales-01202002023', 15000, 0, 15000, '2020-01-02 11:57:08', 4, '', '', '', NULL),
(1327, 27, 335, 'Sales', 'Sales-01202002024', 541500, 0, 1014600, '2020-01-02 11:58:39', 4, '', '', '', NULL),
(1328, 28, 322, 'Sales', 'Sales-01202002025', 16950, 0, 30510, '2020-01-02 12:14:17', 4, '', '', '', NULL),
(1329, 29, 326, 'Sales', 'Sales-01202002026', 30000, 0, 30000, '2020-01-02 12:15:54', 4, '', '', '', NULL),
(1330, 30, 342, 'Payment', 'Babu', 0, 50000, -35000, '2020-01-02 13:25:04', 1, '', '', NULL, 'b'),
(1331, 31, 327, 'Payment', 'v', 0, 45000, -45000, '2020-01-02 13:25:43', 1, '', '', NULL, 'b'),
(1332, 32, 328, 'Payment', 'v', 0, 20000, 12000, '2020-01-02 13:26:36', 1, '', '', NULL, 'v'),
(1333, 33, 322, 'Payment', 'v', 0, 24000, 6510, '2020-01-02 13:26:53', 1, '', '', NULL, 'v'),
(1334, 34, 343, 'Payment', 'v', 0, 27000, -12000, '2020-01-02 13:27:16', 1, '', '', NULL, 'v'),
(1335, 35, 318, 'Payment', 'v', 0, 500000, -485000, '2020-01-02 13:27:37', 1, '', '', NULL, 'v'),
(1336, 36, 330, 'Payment', 'v', 0, 30000, 2000, '2020-01-02 13:28:03', 1, '', '', NULL, 'v'),
(1337, 37, 323, 'Payment', 'v', 0, 45500, 0, '2020-01-02 13:28:29', 1, '', '', NULL, 'v'),
(1338, 38, 334, 'Payment', 'v', 0, 75000, 0, '2020-01-02 13:28:57', 1, '', '', NULL, 'v'),
(1339, 39, 339, 'Payment', 'v', 0, 200000, -200000, '2020-01-02 13:29:22', 1, '', '', NULL, 'v'),
(1340, 40, 325, 'Payment', 'v', 0, 19000, -14900, '2020-01-02 13:29:39', 1, '', '', NULL, 'v'),
(1341, 41, 329, 'Payment', 'v', 0, 30000, -30000, '2020-01-02 13:29:53', 1, '', '', NULL, 'v'),
(1342, 42, 326, 'Payment', 'v', 0, 30000, 0, '2020-01-02 13:30:14', 1, '', '', NULL, 'v'),
(1343, 43, 332, 'Payment', 'v', 0, 14500, -940, '2020-01-02 13:30:31', 1, '', '', NULL, 'v'),
(1344, 44, 335, 'Payment', 'v', 0, 213000, 801600, '2020-01-02 13:52:56', 1, '', '', NULL, 'v'),
(1345, 45, 345, 'Sales', 'Sales-01202004027', 15400, 15400, 0, '2020-01-04 12:04:06', 1, '', '', '', NULL),
(1346, 46, 318, 'Sales', 'Sales-01202004028', 30000, 0, -455000, '2020-01-04 12:05:47', 4, '', '', '', NULL),
(1347, 47, 318, 'Sales', 'Sales-01202004029', 15000, 0, -440000, '2020-01-04 12:06:53', 1, '', '', '', NULL),
(1348, 48, 327, 'Sales', 'Sales-01202004030', 16000, 0, -29000, '2020-01-04 12:08:03', 4, '', '', '', NULL),
(1349, 49, 339, 'Sales', 'Sales-01202004031', 46500, 0, -153500, '2020-01-04 12:08:49', 4, '', '', '', NULL),
(1350, 50, 347, 'Sales', 'Sales-01202004032', 20500, 0, 20500, '2020-01-04 12:09:56', 4, '', '', '', NULL),
(1351, 51, 325, 'Sales', 'Sales-01202004033', 20340, 0, 5440, '2020-01-04 12:10:49', 1, '', '', '', NULL),
(1352, 52, 319, 'Sales', 'Sales-01202004034', 16000, 0, 97100, '2020-01-04 12:11:42', 4, '', '', '', NULL),
(1353, 53, 342, 'Sales', 'Sales-01202004035', 30000, 0, -5000, '2020-01-04 12:12:31', 4, '', '', '', NULL),
(1354, 54, 332, 'Sales', 'Sales-01202004036', 16950, 0, 16010, '2020-01-04 12:13:39', 4, '', '', '', NULL),
(1355, 55, 329, 'Sales', 'Sales-01202004037', 15000, 0, -15000, '2020-01-04 12:14:53', 1, '', '', '', NULL),
(1356, 56, 335, 'Sales', 'Sales-01202004038', 30000, 0, 831600, '2020-01-04 12:16:01', 1, '', '', '', NULL),
(1357, 57, 336, 'Sales', 'Sales-01202004039', 60000, 0, 60000, '2020-01-04 12:17:09', 1, '', '', '', NULL),
(1358, 58, 323, 'Sales', 'Sales-01202004040', 105250, 0, 105250, '2020-01-04 12:18:24', 1, '', '', '', NULL),
(1359, 59, 335, 'Sales', 'Sales-01202004041', 45000, 0, 876600, '2020-01-04 12:19:45', 1, '', '', '', NULL),
(1360, 60, 320, 'Sales', 'Sales-01202004042', 31000, 0, 62000, '2020-01-04 12:20:31', 1, '', '', '', NULL),
(1361, 61, 343, 'Sales', 'Sales-01202004043', 16500, 0, 4500, '2020-01-04 12:21:01', 1, '', '', '', NULL),
(1362, 62, 319, 'Sales', 'Sales-01202004044', 16000, 0, 113100, '2020-01-04 12:21:44', 1, '', '', '', NULL),
(1363, 63, 347, 'Sales', 'Sales-01202004045', 3000, 0, 23500, '2020-01-04 12:22:40', 1, '', '', '', NULL),
(1364, 64, 347, 'Payment', 'v', 0, 3000, 20500, '2020-01-05 09:31:51', 1, '', '', NULL, 'v'),
(1365, 65, 336, 'Payment', 'v', 0, 59000, 1000, '2020-01-05 09:32:23', 1, '', '', NULL, 'v'),
(1366, 66, 323, 'Payment', 'liton', 0, 105250, 0, '2020-01-05 09:32:56', 1, '', '', NULL, 'c'),
(1367, 67, 335, 'Payment', 'likhon', 0, 192750, 683850, '2020-01-05 09:33:27', 1, '', '', NULL, 'v'),
(1368, 68, 337, 'Sales', 'Sales-01202005046', 9000, 9000, 0, '2020-01-05 11:17:26', 1, '', '', '', NULL),
(1369, 69, 323, 'Sales', 'Sales-01202005047', 60000, 0, 60000, '2020-01-05 11:18:40', 1, '', '', '', NULL),
(1370, 70, 334, 'Sales', 'Sales-01202005048', 16000, 0, 16000, '2020-01-05 11:20:46', 1, '', '', '', NULL),
(1371, 71, 350, 'Sales', 'Sales-01202005049', 20500, 0, 82000, '2020-01-05 11:22:21', 1, '', '', '', NULL),
(1372, 72, 324, 'Sales', 'Sales-01202005050', 32000, 0, 32000, '2020-01-05 11:24:26', 1, '', '', '', NULL),
(1373, 73, 334, 'Sales', 'Sales-01202005051', 60000, 0, 76000, '2020-01-05 11:26:02', 1, '', '', '', NULL),
(1374, 74, 340, 'Sales', 'Sales-01202005052', 20500, 0, 20500, '2020-01-05 11:28:38', 1, '', '', '', NULL),
(1375, 75, 319, 'Sales', 'Sales-01202005053', 8500, 0, 121600, '2020-01-05 11:29:54', 1, '', '', '', NULL),
(1376, 76, 342, 'Sales', 'Sales-01202005054', 15000, 0, 10000, '2020-01-05 11:30:56', 1, '', '', '', NULL),
(1377, 77, 327, 'Sales', 'Sales-01202005055', 16000, 0, -13000, '2020-01-05 11:49:48', 1, '', '', '', NULL),
(1378, 78, 334, 'Payment', 'Munjirul Ar 10 Bag Vull Joma', 0, 16000, 60000, '2020-01-05 11:50:33', 1, '', '', NULL, 'Sonsodon'),
(1379, 79, 319, 'Sales', 'Sales-01202005056', 16000, 0, 137600, '2020-01-05 12:21:52', 4, '', '', '', NULL),
(1380, 80, 342, 'Payment', 't', 0, 30000, -20000, '2020-01-05 14:49:55', 1, '', '', NULL, 'v'),
(1381, 81, 343, 'Payment', 'v', 0, 21000, -16500, '2020-01-05 14:50:40', 1, '', '', NULL, 'v'),
(1382, 82, 322, 'Payment', 'v', 0, 19000, -12490, '2020-01-05 14:51:19', 1, '', '', NULL, 'v'),
(1383, 83, 338, 'Payment', 'v', 0, 30000, -30000, '2020-01-05 14:51:41', 1, '', '', NULL, 'v'),
(1384, 84, 325, 'Payment', 'v', 0, 16000, -10560, '2020-01-05 14:52:15', 1, '', '', NULL, 'v'),
(1385, 85, 327, 'Payment', 'v', 0, 30000, -43000, '2020-01-05 14:52:46', 1, '', '', NULL, 'v'),
(1386, 86, 326, 'Payment', 'v', 0, 30000, -30000, '2020-01-05 14:53:48', 1, '', '', NULL, 'v'),
(1387, 87, 329, 'Payment', 'v', 0, 15000, -30000, '2020-01-05 14:55:11', 1, '', '', NULL, 'v'),
(1388, 88, 332, 'Payment', 'v', 0, 11500, 4510, '2020-01-05 14:55:42', 1, '', '', NULL, 'v'),
(1389, 89, 319, 'Payment', 'v', 0, 90000, 47600, '2020-01-05 14:56:05', 1, '', '', NULL, 'v'),
(1390, 90, 324, 'Payment', 'v', 0, 32000, 0, '2020-01-05 14:56:43', 1, '', '', NULL, 'v'),
(1391, 91, 335, 'Payment', 'v', 0, 385050, 298800, '2020-01-05 14:57:40', 1, '', '', NULL, 'v'),
(1392, 92, 323, 'Payment', 'v', 0, 45000, 15000, '2020-01-05 14:58:10', 1, '', '', NULL, 'v'),
(1393, 93, 334, 'Payment', 'v', 0, 75000, -15000, '2020-01-05 14:58:43', 1, '', '', NULL, 'v'),
(1394, 94, 319, 'Sales', 'Sales-01202008057', 16000, 0, 80550, '2020-01-08 10:54:03', 1, '', '', '', 'Update Invoce'),
(1395, 95, 322, 'Sales', 'Sales-01202008058', 20340, 0, 7850, '2020-01-08 10:57:20', 1, '', '', '', NULL),
(1396, 96, 338, 'Sales', 'Sales-01202008059', 32000, 0, 2000, '2020-01-08 11:00:14', 1, '', '', '', NULL),
(1397, 97, 334, 'Sales', 'Sales-01202008060', 15000, 0, 0, '2020-01-08 11:01:19', 1, '', '', '', NULL),
(1398, 98, 323, 'Sales', 'Sales-01202008061', 52750, 0, 67750, '2020-01-08 11:02:18', 1, '', '', '', NULL),
(1399, 99, 342, 'Sales', 'Sales-01202008062', 30000, 0, 10000, '2020-01-08 11:03:13', 1, '', '', '', NULL),
(1400, 100, 340, 'Sales', 'Sales-01202008063', 20500, 0, 41000, '2020-01-08 11:04:50', 1, '', '', '', NULL),
(1401, 101, 330, 'Sales', 'Sales-01202008064', 32000, 0, 34000, '2020-01-08 11:05:33', 1, '', '', '', NULL),
(1402, 102, 335, 'Sales', 'Sales-01202008065', 454500, 0, 753300, '2020-01-08 11:06:47', 1, '', '', '', NULL),
(1403, 103, 347, 'Sales', 'Sales-01202008066', 3000, 3000, 20500, '2020-01-08 11:07:54', 1, '', '', '', NULL),
(1404, 104, 323, 'Sales', 'Sales-01202008067', 30250, 0, 98000, '2020-01-08 11:08:41', 1, '', '', '', NULL),
(1405, 105, 318, 'Sales', 'Sales-01202008068', 30000, 0, -410000, '2020-01-08 11:09:25', 1, '', '', '', NULL),
(1406, 106, 334, 'Sales', 'Sales-01202008069', 35400, 0, 35400, '2020-01-08 11:10:23', 1, '', '', '', NULL),
(1407, 107, 341, 'Sales', 'Sales-01202008070', 36000, 0, 72000, '2020-01-08 11:11:17', 1, '', '', '', NULL),
(1408, 108, 347, 'Sales', 'Sales-01202008071', 4650, 4650, 20500, '2020-01-08 11:12:07', 1, '', '', '', NULL),
(1409, 109, 320, 'Sales', 'Sales-01202008072', 31000, 0, 93000, '2020-01-08 11:15:50', 1, '', '', '', NULL),
(1410, 110, 335, 'Sales', 'Sales-01202008073', 121000, 0, 874300, '2020-01-08 11:17:35', 1, '', '', '', NULL),
(1411, 111, 334, 'Sales', 'Sales-01202008074', 60000, 0, 95400, '2020-01-08 11:19:50', 1, '', '', '', NULL),
(1412, 112, 319, 'Sales', 'Sales-01202008075', 16000, 0, 79600, '2020-01-08 11:21:42', 1, '', '', '', NULL),
(1413, 113, 326, 'Sales', 'Sales-01202008076', 30000, 0, 0, '2020-01-08 11:22:24', 1, '', '', '', NULL),
(1414, 114, 323, 'Sales', 'Sales-01202008077', 60500, 0, 158500, '2020-01-08 11:24:12', 1, '', '', '', NULL),
(1415, 115, 325, 'Sales', 'Sales-01202008078', 11935, 0, 1375, '2020-01-08 11:25:30', 1, '', '', '', NULL),
(1416, 116, 332, 'Sales', 'Sales-01202008079', 11935, 0, 16445, '2020-01-08 11:26:07', 1, '', '', '', NULL),
(1417, 117, 337, 'Sales', 'Sales-01202008080', 30000, 0, 30000, '2020-01-08 11:27:25', 1, '', '', '', NULL),
(1418, 118, 342, 'Sales', 'Sales-01202008081', 31000, 0, 41000, '2020-01-08 11:30:10', 1, '', '', '', NULL),
(1419, 119, 329, 'Sales', 'Sales-01202008082', 15500, 0, -14500, '2020-01-08 11:30:56', 1, '', '', '', NULL),
(1420, 120, 350, 'Sales', 'Sales-01202008083', 41000, 0, 123000, '2020-01-08 11:40:08', 1, '', '', '', NULL),
(1421, 121, 348, 'Sales', 'Sales-01202008084', 30000, 0, 30000, '2020-01-08 11:41:10', 1, '', '', '', NULL),
(1422, 122, 343, 'Sales', 'Sales-01202008085', 13950, 0, -2550, '2020-01-08 11:41:56', 1, '', '', '', NULL),
(1423, 123, 349, 'Sales', 'Sales-01202008086', 30000, 0, 60000, '2020-01-08 11:42:33', 1, '', '', '', NULL),
(1424, 124, 348, 'Payment', 'v', 0, 30000, 0, '2020-01-08 11:47:21', 1, '', '', NULL, 'v'),
(1425, 125, 334, 'Payment', 'v', 0, 102900, -7500, '2020-01-08 11:47:44', 1, '', '', NULL, 'v'),
(1426, 126, 323, 'Payment', 'v', 0, 15000, 143500, '2020-01-08 11:48:09', 1, '', '', NULL, 'v'),
(1427, 127, 335, 'Payment', 'v', 0, 202400, 671900, '2020-01-08 11:48:34', 1, '', '', NULL, 'v');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `pd_code` varchar(30) CHARACTER SET latin1 NOT NULL,
  `pd_name` varchar(80) CHARACTER SET latin1 NOT NULL,
  `catagory_id` int(11) NOT NULL DEFAULT 0,
  `sub_catagory_id` int(11) NOT NULL DEFAULT 0,
  `pd_type` varchar(80) CHARACTER SET latin1 NOT NULL DEFAULT 'Finish Good Product',
  `status` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT 'Active',
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `pd_code`, `pd_name`, `catagory_id`, `sub_catagory_id`, `pd_type`, `status`, `reg_date`) VALUES
(87, '2001', 'Layer Layer 1', 49, 37, 'Finish Good Product', 'Active', '2018-01-03 04:16:10'),
(88, '2002', 'Layer Layer -2', 49, 38, 'Finish Good Product', 'Active', '2018-01-03 04:17:50'),
(89, '2003', 'Layer Grower', 49, 39, 'Finish Good Product', 'Active', '2018-01-03 04:18:12'),
(90, '2004', 'Layer Stater (C)', 49, 40, 'Finish Good Product', 'Active', '2018-01-03 04:18:49'),
(91, '2005', 'Layer Stater (M)', 49, 41, 'Finish Good Product', 'Active', '2018-01-03 04:20:22'),
(92, '2007', 'Fish Feed (Mas)', 50, 42, 'Finish Good Product', 'Active', '2019-11-04 11:15:08'),
(93, '2008', 'Fish Feed (Pellet)', 50, 43, 'Finish Good Product', 'Active', '2019-11-04 11:18:23'),
(94, 'SFL- 1010', 'Ricesh Polish', 51, 44, 'Raw material product', 'Active', '2019-12-31 14:51:48'),
(95, 'SFL- 1011', 'Corn (Maize)', 51, 45, 'Raw material product', 'Active', '2019-12-31 14:52:20'),
(96, 'SFL- 1012', 'Limestone', 51, 46, 'Raw material product', 'Active', '2019-12-31 14:52:43'),
(97, 'SFL- 1013', 'Soybean', 51, 47, 'Raw material product', 'Active', '2019-12-31 14:53:13'),
(98, 'SFL- 1014', 'Bosta Bag', 51, 48, 'Raw material product', 'Active', '2019-12-31 14:53:43'),
(99, 'SFL- 1015', 'Protein', 51, 49, 'Raw material product', 'Active', '2019-12-31 14:54:08'),
(100, 'SFL- 1016', 'Distillers grains (DDGS)', 51, 50, 'Raw material product', 'Active', '2019-12-31 14:54:35'),
(101, 'M-10001', 'Layer Premiex', 52, 51, 'Raw material product', 'Active', '2020-01-09 12:10:10'),
(102, 'M-10010', 'L-Lysine', 52, 56, 'Raw material product', 'Active', '2020-01-09 12:11:28'),
(103, 'M-10005', 'M.C.P (Russia)', 52, 53, 'Raw material product', 'Active', '2020-01-09 12:12:22'),
(104, 'M-10011', 'Choline ', 52, 57, 'Raw material product', 'Active', '2020-01-09 12:13:35'),
(105, 'M-10002', ' Grower Premiex', 52, 51, 'Raw material product', 'Active', '2020-01-11 05:17:29'),
(106, 'M-10003', 'Brolier  Premiex', 52, 51, 'Raw material product', 'Active', '2020-01-11 05:18:02'),
(107, 'M-10006', 'D.C.P', 52, 53, 'Raw material product', 'Active', '2020-01-11 05:18:45'),
(108, 'M-10004', 'Methionine (99%)', 52, 64, 'Raw material product', 'Active', '2020-01-11 05:22:56'),
(109, 'M-10007', 'Natuzyme', 52, 63, 'Raw material product', 'Active', '2020-01-11 05:23:28'),
(110, 'M-10008', 'Eletox', 52, 61, 'Raw material product', 'Active', '2020-01-11 05:24:15'),
(111, 'M-10009', 'Toxin U.T.P.P.S', 52, 61, 'Finish Good Product', 'Active', '2020-01-11 05:24:52'),
(112, 'M-10012', 'Phytase', 52, 64, 'Raw material product', 'Active', '2020-01-11 05:25:45'),
(113, 'M-10013', 'Availa ZM', 52, 58, 'Finish Good Product', 'Active', '2020-01-11 05:26:15'),
(114, 'M-10014', 'NaHCo3', 52, 64, 'Raw material product', 'Active', '2020-01-11 05:27:08'),
(115, 'M-10020', 'Di-Boost', 52, 63, 'Raw material product', 'Active', '2020-01-11 06:07:00'),
(116, 'M-10021', 'Emulex', 52, 64, 'Raw material product', 'Active', '2020-01-11 06:07:30'),
(117, 'M10022', 'G-Plus', 52, 64, 'Raw material product', 'Active', '2020-01-11 06:07:57'),
(118, 'M-10023', 'Zymepex ', 52, 64, 'Raw material product', 'Active', '2020-01-11 06:08:35'),
(119, 'M-10024', 'MN-Plus', 52, 64, 'Raw material product', 'Active', '2020-01-11 06:09:06'),
(120, 'M-10030', 'GB-Zyme', 52, 63, 'Raw material product', 'Active', '2020-01-14 10:34:23'),
(121, 'M-10031', 'P-Boostar', 52, 64, 'Raw material product', 'Active', '2020-01-14 10:42:39'),
(122, 'M-10032', 'P-Boostar', 52, 64, 'Raw material product', 'Active', '2020-01-14 10:42:50'),
(123, 'M-10038', 'Salstop', 52, 64, 'Raw material product', 'Active', '2020-01-26 05:36:47');

-- --------------------------------------------------------

--
-- Table structure for table `product_accounts`
--

CREATE TABLE `product_accounts` (
  `id` int(11) NOT NULL,
  `pd_id` int(11) NOT NULL DEFAULT 0,
  `order_sales_manage_status` varchar(40) NOT NULL DEFAULT 'CustomManage',
  `supplier_customerid` int(11) NOT NULL DEFAULT 0,
  `osm_content_code` varchar(40) NOT NULL,
  `osm_id` int(11) NOT NULL,
  `osm_fulll_id` varchar(70) NOT NULL,
  `stock_kg` float NOT NULL DEFAULT 0,
  `stock_bag` float NOT NULL DEFAULT 0,
  `bag_size` int(11) NOT NULL DEFAULT 0,
  `unit_number` int(11) NOT NULL DEFAULT 0,
  `total_kg` float NOT NULL DEFAULT 0,
  `nots` text DEFAULT NULL,
  `auto_sales_pursess_unit_price` float NOT NULL DEFAULT 0,
  `total_price` float NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `insert_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_accounts`
--

INSERT INTO `product_accounts` (`id`, `pd_id`, `order_sales_manage_status`, `supplier_customerid`, `osm_content_code`, `osm_id`, `osm_fulll_id`, `stock_kg`, `stock_bag`, `bag_size`, `unit_number`, `total_kg`, `nots`, `auto_sales_pursess_unit_price`, `total_price`, `create_date`, `insert_id`) VALUES
(1204, 87, 'SalesManage', 335, 'Sales-01202001', 1, 'Sales-0120200101', -0, -320, -50, 0, -16000, 'Sokal', 30, 480000, '2020-01-01 11:50:58', 1),
(1205, 89, 'SalesManage', 335, 'Sales-01202001', 1, 'Sales-0120200101', -0, -20, -50, 0, -1000, 'Sokal', 31, 31000, '2020-01-01 11:50:58', 1),
(1206, 90, 'SalesManage', 335, 'Sales-01202001', 1, 'Sales-0120200101', -0, -20, -50, 0, -1000, 'Sokal', 36, 36000, '2020-01-01 11:50:58', 1),
(1207, 90, 'SalesManage', 350, 'Sales-01202001', 2, 'Sales-0120200102', -0, -20, -50, 0, -1000, 'No', 41, 41000, '2020-01-01 11:52:14', 1),
(1208, 87, 'SalesManage', 322, 'Sales-01202001', 3, 'Sales-0120200103', -0, -8, -50, 0, -400, '0', 33, 13200, '2020-01-01 11:55:17', 1),
(1209, 87, 'SalesManage', 332, 'Sales-01202001', 4, 'Sales-0120200104', -0, -8, -50, 0, -400, '0', 33.9, 13560, '2020-01-01 11:56:02', 1),
(1210, 87, 'SalesManage', 321, 'Sales-01202001', 5, 'Sales-0120200105', -0, -7, -50, 0, -350, '0', 33.9, 11865, '2020-01-01 11:56:42', 1),
(1211, 87, 'SalesManage', 330, 'Sales-01202001', 6, 'Sales-0120200106', -0, -20, -50, 0, -1000, '0', 32, 32000, '2020-01-01 11:57:41', 1),
(1212, 87, 'SalesManage', 319, 'Sales-01202001', 7, 'Sales-0120200107', -0, -10, -50, 0, -500, '0', 32, 16000, '2020-01-01 11:58:17', 1),
(1213, 89, 'SalesManage', 319, 'Sales-01202001', 8, 'Sales-0120200108', -0, -22, -50, 0, -1100, '0', 34, 37400, '2020-01-01 11:59:28', 1),
(1214, 87, 'SalesManage', 324, 'Sales-01202001', 9, 'Sales-0120200109', -0, -20, -50, 0, -1000, '0', 32, 32000, '2020-01-01 12:00:52', 1),
(1215, 87, 'SalesManage', 349, 'Sales-01202001', 10, 'Sales-01202001010', -0, -20, -50, 0, -1000, '0', 30, 30000, '2020-01-01 12:01:32', 1),
(1216, 87, 'SalesManage', 347, 'Sales-01202001', 11, 'Sales-01202001011', -0, -2, -50, 0, -100, '0', 30, 3000, '2020-01-01 12:02:21', 1),
(1217, 87, 'SalesManage', 320, 'Sales-01202001', 12, 'Sales-01202001012', -0, -10, -50, 0, -500, '0', 31, 15500, '2020-01-01 12:02:59', 1),
(1218, 87, 'SalesManage', 342, 'Sales-01202001', 13, 'Sales-01202001013', -0, -10, -50, 0, -500, '0', 30, 15000, '2020-01-01 12:03:39', 1),
(1219, 87, 'SalesManage', 328, 'Sales-01202002', 14, 'Sales-01202002014', -0, -20, -50, 0, -1000, 'a', 32, 32000, '2020-01-02 11:45:38', 1),
(1220, 87, 'SalesManage', 323, 'Sales-01202002', 15, 'Sales-01202002015', -0, -20, -50, 0, -1000, 'v', 30, 30000, '2020-01-02 11:47:31', 1),
(1221, 89, 'SalesManage', 323, 'Sales-01202002', 15, 'Sales-01202002015', -0, -10, -50, 0, -500, 'v', 31, 15500, '2020-01-02 11:47:31', 1),
(1222, 87, 'SalesManage', 334, 'Sales-01202002', 16, 'Sales-01202002016', -0, -50, -50, 0, -2500, 'a', 30, 75000, '2020-01-02 11:48:19', 1),
(1223, 87, 'SalesManage', 318, 'Sales-01202002', 17, 'Sales-01202002017', -0, -10, -50, 0, -500, 'v', 30, 15000, '2020-01-02 11:49:15', 1),
(1224, 87, 'SalesManage', 319, 'Sales-01202002', 18, 'Sales-01202002018', -0, -12, -50, 0, -600, 'v', 32, 19200, '2020-01-02 11:50:41', 1),
(1225, 89, 'SalesManage', 319, 'Sales-01202002', 18, 'Sales-01202002018', -0, -5, -50, 0, -250, 'v', 34, 8500, '2020-01-02 11:50:41', 1),
(1226, 90, 'SalesManage', 325, 'Sales-01202002', 19, 'Sales-01202002019', -0, -2, -50, 0, -100, 'v', 41, 4100, '2020-01-02 11:51:34', 1),
(1227, 90, 'SalesManage', 350, 'Sales-01202002', 20, 'Sales-01202002020', -0, -10, -50, 0, -500, 'v', 41, 20500, '2020-01-02 11:52:19', 1),
(1228, 91, 'SalesManage', 341, 'Sales-01202002', 21, 'Sales-01202002021', -0, -20, -50, 0, -1000, 'v', 36, 36000, '2020-01-02 11:55:46', 1),
(1229, 87, 'SalesManage', 320, 'Sales-01202002', 22, 'Sales-01202002022', -0, -10, -50, 0, -500, 'v', 31, 15500, '2020-01-02 11:56:29', 1),
(1230, 87, 'SalesManage', 343, 'Sales-01202002', 23, 'Sales-01202002023', -0, -10, -50, 0, -500, 'v', 29, 14500, '2020-01-02 11:57:08', 1),
(1231, 87, 'SalesManage', 335, 'Sales-01202002', 24, 'Sales-01202002024', -0, -330, -50, 0, -16500, 'v', 30, 495000, '2020-01-02 11:58:39', 1),
(1232, 89, 'SalesManage', 335, 'Sales-01202002', 24, 'Sales-01202002024', -0, -30, -50, 0, -1500, 'v', 31, 46500, '2020-01-02 11:58:39', 1),
(1233, 87, 'SalesManage', 322, 'Sales-01202002', 25, 'Sales-01202002025', -0, -10, -50, 0, -500, 'v', 33.9, 16950, '2020-01-02 12:14:17', 1),
(1234, 87, 'SalesManage', 326, 'Sales-01202002', 26, 'Sales-01202002026', -0, -20, -50, 0, -1000, 'v', 30, 30000, '2020-01-02 12:15:54', 1),
(1235, 90, 'CustomManage', 0, 'Custom-01202002', 1, 'Custom-0120200201', 0, 160, 50, 0, 8000, '01-01-2020 Takirk Sokal', 0, 0, '2020-01-02 12:26:16', 1),
(1236, 89, 'CustomManage', 0, 'Custom-01202002', 1, 'Custom-0120200201', 0, 6, 50, 0, 300, '01-01-2020 Takirk Sokal', 0, 0, '2020-01-02 12:26:16', 1),
(1237, 87, 'CustomManage', 0, 'Custom-01202002', 1, 'Custom-0120200201', 0, 297, 50, 0, 14850, '01-01-2020 Takirk Sokal', 0, 0, '2020-01-02 12:26:16', 1),
(1238, 87, 'CustomManage', 0, 'Custom-01202002', 2, 'Custom-0120200202', 0, 289, 50, 0, 14450, '01-01-2020 Tarik Utpadon', 0, 0, '2020-01-02 12:28:03', 1),
(1239, 89, 'CustomManage', 0, 'Custom-01202002', 2, 'Custom-0120200202', 0, 60, 50, 0, 3000, '01-01-2020 Tarik Utpadon', 0, 0, '2020-01-02 12:28:03', 1),
(1240, 91, 'CustomManage', 0, 'Custom-01202002', 2, 'Custom-0120200202', 0, 20, 50, 0, 1000, '01-01-2020 Tarik Utpadon', 0, 0, '2020-01-02 12:28:03', 1),
(1241, 89, 'SalesManage', 345, 'Sales-01202004', 27, 'Sales-01202004027', -0, -10, -50, 0, -500, 'Cash', 30.8, 15400, '2020-01-04 12:04:06', 1),
(1242, 87, 'SalesManage', 318, 'Sales-01202004', 28, 'Sales-01202004028', -0, -20, -50, 0, -1000, 'v', 30, 30000, '2020-01-04 12:05:47', 1),
(1243, 87, 'SalesManage', 318, 'Sales-01202004', 29, 'Sales-01202004029', -0, -10, -50, 0, -500, 'v', 30, 15000, '2020-01-04 12:06:53', 1),
(1244, 87, 'SalesManage', 327, 'Sales-01202004', 30, 'Sales-01202004030', -0, -10, -50, 0, -500, 'v', 32, 16000, '2020-01-04 12:08:03', 1),
(1245, 87, 'SalesManage', 339, 'Sales-01202004', 31, 'Sales-01202004031', -0, -30, -50, 0, -1500, 'v', 31, 46500, '2020-01-04 12:08:49', 1),
(1246, 90, 'SalesManage', 347, 'Sales-01202004', 32, 'Sales-01202004032', -0, -10, -50, 0, -500, 'v', 41, 20500, '2020-01-04 12:09:56', 1),
(1247, 87, 'SalesManage', 325, 'Sales-01202004', 33, 'Sales-01202004033', -0, -12, -50, 0, -600, 'v', 33.9, 20340, '2020-01-04 12:10:49', 1),
(1248, 87, 'SalesManage', 319, 'Sales-01202004', 34, 'Sales-01202004034', -0, -10, -50, 0, -500, 'v', 32, 16000, '2020-01-04 12:11:42', 1),
(1249, 87, 'SalesManage', 342, 'Sales-01202004', 35, 'Sales-01202004035', -0, -20, -50, 0, -1000, 'v', 30, 30000, '2020-01-04 12:12:31', 1),
(1250, 87, 'SalesManage', 332, 'Sales-01202004', 36, 'Sales-01202004036', -0, -10, -50, 0, -500, 'v', 33.9, 16950, '2020-01-04 12:13:39', 1),
(1251, 87, 'SalesManage', 329, 'Sales-01202004', 37, 'Sales-01202004037', -0, -10, -50, 0, -500, 'v', 30, 15000, '2020-01-04 12:14:53', 1),
(1252, 87, 'SalesManage', 335, 'Sales-01202004', 38, 'Sales-01202004038', -0, -20, -50, 0, -1000, 'v', 30, 30000, '2020-01-04 12:16:01', 1),
(1253, 87, 'SalesManage', 336, 'Sales-01202004', 39, 'Sales-01202004039', -0, -40, -50, 0, -2000, 'v', 30, 60000, '2020-01-04 12:17:09', 1),
(1254, 87, 'SalesManage', 323, 'Sales-01202004', 40, 'Sales-01202004040', -0, -65, -50, 0, -3250, 'Faruk Baki 10 Bag Grower', 30, 97500, '2020-01-04 12:18:24', 1),
(1255, 89, 'SalesManage', 323, 'Sales-01202004', 40, 'Sales-01202004040', -0, -5, -50, 0, -250, 'Faruk Baki 10 Bag Grower', 31, 7750, '2020-01-04 12:18:24', 1),
(1256, 87, 'SalesManage', 335, 'Sales-01202004', 41, 'Sales-01202004041', -0, -30, -50, 0, -1500, 'v', 30, 45000, '2020-01-04 12:19:45', 1),
(1257, 87, 'SalesManage', 320, 'Sales-01202004', 42, 'Sales-01202004042', -0, -20, -50, 0, -1000, 'v', 31, 31000, '2020-01-04 12:20:31', 1),
(1258, 87, 'SalesManage', 343, 'Sales-01202004', 43, 'Sales-01202004043', -0, -11, -50, 0, -550, 'v', 30, 16500, '2020-01-04 12:21:01', 1),
(1259, 87, 'SalesManage', 319, 'Sales-01202004', 44, 'Sales-01202004044', -0, -10, -50, 0, -500, 'v', 32, 16000, '2020-01-04 12:21:44', 1),
(1260, 87, 'SalesManage', 347, 'Sales-01202004', 45, 'Sales-01202004045', -0, -2, -50, 0, -100, 'v', 30, 3000, '2020-01-04 12:22:40', 1),
(1261, 94, 'PurchaseManage', 19, 'Purchase-01202005', 1, 'Purchase-0120200501', 0, 43, 55, 0, 2365, 'v', 22.5, 53212.5, '2020-01-05 09:44:00', 1),
(1262, 94, 'PurchaseManage', 19, 'Purchase-01202005', 1, 'Purchase-0120200501', 0, 30, 55, 0, 1650, 'v', 22.5, 37125, '2020-01-05 09:44:00', 1),
(1263, 87, 'SalesManage', 337, 'Sales-01202005', 46, 'Sales-01202005046', -0, -6, -50, 0, -300, 'v', 30, 9000, '2020-01-05 11:17:26', 1),
(1264, 87, 'SalesManage', 323, 'Sales-01202005', 47, 'Sales-01202005047', -0, -40, -50, 0, -2000, 'v', 29, 58000, '2020-01-05 11:18:40', 1),
(1265, 87, 'SalesManage', 334, 'Sales-01202005', 48, 'Sales-01202005048', -0, -10, -50, 0, -500, 'v', 32, 16000, '2020-01-05 11:20:46', 1),
(1266, 90, 'SalesManage', 350, 'Sales-01202005', 49, 'Sales-01202005049', -0, -10, -50, 0, -500, 'v', 41, 20500, '2020-01-05 11:22:21', 1),
(1267, 87, 'SalesManage', 324, 'Sales-01202005', 50, 'Sales-01202005050', -0, -20, -50, 0, -1000, 'v', 32, 32000, '2020-01-05 11:24:26', 1),
(1268, 87, 'SalesManage', 334, 'Sales-01202005', 51, 'Sales-01202005051', -0, -40, -50, 0, -2000, 'v', 30, 60000, '2020-01-05 11:26:02', 1),
(1269, 90, 'SalesManage', 340, 'Sales-01202005', 52, 'Sales-01202005052', -0, -10, -50, 0, -500, 'v', 41, 20500, '2020-01-05 11:28:38', 1),
(1270, 89, 'SalesManage', 319, 'Sales-01202005', 53, 'Sales-01202005053', -0, -5, -50, 0, -250, 'v', 34, 8500, '2020-01-05 11:29:54', 1),
(1271, 87, 'SalesManage', 342, 'Sales-01202005', 54, 'Sales-01202005054', -0, -10, -50, 0, -500, 'v', 30, 15000, '2020-01-05 11:30:56', 1),
(1272, 87, 'SalesManage', 327, 'Sales-01202005', 55, 'Sales-01202005055', -0, -10, -50, 0, -500, 'v', 32, 16000, '2020-01-05 11:49:48', 1),
(1273, 87, 'SalesManage', 319, 'Sales-01202005', 56, 'Sales-01202005056', -0, -10, -50, 0, -500, 'v', 32, 16000, '2020-01-05 12:21:52', 1),
(1274, 87, 'SalesManage', 319, 'Sales-01202008', 57, 'Sales-01202008057', -0, -10, -50, 0, -500, 'Na', 31.9, 15950, '2020-01-08 10:54:03', 1),
(1275, 87, 'SalesManage', 322, 'Sales-01202008', 58, 'Sales-01202008058', -0, -12, -50, 0, -600, 'Na', 33.9, 20340, '2020-01-08 10:57:20', 1),
(1276, 89, 'SalesManage', 338, 'Sales-01202008', 59, 'Sales-01202008059', -0, -20, -50, 0, -1000, 'Na', 32, 32000, '2020-01-08 11:00:14', 1),
(1277, 87, 'SalesManage', 334, 'Sales-01202008', 60, 'Sales-01202008060', -0, -10, -50, 0, -500, 'Na', 30, 15000, '2020-01-08 11:01:19', 1),
(1278, 87, 'SalesManage', 323, 'Sales-01202008', 61, 'Sales-01202008061', -0, -30, -50, 0, -1500, 'Na', 30, 45000, '2020-01-08 11:02:18', 1),
(1279, 89, 'SalesManage', 323, 'Sales-01202008', 61, 'Sales-01202008061', -0, -5, -50, 0, -250, 'Na', 31, 7750, '2020-01-08 11:02:18', 1),
(1280, 87, 'SalesManage', 342, 'Sales-01202008', 62, 'Sales-01202008062', -0, -20, -50, 0, -1000, 'Na', 30, 30000, '2020-01-08 11:03:13', 1),
(1281, 90, 'SalesManage', 340, 'Sales-01202008', 63, 'Sales-01202008063', -0, -10, -50, 0, -500, 'Na', 39, 19500, '2020-01-08 11:04:50', 1),
(1282, 87, 'SalesManage', 330, 'Sales-01202008', 64, 'Sales-01202008064', -0, -20, -50, 0, -1000, 'Na', 32, 32000, '2020-01-08 11:05:33', 1),
(1283, 87, 'SalesManage', 335, 'Sales-01202008', 65, 'Sales-01202008065', -0, -260, -50, 0, -13000, 'Na', 30, 390000, '2020-01-08 11:06:47', 1),
(1284, 89, 'SalesManage', 335, 'Sales-01202008', 65, 'Sales-01202008065', -0, -30, -50, 0, -1500, 'Na', 31, 46500, '2020-01-08 11:06:47', 1),
(1285, 90, 'SalesManage', 335, 'Sales-01202008', 65, 'Sales-01202008065', -0, -10, -50, 0, -500, 'Na', 36, 18000, '2020-01-08 11:06:47', 1),
(1286, 87, 'SalesManage', 347, 'Sales-01202008', 66, 'Sales-01202008066', -0, -2, -50, 0, -100, 'Na', 30, 3000, '2020-01-08 11:07:54', 1),
(1287, 87, 'SalesManage', 323, 'Sales-01202008', 67, 'Sales-01202008067', -0, -15, -50, 0, -750, 'Na', 30, 22500, '2020-01-08 11:08:41', 1),
(1288, 89, 'SalesManage', 323, 'Sales-01202008', 67, 'Sales-01202008067', -0, -5, -50, 0, -250, 'Na', 31, 7750, '2020-01-08 11:08:41', 1),
(1289, 87, 'SalesManage', 318, 'Sales-01202008', 68, 'Sales-01202008068', -0, -20, -50, 0, -1000, 'Na', 30, 30000, '2020-01-08 11:09:25', 1),
(1290, 87, 'SalesManage', 334, 'Sales-01202008', 69, 'Sales-01202008069', -0, -20, -50, 0, -1000, 'Na', 30, 30000, '2020-01-08 11:10:23', 1),
(1291, 90, 'SalesManage', 334, 'Sales-01202008', 69, 'Sales-01202008069', -0, -3, -50, 0, -150, 'Na', 36, 5400, '2020-01-08 11:10:23', 1),
(1292, 90, 'SalesManage', 341, 'Sales-01202008', 70, 'Sales-01202008070', -0, -20, -50, 0, -1000, 'Na', 36, 36000, '2020-01-08 11:11:17', 1),
(1293, 87, 'SalesManage', 347, 'Sales-01202008', 71, 'Sales-01202008071', -0, -3, -50, 0, -150, 'Na', 31, 4650, '2020-01-08 11:12:07', 1),
(1294, 87, 'SalesManage', 320, 'Sales-01202008', 72, 'Sales-01202008072', -0, -20, -50, 0, -1000, 'Na', 31, 31000, '2020-01-08 11:15:50', 1),
(1295, 87, 'SalesManage', 335, 'Sales-01202008', 73, 'Sales-01202008073', -0, -60, -50, 0, -3000, 'Na', 30, 90000, '2020-01-08 11:17:35', 1),
(1296, 89, 'SalesManage', 335, 'Sales-01202008', 73, 'Sales-01202008073', -0, -20, -50, 0, -1000, 'Na', 31, 31000, '2020-01-08 11:17:35', 1),
(1297, 87, 'SalesManage', 334, 'Sales-01202008', 74, 'Sales-01202008074', -0, -40, -50, 0, -2000, 'Na', 30, 60000, '2020-01-08 11:19:50', 1),
(1298, 87, 'SalesManage', 319, 'Sales-01202008', 75, 'Sales-01202008075', -0, -10, -50, 0, -500, 'Na', 32, 16000, '2020-01-08 11:21:42', 1),
(1299, 87, 'SalesManage', 326, 'Sales-01202008', 76, 'Sales-01202008076', -0, -20, -50, 0, -1000, 'Na', 30, 30000, '2020-01-08 11:22:24', 1),
(1300, 87, 'SalesManage', 323, 'Sales-01202008', 77, 'Sales-01202008077', -0, -30, -50, 0, -1500, 'Na', 30, 45000, '2020-01-08 11:24:12', 1),
(1301, 89, 'SalesManage', 323, 'Sales-01202008', 77, 'Sales-01202008077', -0, -10, -50, 0, -500, 'Na', 31, 15500, '2020-01-08 11:24:12', 1),
(1302, 87, 'SalesManage', 325, 'Sales-01202008', 78, 'Sales-01202008078', -0, -7, -50, 0, -350, 'Na', 34, 11900, '2020-01-08 11:25:30', 1),
(1303, 87, 'SalesManage', 332, 'Sales-01202008', 79, 'Sales-01202008079', -0, -7, -50, 0, -350, 'Na', 34.1, 11935, '2020-01-08 11:26:07', 1),
(1304, 87, 'SalesManage', 337, 'Sales-01202008', 80, 'Sales-01202008080', -0, -20, -50, 0, -1000, 'Na', 30, 30000, '2020-01-08 11:27:25', 1),
(1305, 87, 'SalesManage', 342, 'Sales-01202008', 81, 'Sales-01202008081', -0, -20, -50, 0, -1000, 'Na', 31, 31000, '2020-01-08 11:30:10', 1),
(1306, 87, 'SalesManage', 329, 'Sales-01202008', 82, 'Sales-01202008082', -0, -10, -50, 0, -500, 'Na', 31, 15500, '2020-01-08 11:30:56', 1),
(1307, 90, 'SalesManage', 350, 'Sales-01202008', 83, 'Sales-01202008083', -0, -20, -50, 0, -1000, 'Na', 41, 41000, '2020-01-08 11:40:08', 1),
(1308, 87, 'SalesManage', 348, 'Sales-01202008', 84, 'Sales-01202008084', -0, -20, -50, 0, -1000, 'Na', 30, 30000, '2020-01-08 11:41:10', 1),
(1309, 87, 'SalesManage', 343, 'Sales-01202008', 85, 'Sales-01202008085', -0, -9, -50, 0, -450, 'Na', 31, 13950, '2020-01-08 11:41:56', 1),
(1310, 87, 'SalesManage', 349, 'Sales-01202008', 86, 'Sales-01202008086', -0, -20, -50, 0, -1000, 'Na', 30, 30000, '2020-01-08 11:42:33', 1),
(1311, 102, 'PurchaseManage', 23, 'Purchase-01202009', 2, 'Purchase-0120200902', 0, 20, 25, 0, 500, 'Na', 155, 77500, '2020-01-09 12:18:13', 2),
(1312, 103, 'PurchaseManage', 23, 'Purchase-01202009', 2, 'Purchase-0120200902', 0, 30, 50, 0, 1500, 'Na', 65, 97500, '2020-01-09 12:18:13', 2),
(1313, 104, 'PurchaseManage', 23, 'Purchase-01202009', 2, 'Purchase-0120200902', 0, 20, 25, 0, 500, 'Na', 100, 50000, '2020-01-09 12:18:13', 2),
(1314, 121, 'PurchaseManage', 25, 'Purchase-01202014', 3, 'Purchase-0120201403', 0, 10, 1, 0, 10, '01.01.2020', 690, 6900, '2020-01-14 10:44:16', 2),
(1315, 121, 'PurchaseManage', 25, 'Purchase-01202014', 4, 'Purchase-0120201404', 0, 20, 1, 0, 20, '04.01.2020', 698.25, 13965, '2020-01-14 10:45:42', 2),
(1316, 120, 'PurchaseManage', 25, 'Purchase-01202014', 4, 'Purchase-0120201404', 0, 1, 10, 0, 10, '04.01.2020', 295, 2950, '2020-01-14 10:45:42', 2),
(1317, 120, 'PurchaseManage', 25, 'Purchase-01202014', 5, 'Purchase-0120201405', 0, 10, 10, 0, 100, 'Bill No -pvf/805/20', 290, 29000, '2020-01-14 10:47:48', 2),
(1318, 108, 'PurchaseManage', 26, 'Purchase-01202014', 6, 'Purchase-0120201406', 0, 10, 25, 0, 250, 'na', 268, 67000, '2020-01-14 11:06:13', 2),
(1319, 108, 'PurchaseManage', 26, 'Purchase-01202018', 7, 'Purchase-0120201807', 0, 20, 25, 0, 500, 'Dus -Chuqe SBL -9145795 Amount= 132500', 265, 132500, '2020-01-18 07:55:26', 2),
(1320, 102, 'PurchaseManage', 27, 'Purchase-01202018', 8, 'Purchase-0120201808', 0, 30, 25, 0, 750, 'Invoice No -3160586205', 155, 116250, '2020-01-18 08:29:44', 2),
(1321, 109, 'PurchaseManage', 27, 'Purchase-01202018', 8, 'Purchase-0120201808', 0, 2, 25, 0, 50, 'Invoice No -3160586205', 340, 17000, '2020-01-18 08:29:44', 2),
(1322, 123, 'PurchaseManage', 24, 'Purchase-01202026', 9, 'Purchase-0120202609', 0, 40, 25, 0, 1000, 'na', 240, 240000, '2020-01-26 05:39:32', 2),
(1323, 110, 'PurchaseManage', 24, 'Purchase-01202026', 9, 'Purchase-0120202609', 0, 1, 25, 0, 25, 'na', 375, 9375, '2020-01-26 05:39:32', 2),
(1324, 111, 'PurchaseManage', 24, 'Purchase-01202026', 9, 'Purchase-0120202609', 0, 50, 25, 0, 1250, 'na', 125, 156250, '2020-01-26 05:39:32', 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_osm_accounts`
--

CREATE TABLE `product_osm_accounts` (
  `id` int(11) NOT NULL,
  `osm_full_id` varchar(60) NOT NULL,
  `sales_purchase_status` varchar(30) NOT NULL DEFAULT 'Sales',
  `customer_supplier_id` int(11) NOT NULL,
  `truck_no` varchar(40) NOT NULL,
  `truck_rate` float NOT NULL DEFAULT 0,
  `totla_kg` float NOT NULL DEFAULT 0,
  `total_bag` float NOT NULL DEFAULT 0,
  `total_unit` float NOT NULL DEFAULT 0,
  `subtotal` float NOT NULL DEFAULT 0,
  `discount_amount` float NOT NULL DEFAULT 0,
  `final_amount` float NOT NULL DEFAULT 0,
  `payment_amount` float NOT NULL DEFAULT 0,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_osm_accounts`
--

INSERT INTO `product_osm_accounts` (`id`, `osm_full_id`, `sales_purchase_status`, `customer_supplier_id`, `truck_no`, `truck_rate`, `totla_kg`, `total_bag`, `total_unit`, `subtotal`, `discount_amount`, `final_amount`, `payment_amount`, `create_date`) VALUES
(959, 'Sales-0120200101', 'Sales', 335, 'DMT-20-1570', 0, 18000, 360, 0, 547000, 0, 547000, 0, '2020-01-01 11:50:58'),
(960, 'Sales-0120200102', 'Sales', 350, 'Van', 0, 1000, 20, 0, 41000, 0, 41000, 0, '2020-01-01 11:52:14'),
(961, 'Sales-0120200103', 'Sales', 322, 'NULL', 0, 400, 8, 0, 13560, 0, 13560, 0, '2020-01-01 11:55:17'),
(962, 'Sales-0120200104', 'Sales', 332, 'NULL', 0, 400, 8, 0, 13560, 0, 13560, 0, '2020-01-01 11:56:02'),
(963, 'Sales-0120200105', 'Sales', 321, 'NULL', 0, 350, 7, 0, 11865, 0, 11865, 0, '2020-01-01 11:56:42'),
(964, 'Sales-0120200106', 'Sales', 330, 'NULL', 0, 1000, 20, 0, 32000, 0, 32000, 0, '2020-01-01 11:57:41'),
(965, 'Sales-0120200107', 'Sales', 319, 'NULL', 0, 500, 10, 0, 16000, 0, 16000, 0, '2020-01-01 11:58:17'),
(966, 'Sales-0120200108', 'Sales', 319, 'NULL', 0, 1100, 22, 0, 37400, 0, 37400, 0, '2020-01-01 11:59:28'),
(967, 'Sales-0120200109', 'Sales', 324, 'NULL', 0, 1000, 20, 0, 32000, 0, 32000, 0, '2020-01-01 12:00:52'),
(968, 'Sales-01202001010', 'Sales', 349, 'NULL', 0, 1000, 20, 0, 30000, 0, 30000, 0, '2020-01-01 12:01:32'),
(969, 'Sales-01202001011', 'Sales', 347, 'NULL', 0, 100, 2, 0, 3000, 0, 3000, 0, '2020-01-01 12:02:21'),
(970, 'Sales-01202001012', 'Sales', 320, 'NULL', 0, 500, 10, 0, 15500, 0, 15500, 0, '2020-01-01 12:02:59'),
(971, 'Sales-01202001013', 'Sales', 342, 'NULL', 0, 500, 10, 0, 15000, 0, 15000, 0, '2020-01-01 12:03:39'),
(972, 'Sales-01202002014', 'Sales', 328, 'NULL', 0, 1000, 20, 0, 32000, 0, 32000, 0, '2020-01-02 11:45:38'),
(973, 'Sales-01202002015', 'Sales', 323, 'NULL', 0, 1500, 30, 0, 45500, 0, 45500, 0, '2020-01-02 11:47:31'),
(974, 'Sales-01202002016', 'Sales', 334, 'NULL', 0, 2500, 50, 0, 75000, 0, 75000, 0, '2020-01-02 11:48:19'),
(975, 'Sales-01202002017', 'Sales', 318, 'NULL', 0, 500, 10, 0, 15000, 0, 15000, 0, '2020-01-02 11:49:15'),
(976, 'Sales-01202002018', 'Sales', 319, 'NULL', 0, 850, 17, 0, 27700, 0, 27700, 0, '2020-01-02 11:50:41'),
(977, 'Sales-01202002019', 'Sales', 325, 'NULL', 0, 100, 2, 0, 4100, 0, 4100, 0, '2020-01-02 11:51:34'),
(978, 'Sales-01202002020', 'Sales', 350, 'NULL', 0, 500, 10, 0, 20500, 0, 20500, 0, '2020-01-02 11:52:19'),
(979, 'Sales-01202002021', 'Sales', 341, 'NULL', 0, 1000, 20, 0, 36000, 0, 36000, 0, '2020-01-02 11:55:46'),
(980, 'Sales-01202002022', 'Sales', 320, 'NULL', 0, 500, 10, 0, 15500, 0, 15500, 0, '2020-01-02 11:56:29'),
(981, 'Sales-01202002023', 'Sales', 343, 'NULL', 0, 500, 10, 0, 15000, 0, 15000, 0, '2020-01-02 11:57:08'),
(982, 'Sales-01202002024', 'Sales', 335, 'DMT- 22-5658', 0, 18000, 360, 0, 541500, 0, 541500, 0, '2020-01-02 11:58:39'),
(983, 'Sales-01202002025', 'Sales', 322, 'NULL', 0, 500, 10, 0, 16950, 0, 16950, 0, '2020-01-02 12:14:17'),
(984, 'Sales-01202002026', 'Sales', 326, 'NULL', 0, 1000, 20, 0, 30000, 0, 30000, 0, '2020-01-02 12:15:54'),
(985, 'Sales-01202004027', 'Sales', 345, 'NULL', 0, 500, 10, 0, 15400, 0, 15400, 15400, '2020-01-04 12:04:06'),
(986, 'Sales-01202004028', 'Sales', 318, 'NULL', 0, 1000, 20, 0, 30000, 0, 30000, 0, '2020-01-04 12:05:47'),
(987, 'Sales-01202004029', 'Sales', 318, 'NULL', 0, 500, 10, 0, 15000, 0, 15000, 0, '2020-01-04 12:06:53'),
(988, 'Sales-01202004030', 'Sales', 327, 'NULL', 0, 500, 10, 0, 16000, 0, 16000, 0, '2020-01-04 12:08:03'),
(989, 'Sales-01202004031', 'Sales', 339, 'NULL', 0, 1500, 30, 0, 46500, 0, 46500, 0, '2020-01-04 12:08:49'),
(990, 'Sales-01202004032', 'Sales', 347, 'Malek Bazar', 0, 500, 10, 0, 20500, 0, 20500, 0, '2020-01-04 12:09:56'),
(991, 'Sales-01202004033', 'Sales', 325, 'NULL', 0, 600, 12, 0, 20340, 0, 20340, 0, '2020-01-04 12:10:49'),
(992, 'Sales-01202004034', 'Sales', 319, 'NULL', 0, 500, 10, 0, 16000, 0, 16000, 0, '2020-01-04 12:11:42'),
(993, 'Sales-01202004035', 'Sales', 342, 'NULL', 0, 1000, 20, 0, 30000, 0, 30000, 0, '2020-01-04 12:12:31'),
(994, 'Sales-01202004036', 'Sales', 332, 'NULL', 0, 500, 10, 0, 16950, 0, 16950, 0, '2020-01-04 12:13:39'),
(995, 'Sales-01202004037', 'Sales', 329, 'NULL', 0, 500, 10, 0, 15000, 0, 15000, 0, '2020-01-04 12:14:53'),
(996, 'Sales-01202004038', 'Sales', 335, 'NULL', 0, 1000, 20, 0, 30000, 0, 30000, 0, '2020-01-04 12:16:01'),
(997, 'Sales-01202004039', 'Sales', 336, 'NULL', 0, 2000, 40, 0, 60000, 0, 60000, 0, '2020-01-04 12:17:09'),
(998, 'Sales-01202004040', 'Sales', 323, 'Baki Faruk Grower 10', 0, 3500, 70, 0, 105250, 0, 105250, 0, '2020-01-04 12:18:24'),
(999, 'Sales-01202004041', 'Sales', 335, 'NULL', 0, 1500, 30, 0, 45000, 0, 45000, 0, '2020-01-04 12:19:45'),
(1000, 'Sales-01202004042', 'Sales', 320, 'NULL', 0, 1000, 20, 0, 31000, 0, 31000, 0, '2020-01-04 12:20:31'),
(1001, 'Sales-01202004043', 'Sales', 343, 'NULL', 0, 550, 11, 0, 16500, 0, 16500, 0, '2020-01-04 12:21:01'),
(1002, 'Sales-01202004044', 'Sales', 319, 'NULL', 0, 500, 10, 0, 16000, 0, 16000, 0, '2020-01-04 12:21:44'),
(1003, 'Sales-01202004045', 'Sales', 347, 'NULL', 0, 100, 2, 0, 3000, 0, 3000, 0, '2020-01-04 12:22:40'),
(1004, 'Purchase-0120200501', 'Purchase', 19, 'Toly Babod 2 arik R 5 Tarik', 0, 4015, 73, 0, 90337.5, 0, 90337, 0, '2020-01-05 09:44:00'),
(1005, 'Sales-01202005046', 'Sales', 337, 'NULL', 0, 300, 6, 0, 9000, 0, 9000, 9000, '2020-01-05 11:17:26'),
(1006, 'Sales-01202005047', 'Sales', 323, 'NULL', 0, 2000, 40, 0, 60000, 0, 60000, 0, '2020-01-05 11:18:40'),
(1007, 'Sales-01202005048', 'Sales', 334, 'NULL', 0, 500, 10, 0, 16000, 0, 16000, 0, '2020-01-05 11:20:46'),
(1008, 'Sales-01202005049', 'Sales', 350, 'NULL', 0, 500, 10, 0, 20500, 0, 20500, 0, '2020-01-05 11:22:21'),
(1009, 'Sales-01202005050', 'Sales', 324, 'NULL', 0, 1000, 20, 0, 32000, 0, 32000, 0, '2020-01-05 11:24:26'),
(1010, 'Sales-01202005051', 'Sales', 334, 'NULL', 0, 2000, 40, 0, 60000, 0, 60000, 0, '2020-01-05 11:26:02'),
(1011, 'Sales-01202005052', 'Sales', 340, 'NULL', 0, 500, 10, 0, 20500, 0, 20500, 0, '2020-01-05 11:28:38'),
(1012, 'Sales-01202005053', 'Sales', 319, 'NULL', 0, 250, 5, 0, 8500, 0, 8500, 0, '2020-01-05 11:29:54'),
(1013, 'Sales-01202005054', 'Sales', 342, 'NULL', 0, 500, 10, 0, 15000, 0, 15000, 0, '2020-01-05 11:30:56'),
(1014, 'Sales-01202005055', 'Sales', 327, 'NULL', 0, 500, 10, 0, 16000, 0, 16000, 0, '2020-01-05 11:49:48'),
(1015, 'Sales-01202005056', 'Sales', 319, 'NULL', 0, 500, 10, 0, 16000, 0, 16000, 0, '2020-01-05 12:21:52'),
(1016, 'Sales-01202008057', 'Sales', 319, 'NULL', 0, 500, 10, 0, 16000, 0, 16000, 0, '2020-01-08 10:54:03'),
(1017, 'Sales-01202008058', 'Sales', 322, 'NULL', 0, 600, 12, 0, 20340, 0, 20340, 0, '2020-01-08 10:57:20'),
(1018, 'Sales-01202008059', 'Sales', 338, 'NULL', 0, 1000, 20, 0, 32000, 0, 32000, 0, '2020-01-08 11:00:14'),
(1019, 'Sales-01202008060', 'Sales', 334, 'NULL', 0, 500, 10, 0, 15000, 0, 15000, 0, '2020-01-08 11:01:19'),
(1020, 'Sales-01202008061', 'Sales', 323, 'NULL', 0, 1750, 35, 0, 52750, 0, 52750, 0, '2020-01-08 11:02:18'),
(1021, 'Sales-01202008062', 'Sales', 342, 'NULL', 0, 1000, 20, 0, 30000, 0, 30000, 0, '2020-01-08 11:03:13'),
(1022, 'Sales-01202008063', 'Sales', 340, 'NULL', 0, 500, 10, 0, 20500, 0, 20500, 0, '2020-01-08 11:04:50'),
(1023, 'Sales-01202008064', 'Sales', 330, 'NULL', 0, 1000, 20, 0, 32000, 0, 32000, 0, '2020-01-08 11:05:33'),
(1024, 'Sales-01202008065', 'Sales', 335, 'NULL', 0, 15000, 300, 0, 454500, 0, 454500, 0, '2020-01-08 11:06:47'),
(1025, 'Sales-01202008066', 'Sales', 347, 'NULL', 0, 100, 2, 0, 3000, 0, 3000, 3000, '2020-01-08 11:07:54'),
(1026, 'Sales-01202008067', 'Sales', 323, 'NULL', 0, 1000, 20, 0, 30250, 0, 30250, 0, '2020-01-08 11:08:41'),
(1027, 'Sales-01202008068', 'Sales', 318, 'NULL', 0, 1000, 20, 0, 30000, 0, 30000, 0, '2020-01-08 11:09:25'),
(1028, 'Sales-01202008069', 'Sales', 334, 'NULL', 0, 1150, 23, 0, 35400, 0, 35400, 0, '2020-01-08 11:10:23'),
(1029, 'Sales-01202008070', 'Sales', 341, 'NULL', 0, 1000, 20, 0, 36000, 0, 36000, 0, '2020-01-08 11:11:17'),
(1030, 'Sales-01202008071', 'Sales', 347, 'High Sorker', 0, 150, 3, 0, 4650, 0, 4650, 4650, '2020-01-08 11:12:07'),
(1031, 'Sales-01202008072', 'Sales', 320, 'NULL', 0, 1000, 20, 0, 31000, 0, 31000, 0, '2020-01-08 11:15:50'),
(1032, 'Sales-01202008073', 'Sales', 335, 'NULL', 0, 4000, 80, 0, 121000, 0, 121000, 0, '2020-01-08 11:17:35'),
(1033, 'Sales-01202008074', 'Sales', 334, 'NULL', 0, 2000, 40, 0, 60000, 0, 60000, 0, '2020-01-08 11:19:50'),
(1034, 'Sales-01202008075', 'Sales', 319, 'NULL', 0, 500, 10, 0, 16000, 0, 16000, 0, '2020-01-08 11:21:42'),
(1035, 'Sales-01202008076', 'Sales', 326, 'NULL', 0, 1000, 20, 0, 30000, 0, 30000, 0, '2020-01-08 11:22:24'),
(1036, 'Sales-01202008077', 'Sales', 323, 'NULL', 0, 2000, 40, 0, 60500, 0, 60500, 0, '2020-01-08 11:24:12'),
(1037, 'Sales-01202008078', 'Sales', 325, 'NULL', 0, 350, 7, 0, 11935, 0, 11935, 0, '2020-01-08 11:25:30'),
(1038, 'Sales-01202008079', 'Sales', 332, 'NULL', 0, 350, 7, 0, 11935, 0, 11935, 0, '2020-01-08 11:26:07'),
(1039, 'Sales-01202008080', 'Sales', 337, 'NULL', 0, 1000, 20, 0, 30000, 0, 30000, 0, '2020-01-08 11:27:25'),
(1040, 'Sales-01202008081', 'Sales', 342, 'NULL', 0, 1000, 20, 0, 31000, 0, 31000, 0, '2020-01-08 11:30:10'),
(1041, 'Sales-01202008082', 'Sales', 329, 'NULL', 0, 500, 10, 0, 15500, 0, 15500, 0, '2020-01-08 11:30:56'),
(1042, 'Sales-01202008083', 'Sales', 350, 'NULL', 0, 1000, 20, 0, 41000, 0, 41000, 0, '2020-01-08 11:40:08'),
(1043, 'Sales-01202008084', 'Sales', 348, 'NULL', 0, 1000, 20, 0, 30000, 0, 30000, 0, '2020-01-08 11:41:10'),
(1044, 'Sales-01202008085', 'Sales', 343, 'NULL', 0, 450, 9, 0, 13950, 0, 13950, 0, '2020-01-08 11:41:56'),
(1045, 'Sales-01202008086', 'Sales', 349, 'NULL', 0, 1000, 20, 0, 30000, 0, 30000, 0, '2020-01-08 11:42:33'),
(1046, 'Purchase-0120200902', 'Purchase', 23, 'NULL', 0, 2500, 70, 0, 225000, 0, 225000, 0, '2020-01-09 12:18:13'),
(1047, 'Purchase-0120201403', 'Purchase', 25, 'NULL', 0, 10, 10, 0, 6900, 0, 6900, 6900, '2020-01-14 10:44:16'),
(1048, 'Purchase-0120201404', 'Purchase', 25, 'NULL', 0, 30, 21, 0, 16915, 0, 16915, 16915, '2020-01-14 10:45:42'),
(1049, 'Purchase-0120201405', 'Purchase', 25, 'CNG ', 0, 100, 10, 0, 29000, 0, 29000, 0, '2020-01-14 10:47:48'),
(1050, 'Purchase-0120201406', 'Purchase', 26, 'NULL', 0, 250, 10, 0, 67500, 1250, 66250, 66250, '2020-01-14 11:06:13'),
(1051, 'Purchase-0120201807', 'Purchase', 26, 'NULL', 0, 500, 20, 0, 132500, 0, 132500, 0, '2020-01-18 07:55:26'),
(1052, 'Purchase-0120201808', 'Purchase', 27, 'NULL', 0, 800, 32, 0, 133250, 0, 133250, 0, '2020-01-18 08:29:44'),
(1053, 'Purchase-0120202609', 'Purchase', 24, 'NULL', 0, 2275, 91, 0, 405625, 0, 405625, 50000, '2020-01-26 05:39:32');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `pd_type_id` int(11) NOT NULL,
  `pd_type_name` varchar(80) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`pd_type_id`, `pd_type_name`) VALUES
(1, 'Finish Good Product'),
(2, 'Raw Materials Product');

-- --------------------------------------------------------

--
-- Stand-in structure for view `product_view`
-- (See below for the actual view)
--
CREATE TABLE `product_view` (
`product_id` int(11)
,`pd_code` varchar(30)
,`pd_name` varchar(80)
,`cat_name` varchar(80)
,`sub_cat_name` varchar(80)
,`pd_type` varchar(80)
,`status` varchar(30)
,`reg_date` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `report_customer_accounts`
-- (See below for the actual view)
--
CREATE TABLE `report_customer_accounts` (
`customer_id` int(11)
,`customer_code` int(11)
,`name` varchar(60)
,`total_amount` varbinary(23)
,`payment_amount` varbinary(23)
,`net_blance` varbinary(23)
,`acc_id` int(11)
,`accounts_name` varchar(100)
,`bank_name` varchar(80)
,`cheque_number` varchar(80)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `report_product_stock`
-- (See below for the actual view)
--
CREATE TABLE `report_product_stock` (
`product_id` int(11)
,`pd_code` varchar(30)
,`pd_name` varchar(80)
,`catagory_id` int(11)
,`cat_name` varchar(80)
,`pd_type` varchar(80)
,`stock_kg` double
,`stock_bag` double
,`bag_size` decimal(32,0)
,`unit_number` decimal(32,0)
,`total_kg` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `report_supplier_accounts`
-- (See below for the actual view)
--
CREATE TABLE `report_supplier_accounts` (
`id_supplier` int(10) unsigned
,`supplier_code` int(11)
,`name` varchar(64)
,`total_amount` varbinary(23)
,`payment_amount` varbinary(23)
,`net_blance` varbinary(23)
,`acc_id` int(11)
,`accounts_name` varchar(100)
,`bank_name` varchar(80)
,`cheque_number` varchar(80)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `sub_catagory_view`
-- (See below for the actual view)
--
CREATE TABLE `sub_catagory_view` (
`id_sub_catagory` int(11)
,`cat_name` varchar(80)
,`sub_cat_name` varchar(80)
,`status` varchar(30)
,`reg_date` timestamp
,`sub_cat_code` varchar(40)
);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_accounts`
--

CREATE TABLE `supplier_accounts` (
  `id` int(11) NOT NULL,
  `recipt_code` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `reperence_status` varchar(40) NOT NULL DEFAULT 'Payment',
  `ref_osm_full_id` varchar(50) NOT NULL,
  `total_amount` float NOT NULL DEFAULT 0,
  `payment_amount` float NOT NULL DEFAULT 0,
  `net_blance` float NOT NULL DEFAULT 0,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `accounts_id` int(11) NOT NULL,
  `bank_name` varchar(80) NOT NULL DEFAULT 'NULL',
  `cheque_number` varchar(80) DEFAULT NULL,
  `bkash_trans_id` varchar(40) DEFAULT NULL,
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_accounts`
--

INSERT INTO `supplier_accounts` (`id`, `recipt_code`, `supplier_id`, `reperence_status`, `ref_osm_full_id`, `total_amount`, `payment_amount`, `net_blance`, `create_date`, `accounts_id`, `bank_name`, `cheque_number`, `bkash_trans_id`, `remarks`) VALUES
(1, 1, 14, 'Payment', 'Abdul Based', 0, 50000, -50000, '2020-01-01 13:07:22', 1, '', '', NULL, 'Shohel'),
(2, 2, 22, 'Payment', 'IBS TT', 0, 245100, -245100, '2020-01-01 13:24:44', 1, '', '', NULL, 'Babu '),
(3, 3, 21, 'Payment', '02.01.19', 0, 50600, -50600, '2020-01-05 09:27:04', 1, '', '', NULL, 'Babu'),
(4, 4, 21, 'Payment', '04.01.19', 0, 50000, -100600, '2020-01-05 09:27:57', 1, '', '', NULL, 'babu'),
(5, 5, 15, 'Payment', 'Gaffar EnterPrices', 0, 567500, -567500, '2020-01-05 09:28:51', 1, '', '', NULL, 'TT'),
(6, 6, 17, 'Payment', 'Bhuapur', 0, 65000, -65000, '2020-01-05 09:29:32', 1, '', '', NULL, 'Likhon'),
(7, 7, 19, 'Purchase', 'Purchase-0120200501', 90337, 0, 90337, '2020-01-05 09:44:00', 4, '', '', '', NULL),
(8, 8, 22, 'Payment', 'v', 0, 911250, -1156350, '2020-01-05 15:00:03', 1, '', '', NULL, 'v'),
(9, 9, 23, 'Purchase', 'Purchase-0120200902', 225000, 0, 225000, '2020-01-09 12:18:13', 1, '', '', '', NULL),
(10, 10, 25, 'Purchase', 'Purchase-0120201403', 6900, 6900, 0, '2020-01-14 10:44:16', 1, '', '', '', NULL),
(11, 11, 25, 'Purchase', 'Purchase-0120201404', 16915, 16915, 0, '2020-01-14 10:45:42', 1, '', '', '', NULL),
(12, 12, 25, 'Purchase', 'Purchase-0120201405', 29000, 0, 29000, '2020-01-14 10:47:48', 1, '', '', '', NULL),
(13, 13, 26, 'Purchase', 'Purchase-0120201406', 66250, 66250, 0, '2020-01-14 11:06:13', 1, '', '', '', NULL),
(14, 14, 26, 'Purchase', 'Purchase-0120201807', 132500, 0, 132500, '2020-01-18 07:55:26', 1, '', '', '', NULL),
(15, 15, 27, 'Payment', 'Mamun', 0, 100000, -100000, '2020-01-18 08:00:44', 1, '', '', NULL, 'Babu 25000, Mastar Elenga 75000'),
(16, 16, 27, 'Purchase', 'Purchase-0120201808', 133250, 0, 33250, '2020-01-18 08:29:44', 1, '', '', '', NULL),
(17, 17, 26, 'Payment', 'Robiul', 0, 82500, 50000, '2020-01-19 11:48:28', 1, '', '', NULL, 'Nagot '),
(18, 18, 26, 'Payment', 'Robiul Vai', 0, 50000, 0, '2020-01-21 11:45:22', 1, '', '', NULL, 'Cash Depo '),
(19, 19, 24, 'Payment', 'Harun', 0, 50000, -50000, '2020-01-26 05:31:54', 1, '', '', NULL, 'Rasel To Harun Bhuapur Cash'),
(20, 20, 24, 'Purchase', 'Purchase-0120202609', 405625, 50000, 305625, '2020-01-26 05:39:32', 1, '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uom_bag_size`
--

CREATE TABLE `uom_bag_size` (
  `id` int(11) NOT NULL,
  `szie_unit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vg_employee`
--

CREATE TABLE `vg_employee` (
  `id_employee` int(10) UNSIGNED NOT NULL,
  `id_profile` varchar(60) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `joindate` timestamp NOT NULL DEFAULT current_timestamp(),
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `roule` varchar(10) NOT NULL DEFAULT 'User',
  `key_mail` varchar(40) NOT NULL,
  `images_up` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vg_employee`
--

INSERT INTO `vg_employee` (`id_employee`, `id_profile`, `lastname`, `firstname`, `email`, `passwd`, `joindate`, `active`, `roule`, `key_mail`, `images_up`) VALUES
(1, '1001', 'Sorker', 'Emon', 'emonsorker8@gmail.com', 'emon.sorker', '2020-01-01 04:31:06', 1, 'Supper', 'solaimanfeedsltd@gmail.com', './upload_image/EMPLOYEE/15778844619e1nrgh901h1nddo309uig6420.png'),
(2, 'sajib.png', 'Ahmed', 'Rasel ', 'admin', '12345678', '2016-03-07 04:33:09', 1, 'Admin', 'solaimanfeedsltd@gmail.com', './upload_image/EMPLOYEE/1461568819ommanlhhpumnvhgvolh7sij2t2.png');

-- --------------------------------------------------------

--
-- Table structure for table `vg_supplier`
--

CREATE TABLE `vg_supplier` (
  `id_supplier` int(10) UNSIGNED NOT NULL,
  `default_balance` float NOT NULL DEFAULT 0,
  `supplier_code` int(11) NOT NULL DEFAULT 0,
  `name` varchar(64) NOT NULL,
  `address` text DEFAULT NULL,
  `email_` varchar(50) DEFAULT NULL,
  `contact_number` varchar(15) DEFAULT NULL,
  `date_add` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_upd` datetime NOT NULL,
  `company_name` varchar(60) DEFAULT NULL,
  `images_up` text NOT NULL,
  `active` varchar(20) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vg_supplier`
--

INSERT INTO `vg_supplier` (`id_supplier`, `default_balance`, `supplier_code`, `name`, `address`, `email_`, `contact_number`, `date_add`, `date_upd`, `company_name`, `images_up`, `active`) VALUES
(14, 3937980, 1, 'Siraj Diler', 'Gobindashi, Bhuapur, Tangail', 'No', '01718696000', '2019-12-31 14:23:55', '0000-00-00 00:00:00', 'Bismilla Enterpris ', './upload_image/SUPPLIER/15784838652qrahd7ffke6u29svuubg2voa4.png', 'Active'),
(15, 3018520, 2, 'Md Uzzal Islam', 'Gobindashi, Bhuapur, Tangail', 'No', '01716752974', '2019-12-31 14:25:28', '0000-00-00 00:00:00', 'Mehedi Enterpries', './upload_image/SUPPLIER/default.png', 'Active'),
(16, 426627, 3, 'Md Sojib Miya', 'Burimari,Joshor,Bangladesh', 'No', '01745228748', '2019-12-31 14:28:22', '0000-00-00 00:00:00', 'Limistion', './upload_image/SUPPLIER/default.png', 'Active'),
(17, 495615, 4, 'Mostofa Khan ', 'Konabari,Gazipur,Dhaka', 'No', '01521238531', '2019-12-31 14:30:21', '0000-00-00 00:00:00', 'Mostofa Khan Bag', './upload_image/SUPPLIER/default.png', 'Active'),
(18, 860392, 5, 'Gold Aheg Agero', 'Gazipur, Dhaka', 'No', '01911624410', '2019-12-31 14:31:59', '0000-00-00 00:00:00', '', './upload_image/SUPPLIER/default.png', 'Active'),
(19, 933495, 6, 'Md Masud Rana', 'Siyalkhol,Bhuapur,Tangail', 'No', '01712470492', '2019-12-31 14:33:10', '0000-00-00 00:00:00', '', './upload_image/SUPPLIER/default.png', 'Active'),
(20, 132352, 7, 'Ma Abdul Khalek', 'Gobindashi, Bhuapur, Tangail', 'No', '01722003789', '2019-12-31 14:34:26', '0000-00-00 00:00:00', 'Jomuna Oil Mill', './upload_image/SUPPLIER/default.png', 'Active'),
(21, 180670, 8, 'Md Jolil Talukdar', 'Matikata,Nikrail,Bhuapur,Tangail', 'Na', '01726401146', '2019-12-31 14:35:30', '0000-00-00 00:00:00', '', './upload_image/SUPPLIER/default.png', 'Active'),
(22, 757060, 9, 'Tarek Bismilla Store', 'Manikgonj Dhaka', 'No', '01752472471', '2020-01-01 13:24:14', '0000-00-00 00:00:00', '', './upload_image/SUPPLIER/default.png', 'Active'),
(23, 197000, 10, 'Naafco Agrovet Ltd', 'Bandi,Meduary,Bhaluka ,Mymensingh', 'Na', '01770790638', '2020-01-09 11:35:26', '0000-00-00 00:00:00', '', './upload_image/SUPPLIER/default.png', 'Active'),
(24, 562975, 11, 'Century Agro Ltd.', 'West Panthpot, Unithght Lavel 7 Dhaka 1205', 'Na', '01755635275', '2020-01-11 05:56:02', '0000-00-00 00:00:00', 'Century Agro Ltd.', './upload_image/SUPPLIER/default.png', 'Active'),
(25, 120890, 12, 'PVF Agro Ltd', 'Bhuyapyr ,Tangail', 'Na', '01727948733', '2020-01-14 10:42:01', '0000-00-00 00:00:00', 'PVF Agro Ltd', './upload_image/SUPPLIER/default.png', 'Active'),
(26, 0, 13, 'Eon Agro Ltd', 'na', 'na', '01755521857', '2020-01-14 11:03:25', '0000-00-00 00:00:00', 'Eon Agro Ltd', './upload_image/SUPPLIER/default.png', 'Active'),
(27, 171610, 14, 'Square Limited', 'Na', 'Na', '0170075931', '2020-01-18 07:59:57', '0000-00-00 00:00:00', 'Square Ltd', './upload_image/SUPPLIER/default.png', 'Active'),
(28, 497034, 15, 'Renata Ltd', 'na', 'Na', '01847192647', '2020-01-18 10:22:34', '0000-00-00 00:00:00', 'Renata Ltd', './upload_image/SUPPLIER/default.png', 'Active');

-- --------------------------------------------------------

--
-- Structure for view `product_view`
--
DROP TABLE IF EXISTS `product_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`codingav`@`localhost` SQL SECURITY DEFINER VIEW `product_view`  AS  (select `product`.`product_id` AS `product_id`,`product`.`pd_code` AS `pd_code`,`product`.`pd_name` AS `pd_name`,ifnull(`catagory`.`cat_name`,'Have No Catagory') AS `cat_name`,ifnull(`catagory_sub`.`sub_cat_name`,'Have No Sub Catagory') AS `sub_cat_name`,`product`.`pd_type` AS `pd_type`,`product`.`status` AS `status`,`product`.`reg_date` AS `reg_date` from ((`product` left join `catagory` on(`product`.`catagory_id` = `catagory`.`id_catagory`)) left join `catagory_sub` on(`product`.`sub_catagory_id` = `catagory_sub`.`id_sub_catagory`))) ;

-- --------------------------------------------------------

--
-- Structure for view `report_customer_accounts`
--
DROP TABLE IF EXISTS `report_customer_accounts`;

CREATE ALGORITHM=UNDEFINED DEFINER=`codingav`@`localhost` SQL SECURITY DEFINER VIEW `report_customer_accounts`  AS  (select `customer`.`customer_id` AS `customer_id`,`customer`.`customer_code` AS `customer_code`,`customer`.`name` AS `name`,ifnull(sum(`customer_accounts`.`total_amount`),'0') AS `total_amount`,ifnull(sum(`customer_accounts`.`payment_amount`),'0') AS `payment_amount`,ifnull(sum(`customer_accounts`.`total_amount` - `customer_accounts`.`payment_amount`),'0') AS `net_blance`,`accounts_name`.`acc_id` AS `acc_id`,`accounts_name`.`accounts_name` AS `accounts_name`,`customer_accounts`.`bank_name` AS `bank_name`,`customer_accounts`.`cheque_number` AS `cheque_number` from ((`customer` join `customer_accounts` on(`customer`.`customer_id` = `customer_accounts`.`customer_id`)) join `accounts_name` on(`customer_accounts`.`accounts_id` = `accounts_name`.`acc_id`)) group by `customer`.`customer_id`) ;

-- --------------------------------------------------------

--
-- Structure for view `report_product_stock`
--
DROP TABLE IF EXISTS `report_product_stock`;

CREATE ALGORITHM=UNDEFINED DEFINER=`codingav`@`localhost` SQL SECURITY DEFINER VIEW `report_product_stock`  AS  (select `product`.`product_id` AS `product_id`,`product`.`pd_code` AS `pd_code`,`product`.`pd_name` AS `pd_name`,`product`.`catagory_id` AS `catagory_id`,`catagory`.`cat_name` AS `cat_name`,`product`.`pd_type` AS `pd_type`,sum(`product_accounts`.`stock_kg`) AS `stock_kg`,sum(`product_accounts`.`stock_bag`) AS `stock_bag`,sum(`product_accounts`.`bag_size`) AS `bag_size`,sum(`product_accounts`.`unit_number`) AS `unit_number`,sum(`product_accounts`.`total_kg`) AS `total_kg` from ((`product_accounts` join `product` on(`product_accounts`.`pd_id` = `product`.`product_id`)) join `catagory` on(`product`.`catagory_id` = `catagory`.`id_catagory`)) group by `product_accounts`.`pd_id`) ;

-- --------------------------------------------------------

--
-- Structure for view `report_supplier_accounts`
--
DROP TABLE IF EXISTS `report_supplier_accounts`;

CREATE ALGORITHM=UNDEFINED DEFINER=`codingav`@`localhost` SQL SECURITY DEFINER VIEW `report_supplier_accounts`  AS  (select `vg_supplier`.`id_supplier` AS `id_supplier`,`vg_supplier`.`supplier_code` AS `supplier_code`,`vg_supplier`.`name` AS `name`,ifnull(sum(`supplier_accounts`.`total_amount`),'0') AS `total_amount`,ifnull(sum(`supplier_accounts`.`payment_amount`),'0') AS `payment_amount`,ifnull(sum(`supplier_accounts`.`total_amount` - `supplier_accounts`.`payment_amount`),'0') AS `net_blance`,`accounts_name`.`acc_id` AS `acc_id`,`accounts_name`.`accounts_name` AS `accounts_name`,`supplier_accounts`.`bank_name` AS `bank_name`,`supplier_accounts`.`cheque_number` AS `cheque_number` from ((`vg_supplier` join `supplier_accounts` on(`vg_supplier`.`id_supplier` = `supplier_accounts`.`supplier_id`)) join `accounts_name` on(`supplier_accounts`.`accounts_id` = `accounts_name`.`acc_id`)) group by `vg_supplier`.`id_supplier`) ;

-- --------------------------------------------------------

--
-- Structure for view `sub_catagory_view`
--
DROP TABLE IF EXISTS `sub_catagory_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`codingav`@`localhost` SQL SECURITY DEFINER VIEW `sub_catagory_view`  AS  (select `catagory_sub`.`id_sub_catagory` AS `id_sub_catagory`,ifnull(`catagory`.`cat_name`,'Have No Catagory') AS `cat_name`,`catagory_sub`.`sub_cat_name` AS `sub_cat_name`,`catagory_sub`.`status` AS `status`,`catagory_sub`.`reg_date` AS `reg_date`,`catagory_sub`.`sub_cat_code` AS `sub_cat_code` from (`catagory_sub` left join `catagory` on(`catagory_sub`.`catagory_id` = `catagory`.`id_catagory`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_name`
--
ALTER TABLE `accounts_name`
  ADD PRIMARY KEY (`acc_id`);

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`id_catagory`);

--
-- Indexes for table `catagory_sub`
--
ALTER TABLE `catagory_sub`
  ADD PRIMARY KEY (`id_sub_catagory`),
  ADD KEY `catagory_id` (`catagory_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_accounts`
--
ALTER TABLE `customer_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `catagory_id` (`catagory_id`);

--
-- Indexes for table `product_accounts`
--
ALTER TABLE `product_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pd_id` (`pd_id`);

--
-- Indexes for table `product_osm_accounts`
--
ALTER TABLE `product_osm_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_supplier_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`pd_type_id`);

--
-- Indexes for table `supplier_accounts`
--
ALTER TABLE `supplier_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uom_bag_size`
--
ALTER TABLE `uom_bag_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vg_employee`
--
ALTER TABLE `vg_employee`
  ADD PRIMARY KEY (`id_employee`),
  ADD KEY `employee_login` (`email`,`passwd`),
  ADD KEY `id_employee_passwd` (`id_employee`,`passwd`),
  ADD KEY `id_profile` (`id_profile`);

--
-- Indexes for table `vg_supplier`
--
ALTER TABLE `vg_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_name`
--
ALTER TABLE `accounts_name`
  MODIFY `acc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `id_catagory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `catagory_sub`
--
ALTER TABLE `catagory_sub`
  MODIFY `id_sub_catagory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

--
-- AUTO_INCREMENT for table `customer_accounts`
--
ALTER TABLE `customer_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1428;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `product_accounts`
--
ALTER TABLE `product_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1325;

--
-- AUTO_INCREMENT for table `product_osm_accounts`
--
ALTER TABLE `product_osm_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1054;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `pd_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supplier_accounts`
--
ALTER TABLE `supplier_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `uom_bag_size`
--
ALTER TABLE `uom_bag_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vg_employee`
--
ALTER TABLE `vg_employee`
  MODIFY `id_employee` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vg_supplier`
--
ALTER TABLE `vg_supplier`
  MODIFY `id_supplier` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `catagory_sub`
--
ALTER TABLE `catagory_sub`
  ADD CONSTRAINT `catagory_sub_ibfk_1` FOREIGN KEY (`catagory_id`) REFERENCES `catagory` (`id_catagory`) ON DELETE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`catagory_id`) REFERENCES `catagory` (`id_catagory`) ON DELETE CASCADE;

--
-- Constraints for table `product_accounts`
--
ALTER TABLE `product_accounts`
  ADD CONSTRAINT `product_accounts_ibfk_1` FOREIGN KEY (`pd_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
