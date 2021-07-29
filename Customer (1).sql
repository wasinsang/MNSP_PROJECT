-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 19, 2021 at 03:49 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Customer`
--

-- --------------------------------------------------------

--
-- Table structure for table `BCP`
--

CREATE TABLE `BCP` (
  `Num_ID` int(11) NOT NULL,
  `Customer_Name` varchar(100) NOT NULL,
  `Start_Date` varchar(50) NOT NULL,
  `End_Date` varchar(50) NOT NULL,
  `PM_Name` varchar(50) NOT NULL,
  `Sale_Name` varchar(50) NOT NULL,
  `Pre_Sale` varchar(50) NOT NULL,
  `Service` varchar(100) NOT NULL,
  `SO_Num` varchar(100) NOT NULL,
  `SO_File` varchar(100) NOT NULL,
  `Customer_info` varchar(255) NOT NULL,
  `Customer_id` varchar(100) NOT NULL,
  `SO_Ter` varchar(255) DEFAULT NULL,
  `Critical` int(11) NOT NULL,
  `Status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BCP`
--

INSERT INTO `BCP` (`Num_ID`, `Customer_Name`, `Start_Date`, `End_Date`, `PM_Name`, `Sale_Name`, `Pre_Sale`, `Service`, `SO_Num`, `SO_File`, `Customer_info`, `Customer_id`, `SO_Ter`, `Critical`, `Status`) VALUES
(1, 'name', '2021-03-31', '2021-07-01', 'ภาณุพงศ์ กวดกิจการ (เจมส์)', 'wasin', 'wasdw', 'wasin', 'BCPTest', '../project/Uploadfile/SO_File/953277992.JPG', 'fsgdhfg33', 'name', '', 0, 'in progress');

-- --------------------------------------------------------


--
-- Table structure for table `forum_BCP`
--

CREATE TABLE `forum_BCP` (
  `FR_ID` int(15) NOT NULL,
  `Num_ID` int(10) NOT NULL,
  `Date_Time` varchar(40) NOT NULL,
  `Message_Log` text NOT NULL,
  `Name_Log` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `forum_mnsp`
--

CREATE TABLE `forum_mnsp` (
  `FR_ID` int(15) NOT NULL,
  `Num_ID` int(10) NOT NULL,
  `Date_Time` varchar(40) NOT NULL,
  `Message_Log` text NOT NULL,
  `Name_Log` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `forum_pm`
--


CREATE TABLE `forum_Report` (
  `FR_ID` int(15) NOT NULL,
  `Num_ID` int(10) NOT NULL,
  `Date_Time` varchar(40) NOT NULL,
  `Message_Log` text NOT NULL,
  `Name_Log` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mnsp`
--

