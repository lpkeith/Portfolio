-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 11, 2022 at 09:47 PM
-- Server version: 10.3.37-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lpkeith_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `addressID` int(11) NOT NULL,
  `street` varchar(40) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(2) NOT NULL,
  `zip` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`addressID`, `street`, `city`, `state`, `zip`) VALUES
(1, '4409 Sugarfoot Ln', 'Indianapolis', 'IN', 46202),
(2, '1884 Capitol Avenue', 'Indianapolis', 'IN', 46214),
(3, '7056 Cholla Ter', 'Indianapolis', 'IN', 46240),
(4, '4439 Crestview Manor', 'Carmel', 'IN', 46032),
(5, '2464 Overlook Dr', 'Indianapolis', 'IN', 46225),
(6, '1612 Broadripple Ave', 'Indianapolis', 'IN', 46220),
(7, '1812 Cedar St', 'Greenwood', 'IN', 46143),
(8, '456 Florence St', 'Indianapolis', 'IN', 46285),
(9, '2037 Raintree Blvd', 'Indianapolis', 'IN', 46278),
(10, '2639 Brown Bear Dr', 'Brownsburg', 'IN', 46112),
(11, '2741 Paradise Ln', 'Fishers', 'IN', 46038),
(12, '1500 Clay St', 'Indianapolis', 'IN', 46225),
(27, '2112 Eliza Ln', 'Indianapolis', 'IN', 46218),
(28, '1563 Dawson St', 'Indianapolis', 'IN', 46203),
(29, '11453 Cosmo Ct', 'Indianapolis', 'IN', 46229),
(30, '1174 S County Rd 34', 'Indianapolis', 'IN', 46231),
(31, '1221 Medford Ave', 'Indianapolis', 'IN', 46222),
(32, '1240 Shepard St', 'Indianapolis', 'IN', 46221),
(33, '1318 Riley Ave', 'Indianapolis', 'IN', 46203);

-- --------------------------------------------------------

--
-- Table structure for table `certification`
--

CREATE TABLE `certification` (
  `certTypeID` int(11) NOT NULL,
  `certType` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `certification`
--

INSERT INTO `certification` (`certTypeID`, `certType`) VALUES
(1, 'Food Handler'),
(2, 'Bartender'),
(3, 'Kitchen Skills');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerID` int(11) NOT NULL,
  `custFName` varchar(20) NOT NULL,
  `custLName` varchar(20) NOT NULL,
  `custPhone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerID`, `custFName`, `custLName`, `custPhone`) VALUES
(1, 'Sandra', 'Haas', '317-555-1234'),
(2, 'Iris', 'Branch', '317-555-1321'),
(3, 'Roxanne', 'Nichols', '317-555-4897'),
(4, 'Susanne', 'Mays', '765-555-1234'),
(5, 'Elena', 'Berger', '219-555-1234'),
(6, 'Gene', 'Atkinson', '260-555-1123'),
(7, 'Salvador', 'Hogan', '317-555-8963'),
(8, 'Rose', 'Cherry', '317-556-8932'),
(9, 'Trudy', 'McCormick', '312-555-1234'),
(10, 'Roderick', 'Berger', '219-555-1234');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeID` int(11) NOT NULL,
  `emFName` varchar(20) NOT NULL,
  `emLName` varchar(20) NOT NULL,
  `barLicenseNum` int(11) DEFAULT NULL,
  `foodHandlerNum` int(11) DEFAULT NULL,
  `kitchenCert` int(11) DEFAULT NULL,
  `tipShare` int(11) NOT NULL,
  `emPhone` varchar(12) NOT NULL,
  `emEmail` varchar(50) DEFAULT NULL,
  `addressID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employeeID`, `emFName`, `emLName`, `barLicenseNum`, `foodHandlerNum`, `kitchenCert`, `tipShare`, `emPhone`, `emEmail`, `addressID`) VALUES
