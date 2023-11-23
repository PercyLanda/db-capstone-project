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
INSERT INTO `Address` VALUES (1,'123 Main St','New York','NY','10001','USA'),(2,'456 Elm St','Los Angeles','CA','90001','USA'),(3,'789 Oak St','Miami','FL','33101','USA'),(4,'1011 Pine St','Chicago','IL','60601','USA'),(5,'1213 Elm St','Houston','TX','77001','USA'),(6,'1415 Main St','Phoenix','AZ','85001','USA'),(7,'1617 Oak St','San Antonio','TX','78201','USA'),(8,'1819 Pine St','San Diego','CA','92101','USA'),(9,'2021 Elm St','Dallas','TX','75201','USA'),(10,'2223 Main St','Austin','TX','78701','USA'),(11,'2425 Oak St','San Francisco','CA','94101','USA'),(12,'2627 Pine St','Seattle','WA','98101','USA'),(13,'2829 Elm St','Denver','CO','80201','USA'),(14,'3031 Main St','Washington, D.C.','DC','20001','USA'),(15,'3233 Oak St','Boston','MA','02101','USA'),(16,'3435 Pine St','Philadelphia','PA','19101','USA'),(17,'3637 Elm St','San Antonio','TX','78201','USA'),(18,'3839 Main St','Indianapolis','IN','46201','USA'),(19,'4041 Oak St','Phoenix','AZ','85001','USA'),(20,'4243 Pine St','Jacksonville','FL','32201','USA'),(21,'4445 Elm St','Charlotte','NC','28201','USA'),(22,'4647 Main St','San Francisco','CA','94101','USA'),(23,'4849 Oak St','Columbus','OH','43201','USA'),(24,'5051 Pine St','New York','NY','10001','USA'),(25,'5253 Elm St','Los Angeles','CA','90001','USA'),(26,'5455 Main St','Chicago','IL','60601','USA'),(27,'5657 Oak St','Houston','TX','77001','USA'),(28,'5859 Pine St','Phoenix','AZ','85001','USA'),(29,'6061 Elm St','San Antonio','TX','78201','USA'),(30,'6263 Main St','San Diego','CA','92101','USA'),(31,'6465 Oak St','Dallas','TX','75201','USA'),(32,'6667 Pine St','Austin','TX','78701','USA'),(33,'6869 Elm St','San Francisco','CA','94101','USA'),(34,'7071 Main St','Seattle','WA','98101','USA'),(35,'7273 Oak St','Denver','CO','80201','USA'),(36,'7475 Pine St','Washington, D.C.','DC','20001','USA'),(37,'7677 Elm St','Boston','MA','02101','USA'),(38,'7879 Main St','Philadelphia','PA','19101','USA'),(39,'8081 Oak St','San Antonio','TX','78201','USA'),(40,'8283 Pine St','Indianapolis','IN','46201','USA'),(41,'123 Main St','New York','NY','10001','USA'),(42,'456 Elm St','Los Angeles','CA','90001','USA'),(43,'789 Oak St','Miami','FL','33101','USA'),(44,'1011 Pine St','Chicago','IL','60601','USA'),(45,'1213 Elm St','Houston','TX','77001','USA'),(46,'1415 Main St','Phoenix','AZ','85001','USA'),(47,'1617 Oak St','San Antonio','TX','78201','USA'),(48,'1819 Pine St','San Diego','CA','92101','USA'),(49,'2021 Elm St','Dallas','TX','75201','USA'),(50,'2223 Main St','Austin','TX','78701','USA'),(51,'2425 Oak St','San Francisco','CA','94101','USA'),(52,'2627 Pine St','Seattle','WA','98101','USA'),(53,'2829 Elm St','Denver','CO','80201','USA'),(54,'3031 Main St','Washington, D.C.','DC','20001','USA'),(55,'3233 Oak St','Boston','MA','02101','USA'),(56,'3435 Pine St','Philadelphia','PA','19101','USA'),(57,'3637 Elm St','San Antonio','TX','78201','USA'),(58,'3839 Main St','Indianapolis','IN','46201','USA'),(59,'4041 Oak St','Phoenix','AZ','85001','USA'),(60,'4243 Pine St','Jacksonville','FL','32201','USA'),(61,'4445 Elm St','Charlotte','NC','28201','USA'),(62,'4647 Main St','San Francisco','CA','94101','USA'),(63,'4849 Oak St','Columbus','OH','43201','USA'),(64,'5051 Pine St','New York','NY','10001','USA'),(65,'5253 Elm St','Los Angeles','CA','90001','USA'),(66,'5455 Main St','Chicago','IL','60601','USA'),(67,'5657 Oak St','Houston','TX','77001','USA'),(68,'5859 Pine St','Phoenix','AZ','85001','USA'),(69,'6061 Elm St','San Antonio','TX','78201','USA'),(70,'6263 Main St','San Diego','CA','92101','USA');
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
  `BookingDate` date NOT NULL,
  `BookingTime` datetime DEFAULT NULL,
  `TableNumber` int NOT NULL,
  `TableNote` varchar(255) NOT NULL,
  `CustomerID` int NOT NULL,
  PRIMARY KEY (`BookingID`),
  KEY `CustomerID_idx` (`CustomerID`),
  CONSTRAINT `CustomerID` FOREIGN KEY (`CustomerID`) REFERENCES `Customer` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Booking`
--

LOCK TABLES `Booking` WRITE;
/*!40000 ALTER TABLE `Booking` DISABLE KEYS */;
INSERT INTO `Booking` VALUES (1,'2023-11-01','2023-11-10 19:00:00',1,'Special occasion',1),(2,'2023-11-02','2023-11-10 18:30:00',2,'Family dinner',2),(3,'2023-11-03','2023-11-10 20:00:00',3,'Birthday celebration',3),(4,'2023-11-04','2023-11-10 19:30:00',4,'Anniversary dinner',4),(5,'2023-11-05','2023-11-10 18:00:00',5,'Business meeting',5),(6,'2023-11-06','2023-11-10 12:00:00',6,'Group lunch',6),(7,'2023-11-07','2023-11-10 20:30:00',7,'Romantic dinner',7),(8,'2023-11-08','2023-11-10 11:00:00',8,'Family brunch',8),(9,'2023-11-09','2023-11-10 19:00:00',9,'Graduation party',9),(10,'2023-11-10','2023-11-10 18:00:00',10,'Retirement celebration',10),(11,'2023-11-11','2023-11-10 19:30:00',11,'Welcome party',11),(12,'2023-11-12','2023-11-10 20:00:00',12,'Farewell party',12),(13,'2023-11-13','2023-11-10 11:00:00',13,'Team building event',13),(14,'2023-11-05','2023-11-10 19:30:00',14,'Holiday party',14),(15,'2023-12-31','2023-11-10 22:00:00',15,'New Years Eve dinner',15),(16,'2023-12-25','2023-11-10 20:00:00',16,'Christmas dinner',16),(17,'2023-11-23','2023-11-10 19:30:00',17,'Thanksgiving dinner',17),(18,'2024-02-14','2023-11-10 20:00:00',18,'Valentine Day dinner',18),(19,'2024-05-12','2023-11-10 11:00:00',19,'Mother Day brunch',19),(20,'2024-06-16','2023-11-10 11:00:00',20,'Fathers Day brunch',20);
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
INSERT INTO `Cuisine` VALUES (1,'Italian','Delicious Italian cuisine'),(2,'Mexican','Authentic Mexican dishes'),(3,'Chinese','Popular Chinese dishes'),(4,'Japanese','Authentic Japanese cuisine'),(5,'Thai','Spices and flavors of Thailand'),(6,'Korean','Korean BBQ and other dishes'),(7,'Indian',' flavorful Indian dishes'),(8,'Vietnamese','Fresh and healthy Vietnamese cuisine'),(9,'Greek','Classic Greek dishes'),(10,'Spanish','Tapas and other Spanish dishes'),(11,'Middle Eastern','Hummus, falafel, and other Middle Eastern dishes'),(12,'Caribbean','Jerk chicken, rice and peas, and other Caribbean dishes'),(13,'African','Jollof rice, plantains, and other African dishes'),(14,'Fusion','A mix of different cuisines'),(15,'Healthy','Healthy and nutritious dishes'),(16,'Kid-friendly','Dishes that kids will love'),(17,'Vegetarian','Plant-based dishes'),(18,'Vegan','Animal-free dishes'),(19,'Gluten-free','Dishes that are gluten-free'),(20,'Dairy-free','Dishes that are dairy-free');
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
INSERT INTO `Customer` VALUES (1,'John Smith','john.smith@example.com','+1 (123) 456-7890'),(2,'Mary Johnson','mary.johnson@example.com','+1 (234) 567-8901'),(3,'David Williams','david.williams@example.com','+1 (345) 678-9012'),(4,'Jennifer Davis','jennifer.davis@example.com','+1 (456) 789-0123'),(5,'Michael Brown','michael.brown@example.com','+1 (567) 890-1234'),(6,'Linda Jones','linda.jones@example.com','+1 (678) 901-2345'),(7,'Robert Miller','robert.miller@example.com','+1 (789) 012-3456'),(8,'Patricia Wilson','patricia.wilson@example.com','+1 (890) 123-4567'),(9,'William Lee','william.lee@example.com','+1 (901) 234-5678'),(10,'Karen Harris','karen.harris@example.com','+1 (012) 345-6789'),(11,'Richard Clark','richard.clark@example.com','+1 (123) 456-7890'),(12,'Sandra Young','sandra.young@example.com','+1 (234) 567-8901'),(13,'Joseph Turner','joseph.turner@example.com','+1 (345) 678-9012'),(14,'Nancy Allen','nancy.allen@example.com','+1 (456) 789-0123'),(15,'Charles Hall','charles.hall@example.com','+1 (567) 890-1234'),(16,'Elizabeth King','elizabeth.king@example.com','+1 (678) 901-2345'),(17,'Thomas Adams','thomas.adams@example.com','+1 (789) 012-3456'),(18,'Margaret Walker','margaret.walker@example.com','+1 (890) 123-4567'),(19,'Daniel Martinez','daniel.martinez@example.com','+1 (901) 234-5678'),(20,'Susan White','susan.white@example.com','+1 (012) 345-6789'),(21,'Paul Garcia','paul.garcia@example.com','+1 (123) 456-7890'),(22,'Jessica Scott','jessica.scott@example.com','+1 (234) 567-8901'),(23,'Mark Evans','mark.evans@example.com','+1 (345) 678-9012'),(24,'Sarah Moore','sarah.moore@example.com','+1 (456) 789-0123'),(25,'John Robinson','john.robinson@example.com','+1 (567) 890-1234'),(26,'Kimberly Baker','kimberly.baker@example.com','+1 (678) 901-2345'),(27,'Kevin Young','kevin.young@example.com','+1 (789) 012-3456'),(28,'Donna Rodriguez','donna.rodriguez@example.com','+1 (890) 123-4567'),(29,'Ronald King','ronald.king@example.com','+1 (901) 234-5678'),(30,'Lisa Turner','lisa.turner@example.com','+1 (012) 345-6789'),(31,'Kenneth Green','kenneth.green@example.com','+1 (123) 456-7890'),(32,'Ashley Taylor','ashley.taylor@example.com','+1 (234) 567-8901'),(33,'Steven Adams','steven.adams@example.com','+1 (345) 678-9012'),(34,'Deborah Lewis','deborah.lewis@example.com','+1 (456) 789-0123'),(35,'Edward Hernandez','edward.hernandez@example.com','+1 (567) 890-1234'),(36,'Cynthia Brown','cynthia.brown@example.com','+1 (678) 901-2345'),(37,'Brian Moore','brian.moore@example.com','+1 (789) 012-3456'),(38,'Sharon Hall','sharon.hall@example.com','+1 (890) 123-4567'),(39,'Christopher Smith','christopher.smith@example.com','+1 (901) 234-5678'),(40,'Angela Clark','angela.clark@example.com','+1 (012) 345-6789'),(41,'Larry Davis','larry.davis@example.com','+1 (123) 456-7890'),(42,'Helen Garcia','helen.garcia@example.com','+1 (234) 567-8901'),(43,'Frank Martinez','frank.martinez@example.com','+1 (345) 678-9012'),(44,'Megan White','megan.white@example.com','+1 (456) 789-0123'),(45,'Timothy Jones','timothy.jones@example.com','+1 (567) 890-1234'),(46,'Ruth Wilson','ruth.wilson@example.com','+1 (678) 901-2345');
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
INSERT INTO `CustomerAddress` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46);
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
INSERT INTO `Employee` VALUES (1,'John Smith','Manager','$65,000','john.smith@example.com','+1 (123) 456-7890'),(2,'Mary Johnson','Server','$30,000','mary.johnson@example.com','+1 (234) 567-8901'),(3,'David Williams','Chef','$50,000','david.williams@example.com','+1 (345) 678-9012'),(4,'Jennifer Davis','Server','$30,000','jennifer.davis@example.com','+1 (456) 789-0123'),(5,'Michael Brown','Chef','$52,000','michael.brown@example.com','+1 (567) 890-1234'),(6,'Linda Jones','Waitstaff','$28,000','linda.jones@example.com','+1 (678) 901-2345'),(7,'Robert Miller','Server','$31,000','robert.miller@example.com','+1 (789) 012-3456'),(8,'Patricia Wilson','Manager','$68,000','patricia.wilson@example.com','+1 (890) 123-4567'),(9,'William Lee','Chef','$48,000','william.lee@example.com','+1 (901) 234-5678'),(10,'Karen Harris','Server','$30,000','karen.harris@example.com','+1 (012) 345-6789'),(11,'Richard Clark','Chef','$49,000','richard.clark@example.com','+1 (123) 456-7890'),(12,'Sandra Young','Waitstaff','$29,000','sandra.young@example.com','+1 (234) 567-8901'),(13,'Joseph Turner','Server','$32,000','joseph.turner@example.com','+1 (345) 678-9012'),(14,'Nancy Allen','Chef','$51,000','nancy.allen@example.com','+1 (456) 789-0123'),(15,'Charles Hall','Waitstaff','$28,000','charles.hall@example.com','+1 (567) 890-1234'),(16,'Elizabeth King','Server','$31,000','elizabeth.king@example.com','+1 (678) 901-2345'),(17,'Thomas Adams','Chef','$49,000','thomas.adams@example.com','+1 (789) 012-3456'),(18,'Margaret Walker','Server','$30,000','margaret.walker@example.com','+1 (890) 123-4567'),(19,'Daniel Martinez','Chef','$53,000','daniel.martinez@example.com','+1 (901) 234-5678'),(20,'Susan White','Waitstaff','$27,000','susan.white@example.com','+1 (012) 345-6789');
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
INSERT INTO `EmployeeAddress` VALUES (51,1),(52,2),(53,3),(54,4),(55,5),(56,6),(57,7),(58,8),(59,9),(60,10),(61,11),(62,12),(63,13),(64,14),(65,15),(66,16),(67,17),(68,18),(69,19),(70,20);
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
INSERT INTO `FoodAndDrinkItems` VALUES (1,1,1,'Margherita Pizza','Classic Italian pizza with tomato, mozzarella, and basil.',12.99),(2,2,1,'Spaghetti Carbonara','Italian pasta with eggs, cheese, and pancetta.',14.99),(3,1,2,'Escargot','Delicate French snails cooked in garlic butter.',15.99),(4,2,2,'Coq au Vin','French chicken dish with red wine, mushrooms, and onions.',18.99),(5,1,3,'Sushi Combo','Assortment of fresh Japanese sushi and sashimi.',20.99),(6,2,3,'Chicken Teriyaki','Japanese chicken dish with teriyaki sauce and rice.',16.99),(7,1,4,'Taco Platter','Spicy Mexican tacos with your choice of fillings.',10.99),(8,2,4,'Chiles Rellenos','Mexican dish with stuffed poblano peppers and sauce.',12.99),(9,1,5,'General Tso Chicken','Popular Chinese dish with crispy chicken in a sweet and spicy sauce.',14.99),(10,2,5,'Kung Pao Shrimp','Sichuan-style Chinese dish with shrimp, peanuts, and vegetables.',17.99),(11,1,6,'Butter Chicken','Creamy Indian curry with tender chicken pieces.',16.99),(12,2,6,'Vegetable Biryani','Indian rice dish with mixed vegetables and aromatic spices.',13.99),(13,1,7,'Greek Salad','Fresh Mediterranean salad with olives and feta cheese.',11.99),(14,2,7,'Moussaka','Layered Mediterranean dish with eggplant, meat, and béchamel sauce.',15.99),(15,1,8,'Tom Yum Soup','Spicy Thai soup with shrimp and aromatic herbs.',9.99),(16,2,8,'Green Curry','Thai curry with your choice of protein and green chili paste.',14.99),(17,1,9,'Gyro Wrap','Traditional Greek gyro wrap with tzatziki sauce.',8.99),(18,2,9,'Dolmades','Greek dish with grape leaves stuffed with rice and herbs.',10.99),(19,1,10,'Classic Burger','All-American burger with lettuce, tomato, and cheese.',9.99),(20,2,10,'Buffalo Wings','American appetizer with spicy chicken wings and blue cheese.',12.99);
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
INSERT INTO `OrderDate` VALUES (1,'2023-11-01'),(2,'2023-11-02'),(3,'2023-11-03'),(4,'2023-11-04'),(5,'2023-11-05'),(6,'2023-11-06'),(7,'2023-11-07'),(8,'2023-11-08'),(9,'2023-11-09'),(10,'2023-11-10'),(11,'2023-11-11'),(12,'2023-11-12'),(13,'2023-11-13'),(14,'2023-11-14'),(15,'2023-11-15'),(16,'2023-11-16'),(17,'2023-11-17'),(18,'2023-11-18'),(19,'2023-11-19'),(20,'2023-11-20');
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
INSERT INTO `OrderDeliveryStatus` VALUES (1,'Received','2023-11-01','08:30:00'),(2,'In-Progress','2023-11-01','10:45:00'),(3,'Out-for-Delivery','2023-11-02','14:20:00'),(4,'Delivered','2023-11-02','15:45:00'),(5,'Cancelled','2023-11-03','12:10:00'),(6,'Received','2023-11-03','09:15:00'),(7,'In-Progress','2023-11-03','11:30:00'),(8,'Out-for-Delivery','2023-11-04','13:40:00'),(9,'Delivered','2023-11-04','14:55:00'),(10,'Cancelled','2023-11-05','10:25:00'),(11,'Received','2023-11-05','08:50:00'),(12,'In-Progress','2023-11-06','10:05:00'),(13,'Out-for-Delivery','2023-11-06','12:30:00'),(14,'Delivered','2023-11-07','13:55:00'),(15,'Cancelled','2023-11-07','11:15:00'),(16,'Received','2023-11-08','08:20:00'),(17,'In-Progress','2023-11-08','10:40:00'),(18,'Out-for-Delivery','2023-11-09','14:00:00'),(19,'Delivered','2023-11-09','15:25:00'),(20,'Cancelled','2023-11-10','12:30:00'),(21,'Received','2023-11-11','08:15:00'),(22,'In-Progress','2023-11-11','11:10:00'),(23,'Out-for-Delivery','2023-11-12','13:45:00'),(24,'Delivered','2023-11-12','15:00:00'),(25,'Cancelled','2023-11-13','11:20:00'),(26,'Received','2023-11-13','09:40:00'),(27,'In-Progress','2023-11-14','10:55:00'),(28,'Out-for-Delivery','2023-11-14','13:10:00'),(29,'Delivered','2023-11-15','15:30:00'),(30,'Cancelled','2023-11-15','12:45:00'),(31,'Received','2023-11-16','08:35:00'),(32,'In-Progress','2023-11-16','10:50:00'),(33,'Out-for-Delivery','2023-11-17','14:15:00'),(34,'Delivered','2023-11-17','15:40:00'),(35,'Cancelled','2023-11-18','12:05:00'),(36,'Received','2023-11-18','09:30:00'),(37,'In-Progress','2023-11-19','11:40:00'),(38,'Out-for-Delivery','2023-11-19','13:50:00'),(39,'Delivered','2023-11-20','15:10:00'),(40,'Cancelled','2023-11-20','11:35:00');
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
  CONSTRAINT `orderproduct_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `Orders` (`OrderID`) ON DELETE CASCADE,
  CONSTRAINT `orderproduct_ibfk_2` FOREIGN KEY (`ItemID`) REFERENCES `FoodAndDrinkItems` (`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderProduct`
--

LOCK TABLES `OrderProduct` WRITE;
/*!40000 ALTER TABLE `OrderProduct` DISABLE KEYS */;
INSERT INTO `OrderProduct` VALUES (1,1),(6,1),(13,1),(19,1),(25,1),(31,1),(38,1),(44,1),(1,2),(6,2),(13,2),(19,2),(25,2),(31,2),(38,2),(45,2),(2,3),(7,3),(13,3),(19,3),(25,3),(31,3),(38,3),(45,3),(2,4),(7,4),(13,4),(19,4),(26,4),(32,4),(38,4),(45,4),(2,5),(8,5),(14,5),(20,5),(26,5),(32,5),(39,5),(46,5),(3,6),(8,6),(14,6),(20,6),(26,6),(33,6),(39,6),(46,6),(3,7),(8,7),(14,7),(20,7),(26,7),(33,7),(39,7),(46,7),(3,8),(8,8),(15,8),(20,8),(27,8),(33,8),(40,8),(46,8),(3,9),(9,9),(15,9),(20,9),(27,9),(33,9),(40,9),(4,10),(9,10),(15,10),(21,10),(27,10),(34,10),(40,10),(4,11),(9,11),(16,11),(21,11),(28,11),(34,11),(41,11),(4,12),(16,12),(21,12),(28,12),(35,12),(41,12),(4,13),(16,13),(22,13),(28,13),(35,13),(41,13),(4,14),(16,14),(22,14),(28,14),(35,14),(42,14),(5,15),(17,15),(23,15),(29,15),(36,15),(42,15),(5,16),(11,16),(17,16),(23,16),(29,16),(36,16),(43,16),(5,17),(11,17),(17,17),(23,17),(29,17),(36,17),(43,17),(5,18),(11,18),(17,18),(23,18),(30,18),(36,18),(43,18),(5,19),(12,19),(18,19),(24,19),(30,19),(37,19),(43,19),(6,20),(12,20),(18,20),(24,20),(30,20),(37,20),(44,20);
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
  `OrderDeliveryStatusID` int NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Quantity` int NOT NULL,
  `Subtotal` decimal(10,2) NOT NULL,
  `DeliveryCost` decimal(10,2) NOT NULL,
  `Discount` decimal(5,2) NOT NULL,
  `GrandTotal` decimal(10,2) NOT NULL,
  PRIMARY KEY (`OrderID`,`CustomerID`,`OrderDateID`,`OrderTypeID`,`OrderDeliveryStatusID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `OrderDateID` (`OrderDateID`),
  KEY `OrderPriorityID` (`OrderTypeID`),
  KEY `ShipModeID` (`OrderDeliveryStatusID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `Customer` (`CustomerID`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`OrderDateID`) REFERENCES `OrderDate` (`OrderDateID`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`OrderTypeID`) REFERENCES `OrderType` (`OrderTypeID`),
  CONSTRAINT `orders_ibfk_5` FOREIGN KEY (`OrderDeliveryStatusID`) REFERENCES `OrderDeliveryStatus` (`OrderDeliveryStatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (1,1,1,1,1,50.00,2,100.00,10.00,5.00,105.00),(2,2,2,2,2,45.00,3,135.00,12.00,6.00,141.00),(3,3,3,1,3,55.00,1,55.00,8.00,4.00,59.00),(4,4,4,2,4,40.00,4,160.00,15.00,7.00,168.00),(5,5,5,1,5,65.00,2,130.00,10.00,5.00,135.00),(6,6,6,2,6,42.00,3,126.00,12.00,6.00,132.00),(7,7,7,1,7,48.00,1,48.00,8.00,4.00,52.00),(8,8,8,2,8,60.00,2,120.00,10.00,5.00,125.00),(9,9,9,1,9,38.00,4,152.00,15.00,7.00,160.00),(11,11,11,1,11,52.00,3,156.00,12.00,6.00,162.00),(12,12,12,2,12,44.00,2,88.00,10.00,5.00,93.00),(13,13,13,1,13,58.00,1,58.00,8.00,4.00,62.00),(14,14,14,2,14,62.00,3,186.00,12.00,6.00,192.00),(15,15,15,1,15,46.00,4,184.00,15.00,7.00,192.00),(16,16,16,2,16,75.00,2,150.00,10.00,5.00,155.00),(17,17,17,1,17,40.00,1,40.00,8.00,4.00,44.00),(18,18,18,2,18,68.00,3,204.00,12.00,6.00,210.00),(19,19,19,1,19,56.00,2,112.00,10.00,5.00,117.00),(20,20,20,2,20,42.00,4,168.00,15.00,7.00,176.00),(21,1,21,1,21,65.00,1,65.00,8.00,4.00,69.00),(22,2,22,2,22,50.00,3,150.00,12.00,6.00,156.00),(23,3,23,1,23,55.00,4,220.00,15.00,7.00,228.00),(24,4,24,2,24,45.00,1,45.00,8.00,4.00,49.00),(25,5,25,1,25,70.00,2,140.00,10.00,5.00,145.00),(26,6,26,2,26,48.00,3,144.00,12.00,6.00,150.00),(27,7,27,1,27,38.00,1,38.00,8.00,4.00,42.00),(28,8,28,2,28,60.00,4,240.00,15.00,7.00,248.00),(29,9,29,1,29,52.00,2,104.00,10.00,5.00,109.00),(30,10,30,2,30,75.00,3,225.00,12.00,6.00,231.00),(31,11,31,1,31,42.00,4,168.00,15.00,7.00,176.00),(32,12,32,2,32,58.00,1,58.00,8.00,4.00,62.00),(33,13,33,1,33,62.00,2,124.00,10.00,5.00,129.00),(34,14,34,2,34,46.00,3,138.00,12.00,6.00,144.00),(35,15,35,1,35,68.00,1,68.00,8.00,4.00,72.00),(36,16,36,2,36,55.00,4,220.00,15.00,7.00,228.00),(37,17,37,1,37,48.00,2,96.00,10.00,5.00,101.00),(38,18,38,2,38,70.00,3,210.00,12.00,6.00,216.00),(39,19,39,1,39,40.00,1,40.00,8.00,4.00,44.00),(40,20,40,2,40,62.00,4,248.00,15.00,7.00,256.00),(41,1,41,1,1,75.00,1,75.00,8.00,4.00,79.00),(42,2,42,2,2,52.00,3,156.00,12.00,6.00,162.00),(43,3,43,1,3,58.00,4,232.00,15.00,7.00,240.00),(44,4,44,2,4,45.00,1,45.00,8.00,4.00,49.00),(45,5,45,1,5,68.00,2,136.00,10.00,5.00,141.00),(46,6,46,2,6,48.00,3,144.00,12.00,6.00,150.00);
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ordersview`
--

DROP TABLE IF EXISTS `ordersview`;
/*!50001 DROP VIEW IF EXISTS `ordersview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ordersview` AS SELECT 
 1 AS `OrderID`,
 1 AS `Quantity`,
 1 AS `Subtotal`*/;
SET character_set_client = @saved_cs_client;

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
INSERT INTO `OrderType` VALUES (1,'Online'),(2,'In-Person');
/*!40000 ALTER TABLE `OrderType` ENABLE KEYS */;
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
INSERT INTO `Type` VALUES (1,'Appetizers','Small dishes served before the main meal to stimulate the appetite.'),(2,'Main Courses','The primary dishes in a meal, often including protein and sides.'),(3,'Desserts','Sweet treats served at the end of a meal for a satisfying finish.'),(4,'Beverages','Various drink options, including non-alcoholic and alcoholic drinks.'),(5,'Salads','Healthy and refreshing dishes consisting of greens and other ingredients.'),(6,'Soups','Warm and comforting liquid-based dishes, often with vegetables or meats.'),(7,'Snacks','Quick bites, typically enjoyed between meals or as a casual treat.'),(8,'Vegetarian','Dishes that exclude meat or animal products, suitable for vegetarians.'),(9,'Gluten-Free','Food items that do not contain gluten, suitable for those with gluten sensitivities.'),(10,'Seafood','Dishes featuring various types of fish and shellfish.'),(11,'Poultry','Dishes prepared with chicken, turkey, duck, or other fowl.'),(12,'Beef','Meat dishes made from beef, including steaks and roasts.'),(13,'Pork','Dishes made from pork, such as pork chops and ribs.'),(14,'Lamb','Dishes featuring lamb meat, known for its distinctive flavor.'),(15,'Vegan','Plant-based dishes that exclude all animal products.'),(16,'Sushi','Japanese cuisine featuring vinegared rice and various toppings.'),(17,'Breakfast','Morning meal options, often including eggs, bacon, and more.'),(18,'Sandwiches','Dishes made with various fillings between slices of bread or rolls.'),(19,'Pasta','Italian-inspired dishes with a variety of pasta shapes and sauces.');
/*!40000 ALTER TABLE `Type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `ordersview`
--

/*!50001 DROP VIEW IF EXISTS `ordersview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ordersview` AS select `orders`.`OrderID` AS `OrderID`,`orders`.`Quantity` AS `Quantity`,`orders`.`Subtotal` AS `Subtotal` from `orders` where (`orders`.`Quantity` > 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-12  0:21:43
