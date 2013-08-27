CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */;
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
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutus` (
  `VersionID` int(11) NOT NULL AUTO_INCREMENT,
  `IsDelete` int(11) DEFAULT NULL,
  `Article` text,
  PRIMARY KEY (`VersionID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` VALUES (1,0,NULL),(2,1,'fake');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
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
INSERT INTO `category` VALUES ('1','down lights','','1377066017010','./UploadedImages/1377064590479_feature4.jpg',0),('2','strip lights','1111111111111','1377066026103','./UploadedImages/1377064597695_feature1.jpg',0),('2c613f6f-862d-4450-93b0-e6eaa5ae0e67','rope lights','','1377065918269','./UploadedImages/1377064601657_downlights.jpg',0),('c4128748-3e45-4506-9b5a-fc0bdc88b947','puck lights','','1377066020374','./UploadedImages/1377064607143_feature6.jpg',0),('f62d11ca-bf81-445e-b856-81632b2eca97','bew','','1377080111323','./UploadedImages/1377080111323_03.jpg',0);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactus` (
  `VersionID` int(11) NOT NULL AUTO_INCREMENT,
  `IsDelete` int(11) DEFAULT NULL,
  `Article` text,
  PRIMARY KEY (`VersionID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactus`
--

LOCK TABLES `contactus` WRITE;
/*!40000 ALTER TABLE `contactus` DISABLE KEYS */;
INSERT INTO `contactus` VALUES (1,1,'hello,c2.'),(2,1,'d,ls\'l'),(3,0,'T:123456, Email:abc@efg.com');
/*!40000 ALTER TABLE `contactus` ENABLE KEYS */;
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
-- Table structure for table `homeimage`
--

DROP TABLE IF EXISTS `homeimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homeimage` (
  `ImageURL` text,
  `Type` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homeimage`
--

LOCK TABLES `homeimage` WRITE;
/*!40000 ALTER TABLE `homeimage` DISABLE KEYS */;
INSERT INTO `homeimage` VALUES ('./CKImages/1376981611253_04.jpg','home'),('./CKImages/1376981636087_02.jpg','home'),('./CKImages/1376981646670_03.jpg','home'),('./CKImages/1376981650690_04.jpg','home'),('./CKImages/1376366179358_avator.png','mobile'),('./CKImages/1376366186632_avator.png','mobile'),('./CKImages/1376366243659_avator.png','mobile');
/*!40000 ALTER TABLE `homeimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ledbenefits`
--

DROP TABLE IF EXISTS `ledbenefits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ledbenefits` (
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
-- Dumping data for table `ledbenefits`
--

LOCK TABLES `ledbenefits` WRITE;
/*!40000 ALTER TABLE `ledbenefits` DISABLE KEYS */;
INSERT INTO `ledbenefits` VALUES (1,0,'Hello, 1st article...','b1...','b2,..','b3,,,','b4...','b5///'),(2,1,'hello, 2nd article','bb1,,,','bb2,,,','bb3,,,','bb4...','bb5...//'),(3,2,'ineffective','v','c','b','k','m'),(4,3,'4th','bbbbb',NULL,NULL,NULL,NULL),(5,4,'test mybatis','t mybatis b1',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ledbenefits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
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
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,NULL,NULL,NULL,0,NULL,'','',''),(2,1,1,123,1,2,'','','');
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
INSERT INTO `product` VALUES ('04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','gdfgsdfg','<p><span style=\"color:#800000\"><span style=\"font-size:18px\">Flat panel TVs</span></span></p>\r\n\r\n<ul>\r\n	<li>The beauty of LCD, LED and plasma or flat panel TVs is that they&#39;re much slimmer than older, &#39;big-box&#39; televisions (anything from 1cm to about 20cm deep, compared with 50cm to 60cm deep for a 32-inch big-box TV set with a cathode ray tube).&nbsp;</li>\r\n	<li>Flat panel TVs generally take up less space, have bigger screens, can be mounted on walls and look stylish.</li>\r\n	<li>They sport high resolution (HD) screens. HD picture quality on the latest TVs can be stunning, but sound quality is often disappointing. The trend towards thinner and thinner models leave less room for good speakers.</li>\r\n	<li>HD TV Guide&nbsp;- find all more about high definition.</li>\r\n</ul>\r\n\r\n<p><span style=\"color:#800000\"><span style=\"font-size:18px\">Smart TV</span></span></p>\r\n\r\n<ul>\r\n	<li>Smart TV is a catch all term for TVs with internet features, also known as &lsquo;internet TVs&rsquo; or &lsquo;connected TVs&rsquo;. Each TV manufacturer has its own smart TV system, which has a range of apps for different services &ndash; common apps include BBC iPlayer and YouTube.</li>\r\n	<li>Smart TV&nbsp;- find out more about smart TV</li>\r\n</ul>\r\n\r\n<p><span style=\"color:#800000\"><span style=\"font-size:18px\">3D TV</span></span></p>\r\n\r\n<ul>\r\n	<li>Many new TVs can display a 3D picture. To watch in 3D, you need a pair of 3D glasses and some 3D content. Sky has its own 3D channel, while Virgin Media and BT Vision both offer a selection of on-demand 3D content. You can also watch 3D films on a 3D Blu-ray player.</li>\r\n	<li>3D TV essential guide&nbsp;- all you need to know</li>\r\n</ul>\r\n\r\n<p>Logos and labels on LED, LCD and plasma TVs</p>\r\n\r\n<p>&nbsp;</p>\r\n','./UploadedImages/1377078107339_02.jpg',0,'','','1',1),('8a073cfc-b03e-4421-a10f-ff363f620b56','1','test','<p>Java backtrace for programmers:</p>\r\n\r\n<p>----------</p>\r\n\r\n<p>freemarker.core.NonBooleanException: Error on line 132, column 22 in viewEntity_js.ftl</p>\r\n\r\n<p>Expecting a boolean (true/false) expression here</p>\r\n\r\n<p>Expression fields?size does not evaluate to true/false</p>\r\n\r\n<p>it is an instance of freemarker.template.SimpleNumber</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;at freemarker.core.Expression.isTrue(Expression.java:150)</p>\r\n','./UploadedImages/1377078186841_03.jpg',0,'','','1',0),('c1bc9ea6-be91-43b5-b7cc-93beead19281','1','5555555','<p>aa<span style=\"color:#006400\"><span style=\"background-color:#00FF00\">a</span></span><span style=\"color:#FF0000\"><span style=\"background-color:#00FF00\">aa</span>aaaa</span>aa</p>\r\n\r\n<p><img alt=\"\" src=\"./CKImages/1376806633234_Winter.jpg\" style=\"height:225px; width:300px\" /></p>\r\n','./images/no.jpg',0,'','','1',1),('efb97483-6d0e-4a1d-bf72-36cea382382d','1','a','<p>Java backtrace for programmers:</p>\r\n\r\n<p>----------</p>\r\n\r\n<p>freemarker.core.NonBooleanException: Error on line 132, column 22 in viewEntity_js.ftl</p>\r\n\r\n<p>Expecting a boolean (true/false) expression here</p>\r\n\r\n<p>Expression fields?size does not evaluate to true/false</p>\r\n\r\n<p>it is an instance of freemarker.template.SimpleNumber</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;at freemarker.core.Expression.isTrue(Expression.java:150)</p>\r\n','./UploadedImages/1377078388809_01.jpg',0,'','','1',123);
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
) ENGINE=InnoDB AUTO_INCREMENT=415 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productspec`
--

LOCK TABLES `productspec` WRITE;
/*!40000 ALTER TABLE `productspec` DISABLE KEYS */;
INSERT INTO `productspec` VALUES (35,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','12',1,'','',''),(36,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','2',1,'','',''),(37,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','12',1,'','',''),(38,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','211',1,'','',''),(39,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','12',1,'','',''),(40,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','aaaaaaaaaaaaaaaa',1,'','',''),(41,'c1bc9ea6-be91-43b5-b7cc-93beead19281','1','1',1,'','',''),(42,'c1bc9ea6-be91-43b5-b7cc-93beead19281','7','1212',1,'','',''),(43,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(44,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(45,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(46,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(47,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(48,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(49,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(50,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(51,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(52,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(53,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(54,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(55,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(56,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(57,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(58,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(59,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(60,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(61,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(62,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(63,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(64,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(65,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(66,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(67,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(68,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(69,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(70,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(71,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(72,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(73,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(74,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(75,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','7','12',1,'','',''),(76,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(77,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(78,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','7','12',1,'','',''),(79,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(80,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(81,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','7','12',1,'','',''),(82,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(83,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(84,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','7','12',1,'','',''),(85,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(86,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(87,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','7','12',1,'','',''),(88,'b63f9566-940b-4365-a94d-bd76edc6cc28','1','1',1,'','',''),(89,'b63f9566-940b-4365-a94d-bd76edc6cc28','7','121212',1,'','',''),(90,'b63f9566-940b-4365-a94d-bd76edc6cc28','1','1',1,'','',''),(91,'b63f9566-940b-4365-a94d-bd76edc6cc28','7','121212',1,'','',''),(92,'b63f9566-940b-4365-a94d-bd76edc6cc28','1','1',0,'','',''),(93,'b63f9566-940b-4365-a94d-bd76edc6cc28','7','121212',0,'','',''),(94,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(95,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','111111',1,'','',''),(96,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','7','12',1,'','',''),(97,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(98,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','111111',1,'','',''),(99,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','4','111111',1,'','',''),(100,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','7','12',1,'','',''),(101,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','3affd188-2dc2-4473-bed9-5b11d2ead731','2',1,'','',''),(102,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(103,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','834de2ad-8e7a-4bde-a84f-059c476f1d5c','2',1,'','',''),(104,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','bf15f4d3-2466-481b-8204-f1fc4b033ded','1',1,'','',''),(105,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','3affd188-2dc2-4473-bed9-5b11d2ead731','2',1,'','',''),(106,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(107,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','834de2ad-8e7a-4bde-a84f-059c476f1d5c','2',1,'','',''),(108,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','bf15f4d3-2466-481b-8204-f1fc4b033ded','1',1,'','',''),(109,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(110,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(111,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(112,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(113,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(114,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(115,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(116,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(117,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(118,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(119,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(120,'c1bc9ea6-be91-43b5-b7cc-93beead19281','c921d383-7864-42de-a630-2f5e24e3f17f','1',1,'','',''),(121,'c1bc9ea6-be91-43b5-b7cc-93beead19281','c921d383-7864-42de-a630-2f5e24e3f17f','1',1,'','',''),(122,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(123,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(124,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(125,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(126,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(127,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(128,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(129,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',0,'','',''),(130,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','3affd188-2dc2-4473-bed9-5b11d2ead731','2',1,'','',''),(131,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(132,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','834de2ad-8e7a-4bde-a84f-059c476f1d5c','2',1,'','',''),(133,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','bf15f4d3-2466-481b-8204-f1fc4b033ded','1',1,'','',''),(134,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(135,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','bf15f4d3-2466-481b-8204-f1fc4b033ded','1',1,'','',''),(136,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(137,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(138,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(139,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(140,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','834de2ad-8e7a-4bde-a84f-059c476f1d5c','1111',1,'','',''),(141,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','a237a116-fd01-4e40-b91a-bab69a40aef8','111',1,'','',''),(142,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(143,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(144,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73d327f3-8ab3-48a8-8b46-a9d708f8a4c3','testspec',1,'','',''),(145,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','834de2ad-8e7a-4bde-a84f-059c476f1d5c','1111',1,'','',''),(146,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','a237a116-fd01-4e40-b91a-bab69a40aef8','111',1,'','',''),(147,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(148,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(149,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73d327f3-8ab3-48a8-8b46-a9d708f8a4c3','testspec',1,'','',''),(150,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','a237a116-fd01-4e40-b91a-bab69a40aef8','111',1,'','',''),(151,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(152,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(153,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','a237a116-fd01-4e40-b91a-bab69a40aef8','111',1,'','',''),(154,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(155,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(156,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(157,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','a237a116-fd01-4e40-b91a-bab69a40aef8','',1,'','',''),(158,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(159,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(160,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','3affd188-2dc2-4473-bed9-5b11d2ead731','2',0,'','',''),(161,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',0,'','',''),(162,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','834de2ad-8e7a-4bde-a84f-059c476f1d5c','2',0,'','',''),(163,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(164,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','0dee7242-c226-4f35-9572-0a0dbf87e54a','3000',1,'','',''),(165,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(166,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','0dee7242-c226-4f35-9572-0a0dbf87e54a','3000',1,'','',''),(167,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(168,'8a06d031-8968-4397-8f44-85c3d4a18092','0dee7242-c226-4f35-9572-0a0dbf87e54a','40',1,'','',''),(169,'8a06d031-8968-4397-8f44-85c3d4a18092','3affd188-2dc2-4473-bed9-5b11d2ead731','for test',1,'','',''),(170,'8a06d031-8968-4397-8f44-85c3d4a18092','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','Jack',1,'','',''),(171,'8a06d031-8968-4397-8f44-85c3d4a18092','73d327f3-8ab3-48a8-8b46-a9d708f8a4c3','Rose',1,'','',''),(172,'8a06d031-8968-4397-8f44-85c3d4a18092','834de2ad-8e7a-4bde-a84f-059c476f1d5c','Titanic',1,'','',''),(173,'8a06d031-8968-4397-8f44-85c3d4a18092','a237a116-fd01-4e40-b91a-bab69a40aef8','heart of the occean',1,'','',''),(174,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','0dee7242-c226-4f35-9572-0a0dbf87e54a','3000',1,'','',''),(175,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(176,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','0dee7242-c226-4f35-9572-0a0dbf87e54a','3000',0,'','',''),(177,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',0,'','',''),(178,'8a06d031-8968-4397-8f44-85c3d4a18092','0dee7242-c226-4f35-9572-0a0dbf87e54a','40',0,'','',''),(179,'8a06d031-8968-4397-8f44-85c3d4a18092','3affd188-2dc2-4473-bed9-5b11d2ead731','for test',0,'','',''),(180,'8a06d031-8968-4397-8f44-85c3d4a18092','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','Jack',0,'','',''),(181,'8a06d031-8968-4397-8f44-85c3d4a18092','73d327f3-8ab3-48a8-8b46-a9d708f8a4c3','Rose',0,'','',''),(182,'8a06d031-8968-4397-8f44-85c3d4a18092','834de2ad-8e7a-4bde-a84f-059c476f1d5c','Titanic',0,'','',''),(183,'8a06d031-8968-4397-8f44-85c3d4a18092','a237a116-fd01-4e40-b91a-bab69a40aef8','heart of the occean',0,'','',''),(184,'7c609973-8418-4511-aae2-d5ad757fb95e','0dee7242-c226-4f35-9572-0a0dbf87e54a','40',1,'','',''),(185,'7c609973-8418-4511-aae2-d5ad757fb95e','3affd188-2dc2-4473-bed9-5b11d2ead731','34',1,'','',''),(186,'7c609973-8418-4511-aae2-d5ad757fb95e','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','grgwrdf',1,'','',''),(187,'7c609973-8418-4511-aae2-d5ad757fb95e','73d327f3-8ab3-48a8-8b46-a9d708f8a4c3','gn',1,'','',''),(188,'7c609973-8418-4511-aae2-d5ad757fb95e','834de2ad-8e7a-4bde-a84f-059c476f1d5c','gfd',1,'','',''),(189,'7c609973-8418-4511-aae2-d5ad757fb95e','0dee7242-c226-4f35-9572-0a0dbf87e54a','40',0,'','',''),(190,'7c609973-8418-4511-aae2-d5ad757fb95e','3affd188-2dc2-4473-bed9-5b11d2ead731','34',0,'','',''),(191,'7c609973-8418-4511-aae2-d5ad757fb95e','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','grgwrdf',0,'','',''),(192,'7c609973-8418-4511-aae2-d5ad757fb95e','73d327f3-8ab3-48a8-8b46-a9d708f8a4c3','gn',0,'','',''),(193,'7c609973-8418-4511-aae2-d5ad757fb95e','834de2ad-8e7a-4bde-a84f-059c476f1d5c','gfd',0,'','',''),(194,'18dd4755-8764-4180-99cf-09a11a556efb','0dee7242-c226-4f35-9572-0a0dbf87e54a','',0,'','',''),(195,'18dd4755-8764-4180-99cf-09a11a556efb','834de2ad-8e7a-4bde-a84f-059c476f1d5c','',0,'','',''),(196,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','111',1,'','',''),(197,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','111',1,'','',''),(198,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(199,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(200,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(201,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(202,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(203,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(204,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(205,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(206,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(207,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(208,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(209,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(210,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(211,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(212,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(213,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(214,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(215,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(216,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(217,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(218,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(219,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(220,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(221,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(222,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(223,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(224,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(225,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(226,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(227,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(228,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(229,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(230,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(231,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(232,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(233,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(234,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(235,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(236,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(237,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(238,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(239,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(240,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(241,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(242,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(243,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(244,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(245,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(246,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(247,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(248,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(249,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(250,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(251,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(252,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(253,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(254,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(255,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(256,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(257,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(258,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(259,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(260,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(261,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(262,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(263,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(264,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(265,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(266,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(267,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(268,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(269,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(270,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(271,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(272,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(273,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(274,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(275,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(276,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(277,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(278,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(279,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(280,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(281,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(282,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(283,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(284,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(285,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(286,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(287,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(288,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(289,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(290,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(291,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(292,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(293,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(294,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(295,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(296,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(297,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(298,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(299,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(300,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(301,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(302,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(303,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(304,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(305,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(306,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(307,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(308,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(309,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(310,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(311,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(312,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(313,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(314,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(315,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(316,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(317,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(318,'c1bc9ea6-be91-43b5-b7cc-93beead19281','1','11',1,'','',''),(319,'c1bc9ea6-be91-43b5-b7cc-93beead19281','7','111',1,'','',''),(320,'c1bc9ea6-be91-43b5-b7cc-93beead19281','1','11',1,'','',''),(321,'c1bc9ea6-be91-43b5-b7cc-93beead19281','7','111',1,'','',''),(322,'c1bc9ea6-be91-43b5-b7cc-93beead19281','1','11',1,'','',''),(323,'c1bc9ea6-be91-43b5-b7cc-93beead19281','7','111',1,'','',''),(324,'c1bc9ea6-be91-43b5-b7cc-93beead19281','1','11',1,'','',''),(325,'c1bc9ea6-be91-43b5-b7cc-93beead19281','7','111',1,'','',''),(326,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(327,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(328,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(329,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(330,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(331,'8a073cfc-b03e-4421-a10f-ff363f620b56','1','1',1,'','',''),(332,'8a073cfc-b03e-4421-a10f-ff363f620b56','7','222',1,'','',''),(333,'8a073cfc-b03e-4421-a10f-ff363f620b56','1','1',1,'','',''),(334,'8a073cfc-b03e-4421-a10f-ff363f620b56','7','222',1,'','',''),(335,'8a073cfc-b03e-4421-a10f-ff363f620b56','1','1',1,'','',''),(336,'8a073cfc-b03e-4421-a10f-ff363f620b56','7','222',1,'','',''),(337,'efb97483-6d0e-4a1d-bf72-36cea382382d','1','212',1,'','',''),(338,'efb97483-6d0e-4a1d-bf72-36cea382382d','2','1212',1,'','',''),(339,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(340,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(341,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(342,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(343,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(344,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(345,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(346,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(347,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(348,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(349,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(350,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(351,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(352,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(353,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(354,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(355,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(356,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(357,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(358,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(359,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(360,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(361,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(362,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(363,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(364,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(365,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(366,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(367,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(368,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(369,'c1bc9ea6-be91-43b5-b7cc-93beead19281','1','11',1,'','',''),(370,'c1bc9ea6-be91-43b5-b7cc-93beead19281','7','111',1,'','',''),(371,'8a073cfc-b03e-4421-a10f-ff363f620b56','1','1',1,'','',''),(372,'8a073cfc-b03e-4421-a10f-ff363f620b56','7','222',1,'','',''),(373,'c1bc9ea6-be91-43b5-b7cc-93beead19281','1','11',1,'','',''),(374,'c1bc9ea6-be91-43b5-b7cc-93beead19281','7','111',1,'','',''),(375,'efb97483-6d0e-4a1d-bf72-36cea382382d','1','212',1,'','',''),(376,'efb97483-6d0e-4a1d-bf72-36cea382382d','2','1212',1,'','',''),(377,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',0,'','',''),(378,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',0,'','',''),(379,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',0,'','',''),(380,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',0,'','',''),(381,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',0,'','',''),(382,'8a073cfc-b03e-4421-a10f-ff363f620b56','1','1',0,'','',''),(383,'8a073cfc-b03e-4421-a10f-ff363f620b56','7','222',0,'','',''),(384,'c1bc9ea6-be91-43b5-b7cc-93beead19281','1','11',1,'','',''),(385,'c1bc9ea6-be91-43b5-b7cc-93beead19281','7','111',1,'','',''),(386,'efb97483-6d0e-4a1d-bf72-36cea382382d','1','212',1,'','',''),(387,'efb97483-6d0e-4a1d-bf72-36cea382382d','2','1212',1,'','',''),(388,'efb97483-6d0e-4a1d-bf72-36cea382382d','1','212',0,'','',''),(389,'efb97483-6d0e-4a1d-bf72-36cea382382d','2','1212',0,'','',''),(390,'c1bc9ea6-be91-43b5-b7cc-93beead19281','1','11',1,'','',''),(391,'c1bc9ea6-be91-43b5-b7cc-93beead19281','7','111',1,'','',''),(392,'c1bc9ea6-be91-43b5-b7cc-93beead19281','1','11',1,'','',''),(393,'c1bc9ea6-be91-43b5-b7cc-93beead19281','2','111',1,'','',''),(394,'c1bc9ea6-be91-43b5-b7cc-93beead19281','4','222',1,'','',''),(395,'c1bc9ea6-be91-43b5-b7cc-93beead19281','7','111',1,'','',''),(396,'c1bc9ea6-be91-43b5-b7cc-93beead19281','1','11',1,'','',''),(397,'c1bc9ea6-be91-43b5-b7cc-93beead19281','7','111',1,'','',''),(398,'c1bc9ea6-be91-43b5-b7cc-93beead19281','1','11',1,'','',''),(399,'c1bc9ea6-be91-43b5-b7cc-93beead19281','7','111',1,'','',''),(400,'c1bc9ea6-be91-43b5-b7cc-93beead19281','1','a',1,'','',''),(401,'c1bc9ea6-be91-43b5-b7cc-93beead19281','2','b',1,'','',''),(402,'c1bc9ea6-be91-43b5-b7cc-93beead19281','4','c',1,'','',''),(403,'c1bc9ea6-be91-43b5-b7cc-93beead19281','6','d',1,'','',''),(404,'c1bc9ea6-be91-43b5-b7cc-93beead19281','7','e',1,'','',''),(405,'c1bc9ea6-be91-43b5-b7cc-93beead19281','1','11',1,'','',''),(406,'c1bc9ea6-be91-43b5-b7cc-93beead19281','7','111',1,'','',''),(407,'c1bc9ea6-be91-43b5-b7cc-93beead19281','1','a',1,'','',''),(408,'c1bc9ea6-be91-43b5-b7cc-93beead19281','7','b',1,'','',''),(409,'c1bc9ea6-be91-43b5-b7cc-93beead19281','1','a',1,'','',''),(410,'c1bc9ea6-be91-43b5-b7cc-93beead19281','2','c',1,'','',''),(411,'c1bc9ea6-be91-43b5-b7cc-93beead19281','7','b',1,'','',''),(412,'c1bc9ea6-be91-43b5-b7cc-93beead19281','1','a',0,'','',''),(413,'c1bc9ea6-be91-43b5-b7cc-93beead19281','2','c',0,'','',''),(414,'c1bc9ea6-be91-43b5-b7cc-93beead19281','7','b',0,'','','');
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
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producttype`
--

LOCK TABLES `producttype` WRITE;
/*!40000 ALTER TABLE `producttype` DISABLE KEYS */;
INSERT INTO `producttype` VALUES (1,'1','2',1,'','','',NULL),(2,'1','3',1,NULL,NULL,NULL,NULL),(3,'596fa958-90f1-46ee-8c6a-2cb099312795','2',0,'','','',7777),(4,'b6909712-b9dd-4447-b205-9cd73b1e6784','3',0,'','','',555),(5,'b1b64e3a-7304-4738-b5a9-1245969a3010','2',0,'','','',343434),(6,'09ae528e-fc48-4358-a31a-8b4d74c084ed','2',0,'','','',343434),(7,'0c07b7b2-6842-4353-83c8-9ec2b93ee4e1','2',0,'','','',343434),(8,'c3036972-5910-447f-89e6-5366d30ee4d3','2',0,'','','',343434),(9,'556777d6-cab9-4e9a-9761-3f3d9e7b4285','2',0,'','','',343434),(10,'3f7e2307-5df2-40ea-a422-bbfd1e3e1acc','3',0,'','','',555),(11,'790cf50b-2adc-4f57-9e4b-a7bfa7c33eb1','2',0,'','','',555),(12,'790cf50b-2adc-4f57-9e4b-a7bfa7c33eb1','3',0,'','','',555),(13,'827d44c9-b1a9-4345-bc44-9976b974a1d8','2',0,'','','',555),(14,'827d44c9-b1a9-4345-bc44-9976b974a1d8','3',0,'','','',555),(15,'','2',0,'','','',1),(16,'','3',0,'','','',1),(17,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2',1,'','','',1),(18,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(19,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2',1,'','','',1),(20,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(21,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2',1,'','','',1),(22,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(23,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(24,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(25,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2',1,'','','',1),(26,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(27,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(28,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(29,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(30,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(31,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2',1,'','','',1),(32,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(33,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(34,'efb97483-6d0e-4a1d-bf72-36cea382382d','3',1,'','','',1),(35,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(36,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(37,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(38,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(39,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(40,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(41,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(42,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(43,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',0),(44,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',0),(45,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',9),(46,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',0),(47,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',0),(48,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(49,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(50,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(51,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(52,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(53,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(54,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(55,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(56,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(57,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(58,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(59,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(60,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(61,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(62,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(63,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(64,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(65,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(66,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(67,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(68,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(69,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(70,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(71,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(72,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(73,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(74,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(75,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(76,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(77,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(78,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(79,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(80,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(81,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(82,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(83,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(84,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(85,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(86,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(87,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(88,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(89,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(90,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(91,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(92,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(93,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(94,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(95,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(96,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(97,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(98,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(99,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(100,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(101,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(102,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(103,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(104,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(105,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(106,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(107,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(108,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(109,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(110,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(111,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(112,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(113,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(114,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(115,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(116,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(117,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(118,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(119,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(120,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(121,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(122,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(123,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(124,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(125,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(126,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(127,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(128,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(129,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(130,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(131,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(132,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(133,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(134,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(135,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(136,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(137,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(138,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(139,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(140,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(141,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(142,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(143,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(144,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(145,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(146,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(147,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(148,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(149,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(150,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(151,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(152,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(153,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(154,'efb97483-6d0e-4a1d-bf72-36cea382382d','3',1,'','','',1),(155,'efb97483-6d0e-4a1d-bf72-36cea382382d','3',1,'','','',1),(156,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(157,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(158,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(159,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(160,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(161,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(162,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(163,'8a073cfc-b03e-4421-a10f-ff363f620b56','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',0),(164,'8a073cfc-b03e-4421-a10f-ff363f620b56','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',0),(165,'8a073cfc-b03e-4421-a10f-ff363f620b56','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',0),(166,'8a073cfc-b03e-4421-a10f-ff363f620b56','3',1,'','','',0),(167,'8a073cfc-b03e-4421-a10f-ff363f620b56','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',0),(168,'8a073cfc-b03e-4421-a10f-ff363f620b56','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',0),(169,'8a073cfc-b03e-4421-a10f-ff363f620b56','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',0),(170,'8a073cfc-b03e-4421-a10f-ff363f620b56','3',1,'','','',0),(171,'8a073cfc-b03e-4421-a10f-ff363f620b56','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',0),(172,'8a073cfc-b03e-4421-a10f-ff363f620b56','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',0),(173,'8a073cfc-b03e-4421-a10f-ff363f620b56','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',0),(174,'8a073cfc-b03e-4421-a10f-ff363f620b56','3',1,'','','',0),(175,'efb97483-6d0e-4a1d-bf72-36cea382382d','3',1,'','','',1),(176,'efb97483-6d0e-4a1d-bf72-36cea382382d','3',1,'','','',1),(177,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(178,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(179,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(180,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(181,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(182,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(183,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(184,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(185,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(186,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(187,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(188,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(189,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(190,'8a073cfc-b03e-4421-a10f-ff363f620b56','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',0),(191,'8a073cfc-b03e-4421-a10f-ff363f620b56','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',0),(192,'8a073cfc-b03e-4421-a10f-ff363f620b56','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',0),(193,'8a073cfc-b03e-4421-a10f-ff363f620b56','3',1,'','','',0),(194,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(195,'efb97483-6d0e-4a1d-bf72-36cea382382d','3',1,'','','',1),(196,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',0,'','','',1),(197,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',0,'','','',1),(198,'8a073cfc-b03e-4421-a10f-ff363f620b56','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',0,'','','',0),(199,'8a073cfc-b03e-4421-a10f-ff363f620b56','e789c746-f3a5-4bf0-8ac1-937a40a2a316',0,'','','',0),(200,'8a073cfc-b03e-4421-a10f-ff363f620b56','17cad1ec-66b4-44b5-951c-7300a49fd3c2',0,'','','',0),(201,'8a073cfc-b03e-4421-a10f-ff363f620b56','3',0,'','','',0),(202,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(203,'efb97483-6d0e-4a1d-bf72-36cea382382d','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(204,'efb97483-6d0e-4a1d-bf72-36cea382382d','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(205,'efb97483-6d0e-4a1d-bf72-36cea382382d','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(206,'efb97483-6d0e-4a1d-bf72-36cea382382d','3',1,'','','',1),(207,'efb97483-6d0e-4a1d-bf72-36cea382382d','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',0,'','','',123),(208,'efb97483-6d0e-4a1d-bf72-36cea382382d','e789c746-f3a5-4bf0-8ac1-937a40a2a316',0,'','','',123),(209,'efb97483-6d0e-4a1d-bf72-36cea382382d','17cad1ec-66b4-44b5-951c-7300a49fd3c2',0,'','','',123),(210,'efb97483-6d0e-4a1d-bf72-36cea382382d','3',0,'','','',123),(211,'c1bc9ea6-be91-43b5-b7cc-93beead19281','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(212,'c1bc9ea6-be91-43b5-b7cc-93beead19281','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(213,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(214,'c1bc9ea6-be91-43b5-b7cc-93beead19281','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(215,'c1bc9ea6-be91-43b5-b7cc-93beead19281','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(216,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(217,'c1bc9ea6-be91-43b5-b7cc-93beead19281','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(218,'c1bc9ea6-be91-43b5-b7cc-93beead19281','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(219,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(220,'c1bc9ea6-be91-43b5-b7cc-93beead19281','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(221,'c1bc9ea6-be91-43b5-b7cc-93beead19281','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(222,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(223,'c1bc9ea6-be91-43b5-b7cc-93beead19281','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(224,'c1bc9ea6-be91-43b5-b7cc-93beead19281','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(225,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(226,'c1bc9ea6-be91-43b5-b7cc-93beead19281','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(227,'c1bc9ea6-be91-43b5-b7cc-93beead19281','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(228,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(229,'c1bc9ea6-be91-43b5-b7cc-93beead19281','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(230,'c1bc9ea6-be91-43b5-b7cc-93beead19281','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(231,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(232,'c1bc9ea6-be91-43b5-b7cc-93beead19281','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(233,'c1bc9ea6-be91-43b5-b7cc-93beead19281','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(234,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(235,'c1bc9ea6-be91-43b5-b7cc-93beead19281','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',0,'','','',1),(236,'c1bc9ea6-be91-43b5-b7cc-93beead19281','e789c746-f3a5-4bf0-8ac1-937a40a2a316',0,'','','',1),(237,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',0,'','','',1);
/*!40000 ALTER TABLE `producttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spec`
--

DROP TABLE IF EXISTS `spec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spec` (
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
-- Dumping data for table `spec`
--

LOCK TABLES `spec` WRITE;
/*!40000 ALTER TABLE `spec` DISABLE KEYS */;
INSERT INTO `spec` VALUES (1,'spec name',0,'','','aaa'),(2,'spec name 1',0,NULL,NULL,'bbb'),(4,'spec name 2',0,NULL,NULL,'1'),(6,'spec anem 1',0,NULL,NULL,NULL),(7,'spec anme 23',0,NULL,NULL,NULL),(8,'spec name 2',1,NULL,NULL,NULL),(9,'afsaf',1,NULL,NULL,NULL),(10,'asfasdfsdf',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `spec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
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
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES ('1','a',1,'','',''),('17cad1ec-66b4-44b5-951c-7300a49fd3c2','b',0,'aaaa','aaaa','aaaa'),('2c43f5a6-7f4e-4d75-b668-da24fe1ce842','c',0,'57268177-376c-45ad-b4fe-3ae7472c8964','57268177-376c-45ad-b4fe-3ae7472c8964','57268177-376c-45ad-b4fe-3ae7472c8964'),('3','type name a',0,'aaaa','aaaa','aaaa'),('e789c746-f3a5-4bf0-8ac1-937a40a2a316','bbbbb',0,'57268177-376c-45ad-b4fe-3ae7472c8964','57268177-376c-45ad-b4fe-3ae7472c8964','57268177-376c-45ad-b4fe-3ae7472c8964');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typegroup`
--

DROP TABLE IF EXISTS `typegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typegroup` (
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
-- Dumping data for table `typegroup`
--

LOCK TABLES `typegroup` WRITE;
/*!40000 ALTER TABLE `typegroup` DISABLE KEYS */;
INSERT INTO `typegroup` VALUES ('57268177-376c-45ad-b4fe-3ae7472c8964','group1',0,'','',''),('aaaa','group2',0,'','','');
/*!40000 ALTER TABLE `typegroup` ENABLE KEYS */;
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

-- Dump completed on 2013-08-27 17:36:14
