-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2022 at 09:28 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--
CREATE DATABASE IF NOT EXISTS `ecom` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ecom`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2022-03-24 16:21:18', '23-04-2022 07:00:25 AM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(9, 'Computers ', 'All kinds Accessories & Peripherals of computer', '2022-05-31 17:42:51', NULL),
(10, 'Gold', 'All types of Jewellery store', '2022-05-31 18:06:38', NULL),
(11, 'Furniture', 'all type of furniture available', '2022-05-31 18:15:56', NULL),
(12, 'Dresses', '', '2022-05-31 18:25:50', NULL),
(13, 'Books', 'all types of books available here', '2022-05-31 19:53:58', '01-06-2022 01:24:55 AM');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(14, 2, '42', 1, '2022-06-01 18:53:22', 'COD', 'Delivered to Customer'),
(15, 2, '49', 2, '2022-06-01 18:53:22', 'COD', 'in Process'),
(16, 1, '46', 1, '2022-06-01 19:11:29', 'Internet Banking', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(16, 15, 'in Process', 'in processing mode', '2022-06-01 19:01:05'),
(17, 14, 'in Process', 'forward hub to airport', '2022-06-01 19:01:47'),
(18, 14, 'Deliver on the way', 'go for deliver', '2022-06-01 19:06:23'),
(19, 14, 'Delivered to Customer', 'successfully delivered customer', '2022-06-01 19:07:22');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(11, 50, 5, 5, 5, 'swati', 'services very well', 'good products', '2022-06-01 18:56:28'),
(12, 44, 1, 1, 1, 'minu', 'not a brand items', 'very bad colours', '2022-06-01 18:58:48');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(39, 9, 22, 'Dell Professional 21.5 inch Full HD Monitor ', 'Dell India', 9500, 9850, '<table class=\"a-normal a-spacing-micro\" style=\"width: 378.969px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 4px !important;\"><tbody style=\"box-sizing: border-box;\"><tr class=\"a-spacing-small po-special_feature\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 99.2031px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Special Feature</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 279.766px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">Pivot Adjustment, height adjustable, flicker free</span></td></tr><tr class=\"a-spacing-small po-brand\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 99.2031px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Brand</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 279.766px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">Dell</span></td></tr><tr class=\"a-spacing-small po-mounting_type\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 99.2031px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Mounting Type</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 279.766px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">Wall Mount</span></td></tr><tr class=\"a-spacing-small po-hardware_interface\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 99.2031px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Hardware Interface</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 279.766px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">HDMI</span></td></tr><tr class=\"a-spacing-small po-connectivity_technology\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 99.2031px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Connector Type</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 279.766px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">VGA, USB, HDMI</span></td></tr></tbody></table>', 'mo3.jpg', 'mo1.jpg', 'monitor.jpg', 200, 'In Stock', '2022-05-31 17:56:17', NULL),
(40, 10, 23, 'Sukkhi Glorious Kundan  Necklace ', 'Khimji', 95999, 985000, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Contains : 1 Necklace + 1 Pair of Earring + 1 Maangtikka</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Dimension : Necklace Length - 18 cm| Necklace Width - 12 cm| Earring Length - 5 cm| Earring Width - 3 cm| Maangtikka Length - 12 cm| Maangtikka Width - 3 cm</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Traditional Kundan Gold Plated Choker Necklace Set for Women will complement any Indian attire.&nbsp;</span></li></ul>', 'j1.jpg', 'j13.jpg', 'gold.jpg', 500, 'In Stock', '2022-05-31 18:11:42', NULL),
(41, 11, 24, 'Chairs Wooden Dining Set Furniture ', 'Porash Furniture', 15499, 19500, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">6 Seater Dining Table Dimension: Length 63 IN x Width 35 IN x Height 30 IN, Chair: Length 17.7 IN x Width 19.6 IN x Height 33.8 IN</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">6 Seater Dining Table Set Material: Solid Sheesham Wood, Color: Walnut Finish, Style: Contemporary</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Placing the 6-seater dining table set will give an elegant look to the dining area. The legs of the dining table are sturdy in nature and can withstand the weight put on it. Chairs have beautiful designs which are another significant advantage of having this dining set in your house.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">This six seater dining table set is perfect design for your home casual dining space: mixing a contemporary design with Classic comfort, This dining table Set will look great in your kitchen or dining room.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">This dining table set requires basic self assembly at customers end and comes with self assembly (DIY) instructions along with necessary accessories.</span></li></ul>', 'aset1.jpg', 'f9.jpg', 'f6.jpg', 0, 'In Stock', '2022-05-31 18:19:46', NULL),
(42, 12, 25, 'Flower Pattern Burgundy Printed Skater Dresses', 'PURVAJA', 1499, 1999, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Care Instructions: Machine Wash</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Homegrown Indian Brand - One-stop-shop for Official Merch of all your favorite superheroes, films, TV shows and cartoons.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Material: 100% Cotton</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Size Guide: XS(30\"), S(32\"), M(34\"), L(36\"), XL(39\") &amp; XXL(41\")</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Standard Sizing: We follow U.S. and EU standards and our sizes do not vary by more than +/- 0.5 inches.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">High Definition Print - Using the highest quality solvents and colors combines with fully automated machines, we ensure our t-shirt dresses have razor-sharp prints that highlight every single detail.</span></li></ul>', '61uy2Pk4MYL._AC_UL320_.jpg', '61QxyKCT2sL._AC_UL320_.jpg', '81DOGmj1q0L._AC_UL320_.jpg', 0, 'In Stock', '2022-05-31 18:44:35', NULL),
(43, 12, 26, 'Cutout Sequin Junior Flower Girl Dress', 'LONDON ', 890, 999, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Please have a look at our PINK SIZE CHART on the top left hand side next to the main photo of the listing. We used an additional petticoat for the picture that is not included with the dress.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Material: Elegant Satin Poly / Sequin / Satin Lining / Elegant Tulle</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">The elegant bodice feature is made of sparkling sequin &amp; satin lining with heart cutout design on the back. The waistline is decorated with double ribbon sashes.</span></li></ul>', 'b3.jpg', 'b4.jpg', 'b6.jpg', 0, 'In Stock', '2022-05-31 18:48:01', NULL),
(44, 12, 27, 'T-shirt', 'Polo', 499, 699, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Care Instructions: Machine Wash</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Fit Type: Regular</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Tshirt Apricot</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Orange</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Mens</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Us Polo Ass</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Closure Type: Pull On; Collar Style: Classic Collar</span></li></ul>', 'ts2.jpg', 'ts5.jpg', 'ts7.jpg', 0, 'In Stock', '2022-05-31 18:52:25', NULL),
(45, 11, 40, 'Cane Arts Wooden Bamboo Brown Antique Chair', 'CANE ARTS', 700, 7500, '<table class=\"a-normal a-spacing-micro\" style=\"width: 318.312px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 4px !important;\"><tbody style=\"box-sizing: border-box;\"><tr class=\"a-spacing-small po-color\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 100.688px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Colour</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 217.625px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">Brown</span></td></tr><tr class=\"a-spacing-small po-material\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 100.688px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Material</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 217.625px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">Wood</span></td></tr><tr class=\"a-spacing-small po-item_dimensions\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 100.688px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Item Dimensions LxWxH</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 217.625px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">10 x 10 x 5 Centimeters</span></td></tr><tr class=\"a-spacing-small po-item_weight\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 100.688px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Item Weight</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 217.625px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">999 Grams</span></td></tr><tr class=\"a-spacing-small po-brand\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 100.688px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Brand</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 217.625px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">CANE ARTS</span></td></tr></tbody></table>', 'ch3.jpg', 'ch2.jpg', 'ch1.jpg', 150, 'In Stock', '2022-05-31 18:56:48', NULL),
(46, 11, 42, 'Solid Wood Palang Double Bed Wooden ', 'GANPATI ARTS', 29990, 35600, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Wooden King Size Bed Dimension : Length - 74 inch, Width - 88 inch, Height - 31.5 inch ; Mattress Size : Length - 72 X 78 inch</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Wooden King Size Bed Material: Solid Sheesham Wood, Color: Walnut Finish, Style: Contemporary, Mattress Color: Beige Colour</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Equipped with spacious box storage for storing clothes, toys, linens, and other accessories to reduce clutter in the bedroom</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">The Wooden King Size Bed Furniture has been one of the most essential and integral part of the Bedroom Furniture. The Wooden Bed has fine finishing that is ensuring no rough ends to the Bed Design.</span></li></ul>', 'bed3.jpg', 'bed1.jpg', 'bed2.jpg', 1100, 'In Stock', '2022-05-31 19:00:55', NULL),
(47, 10, 33, 'Joyalukkas Pride Diamond Ring', 'Lalchand', 48599, 49850, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">his ring is made from 18k gold</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Diamond carat 0.04, color EF, Ideal stone cut with VVS clarity</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Diamond has been verified by seller, and is set in 18 karat gold certified by BIS</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">This product comes with an IGI certificate</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">All diamonds are warrantied to be conflict free</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">BIS Hallmark is NOT a separate certificate. It is an inscription made on the product</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">To ensure a secured delivery experience, delivery associate will request for a government issued photo ID of the customer at the time of order delivery</span></li></ul>', 'ring1.jpg', 'bootstrap-ring.png', 'j17.png', 0, 'In Stock', '2022-05-31 19:09:33', NULL),
(48, 10, 37, 'Gold Tamba kada Hand Bracelet', 'Kalyani Jewellery ', 39000, 39500, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Latest stylish bracelets for men boys Classical .Design - Just simple Bracelet, a eternal Classical Design, simplest is the best</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Workmanship: Produced under Serious Quality Control; One by One Checking; Focus on Detail Processing. Top Quality/Never Fade/Brand New Design/Anty-Allegy</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Gift for Him- Ideal Valentine, Birthday, Anniversary Gift for someone you Love</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">It is advisable to store jewellery in a zip lock pouch (air tight pouch), keep away from water perfume and otHer chemicals and clean it with dry and soft cloth</span></li></ul>', 'bs3.jpg', 'bs1.jpg', 'bs4.jpg', 0, 'In Stock', '2022-05-31 19:14:30', NULL),
(49, 9, 28, 'Dell 15 (2021) Intel i5-11320H 15.6 inches FHD Display Laptop', 'Dell India', 55000, 56500, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">i5-11320H Processor: 3.20 Ghz Base Speed</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">16GB DDR4, 512GB SSD, WIN 11 + Office H&amp;S 2021</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">INTEGRATED Graphics Card</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">15.6\" FHD WVA AG Narrow Border 250 nits &amp; Backlit Keyboard + Fingerprint Reader</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">HDMI 1.4b, (1) USB 3.2 Gen 2x2 Type-C (DP/PowerDelivery) – i3/i5, (2) USB 3.2 Gen 1 Type-A, SD card reader, (1) Headphone &amp; Microphone Audio Jack</span></li></ul>', 'lp2.jpg', 'lp4.jpg', 'lp1.jpg', 500, 'In Stock', '2022-05-31 19:19:03', NULL),
(50, 9, 43, 'OnePlus Nord CE 2 5G (Bahamas Blue, 8GB RAM, 128GB Storage)', 'OnePlus', 25999, 28999, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Segment Best 108MP Quad Camera Setup, with exciting features like Single Take, Object Eraser, and Photo Remaster</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">6.7-inch Super AMOLED Plus Display, FHD+ resolution, 1080x2400 pixels with 120Hz Refresh Rate</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">MTK D900 Octa Core 2.4GHz 6nm Processor with 4x4 Mimo Band support for a HyperFast 5G experience</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Massive 5000 mAh Battery | Memory, Storage &amp; SIM: 6GB RAM | RAM Plus upto 6GB |128GB internal memory expandable up to 1TB</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Latest Android v12.0, One UI 4 operating system</span></li></ul>', 'm7.jpg', 'm12.jpg', 'm6.jpg', 0, 'In Stock', '2022-05-31 19:21:47', NULL),
(51, 13, 47, 'The Power of A Positive Attitude', 'PHI', 4500, 499, '<span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Have you ever wondered how your attitude can influence your Success and failure? Have you ever considered the power of saying ‘I Can’, ‘I must’, ‘I will’? “I am not saying a positive attitude can make you successful. I am saying a positive attitude will make you successful.” – Norman Vincent Peale from helping you interpret and understand the true nature of your current attitude to building up self-confidence, which is a must for an affirmative attitude,</span><br>', 'book1.jpg', 'book3.jpg', 'book2.jpg', 0, 'In Stock', '2022-05-31 19:59:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(22, 9, 'Monitor', '2022-05-31 17:43:25', NULL),
(23, 10, 'Necklace Set for Women ', '2022-05-31 18:08:48', NULL),
(24, 11, 'Dining Table Set ', '2022-05-31 18:16:16', NULL),
(25, 12, 'Womens Dress', '2022-05-31 18:26:35', NULL),
(26, 12, 'Kids Dress', '2022-05-31 18:26:58', NULL),
(27, 12, 'Mens Dress', '2022-05-31 18:27:21', NULL),
(28, 9, 'Laptop', '2022-05-31 18:27:33', NULL),
(29, 9, 'Mouse', '2022-05-31 18:27:41', NULL),
(30, 9, 'Keyboard', '2022-05-31 18:27:57', NULL),
(31, 9, 'UPS', '2022-05-31 18:28:05', NULL),
(32, 9, 'Speaker', '2022-05-31 18:28:26', NULL),
(33, 10, 'Ring', '2022-05-31 18:32:17', NULL),
(34, 10, 'Mangal Sutra', '2022-05-31 18:32:41', NULL),
(35, 10, 'Chain', '2022-05-31 18:34:41', NULL),
(36, 10, 'Checker Rings', '2022-05-31 18:35:29', NULL),
(37, 10, 'Bracelets', '2022-05-31 18:36:05', NULL),
(38, 10, 'Earrings', '2022-05-31 18:37:22', NULL),
(39, 11, 'Bar Stool', '2022-05-31 18:39:07', NULL),
(40, 11, 'Chair', '2022-05-31 18:39:16', NULL),
(41, 11, 'Table', '2022-05-31 18:40:15', NULL),
(42, 11, 'Bed', '2022-05-31 18:40:40', NULL),
(43, 9, 'Mobile', '2022-05-31 19:19:52', NULL),
(44, 13, 'Novel', '2022-05-31 19:56:22', NULL),
(45, 13, 'Networking', '2022-05-31 19:56:37', NULL),
(46, 13, 'Programming', '2022-05-31 19:56:51', NULL),
(47, 13, 'Success Story', '2022-05-31 19:57:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(31, 'abhipsaswati@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-01 18:48:04', '02-06-2022 12:29:55 AM', 1),
(32, 'abhipsaswati@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-01 19:02:18', '02-06-2022 12:38:58 AM', 1),
(33, 'supravadhal63@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-01 19:09:37', NULL, 0),
(34, 'shirshamahakul66448@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-01 19:10:15', '02-06-2022 12:42:40 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Shirsha Mahakul ', 'shirshamahakul66448@gmail.com', 7873962052, '202cb962ac59075b964b07152d234b70', 'dhobi linem, Buxi bazar', 'ODISHA', 'CUTTACK', 754032, 'NUKHAPADA', 'ODISHA', 'CUTTACK', 754032, '2022-04-23 02:15:50', NULL),
(2, 'Swati Abhipsa', 'abhipsaswati@gmail.com', 7325860253, '202cb962ac59075b964b07152d234b70', 'College Square\r\nMadhupatana ', 'Odisha', 'Cuttack', 753010, 'Buxi Bazar', 'ODISHA', 'CUTTACK', 754032, '2022-04-24 10:58:28', NULL),
(3, 'Somyalipsa Mohanty', 'slmohanty195@gmail.com', 8958815534, '81dc9bdb52d04dc20036dbd8313ed055', 'NUKHAPADA', 'ODISHA', 'CUTTACK', 754032, 'Dept of IST\r\nRavenshaw University', 'ODISHA', 'CUTTACK', 753001, '2022-04-26 19:45:02', NULL),
(4, 'Suprava Dhal', 'supravadhal63@gmail.com', 9658772201, '7873962052\r\n202cb962ac59075b964b07152d234b70', 'cda sec-9 cutack', 'odisha', 'cuttack', 753014, 'Ravenshaw, College square\r\n\r\ncuttack', 'odisha', NULL, 753003, '2022-05-31 17:38:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(2, 2, 50, '2022-06-01 18:56:39'),
(3, 2, 45, '2022-06-01 18:56:55'),
(4, 2, 40, '2022-06-01 18:57:10'),
(5, 1, 51, '2022-06-01 19:10:30'),
(7, 1, 47, '2022-06-01 19:10:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