(1, 'Barry', 'Steward', 277886, 548959, 284492, 0, '317-555-4189', 'bsteward@restaurant.com', 1),
(42, 'Delia', 'Ash', NULL, 744722, 524366, 0, '317-555-7852', 'dash@restaurant.com', 2),
(43, 'Eduardo', 'Hodge', 418718, 262099, NULL, 0, '765-555-8930', 'ehodge@restaurant.com', 3),
(44, 'Karla', 'George', NULL, 106605, NULL, 0, '317-555-3330', 'kgeorge@restaurant.com', 4),
(45, 'Hubert', 'Lucas', NULL, 391876, 899703, 2, '765-555-9990', NULL, 5),
(46, 'Eddie', 'Gibbs', NULL, 583139, 798323, 2, '317-555-8903', NULL, 6),
(47, 'Vicky', 'Peterson', NULL, 790496, 713126, 2, '317-555-3289', NULL, 7),
(48, 'Jordan', 'McIntyre', 779220, 785422, 187441, 7, '219-555-4545', NULL, 8),
(49, 'Lucas', 'Rodgers', NULL, 735389, 281503, 2, '317-555-7830', NULL, 9),
(50, 'Oscar', 'Bird', NULL, 359335, 573223, 2, '260-555-5062', NULL, 10),
(51, 'Christine', 'Browning', 888016, 392020, NULL, 7, '317-555-6320', NULL, 7),
(52, 'Alexis', 'Clark', 852913, 979393, NULL, 7, '765-555-0022', NULL, 11),
(53, 'Roger', 'North', 327614, 415980, NULL, 7, '317-555-4597', NULL, 12),
(54, 'Robbie', 'Kenney', 939357, 737406, NULL, 80, '312-555-8965', NULL, 7),
(55, 'Roy', 'Russell', NULL, 557230, NULL, 80, '317-555-2020', NULL, 27),
(56, 'Lesley', 'Bauer', NULL, 934530, NULL, 80, '317-555-6363', NULL, 28),
(57, 'Jackie', 'Cohen', NULL, 935172, NULL, 80, '317-555-2220', NULL, 29),
(58, 'Alejandro', 'Frost', NULL, 793302, NULL, 80, '713-555-8645', NULL, 30),
(59, 'Nick', 'Gill', NULL, 948529, NULL, 80, '317-555-7069', NULL, 31),
(60, 'Ernesto', 'Townsend', NULL, NULL, NULL, 0, '317-555-3240', 'etownsend@restaurant.com', 32),
(61, 'Laura', 'McLean', NULL, NULL, NULL, 0, '317-555-2200', 'lmclean@restaurant.com', 33);

--
-- Triggers `employee`
--
DELIMITER $$
CREATE TRIGGER `check_former_employees` BEFORE DELETE ON `employee` FOR EACH ROW BEGIN
	INSERT INTO formerEmployees
    	SET
        	employeeID = OLD.employeeID,
            emFName = OLD.emFName,
            emLName = OLD.emLName,
            changeMadeBy = USER(),
            termDate = NOW();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `employeeContact`
-- (See below for the actual view)
--
CREATE TABLE `employeeContact` (
`employeeID` int(11)
,`emFName` varchar(20)
,`emLName` varchar(20)
,`emPhone` varchar(12)
,`emEmail` varchar(50)
,`emAddress` varchar(76)
);

-- --------------------------------------------------------

--
-- Table structure for table `employee_job`
--

