CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: 192.168.103.18    Database: mydb
-- ------------------------------------------------------
-- Server version	5.1.69

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
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Category` (
  `CategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(425) DEFAULT NULL,
  `Reserve1` varchar(255) DEFAULT NULL,
  `Reserve3` varchar(255) DEFAULT NULL,
  `Reserve2` varchar(255) DEFAULT NULL,
  `IsDelete` int(11) DEFAULT '0',
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
INSERT INTO `Category` VALUES (1,'cat name','','','',0),(2,'cat 1',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order`
--

DROP TABLE IF EXISTS `Order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Order` (
  `OrderID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `IsDelete` int(11) DEFAULT '0',
  `TypeID` int(11) DEFAULT NULL,
  `Reserve2` varchar(255) DEFAULT NULL,
  `Reserve3` varchar(255) DEFAULT NULL,
  `Reserve1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `UserID` (`UserID`),
  KEY `ProductID` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order`
--

LOCK TABLES `Order` WRITE;
/*!40000 ALTER TABLE `Order` DISABLE KEYS */;
INSERT INTO `Order` VALUES (1,NULL,NULL,NULL,0,NULL,'','',''),(2,1,1,123,1,2,'','','');
/*!40000 ALTER TABLE `Order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Product` (
  `ProductID` varchar(255) NOT NULL,
  `CategoryID` int(11) DEFAULT NULL,
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
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES ('04af59c2-3c0b-4cb1-bd28-1b98926f5c47',1,'gdfgsdfg','<p>&lt;html class=&#39;&#39; lang=&#39;en&#39;&nbsp;</p>\r\n\r\n<p><u><img alt=\"a\" src=\"http://localhost:8080/ledweb/./CKImages/1376374388365_feature6.jpg\" style=\"border-style:solid; border-width:2px; float:right; height:100px; margin:2px; width:100px\" /></u></p>\r\n\r\n<p>xmlns:fb=&#39;https://www.facebook.com/2008/fbml&#39; xmlns:og=&#39;http://ogp.me/ns#&#39; xmlns=&#39;http://www.w3.org/1999/xhtml&#39;&gt;<br />\r\n&lt;head&gt;<br />\r\n&lt;script&gt;&nbsp; // Google Analytics</p>\r\n\r\n<div><br />\r\n&nbsp; var _gaq = _gaq || [];</div>\r\n\r\n<p>&nbsp; _gaq.push([&#39;_setAccount&#39;, &#39;UA-25136408-1&#39;]);</p>\r\n\r\n<p>&nbsp; // TODO (JULIAN): Remove after dashboard experiment<br />\r\n&nbsp; // Hack to set custom var before pageview tracked<br />\r\n&nbsp; // so that we can measure homepage dropoff for experiment<br />\r\n&nbsp; // END TODO</p>\r\n\r\n<p>&nbsp; _gaq.push([&#39;_trackPageview&#39;]);</p>\r\n\r\n<p><br />\r\n&nbsp; (function() {<br />\r\n&nbsp; &nbsp; var ga = document.createElement(&#39;script&#39;); ga.type = &#39;text/javascript&#39;; ga.async = true;<br />\r\n&nbsp; &nbsp; ga.src = (&#39;https:&#39; == document.location.protocol ? &#39;https://ssl&#39; : &#39;http://www&#39;) + &#39;.google-analytics.com/ga.js&#39;;<br />\r\n&nbsp; &nbsp; var s = document.getElementsByTagName(&#39;script&#39;)[0]; s.parentNode.insertBefore(ga, s);<br />\r\n&nbsp; })();</p>\r\n\r\n<p>&nbsp; // chartbeat<br />\r\n&nbsp; var _sf_startpt=(new Date()).getTime();</p>\r\n\r\n<p>&nbsp; // Generic<br />\r\n&nbsp; var root_url = &quot;http://www.codecademy.com/&quot;;</p>\r\n\r\n<p>&nbsp; // CCDATA<br />\r\n&nbsp; window.CCDATA = {};<br />\r\n&nbsp; CCDATA.env = &#39;production&#39;<br />\r\n&nbsp; CCDATA.asset_host = &#39;&#39;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\n&lt;/script&gt;</p>\r\n\r\n<p><br />\r\n&lt;title&gt;Codecademy&lt;/title&gt;<br />\r\n&lt;meta charset=&#39;utf-8&#39;&gt;</p>\r\n\r\n<p>&nbsp;</p>\r\n','/UploadedImages\\',0,'','','',1),('c1bc9ea6-be91-43b5-b7cc-93beead19281',2,'55555555555555555555555555555555555','<p>aa<span style=\"color:#006400\"><span style=\"background-color:#00FF00\">a</span></span><span style=\"color:#FF0000\"><span style=\"background-color:#00FF00\">aa</span>aaaa</span>aa<img alt=\"devil\" src=\"http://localhost:8080/ledweb/js/plugins/smiley/images/devil_smile.gif\" style=\"height:20px; width:20px\" title=\"devil\" /></p>\r\n','/UploadedImages/',0,'','','',1),('efb97483-6d0e-4a1d-bf72-36cea382382d',2,'a','<p>aa</p>\r\n','',0,'','','',1);
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductSpec`
--

DROP TABLE IF EXISTS `ProductSpec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProductSpec` (
  `ProductSpecID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductID` varchar(255) DEFAULT NULL,
  `SpecID` int(11) DEFAULT NULL,
  `SpecValue` varchar(255) DEFAULT NULL,
  `IsDelete` int(11) DEFAULT '0',
  `Reserve2` varchar(255) DEFAULT NULL,
  `Reserve3` varchar(255) DEFAULT NULL,
  `Reserve1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ProductSpecID`),
  KEY `ProductID` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductSpec`
--

LOCK TABLES `ProductSpec` WRITE;
/*!40000 ALTER TABLE `ProductSpec` DISABLE KEYS */;
INSERT INTO `ProductSpec` VALUES (35,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47',1,'12',1,'','',''),(36,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47',7,'2',1,'','',''),(37,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47',1,'12',1,'','',''),(38,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47',7,'211',1,'','',''),(39,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47',1,'12',1,'','',''),(40,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47',7,'aaaaaaaaaaaaaaaa',1,'','',''),(41,'c1bc9ea6-be91-43b5-b7cc-93beead19281',1,'1',1,'','',''),(42,'c1bc9ea6-be91-43b5-b7cc-93beead19281',7,'1212',1,'','',''),(43,'c1bc9ea6-be91-43b5-b7cc-93beead19281',1,'1',1,'','',''),(44,'c1bc9ea6-be91-43b5-b7cc-93beead19281',7,'1212',1,'','',''),(45,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47',1,'12',1,'','',''),(46,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47',7,'aaaaaaaaaaaaaaaa',1,'','',''),(47,'c1bc9ea6-be91-43b5-b7cc-93beead19281',1,'1',1,'','',''),(48,'c1bc9ea6-be91-43b5-b7cc-93beead19281',7,'1212',1,'','',''),(49,'c1bc9ea6-be91-43b5-b7cc-93beead19281',1,'1',1,'','',''),(50,'c1bc9ea6-be91-43b5-b7cc-93beead19281',7,'1212',1,'','',''),(51,'c1bc9ea6-be91-43b5-b7cc-93beead19281',1,'1',1,'','',''),(52,'c1bc9ea6-be91-43b5-b7cc-93beead19281',7,'1212',1,'','',''),(53,'c1bc9ea6-be91-43b5-b7cc-93beead19281',1,'1',1,'','',''),(54,'c1bc9ea6-be91-43b5-b7cc-93beead19281',7,'1212',1,'','',''),(55,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47',1,'12',0,'','',''),(56,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47',7,'aaaaaaaaaaaaaaaa',0,'','',''),(57,'c1bc9ea6-be91-43b5-b7cc-93beead19281',1,'1',0,'','',''),(58,'c1bc9ea6-be91-43b5-b7cc-93beead19281',7,'1212',0,'','',''),(59,'efb97483-6d0e-4a1d-bf72-36cea382382d',1,'12',0,'','',''),(60,'efb97483-6d0e-4a1d-bf72-36cea382382d',7,'1',0,'','','');
/*!40000 ALTER TABLE `ProductSpec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductType`
--

DROP TABLE IF EXISTS `ProductType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProductType` (
  `ProductTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductID` varchar(255) DEFAULT NULL,
  `TypeID` int(11) DEFAULT NULL,
  `IsDelete` int(11) DEFAULT '0',
  `Reserve2` varchar(255) DEFAULT NULL,
  `Reserve3` varchar(255) DEFAULT NULL,
  `Reserve1` varchar(255) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  PRIMARY KEY (`ProductTypeID`),
  KEY `ProductID` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductType`
--

LOCK TABLES `ProductType` WRITE;
/*!40000 ALTER TABLE `ProductType` DISABLE KEYS */;
INSERT INTO `ProductType` VALUES (1,'1',2,1,'','','',NULL),(2,'1',3,1,NULL,NULL,NULL,NULL),(3,'596fa958-90f1-46ee-8c6a-2cb099312795',2,0,'','','',7777),(4,'b6909712-b9dd-4447-b205-9cd73b1e6784',3,0,'','','',555),(5,'b1b64e3a-7304-4738-b5a9-1245969a3010',2,0,'','','',343434),(6,'09ae528e-fc48-4358-a31a-8b4d74c084ed',2,0,'','','',343434),(7,'0c07b7b2-6842-4353-83c8-9ec2b93ee4e1',2,0,'','','',343434),(8,'c3036972-5910-447f-89e6-5366d30ee4d3',2,0,'','','',343434),(9,'556777d6-cab9-4e9a-9761-3f3d9e7b4285',2,0,'','','',343434),(10,'3f7e2307-5df2-40ea-a422-bbfd1e3e1acc',3,0,'','','',555),(11,'790cf50b-2adc-4f57-9e4b-a7bfa7c33eb1',2,0,'','','',555),(12,'790cf50b-2adc-4f57-9e4b-a7bfa7c33eb1',3,0,'','','',555),(13,'827d44c9-b1a9-4345-bc44-9976b974a1d8',2,0,'','','',555),(14,'827d44c9-b1a9-4345-bc44-9976b974a1d8',3,0,'','','',555),(15,'',2,0,'','','',1),(16,'',3,0,'','','',1),(17,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47',2,1,'','','',1),(18,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47',3,1,'','','',1),(19,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47',2,1,'','','',1),(20,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47',3,1,'','','',1),(21,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47',2,1,'','','',1),(22,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47',3,1,'','','',1),(23,'c1bc9ea6-be91-43b5-b7cc-93beead19281',3,1,'','','',1),(24,'c1bc9ea6-be91-43b5-b7cc-93beead19281',3,1,'','','',1),(25,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47',2,1,'','','',1),(26,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47',3,1,'','','',1),(27,'c1bc9ea6-be91-43b5-b7cc-93beead19281',3,1,'','','',1),(28,'c1bc9ea6-be91-43b5-b7cc-93beead19281',3,1,'','','',1),(29,'c1bc9ea6-be91-43b5-b7cc-93beead19281',3,1,'','','',1),(30,'c1bc9ea6-be91-43b5-b7cc-93beead19281',3,1,'','','',1),(31,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47',2,0,'','','',1),(32,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47',3,0,'','','',1),(33,'c1bc9ea6-be91-43b5-b7cc-93beead19281',3,0,'','','',1),(34,'efb97483-6d0e-4a1d-bf72-36cea382382d',3,0,'','','',1);
/*!40000 ALTER TABLE `ProductType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Spec`
--

DROP TABLE IF EXISTS `Spec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Spec` (
  `SpecID` int(11) NOT NULL AUTO_INCREMENT,
  `SpecName` varchar(255) DEFAULT NULL,
  `IsDelete` int(11) DEFAULT '0',
  `Reserve2` varchar(255) DEFAULT NULL,
  `Reserve3` varchar(255) DEFAULT NULL,
  `Reserve1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SpecID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Spec`
--

LOCK TABLES `Spec` WRITE;
/*!40000 ALTER TABLE `Spec` DISABLE KEYS */;
INSERT INTO `Spec` VALUES (1,'spec name',0,'','','aaa'),(2,'spec name 1',0,NULL,NULL,'bbb'),(4,'spec name 2',0,NULL,NULL,'1'),(6,'spec anem 1',0,NULL,NULL,NULL),(7,'spec anme 23',0,NULL,NULL,NULL),(8,'spec name 2',1,NULL,NULL,NULL),(9,'afsaf',1,NULL,NULL,NULL),(10,'asfasdfsdf',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Spec` ENABLE KEYS */;
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
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
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
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'MyTest1','123456','Password1','Address1',1,'','','');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
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
INSERT INTO `product` VALUES ('384f0c77-5b7a-42a6-bbe6-d89e1a127208','1','aaaaa','<b> x </b> <hr />','./UploadedImages/1375591413906_Water lilies.jpg',0,'','','',1),('a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','1','121212','11111111111','./UploadedImages/1375518397906_Winter.jpg',0,'','','',12),('b63f9566-940b-4365-a94d-bd76edc6cc28','1','x1','jjjjjjjjjjjjjjjjjjjjj','./UploadedImages/1375591431265_Sunset.jpg',0,'','','',1),('c1bc9ea6-be91-43b5-b7cc-93beead19281','1','55555555555555555555555555555555555','12','./UploadedImages/1375584984578_Winter.jpg',0,'','','',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productspec`
--

LOCK TABLES `productspec` WRITE;
/*!40000 ALTER TABLE `productspec` DISABLE KEYS */;
INSERT INTO `productspec` VALUES (35,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','12',1,'','',''),(36,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','2',1,'','',''),(37,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','12',1,'','',''),(38,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','211',1,'','',''),(39,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','12',1,'','',''),(40,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','aaaaaaaaaaaaaaaa',1,'','',''),(41,'c1bc9ea6-be91-43b5-b7cc-93beead19281','1','1',1,'','',''),(42,'c1bc9ea6-be91-43b5-b7cc-93beead19281','7','1212',1,'','',''),(43,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(44,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(45,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(46,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(47,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(48,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(49,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(50,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(51,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(52,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(53,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(54,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(55,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(56,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(57,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(58,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(59,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(60,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(61,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(62,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(63,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(64,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(65,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(66,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(67,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(68,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(69,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(70,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(71,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(72,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(73,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(74,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(75,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','7','12',1,'','',''),(76,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(77,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(78,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','7','12',1,'','',''),(79,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(80,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(81,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','7','12',1,'','',''),(82,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(83,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(84,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','7','12',1,'','',''),(85,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(86,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(87,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','7','12',1,'','',''),(88,'b63f9566-940b-4365-a94d-bd76edc6cc28','1','1',1,'','',''),(89,'b63f9566-940b-4365-a94d-bd76edc6cc28','7','121212',1,'','',''),(90,'b63f9566-940b-4365-a94d-bd76edc6cc28','1','1',1,'','',''),(91,'b63f9566-940b-4365-a94d-bd76edc6cc28','7','121212',1,'','',''),(92,'b63f9566-940b-4365-a94d-bd76edc6cc28','1','1',0,'','',''),(93,'b63f9566-940b-4365-a94d-bd76edc6cc28','7','121212',0,'','',''),(94,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(95,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','111111',1,'','',''),(96,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','7','12',1,'','',''),(97,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(98,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','111111',1,'','',''),(99,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','4','111111',1,'','',''),(100,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','7','12',1,'','',''),(101,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','3affd188-2dc2-4473-bed9-5b11d2ead731','2',1,'','',''),(102,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(103,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','834de2ad-8e7a-4bde-a84f-059c476f1d5c','2',1,'','',''),(104,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','bf15f4d3-2466-481b-8204-f1fc4b033ded','1',1,'','',''),(105,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','3affd188-2dc2-4473-bed9-5b11d2ead731','2',1,'','',''),(106,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(107,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','834de2ad-8e7a-4bde-a84f-059c476f1d5c','2',1,'','',''),(108,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','bf15f4d3-2466-481b-8204-f1fc4b033ded','1',1,'','',''),(109,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(110,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(111,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(112,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(113,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(114,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(115,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(116,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(117,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(118,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(119,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(120,'c1bc9ea6-be91-43b5-b7cc-93beead19281','c921d383-7864-42de-a630-2f5e24e3f17f','1',1,'','',''),(121,'c1bc9ea6-be91-43b5-b7cc-93beead19281','c921d383-7864-42de-a630-2f5e24e3f17f','1',1,'','',''),(122,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(123,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(124,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(125,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(126,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(127,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(128,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(129,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',0,'','',''),(130,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','3affd188-2dc2-4473-bed9-5b11d2ead731','2',0,'','',''),(131,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',0,'','',''),(132,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','834de2ad-8e7a-4bde-a84f-059c476f1d5c','2',0,'','',''),(133,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','bf15f4d3-2466-481b-8204-f1fc4b033ded','1',1,'','',''),(134,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(135,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','bf15f4d3-2466-481b-8204-f1fc4b033ded','1',1,'','',''),(136,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(137,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(138,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(139,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(140,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','834de2ad-8e7a-4bde-a84f-059c476f1d5c','1111',1,'','',''),(141,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','a237a116-fd01-4e40-b91a-bab69a40aef8','111',1,'','',''),(142,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(143,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(144,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73d327f3-8ab3-48a8-8b46-a9d708f8a4c3','testspec',1,'','',''),(145,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','834de2ad-8e7a-4bde-a84f-059c476f1d5c','1111',1,'','',''),(146,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','a237a116-fd01-4e40-b91a-bab69a40aef8','111',1,'','',''),(147,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(148,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(149,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73d327f3-8ab3-48a8-8b46-a9d708f8a4c3','testspec',1,'','',''),(150,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','a237a116-fd01-4e40-b91a-bab69a40aef8','111',1,'','',''),(151,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',0,'','',''),(152,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',0,'','',''),(153,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','a237a116-fd01-4e40-b91a-bab69a40aef8','111',0,'','',''),(154,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(155,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(156,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(157,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','a237a116-fd01-4e40-b91a-bab69a40aef8','',1,'','',''),(158,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',0,'','','');
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producttype`
--

LOCK TABLES `producttype` WRITE;
/*!40000 ALTER TABLE `producttype` DISABLE KEYS */;
INSERT INTO `producttype` VALUES (1,'1','2',1,'','','',NULL),(2,'1','3',1,NULL,NULL,NULL,NULL),(3,'596fa958-90f1-46ee-8c6a-2cb099312795','2',0,'','','',7777),(4,'b6909712-b9dd-4447-b205-9cd73b1e6784','3',0,'','','',555),(5,'b1b64e3a-7304-4738-b5a9-1245969a3010','2',0,'','','',343434),(6,'09ae528e-fc48-4358-a31a-8b4d74c084ed','2',0,'','','',343434),(7,'0c07b7b2-6842-4353-83c8-9ec2b93ee4e1','2',0,'','','',343434),(8,'c3036972-5910-447f-89e6-5366d30ee4d3','2',0,'','','',343434),(9,'556777d6-cab9-4e9a-9761-3f3d9e7b4285','2',0,'','','',343434),(10,'3f7e2307-5df2-40ea-a422-bbfd1e3e1acc','3',0,'','','',555),(11,'790cf50b-2adc-4f57-9e4b-a7bfa7c33eb1','2',0,'','','',555),(12,'790cf50b-2adc-4f57-9e4b-a7bfa7c33eb1','3',0,'','','',555),(13,'827d44c9-b1a9-4345-bc44-9976b974a1d8','2',0,'','','',555),(14,'827d44c9-b1a9-4345-bc44-9976b974a1d8','3',0,'','','',555),(15,'','2',0,'','','',1),(16,'','3',0,'','','',1),(17,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2',1,'','','',1),(18,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(19,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2',1,'','','',1),(20,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(21,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2',1,'','','',1),(22,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(23,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(24,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(25,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','3',1,'','','',668),(26,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(27,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(28,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(29,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(30,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(31,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(32,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(33,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(34,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(35,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(36,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(37,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(38,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(39,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(40,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(41,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(42,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(43,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(44,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(45,'b63f9566-940b-4365-a94d-bd76edc6cc28','2',1,'','','',1),(46,'b63f9566-940b-4365-a94d-bd76edc6cc28','3',1,'','','',1),(47,'b63f9566-940b-4365-a94d-bd76edc6cc28','2',1,'','','',1),(48,'b63f9566-940b-4365-a94d-bd76edc6cc28','3',1,'','','',1),(49,'b63f9566-940b-4365-a94d-bd76edc6cc28','2',0,'','','',1),(50,'b63f9566-940b-4365-a94d-bd76edc6cc28','3',0,'','','',1),(51,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(52,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(53,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','2',1,'','','',12),(54,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','2',1,'','','',12),(55,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','3',1,'','','',12),(56,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2',1,'','','',1),(57,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(58,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7a8881e2-c95b-422c-8ab3-6e797afb9b25',1,'','','',1),(59,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(60,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(61,'c1bc9ea6-be91-43b5-b7cc-93beead19281','7a8881e2-c95b-422c-8ab3-6e797afb9b25',1,'','','',1),(62,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',0,'','','',1),(63,'c1bc9ea6-be91-43b5-b7cc-93beead19281','7a8881e2-c95b-422c-8ab3-6e797afb9b25',1,'','','',1),(64,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(65,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(66,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(67,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(68,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(69,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(70,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',1,'','','',668),(71,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2',0,'','','',668),(72,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','2',0,'','','',12),(73,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','3',0,'','','',12),(74,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','7a8881e2-c95b-422c-8ab3-6e797afb9b25',1,'','','',12),(75,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3',1,'','','',1),(76,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','7a8881e2-c95b-422c-8ab3-6e797afb9b25',1,'','','',1),(77,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2',1,'','','',1),(78,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(79,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2',1,'','','',1),(80,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(81,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2',1,'','','',1),(82,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(83,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2',1,'','','',1),(84,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(85,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2',0,'','','',1),(86,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',0,'','','',1),(87,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3',1,'','','',1),(88,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3',1,'','','',1),(89,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3',1,'','','',1),(90,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','2',0,'','','',1),(91,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3',0,'','','',1);
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
INSERT INTO `spec` VALUES ('3affd188-2dc2-4473-bed9-5b11d2ead731','2222',0,'','',''),('73ce1cdc-a17f-4709-aa55-51a184cc6f1f','333331',0,'','',''),('73d327f3-8ab3-48a8-8b46-a9d708f8a4c3','test spec',0,'','',''),('834de2ad-8e7a-4bde-a84f-059c476f1d5c','666111',0,'','',''),('a237a116-fd01-4e40-b91a-bab69a40aef8','2222222',0,'','','');
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

-- Dump completed on 2013-08-15 18:33:39