CREATE TABLE `mnsp` (
  `Num_ID` int(11) NOT NULL,
  `Customer_Name` varchar(200) NOT NULL,
  `PM_Name` varchar(50) DEFAULT NULL,
  `Sale_Name` varchar(50) DEFAULT NULL,
  `Pre_Sale` varchar(50) DEFAULT NULL,
  `Diagram` varchar(100) DEFAULT NULL,
  `Monitor` varchar(100) DEFAULT NULL,
  `Service` varchar(100) DEFAULT NULL,
  `SO_Num` varchar(100) DEFAULT NULL,
  `SO_File` varchar(100) DEFAULT NULL,
  `Start_Date` varchar(100) DEFAULT NULL,
  `End_Date` varchar(100) DEFAULT NULL,
  `Customer_info` varchar(255) DEFAULT NULL,
  `Customer_id` varchar(100) DEFAULT NULL,
  `SO_Ter` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Critical` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mnsp`
--

INSERT INTO `mnsp` (`Num_ID`, `Customer_Name`, `PM_Name`, `Sale_Name`, `Pre_Sale`, `Diagram`, `Monitor`, `Service`, `SO_Num`, `SO_File`, `Start_Date`, `End_Date`, `Customer_info`, `Customer_id`, `SO_Ter`, `Status`, `Critical`) VALUES
(1, 'สำนักงานคณะกรรมการข้าราชการครูและบุคลากรทางการศึกษา (ก.ค.ศ.)', 'มัณฑนา ภูครองทุ่ง (เหมียว)', 'นายชัยวัฒน์ โฉมศรี (ไฮโล)', 'นายจักริน เชาวเดชาวงศ์ (อาร์ม)', '../project/Uploadfile/Diagram/20210418Diagram1291518348.JPG', '', 'vFW NSX + Flexpod Cloud 6 VM + S3 Storage(Public)', 'SO02-20200700034', '../project/Uploadfile/SO_File/20210418SO_File2009985649.JPG', '2020-07-01', '2020-09-30', NULL, 'C02-000102', '../project/Uploadfile/SO_Ter/20210418SO_Ter165002000.JPG', 'Expire', 0),
(2, 'บริษัท เบอร์เกอร์ (ประเทศไทย) จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200800425', NULL, NULL, NULL, NULL, '7814', NULL, NULL, 0),
(3, 'บริษัท ทรีดีเอส อินเตอร์แอคทีฟ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201100253', NULL, NULL, NULL, NULL, '24411', NULL, NULL, 0),
(4, '724 มาร์เก็ต บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200500565', NULL, NULL, NULL, NULL, '21432', NULL, NULL, 0),
(5, 'อาปิโก ไฮเทค บมจ.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200329', NULL, NULL, NULL, NULL, '18342', NULL, NULL, 0),
(6, 'แอ๊บโซลูท คลีน เอ็นเนอร์จี้ บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100643-SO02-20200800503', NULL, NULL, NULL, NULL, '22013', NULL, NULL, 0),
(7, 'กลุ่มแอดวานซ์ รีเสิร์ช บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201200044', NULL, NULL, NULL, NULL, '15668', NULL, NULL, 0),
(8, 'แอดไวซ์ ไอที อินฟินิท จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14367', NULL, NULL, 0),
(9, 'เอจีเอสเอส บจก. (Project : ONE)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200700092', NULL, NULL, NULL, NULL, '23264', NULL, NULL, 0),
(10, 'เอ.ไอ.อินดัสตรี้ บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'BOI-20180901-0253 REV2', NULL, NULL, NULL, NULL, '15426', NULL, NULL, 0),
(11, 'บริษัท ไอร่า แอสเซท แมเนจเมนท์ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201200735Rev.1', NULL, NULL, NULL, NULL, '24886', NULL, NULL, 0),
(12, 'ไอร่า แฟคตอริ่ง บมจ.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100574', NULL, NULL, NULL, NULL, '15644', NULL, NULL, 0),
(13, 'ไอร่า ลีสซิ่ง บมจ.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO01-20201100205', NULL, NULL, NULL, NULL, '19248', NULL, NULL, 0),
(14, 'บริษัท ไอชิน ทากาโอกะ เอเชีย จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14325', NULL, NULL, 0),
(15, 'เอคิส ซอฟท์ บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200700033', NULL, NULL, NULL, NULL, '26336', NULL, NULL, 0),
(16, 'บริษัท อัลติจูด ดีเวลลอปเม้นท์ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200700302', NULL, NULL, NULL, NULL, '21463', NULL, NULL, 0),
(17, 'เอนนี่แวร์ ทู โก บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200300690', NULL, NULL, NULL, NULL, '15567', NULL, NULL, 0),
(18, 'บริษัท เอเชีย แค็บ แอพพลิเคชั่น คอนซัลติ้ง จำกัด (Project : Taxi App)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200200406', NULL, NULL, NULL, NULL, 'C01-001428', NULL, NULL, 0),
(19, 'บริษัท เอเชีย แค็บ จำกัด (Project : ERP)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210300377', NULL, NULL, NULL, NULL, '31587', NULL, NULL, 0),
(20, 'เอทีเอ แคสติ้ง เทคโนโลยี บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201200712', NULL, NULL, NULL, NULL, '25350', NULL, NULL, 0),
(21, 'บริษัท บี-52 แคปปิตอล จำกัด (มหาชน)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200700043', NULL, NULL, NULL, NULL, '14789', NULL, NULL, 0),
(22, 'บี เซอร์เคิล บจก.(Project: ทิพยประกันชีวิต)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '23462', NULL, NULL, 0),
(23, 'บี เซอร์เคิล บจก. (Project: Summit Showa)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210300456', NULL, NULL, NULL, NULL, '23462', NULL, NULL, 0),
(24, 'บริษัท บางกอกอินดัสเตรียลบอยเลอร์ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201200871', NULL, NULL, NULL, NULL, '19669', NULL, NULL, 0),
(25, 'ธนาคารแห่งประเทศไทย', NULL, NULL, NULL, NULL, NULL, NULL, 'SO01-20210100138', NULL, NULL, NULL, NULL, '1830', NULL, NULL, 0),
(26, 'เบสท์ โกลบอล โลจิสติกส์ (ประเทศไทย) บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201000218', NULL, NULL, NULL, NULL, 'C01-000217', NULL, NULL, 0),
(27, 'บิ๊กทีมเวิร์ค บจก. (Project : Deer Dee Trading)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200600130', NULL, NULL, NULL, NULL, '15722', NULL, NULL, 0),
(28, 'บรรจุภัณฑ์เพื่อสิ่งแวดล้อม บมจ.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201100102', NULL, NULL, NULL, NULL, '16378', NULL, NULL, 0),
(29, 'ไบโอแลป บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201100142', NULL, NULL, NULL, NULL, '18346', NULL, NULL, 0),
(30, 'บีแอลซีพี เพาเวอร์ บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO01-20190500121', NULL, NULL, NULL, NULL, '17166', NULL, NULL, 0),
(31, 'บีทีเอส กรุ๊ป โฮลดิ้งส์ บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200600530', NULL, NULL, NULL, NULL, '15213', NULL, NULL, 0),
(32, 'บริษัท โรงงานน้ำตาลบุรีรัมย์ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100028', NULL, NULL, NULL, NULL, 'C01-001455', NULL, NULL, 0),
(33, 'บิสซิเนส บูลเลทีน เซอร์วิส บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200700078', NULL, NULL, NULL, NULL, '17776', NULL, NULL, 0),
(34, 'บริษัท ซี.พี.แลนด์ จำกัด (มหาชน)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201200026', NULL, NULL, NULL, NULL, '17081', NULL, NULL, 0),
(35, 'แคปปิตัลซีเรียลส์ บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201100095', NULL, NULL, NULL, NULL, '24077', NULL, NULL, 0),
(36, 'คาร์พิเดียม คอนซัลติ้ง บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '23673', NULL, NULL, 0),
(37, 'จันวาณิชย์ บจก. (หนังสือเดินทางต่างประเทศ_กงศุล)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12305', NULL, NULL, 0),
(38, 'บริษัท จันวาณิชย์ จำกัด (Project กสทช.)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12305', NULL, NULL, 0),
(39, 'จันวาณิชย์ ซีเคียวริตี้ พริ้นท์ติ้ง บจก. (กรมสรรพกรณ์)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19780', NULL, NULL, 0),
(40, 'จันวาณิชย์ ซีเคียวริตี้ พริ้นท์ติ้ง บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19780', NULL, NULL, 0),
(41, 'เคออส ธีโอรี่ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '33296', NULL, NULL, 0),
(42, 'โชติธนวัฒน์ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200200372', NULL, NULL, NULL, NULL, '22466', NULL, NULL, 0),
(43, 'โชคชัยพิบูล บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200500134', NULL, NULL, NULL, NULL, '23358', NULL, NULL, 0),
(44, 'ซีจีเอส ซีไอเอ็มบี (ประเทศไทย) บจก. (Project : Node)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201100237', NULL, NULL, NULL, NULL, '8983', NULL, NULL, 0),
(45, 'คอมเซเว่น บมจ.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20720', NULL, NULL, 0),
(46, 'โคแมนชี่ อินเตอร์เนชั่นแนล', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210300314', NULL, NULL, NULL, NULL, '18968', NULL, NULL, 0),
(47, 'บริษัท คอสม่า โซลูชั่น จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201100159', NULL, NULL, NULL, NULL, '16276', NULL, NULL, 0),
(48, 'บริษัท ซีอาร์ซี ไทวัสดุ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210300182', NULL, NULL, NULL, NULL, '17840', NULL, NULL, 0),
(49, 'บริษัท ดี โซลูชั่น ดอท คอม จำกัด [Project สำนักงานเลขาธิการนายกรัฐมนตรี]', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20190900309', NULL, NULL, NULL, NULL, '22056', NULL, 'Expire', 0),
(50, 'ดี.ที.ซี เอ็นเตอร์ไพรซ์ บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO01-20200400404', NULL, NULL, NULL, NULL, '7715', NULL, NULL, 0),
(51, 'บริษัท ไดชิน จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO01-20190500008', NULL, NULL, NULL, NULL, '15915', NULL, NULL, 0),
(52, 'กรมอุทยานแห่งชาติ สัตว์ป่า และพันธุ์พืช', NULL, NULL, NULL, NULL, NULL, NULL, 'SO01-20201000074', NULL, NULL, NULL, NULL, '23109', NULL, NULL, 0),
(53, 'ทิพยประกันภัย บมจ.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200900092', NULL, NULL, NULL, NULL, '1807', NULL, NULL, 0),
(54, 'บริษัท ทิพยประกันชีวิต จํากัด (มหาชน)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201000325', NULL, NULL, NULL, NULL, '14305', NULL, NULL, 0),
(55, 'บริษัท ดีเอชแอล เอ๊กซ์เพรส อินเตอร์เนชั่นแนล (ประเทศไทย) จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200300720', NULL, NULL, NULL, NULL, '16675', NULL, NULL, 0),
(56, 'ดีเอชแอล ซัพพลายเชน (ประเทศไทย) บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO01-20201000258', NULL, NULL, NULL, NULL, '20403', NULL, NULL, 0),
(57, 'ดูทีวี มีเดีย จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16098', NULL, NULL, 0),
(58, 'ดีทีจีโอ คอร์ปอเรชั่น บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210300209', NULL, NULL, NULL, NULL, '16328', NULL, NULL, 0),
(59, 'ดั๊กคิง บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201200673', NULL, NULL, NULL, NULL, '21941', NULL, NULL, 0),
(60, 'อีสเทอร์น สตาร์ เรียล เอสเตท บมจ.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100661', NULL, NULL, NULL, NULL, '12921', NULL, NULL, 0),
(61, 'บริษัท อีบาวเทค (ประเทศไทย) จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20191100144', NULL, NULL, NULL, NULL, '15739', NULL, NULL, 0),
(62, 'อีคาร์ทสตูดิโอ', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201100438', NULL, NULL, NULL, NULL, '15651', NULL, NULL, 0),
(63, 'บริษัท เอ็มไพร์ วิลล่า เมดิก้า จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO01-20200600048', NULL, NULL, NULL, NULL, '23786', NULL, NULL, 0),
(64, 'อีริคสัน (ประเทศไทย) บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210300018', NULL, NULL, NULL, NULL, '14898', NULL, NULL, 0),
(65, 'ยูเรกา ดีไซน์ บมจ.', NULL, NULL, NULL, NULL, NULL, NULL, 'BOI-20190201-0194', NULL, NULL, NULL, NULL, '28343', NULL, NULL, 0),
(66, 'บริษัท อีฟ แอนด์ บอย จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200064', NULL, NULL, NULL, NULL, '20698', NULL, NULL, 0),
(67, 'อีเว้นท์ไทย บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'BOI-20180901-0237', NULL, NULL, NULL, NULL, '17300', NULL, NULL, 0),
(68, 'เอ็กซ์เซกคิวทีฟ ซีนีม่า คอร์ปอเรชั่น บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200561', NULL, NULL, NULL, NULL, '27874', NULL, NULL, 0),
(69, 'ฟอลคอน ประกันภัย', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200600510', NULL, NULL, NULL, NULL, '14728', NULL, NULL, 0),
(70, 'บริษัท เฟรเกรนท์ พร็อพเพอร์ตี้ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200900432', NULL, NULL, NULL, NULL, '22924', NULL, NULL, 0),
(71, 'จี แคปปิตอล บมจ.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201000322-SO01-20200400449', NULL, NULL, NULL, NULL, '11542', NULL, NULL, 0),
(72, 'จีเอเบิล บจก. [Project : IPST]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14423', NULL, NULL, 0),
(73, 'เก็ต ออน เทคโนโลยี [End User: บจก.เซฟดรัก เซ็นเตอร์] (project : POS)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15104', NULL, NULL, 0),
(74, 'เก็ต ออน เทคโนโลยี บจก. (โปรเจค IC)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15104', NULL, NULL, 0),
(75, 'เก็ต ออน เทคโนโลยี บจก.( Project : Toyota Leasing)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15104', NULL, NULL, 0),
(76, 'องค์การเภสัชกรรม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4412', NULL, NULL, 0),
(77, 'องค์การเภสัชกรรม - เมอร์ริเออร์ ชีววัตถุ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15145', NULL, NULL, 0),
(78, 'ธนาคารออมสิน (Project Link AND Blockchain)Link [CID : VPN10048] และ [CID : ME23795]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1227', NULL, NULL, 0),
(79, 'แกรนด์ เอ็มโพเรี่ยม โลจิสติกส์ บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210300489', NULL, NULL, NULL, NULL, '25326', NULL, NULL, 0),
(80, 'แกรนด์ โฮมมาร์ท บจก.', NULL, NULL, NULL, NULL, NULL, NULL, '20180801-0210', NULL, NULL, NULL, NULL, '14846', NULL, NULL, 0),
(81, 'เอลล์บา บางกอก บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22685', NULL, NULL, 0),
(82, 'ฮิตาชิ ทรานสปอร์ต ซิสเต็ม แวนเทค (ประเทศไทย)บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17329', NULL, NULL, 0),
(83, 'ฮิวแมนิก้า บมจ.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15762', NULL, NULL, 0),
(84, 'บริษัท ไอคอม อเวนิว (ไทยแลนด์) จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21977', NULL, NULL, 0),
(85, 'อินเด็กซ์ อินเตอร์เนชั่นแนล กรุ๊ป บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200327', NULL, NULL, NULL, NULL, '18762', NULL, NULL, 0),
(86, 'บริษัท อินโนเทล จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'C01-001713', NULL, NULL, 0),
(87, 'บริษัท อินติเกรตเต็ด รีเทล แมเนจเม้นท์ คอนซัลติ้ง จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'C01-000168', NULL, NULL, 0),
(88, 'ธนาคารอิสลามแห่งประเทศไทย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14358', NULL, NULL, 0),
(89, 'ไอเอสเอส คอนซัลติ้ง (ประเทศไทย) บจก. (Project : บางจาก รีเทล)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14042', NULL, NULL, 0),
(90, 'ไอเอสเอส คอนซัลติ้ง (ประเทศไทย) บจก.(โปรเจค เคมีแมน บมจ.)', NULL, NULL, NULL, NULL, NULL, NULL, '20180801-0909 REV.3', NULL, NULL, NULL, NULL, '14042', NULL, NULL, 0),
(91, 'ไอเอสเอส คอนซัลติ้ง (ประเทศไทย) End User : Thai N.K. Plastic Co.', NULL, '0', NULL, NULL, NULL, NULL, 'Ltd.', NULL, NULL, NULL, NULL, '14042', NULL, NULL, NULL),
(92, 'เจคูบด์ บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21443', NULL, NULL, 0),
(93, 'เจ.ไอ.บี.คอมพิวเตอร์ กรุ๊ป บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100679', NULL, NULL, NULL, NULL, '14375', NULL, NULL, 0),
(94, 'บริษัท จิ๊กซอว์ อิงลิช จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201100101', NULL, NULL, NULL, NULL, '27137', NULL, NULL, 0),
(95, 'เจเอสเอสอาร์ อ๊อกชั่น บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16591', NULL, NULL, 0),
(96, 'ยูบิลลี่ เอ็นเตอร์ไพรส์ บมจ.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100600', NULL, NULL, NULL, NULL, '16668', NULL, NULL, 0),
(97, 'บริษัท เจดับเบิ้ลยูดี เอเชีย จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'C01-000119', NULL, NULL, 0),
(98, 'เค-ซอฟท์แวร์ บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19920', NULL, NULL, 0),
(99, 'เค.อี.รีเทล บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18641', NULL, NULL, 0),
(100, 'เค.ดับบลิว. เม็ททัล เวิร์ค จำกัด (มหาชน)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25898', NULL, NULL, 0),
(101, 'เคอรี่ สยามซีพอร์ต บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '24151', NULL, NULL, 0),
(102, 'ขนมแฟคตอรี่(1999) บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25059', NULL, NULL, 0),
(103, 'บริษัท น้ำตาลขอนแก่น จำกัด (มหาชน)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16235', NULL, NULL, 0),
(104, 'บริษัท เคพีเอ็มจีภูมิไชยที่ปรึกษาธุรกิจ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1045', NULL, NULL, 0),
(105, 'บริษัท เกรียงไทยวัฒนา กรุ๊ป', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100511', NULL, NULL, NULL, NULL, '14706', NULL, NULL, 0),
(106, 'บริษัท บัตรกรุงไทย จำกัด (มหาชน)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO01-20200200495', NULL, NULL, NULL, NULL, '1741', NULL, NULL, 0),
(107, 'หลักทรัพย์ เคที ซีมิโก้ บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14585', NULL, NULL, 0),
(108, 'บริษัท กำลังใจ โบรคเกอร์ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'C01-000271', NULL, NULL, 0),
(109, 'หลักทรัพย์จัดการกองทุน แลนด์ แอนด์ เฮ้าส์ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13441', NULL, NULL, 0),
(110, 'แลนด์ แอนด์ เฮ้าส์ บมจ.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13848', NULL, NULL, 0),
(111, 'บริษัท เลิร์นเทค จำกัด [Project: สคช.]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13815', NULL, NULL, 0),
(112, 'เลกาซี คอร์ป บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20564', NULL, NULL, 0),
(113, 'ธนาคารแลนด์ แอนด์ เฮ้าส์ บมจ.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13836', NULL, NULL, 0),
(114, 'เอ็มโฟกัส จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16500', NULL, NULL, 0),
(115, 'มูลนิธิมหามกุฎราชวิทยาลัยในพระบรมราชูปถัมภ์', NULL, NULL, NULL, NULL, NULL, NULL, 'SO01-20191000292', NULL, NULL, NULL, NULL, '25765', NULL, NULL, 0),
(116, 'แมงโก้ คอนซัลแตนท์ บจก. (Project:Contact Center)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15369', NULL, NULL, 0),
(117, 'บริษัท มนูญเพ็ทช็อป จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210300396', NULL, NULL, NULL, NULL, '23165', NULL, NULL, 0),
(118, 'บริษัท แมพพ้อยท์เอเชีย โลจีสติกส์ โซลูชั่นส์ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15745', NULL, NULL, 0),
(119, 'บริษัท แมพพ้อยท์เอเซีย (ประเทศไทย) จำกัด (มหาชน)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'C01-000268', NULL, NULL, 0),
(120, 'บริษัท มีเดียเพล็กซ์ อินเตอร์เนชั่นแนล จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200300799', NULL, NULL, NULL, NULL, '15091', NULL, NULL, 0),
(121, 'มีนาทรานสปอร์ต', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201200319', NULL, NULL, NULL, NULL, '15622', NULL, NULL, 0),
(122, 'เมอร์เคเทอร์บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210400124', NULL, NULL, NULL, NULL, '18988', NULL, NULL, 0),
(123, 'บริษัท เมทราไบต์ วัน จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21817', NULL, NULL, 0),
(124, 'บริษัท เอ็ม เอฟ อี ซี จำกัด (มหาชน)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15063', NULL, NULL, 0),
(125, 'ไมโครลิซซิ่ง บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '24044', NULL, NULL, 0),
(126, 'บริษัท เดอะ ไมเนอร์ ฟู้ด กรุ๊ป จำกัด (มหาชน)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200442', NULL, NULL, NULL, NULL, '18558', NULL, NULL, 0),
(127, 'ไมเนอร์ โฮเทล กรุ๊ป บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21093', NULL, NULL, 0),
(128, 'มิตซูบิชิ คอร์ปอเรชั่น แอลที (ไทยแลนด์) บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SCS-63000001954-Job Ref No 20180401-0600', NULL, NULL, NULL, NULL, '20373', NULL, NULL, 0),
(129, 'เอ็มเอสเอ็ม (ประเทศไทย) บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200511', NULL, NULL, NULL, NULL, '21997', NULL, NULL, 0),
(130, 'บริษัท เอ็มทีเอส ซอฟต์ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201100262', NULL, NULL, NULL, NULL, 'C01-001816', NULL, NULL, 0),
(131, 'เอ็มวี โซลูชั่น บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200900253', NULL, NULL, NULL, NULL, '15984', NULL, NULL, 0),
(132, 'สำนักงานนวัตกรรมแห่งชาติ (องค์การมหาชน)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '23777', NULL, 'Expire', 0),
(133, 'เอ็นอีซี คอร์ปอเรชั่น (ประเทศไทย) บจก. (โปรเจค ซุมิโตโม่)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15972', NULL, NULL, 0),
(134, 'เอ็นอีซี คอร์ปอเรชั่น (ประเทศไทย) บจก. @Project : ETDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15972', NULL, NULL, 0),
(135, 'เอ็นอีซี คอร์ปอเรชั่น (ประเทศไทย) บจก. [Project : กนอ.]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15972', NULL, NULL, 0),
(136, 'บริษัท นิวเทคโนโลยี่ อินฟอร์เมชั่น จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15250', NULL, NULL, 0),
(137, 'เน็กซัส ซิสเท็ม รีซอร์สเซส บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14754', NULL, NULL, 0),
(138, 'บริษัท ไนซ์คอล จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17983', NULL, NULL, 0),
(139, 'บริษัท นิมบัส จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'C01-000196', NULL, NULL, 0),
(140, 'ไนน์เว็บ บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200283', NULL, NULL, NULL, NULL, '1145', NULL, NULL, 0),
(141, 'นิปปอนเพนต์ (ประเทศไทย) บจก. (Site:พระประแดง)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13964', NULL, NULL, 0),
(142, 'บริษัท โนวา ออร์แกนิค จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100698', NULL, NULL, NULL, NULL, '19102', NULL, NULL, 0),
(143, 'ไทยสมุทรประกันชีวิต บมจ.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14232', NULL, NULL, 0),
(144, 'สำนักงานเศรษฐกิจอุตสาหกรรม (Project : JITAPA)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1678', NULL, 'Expire', 0),
(145, 'สำนักงานปลัดกระทรวงอุตสาหกรรม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1715', NULL, 'Expire', 0),
(146, 'หลักทรัพย์จัดการกองทุน วรรณ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12355', NULL, NULL, 0),
(147, 'บริษัท วัน ดีซี จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25438', NULL, NULL, 0),
(148, 'โอเอส เทเลคอมมูนิเคชั่น บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200200107', NULL, NULL, NULL, NULL, '31171', NULL, NULL, 0),
(149, 'บริษัท พ.ศ.ช.ผลิตภัณฑ์อาหาร จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'C01-000137', NULL, NULL, 0),
(150, 'บริษัท โพสเซฟี่ กรุ๊ป จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200200646', NULL, NULL, NULL, NULL, '15111', NULL, NULL, 0),
(151, 'พรีไซซ์ คอร์ปอเรชั่น จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14820', NULL, NULL, 0),
(152, 'ไพร์ม โรด กรุ๊ป บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200900439', NULL, NULL, NULL, NULL, '20647', NULL, NULL, 0),
(153, 'บริษัท ไพร์ม สตีล มิลล์ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22467', NULL, NULL, 0),
(154, 'หลักทรัพย์ที่ปรึกษาการลงทุน โพรบิทแอดไวซอรี่ บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '32225', NULL, NULL, 0),
(155, 'โปรเฟสชั่นแนล ไฟล์ลิ่ง เซอร์วิส บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14110', NULL, NULL, 0),
(156, 'บริษัท ท่าเรือราชาเฟอร์รี่จำกัด (มหาชน)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17131', NULL, NULL, 0),
(157, 'เรดดี้แพลนเน็ต บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12631', NULL, NULL, 0),
(158, 'บริษัท อาร์เอฟเอส จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201200089', NULL, NULL, NULL, NULL, '15994', NULL, NULL, 0),
(159, 'บริษัท ไร้ซ์แลนด์ อินเตอร์เนชั่นแนล จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200500208', NULL, NULL, NULL, NULL, '31235', NULL, NULL, 0),
(160, 'อมรปิ่นทิพย์ บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22751', NULL, NULL, 0),
(161, 'ไร้ท์ทันเน็ลลิ่ง บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16807', NULL, NULL, 0),
(162, 'บริษัท รุ่งกิจ เรียลเอสเตท จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '24504', NULL, NULL, 0),
(163, 'บริษัท สหวิริยาสตีลอินดัสตรี จำกัด (มหาชน)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100676', NULL, NULL, NULL, NULL, '14464', NULL, NULL, 0),
(164, 'แสงรุ่งกรุ๊ป บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18843', NULL, NULL, 0),
(165, 'หลักทรัพย์เอสบีไอ ไทย ออนไลน์ บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14692', NULL, NULL, 0),
(166, 'บริษัท เอส ซี เอ็ม เทคโนโลจีส์ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14259', NULL, NULL, 0),
(167, 'บริษัท เอส.ดี.ซี วัน จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25632', NULL, NULL, 0),
(168, 'เสนา วณิช ดีเวลลอปเม้นท์ บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201200021', NULL, NULL, NULL, NULL, '18390', NULL, NULL, 0),
(169, 'เอสเอชแอล คอร์ป บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '23027', NULL, NULL, 0),
(170, 'บริษัท สยาม ยีเอส แบตเตอรี่ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '24085', NULL, NULL, 0),
(171, 'สยามพารากอน ดีเวลลอปเม้นท์ บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13674', NULL, NULL, 0),
(172, 'สยามพิวรรธน์ บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11574', NULL, NULL, 0),
(173, 'บริษัท สยามเทคนิคคอนกรีต จำกัด (มหาชน)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20679', NULL, NULL, 0),
(174, 'สยามราชธานี บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16104', NULL, NULL, 0),
(175, 'โซนิค อินเตอร์เฟรท บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18225', NULL, NULL, 0),
(176, 'บริษัท ส. ขอนแก่นฟู้ดส์ จำกัด (มหาชน)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15098', NULL, NULL, 0),
(177, 'ศรีฟ้าโฟรเซนฟู้ด บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19762', NULL, NULL, 0),
(178, 'สตาร์360 (ประเทศไทย) บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15181', NULL, NULL, 0),
(179, 'ซัสโก้ บมจ.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16436', NULL, NULL, 0),
(180, 'ซินเนอร์เจติค ออโต้ เพอร์ฟอร์มานซ์ บมจ.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20201', NULL, NULL, 0),
(181, 'ที.ซี.ฟาร์มาซูติคอล อุตสาหกรรม บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14564', NULL, NULL, 0),
(182, 'บริษัทหลักทรัพย์จัดการกองทุน ทาลิส จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100743', NULL, NULL, NULL, NULL, '18569', NULL, NULL, 0),
(183, 'แทนเจอรีน บจก. [project : bangkokform]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14104', NULL, NULL, 0),
(184, 'บริษัท ทีบีเอ็น ซอฟต์แวร์ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '24768', NULL, NULL, 0),
(185, 'บริษัท ทีซีเอ็ม คอร์ปอเรชั่น จำกัด (มหาชน)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25305', NULL, NULL, 0),
(186, 'บริษัท ไทยดอทคอม จำกัด [Project : บริษัท ไทยเศรษฐกิจประกันภัย จำกัด (มหาชน)]', NULL, NULL, NULL, NULL, NULL, NULL, '20210200292', NULL, NULL, NULL, NULL, '19380', NULL, NULL, 0),
(187, 'สำนักงานกองทุนสนับสนุนการสร้างเสริมสุขภาพ (สสส.)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15497', NULL, 'Expire', 0),
(188, 'สำนักงานมาตรฐานผลิตภัณฑ์อุตสาหกรรม (สมอ.)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1223', NULL, 'Expire', 0),
(189, 'บริษัท ไทยประกันภัย จำกัด (มหาชน)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20270', NULL, NULL, 0),
(190, 'สำนักงานกองทุนพัฒนาสื่อปลอดภัยและสร้างสรรค์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19850', NULL, 'Expire', 0),
(191, 'บริษัท ไทยไมโคร ดิจิทัล โซลูชั่นส์ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25534', NULL, 'Expire', 0),
(192, 'บริษัท พัสดุภัณฑ์ไทย จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14731', NULL, 'Expire', 0),
(193, 'บริษัท จัดหางานไทยชินแทค แทรเวิลเซอร์วิส จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'C01-000132', NULL, 'Expire', 0),
(194, 'โรงงานผ้าไทย บมจ.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16761', NULL, 'Expire', 0),
(195, 'ไทยไวร์โพรดัคท์ บมจ.', NULL, NULL, NULL, NULL, NULL, NULL, 'BOI-20180501-0315 REV.2', NULL, NULL, NULL, NULL, '16533', NULL, 'Expire', 0),
(196, 'ไทย-เจแปน แก๊ส บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22665', NULL, 'Expire', 0),
(197, 'บริษัท ไทยแลนด์แอนทราไซท์ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15521', NULL, 'Expire', 0),
(198, 'สถาบันวิจัยวิทยาศาสตร์และเทคโนโลยีแห่งประเทศไทย', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201200606', NULL, NULL, NULL, NULL, '1252', NULL, 'Expire', 0),
(199, 'บริษัท ไทยสินเมทัล อินดัสตรี จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'Job ref SO01-20190600279', NULL, NULL, NULL, NULL, '18728', NULL, 'Expire', 0),
(200, 'ประกันภัยไทยวิวัฒน์ บมจ.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17980', NULL, 'Expire', 0),
(201, 'บริษัท ธนากรผลิตภัณฑ์น้ำมันพืช จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17864', NULL, 'Expire', 0),
(202, 'สำนักงานทรัพย์สินพระมหากษัตริย์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15136', NULL, 'Expire', 0),
(203, 'แปรงไทย แห่งแรก บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18061', NULL, 'Expire', 0),
(204, 'มูลนิธิเพื่อการวิจัยโรคเอดส์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13926', NULL, 'Expire', 0),
(205, 'สถาบันรับรองคุณภาพสถานพยาบาล (องค์การมหาชน)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201100457Rev.1', NULL, NULL, NULL, NULL, '22042', NULL, 'Expire', 0),
(206, 'สถาบันส่งเสริมการสอนวิทยาศาสตร์และเทคโนโลยี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14702', NULL, 'Expire', 0),
(207, 'เจแปนฟาวน์เดชั่น', NULL, '0', NULL, NULL, NULL, NULL, 'กรุงเทพฯ', NULL, NULL, NULL, NULL, '1730', NULL, 'Expire', NULL),
(208, 'เดอะ ไมเนอร์ ฟู๊ด กรุ๊ป บมจ [project RM/RM Dashboard]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18557', NULL, 'Expire', 0),
(209, 'บริษัท เดอะ รีโคฟเวอรี่ แอดไวเซอร์ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22066', NULL, 'Expire', 0),
(210, 'บริษัท สยามเฆมี จำกัด (มหาชน)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201100312', NULL, NULL, NULL, NULL, '18751', NULL, 'Expire', 0),
(211, 'ตลาดหลักทรัพย์แห่งประเทศไทย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1889', NULL, 'Expire', 0),
(212, 'สมาคมธนาคารไทย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22333', NULL, 'Expire', 0),
(213, 'สมาคมตลาดตราสารหนี้ไทย', NULL, NULL, NULL, NULL, NULL, NULL, 'SO01-20200500158', NULL, NULL, NULL, NULL, '1929', NULL, 'Expire', 0),
(214, 'สหโมเสคอุตสาหกรรม บมจ. [UMI]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15412', NULL, 'Expire', 0),
(215, 'เทพสมบัติ บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100625', NULL, NULL, NULL, NULL, '11017', NULL, 'Expire', 0),
(216, 'บริษัท ทิพพรัฐ บิสสิเนส กรุ๊ป จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200600544', NULL, NULL, NULL, NULL, '16680', NULL, 'Expire', 0),
(217, 'บริษัท ธนบุรี เวลบีอิ้ง จํากัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100621', NULL, NULL, NULL, NULL, '18690', NULL, 'Expire', 0),
(218, 'โรงพยาบาลสัตว์ทองหล่อ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12899', NULL, 'Expire', 0),
(219, 'ทิสโก้ โตเกียว ลีสซิ่ง บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17242', NULL, 'Expire', 0),
(220, 'ทีเคเค คอร์ปอเรชั่น บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19421', NULL, 'Expire', 0),
(221, 'บริษัท ทัวร์ครับ.คอม จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '24068', NULL, 'Expire', 0),
(222, 'โตโยต้าลิซซิ่ง (ประเทศไทย) จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1254', NULL, 'Expire', 0),
(223, 'ทีคิวเอ็ม ไลฟ์ อินชัวร์รันส์ โบรคเกอร์ บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'C01-001650', NULL, 'Expire', 0),
(224, 'ทรานส์โค้ด บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18635', NULL, 'Expire', 0),
(225, 'บริษัท ทรานสโป อินเตอร์เนชั่นแนล จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22436', NULL, 'Expire', 0),
(226, 'ทรานสโป อินเตอร์เนชั่นแนล บจก. + asian tiger', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1897', NULL, 'Expire', 0),
(227, 'บริษัท ทริส คอร์ปอเรชั่น จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14515', NULL, 'Expire', 0),
(228, 'ทริสเรทติ้ง บจก.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14542', NULL, 'Expire', 0),
(229, 'มหาวิทยาลัยหอการค้าไทย', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200800347', NULL, NULL, NULL, NULL, '7376', NULL, 'Expire', 0),
(230, 'อูซูอิอินเตอร์เนชั่นนอล', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16088', NULL, 'Expire', 0),
(231, 'บริษัท วีรสุกรุ๊ป จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21700', NULL, 'Expire', 0),
(232, 'บริษัท เวอร์ติคอล จำกัด [Project บางจาก & ศรีฟ้า]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15936', NULL, 'Expire', 0),
(233, 'วี จี ไอ โกลบอล มีเดีย บมจ.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16813', NULL, 'Expire', 0),
(234, 'วีเซิร์ฟพลัส บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO01-20200400450', NULL, NULL, NULL, NULL, '19024', NULL, 'Expire', 0),
(235, 'บริษัท ดับบลิวพี เอ็นเนอร์ยี่ จำกัด (มหาชน)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200600056', NULL, NULL, NULL, NULL, '15402', NULL, 'Expire', 0),
(236, 'ยิบอินซอย บจก. (Project : Hortonworks)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13633', NULL, 'Expire', 0),
(237, 'ซีน่า เทคโนโลยี บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200200588', NULL, NULL, NULL, NULL, '14270', NULL, 'Expire', 0),
(238, 'บริษัท มิลลิเมด จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200800052', NULL, NULL, NULL, NULL, '14741', NULL, 'Expire', 0),
(239, 'แอ๊ตเซ็ทเทอร่า คอร์ปอเรชั่น บจก. (Project : Patumrice)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200900204 Rev.1', NULL, NULL, NULL, NULL, '24016', NULL, 'Expire', 0),
(240, 'เฟิร์ส คอนแท็ค เซ็นเตอร์ บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200300691', NULL, NULL, NULL, NULL, '16814', NULL, 'Expire', 0),
(241, 'บริษัท เทอราบิท จำกัด (Project : เฟิร์ส คอนแท็ค เซ็นเตอร์)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200400480-SO01-20200800201', NULL, NULL, NULL, NULL, '14166', NULL, 'Expire', 0),
(242, 'สำนักงานพัฒนาวิทยาศาสตร์และเทคโนโลยีแห่งชาติ (สวทช.)(Project: กระดูก)(Project : Covid-19)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12229', NULL, 'Expire', 0),
(243, 'ศูนย์บริการโลหิตแห่งชาติ สภากาชาดไทย', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210300034', NULL, NULL, NULL, NULL, '14674', NULL, 'Expire', 0),
(244, 'บริษัท สหชาติเศรษฐกิจ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200800511', NULL, NULL, NULL, NULL, '16446', NULL, 'Expire', 0),
(245, 'สถาบันบริหารจัดการธนาคารที่ดิน (องค์การมหาชน)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201000214', NULL, NULL, NULL, NULL, 'C02-001380', NULL, 'Expire', 0),
(246, 'ไทยประกันชีวิต (Project : DR)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200900346', NULL, NULL, NULL, NULL, '7351', NULL, 'Expire', 0),
(247, 'ไทยประกันชีวิต (Project : S3)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210300204', NULL, NULL, NULL, NULL, '7351', NULL, 'Expire', 0),
(248, 'เดอะ คอฟฟี่ คลับ (ประเทศไทย)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200442', NULL, NULL, NULL, NULL, '19719', NULL, 'Expire', 0),
(249, 'ไมเนอร์ ดีคิว', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200443', NULL, NULL, NULL, NULL, 'C01-001096', NULL, 'Expire', 0),
(250, 'สเวนเซ่นส์ (ไทย)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200444', NULL, NULL, NULL, NULL, '30099', NULL, 'Expire', 0),
(251, 'เอสแอลอาร์ที', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200445', NULL, NULL, NULL, NULL, '31385', NULL, 'Expire', 0),
(252, 'บีทีเอ็ม (ไทยแลนด์) บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200800152', NULL, NULL, NULL, NULL, '31386', NULL, 'Expire', 0),
(253, 'ไมเนอร์ แดรี่ บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210300180-SO02-20210300181', NULL, NULL, NULL, NULL, '31634', NULL, 'Expire', 0),
(254, 'กรมบัญชีกลาง', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201000142', NULL, NULL, NULL, NULL, '1886', NULL, 'Expire', 0),
(255, 'พรเกษม กรุ๊ป จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201000119', NULL, NULL, NULL, NULL, '20644', NULL, 'Expire', 0),
(256, 'บิ๊ก ทีมเวิร์ค (Project : Dental Vision)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210300321', NULL, NULL, NULL, NULL, 'C01-000125', NULL, 'Expire', 0),
(257, 'มูลนิธิอนุรักษ์พันธุกรรมพืชอันเนื่องมาจากพระราชดำริฯ สมเด็จพระเทพรัตนราชสุดาฯ สยามบรมราชกุมารี', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201200851', NULL, NULL, NULL, NULL, 'C02-000112', NULL, 'Expire', 0),
(258, 'เอส เอ็น เอ็น ลีสซิ่ง บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200300772', NULL, NULL, NULL, NULL, '23465', NULL, 'Expire', 0),
(259, 'บริษัท โกลบอลไพร์ม คอร์ปอเรชั่น จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201200881', NULL, NULL, NULL, NULL, '22596', NULL, 'Expire', 0),
(260, 'บริษัท วายแอลจี กรุ๊ป จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200339Rev.1', NULL, NULL, NULL, NULL, '22977', NULL, 'Expire', 0),
(261, 'เอสพีพี เทอร์มินัล ทรานสปอร์ต บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201200491', NULL, NULL, NULL, NULL, '23135', NULL, 'Expire', 0),
(262, 'ทางด่วนและรถไฟฟ้ากรุงเทพ บมจ.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201200934', NULL, NULL, NULL, NULL, '20214', NULL, 'Expire', 0),
(263, 'บริษัท มารีนา (1988) จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100259', NULL, NULL, NULL, NULL, 'C01-002440', NULL, 'Expire', 0),
(264, 'บริษัท อินเตอร์โกลด์ โกลด์เทรด จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200450', NULL, NULL, NULL, NULL, '25110', NULL, 'Expire', 0),
(265, 'บริษัท เจนก้องไกล จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201200116', NULL, NULL, NULL, NULL, '23108', NULL, 'Expire', 0),
(266, 'บริษัท โงวฮก จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100178', NULL, NULL, NULL, NULL, '16964', NULL, 'Expire', 0),
(267, 'ไอเน็กซ์ บรอดแบนด์ บจก. [Project : สมาร์ท ไอดี กรุ๊ป]', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100367', NULL, NULL, NULL, NULL, '23588', NULL, 'Expire', 0),
(268, 'บริษัท เดอะแพรคติเคิลโซลูชั่น จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100255', NULL, NULL, NULL, NULL, '17764', NULL, 'Expire', 0),
(269, 'ไอเน็กซ์ บรอดแบนด์ บจก. [Project : TN incorporation]', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100172', NULL, NULL, NULL, NULL, '23588', NULL, 'Expire', 0),
(270, 'คุณเนติวัฒน์ ธนิตกุล', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100136', NULL, NULL, NULL, NULL, 'C03-000929', NULL, 'Expire', 0),
(271, 'บริษัท โกซอฟท์ (ประเทศไทย) จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201200768', NULL, NULL, NULL, NULL, '15468', NULL, 'Expire', 0),
(272, 'ไอเน็กซ์ บรอดแบนด์ บจก.[Project: กรุงไทย-แอกซ่า]', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100021', NULL, NULL, NULL, NULL, '23588 (12204)', NULL, 'Expire', 0),
(273, 'อักษรเจริญทัศน์ อจท. บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100487', NULL, NULL, NULL, NULL, '14583', NULL, 'Expire', 0),
(274, 'ไอเน็กซ์ บรอดแบนด์ บจก.[Project : ออลล่า]', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100345', NULL, NULL, NULL, NULL, '23588 (18749)', NULL, 'Expire', 0),
(275, 'บริษัท นารูมิ (ประเทศไทย) จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201100403', NULL, NULL, NULL, NULL, 'C01-000469', NULL, 'Expire', 0),
(276, 'บริษัท ไอแคร์ เฮลท์ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200700221-SO02-20201000352-SO02-20201000346', NULL, NULL, NULL, NULL, '21461', NULL, 'Expire', 0),
(277, 'บริษัท ธนบุรี เฮลท์แคร์ กรุ๊ป จํากัด (มหาชน)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100565', NULL, NULL, NULL, NULL, '4627', NULL, 'Expire', 0),
(278, 'เอลิเซีย โฮลดิ้งส์ บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200494', NULL, NULL, NULL, NULL, 'C01-002422', NULL, 'Expire', 0),
(279, 'เอลิเซีย โฮลดิ้งส์ บจก. [Cloud]', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100094', NULL, NULL, NULL, NULL, 'C01-002422', NULL, 'Expire', 0),
(280, 'ฟร็อกดิจิตอล กรุ๊ป', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100243', NULL, NULL, NULL, NULL, 'C01-002420', NULL, 'Expire', 0),
(281, 'บริษัท บางกอก มีเดีย แอนด์ บรอดคาสติ้ง จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100474', NULL, NULL, NULL, NULL, '15791', NULL, 'Expire', 0),
(282, 'บริษัท ไทยเฮ้าส์ซึ่ง ดิเวลล็อปเมนท์ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100717', NULL, NULL, NULL, NULL, '22319', NULL, 'Expire', 0),
(283, 'เอส.บี.เฟอร์นิเจอร์เฮ้าส์ บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100695', NULL, NULL, NULL, NULL, '14191', NULL, 'Expire', 0),
(284, 'อักษรเจริญทัศน์ อจท. บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100584', NULL, NULL, NULL, NULL, '14583', NULL, 'Expire', 0),
(285, 'แพลนเน็ต คอมมิวนิเคชั่น เอเชีย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14634', NULL, 'Expire', NULL),
(286, 'SO02-20201200504', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 'Expire', NULL),
(287, 'ไอเน็กซ์ บรอดแบนด์ บจก.[Project : เคมีโก้]', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100601', NULL, NULL, NULL, NULL, '23588 (15846)', NULL, 'Expire', 0),
(288, 'บริษัท คิดให้ทำเป็น จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200600342', NULL, NULL, NULL, NULL, 'C01-000134', NULL, 'Expire', 0),
(289, 'ไอเน็กซ์ บรอดแบนด์ บจก.[Project : ยูเนี่ยนบัททึน]', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201200504', NULL, NULL, NULL, NULL, '23588 (18095)', NULL, 'Expire', 0),
(290, 'ไอเน็กซ์ บรอดแบนด์ บจก.[Project : ซูซูโย]', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100295', NULL, NULL, NULL, NULL, '23588 (19913)', NULL, 'Expire', 0),
(291, 'บริษัท ท็อปแวลู คอร์ปอเรท จำกัด (Special-Brand Comm)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200097', NULL, NULL, NULL, NULL, '15388', NULL, 'Expire', 0),
(292, 'บริษัท ไอเน็กซ์ บรอดแบนด์ จำกัด [Project : สถาบันสารสนเทศทรัพยากรน้ำและการเกษตร(องค์การมหาชน) (สสน.)]', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200088', NULL, NULL, NULL, NULL, '23588 (15168)', NULL, 'Expire', 0),
(293, 'บริษัท เฟซโซ่พี จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200273', NULL, NULL, NULL, NULL, '31870', NULL, 'Expire', 0),
(294, 'บริษัท เลิร์นเทค จำกัด [Project : Cloud]', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20201200125', NULL, NULL, NULL, NULL, '13815', NULL, 'Expire', 0),
(295, 'บริษัท ไทยยามาฮ่ามอเตอร์ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200017', NULL, NULL, NULL, NULL, '12080', NULL, 'Expire', 0),
(296, 'บริษัท ชโย แคปปิตอล จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210300152', NULL, NULL, NULL, NULL, '33678', NULL, 'Expire', 0),
(297, 'ไทยพลาสติกรีไซเคิลกรุ๊ป บจก.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200051', NULL, NULL, NULL, NULL, '30653', NULL, 'Expire', 0),
(298, 'บริษัท บางจาก รีเทล จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100398', NULL, NULL, NULL, NULL, '22072', NULL, 'Expire', 0),
(299, 'สหวิริยาสตีลอนิดัสตรีจํากัด (มหาชน) (โรงงาน)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100667', NULL, NULL, NULL, NULL, 'C01-000145', NULL, 'Expire', 0),
(300, 'ไอเน็กซ์ บรอดแบนด์ บจก. [Project : ธนบุรี เวลบีอิ้ง รังสิต]', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100711', NULL, NULL, NULL, NULL, '23588 (18690)', NULL, 'Expire', 0),
(301, 'บริษัท ไอที เซอร์วิสเซส จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200480', NULL, NULL, NULL, NULL, '16699', NULL, 'Expire', 0),
(302, 'บริษัท บิวเทรี่ยม จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210300248', NULL, NULL, NULL, NULL, '24056', NULL, 'Expire', 0),
(303, 'ไทยประกันชีวิต บจก. มหาชน [Project: Storage S3]', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210300204', NULL, NULL, NULL, NULL, '7351', NULL, 'Expire', 0),
(304, 'บริษัท ไอเน็กซ์ บรอดแบนด์ จำกัด .[Project : ยาโน่ อิเล็คทรอนิคส์]', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200116', NULL, NULL, NULL, NULL, '23588 (11784)', NULL, 'Expire', 0),
(305, 'มูลนิธิอาสาเพื่อนพึ่ง (ภาฯ) ยามยาก สภากาชาดไทย', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200126', NULL, NULL, NULL, NULL, '22686', NULL, 'Expire', 0),
(306, 'บริษัท ธนจิรา รีเทล คอร์ปอเรชั่น จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200456', NULL, NULL, NULL, NULL, '14313', NULL, 'Expire', 0),
(307, 'บริษัท สหพัฒนพิบูล จํากัด (มหาชน)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200304', NULL, NULL, NULL, NULL, '11036', NULL, 'Expire', 0),
(308, 'บริษัท สโตเรจ ซิตี้ แพลตฟอร์ม จํากัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200358', NULL, NULL, NULL, NULL, 'C01-001918', NULL, 'Expire', 0),
(309, 'บริษัท คอร์สสแควร์ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200448', NULL, NULL, NULL, NULL, '16819', NULL, 'Expire', 0),
(310, 'บริษัท ไปรษณีย์ไทย จำกัด [BCP]', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200472', NULL, NULL, NULL, NULL, '14580', NULL, 'Expire', 0),
(311, 'บริษัท เฟมไลน์ โปรดักส์ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200480', NULL, NULL, NULL, NULL, '21851', NULL, 'Expire', 0),
(312, 'บริษัท ไอเน็กซ์ บรอดแบนด์ จำกัด (Project: ลุกซ์ รอยัล (ประเทศไทศ))', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200567', NULL, NULL, NULL, NULL, '23588 (7870)', NULL, 'Expire', 0),
(313, 'บริษัท ไอเน็กซ์ บรอดแบนด์ จำกัด (Project: ANS Wireless)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200571', NULL, NULL, NULL, NULL, '23588', NULL, 'Expire', 0),
(314, 'บริษัท ไอเน็กซ์ บรอดแบนด์ จำกัด [Project : ที.เอ็น.อินคอร์ปอเรชั่น @Site IDC3]', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200572', NULL, NULL, NULL, NULL, '23588 (15344)', NULL, 'Expire', 0),
(315, 'บริษัท สตาร์แฟชั่น (2551) จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200583', NULL, NULL, NULL, NULL, '20050', NULL, 'Expire', 0),
(316, 'บริษัท ไทยยามาซากิ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210200569', NULL, NULL, NULL, NULL, '14682', NULL, 'Expire', 0),
(317, 'บริษัท ซิมโฟนี่ คอมมูนิเคชั่น จำกัด (มหาชน)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210300004', NULL, NULL, NULL, NULL, '14445', NULL, 'Expire', 0),
(318, 'บริษัท ไอเน็กซ์ บรอดแบนด์ จำกัด (Project : บริษัท เกษมชัยฟู๊ด จำกัด)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210300159', NULL, NULL, NULL, NULL, '23588 (22413)', NULL, 'Expire', 0),
(319, 'บริษัท ไทยไฟเบอร์ออพติคส์ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210100348', NULL, NULL, NULL, NULL, '25952', NULL, 'Expire', 0),
(320, 'บริษัท ฟู้ดโปรเจ็ค (สยาม) จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210300392', NULL, NULL, NULL, NULL, '14902', NULL, 'Expire', 0),
(321, 'บริษัท โกลิ้งค์ ออนไลน์ จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210300483', NULL, NULL, NULL, NULL, 'C01-002538', NULL, 'Expire', 0),
(322, 'บริษัท ไอเน็กซ์ บรอดแบนด์ จำกัด [Project : บริษัท ยูเซ็น โลจิสติกส์]', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210300478', NULL, NULL, NULL, NULL, '23588 (13819)', NULL, 'Expire', 0),
(323, 'สำนักงานรับรองมาตรฐานและประเมินคุณภาพการศึกษา', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210300548', NULL, NULL, NULL, NULL, '32274', NULL, 'Expire', 0),
(324, 'บริษัท สบาย สบาย ลิสซิ่ง จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20200400420', NULL, NULL, NULL, NULL, '21957', NULL, 'Expire', 0),
(325, 'ไทย ไดโซ แอโรโซล', 'มัณฑนา ภูครองทุ่ง (เหมียว)', 'นายปวรานล ชินวรนนท์ (ฮุ้ย)', 'นางสาวบุษกร สมพมิตร (เอ้)', '../project/Uploadfile/Diagram/20210418Diagram796775447.JPG', '../project/Uploadfile/Monitor/20210418Monitor789523314.JPG', 'Cloud-AHV(Nutanix 1 vm)/Cloud-VMware(vFW NSX Edge large)/Manage Service', 'SO02-20210400040', '../project/Uploadfile/SO_File/20210418SO_File631342432.JPG', '2021-04-01', '2022-03-31', NULL, '20596', '../project/Uploadfile/SO_Ter/20210418SO_Ter777877225.JPG', 'in progress', 0),
(326, 'ไอเน็กซ์ บรอดแบนด์ [Project: เอ็กซ์ปิไดเตอร์ส (ประเทศไทย) บจก ]', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210400056', NULL, NULL, NULL, NULL, '23588', NULL, 'Expire', 0),
(327, 'ดิทโต้ (ประเทศไทย) บมจ.', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210400099', NULL, NULL, NULL, NULL, '18233', NULL, 'Expire', 0),
(328, 'บริษัท เพนส์ มาร์เก็ตติ้ง แอนด์ ดิสทริบิวชั่น จำกัด', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210400078', NULL, NULL, NULL, NULL, '25459', NULL, 'Expire', 0),
(329, 'เอแอลทีเทเลคอม', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210400069', NULL, NULL, NULL, NULL, '18321', NULL, 'Expire', 0),
(330, 'เมจิกซอฟท์แวร์ (ประเทศไทย)', NULL, NULL, NULL, NULL, NULL, NULL, 'SO02-20210400039', NULL, NULL, NULL, NULL, '21952', NULL, 'Expire', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pm_mnsp`
--


CREATE TABLE `Report` (
  `Num_ID` int(11) NOT NULL,
  `Customer_Name` varchar(100) NOT NULL,
  `Due_Date` varchar(20) DEFAULT NULL,
  `Start_Date` varchar(20) NOT NULL,
  `End_Date` varchar(20) NOT NULL,
  `PM_Name` varchar(50) NOT NULL,
  `Sale_Name` varchar(50) NOT NULL,
  `Pre_Sale` varchar(50) NOT NULL,
  `Service` varchar(100) NOT NULL,
  `SO_File` varchar(255) DEFAULT NULL,
  `SO_Num` varchar(255) DEFAULT NULL,
  `Customer_info` varchar(255) DEFAULT NULL,
  `Customer_id` varchar(100) NOT NULL,
  `SO_Ter` varchar(255) DEFAULT NULL,
  `Critical` int(11) NOT NULL,
  `Status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Report`
--

INSERT INTO `Report` (`Num_ID`, `Customer_Name`, `Due_Date`, `Start_Date`, `End_Date`, `PM_Name`, `Sale_Name`, `Pre_Sale`, `Service`, `SO_File`, `SO_Num`, `Customer_info`, `Customer_id`, `SO_Ter`, `Critical`, `Status`) VALUES
(6, 'name', NULL, '2021-04-08', '2021-06-22', 'ภาณุพงศ์ กวดกิจการ (เจมส์)', 'wasin', 'wasdw', 'wasin', '../project/Uploadfile/SO_File/664688430.JPG', 'name', 'fsgdhfg33', 'name', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

--
-- Indexes for dumped tables
--

--
-- Indexes for table `BCP`
--
ALTER TABLE `BCP`
  ADD PRIMARY KEY (`Num_ID`);

--
-- Indexes for table `forum_BCP`
--
ALTER TABLE `forum_BCP`
  ADD PRIMARY KEY (`FR_ID`);

--
-- Indexes for table `forum_mnsp`
--
ALTER TABLE `forum_mnsp`
  ADD PRIMARY KEY (`FR_ID`);

--
-- Indexes for table `forum_pm`
--
--
-- Indexes for table `forum_Report`
--
ALTER TABLE `forum_Report`
  ADD PRIMARY KEY (`FR_ID`);

--
-- Indexes for table `mnsp`
--
ALTER TABLE `mnsp`
  ADD PRIMARY KEY (`Num_ID`);

--
-- Indexes for table `pm_mnsp`
--
--
-- Indexes for table `Report`
--
ALTER TABLE `Report`
  ADD PRIMARY KEY (`Num_ID`);

--
-- Indexes for table `tbl_customer`
--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `BCP`
--
ALTER TABLE `BCP`
  MODIFY `Num_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `forum_BCP`
--
ALTER TABLE `forum_BCP`
  MODIFY `FR_ID` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_mnsp`
--
ALTER TABLE `forum_mnsp`
  MODIFY `FR_ID` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_Report`
--
ALTER TABLE `forum_Report`
  MODIFY `FR_ID` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mnsp`
--
ALTER TABLE `mnsp`
  MODIFY `Num_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT for table `pm_mnsp`
--

--
-- AUTO_INCREMENT for table `Report`
--
ALTER TABLE `Report`
  MODIFY `Num_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
