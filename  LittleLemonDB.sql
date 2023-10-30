-- MySQL dump 10.13  Distrib 8.0.34, for macos12.6 (x86_64)
--
-- Host: localhost    Database: LittleLemonDB
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Address` (
  `AddressID` int NOT NULL,
  `StreetAddress` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `State` varchar(255) NOT NULL,
  `PostalCode` varchar(20) NOT NULL,
  `Country` varchar(255) NOT NULL,
  PRIMARY KEY (`AddressID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Booking`
--

DROP TABLE IF EXISTS `Booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Booking` (
  `BookingID` int NOT NULL,
  `TableNumber` int NOT NULL,
  `TableNote` varchar(255) NOT NULL,
  `BookingDate` date NOT NULL,
  `BookingTime` time NOT NULL,
  PRIMARY KEY (`BookingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Booking`
--

LOCK TABLES `Booking` WRITE;
/*!40000 ALTER TABLE `Booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `Booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cuisine`
--

DROP TABLE IF EXISTS `Cuisine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cuisine` (
  `CuisineID` int NOT NULL,
  `CuisineName` varchar(255) NOT NULL,
  `CuisineDescription` text NOT NULL,
  PRIMARY KEY (`CuisineID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cuisine`
--

LOCK TABLES `Cuisine` WRITE;
/*!40000 ALTER TABLE `Cuisine` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cuisine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `CustomerID` int NOT NULL,
  `CustomerName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `PhoneNumber` varchar(20) NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomerAddress`
--

DROP TABLE IF EXISTS `CustomerAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CustomerAddress` (
  `CustomerID` int NOT NULL,
  `AddressID` int NOT NULL,
  PRIMARY KEY (`CustomerID`,`AddressID`),
  KEY `AddressID` (`AddressID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `customeraddress_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `Customer` (`CustomerID`),
  CONSTRAINT `customeraddress_ibfk_2` FOREIGN KEY (`AddressID`) REFERENCES `Address` (`AddressID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomerAddress`
--

LOCK TABLES `CustomerAddress` WRITE;
/*!40000 ALTER TABLE `CustomerAddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `CustomerAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employee` (
  `EmployeeID` int NOT NULL,
  `EmployeeName` varchar(255) NOT NULL,
  `EmployeeRole` varchar(255) NOT NULL,
  `EmployeeSalary` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `PhoneNumber` varchar(20) NOT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EmployeeAddress`
--

DROP TABLE IF EXISTS `EmployeeAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EmployeeAddress` (
  `AddressID` int NOT NULL,
  `EmployeeID` int NOT NULL,
  PRIMARY KEY (`AddressID`,`EmployeeID`),
  KEY `AddressID` (`AddressID`),
  KEY `EmployeeID` (`EmployeeID`),
  CONSTRAINT `customeraddress_ibfk_20` FOREIGN KEY (`AddressID`) REFERENCES `Address` (`AddressID`),
  CONSTRAINT `fk_CustomerAddress_copy1_Employee1` FOREIGN KEY (`EmployeeID`) REFERENCES `Employee` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmployeeAddress`
--

LOCK TABLES `EmployeeAddress` WRITE;
/*!40000 ALTER TABLE `EmployeeAddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `EmployeeAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FoodAndDrinkItems`
--

DROP TABLE IF EXISTS `FoodAndDrinkItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FoodAndDrinkItems` (
  `ItemID` int NOT NULL,
  `TypeID` int NOT NULL,
  `CuisineID` int NOT NULL,
  `ItemName` varchar(255) NOT NULL,
  `ItemDescription` text NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ItemID`,`TypeID`,`CuisineID`),
  KEY `CategoryID` (`TypeID`),
  KEY `SubCategoryID` (`CuisineID`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`TypeID`) REFERENCES `Type` (`TypeID`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`CuisineID`) REFERENCES `Cuisine` (`CuisineID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FoodAndDrinkItems`
--

LOCK TABLES `FoodAndDrinkItems` WRITE;
/*!40000 ALTER TABLE `FoodAndDrinkItems` DISABLE KEYS */;
/*!40000 ALTER TABLE `FoodAndDrinkItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderDate`
--

DROP TABLE IF EXISTS `OrderDate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrderDate` (
  `OrderDateID` int NOT NULL,
  `OrderDate` date NOT NULL,
  PRIMARY KEY (`OrderDateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderDate`
--

LOCK TABLES `OrderDate` WRITE;
/*!40000 ALTER TABLE `OrderDate` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrderDate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderDeliveryStatus`
--

DROP TABLE IF EXISTS `OrderDeliveryStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrderDeliveryStatus` (
  `OrderDeliveryStatusID` int NOT NULL,
  `OrderDeliveryStatus` varchar(50) NOT NULL,
  `OrderDeliveryStatusDate` date NOT NULL,
  `OrderDeliveryStatusTime` time NOT NULL,
  PRIMARY KEY (`OrderDeliveryStatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderDeliveryStatus`
--

LOCK TABLES `OrderDeliveryStatus` WRITE;
/*!40000 ALTER TABLE `OrderDeliveryStatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrderDeliveryStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderProduct`
--

DROP TABLE IF EXISTS `OrderProduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrderProduct` (
  `OrderID` int NOT NULL,
  `ItemID` int NOT NULL,
  PRIMARY KEY (`OrderID`,`ItemID`),
  KEY `ProductID` (`ItemID`),
  CONSTRAINT `orderproduct_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `Orders` (`OrderID`),
  CONSTRAINT `orderproduct_ibfk_2` FOREIGN KEY (`ItemID`) REFERENCES `FoodAndDrinkItems` (`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderProduct`
--

LOCK TABLES `OrderProduct` WRITE;
/*!40000 ALTER TABLE `OrderProduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrderProduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `OrderID` int NOT NULL,
  `OrderDateID` int NOT NULL,
  `CustomerID` int NOT NULL,
  `OrderTypeID` int NOT NULL,
  `BookingID` int NOT NULL,
  `OrderDeliveryStatusID` int NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Quantity` int NOT NULL,
  `Subtotal` decimal(10,2) NOT NULL,
  `DeliveryCost` decimal(10,2) NOT NULL,
  `Discount` decimal(5,2) NOT NULL,
  `GrandTotal` decimal(10,2) NOT NULL,
  PRIMARY KEY (`OrderID`,`CustomerID`,`OrderDateID`,`OrderTypeID`,`BookingID`,`OrderDeliveryStatusID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `OrderDateID` (`OrderDateID`),
  KEY `OrderPriorityID` (`OrderTypeID`),
  KEY `ShipDateID` (`BookingID`),
  KEY `ShipModeID` (`OrderDeliveryStatusID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `Customer` (`CustomerID`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`OrderDateID`) REFERENCES `OrderDate` (`OrderDateID`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`OrderTypeID`) REFERENCES `OrderType` (`OrderTypeID`),
  CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`BookingID`) REFERENCES `Booking` (`BookingID`),
  CONSTRAINT `orders_ibfk_5` FOREIGN KEY (`OrderDeliveryStatusID`) REFERENCES `OrderDeliveryStatus` (`OrderDeliveryStatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderType`
--

DROP TABLE IF EXISTS `OrderType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrderType` (
  `OrderTypeID` int NOT NULL,
  `OrderTypeName` varchar(50) NOT NULL,
  PRIMARY KEY (`OrderTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderType`
--

LOCK TABLES `OrderType` WRITE;
/*!40000 ALTER TABLE `OrderType` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrderType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Segment`
--

DROP TABLE IF EXISTS `Segment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Segment` (
  `SegmentID` int NOT NULL,
  `SegmentName` varchar(255) NOT NULL,
  `SegmentDescription` text NOT NULL,
  PRIMARY KEY (`SegmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Segment`
--

LOCK TABLES `Segment` WRITE;
/*!40000 ALTER TABLE `Segment` DISABLE KEYS */;
/*!40000 ALTER TABLE `Segment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SegmentCustomer`
--

DROP TABLE IF EXISTS `SegmentCustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SegmentCustomer` (
  `SegmentID` int NOT NULL,
  `CustomerID` int NOT NULL,
  PRIMARY KEY (`SegmentID`,`CustomerID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `segmentcustomer_ibfk_1` FOREIGN KEY (`SegmentID`) REFERENCES `Segment` (`SegmentID`),
  CONSTRAINT `segmentcustomer_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `Customer` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SegmentCustomer`
--

LOCK TABLES `SegmentCustomer` WRITE;
/*!40000 ALTER TABLE `SegmentCustomer` DISABLE KEYS */;
/*!40000 ALTER TABLE `SegmentCustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Type`
--

DROP TABLE IF EXISTS `Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Type` (
  `TypeID` int NOT NULL,
  `TypeName` varchar(255) NOT NULL,
  `TypeDescription` text NOT NULL,
  PRIMARY KEY (`TypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Type`
--

LOCK TABLES `Type` WRITE;
/*!40000 ALTER TABLE `Type` DISABLE KEYS */;
/*!40000 ALTER TABLE `Type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-29 15:49:02
