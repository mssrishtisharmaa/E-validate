CREATE DATABASE  IF NOT EXISTS `evalidate` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `evalidate`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: evalidate
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorymaster`
--

DROP TABLE IF EXISTS `categorymaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorymaster` (
  `CategoryID` int NOT NULL,
  `CategoryName` varchar(100) NOT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorymaster`
--

LOCK TABLES `categorymaster` WRITE;
/*!40000 ALTER TABLE `categorymaster` DISABLE KEYS */;
INSERT INTO `categorymaster` VALUES (1,'Electronics'),(2,'Cosmetics & Personal Care');
/*!40000 ALTER TABLE `categorymaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productmaster`
--

DROP TABLE IF EXISTS `productmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productmaster` (
  `ProductID` int NOT NULL,
  `BrandName` varchar(100) DEFAULT NULL,
  `ProductName` varchar(150) DEFAULT NULL,
  `GenericName` varchar(150) DEFAULT NULL,
  `NetQuantity` varchar(50) DEFAULT NULL,
  `MRP` decimal(10,2) DEFAULT NULL,
  `ManufactureDate` date DEFAULT NULL,
  `ExpiryDate` date DEFAULT NULL,
  `CountryOfOrigin` varchar(100) DEFAULT NULL,
  `ManufacturerName` varchar(150) DEFAULT NULL,
  `ManufacturerAddress` text,
  `PackerName` varchar(150) DEFAULT NULL,
  `PackerAddress` text,
  `ImporterName` varchar(150) DEFAULT NULL,
  `ImporterAddress` text,
  `CustomerCareEmail` varchar(150) DEFAULT NULL,
  `CustomerCarePhone` varchar(20) DEFAULT NULL,
  `Category` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productmaster`
--

LOCK TABLES `productmaster` WRITE;
/*!40000 ALTER TABLE `productmaster` DISABLE KEYS */;
INSERT INTO `productmaster` VALUES (1,'Chanel','Chanel No. 5 Eau de Parfum','Perfume','100ml',12000.00,'2025-01-05','2030-01-05','France','Chanel S.A.','135 Avenue Charles de Gaulle, Neuilly-sur-Seine, France','Chanel Packaging Unit','Paris, France','Chanel Imports India','Mumbai, Maharashtra, India','support@chanel.com','+91-1800-111-222','Fragrance'),(2,'Tropicana','Tropicana 100% Orange Juice',NULL,'1L',120.00,'2025-03-01','2025-07-01','India','PepsiCo India Holdings Pvt. Ltd.','Gurgaon, Haryana, India',NULL,'Kolkata, West Bengal, India','PepsiCo Imports','New Delhi, India','consumer@pepsico.com','+91-1800-22-4020','Beverage'),(3,'Maybelline','Maybelline SuperStay Matte Ink Lipstick','Lipstick','5ml',499.00,'2025-02-15','2028-02-15','India','L’Oreal India Pvt. Ltd.','Chakan Industrial Area, Pune, India','Maybelline Packaging Unit','Pune, Maharashtra, India','L’Oreal Imports','Mumbai, Maharashtra, India','care@maybelline.com','+91-1800-209-0177','Cosmetics'),(101,'amul butter','ghee','butter','50kg',1334.00,'2025-09-03','2025-09-15','China','hellow','jjjj','','sss','','','12@gmail.com','sss','Food'),(105,'face cream','ghee','butter','50kg',1334.00,'2025-09-03','2025-09-15','China','hellow','jjjj','','sss','','sssdf','12@gmail.com','sss','Cosmetics'),(106,'face cream','ghee','butter','50kg',1334.00,'2025-09-03','2025-09-15','China','hellow','jjjj','','sss','','sssdf','12@gmail.com','sss','Cosmetics'),(107,'face cream','ghee','butter','50kg',1334.00,'2025-09-03','2025-09-15','China','hellow','jjjj','','sss','','sssdf','12@gmail.com','sss','Food'),(111,'face cream','ghee','butter','50kg',1334.00,'2025-09-03','2025-09-15','China','hellow','jjjj','','sss','','sssdf','12@gmail.com','sss','Cosmetics'),(152,'face cream','jjj','jjjj','5200g',552.00,'2025-09-19','2025-09-06','China','hhhh','dddd','','','','sssdf','123@igdtuw.com','7888','Food'),(175,'amul','hello ','idk','234g',1555.00,'2025-09-03','2025-09-17','Other','heki','2530, tower  D, 24th floor, gaur siddhartham society, siddharth vihar','','2530, tower  D, 24th floor, gaur siddhartham society, siddharth vihar','','2530, tower  D, 24th floor, gaur siddhartham society, siddharth vihar','ms.srishti.sharma@outlook.com','+919318301299','Cosmetics'),(569,'face cream','lakme','night cream','',NULL,'2025-09-01','2025-09-26','China','shambhavi','E-13 STREET NO 1','sapna ','2530, tower  D, 24th floor, gaur siddhartham society, siddharth vihar','radhika ','2530, tower  D, 24th floor, gaur siddhartham society, siddharth vihar','ourcare@gmail.com','+919318301299','Cosmetics'),(888,'','','','',NULL,'2025-09-10','2025-09-15','USA','','','','','','','','','Cosmetics'),(987,'face cream','lakme','night cream','',NULL,'2025-09-01','2025-09-26','China','shambhavi','E-13 STREET NO 1','sapna ','2530, tower  D, 24th floor, gaur siddhartham society, siddharth vihar','radhika ','2530, tower  D, 24th floor, gaur siddhartham society, siddharth vihar','ourcare@gmail.com','+919318301299','Food'),(1110,'face cream','','','',NULL,'2025-09-04','2025-09-26','USA','','','','','','','','','Cosmetics'),(1111,'amul','hello ','idk','234g',1555.00,'2025-09-03','2025-09-17','Other','heki','2530, tower  D, 24th floor, gaur siddhartham society, siddharth vihar','','2530, tower  D, 24th floor, gaur siddhartham society, siddharth vihar','','2530, tower  D, 24th floor, gaur siddhartham society, siddharth vihar','ms.srishti.sharma@outlook.com','+919318301299','Food'),(66666,'feeehh','','','',NULL,'2025-09-16','2025-10-03','USA','','','','','','','','','Food'),(78888,'HHH','','','',NULL,'2025-09-24','2025-09-02','China','','','','','','','','','Cosmetics'),(123456,'feeehh','fghhr','','',NULL,'2025-09-16','2025-10-03','USA','','','','','','','','','Food'),(987456,'face cream','cream ','night cream','',NULL,'2025-09-01','2025-09-26','China','shambhavi','E-13 STREET NO 1','sapna ','2530, tower  D, 24th floor, gaur siddhartham society, siddharth vihar','radhika ','','ourcare@gmail.com','','Cosmetics'),(1234567,'face cream','lakme','','',NULL,'2025-09-01','2025-09-26','USA','shambhavi','E-13 STREET NO 1','sapna ','','radhika ','2530, tower  D, 24th floor, gaur siddhartham society, siddharth vihar','ourcare@gmail.com','+919318301299','Electronics');
/*!40000 ALTER TABLE `productmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sampletrecord`
--

DROP TABLE IF EXISTS `sampletrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sampletrecord` (
  `ProductID` int NOT NULL AUTO_INCREMENT,
  `BrandName` varchar(150) NOT NULL,
  `ProductName` varchar(200) NOT NULL,
  `GenericName` varchar(200) DEFAULT NULL,
  `NetQuantity` varchar(50) DEFAULT NULL,
  `MRP` decimal(10,2) DEFAULT NULL,
  `ManufactureDate` date DEFAULT NULL,
  `ExpiryDate` date DEFAULT NULL,
  `CountryOfOrigin` varchar(100) DEFAULT NULL,
  `ManufacturerName` varchar(200) DEFAULT NULL,
  `ManufacturerAddress` text,
  `PackerName` varchar(200) DEFAULT NULL,
  `PackerAddress` text,
  `ImporterName` varchar(200) DEFAULT NULL,
  `ImporterAddress` text,
  `CustomerCareEmail` varchar(150) DEFAULT NULL,
  `CustomerCarePhone` varchar(20) DEFAULT NULL,
  `Category` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sampletrecord`
--

LOCK TABLES `sampletrecord` WRITE;
/*!40000 ALTER TABLE `sampletrecord` DISABLE KEYS */;
INSERT INTO `sampletrecord` VALUES (1,'Chanel','Chanel No. 5 Eau de Parfum','Perfume','100ml',12000.00,'2025-01-05','2030-01-05','France','Chanel S.A.','135 Avenue Charles de Gaulle, Neuilly-sur-Seine, France','Chanel Packaging Unit','Paris, France','Chanel Imports India','Mumbai, Maharashtra, India','support@chanel.com','+91-1800-111-222','Fragrance'),(2,'Tropicana','Tropicana 100% Orange Juice',NULL,NULL,NULL,'2025-03-01','2025-07-01','India','PepsiCo India Holdings Pvt. Ltd.','Gurgaon, Haryana, India',NULL,'Kolkata, West Bengal, India','PepsiCo Imports','New Delhi, India','','+91-1800-22-4020','Beverage'),(3,'Maybelline','Maybelline SuperStay Matte Ink Lipstick','Lipstick','5ml',499.00,'2025-02-15','2028-02-15','India','L’Oreal India Pvt. Ltd.','Chakan Industrial Area, Pune, India','Maybelline Packaging Unit','Pune, Maharashtra, India','L’Oreal Imports','Mumbai, Maharashtra, India','care@maybelline.com','+91-1800-209-0177','Cosmetics'),(4,'Sony','Sony Headset','Over-Ear Headset',NULL,29999.00,'2025-01-01','2027-01-01',NULL,'Sony Corporation','1-7-1 Konan, Minato-ku, Tokyo','Sony Pack','Tokyo, Japan','Sony Importers','Mumbai, India','support@sony.com',NULL,'Electronics'),(5,'Lay\'s','Lay\'s Classic Chips','Potato Chips',NULL,35.00,'2025-06-01','2026-06-01',NULL,'Lay\'s Foods','123 Snack Street, Chicago','Lay\'s Pack','Chicago, USA','Lay\'s Importers','Delhi, India','care@lays.com',NULL,'Food'),(6,'HP','HP Spectre x360','Laptop','1 Unit',159999.00,'2025-02-15',NULL,'USA','HP Inc.','1500 HP Road, Palo Alto, CA','HP Pack','California, USA','HP Importers','Bangalore, India','support@hp.com','1800-111-222','Electronics'),(7,'Delight Foods','Delight Nuts Cashews','Cashew Nuts','2 packs',250.00,'2025-03-01',NULL,'India','Delight Foods Pvt Ltd','12 Nut Street, Delhi','Delight Pack','Delhi, India','Delight Importers','Mumbai, India','care@delight.com','1800-333-444','Food'),(8,'BrandZ','BrandZ Face Cream','Moisturizer Cream','50 oz',499.00,'2025-04-01',NULL,'India','BrandZ Cosmetics','45 Beauty Lane, Mumbai','BrandZ Pack','Mumbai, India','BrandZ Importers','Delhi, India','support@brandz.com','1800-555-666','Cosmetics'),(9,'Fortune','Fortune Mustard Oil','Mustard Oil','200g',180.00,'2025-05-01','2026-05-01',NULL,'Fortune Foods','21 Oil Street, Delhi','Fortune Pack','Delhi, India','Fortune Importers','Mumbai, India',NULL,'1800-777-888','Food'),(10,'Samsung','Samsung Galaxy S24 Ultra','Smartphone','1 Unit',149999.00,'2025-07-01','2028-07-01',NULL,'Samsung Electronics','Samsung Road, Seoul','Samsung Pack','Seoul, South Korea','Samsung Importers','Bangalore, India',NULL,'1800-999-000','Electronics');
/*!40000 ALTER TABLE `sampletrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secondarycategory`
--

DROP TABLE IF EXISTS `secondarycategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `secondarycategory` (
  `SecondaryCategoryID` int NOT NULL,
  `CategoryID` int NOT NULL,
  `SecondaryCategoryName` varchar(150) NOT NULL,
  PRIMARY KEY (`SecondaryCategoryID`),
  KEY `CategoryID` (`CategoryID`),
  CONSTRAINT `secondarycategory_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `categorymaster` (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secondarycategory`
--

LOCK TABLES `secondarycategory` WRITE;
/*!40000 ALTER TABLE `secondarycategory` DISABLE KEYS */;
INSERT INTO `secondarycategory` VALUES (1,1,'Smartphones'),(2,1,'Laptops'),(3,2,'Shampoo'),(4,2,'Face Cream');
/*!40000 ALTER TABLE `secondarycategory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-30  9:52:30
