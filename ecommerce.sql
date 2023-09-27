-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2023 at 12:51 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `cardekhodata`
--

CREATE TABLE `cardekhodata` (
  `id` int(11) NOT NULL,
  `car_name` text NOT NULL,
  `brand` text NOT NULL,
  `model` text NOT NULL,
  `min_cost_price` bigint(20) NOT NULL,
  `max_cost_price` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cardekhodata`
--

INSERT INTO `cardekhodata` (`id`, `car_name`, `brand`, `model`, `min_cost_price`, `max_cost_price`) VALUES
(1, 'Maruti Alto', 'Maruti', 'Alto', 357003, 465401),
(2, 'Hyundai Grand', 'Hyundai', 'Grand', 711000, 748000),
(3, 'Hyundai i20', 'Hyundai', 'i20', 854082, 1307925),
(4, 'Ford Ecosport', 'Ford', 'Ecosport', 1014000, 1379000),
(5, 'Maruti Wagon R', 'Maruti', 'Wagon R', 516000, 694000),
(6, 'Hyundai i10', 'Hyundai', 'i10', 654000, 663000),
(7, 'Hyundai Venue', 'Hyundai', 'Venue', 770000, 1302000),
(8, 'Maruti Swift', 'Maruti', 'Swift', 635000, 927000),
(9, 'Hyundai Verna', 'Hyundai', 'Verna', 1309000, 1829000),
(10, 'Renault Duster', 'Renault', 'Duster', 1143444, 1690333),
(11, 'Mini Cooper', 'Mini', 'Cooper', 4238800, 5239200),
(12, 'Maruti Ciaz', 'Maruti', 'Ciaz', 978964, 1340179),
(13, 'Mercedes-Benz C-Class', 'Mercedes-Benz', 'C-Class', 5130000, 6408000),
(14, 'Toyota Innova', 'Toyota', 'Innova', 2017158, 2955126),
(15, 'Maruti Baleno', 'Maruti', 'Baleno', 681000, 1054000),
(16, 'Maruti Swift Dzire', 'Maruti', 'Swift Dzire', 698000, 1040000),
(17, 'Volkswagen Vento', 'Volkswagen', 'Vento', 1012000, 1608000),
(18, 'Hyundai Creta', 'Hyundai', 'Creta', 1095000, 1830000),
(19, 'Honda City', 'Honda', 'City', 1236000, 1657000),
(20, 'Mahindra Bolero', 'Mahindra', 'Bolero', 905000, 1069000),
(21, 'Toyota Fortuner', 'Toyota', 'Fortuner', 3747000, 4330000),
(22, 'Renault KWID', 'Renault', 'KWID', 381000, 629000),
(23, 'Honda Amaze', 'Honda', 'Amaze', 704000, 990000),
(24, 'Hyundai Santro', 'Hyundai', 'Santro', 554219, 725658),
(25, 'Mahindra XUV500', 'Mahindra', 'XUV500', 1659000, 2336000),
(26, 'Mahindra KUV100', 'Mahindra', 'KUV100', 688000, 875000),
(27, 'Maruti Ignis', 'Maruti', 'Ignis', 577000, 856000),
(28, 'Datsun RediGO', 'Datsun', 'RediGO', 329000, 550000),
(29, 'Mahindra Scorpio', 'Mahindra', 'Scorpio', 1510000, 1992000),
(30, 'Mahindra Marazzo', 'Mahindra', 'Marazzo', 1389000, 1643000),
(31, 'Ford Aspire', 'Ford', 'Aspire', 685000, 870000),
(32, 'Ford Figo', 'Ford', 'Figo', 602000, 791000),
(33, 'Maruti Vitara', 'Maruti', 'Vitara', 839666, 1323333),
(34, 'Tata Tiago', 'Tata', 'Tiago', 563000, 789000),
(35, 'Volkswagen Polo', 'Volkswagen', 'Polo', 694000, 1119000),
(36, 'Kia Seltos', 'Kia', 'Seltos', 1119000, 1920000),
(37, 'Maruti Celerio', 'Maruti', 'Celerio', 530000, 665000),
(38, 'Datsun GO', 'Datsun', 'GO', 480000, 788000),
(39, 'BMW 5', 'BMW', '5', 7440307, 8352307),
(40, 'Honda CR-V', 'Honda', 'CR-V', 3264000, 3405000),
(41, 'Ford Endeavour', 'Ford', 'Endeavour', 3627000, 4273000),
(42, 'Mahindra KUV', 'Mahindra', 'KUV', 687900, 872866),
(43, 'Honda Jazz', 'Honda', 'Jazz', 856000, 1099000),
(44, 'BMW 3', 'BMW', '3', 5124421, 5811851),
(45, 'Audi A4', 'Audi', 'A4', 5004692, 5511153),
(46, 'Tata Tigor', 'Tata', 'Tigor', 632380, 875952),
(47, 'Maruti Ertiga', 'Maruti', 'Ertiga', 926776, 1149968),
(48, 'Tata Safari', 'Tata', 'Safari', 1485000, 2141000),
(49, 'Mahindra Thar', 'Mahindra', 'Thar', 1412000, 1620000),
(50, 'Tata Hexa', 'Tata', 'Hexa', 1410000, 1410000),
(51, 'Land Rover Rover', 'Land Rover', 'Rover', 7025000, 7415000),
(52, 'Maruti Eeco', 'Maruti', 'Eeco', 463000, 509000),
(53, 'Audi A6', 'Audi', 'A6', 6511200, 7091000),
(54, 'Mercedes-Benz E-Class', 'Mercedes-Benz', 'E-Class', 722900000, 17200000),
(55, 'Audi Q7', 'Audi', 'Q7', 8060000, 8060000),
(56, 'BMW Z4', 'BMW', 'Z4', 7706000, 9414000),
(57, 'BMW 6', 'BMW', '6', 7837000, 7837000),
(58, 'Jaguar XF', 'Jaguar', 'XF', 6813000, 6813000),
(59, 'BMW X5', 'BMW', 'X5', 8378000, 9529000),
(60, 'MG Hector', 'MG', 'Hector', 1699000, 2175000),
(61, 'Honda Civic', 'Honda', 'Civic', 2084000, 2463000),
(62, 'Isuzu D-Max', 'Isuzu', 'D-Max', 1974000, 2379000),
(63, 'Porsche Cayenne', 'Porsche', 'Cayenne', 13700000, 22100000),
(64, 'BMW X1', 'BMW', 'X1', 4986000, 5148000),
(65, 'Skoda Rapid', 'Skoda', 'Rapid', 868000, 1533000),
(66, 'Ford Freestyle', 'Ford', 'Freestyle', 691000, 885000),
(67, 'Skoda Superb', 'Skoda', 'Superb', 3537000, 3827000),
(68, 'Tata Nexon', 'Tata', 'Nexon', 988000, 1525000),
(69, 'Mahindra XUV300', 'Mahindra', 'XUV300', 930000, 1327000),
(70, 'Maruti Dzire VXI', 'Maruti', 'Dzire VXI', 685000, 1030000),
(71, 'Volvo S90', 'Volvo', 'S90', 6772000, 6772000),
(72, 'Honda WR-V', 'Honda', 'WR-V', 982000, 1116000),
(73, 'Maruti XL6', 'Maruti', 'XL6', 1126000, 1366000),
(74, 'Renault Triber', 'Renault', 'Triber', 614000, 887000),
(75, 'Lexus ES', 'Lexus', 'ES', 6576600, 7179000),
(76, 'Jeep Wrangler', 'Jeep', 'Wrangler', 7356000, 7929000),
(77, 'Toyota Camry', 'Toyota', 'Camry', 4500000, 4500000),
(78, 'Hyundai Elantra', 'Hyundai', 'Elantra', 2225000, 2489000),
(79, 'Toyota Yaris', 'Toyota', 'Yaris', 1088000, 1743000),
(80, 'Mercedes-Benz GL-Class', 'Mercedes-Benz', 'GL-Class', 7378454, 7378454),
(81, 'BMW 7', 'BMW', '7', 16200000, 16200000),
(82, 'Maruti S-Presso', 'Maruti', 'S-Presso', 427000, 573000),
(83, 'Maruti Dzire LXI', 'Maruti', 'Dzire LXI', 656000, 1004000),
(84, 'Hyundai Aura', 'Hyundai', 'Aura', 676000, 992000),
(85, 'Volvo XC', 'Volvo', 'XC', 958100000, 10400000),
(86, 'Maserati Ghibli', 'Maserati', 'Ghibli', 16400000, 16800000),
(87, 'Bentley Continental', 'Bentley', 'Continental', 37700000, 44800000),
(88, 'Honda CR', 'Honda', 'CR', 3268000, 3409000),
(89, 'Nissan Kicks', 'Nissan', 'Kicks', 1100000, 1643000),
(90, 'Mercedes-Benz S-Class', 'Mercedes-Benz', 'S-Class', 16700000, 17800000),
(91, 'Hyundai Tucson', 'Hyundai', 'Tucson', 2921000, 3242000),
(92, 'Tata Harrier', 'Tata', 'Harrier', 1700000, 2435000),
(93, 'BMW X3', 'BMW', 'X3', 7059000, 7059000),
(94, 'Skoda Octavia', 'Skoda', 'Octavia', 4382312, 4382312),
(95, 'Jeep Compass', 'Jeep', 'Compass', 1989000, 2981000),
(96, 'Mercedes-Benz CLS', 'Mercedes-Benz', 'CLS', 10300000, 10300000),
(97, 'Datsun redi-GO', 'Datsun', 'redi-GO', 4, 632000),
(98, 'Toyota Glanza', 'Toyota', 'Glanza', 851000, 1075000),
(99, 'Porsche Macan', 'Porsche', 'Macan', 8258000, 9901000),
(100, 'BMW X4', 'BMW', 'X4', 7491000, 8269000),
(101, 'Maruti Dzire ZXI', 'Maruti', 'Dzire ZXI', 692000, 1031000),
(102, 'Volvo XC90', 'Volvo', 'XC90', 9, 10700000),
(103, 'Jaguar F-PACE', 'Jaguar', 'F-PACE', 7600000, 7600000),
(104, 'Audi A8', 'Audi', 'A8', 18600000, 18600000),
(105, 'ISUZU MUX', 'ISUZU', 'MUX', 3292000, 3527000),
(106, 'Ferrari GTC4Lusso', 'Ferrari', 'GTC4Lusso', 50100000, 58400000),
(107, 'Mercedes-Benz GLS', 'Mercedes-Benz', 'GLS', 12700000, 12700000),
(108, 'Nissan X-Trail', 'Nissan', 'X-Trail', 2276000, 2276000),
(109, 'Jaguar XE', 'Jaguar', 'XE', 5373000, 5586000),
(110, 'Volvo XC60', 'Volvo', 'XC60', 7129333, 7129333),
(111, 'Porsche Panamera', 'Porsche', 'Panamera', 17500000, 30200000),
(112, 'Mahindra Alturas', 'Mahindra', 'Alturas', 3489000, 3791000),
(113, 'Tata Altroz', 'Tata', 'Altroz', 635000, 981000),
(114, 'Lexus NX', 'Lexus', 'NX', 6872000, 7511000),
(115, 'Kia Carnival', 'Kia', 'Carnival', 2962000, 4020000),
(116, 'Mercedes-AMG C', 'Mercedes-AMG', 'C', 476200000, 1),
(117, 'Lexus RX', 'Lexus', 'RX', 11900000, 11900000),
(118, 'Rolls-Royce Ghost', 'Rolls-Royce', 'Ghost', 79600000, 91100000),
(119, 'Maserati Quattroporte', 'Maserati', 'Quattroporte', 20200000, 20900000),
(120, 'Isuzu MUX', 'Isuzu', 'MUX', 3244000, 3475000),
(121, 'Force Gurkha', 'Force', 'Gurkha', 1, 1),
(5455, 'Maruti Alto 222', 'Maruti', 'Alto', 357003, 465401);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `product_id` text DEFAULT NULL,
  `user_id` text DEFAULT NULL,
  `qty` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `product_id`, `user_id`, `qty`) VALUES
(41, '4', '2', '8');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Electronics'),
(2, 'Cloths'),
(3, 'Shoes');

-- --------------------------------------------------------

--
-- Table structure for table `order_product_details`
--

CREATE TABLE `order_product_details` (
  `order_product_details_id` int(11) NOT NULL,
  `order_id` text DEFAULT NULL,
  `product_id` text DEFAULT NULL,
  `user_id` text DEFAULT NULL,
  `qty` text DEFAULT NULL,
  `product_name` text DEFAULT NULL,
  `product_price` text DEFAULT NULL,
  `product_company` text DEFAULT NULL,
  `product_color` text DEFAULT NULL,
  `product_discription` text DEFAULT NULL,
  `product_image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_product_details`
--

INSERT INTO `order_product_details` (`order_product_details_id`, `order_id`, `product_id`, `user_id`, `qty`, `product_name`, `product_price`, `product_company`, `product_color`, `product_discription`, `product_image`) VALUES
(8, '21', '4', '2', '2', 'Mobile 1', '10000', 'Redmi', '#000000', '2 GB RAM | 32 GB ROM | Expandable Upto 512 GB\n16.59 cm (6.53 inch) HD+ Display\n13MP Rear Camera | 5MP Front Camera\n5000 mAh Battery\nMediaTek Helio G25 Processor\n1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '1656940583183sport-9a-redmi-original-imag7chxqqu7h5hs.webp'),
(9, '21', '5', '2', '1', 'Mobile2', '15000', 'Samsung', '#00e1ff', '2 GB RAM | 32 GB ROM | Expandable Upto 512 GB\n16.59 cm (6.53 inch) HD+ Display\n13MP Rear Camera | 5MP Front Camera\n5000 mAh Battery\nMediaTek Helio G25 Processor\n1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '165694168285810a-b09xb8gm9r-redmi-original-imagdrghswubhh2p.webp'),
(10, '22', '4', '2', '2', 'Mobile 1', '10000', 'Redmi', '#000000', '2 GB RAM | 32 GB ROM | Expandable Upto 512 GB\n16.59 cm (6.53 inch) HD+ Display\n13MP Rear Camera | 5MP Front Camera\n5000 mAh Battery\nMediaTek Helio G25 Processor\n1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '1656940583183sport-9a-redmi-original-imag7chxqqu7h5hs.webp'),
(11, '22', '5', '2', '1', 'Mobile2', '15000', 'Samsung', '#00e1ff', '2 GB RAM | 32 GB ROM | Expandable Upto 512 GB\n16.59 cm (6.53 inch) HD+ Display\n13MP Rear Camera | 5MP Front Camera\n5000 mAh Battery\nMediaTek Helio G25 Processor\n1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '165694168285810a-b09xb8gm9r-redmi-original-imagdrghswubhh2p.webp'),
(12, '23', '4', '2', '2', 'Mobile 1', '10000', 'Redmi', '#000000', '2 GB RAM | 32 GB ROM | Expandable Upto 512 GB\n16.59 cm (6.53 inch) HD+ Display\n13MP Rear Camera | 5MP Front Camera\n5000 mAh Battery\nMediaTek Helio G25 Processor\n1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '1656940583183sport-9a-redmi-original-imag7chxqqu7h5hs.webp'),
(13, '23', '5', '2', '1', 'Mobile2', '15000', 'Samsung', '#00e1ff', '2 GB RAM | 32 GB ROM | Expandable Upto 512 GB\n16.59 cm (6.53 inch) HD+ Display\n13MP Rear Camera | 5MP Front Camera\n5000 mAh Battery\nMediaTek Helio G25 Processor\n1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '165694168285810a-b09xb8gm9r-redmi-original-imagdrghswubhh2p.webp'),
(14, '24', '4', '2', '7', 'Mobile 1', '10000', 'Redmi', '#000000', '2 GB RAM | 32 GB ROM | Expandable Upto 512 GB\n16.59 cm (6.53 inch) HD+ Display\n13MP Rear Camera | 5MP Front Camera\n5000 mAh Battery\nMediaTek Helio G25 Processor\n1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '1656940583183sport-9a-redmi-original-imag7chxqqu7h5hs.webp'),
(15, '24', '5', '2', '2', 'Mobile2', '15000', 'Samsung', '#00e1ff', '2 GB RAM | 32 GB ROM | Expandable Upto 512 GB\n16.59 cm (6.53 inch) HD+ Display\n13MP Rear Camera | 5MP Front Camera\n5000 mAh Battery\nMediaTek Helio G25 Processor\n1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '165694168285810a-b09xb8gm9r-redmi-original-imagdrghswubhh2p.webp'),
(16, '25', '5', '2', '7', 'Mobile2', '15000', 'Samsung', '#00e1ff', '2 GB RAM | 32 GB ROM | Expandable Upto 512 GB\n16.59 cm (6.53 inch) HD+ Display\n13MP Rear Camera | 5MP Front Camera\n5000 mAh Battery\nMediaTek Helio G25 Processor\n1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '165694168285810a-b09xb8gm9r-redmi-original-imagdrghswubhh2p.webp'),
(17, '26', '4', '2', '10', 'Mobile 1', '10000', 'Redmi', '#000000', '2 GB RAM | 32 GB ROM | Expandable Upto 512 GB\n16.59 cm (6.53 inch) HD+ Display\n13MP Rear Camera | 5MP Front Camera\n5000 mAh Battery\nMediaTek Helio G25 Processor\n1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '1656940583183sport-9a-redmi-original-imag7chxqqu7h5hs.webp'),
(18, '27', '5', '2', '12', 'Mobile2', '15000', 'Samsung', '#00e1ff', '2 GB RAM | 32 GB ROM | Expandable Upto 512 GB\n16.59 cm (6.53 inch) HD+ Display\n13MP Rear Camera | 5MP Front Camera\n5000 mAh Battery\nMediaTek Helio G25 Processor\n1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '165694168285810a-b09xb8gm9r-redmi-original-imagdrghswubhh2p.webp');

-- --------------------------------------------------------

--
-- Table structure for table `order_tbl`
--

CREATE TABLE `order_tbl` (
  `order_tbl_id` int(11) NOT NULL,
  `area` text DEFAULT NULL,
  `landmark` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `dist` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `pincode` text DEFAULT NULL,
  `order_date` text NOT NULL,
  `payment_type` text DEFAULT NULL,
  `ttl_order_amt` text DEFAULT NULL,
  `ttl_order_qty` text DEFAULT NULL,
  `user_id` text DEFAULT NULL,
  `status` text NOT NULL,
  `processing_date` text NOT NULL,
  `dispatch_date` text NOT NULL,
  `delivered_date` text NOT NULL,
  `cancel_date` text NOT NULL,
  `reject_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_tbl`
--

INSERT INTO `order_tbl` (`order_tbl_id`, `area`, `landmark`, `city`, `dist`, `state`, `pincode`, `order_date`, `payment_type`, `ttl_order_amt`, `ttl_order_qty`, `user_id`, `status`, `processing_date`, `dispatch_date`, `delivered_date`, `cancel_date`, `reject_date`) VALUES
(21, 'Balika Ashram Road, back Side Of New Arts College, Ahmednagar', 'grsdfg', 'Ahmednagar', 'Mumbai', 'Maharashtra', '414001', '2022-07-08', 'cod', '35000', '3', '2', 'dispatch', '2022-07-11', '2022-07-11', '', '', ''),
(22, 'Balika Ashram Road, back Side Of New Arts College, Ahmednagar', 'grsdfg', 'Ahmednagar', 'Mumbai', 'Maharashtra', '414001', '2022-07-08', 'cod', '35000', '3', '2', 'pending', '', '', '', '', ''),
(23, 'hgfdtahrsdhtrd', 'grsdfg', 'Ahmednagar', 'AHMEDNAGAR', 'Maharashtra', '414001', '2022-07-08', 'cod', '35000', '3', '2', 'pending', '', '', '', '', ''),
(24, 'hgfdtahrsdhtrd', 'grsdfg', 'Indore', 'Mumbai', 'MP', '425001', '2022-07-08', 'cod', '100000', '9', '2', 'processing', '2022-07-11', '', '', '', ''),
(25, 'hgfdtahrsdhtrd', 'grsdfg', 'Indore', 'Indore', 'MP', '425001', '', 'cod', '105000', '7', '2', 'pending', '', '', '', '', ''),
(26, 'hgfdtahrsdhtrd', 'grsdfg', 'Ahmednagar', 'Ahmednagar', 'Maharashtra', '414001', '', 'cod', '100000', '10', '2', 'pending', '', '', '', '', ''),
(27, 'hgfdtahrsdhtrd', 'grsdfg', 'Indore', 'Indore', 'MP', '425001', '2022-07-11', 'cod', '180000', '12', '2', 'pending', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `cat_id` text DEFAULT NULL,
  `sub_cat_id` text DEFAULT NULL,
  `product_name` text DEFAULT NULL,
  `product_price` text DEFAULT NULL,
  `duplicate_price` text DEFAULT NULL,
  `product_company` text DEFAULT NULL,
  `product_color` text DEFAULT NULL,
  `product_rating` text DEFAULT NULL,
  `product_discription` text DEFAULT NULL,
  `product_image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `cat_id`, `sub_cat_id`, `product_name`, `product_price`, `duplicate_price`, `product_company`, `product_color`, `product_rating`, `product_discription`, `product_image`) VALUES
