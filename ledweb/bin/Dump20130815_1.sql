CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 5.6.13, for osx10.7 (i386)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	5.6.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `LEDbenefits`
--

DROP TABLE IF EXISTS `LEDbenefits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LEDbenefits` (
  `VersionID` int(11) NOT NULL AUTO_INCREMENT,
  `IsActive` int(11) DEFAULT NULL,
  `Article` text,
  `LEDbenefit1` varchar(255) DEFAULT NULL,
  `LEDbenefit2` varchar(255) DEFAULT NULL,
  `LEDbenefit3` varchar(255) DEFAULT NULL,
  `LEDbenefit4` varchar(255) DEFAULT NULL,
  `LEDbenefit5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`VersionID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LEDbenefits`
--

LOCK TABLES `LEDbenefits` WRITE;
/*!40000 ALTER TABLE `LEDbenefits` DISABLE KEYS */;
INSERT INTO `LEDbenefits` VALUES (1,0,'Hello, 1st article...','b1...','b2,..','b3,,,','b4...','b5///'),(2,1,'hello, 2nd article','bb1,,,','bb2,,,','bb3,,,','bb4...','bb5...//'),(3,2,'ineffective','v','c','b','k','m'),(4,3,'4th','bbbbb',NULL,NULL,NULL,NULL),(5,4,'test mybatis','t mybatis b1',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `LEDbenefits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Type`
--

DROP TABLE IF EXISTS `Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Type` (
  `TypeID` varchar(255) NOT NULL,
  `TypeName` varchar(255) DEFAULT NULL,
  `IsDelete` int(11) DEFAULT '0',
  `Reserve2` varchar(255) DEFAULT NULL,
  `Reserve3` varchar(255) DEFAULT NULL,
  `Reserve1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Type`
--

LOCK TABLES `Type` WRITE;
/*!40000 ALTER TABLE `Type` DISABLE KEYS */;
INSERT INTO `Type` VALUES ('1','a',1,'','',''),('2','a',0,'aaaa','aaaa','aaaa'),('3','type name a',0,'aaaa','aaaa','aaaa'),('c4cacbbf-55ac-446a-8c47-adb74bed83f1','aaaaaaaaaa',0,'57268177-376c-45ad-b4fe-3ae7472c8964','57268177-376c-45ad-b4fe-3ae7472c8964','57268177-376c-45ad-b4fe-3ae7472c8964'),('e789c746-f3a5-4bf0-8ac1-937a40a2a316','bbbbb',0,'57268177-376c-45ad-b4fe-3ae7472c8964','57268177-376c-45ad-b4fe-3ae7472c8964','57268177-376c-45ad-b4fe-3ae7472c8964');
/*!40000 ALTER TABLE `Type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TypeGroup`
--

DROP TABLE IF EXISTS `TypeGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TypeGroup` (
  `GroupID` varchar(255) NOT NULL,
  `GroupName` varchar(255) DEFAULT NULL,
  `IsDelete` int(11) DEFAULT '0',
  `Reserve1` varchar(255) DEFAULT NULL,
  `Reserve2` varchar(255) DEFAULT NULL,
  `Reserve3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TypeGroup`
--

LOCK TABLES `TypeGroup` WRITE;
/*!40000 ALTER TABLE `TypeGroup` DISABLE KEYS */;
INSERT INTO `TypeGroup` VALUES ('57268177-376c-45ad-b4fe-3ae7472c8964','groupNamea',0,'','',''),('aaaa','groupName1',0,'','','');
/*!40000 ALTER TABLE `TypeGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aboutUs`
--

DROP TABLE IF EXISTS `aboutUs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutUs` (
  `VersionID` int(11) NOT NULL AUTO_INCREMENT,
  `IsDelete` int(11) DEFAULT NULL,
  `Article` text,
  PRIMARY KEY (`VersionID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutUs`
--

LOCK TABLES `aboutUs` WRITE;
/*!40000 ALTER TABLE `aboutUs` DISABLE KEYS */;
INSERT INTO `aboutUs` VALUES (1,0,NULL),(2,1,'fake');
/*!40000 ALTER TABLE `aboutUs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `CategoryID` varchar(255) NOT NULL,
  `CategoryName` varchar(425) DEFAULT NULL,
  `Reserve1` varchar(255) DEFAULT NULL,
  `Reserve3` varchar(255) DEFAULT NULL,
  `Reserve2` varchar(255) DEFAULT NULL,
  `IsDelete` int(11) DEFAULT '0',
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('1','cat name11','3331111','','./UploadedImages/1375516962843_Sunset.jpg',0),('421d8b22-4381-4f59-bf79-91a5943a01bf','22','2221','','./UploadedImages/1375509712906_Sunset.jpg',0),('703284bc-d7a4-426d-98d5-c6bf3266e259','a','222','','./UploadedImages/1375514202171_Winter.jpg',0),('9f833736-ad04-4ec3-9fb8-93b63b890f45','12121','33aaa1','','./UploadedImages/1375510171078_Sunset.jpg',0);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactUs`
--

DROP TABLE IF EXISTS `contactUs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactUs` (
  `VersionID` int(11) NOT NULL AUTO_INCREMENT,
  `IsDelete` int(11) DEFAULT NULL,
  `Article` text,
  PRIMARY KEY (`VersionID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactUs`
--

LOCK TABLES `contactUs` WRITE;
/*!40000 ALTER TABLE `contactUs` DISABLE KEYS */;
INSERT INTO `contactUs` VALUES (1,1,'hello,c2.'),(2,1,'d,ls\'l'),(3,0,'T:123456, Email:abc@efg.com');
/*!40000 ALTER TABLE `contactUs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glossary`
--

DROP TABLE IF EXISTS `glossary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glossary` (
  `VersionID` int(11) NOT NULL AUTO_INCREMENT,
  `IsDelete` int(11) DEFAULT NULL,
  `Article` text,
  PRIMARY KEY (`VersionID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glossary`
--

LOCK TABLES `glossary` WRITE;
/*!40000 ALTER TABLE `glossary` DISABLE KEYS */;
INSERT INTO `glossary` VALUES (1,0,'qqq'),(2,1,'eee'),(3,1,'hello again,glossay .'),(4,1,'hello glossay.');
/*!40000 ALTER TABLE `glossary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `OrderID` varchar(255) NOT NULL,
  `UserID` varchar(255) DEFAULT NULL,
  `ProductID` varchar(255) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `IsDelete` int(11) DEFAULT '0',
  `TypeID` varchar(255) DEFAULT NULL,
  `Reserve2` varchar(255) DEFAULT NULL,
  `Reserve3` varchar(255) DEFAULT NULL,
  `Reserve1` varchar(255) DEFAULT NULL,
  `Message` text,
  `OrderDate` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `UserID` (`UserID`),
  KEY `ProductID` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES ('1',NULL,NULL,NULL,0,NULL,'','','',NULL,NULL,NULL),('2','1','1',123,1,'2','','','',NULL,NULL,NULL);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `ProductID` varchar(255) NOT NULL,
  `CategoryID` varchar(255) DEFAULT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `ProductDesc` text,
  `ProductImage` varchar(255) DEFAULT NULL,
  `IsDelete` int(11) DEFAULT '0',
  `Reserve2` varchar(255) DEFAULT NULL,
  `Reserve3` varchar(255) DEFAULT NULL,
  `Reserve1` varchar(255) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('384f0c77-5b7a-42a6-bbe6-d89e1a127208','1','aaaaa','<p><strong>happy new year </strong></p>\r\n\r\n<hr />','./UploadedImages/1376115416180_99965.jpg',0,'','','',1),('7c609973-8418-4511-aae2-d5ad757fb95e','1','ck test1','<h2 style=\"font-style:italic\"><strong><span style=\"color:#B22222\">Happy new year!</span></strong></h2>\r\n\r\n<p><span style=\"font-family:comic sans ms,cursive\">Sisters and brothers,</span></p>\r\n\r\n<p><span style=\"font-family:comic sans ms,cursive\">Let&#39;s have a dinner party at this X&#39;mas Eve. Come to Jessie&#39;s house when you&#39;re off duty today!</span></p>\r\n\r\n<p><span style=\"font-family:comic sans ms,cursive\">Hope to see you soon, cheers!</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:10px\">2012 MIT Chinese Classmates</span></p>\r\n','',0,'','','',88),('8a06d031-8968-4397-8f44-85c3d4a18092','1','maggieTest','<h1>Add product CKEditor</h1>\r\n\r\n<h1>My very best, I set you free.</h1>\r\n','./UploadedImages/1376400090730_PuckLight.jpg',0,'','','',99),('a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','1','121212','11111111111','./UploadedImages/1376111886463_feature4.jpg',0,'','','',12),('b63f9566-940b-4365-a94d-bd76edc6cc28','1','x1','jjjjjjjjjjjjjjjjjjjjj','./UploadedImages/1376111908739_rope_light.jpg',0,'','','',1),('c1bc9ea6-be91-43b5-b7cc-93beead19281','1','55555555555555555555555555555555555','12','./UploadedImages/1376111931949_feature5.jpg',0,'','','',1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productspec`
--

DROP TABLE IF EXISTS `productspec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productspec` (
  `ProductSpecID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductID` varchar(255) DEFAULT NULL,
  `SpecID` varchar(255) DEFAULT NULL,
  `SpecValue` varchar(255) DEFAULT NULL,
  `IsDelete` int(11) DEFAULT '0',
  `Reserve2` varchar(255) DEFAULT NULL,
  `Reserve3` varchar(255) DEFAULT NULL,
  `Reserve1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ProductSpecID`),
  KEY `ProductID` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productspec`
--

LOCK TABLES `productspec` WRITE;
/*!40000 ALTER TABLE `productspec` DISABLE KEYS */;
INSERT INTO `productspec` VALUES (35,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','12',1,'','',''),(36,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','2',1,'','',''),(37,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','12',1,'','',''),(38,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','211',1,'','',''),(39,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','12',1,'','',''),(40,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','aaaaaaaaaaaaaaaa',1,'','',''),(41,'c1bc9ea6-be91-43b5-b7cc-93beead19281','1','1',1,'','',''),(42,'c1bc9ea6-be91-43b5-b7cc-93beead19281','7','1212',1,'','',''),(43,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(44,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(45,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(46,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(47,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(48,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(49,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(50,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(51,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(52,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(53,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(54,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(55,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(56,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(57,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(58,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(59,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(60,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(61,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(62,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(63,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(64,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(65,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(66,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(67,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(68,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(69,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(70,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(71,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(72,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(73,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(74,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(75,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','7','12',1,'','',''),(76,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(77,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(78,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','7','12',1,'','',''),(79,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(80,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(81,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','7','12',1,'','',''),(82,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(83,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(84,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','7','12',1,'','',''),(85,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(86,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(87,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','7','12',1,'','',''),(88,'b63f9566-940b-4365-a94d-bd76edc6cc28','1','1',1,'','',''),(89,'b63f9566-940b-4365-a94d-bd76edc6cc28','7','121212',1,'','',''),(90,'b63f9566-940b-4365-a94d-bd76edc6cc28','1','1',1,'','',''),(91,'b63f9566-940b-4365-a94d-bd76edc6cc28','7','121212',1,'','',''),(92,'b63f9566-940b-4365-a94d-bd76edc6cc28','1','1',0,'','',''),(93,'b63f9566-940b-4365-a94d-bd76edc6cc28','7','121212',0,'','',''),(94,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(95,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','111111',1,'','',''),(96,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','7','12',1,'','',''),(97,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(98,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','111111',1,'','',''),(99,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','4','111111',1,'','',''),(100,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','7','12',1,'','',''),(101,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','3affd188-2dc2-4473-bed9-5b11d2ead731','2',1,'','',''),(102,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(103,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','834de2ad-8e7a-4bde-a84f-059c476f1d5c','2',1,'','',''),(104,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','bf15f4d3-2466-481b-8204-f1fc4b033ded','1',1,'','',''),(105,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','3affd188-2dc2-4473-bed9-5b11d2ead731','2',1,'','',''),(106,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(107,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','834de2ad-8e7a-4bde-a84f-059c476f1d5c','2',1,'','',''),(108,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','bf15f4d3-2466-481b-8204-f1fc4b033ded','1',1,'','',''),(109,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(110,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(111,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(112,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(113,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(114,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(115,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(116,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(117,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(118,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(119,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(120,'c1bc9ea6-be91-43b5-b7cc-93beead19281','c921d383-7864-42de-a630-2f5e24e3f17f','1',1,'','',''),(121,'c1bc9ea6-be91-43b5-b7cc-93beead19281','c921d383-7864-42de-a630-2f5e24e3f17f','1',1,'','',''),(122,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(123,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(124,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(125,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(126,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(127,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(128,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(129,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',0,'','',''),(130,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','3affd188-2dc2-4473-bed9-5b11d2ead731','2',1,'','',''),(131,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(132,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','834de2ad-8e7a-4bde-a84f-059c476f1d5c','2',1,'','',''),(133,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','bf15f4d3-2466-481b-8204-f1fc4b033ded','1',1,'','',''),(134,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(135,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','bf15f4d3-2466-481b-8204-f1fc4b033ded','1',1,'','',''),(136,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(137,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(138,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(139,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(140,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','834de2ad-8e7a-4bde-a84f-059c476f1d5c','1111',1,'','',''),(141,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','a237a116-fd01-4e40-b91a-bab69a40aef8','111',1,'','',''),(142,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(143,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(144,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73d327f3-8ab3-48a8-8b46-a9d708f8a4c3','testspec',1,'','',''),(145,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','834de2ad-8e7a-4bde-a84f-059c476f1d5c','1111',1,'','',''),(146,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','a237a116-fd01-4e40-b91a-bab69a40aef8','111',1,'','',''),(147,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(148,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(149,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73d327f3-8ab3-48a8-8b46-a9d708f8a4c3','testspec',1,'','',''),(150,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','a237a116-fd01-4e40-b91a-bab69a40aef8','111',1,'','',''),(151,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',0,'','',''),(152,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',0,'','',''),(153,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','a237a116-fd01-4e40-b91a-bab69a40aef8','111',0,'','',''),(154,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(155,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(156,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(157,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','a237a116-fd01-4e40-b91a-bab69a40aef8','',1,'','',''),(158,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(159,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(160,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','3affd188-2dc2-4473-bed9-5b11d2ead731','2',0,'','',''),(161,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',0,'','',''),(162,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','834de2ad-8e7a-4bde-a84f-059c476f1d5c','2',0,'','',''),(163,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(164,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','0dee7242-c226-4f35-9572-0a0dbf87e54a','3000',1,'','',''),(165,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(166,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','0dee7242-c226-4f35-9572-0a0dbf87e54a','3000',1,'','',''),(167,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(168,'8a06d031-8968-4397-8f44-85c3d4a18092','0dee7242-c226-4f35-9572-0a0dbf87e54a','40',1,'','',''),(169,'8a06d031-8968-4397-8f44-85c3d4a18092','3affd188-2dc2-4473-bed9-5b11d2ead731','for test',1,'','',''),(170,'8a06d031-8968-4397-8f44-85c3d4a18092','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','Jack',1,'','',''),(171,'8a06d031-8968-4397-8f44-85c3d4a18092','73d327f3-8ab3-48a8-8b46-a9d708f8a4c3','Rose',1,'','',''),(172,'8a06d031-8968-4397-8f44-85c3d4a18092','834de2ad-8e7a-4bde-a84f-059c476f1d5c','Titanic',1,'','',''),(173,'8a06d031-8968-4397-8f44-85c3d4a18092','a237a116-fd01-4e40-b91a-bab69a40aef8','heart of the occean',1,'','',''),(174,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','0dee7242-c226-4f35-9572-0a0dbf87e54a','3000',1,'','',''),(175,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(176,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','0dee7242-c226-4f35-9572-0a0dbf87e54a','3000',0,'','',''),(177,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',0,'','',''),(178,'8a06d031-8968-4397-8f44-85c3d4a18092','0dee7242-c226-4f35-9572-0a0dbf87e54a','40',0,'','',''),(179,'8a06d031-8968-4397-8f44-85c3d4a18092','3affd188-2dc2-4473-bed9-5b11d2ead731','for test',0,'','',''),(180,'8a06d031-8968-4397-8f44-85c3d4a18092','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','Jack',0,'','',''),(181,'8a06d031-8968-4397-8f44-85c3d4a18092','73d327f3-8ab3-48a8-8b46-a9d708f8a4c3','Rose',0,'','',''),(182,'8a06d031-8968-4397-8f44-85c3d4a18092','834de2ad-8e7a-4bde-a84f-059c476f1d5c','Titanic',0,'','',''),(183,'8a06d031-8968-4397-8f44-85c3d4a18092','a237a116-fd01-4e40-b91a-bab69a40aef8','heart of the occean',0,'','',''),(184,'7c609973-8418-4511-aae2-d5ad757fb95e','0dee7242-c226-4f35-9572-0a0dbf87e54a','40',1,'','',''),(185,'7c609973-8418-4511-aae2-d5ad757fb95e','3affd188-2dc2-4473-bed9-5b11d2ead731','34',1,'','',''),(186,'7c609973-8418-4511-aae2-d5ad757fb95e','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','grgwrdf',1,'','',''),(187,'7c609973-8418-4511-aae2-d5ad757fb95e','73d327f3-8ab3-48a8-8b46-a9d708f8a4c3','gn',1,'','',''),(188,'7c609973-8418-4511-aae2-d5ad757fb95e','834de2ad-8e7a-4bde-a84f-059c476f1d5c','gfd',1,'','',''),(189,'7c609973-8418-4511-aae2-d5ad757fb95e','0dee7242-c226-4f35-9572-0a0dbf87e54a','40',0,'','',''),(190,'7c609973-8418-4511-aae2-d5ad757fb95e','3affd188-2dc2-4473-bed9-5b11d2ead731','34',0,'','',''),(191,'7c609973-8418-4511-aae2-d5ad757fb95e','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','grgwrdf',0,'','',''),(192,'7c609973-8418-4511-aae2-d5ad757fb95e','73d327f3-8ab3-48a8-8b46-a9d708f8a4c3','gn',0,'','',''),(193,'7c609973-8418-4511-aae2-d5ad757fb95e','834de2ad-8e7a-4bde-a84f-059c476f1d5c','gfd',0,'','',''),(194,'18dd4755-8764-4180-99cf-09a11a556efb','0dee7242-c226-4f35-9572-0a0dbf87e54a','',0,'','',''),(195,'18dd4755-8764-4180-99cf-09a11a556efb','834de2ad-8e7a-4bde-a84f-059c476f1d5c','',0,'','','');
/*!40000 ALTER TABLE `productspec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producttype`
--

DROP TABLE IF EXISTS `producttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producttype` (
  `ProductTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductID` varchar(255) DEFAULT NULL,
  `TypeID` varchar(255) DEFAULT NULL,
  `IsDelete` int(11) DEFAULT '0',
  `Reserve2` varchar(255) DEFAULT NULL,
  `Reserve3` varchar(255) DEFAULT NULL,
  `Reserve1` varchar(255) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  PRIMARY KEY (`ProductTypeID`),
  KEY `ProductID` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producttype`
--

LOCK TABLES `producttype` WRITE;
/*!40000 ALTER TABLE `producttype` DISABLE KEYS */;
INSERT INTO `producttype` VALUES (1,'1','2',1,'','','',NULL),(2,'1','3',1,NULL,NULL,NULL,NULL),(3,'596fa958-90f1-46ee-8c6a-2cb099312795','2',0,'','','',7777),(4,'b6909712-b9dd-4447-b205-9cd73b1e6784','3',0,'','','',555),(5,'b1b64e3a-7304-4738-b5a9-1245969a3010','2',0,'','','',343434),(6,'09ae528e-fc48-4358-a31a-8b4d74c084ed','2',0,'','','',343434),(7,'0c07b7b2-6842-4353-83c8-9ec2b93ee4e1','2',0,'','','',343434),(8,'c3036972-5910-447f-89e6-5366d30ee4d3','2',0,'','','',343434),(9,'556777d6-cab9-4e9a-9761-3f3d9e7b4285','2',0,'','','',343434),(10,'3f7e2307-5df2-40ea-a422-bbfd1e3e1acc','3',0,'','','',555),(11,'790cf50b-2adc-4f57-9e4b-a7bfa7c33eb1','2',0,'','','',555),(12,'790cf50b-2adc-4f57-9e4b-a7bfa7c33eb1','3',0,'','','',555),(13,'827d44c9-b1a9-4345-bc44-9976b974a1d8','2',0,'','','',555),(14,'827d44c9-b1a9-4345-bc44-9976b974a1d8','3',0,'','','',555),(15,'','2',0,'','','',1),(16,'','3',0,'','','',1),(17,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2',1,'','','',1),(18,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(19,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2',1,'','','',1),(20,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(21,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2',1,'','','',1),(22,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(23,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(24,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(25,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','3',1,'','','',668),(26,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(27,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(28,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(29,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(30,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(31,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(32,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(33,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(34,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(35,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(36,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(37,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(38,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(39,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(40,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(41,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(42,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(43,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(44,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(45,'b63f9566-940b-4365-a94d-bd76edc6cc28','2',1,'','','',1),(46,'b63f9566-940b-4365-a94d-bd76edc6cc28','3',1,'','','',1),(47,'b63f9566-940b-4365-a94d-bd76edc6cc28','2',1,'','','',1),(48,'b63f9566-940b-4365-a94d-bd76edc6cc28','3',1,'','','',1),(49,'b63f9566-940b-4365-a94d-bd76edc6cc28','2',0,'','','',1),(50,'b63f9566-940b-4365-a94d-bd76edc6cc28','3',0,'','','',1),(51,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(52,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(53,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','2',1,'','','',12),(54,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','2',1,'','','',12),(55,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','3',1,'','','',12),(56,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2',1,'','','',1),(57,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(58,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7a8881e2-c95b-422c-8ab3-6e797afb9b25',1,'','','',1),(59,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(60,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(61,'c1bc9ea6-be91-43b5-b7cc-93beead19281','7a8881e2-c95b-422c-8ab3-6e797afb9b25',1,'','','',1),(62,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',0,'','','',1),(63,'c1bc9ea6-be91-43b5-b7cc-93beead19281','7a8881e2-c95b-422c-8ab3-6e797afb9b25',1,'','','',1),(64,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(65,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(66,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(67,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(68,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(69,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(70,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(71,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',0,'','','',668),(72,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','2',1,'','','',12),(73,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','3',1,'','','',12),(74,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','7a8881e2-c95b-422c-8ab3-6e797afb9b25',1,'','','',12),(75,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3',1,'','','',1),(76,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','7a8881e2-c95b-422c-8ab3-6e797afb9b25',1,'','','',1),(77,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2',1,'','','',1),(78,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(79,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2',1,'','','',1),(80,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(81,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2',1,'','','',1),(82,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(83,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2',1,'','','',1),(84,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(85,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2',0,'','','',1),(86,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',0,'','','',1),(87,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3',1,'','','',1),(88,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3',1,'','','',1),(89,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3',1,'','','',1),(90,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','2',1,'','','',1),(91,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3',1,'','','',1),(92,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','2',1,'','','',1),(93,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3',1,'','','',1),(94,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','2',0,'','','',12),(95,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','3',0,'','','',12),(96,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','2',1,'','','',1),(97,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3',1,'','','',1),(98,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','2',1,'','','',1),(99,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3',1,'','','',1),(100,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','2',1,'','','',1),(101,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3',1,'','','',1),(102,'8a06d031-8968-4397-8f44-85c3d4a18092','1b81f3d1-7bad-4459-bf26-a3133f16d329',1,'','','',99),(103,'8a06d031-8968-4397-8f44-85c3d4a18092','2',1,'','','',99),(104,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','2',1,'','','',1),(105,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3',1,'','','',1),(106,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','2',0,'','','',1),(107,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3',0,'','','',1),(108,'8a06d031-8968-4397-8f44-85c3d4a18092','1b81f3d1-7bad-4459-bf26-a3133f16d329',0,'','','',99),(109,'8a06d031-8968-4397-8f44-85c3d4a18092','2',0,'','','',99),(110,'7c609973-8418-4511-aae2-d5ad757fb95e','1b81f3d1-7bad-4459-bf26-a3133f16d329',1,'','','',88),(111,'7c609973-8418-4511-aae2-d5ad757fb95e','2',1,'','','',88),(112,'7c609973-8418-4511-aae2-d5ad757fb95e','3',1,'','','',88),(113,'7c609973-8418-4511-aae2-d5ad757fb95e','1b81f3d1-7bad-4459-bf26-a3133f16d329',0,'','','',88),(114,'7c609973-8418-4511-aae2-d5ad757fb95e','2',0,'','','',88),(115,'7c609973-8418-4511-aae2-d5ad757fb95e','3',0,'','','',88),(116,'18dd4755-8764-4180-99cf-09a11a556efb','1b81f3d1-7bad-4459-bf26-a3133f16d329',0,'','','',9);
/*!40000 ALTER TABLE `producttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spec`
--

DROP TABLE IF EXISTS `spec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spec` (
  `SpecID` varchar(255) NOT NULL,
  `SpecName` varchar(255) DEFAULT NULL,
  `IsDelete` int(11) DEFAULT '0',
  `Reserve2` varchar(255) DEFAULT NULL,
  `Reserve3` varchar(255) DEFAULT NULL,
  `Reserve1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SpecID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spec`
--

LOCK TABLES `spec` WRITE;
/*!40000 ALTER TABLE `spec` DISABLE KEYS */;
INSERT INTO `spec` VALUES ('0dee7242-c226-4f35-9572-0a0dbf87e54a','color temp',0,'','',''),('3affd188-2dc2-4473-bed9-5b11d2ead731','2222',0,'','',''),('73ce1cdc-a17f-4709-aa55-51a184cc6f1f','333331',0,'','',''),('73d327f3-8ab3-48a8-8b46-a9d708f8a4c3','test spec',0,'','',''),('834de2ad-8e7a-4bde-a84f-059c476f1d5c','666111',0,'','',''),('a237a116-fd01-4e40-b91a-bab69a40aef8','2222222',0,'','','');
/*!40000 ALTER TABLE `spec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `IsDelete` int(11) DEFAULT '0',
  `Reserve1` varchar(255) DEFAULT NULL,
  `Reserve2` varchar(255) DEFAULT NULL,
  `Reserve3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'MyTest1','123456','Password1','Address1',1,'','','');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-08-15 21:10:47