CREATE TABLE `employee_job` (
  `employeeID` int(11) NOT NULL,
  `jobCode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_job`
--

INSERT INTO `employee_job` (`employeeID`, `jobCode`) VALUES
(1, 1),
(42, 2),
(43, 3),
(44, 4),
(45, 5),
(46, 5),
(47, 5),
(48, 5),
(49, 5),
(50, 5),
(48, 6),
(51, 6),
(52, 6),
(53, 6),
(54, 6),
(54, 7),
(55, 7),
(56, 7),
(57, 7),
(58, 7),
(59, 7),
(60, 8),
(61, 8),
(56, 8),
(54, 8);

-- --------------------------------------------------------

--
-- Table structure for table `formerEmployees`
--

CREATE TABLE `formerEmployees` (
  `employeeID` int(11) NOT NULL,
  `emFName` varchar(20) NOT NULL,
  `emLName` varchar(20) NOT NULL,
  `changeMadeBy` varchar(20) NOT NULL,
  `termDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ingredient`
--

CREATE TABLE `ingredient` (
  `ingredientID` int(11) NOT NULL,
  `ingredientName` varchar(30) NOT NULL,
  `inventoryQty` int(11) NOT NULL,
  `UOM` varchar(2) NOT NULL,
  `cost` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ingredient`
--

INSERT INTO `ingredient` (`ingredientID`, `ingredientName`, `inventoryQty`, `UOM`, `cost`) VALUES
(1, 'chicken breast', 50, 'LB', '3.00'),
(2, 'Mushrooms', 25, 'LB', '1.00'),
(3, 'Milk', 15, 'GL', '3.00'),
(4, 'Mozarella', 20, 'LB', '2.00'),
(5, 'Cheddar Cheese', 25, 'LB', '2.00'),
(6, 'Parmesan Cheese', 15, 'LB', '3.00'),
(7, 'Butter', 15, 'LB', '2.00'),
(8, 'Sour Cream', 20, 'EA', '1.00'),
(9, 'Garlic', 50, 'EA', '1.00'),
(10, 'Bacon', 50, 'LB', '3.00'),
(11, 'Eggs', 13, 'DZ', '2.00'),
(12, 'Ribeye', 25, 'LB', '2.99'),
(13, 'Potatoes', 200, 'LB', '0.87'),
(14, 'Romaine', 80, 'EA', '0.90'),
(15, 'Biscuit Dough', 15, 'LB', '1.74'),
(16, 'Sausage Gravy', 20, 'LB', '1.92'),
(17, 'Croutons', 50, 'EA', '0.60'),
(18, 'Chives', 50, 'EA', '0.22'),
(19, 'Ceasar Dressing', 20, 'EA', '1.85'),
(20, 'Bread', 15, 'EA', '1.25'),
(21, 'Ham', 125, 'SL', '0.20'),
(22, 'Turkey Slices', 127, 'SL', '0.10'),
(23, 'Mustard', 20, 'EA', '1.00'),
(24, 'Mayo', 20, 'EA', '0.82'),
(25, 'Swiss Slices', 200, 'EA', '0.25'),
(26, 'Coca-Cola', 100, 'LT', '0.50'),
(27, 'Pickle Jar', 50, 'EA', '1.85'),
(28, 'Celery Stalks', 100, 'EA', '0.50'),
(29, 'Tobasco', 50, 'EA', '0.82'),
(30, 'Worcestershire Sauce', 128, 'FZ', '0.20'),
(31, 'Tomato Juice', 30, 'LT', '1.80'),
(32, 'Bitters', 22, 'FZ', '0.20'),
(33, 'Cherry Jar', 15, 'EA', '1.00'),
(34, 'Simple Syrup', 3, 'GL', '0.70'),
(35, 'Oranges', 15, 'LB', '1.99'),
(36, 'Whiskey', 5, 'LT', '60.00'),
(37, 'Vodka', 5, 'LT', '40.00'),
(38, 'White Wine', 0, 'LT', '15.00');

-- --------------------------------------------------------

--
-- Table structure for table `item_ingredient`
--

CREATE TABLE `item_ingredient` (
  `ingredientID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item_ingredient`
--

INSERT INTO `item_ingredient` (`ingredientID`, `itemID`) VALUES
(10, 1),
(11, 1),
(15, 2),
(16, 2),
(12, 3),
(13, 3),
(7, 3),
(10, 3),
(5, 3),
(16, 3),
(8, 4),
(13, 4),
(7, 4),
(10, 4),
(5, 4),
(6, 4),
(17, 4),
(18, 4),
(19, 4),
(14, 4),
(3, 9),
(11, 9),
(7, 9),
(20, 9),
(21, 9),
(22, 9),
(23, 9),
(24, 9),
(25, 9),
(3, 10),
(10, 10),
(7, 10),
(1, 10),
(2, 10),
(4, 10),
(6, 10),
(9, 10),
(38, 10),
(27, 6),
(28, 6),
(29, 6),
(30, 6),
(31, 6),
(37, 6),
(32, 5),
(33, 5),
(34, 5),
(35, 5),
(36, 5),
(6, 7),
(14, 7),
(17, 7),
(19, 7),
(26, 8);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `jobCode` int(11) NOT NULL,
  `jName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`jobCode`, `jName`) VALUES
(1, 'GM'),
(2, 'Kitchen Manager'),
(3, 'Bar Manager'),
(4, 'Floor Manager'),
(5, 'Line Cook'),
(6, 'Bartender'),
(7, 'Server'),
(8, 'Host');

-- --------------------------------------------------------

--
-- Table structure for table `job_cert`
--

CREATE TABLE `job_cert` (
  `jobCode` int(11) NOT NULL,
  `certTypeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_cert`
--

INSERT INTO `job_cert` (`jobCode`, `certTypeID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 1),
(7, 1),
(5, 1),
(5, 3),
(6, 1),
(6, 2),
(8, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menuID` int(11) NOT NULL,
  `menuName` varchar(20) NOT NULL,
  `menuStartTime` time NOT NULL,
  `menuEndTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menuID`, `menuName`, `menuStartTime`, `menuEndTime`) VALUES
(1, 'Breakfast', '06:00:00', '13:00:00'),
(2, 'Lunch', '11:00:00', '16:00:00'),
(3, 'Dinner', '16:00:00', '23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `menuItem`
--

CREATE TABLE `menuItem` (
  `itemID` int(11) NOT NULL,
  `itemName` varchar(40) NOT NULL,
  `eightySix` tinyint(1) NOT NULL DEFAULT 0,
  `price` decimal(10,2) NOT NULL,
  `taxCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menuItem`
--

INSERT INTO `menuItem` (`itemID`, `itemName`, `eightySix`, `price`, `taxCode`) VALUES
(1, 'Bacon and Eggs', 0, '9.00', 1),
(2, 'Biscuits and Gravy', 0, '10.00', 1),
(3, 'Steak and Potatoes', 0, '20.00', 1),
(4, 'Baked Potato and Side Salad', 0, '9.00', 1),
(5, 'Old Fashioned', 0, '5.00', 2),
(6, 'Bloody Mary', 0, '7.00', 2),
(7, 'Ceasar Salad', 0, '8.00', NULL),
(8, 'Coca-Cola', 0, '2.00', NULL),
(9, 'Monte Cristo Sandwich', 0, '10.00', 1),
(10, 'Stuffed Chicken in Mushroom Sauce', 1, '11.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menuItem_instance`
--

CREATE TABLE `menuItem_instance` (
  `itemID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menuItem_instance`
--

INSERT INTO `menuItem_instance` (`itemID`, `menuID`) VALUES
(1, 1),
(2, 1),
(2, 2),
(2, 3),
(3, 3),
(4, 3),
(4, 2),
(5, 2),
(5, 3),
(6, 2),
(6, 1),
(7, 2),
(7, 3),
(8, 1),
(8, 2),
(8, 3),
(9, 2),
(10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `orderID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `placedTime` datetime NOT NULL,
  `totalPrice` decimal(10,2) NOT NULL,
  `fulfilled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`orderID`, `customerID`, `placedTime`, `totalPrice`, `fulfilled`) VALUES
(1, 10, '2022-12-10 12:35:02', '12.82', 1),
(2, 2, '2022-12-11 12:20:00', '23.10', 0),
(3, 2, '2022-12-11 21:03:48', '50.21', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `orderDetails`
-- (See below for the actual view)
--
CREATE TABLE `orderDetails` (
`orderID` int(11)
,`custFName` varchar(20)
,`custLName` varchar(20)
,`itemName` varchar(40)
,`price` decimal(10,2)
,`taxRate` int(11)
,`placedTime` datetime
,`fulfilled` tinyint(1)
);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `orderID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `taxCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`orderID`, `itemID`, `taxCode`) VALUES
(1, 1, 1),
(1, 8, 1),
(2, 6, 2),
(2, 6, 2),
(2, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `reservationID` int(11) NOT NULL,
  `reservationTime` time NOT NULL,
  `reservationDate` date NOT NULL,
  `tableID` int(11) DEFAULT NULL,
  `employeeID` int(11) DEFAULT NULL,
  `customerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`reservationID`, `reservationTime`, `reservationDate`, `tableID`, `employeeID`, `customerID`) VALUES
(1, '14:30:00', '2022-12-12', 1, 61, 4),
(2, '15:00:00', '2022-12-12', 10, 60, 8);

-- --------------------------------------------------------

--
-- Table structure for table `salesTax`
--

CREATE TABLE `salesTax` (
  `taxCode` int(11) NOT NULL,
  `taxName` varchar(20) NOT NULL,
  `taxRate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salesTax`
--

INSERT INTO `salesTax` (`taxCode`, `taxName`, `taxRate`) VALUES
(1, 'Hot Prepared Food', 8),
(2, 'Alcohol', 10);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `sectionID` int(2) NOT NULL,
  `employeeID` int(11) DEFAULT NULL,
  `maxOccupancy` int(2) NOT NULL DEFAULT 25,
  `currentOccupancy` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`sectionID`, `employeeID`, `maxOccupancy`, `currentOccupancy`) VALUES
(1, NULL, 5, 0),
(2, NULL, 30, 0),
(3, NULL, 15, 0),
(4, NULL, 10, 0),
(5, NULL, 25, 0),
(6, NULL, 25, 0),
(7, NULL, 25, 0),
(8, NULL, 25, 0),
(9, NULL, 25, 0),
(10, NULL, 25, 0),
(11, NULL, 25, 0),
(12, NULL, 25, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table`
--

CREATE TABLE `table` (
  `tableID` int(2) NOT NULL,
  `sectionID` int(2) NOT NULL,
  `seatNum` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table`
--

INSERT INTO `table` (`tableID`, `sectionID`, `seatNum`) VALUES
(1, 1, 5),
(2, 2, 15),
(3, 2, 15),
(4, 3, 5),
(5, 3, 5),
(6, 3, 5),
(7, 4, 10),
(8, 5, 5),
(9, 5, 5),
(10, 5, 5),
(11, 5, 5),
(12, 5, 5),
(13, 6, 5),
(14, 6, 5),
(15, 6, 5),
(16, 6, 5),
(17, 6, 5),
(18, 7, 5),
(19, 7, 5),
(20, 7, 5),
(21, 7, 5),
(22, 7, 5),
(23, 8, 5),
(24, 8, 5),
(25, 8, 5),
(26, 8, 5),
(27, 8, 5),
(28, 9, 5),
(29, 9, 5),
(30, 9, 5),
(31, 9, 5),
(32, 9, 5),
(33, 10, 5),
(34, 10, 5),
(35, 10, 5),
(36, 10, 5),
(37, 10, 5),
(38, 11, 5),
(39, 11, 5),
(40, 11, 5),
(41, 11, 5),
(42, 11, 5),
(43, 12, 5),
(44, 12, 5),
(45, 12, 5),
(46, 12, 5),
(47, 12, 5);

-- --------------------------------------------------------

--
-- Structure for view `employeeContact`
--
DROP TABLE IF EXISTS `employeeContact`;

CREATE ALGORITHM=UNDEFINED DEFINER=`lpkeith`@`localhost` SQL SECURITY DEFINER VIEW `employeeContact`  AS  select `employee`.`employeeID` AS `employeeID`,`employee`.`emFName` AS `emFName`,`employee`.`emLName` AS `emLName`,`employee`.`emPhone` AS `emPhone`,`employee`.`emEmail` AS `emEmail`,concat(`address`.`street`,' ',`address`.`city`,' ',`address`.`state`,' ',`address`.`zip`) AS `emAddress` from (`employee` join `address` on(`employee`.`addressID` = `address`.`addressID`)) order by `employee`.`emLName` ;

-- --------------------------------------------------------

--
-- Structure for view `orderDetails`
--
DROP TABLE IF EXISTS `orderDetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`lpkeith`@`localhost` SQL SECURITY DEFINER VIEW `orderDetails`  AS  select `order`.`orderID` AS `orderID`,`customers`.`custFName` AS `custFName`,`customers`.`custLName` AS `custLName`,`menuItem`.`itemName` AS `itemName`,`menuItem`.`price` AS `price`,`salesTax`.`taxRate` AS `taxRate`,`order`.`placedTime` AS `placedTime`,`order`.`fulfilled` AS `fulfilled` from ((((`order` join `order_item` on(`order`.`orderID` = `order_item`.`orderID`)) join `menuItem` on(`order_item`.`itemID` = `menuItem`.`itemID`)) join `customers` on(`order`.`customerID` = `customers`.`customerID`)) join `salesTax` on(`order_item`.`taxCode` = `salesTax`.`taxCode`)) order by `order`.`placedTime` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`addressID`);

--
-- Indexes for table `certification`
--
ALTER TABLE `certification`
  ADD PRIMARY KEY (`certTypeID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeID`),
  ADD KEY `FOREIGN` (`addressID`);

--
-- Indexes for table `employee_job`
--
ALTER TABLE `employee_job`
  ADD KEY `employeeID` (`employeeID`),
  ADD KEY `jobCode` (`jobCode`);

--
-- Indexes for table `formerEmployees`
--
ALTER TABLE `formerEmployees`
  ADD PRIMARY KEY (`employeeID`);

--
-- Indexes for table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`ingredientID`);

--
-- Indexes for table `item_ingredient`
--
ALTER TABLE `item_ingredient`
  ADD KEY `ingredientID` (`ingredientID`),
  ADD KEY `itemID` (`itemID`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`jobCode`);

--
-- Indexes for table `job_cert`
--
ALTER TABLE `job_cert`
  ADD KEY `jobCode` (`jobCode`),
  ADD KEY `certTypeID` (`certTypeID`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menuID`);

--
-- Indexes for table `menuItem`
--
ALTER TABLE `menuItem`
  ADD PRIMARY KEY (`itemID`),
  ADD KEY `taxCode` (`taxCode`);

--
-- Indexes for table `menuItem_instance`
--
ALTER TABLE `menuItem_instance`
  ADD KEY `itemID` (`itemID`),
  ADD KEY `menuID` (`menuID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD KEY `orderID` (`orderID`),
  ADD KEY `itemID` (`itemID`),
  ADD KEY `taxCode` (`taxCode`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservationID`),
  ADD KEY `tableID` (`tableID`),
  ADD KEY `employeeID` (`employeeID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `salesTax`
--
ALTER TABLE `salesTax`
  ADD PRIMARY KEY (`taxCode`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`sectionID`),
  ADD KEY `employeeID` (`employeeID`);

--
-- Indexes for table `table`
--
ALTER TABLE `table`
  ADD PRIMARY KEY (`tableID`),
  ADD KEY `sectionID` (`sectionID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `addressID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `certification`
--
ALTER TABLE `certification`
  MODIFY `certTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `ingredientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `jobCode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menuItem`
--
ALTER TABLE `menuItem`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `salesTax`
--
ALTER TABLE `salesTax`
  MODIFY `taxCode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `sectionID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `table`
--
ALTER TABLE `table`
  MODIFY `tableID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`addressID`) REFERENCES `address` (`addressID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employee_job`
--
ALTER TABLE `employee_job`
  ADD CONSTRAINT `employee_job_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_job_ibfk_2` FOREIGN KEY (`jobCode`) REFERENCES `job` (`jobCode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item_ingredient`
--
ALTER TABLE `item_ingredient`
  ADD CONSTRAINT `item_ingredient_ibfk_1` FOREIGN KEY (`itemID`) REFERENCES `menuItem` (`itemID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `item_ingredient_ibfk_2` FOREIGN KEY (`ingredientID`) REFERENCES `ingredient` (`ingredientID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_cert`
--
ALTER TABLE `job_cert`
  ADD CONSTRAINT `job_cert_ibfk_1` FOREIGN KEY (`certTypeID`) REFERENCES `certification` (`certTypeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_cert_ibfk_2` FOREIGN KEY (`jobCode`) REFERENCES `job` (`jobCode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menuItem`
--
ALTER TABLE `menuItem`
  ADD CONSTRAINT `menuItem_ibfk_1` FOREIGN KEY (`taxCode`) REFERENCES `salesTax` (`taxCode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menuItem_instance`
--
ALTER TABLE `menuItem_instance`
  ADD CONSTRAINT `menuItem_instance_ibfk_1` FOREIGN KEY (`menuID`) REFERENCES `menu` (`menuID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menuItem_instance_ibfk_2` FOREIGN KEY (`itemID`) REFERENCES `menuItem` (`itemID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `order` (`orderID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`itemID`) REFERENCES `menuItem` (`itemID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_item_ibfk_3` FOREIGN KEY (`taxCode`) REFERENCES `salesTax` (`taxCode`) ON UPDATE CASCADE;

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `employee` (`employeeID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `reservations_ibfk_3` FOREIGN KEY (`tableID`) REFERENCES `table` (`tableID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `section`
--
ALTER TABLE `section`
  ADD CONSTRAINT `section_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `table`
--
ALTER TABLE `table`
  ADD CONSTRAINT `table_ibfk_1` FOREIGN KEY (`sectionID`) REFERENCES `section` (`sectionID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
