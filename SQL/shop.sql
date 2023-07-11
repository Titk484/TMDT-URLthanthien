-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 27, 2022 at 12:28 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminid` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminEmail` varchar(150) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminPass` varchar(255) NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminid`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(1, 'Khoa', 'Khoa@gmail.com', 'khoa-admin', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) UNSIGNED NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(1, 'Razer'),
(2, 'Akko'),
(3, 'JBL'),
(4, 'Dareu'),
(5, 'Sony'),
(6, 'Cosair'),
(7, 'Logitech');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) UNSIGNED NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) UNSIGNED NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(9, 'Bàn Phím CÆ¡'),
(10, 'Chuá»™t KhÃ´ng DÃ¢y'),
(11, 'Chuá»™t CÃ³ DÃ¢y'),
(12, 'Tai Nghe'),
(13, 'Loa KhÃ´ng DÃ¢y'),
(14, 'Loa CÃ³ DÃ¢y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `cccd` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `zipcode` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `cccd`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(13, 'Khoa', '242/31/2 BÃ  Hom P13 Q6', '000111222', 'HCM', '700000', '00008888', 'Khoa@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) UNSIGNED NOT NULL,
  `productName` varchar(255) NOT NULL,
  `customer_id` int(11) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date_order` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) UNSIGNED NOT NULL,
  `productName` tinytext NOT NULL,
  `catId` int(11) UNSIGNED NOT NULL,
  `brandId` int(11) UNSIGNED NOT NULL,
  `product_desc` text NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(7, 'BÃ n phÃ­m logitech G512 GX RGB', 9, 7, '<p><span>G512 l&agrave; b&agrave;n ph&iacute;m chÆ¡i game hiá»‡u suáº¥t cao c&oacute; bao gá»“m lá»±a chá»n c&aacute;c ph&iacute;m switch cÆ¡ há»c GX n&acirc;ng cao cá»§a báº¡n. C&ocirc;ng nghá»‡ chÆ¡i game ti&ecirc;n tiáº¿n c&ugrave;ng cáº¥u tr&uacute;c há»£p kim nh&ocirc;m khiáº¿n cho G512 trá»Ÿ n&ecirc;n Ä‘Æ¡n giáº£n, bá»n v&agrave; Ä‘áº§y Ä‘á»§ t&iacute;nh nÄƒng.</span></p>', 1, '2190000', '29cbc81fb1.webp'),
(8, 'BÃ n phÃ­m khÃ´ng dÃ¢y Logitech POP Keys Blast Yelow', 9, 7, '<p>B&agrave;n ph&iacute;m Logitech<span>&nbsp;Logitech POP Keys sá»Ÿ há»¯u thiáº¿t káº¿ m&agrave;u báº¡c h&agrave;, t&iacute;m tá»­ Ä‘inh hÆ°Æ¡ng, tráº¯ng v&agrave; v&agrave;ng káº¿t há»£p Ä‘áº§y t&iacute;nh tháº©m má»¹, ngá»t ng&agrave;o gá»£i ra má»™t ch&uacute;t mojito tÆ°Æ¡i m&aacute;t.</span></p>', 1, '2490000', '481496cf8f.webp'),
(9, 'BaÌ€n phiÌm Logitech G PRO KDA', 9, 7, '<p><span>C&aacute;c ph&iacute;m switch cÆ¡ há»c <strong>GX Tactile</strong> ti&ecirc;n tiáº¿n Ä‘Æ°á»£c cháº¿ táº¡o Ä‘á»ƒ tÄƒng hiá»‡u suáº¥t, Ä‘á»™ nháº¡y v&agrave; Ä‘á»™ bá»n, vá»›i pháº£n há»“i nháº¥n ph&iacute;m ph&aacute;t ra &acirc;m thanh, c&oacute; thá»ƒ cáº£m nháº­n Ä‘Æ°á»£c.</span></p>', 1, '3269000', 'e41e74c163.webp'),
(10, 'BanphimLogitech G913', 9, 7, '<p><strong>G913</strong><span>&nbsp;l&agrave; má»™t chiáº¿c&nbsp;</span><strong>b&agrave;n ph&iacute;m cÆ¡ gi&aacute; ráº»</strong><span>&nbsp;Ä‘áº·c biá»‡t d&agrave;nh cho nhá»¯ng ai t&igrave;m kiáº¿m sá»± kh&aacute;c biá»‡t. C&oacute; thá»ƒ gi&aacute; cá»§a n&oacute; kh&ocirc;ng dá»… chá»‹u ch&uacute;t n&agrave;o nhÆ°ng nhá»¯ng g&igrave; n&oacute; Ä‘em láº¡i th&igrave; tháº­t sá»± xá»©ng Ä‘&aacute;ng.</span></p>', 0, '4390000', '0e588379ed.webp'),
(11, 'BÃ n phÃ­m Razer Blackwidow Green Switch', 9, 1, '<p><span>Razer Blackwidow má»™t trong nhá»¯ng d&ograve;ng&nbsp;</span>b&agrave;n ph&iacute;m cÆ¡<span>&nbsp;Ä‘Æ°á»£c thiáº¿t káº¿ v&agrave; sáº£n xuáº¥t bá»Ÿi h&atilde;ng Razer Inc. - má»™t c&ocirc;ng ty cá»§a Má»¹, Ä‘Æ°á»£c th&agrave;nh láº­p bá»Ÿi Min-Liang Tan, v&agrave; Robert Krakoff c&oacute; trá»¥ sá»Ÿ á»Ÿ Califoria chuy&ecirc;n cung cáº¥p c&aacute;c sáº£n pháº©m, phá»¥ kiá»‡n cháº¥t lÆ°á»£ng d&agrave;nh cho game thá»§. C&aacute;c sáº£n pháº©m Ä‘áº¿n tá»« Razer thÆ°á»ng Ä‘Æ°á»£c giá»›i game thá»§ Ä‘&aacute;nh gi&aacute; cao vá» máº·t cháº¥t lÆ°á»£ng láº«n gi&aacute; cáº£.</span></p>', 1, '2890000', '25f00b2cb7.webp'),
(12, 'BÃ n phÃ­m Razer Ornata Expert Pikachu Limited Edition', 9, 1, '<p><span>Báº¡n muá»‘n trá»Ÿ th&agrave;nh ngÆ°á»i giá»i nháº¥t? Sau Ä‘&oacute;, h&atilde;y sáºµn s&agrave;ng cho báº¥t ká»³ cuá»™c th&aacute;ch Ä‘áº¥u n&agrave;o vá»›i b&agrave;n ph&iacute;m&nbsp;Razer Ä‘áº·c trÆ°ng cá»§a ch&uacute;ng t&ocirc;i, ph&aacute;t triá»ƒn vá»›i phong c&aacute;ch Pok&eacute;mon mang t&iacute;nh biá»ƒu tÆ°á»£ng. Äiá»‡n kh&iacute; h&oacute;a thiáº¿t láº­p cá»§a báº¡n vá»›i bá»™ thiáº¿t bá»‹ ngoáº¡i vi hiá»‡u suáº¥t cao Ä‘á»™c quyá»n cá»§a ch&uacute;ng t&ocirc;i, láº¥y cáº£m há»©ng tá»« Pok&eacute;mon dá»… thÆ°Æ¡ng v&agrave; Ä‘Æ°á»£c y&ecirc;u th&iacute;ch nháº¥t má»i thá»i Ä‘áº¡i - Pikachu.</span></p>', 0, '2990000', '9b76448c0e.webp'),
(13, 'Chuá»™t Razer Deathadder Essential', 11, 1, '<p><span>Razer DeathAdder Essential mang kiá»ƒu d&aacute;ng truyá»n thá»‘ng, thiáº¿t káº¿ c&ocirc;ng th&aacute;i há»c (</span><strong>Ergonomic</strong><span>) mang Ä‘áº¿n sá»± thoáº£i m&aacute;i tá»‘i Æ°u khi sá»­ dá»¥ng, cáº§m náº¯m vá»«a váº·n, d&ugrave;ng l&acirc;u kh&ocirc;ng má»i tay.</span></p>', 1, '590000', 'fa108976b9.webp'),
(14, 'Chuá»™t Logitech G203 LightSync Lila', 10, 7, '<p><span>Chuá»™t gaming G203&nbsp;thuá»™c ph&acirc;n kh&uacute;c&nbsp;</span>chuá»™t gaming<span>&nbsp;gi&aacute; ráº» cá»§a nh&agrave; Logitech. G203 Ä‘Æ°á»£c trang bá»‹ cáº£m biáº¿n quang há»c cháº¥t lÆ°á»£ng cao, Ä‘áº¡t Ä‘á»™ nháº¡y l&ecirc;n Ä‘áº¿n 8000 DPI.&nbsp;</span></p>', 0, '400000', '06d97c1ec2.webp'),
(15, 'Chuá»™t Logitech G Pro Wireless League Of Legends', 11, 7, '<p><span>D&ograve;ng&nbsp;</span>chuá»™t kh&ocirc;ng d&acirc;y<span>&nbsp;n&agrave;y cá»§a nh&agrave; Logitech vá»›i ph&aacute;t minh cá»§a HERO 16K, cáº£m biáº¿n chÆ¡i game tháº¿ há»‡ tiáº¿p theo Ä‘&atilde; oanh táº¡c thá»‹ trÆ°á»ng ráº¥t th&agrave;nh c&ocirc;ng.&nbsp;</span></p>', 1, '2490000', '974f60e362.webp'),
(16, 'Chuá»™t Dare-U LM115G Wireless', 10, 4, '<p><span>DareU LM115G l&agrave; má»™t trong nhá»¯ng d&ograve;ng&nbsp;</span>chuá»™t kh&ocirc;ng d&acirc;y<span>&nbsp;mang Ä‘áº¿n cho ngÆ°á»i d&ugrave;ng sá»± má»›i máº» trong thiáº¿t káº¿. Vá»›i t&ocirc;ng m&agrave;u Ä‘en huyá»n b&iacute; v&agrave; sang trá»ng c&ugrave;ng vá»›i Ä‘&oacute; mang tr&ecirc;n m&igrave;nh thiáº¿t káº¿ bo tr&ograve;n cho cáº£m gi&aacute;c thoáº£i m&aacute;i khi d&ugrave;ng. Sáº£n pháº©m tÆ°Æ¡ng th&iacute;ch v&agrave; dá»… d&agrave;ng káº¿t ná»‘i vá»›i nhiá»u há»‡ Ä‘iá»u h&agrave;nh phá»• th&ocirc;ng nhÆ°: Windows, MAC.</span></p>', 0, '165000', '911bca0acb.webp'),
(17, 'Tai Nghe Sony MDR - ZX110AP', 12, 5, '<p><em><em><strong>Tai nghe Sony&nbsp;MDR-ZX110AP</strong>&nbsp;l&agrave; má»™t trong nhá»¯ng sáº£n pháº©m gi&aacute; ráº» ná»•i báº­t cá»§a Sony má»™t</em>&nbsp;táº­p Ä‘o&agrave;n Ä‘a quá»‘c gia, Ä‘a ng&agrave;nh nghá» c&oacute; lá»‹ch sá»­ l&acirc;u Ä‘á»i. Sáº£n pháº©m phá»¥ kiá»‡n &acirc;m thanh cá»§a h&atilde;ng Ä‘i v&agrave;o tiá»m thá»©c ngÆ°á»i d&ugrave;ng v&agrave; Ä‘á»ƒ láº¡i nhiá»u áº¥n tÆ°á»£ng vá» thiáº¿t káº¿, cháº¥t lÆ°á»£ng cÅ©ng nhÆ° Ä‘á»™ bá»n.&nbsp;</em></p>', 0, '540000', 'a837453850.webp'),
(18, 'Tai nghe DAREU EH469 7.1 RGB PINK	', 12, 4, '<p><strong>DareU EH469</strong><span>&nbsp;l&agrave; chiáº¿c&nbsp;</span><span><span>tai nghe gaming</span></span><span>&nbsp;m&agrave; ch&uacute;ng t&ocirc;i cho ráº±ng, á»Ÿ ph&acirc;n kh&uacute;c gi&aacute; 500k kh&ocirc;ng c&oacute; Ä‘á»‘i thá»§ vá» thiáº¿t káº¿. Pháº§n chá»¥p tai vá»›i k&iacute;ch thÆ°á»›c lá»›n h&igrave;nh Oval chá»¥p k&iacute;n tai, pháº§n á»‡m Ä‘áº§u c&oacute; thá»ƒ co d&atilde;n cho cáº£m gi&aacute;c Ä‘eo ráº¥t thoáº£i m&aacute;i.&nbsp;</span><span><span>Gá»ng cá»§a tai nghe Ä‘Æ°á»£c l&agrave;m báº±ng th&eacute;p cho Ä‘á»™ cháº¯c cháº¯n bá»n bá»‰ cao</span></span><span>. Ngo&agrave;i ra,&nbsp;</span><span><span>phi&ecirc;n báº£n m&agrave;u Há»’NG c&ograve;n Ä‘i k&egrave;m tai m&egrave;o ráº¥t Ä‘áº¹p</span></span><span>.</span></p>', 0, '440000', '33e6b5edb8.webp'),
(19, 'Loa Bluetooth Sony SRS - XB23	', 13, 5, '<p>Loa bluetooth<span><strong>&nbsp;Sony SRS XB23 Extra Bas</strong>s sá»Ÿ há»¯u k&iacute;ch thÆ°á»›c kh&aacute; gá»n g&agrave;ng v&agrave; trá»ng lÆ°á»£ng nháº¹ chá»‰ 580g. NgÆ°á»i d&ugrave;ng c&oacute; thá»ƒ thay Ä‘á»•i vá»‹ tr&iacute; cá»§a sáº£n pháº©m m&agrave; kh&ocirc;ng gáº·p báº¥t cá»© kh&oacute; khÄƒn n&agrave;o. Chiáº¿c loa ph&ugrave; há»£p cho c&aacute;c buá»•i cáº¯m tráº¡i ngo&agrave;i trá»i, ngo&agrave;i ra, báº¡n c&oacute; thá»ƒ treo loa trong lá»u hoáº·c tr&ecirc;n c&acirc;y, á»Ÿ báº¥t cá»© nÆ¡i n&agrave;o báº¡n muá»‘n báº±ng chiáº¿c d&acirc;y Ä‘eo tiá»‡n lá»£i.</span></p>', 1, '2190000', '66cbf987e4.webp'),
(20, 'Tai nghe Bluetooth Sony WI - 1000XM2', 12, 5, '<p>Tai nghe true wireless<span>&nbsp;Ä‘eo cá»•&nbsp;</span><strong>Sony WI-1000XM2&nbsp;</strong><span>l&agrave; má»™t trong nhá»¯ng d&ograve;ng sáº£n pháº©m&nbsp;thuá»™c d&ograve;ng tai nghe Bluetooth cao cáº¥p nháº¥t 1000X vá»›i kháº£ nÄƒng chá»‘ng á»“n Ä‘&aacute;ng ná»ƒ.</span></p>', 0, '440000', '9467c13b76.webp'),
(21, 'Tai nghe thá»ƒ thao True Wireless chá»‘ng á»“n Sony WF - SP800N', 12, 5, '<p><span>Tai nghe thá»ƒ thao kh&ocirc;ng d&acirc;y Ä‘&iacute;ch thá»±c <strong>WF-SP800N</strong> c&oacute; thá»i lÆ°á»£ng pin d&agrave;i, chá»‘ng Ä‘Æ°á»£c nÆ°á»›c v&agrave; má»“ h&ocirc;i v&agrave; mang Ä‘áº¿n &acirc;m tráº§m s&acirc;u nhá» chá»‘ng á»“n ká»¹ thuáº­t sá»‘.</span></p>', 0, '399000', 'd3cd583d60.webp'),
(22, 'Loa Thonet & Vander SPIEL BTâ„¢', 14, 5, '<p><span>Loa <strong>Thonet &amp; Vander SPIEL BT</strong> Ä‘&atilde; c&oacute; máº·t v&agrave; sáºµn s&agrave;ng Ä‘á»ƒ vÆ°á»£t qua ranh giá»›i. Vá»›i káº¿t ná»‘i Bluetooth, loa 2.1 sáº½ káº¿t ná»‘i báº¡n vá»›i &acirc;m nháº¡c trong c&aacute;c hoáº¡t Ä‘á»™ng h&agrave;ng ng&agrave;y cá»§a báº¡n, cho d&ugrave; báº¡n á»Ÿ vÄƒn ph&ograve;ng hay l&agrave;m viá»‡c táº¡i nh&agrave;. Chá»‰ cáº§n káº¿t ná»‘i thiáº¿t bá»‹ cá»§a báº¡n v&agrave; táº­n hÆ°á»Ÿng. Thiáº¿t káº¿ h&igrave;nh há»c dÆ°á»ng nhÆ° chiáº¿m Æ°u tháº¿ táº¡o cáº£m gi&aacute;c tÆ°Æ¡i má»›i Ä‘áº§y tinh táº¿ cho kh&ocirc;ng gian ná»™i tháº¥t cá»§a báº¡n. Báº¡n c&oacute; thá»ƒ Ä‘áº·t loa á»Ÿ báº¥t ká»³ Ä‘&acirc;u, trong ph&ograve;ng ngá»§, b&agrave;n l&agrave;m viá»‡c, b&agrave;n há»c hay ngay cáº£ tr&ecirc;n ká»‡ tá»§.</span></p>', 0, '990000', '921026c4c0.webp'),
(23, 'BÃ n phÃ­m AKKO PC75B Plus Black & Silver', 9, 2, '<p><span>B&agrave;n ph&iacute;m <strong>AKKO PC75B Plus Black &amp; Silver</strong></span><span>&nbsp;c&oacute; t&iacute;nh nÄƒng káº¿t ná»‘i Ä‘a cháº¿ Ä‘á»™ gi&uacute;p chuyá»ƒn Ä‘á»•i miá»…n ph&iacute; giá»¯a c&aacute;c thiáº¿t bá»‹ kh&aacute;c nhau. Kh&ocirc;ng c&ograve;n qu&aacute; tr&igrave;nh cáº¯m v&agrave;o v&agrave; r&uacute;t ra. Bluetooth 5.0 v&agrave; 2.4GHz cung cáº¥p kháº£ nÄƒng truyá»n táº£i nhanh ch&oacute;ng v&agrave; á»•n Ä‘á»‹nh m&agrave; kh&ocirc;ng c&oacute; Ä‘á»™ trá»… trong khi c&aacute;p Type-C Ä‘i k&egrave;m cung cáº¥p káº¿t ná»‘i cháº¯c cháº¯n nhÆ° má»™t phÆ°Æ¡ng tiá»‡n dá»± ph&ograve;ng khi háº¿t pin. N&oacute; tÆ°Æ¡ng th&iacute;ch vá»›i há»‡ thá»‘ng Mac / Win / Android. N&oacute; l&agrave; N-key rollover trong táº¥t cáº£ c&aacute;c cháº¿ Ä‘á»™, kh&ocirc;ng giá»›i háº¡n nhÆ° mong Ä‘á»£i.</span></p>', 1, '2190000', '8244b31c36.webp'),
(24, 'Chuá»™t Razer Deathadder V2 Halo Infinite Edition', 11, 1, '<p><span>Chuá»™t <strong>Razer DeathAdder V2</strong></span><span>&nbsp;Ä‘Æ°á»£c biáº¿t Ä‘áº¿n l&agrave; máº«u chuá»™t chÆ¡i game tháº¿ há»‡ má»›i nháº¥t cá»§a Razer. Vá»›i thiáº¿t káº¿ vá»›i c&ocirc;ng th&aacute;i há»c Ä‘áº·c biá»‡t cho ngÆ°á»i d&ugrave;ng tay pháº£i, c&ugrave;ng vá»›i Ä‘&oacute; l&agrave; cáº£m biáº¿n quang há»c Razer 5G ch&iacute;nh x&aacute;c nháº¥t. Ä&acirc;y l&agrave; má»™t trong nhá»¯ng máº«u chuá»™t gaming Ä‘Æ°á»£c Ä‘&aacute;nh gi&aacute; cao khi mang láº¡i sá»± h&agrave;i l&ograve;ng tuyá»‡t Ä‘á»‘i cho c&aacute;c game thá»§. Táº¡i APShop, ch&uacute;ng t&ocirc;i ph&acirc;n phá»‘i phi&ecirc;n báº£n Ä‘áº·c biá»‡t cá»§a máº«u chuá»™t n&agrave;y vá»›i thiáº¿t káº¿ mang phong c&aacute;ch cá»§a tá»±a game HALO Ä‘&igrave;nh Ä‘&aacute;m.</span></p>', 1, '2090000', 'fa8f4ead40.webp'),
(25, 'Chuá»™t gaming DareU A960 Yellow Ultralight', 11, 4, '<p><span>Chuá»™t Gaming <strong>DAREU A960 YELLOW ULTRALIGHT</strong></span><span>&nbsp;c&oacute; thiáº¿t káº¿ khung b&ecirc;n trong s&aacute;ng táº¡o, cáº¥u tr&uacute;c vá» Ä‘Æ°á»£c thiáº¿t káº¿ 3D ti&ecirc;n tiáº¿n, th&acirc;n chuá»™t nháº¹ 65g kh&ocirc;ng Ä‘á»¥c lá»—, vá» má»ng v&agrave; cháº¯c cháº¯n, th&acirc;n chuá»™t nháº¹ c&oacute; thá»ƒ cung cáº¥p kháº£ nÄƒng di chuyá»ƒn linh hoáº¡t hÆ¡n trong chiáº¿n trÆ°á»ng game khá»‘c liá»‡t.</span></p>', 0, '740000', '85d7888c4d.webp'),
(26, 'BÃ n phÃ­m cÆ¡ DareU EK807G Wireless', 9, 4, '<p><strong>DareU EK807G</strong><span>&nbsp;sá»­ dá»¥ng&nbsp;</span><span><span>2 vi&ecirc;n pin AAA</span></span><span>&nbsp;cá»±c ká»³ th&ocirc;ng dá»¥ng, dá»… mua.&nbsp;</span><span><span>Thá»i lÆ°á»£ng sá»­ dá»¥ng pin tá»‘i Ä‘a l&ecirc;n tá»›i 6 th&aacute;ng</span></span><span>, má»™t con sá»‘ thá»±c sá»± ráº¥t ráº¥t áº¥n tÆ°á»£ng. V&igrave; váº­y m&agrave; ngÆ°á»i d&ugrave;ng c&oacute; thá»ƒ ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m&nbsp;</span><span><span>DareU EK807G</span></span><span>&nbsp;ho&agrave;n to&agrave;n Ä‘&aacute;p á»©ng c&ocirc;ng viá»‡c sá»­ dá»¥ng ph&iacute;m l&acirc;u d&agrave;i, bá»n bá»‰ v&agrave; ráº¥t tiá»‡n lá»£i. Chá»— láº¯p pin, c&oacute; sáºµn khe cáº¥t Ä‘áº§u USB Receiver.</span></p>', 0, '640000', '4b7889f4a9.webp');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderId` int(11) NOT NULL,
  `sliderName` varchar(255) NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`sliderId`, `sliderName`, `slider_image`, `type`) VALUES
(6, 'slider1', '6040eb22f6.jpg', 1),
(7, 'slider2', 'a7c5645c46.jpg', 1),
(8, 'slider3', '81a231f4e8.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`,`customer_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `catId` (`catId`,`brandId`),
  ADD KEY `brandId` (`brandId`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`sliderId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `sliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `tbl_cart_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `tbl_product` (`productId`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_order_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `tbl_product` (`productId`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`catId`) REFERENCES `tbl_category` (`catId`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_product_ibfk_2` FOREIGN KEY (`brandId`) REFERENCES `tbl_brand` (`brandId`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
