-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 05, 2018 at 04:33 PM
-- Server version: 5.6.36-log
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chugh11_OnlineRetailDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `Username`, `Password`) VALUES
(1, 'cnyong', 'abc123'),
(2, 'mchugh', 'abc123'),
(8, 'maxwell', 'abc123');

-- --------------------------------------------------------

--
-- Table structure for table `tblcard`
--

CREATE TABLE `tblcard` (
  `CardID` int(11) NOT NULL,
  `CardNumber` varchar(11) NOT NULL,
  `CardType` char(10) NOT NULL,
  `CustomerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcard`
--

INSERT INTO `tblcard` (`CardID`, `CardNumber`, `CardType`, `CustomerID`) VALUES
(890123, '45824586789', 'MasterCard', 80756),
(890124, '42578698512', 'DebitVisa', 80757),
(890125, '40102305689', 'CreditCard', 80758),
(890126, '41258965123', 'DebitVisa', 80759),
(890127, '47855698145', 'MasterCard', 80760),
(890128, '45697812020', 'VisaCard', 80761);

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `CustomerID` int(11) NOT NULL,
  `FirstName` char(20) NOT NULL,
  `LastName` char(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `PhoneNumber` varchar(10) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Country` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`CustomerID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `Address`, `Country`) VALUES
(1, 'Charles', 'Nyong', 'abc@uwindsor.ca', '2332324345', '123 Peter street', 'USA'),
(2, 'Micheal', 'Tanza', 'asikpo@uwindsor.ca', '2263486564', '2940 Peter street', 'Canada'),
(80756, 'Cam', 'Rogers', 'cam.rogers@gmail.com', '5142386559', '78 Yorkville Ave, Toronto, ON M5R 2C2', 'Canada'),
(80757, 'Dwight', 'Low', 'dwight@gmail.com', '2445860102', '2130 Mountain St, Montreal, QC H3G 1Z7', 'Canada'),
(80758, 'Rishabh', 'Pant', 'pant.rishabh@gmail.com', '4160155287', '214 W Maple Rd, Birmingham, MI 48009, USA', 'USA'),
(80759, 'Peter', 'Lehnhoff', 'Lehnhoff@hotmail.com', '6314520198', ' 50 Rideau St, Ottawa, ON K1N 9J7', 'Canada'),
(80760, 'Anthony', 'Spanic', 'spanic@gmail.com', '5142389875', '50 Rockefeller Plaza, New York, NY 10020, USA', 'USA'),
(80761, 'Jonas', 'Schaper', 'jonas.schaper@gmail.com', '5199675854', '2912 Granville St, Vancouver, BC V6H 3J7', 'Canada');

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `OrderID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `CurrencyType` varchar(11) NOT NULL,
  `OrderQuantity` int(11) NOT NULL,
  `OrderTime` time NOT NULL,
  `OrderDate` date NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `OrderStatus` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`OrderID`, `ProductID`, `CurrencyType`, `OrderQuantity`, `OrderTime`, `OrderDate`, `CustomerID`, `OrderStatus`) VALUES
(701, 12017, 'CAD ', 1, '06:38:12', '2017-07-07', 80756, 'Cancelled'),
(702, 12018, 'CAD', 4, '16:16:39', '2017-07-07', 80756, 'Cancelled'),
(703, 12019, 'CAD', 3, '11:18:31', '2017-07-07', 80756, 'Cancelled'),
(704, 12020, 'CAD', 2, '10:49:12', '2017-07-07', 80756, 'Cancelled'),
(705, 12021, 'USD', 1, '03:17:04', '2017-08-01', 80760, 'Shipped'),
(706, 12022, 'CAD', 1, '09:08:39', '2017-09-11', 80761, 'Shipped'),
(707, 12019, 'USD', 2, '04:08:07', '2017-09-11', 80761, 'shipped'),
(708, 12017, 'CAD', 1, '04:14:07', '2017-09-11', 80760, 'Shipped'),
(709, 12017, 'CAD ', 1, '06:38:12', '2016-07-07', 80756, 'Shipped'),
(710, 12018, 'CAD', 2, '16:16:39', '2015-05-29', 80757, 'Shipped'),
(711, 12019, 'USD', 2, '11:18:31', '2016-07-18', 80758, 'Shipped'),
(712, 12020, 'CAD', 1, '10:49:12', '2016-06-04', 80759, 'Shipped'),
(713, 12021, 'USD', 1, '03:17:04', '2015-08-01', 80760, 'Shipped'),
(714, 12022, 'CAD', 1, '09:08:39', '2015-09-11', 80760, 'Shipped'),
(715, 12019, 'USD', 1, '04:08:07', '2016-09-11', 80760, 'shipped'),
(716, 12017, 'CAD', 4, '04:14:07', '2016-09-11', 80761, 'Shipped'),
(746, 12017, 'CAD', 2, '00:57:45', '2018-03-19', 2, 'Shipped'),
(747, 12018, 'CAD', 1, '00:57:45', '2018-03-19', 2, 'Shipped');

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `ProductID` int(11) NOT NULL,
  `ProductName` char(20) NOT NULL,
  `ProductManufacturer` char(20) NOT NULL,
  `ProductPrice` int(11) NOT NULL,
  `ProductQuantityInStore` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`ProductID`, `ProductName`, `ProductManufacturer`, `ProductPrice`, `ProductQuantityInStore`) VALUES
(12017, 'Kimono Shirt', 'Naked and Famous', 65, 200),
(12018, 'Black Check Shirt', 'Arcteryx', 70, 157),
(12019, 'Regular Shirt', 'Roots', 80, 210),
(12020, 'Check Shirt', 'Canada Goose', 100, 300),
(12021, 'Cotton Shirt', 'Sorel', 45, 287),
(12022, 'Woolen Shirt', 'GAP', 35, 100),
(12023, 'Morri Lee Gown', 'Naked and Famous', 200, 10),
(12024, 'Sherri heel Gown', 'Root', 150, 10),
(12025, 'Burberry Heels', 'D&G', 180, 20),
(12026, 'Webster Heels', 'Sophia Webster', 190, 25),
(12027, 'Iwatches', 'Apple', 210, 10),
(12028, 'Hp Laptop', 'HP', 550, 10),
(12029, 'palmtop', 'Samsung', 300, 10),
(12030, 'Smart Watch', 'Apple', 260, 10),
(12031, 'Blix short', 'D&G', 40, 20),
(12032, 'Summer shorts', 'D&G', 39, 20),
(12033, 'Air Jordan', 'Nike', 60, 10),
(12034, 'Nike KDK', 'Nike', 49, 10),
(12035, 'Nike Air Force', 'Nike', 55, 10),
(12036, 'Nike Roshe', 'Nike', 40, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tblproductimage`
--

CREATE TABLE `tblproductimage` (
  `productID` int(11) NOT NULL,
  `imageName` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblproductimage`
--

INSERT INTO `tblproductimage` (`productID`, `imageName`) VALUES
(12017, 'product3.jpg'),
(12018, 'product2.jpg'),
(12019, 'product4.jpg'),
(12020, 'product5.jpg'),
(12021, 'product6.jpg'),
(12022, 'product1.jpg'),
(12023, 'dress1.jpg'),
(12024, 'dress2.jpg'),
(12025, 'Female_Hills.jpg'),
(12026, 'FemaleHills3.jpg'),
(12027, 'iwatches.png'),
(12028, 'Lap1.jpg'),
(12029, 'palmtop.jpg'),
(12030, 'smartWatch.jpg'),
(12031, 'short1.jpg'),
(12032, 'short2.jpg'),
(12033, 'sneaker1.jpg'),
(12034, 'sneaker2.jpg'),
(12035, 'sneaker3.jpg'),
(12036, 'sneaker4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblrolexf`
--

CREATE TABLE `tblrolexf` (
  `ID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `roleID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblrolexf`
--

INSERT INTO `tblrolexf` (`ID`, `userID`, `roleID`) VALUES
(1, 1, 1),
(3, 2, 1),
(4, 2, 2),
(8, 8, 2),
(9, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblsales`
--

CREATE TABLE `tblsales` (
  `SalesID` int(11) NOT NULL,
  `OrderDate` date NOT NULL,
  `SubTotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblsales`
--

INSERT INTO `tblsales` (`SalesID`, `OrderDate`, `SubTotal`) VALUES
(2107, '2017-08-01', 45),
(2108, '2017-09-11', 260),
(2109, '2015-05-29', 100),
(2110, '2016-06-04', 100),
(2111, '2016-07-07', 65),
(2112, '2016-07-18', 160),
(2113, '2015-08-01', 45),
(2114, '2015-09-11', 35),
(2115, '2016-09-11', 340),
(2120, '2018-03-18', 1095),
(2123, '2018-03-19', 660),
(2124, '2018-03-22', 0),
(2125, '2018-03-23', 790);

-- --------------------------------------------------------

--
-- Table structure for table `tblshipment`
--

CREATE TABLE `tblshipment` (
  `ShipmentID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `OrderSize` int(11) NOT NULL COMMENT 'Number of items for each orderdate',
  `CardID` int(11) NOT NULL,
  `BillingAddress` varchar(50) NOT NULL,
  `ShipmentDate` date NOT NULL,
  `DeliveryStatus` char(20) NOT NULL,
  `ShipmentService` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblshipment`
--

INSERT INTO `tblshipment` (`ShipmentID`, `CustomerID`, `OrderSize`, `CardID`, `BillingAddress`, `ShipmentDate`, `DeliveryStatus`, `ShipmentService`) VALUES
(7771, 80757, 2, 890124, '2130 Mountain St, Montreal, QC H3G 1Z7', '2017-05-29', 'Delivered', 'Canada Post'),
(7773, 80758, 3, 80758, '214 W Maple Rd, Birmingham, MI 48009, USA', '2017-07-18', 'Failed', 'USPS'),
(7774, 80759, 2, 80759, '50 Rideau St, Ottawa, ON K1N 9J7', '2017-06-04', 'Failed', 'DHL'),
(7775, 80760, 1, 80760, '50 Rockefeller Plaza, New York, NY 10020, USA', '2017-08-01', 'Failed', 'USPS'),
(7776, 80761, 1, 80761, '2912 Granville St, Vancouver, BC V6H 3J7', '2017-09-11', 'Delivered', 'UPS'),
(7777, 80757, 2, 890124, '2130 Mountain St, Montreal, QC H3G 1Z7', '2015-05-29', 'Delivered', 'Canada Post'),
(7778, 80758, 3, 80758, '214 W Maple Rd, Birmingham, MI 48009, USA', '2016-07-18', 'Failed', 'USPS'),
(7779, 80759, 2, 80759, '50 Rideau St, Ottawa, ON K1N 9J7', '2016-06-04', 'Delivered', 'DHL'),
(7780, 80760, 1, 80760, '50 Rockefeller Plaza, New York, NY 10020, USA', '2015-08-01', 'Delivered', 'USPS'),
(7781, 80761, 1, 80761, '2912 Granville St, Vancouver, BC V6H 3J7', '2016-09-11', 'Delivered', 'UPS'),
(7785, 1, 6, 890133, '732 Mill Street N9C 2S2 ON', '2018-03-11', 'Failed', 'USPS'),
(7795, 1, 3, 890143, '732 Mill Street N9C 2S2 ON', '2018-03-19', 'Failed', 'Canada Post'),
(7797, 2, 4, 890145, '732 Mill Street N9C 2S2 ON', '2018-03-19', 'Delivered', 'UPS'),
(7798, 2, 3, 890146, '732 Mill Street N9C 2S2 ON', '2018-03-19', 'Delivered', 'DHL');

-- --------------------------------------------------------

--
-- Table structure for table `tblshoppingcart`
--

CREATE TABLE `tblshoppingcart` (
  `ShoppingCartID` int(11) NOT NULL,
  `CustomerID` varchar(11) NOT NULL COMMENT 'Maps customers to their shopping cart items',
  `ProductID` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `PurchaseDate` date NOT NULL,
  `QuantityPurchased` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblshoppingcart`
--

INSERT INTO `tblshoppingcart` (`ShoppingCartID`, `CustomerID`, `ProductID`, `Price`, `PurchaseDate`, `QuantityPurchased`) VALUES
(10780, '80756', 12020, 100, '2017-06-04', 2),
(10781, '80757', 12017, 65, '2017-07-07', 1),
(10782, '80757', 12019, 80, '2017-07-18', 3),
(10783, '80759', 12018, 50, '2017-05-29', 4),
(10784, '80759', 12021, 45, '2017-08-01', 1),
(10786, '80760', 12022, 35, '2017-09-11', 1),
(10787, '80760', 12019, 80, '2017-09-11', 2),
(10788, '80761', 12017, 65, '2017-09-11', 1),
(10789, '80756', 12020, 100, '2016-06-04', 1),
(10790, '80757', 12017, 65, '2016-07-07', 1),
(10791, '80757', 12019, 80, '2016-07-18', 2),
(10792, '80759', 12018, 50, '2015-05-29', 2),
(10793, '80759', 12021, 45, '2015-08-01', 1),
(10794, '80760', 12022, 35, '2015-09-11', 1),
(10795, '80760', 12019, 80, '2016-09-11', 1),
(10796, '80761', 12017, 65, '2016-09-11', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbluserrole`
--

CREATE TABLE `tbluserrole` (
  `ID` int(11) NOT NULL,
  `RoleName` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbluserrole`
--

INSERT INTO `tbluserrole` (`ID`, `RoleName`) VALUES
(1, 'Web_Admin'),
(2, 'Ware_House_Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(500) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`UserID`, `Username`, `Password`) VALUES
(1, 'cnyong', 'abc123'),
(2, 'mtanza', 'abc123');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Origin` varchar(500) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcard`
--
ALTER TABLE `tblcard`
  ADD PRIMARY KEY (`CardID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`CustomerID`),
  ADD KEY `Address` (`Address`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `ProductID` (`ProductID`),
  ADD KEY `OrderDate` (`OrderDate`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `tblproductimage`
--
ALTER TABLE `tblproductimage`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `tblrolexf`
--
ALTER TABLE `tblrolexf`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `roleID` (`roleID`);

--
-- Indexes for table `tblsales`
--
ALTER TABLE `tblsales`
  ADD PRIMARY KEY (`SalesID`),
  ADD KEY `OrderDate` (`OrderDate`);

--
-- Indexes for table `tblshipment`
--
ALTER TABLE `tblshipment`
  ADD PRIMARY KEY (`ShipmentID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `tblshoppingcart`
--
ALTER TABLE `tblshoppingcart`
  ADD PRIMARY KEY (`ShoppingCartID`),
  ADD KEY `ProductID` (`ProductID`),
  ADD KEY `PurchaseDate` (`PurchaseDate`);

--
-- Indexes for table `tbluserrole`
--
ALTER TABLE `tbluserrole`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcard`
--
ALTER TABLE `tblcard`
  MODIFY `CardID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=890149;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80762;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=776;

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12050;

--
-- AUTO_INCREMENT for table `tblrolexf`
--
ALTER TABLE `tblrolexf`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblsales`
--
ALTER TABLE `tblsales`
  MODIFY `SalesID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2126;

--
-- AUTO_INCREMENT for table `tblshipment`
--
ALTER TABLE `tblshipment`
  MODIFY `ShipmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7801;

--
-- AUTO_INCREMENT for table `tblshoppingcart`
--
ALTER TABLE `tblshoppingcart`
  MODIFY `ShoppingCartID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10869;

--
-- AUTO_INCREMENT for table `tbluserrole`
--
ALTER TABLE `tbluserrole`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcard`
--
ALTER TABLE `tblcard`
  ADD CONSTRAINT `tblcard_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `tblcustomer` (`CustomerID`);

--
-- Constraints for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD CONSTRAINT `tblorder_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `tblproduct` (`ProductID`);

--
-- Constraints for table `tblrolexf`
--
ALTER TABLE `tblrolexf`
  ADD CONSTRAINT `tblrolexf_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `admin` (`ID`),
  ADD CONSTRAINT `tblrolexf_ibfk_2` FOREIGN KEY (`roleID`) REFERENCES `tbluserrole` (`ID`);

--
-- Constraints for table `tblshipment`
--
ALTER TABLE `tblshipment`
  ADD CONSTRAINT `tblshipment_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `tblcustomer` (`CustomerID`);

--
-- Constraints for table `tblshoppingcart`
--
ALTER TABLE `tblshoppingcart`
  ADD CONSTRAINT `tblshoppingcart_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `tblproduct` (`ProductID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