(4, '1', '1', 'Mobile 1', '10000', '15000', 'Redmi', '#000000', '5', '2 GB RAM | 32 GB ROM | Expandable Upto 512 GB\n16.59 cm (6.53 inch) HD+ Display\n13MP Rear Camera | 5MP Front Camera\n5000 mAh Battery\nMediaTek Helio G25 Processor\n1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '1656940583183sport-9a-redmi-original-imag7chxqqu7h5hs.webp'),
(5, '1', '1', 'Mobile2', '15000', '20000', 'Samsung', '#00e1ff', '4.8', '2 GB RAM | 32 GB ROM | Expandable Upto 512 GB\n16.59 cm (6.53 inch) HD+ Display\n13MP Rear Camera | 5MP Front Camera\n5000 mAh Battery\nMediaTek Helio G25 Processor\n1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '165694168285810a-b09xb8gm9r-redmi-original-imagdrghswubhh2p.webp');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `url` text DEFAULT NULL,
  `slider_image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `url`, `slider_image`) VALUES
(3, 'https://shingavijewellers.com/', '1656600722045AI-Programming.png');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `subcategory_id` int(11) NOT NULL,
  `cat_id` text DEFAULT NULL,
  `sub_cat_name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subcategory_id`, `cat_id`, `sub_cat_name`) VALUES
(1, '1', 'Mobile'),
(2, '1', 'Laptop'),
(3, '1', 'Headphones'),
(4, '2', 'Mens'),
(5, '2', 'Womens'),
(6, '2', 'Kids'),
(7, '1', 'Television');

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `user_tbl_id` int(11) NOT NULL,
  `user_name` text DEFAULT NULL,
  `mobile_no` text DEFAULT NULL,
  `email_id` text DEFAULT NULL,
  `user_password` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`user_tbl_id`, `user_name`, `mobile_no`, `email_id`, `user_password`) VALUES
(1, 'Nilesh', '9876543210', 'nilbor407@gmail.com', 'abcdabcd'),
(2, 'Abcd', '9876543210', 'abcd@gmail.com', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cardekhodata`
--
ALTER TABLE `cardekhodata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `order_product_details`
--
ALTER TABLE `order_product_details`
  ADD PRIMARY KEY (`order_product_details_id`);

--
-- Indexes for table `order_tbl`
--
ALTER TABLE `order_tbl`
  ADD PRIMARY KEY (`order_tbl_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`subcategory_id`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD PRIMARY KEY (`user_tbl_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cardekhodata`
--
ALTER TABLE `cardekhodata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5456;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_product_details`
--
ALTER TABLE `order_product_details`
  MODIFY `order_product_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_tbl`
--
ALTER TABLE `order_tbl`
  MODIFY `order_tbl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_tbl`
--
ALTER TABLE `user_tbl`
  MODIFY `user_tbl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
