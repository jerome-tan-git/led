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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
INSERT INTO `Category` VALUES (1,'cat name','','','',0);
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
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES (1,1,'ProductName','productDesc','ProductImage',0,'','','',12),(2,1,'saf','asdf','asdf',0,NULL,NULL,NULL,NULL);
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
  `ProductID` int(11) DEFAULT NULL,
  `SpecID` int(11) DEFAULT NULL,
  `SpecValue` varchar(255) DEFAULT NULL,
  `IsDelete` int(11) DEFAULT '0',
  `Reserve2` varchar(255) DEFAULT NULL,
  `Reserve3` varchar(255) DEFAULT NULL,
  `Reserve1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ProductSpecID`),
  KEY `ProductID` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductSpec`
--

LOCK TABLES `ProductSpec` WRITE;
/*!40000 ALTER TABLE `ProductSpec` DISABLE KEYS */;
INSERT INTO `ProductSpec` VALUES (1,1,2,'1111',0,'','',''),(2,1,2,'222222',0,NULL,NULL,NULL),(7,10,1,'aaaa',0,'','',''),(8,10,2,'bbb',0,'','',''),(9,10,1,'aaaa',0,'','',''),(10,10,2,'bbb',0,'','','');
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
  `ProductID` int(11) DEFAULT NULL,
  `TypeID` int(11) DEFAULT NULL,
  `IsDelete` int(11) DEFAULT '0',
  `Reserve2` varchar(255) DEFAULT NULL,
  `Reserve3` varchar(255) DEFAULT NULL,
  `Reserve1` varchar(255) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  PRIMARY KEY (`ProductTypeID`),
  KEY `ProductID` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductType`
--

LOCK TABLES `ProductType` WRITE;
/*!40000 ALTER TABLE `ProductType` DISABLE KEYS */;
INSERT INTO `ProductType` VALUES (1,1,2,0,'','','',NULL),(2,1,3,0,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Spec`
--

LOCK TABLES `Spec` WRITE;
/*!40000 ALTER TABLE `Spec` DISABLE KEYS */;
INSERT INTO `Spec` VALUES (1,'spec name',0,'','','aaa'),(2,'spec name 1',0,NULL,NULL,'bbb');
/*!40000 ALTER TABLE `Spec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Type`
--

DROP TABLE IF EXISTS `Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Type` (
  `TypeID` int(11) NOT NULL AUTO_INCREMENT,
  `TypeName` varchar(255) DEFAULT NULL,
  `IsDelete` int(11) DEFAULT '0',
  `Reserve2` varchar(255) DEFAULT NULL,
  `Reserve3` varchar(255) DEFAULT NULL,
  `Reserve1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Type`
--

LOCK TABLES `Type` WRITE;
/*!40000 ALTER TABLE `Type` DISABLE KEYS */;
INSERT INTO `Type` VALUES (1,NULL,1,'','',''),(2,'type name',0,'','',''),(3,'type name 1',0,NULL,NULL,'aaaa');
/*!40000 ALTER TABLE `Type` ENABLE KEYS */;
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-07-30 18:20:48
