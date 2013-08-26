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
INSERT INTO `Product` VALUES ('04af59c2-3c0b-4cb1-bd28-1b98926f5c47',1,'gdfgsdfg','<p><span style=\"color:#800000\"><span style=\"font-size:18px\">Flat panel TVs</span></span></p>\r\n\r\n<ul>\r\n	<li>The beauty of LCD, LED and plasma or flat panel TVs is that they&#39;re much slimmer than older, &#39;big-box&#39; televisions (anything from 1cm to about 20cm deep, compared with 50cm to 60cm deep for a 32-inch big-box TV set with a cathode ray tube).&nbsp;</li>\r\n	<li>Flat panel TVs generally take up less space, have bigger screens, can be mounted on walls and look stylish.</li>\r\n	<li>They sport high resolution (HD) screens. HD picture quality on the latest TVs can be stunning, but sound quality is often disappointing. The trend towards thinner and thinner models leave less room for good speakers.</li>\r\n	<li>HD TV Guide&nbsp;- find all more about high definition.</li>\r\n</ul>\r\n\r\n<p><span style=\"color:#800000\"><span style=\"font-size:18px\">Smart TV</span></span></p>\r\n\r\n<ul>\r\n	<li>Smart TV is a catch all term for TVs with internet features, also known as &lsquo;internet TVs&rsquo; or &lsquo;connected TVs&rsquo;. Each TV manufacturer has its own smart TV system, which has a range of apps for different services &ndash; common apps include BBC iPlayer and YouTube.</li>\r\n	<li>Smart TV&nbsp;- find out more about smart TV</li>\r\n</ul>\r\n\r\n<p><span style=\"color:#800000\"><span style=\"font-size:18px\">3D TV</span></span></p>\r\n\r\n<ul>\r\n	<li>Many new TVs can display a 3D picture. To watch in 3D, you need a pair of 3D glasses and some 3D content. Sky has its own 3D channel, while Virgin Media and BT Vision both offer a selection of on-demand 3D content. You can also watch 3D films on a 3D Blu-ray player.</li>\r\n	<li>3D TV essential guide&nbsp;- all you need to know</li>\r\n</ul>\r\n\r\n<p>Logos and labels on LED, LCD and plasma TVs</p>\r\n\r\n<p>LED, LCD and plasma TVs with digital processing</p>\r\n\r\n<p>Many of the fancy-sounding labels refer to the digital picture processing software used by LED, LCD and plasma televisions.&nbsp;</p>\r\n\r\n<p>For instance, Sony uses X-Reality, Samsung uses Wide Colour Enhancer Plus.&nbsp;</p>\r\n\r\n<p>Good digital picture processing software usually results in good picture quality, no matter whether the TV is LED, LCD or plasma, Full HD or not.</p>\r\n\r\n<p>Native/screen resolution</p>\r\n\r\n<p>This is the number of pixels or lines displayed on the television screen. Expressed as width x height, the highest screen resolution currently available is 1,920x1,080, often described as Full HD.</p>\r\n\r\n<p>This is desirable for use with HD content, but it doesn&#39;t necessarily equate to the best pictures for watching standard definition TV broadcasts or DVDs.&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: verdana, helvetica, sans-serif; vertical-align: baseline; color: rgb(51, 51, 51); line-height: 18px; background-color: rgb(255, 255, 255);\">\r\n<div class=\"img-right caption\" style=\"margin: 10px 0px 10px 10px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-style: inherit; font-family: inherit; vertical-align: baseline; float: right; background-color: rgb(226, 231, 234); width: 200px; border-top-left-radius: 0px; border-top-right-radius: 0px; border-bottom-right-radius: 5px; border-bottom-left-radius: 5px; clear: right;\"><img alt=\"Sony 200hz logo\" src=\"http://www.staticwhich.co.uk/media/images/in-content/content_sony-200hz-logo_-167851.jpg\" style=\"border:0px; font-family:inherit; font-style:inherit; height:133px; margin:0px; outline:0px; padding:0px; vertical-align:baseline; width:200px\" />\r\n<p>200Hz processing software quadruples the frame rate</p>\r\n</div>\r\n\r\n<p>100Hz and 200Hz processing</p>\r\n</div>\r\n\r\n<p>Most TV pictures are broadcast or recorded at 50Hz &ndash; that&rsquo;s 25 complete frames per second.&nbsp;</p>\r\n\r\n<p>In an attempt to manipulate the picture and create the illusion of smoother motion, many LED, LCD and plasma TVs feature processing at 100Hz or above. 100Hz doubles the number of frames on screen to 50. Some TVs have 200Hz processing software, quadrupling the original frame rate and placing 100 frames on the screen every second.&nbsp;</p>\r\n\r\n<p>Our tests have shown, however, that this smoother motion doesn&#39;t always appear realistic.</p>\r\n\r\n<p>Processing above 200Hz is often measured in a different way, so it&#39;s not always the case that the bigger the number the better.</p>\r\n\r\n<p>Contrast ratio</p>\r\n\r\n<p>The contrast ratio is the difference between how dark and light the LCD or plasma TV display will go. A high contrast ratio should mean deeper blacks and whiter whites, with a good range of subtle colour gradients in between.</p>\r\n\r\n<p>However, it&rsquo;s again difficult to compare contrast ratio claims from one manufacturer to the next because of the variety of measuring methods used.</p>\r\n\r\n<p>LED, LCD and plasma screen features</p>\r\n\r\n<p>Dynamic backlights</p>\r\n\r\n<p>LED and LCD TVs feature backlights &ndash; lights at the rear or edge of the screen which illuminate the picture.&nbsp;</p>\r\n\r\n<p>Many &nbsp;LED and LCD TVs have dynamic backlights which adjust their intensity according to the content on the screen.&nbsp;</p>\r\n\r\n<p>For instance, if there&rsquo;s a dark image on screen, the&nbsp;TV will automatically dim the backlight. This should make the image look darker and avoid the washed out appearance that might otherwise occur.</p>\r\n\r\n<p>On the downside, we&#39;ve occasionally noticed that dynamic backlights can sometimes be slow to react to the changing content on screen and it&rsquo;s possible to see them &lsquo;working&rsquo;, so you notice the picture brightness dim moments after the screen has switched to a dark image.</p>\r\n\r\n<p>Plasma TVs do not have backlights &ndash; instead, they alter the brightness of the individual gas cells that make up the picture, saving power and creating much the same effect.</p>\r\n\r\n<p>Picture-in-picture</p>\r\n\r\n<p>Picture-in-picture displays a small image in the corner of the TV screen while you watch the main image.&nbsp;</p>\r\n\r\n<p>Some TVs let you watch another broadcast channel in this way &ndash; so you can check the progress of a football match, say.</p>\r\n\r\n<p>However, with many TVs Which? has tested, the picture-in-picture system lets you monitor only those pictures from external equipment, such as a Blu-ray player or set-top box.</p>\r\n\r\n<p>See our&nbsp;<a href=\"http://www.which.co.uk/technology/tv-and-dvd/reviews/blu-ray-dvd-players/\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(69, 142, 171);\" title=\"\">Blu-ray player</a>&nbsp;and&nbsp;<a href=\"http://www.which.co.uk/technology/tv-and-dvd/reviews/blu-ray-dvd-players/\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(69, 142, 171);\" title=\"\">set-top box</a>&nbsp;reviews.</p>\r\n\r\n<div class=\"img-right caption\" style=\"margin: 10px 0px 10px 10px; padding: 0px 0px 2px; border: 0px; outline: 0px; font-size: 14px; font-family: verdana, helvetica, sans-serif; vertical-align: baseline; float: right; background-color: rgb(226, 231, 234); width: 300px; border-top-left-radius: 0px; border-top-right-radius: 0px; border-bottom-right-radius: 5px; border-bottom-left-radius: 5px; clear: right; color: rgb(51, 51, 51); line-height: 18px;\">\r\n<p><img alt=\"EPG incontent\" src=\"http://www.staticwhich.co.uk/media/images/in-content/epg-293522.jpg\" style=\"border:0px; font-family:inherit; font-style:inherit; height:170px; margin:0px; outline:0px; padding:0px; vertical-align:baseline; width:300px\" /></p>\r\n\r\n<p>Planning what to watch with the EPG</p>\r\n</div>\r\n\r\n<p>Electronic programme guide (EPG)</p>\r\n\r\n<p>Found on all new LED, LCD and plasma TV,&nbsp;this is an on-screen channel guide showing programming for the week ahead &ndash; a bit like having an onscreen copy of the Radio Times at the touch of a button.</p>\r\n\r\n<p>The style and format of an EPG depends on the particular model of TV, but most show programmes at least seven days ahead, plus a &#39;Now and Next&#39; option.</p>\r\n\r\n<p>The best EPGs show several channels over a fixed time period, say two hours, making comparing channels and planning an evening&#39;s viewing more convenient.</p>\r\n\r\n<p>Some also display a handy &#39;picture-in-picture&#39; of the current channel in the corner of the TV screen.</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: verdana, helvetica, sans-serif; vertical-align: baseline; color: rgb(51, 51, 51); line-height: 18px; background-color: rgb(255, 255, 255);\">\r\n<p>TV energy-saving features</p>\r\n\r\n<p>Ambient light sensors</p>\r\n\r\n<p>An ambient light sensors - the most ingenious of all energy-saving TV features - can help you make big energy savings. The sensor adjusts the backlight of the TV according to how dark or light the room is, and if you watch the TV with the lights off they can slash power use by around 30-50%.</p>\r\n\r\n<p>Nearly all TVs 32-inches of over have an ambient light sensor.</p>\r\n\r\n<p>Screen blanking</p>\r\n\r\n<p>Most TVs can blank the screen when tuned into digital radio channels, and switch themselves off if left idle for too long. Sony has also developed energy-saving presence sensors that turn the picture off if it senses that nobody is in the room. There is even a screen warning to alert particularly static couch potatoes.</p>\r\n\r\n<p><a href=\"http://www.which.co.uk/technology/tv-and-dvd/guides/led-vs-lcd-vs-plasma-tvs/\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(69, 142, 171);\" title=\"\">Best TVs for low energy use</a>&nbsp;- find out which types use the least amount of energy</p>\r\n</div>\r\n\r\n<p>Accessibility features on LCD and plasma TVs</p>\r\n\r\n<p>Audio description</p>\r\n\r\n<p>An additional narration for visually-impaired people that describes significant visual information, such as body language and scenery.&nbsp;</p>\r\n\r\n<p>Many TV programmes on the main channels now have audio description.</p>\r\n\r\n<p>Voice-enhancement software</p>\r\n\r\n<p>If you have problems distinguishing human voices from background noise (such as music) on your TV, built-in voice-enhancement software could help. LG&#39;s &#39;Clear Voice II&#39; is one such example.</p>\r\n\r\n<p>Other TV audio features</p>\r\n\r\n<p>Automatic volume control</p>\r\n\r\n<p>Adverts can sometimes seem louder than the programme you&rsquo;re watching.</p>\r\n\r\n<p>To combat this, TV manufacturers have developed automatic volume-control (or levelling) software.&nbsp;</p>\r\n\r\n<p>Claims vary between brands, but they typically involve compressing the sound&rsquo;s dynamic range to prevent adverts from sounding too loud, or they might balance sound levels between channels.</p>\r\n\r\n<p>Sockets and plugs on LED, LCD and plasma TVs</p>\r\n\r\n<p>RF input</p>\r\n\r\n<p>This is the socket for your aerial and allows the broadcast signal to be received by your tuner.</p>\r\n\r\n<p><img alt=\"HDMI\" src=\"http://www.staticwhich.co.uk/media/images/in-content/hdmi-293542.jpg\" style=\"border:0px; font-family:inherit; font-style:inherit; height:200px; margin:0px; outline:0px; padding:0px; vertical-align:baseline; width:300px\" /></p>\r\n\r\n<p>HDMI</p>\r\n\r\n<p>A high definition video and audio input used for connecting HD equipment, such a Blu-ray player,&nbsp;<a href=\"http://www.which.co.uk/technology/camcorders/reviews/hd-camcorders/\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(69, 142, 171);\" title=\"\">HD camcorder</a>, games console or set-top box.</p>\r\n\r\n<p>A few small TVs have only one HDMI port, but most TVs have three or four. If you need more, you can buy an HDMI switching box for &pound;10 or so to expand your TV&#39;s capacity.</p>\r\n\r\n<p>Most HDMI sockets support some sort of consumer electronics control (CEC) feature. This allows you to control other bits of CEC-enabled AV equipment, connected together by HDMI, via just one remote control.</p>\r\n\r\n<p>Different brands give CEC different names, including Anynet+ (Samsung), Viera Link (Panasonic) and Bravia Sync (Sony).</p>\r\n\r\n<p>Manufacturers imply that their TVs will only link with AV equipment from the same brand. Basic CEC functionality (on/off) usually works between brands, but more advanced functions (accessing menu controls) may only work with &lsquo;own brand&rsquo; products.</p>\r\n\r\n<p>An HDMI socket often lets you connect your laptop &ndash; effectively turning your flat panel TV into a large monitor.&nbsp;</p>\r\n\r\n<p>Scart inputs</p>\r\n\r\n<p>Scarts allow you to standard definition connect equipment like&nbsp;<a href=\"http://www.which.co.uk/technology/tv-and-dvd/reviews/dvd-recorders/\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(69, 142, 171);\" title=\"\">DVD recorders</a>&nbsp;and video cassette recorders to your television. Most new TVs come with one Scart socket.</p>\r\n\r\n<p>If you need more, you can buy a Scart switching box for &pound;10 or so.</p>\r\n\r\n<p>For the best picture, look for Scarts that support the high-standard RGB signal. This splits the video signal into its red, blue and green components to give an improved picture.</p>\r\n\r\n<p>VGA input</p>\r\n\r\n<p>An analogue VGA input, sometimes marked &#39;PC&#39; on the TV, that lets you connect your PC.&nbsp;Connecting via VGA doesn&#39;t provide the same picture quality as HDMI, but is useful if your computer doesn&#39;t have an HDMI output. Most desktops and older laptops don&#39;t.</p>\r\n\r\n<p>Stereo outputs</p>\r\n\r\n<p>These red and white sockets allow you to connect your LED, LCD or plasma TV to a stereo amplifier and speaker system &ndash; useful if you want to achieve better sound quality.</p>\r\n\r\n<p>Many new TVs lack these sockets, though you can sometimes connect the TV to a stereo amplifier using the headphone output, or a digital to analogue converter connected to the digital audio output.</p>\r\n\r\n<p><img alt=\"Digital out\" src=\"http://www.staticwhich.co.uk/media/images/in-content/digital-out-293540.jpg\" style=\"border:0px; font-family:inherit; font-style:inherit; height:190px; margin:0px; outline:0px; padding:0px; vertical-align:baseline; width:300px\" /></p>\r\n\r\n<p>Digital audio outputs</p>\r\n\r\n<p>Many LED, LCD and plasma TVs have &#39;virtual&#39; surround sound: they mimic the effect using the two main speakers, but this is usually disappointing. The best solution for good quality surround sound is a<a href=\"http://www.which.co.uk/reviews/home-cinema-kits\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(69, 142, 171);\">dedicated home cinema system</a>.</p>\r\n\r\n<p>If you want to connect your LED, LCD or plasma TV directly to a surround-sound system there are two types of digital connections &ndash; coaxial (wire) and optical (fibre optic).&nbsp;</p>\r\n\r\n<p>Make sure your surround-sound system input matches the input on your television</p>\r\n\r\n<p>USB ports</p>\r\n\r\n<p>Some TVs have up to three USB ports. These can be used to view photos and videos on the TV, or sometimes to insert an external hard drive for recording programmes.</p>\r\n\r\n<p>Recording programmes in this way is usually less convenient than using a PVR, but it&#39;s a useful money-saver if you don&#39;t already have a PVR.</p>\r\n\r\n<p>Ethernet port</p>\r\n\r\n<p>Useful if your TV doesn&#39;t have wi-fi, this allows connection to a computer network in your house, letting you stream audio and video content straight to your LED, LCD or plasma TV. This can often be done using DLNA.</p>\r\n\r\n<p>An ethernet port can sometimes also be used for connecting a smart TV to the internet.</p>\r\n\r\n<p>More on this...</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><a href=\"http://www.which.co.uk/technology/tv-and-dvd/reviews/pvrs/\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(69, 142, 171);\" title=\"\">PVR reviews</a>&nbsp;- find out more about PVRs and read reviews of the latest models</p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"http://www.which.co.uk/technology/tv-and-dvd/reviews/led--lcd-and-plasma-tv/product-finder/basket-/page-1/view-25/sort-urlName-ASCENDING/activefilter-1/appliedfilter-/low-OTk5OTkwMA==-MA==/high-OTk5OTkwMA==-NTAw/appliedglobal-false-false-false/\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(69, 142, 171);\" title=\"\">Cheap TV</a>&nbsp;- see reviews of TVs costing under &pound;500.</p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"http://www.which.co.uk/technology/tv-and-dvd/guides/what-is-dlna/\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(69, 142, 171);\" title=\"\">DLNA</a>&nbsp;- find out more about DLNA and similar media sharing technologies</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n','./UploadedImages/1376621677264_feature4.jpg',0,'','','',1),('c1bc9ea6-be91-43b5-b7cc-93beead19281',1,'55555555555555555555555555555555555','<p>aa<span style=\"color:#006400\"><span style=\"background-color:#00FF00\">a</span></span><span style=\"color:#FF0000\"><span style=\"background-color:#00FF00\">aa</span>aaaa</span>aa<img alt=\"devil\" src=\"http://localhost:8080/ledweb/js/plugins/smiley/images/devil_smile.gif\" style=\"height:20px; width:20px\" title=\"devil\" /></p>\r\n','/UploadedImages/',0,'','','',1),('efb97483-6d0e-4a1d-bf72-36cea382382d',2,'a','<p>aa</p>\r\n','',0,'','','',1);
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
  `SpecID` varchar(255) DEFAULT NULL,
  `SpecValue` varchar(255) DEFAULT NULL,
  `IsDelete` int(11) DEFAULT '0',
  `Reserve2` varchar(255) DEFAULT NULL,
  `Reserve3` varchar(255) DEFAULT NULL,
  `Reserve1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ProductSpecID`),
  KEY `ProductID` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductSpec`
--

LOCK TABLES `ProductSpec` WRITE;
/*!40000 ALTER TABLE `ProductSpec` DISABLE KEYS */;
INSERT INTO `ProductSpec` VALUES (35,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','12',1,'','',''),(36,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','2',1,'','',''),(37,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','12',1,'','',''),(38,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','211',1,'','',''),(39,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','12',1,'','',''),(40,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','aaaaaaaaaaaaaaaa',1,'','',''),(41,'c1bc9ea6-be91-43b5-b7cc-93beead19281','1','1',1,'','',''),(42,'c1bc9ea6-be91-43b5-b7cc-93beead19281','7','1212',1,'','',''),(43,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(44,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(45,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(46,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(47,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(48,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(49,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(50,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(51,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(52,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(53,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(54,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(55,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(56,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(57,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(58,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(59,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(60,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(61,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(62,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(63,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(64,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(65,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(66,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(67,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(68,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(69,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(70,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(71,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(72,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(73,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(74,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(75,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','7','12',1,'','',''),(76,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(77,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(78,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','7','12',1,'','',''),(79,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(80,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(81,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','7','12',1,'','',''),(82,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(83,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(84,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','7','12',1,'','',''),(85,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(86,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','1212',1,'','',''),(87,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','7','12',1,'','',''),(88,'b63f9566-940b-4365-a94d-bd76edc6cc28','1','1',1,'','',''),(89,'b63f9566-940b-4365-a94d-bd76edc6cc28','7','121212',1,'','',''),(90,'b63f9566-940b-4365-a94d-bd76edc6cc28','1','1',1,'','',''),(91,'b63f9566-940b-4365-a94d-bd76edc6cc28','7','121212',1,'','',''),(92,'b63f9566-940b-4365-a94d-bd76edc6cc28','1','1',0,'','',''),(93,'b63f9566-940b-4365-a94d-bd76edc6cc28','7','121212',0,'','',''),(94,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(95,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','111111',1,'','',''),(96,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','7','12',1,'','',''),(97,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','1','12',1,'','',''),(98,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','2','111111',1,'','',''),(99,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','4','111111',1,'','',''),(100,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','7','12',1,'','',''),(101,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','3affd188-2dc2-4473-bed9-5b11d2ead731','2',1,'','',''),(102,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(103,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','834de2ad-8e7a-4bde-a84f-059c476f1d5c','2',1,'','',''),(104,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','bf15f4d3-2466-481b-8204-f1fc4b033ded','1',1,'','',''),(105,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','3affd188-2dc2-4473-bed9-5b11d2ead731','2',1,'','',''),(106,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(107,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','834de2ad-8e7a-4bde-a84f-059c476f1d5c','2',1,'','',''),(108,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','bf15f4d3-2466-481b-8204-f1fc4b033ded','1',1,'','',''),(109,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(110,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(111,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(112,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(113,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(114,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(115,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(116,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(117,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(118,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(119,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(120,'c1bc9ea6-be91-43b5-b7cc-93beead19281','c921d383-7864-42de-a630-2f5e24e3f17f','1',1,'','',''),(121,'c1bc9ea6-be91-43b5-b7cc-93beead19281','c921d383-7864-42de-a630-2f5e24e3f17f','1',1,'','',''),(122,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(123,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(124,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(125,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(126,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(127,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(128,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(129,'4ff7fa1b-4b22-445b-9a28-65fb74a52662','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',0,'','',''),(130,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','3affd188-2dc2-4473-bed9-5b11d2ead731','2',1,'','',''),(131,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',1,'','',''),(132,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','834de2ad-8e7a-4bde-a84f-059c476f1d5c','2',1,'','',''),(133,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','bf15f4d3-2466-481b-8204-f1fc4b033ded','1',1,'','',''),(134,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(135,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','bf15f4d3-2466-481b-8204-f1fc4b033ded','1',1,'','',''),(136,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(137,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(138,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(139,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(140,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','834de2ad-8e7a-4bde-a84f-059c476f1d5c','1111',1,'','',''),(141,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','a237a116-fd01-4e40-b91a-bab69a40aef8','111',1,'','',''),(142,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(143,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(144,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73d327f3-8ab3-48a8-8b46-a9d708f8a4c3','testspec',1,'','',''),(145,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','834de2ad-8e7a-4bde-a84f-059c476f1d5c','1111',1,'','',''),(146,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','a237a116-fd01-4e40-b91a-bab69a40aef8','111',1,'','',''),(147,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(148,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(149,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73d327f3-8ab3-48a8-8b46-a9d708f8a4c3','testspec',1,'','',''),(150,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','a237a116-fd01-4e40-b91a-bab69a40aef8','111',1,'','',''),(151,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3affd188-2dc2-4473-bed9-5b11d2ead731','11',1,'','',''),(152,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1111',1,'','',''),(153,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','a237a116-fd01-4e40-b91a-bab69a40aef8','111',1,'','',''),(154,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(155,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(156,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(157,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','a237a116-fd01-4e40-b91a-bab69a40aef8','',1,'','',''),(158,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(159,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(160,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','3affd188-2dc2-4473-bed9-5b11d2ead731','2',0,'','',''),(161,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','1',0,'','',''),(162,'a8f7eba1-a8ab-4bc2-939c-331d786dc6f0','834de2ad-8e7a-4bde-a84f-059c476f1d5c','2',0,'','',''),(163,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(164,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','0dee7242-c226-4f35-9572-0a0dbf87e54a','3000',1,'','',''),(165,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(166,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','0dee7242-c226-4f35-9572-0a0dbf87e54a','3000',1,'','',''),(167,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(168,'8a06d031-8968-4397-8f44-85c3d4a18092','0dee7242-c226-4f35-9572-0a0dbf87e54a','40',1,'','',''),(169,'8a06d031-8968-4397-8f44-85c3d4a18092','3affd188-2dc2-4473-bed9-5b11d2ead731','for test',1,'','',''),(170,'8a06d031-8968-4397-8f44-85c3d4a18092','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','Jack',1,'','',''),(171,'8a06d031-8968-4397-8f44-85c3d4a18092','73d327f3-8ab3-48a8-8b46-a9d708f8a4c3','Rose',1,'','',''),(172,'8a06d031-8968-4397-8f44-85c3d4a18092','834de2ad-8e7a-4bde-a84f-059c476f1d5c','Titanic',1,'','',''),(173,'8a06d031-8968-4397-8f44-85c3d4a18092','a237a116-fd01-4e40-b91a-bab69a40aef8','heart of the occean',1,'','',''),(174,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','0dee7242-c226-4f35-9572-0a0dbf87e54a','3000',1,'','',''),(175,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',1,'','',''),(176,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','0dee7242-c226-4f35-9572-0a0dbf87e54a','3000',0,'','',''),(177,'384f0c77-5b7a-42a6-bbe6-d89e1a127208','3affd188-2dc2-4473-bed9-5b11d2ead731','1',0,'','',''),(178,'8a06d031-8968-4397-8f44-85c3d4a18092','0dee7242-c226-4f35-9572-0a0dbf87e54a','40',0,'','',''),(179,'8a06d031-8968-4397-8f44-85c3d4a18092','3affd188-2dc2-4473-bed9-5b11d2ead731','for test',0,'','',''),(180,'8a06d031-8968-4397-8f44-85c3d4a18092','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','Jack',0,'','',''),(181,'8a06d031-8968-4397-8f44-85c3d4a18092','73d327f3-8ab3-48a8-8b46-a9d708f8a4c3','Rose',0,'','',''),(182,'8a06d031-8968-4397-8f44-85c3d4a18092','834de2ad-8e7a-4bde-a84f-059c476f1d5c','Titanic',0,'','',''),(183,'8a06d031-8968-4397-8f44-85c3d4a18092','a237a116-fd01-4e40-b91a-bab69a40aef8','heart of the occean',0,'','',''),(184,'7c609973-8418-4511-aae2-d5ad757fb95e','0dee7242-c226-4f35-9572-0a0dbf87e54a','40',1,'','',''),(185,'7c609973-8418-4511-aae2-d5ad757fb95e','3affd188-2dc2-4473-bed9-5b11d2ead731','34',1,'','',''),(186,'7c609973-8418-4511-aae2-d5ad757fb95e','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','grgwrdf',1,'','',''),(187,'7c609973-8418-4511-aae2-d5ad757fb95e','73d327f3-8ab3-48a8-8b46-a9d708f8a4c3','gn',1,'','',''),(188,'7c609973-8418-4511-aae2-d5ad757fb95e','834de2ad-8e7a-4bde-a84f-059c476f1d5c','gfd',1,'','',''),(189,'7c609973-8418-4511-aae2-d5ad757fb95e','0dee7242-c226-4f35-9572-0a0dbf87e54a','40',0,'','',''),(190,'7c609973-8418-4511-aae2-d5ad757fb95e','3affd188-2dc2-4473-bed9-5b11d2ead731','34',0,'','',''),(191,'7c609973-8418-4511-aae2-d5ad757fb95e','73ce1cdc-a17f-4709-aa55-51a184cc6f1f','grgwrdf',0,'','',''),(192,'7c609973-8418-4511-aae2-d5ad757fb95e','73d327f3-8ab3-48a8-8b46-a9d708f8a4c3','gn',0,'','',''),(193,'7c609973-8418-4511-aae2-d5ad757fb95e','834de2ad-8e7a-4bde-a84f-059c476f1d5c','gfd',0,'','',''),(194,'18dd4755-8764-4180-99cf-09a11a556efb','0dee7242-c226-4f35-9572-0a0dbf87e54a','',0,'','',''),(195,'18dd4755-8764-4180-99cf-09a11a556efb','834de2ad-8e7a-4bde-a84f-059c476f1d5c','',0,'','',''),(196,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','111',1,'','',''),(197,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','111',1,'','',''),(198,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(199,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(200,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(201,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(202,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(203,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(204,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(205,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(206,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(207,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(208,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(209,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(210,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(211,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(212,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(213,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(214,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(215,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(216,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(217,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(218,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(219,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(220,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(221,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(222,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(223,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(224,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(225,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(226,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(227,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(228,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(229,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(230,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(231,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(232,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(233,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(234,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(235,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(236,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(237,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(238,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(239,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(240,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(241,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(242,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(243,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(244,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(245,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(246,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(247,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(248,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(249,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(250,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(251,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(252,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(253,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(254,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(255,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(256,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(257,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(258,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(259,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(260,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(261,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(262,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(263,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(264,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(265,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(266,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(267,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(268,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(269,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(270,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(271,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(272,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(273,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(274,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(275,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(276,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(277,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(278,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(279,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(280,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(281,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(282,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(283,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(284,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(285,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(286,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(287,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(288,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(289,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(290,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(291,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(292,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(293,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(294,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(295,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(296,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(297,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(298,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(299,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(300,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(301,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(302,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(303,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',1,'','',''),(304,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',1,'','',''),(305,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',1,'','',''),(306,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',1,'','',''),(307,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',1,'','',''),(308,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','1','1',0,'','',''),(309,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2','2',0,'','',''),(310,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','4','3',0,'','',''),(311,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','6','4',0,'','',''),(312,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','7','5',0,'','','');
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
  `TypeID` varchar(255) DEFAULT NULL,
  `IsDelete` int(11) DEFAULT '0',
  `Reserve2` varchar(255) DEFAULT NULL,
  `Reserve3` varchar(255) DEFAULT NULL,
  `Reserve1` varchar(255) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  PRIMARY KEY (`ProductTypeID`),
  KEY `ProductID` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductType`
--

LOCK TABLES `ProductType` WRITE;
/*!40000 ALTER TABLE `ProductType` DISABLE KEYS */;
INSERT INTO `ProductType` VALUES (1,'1','2',1,'','','',NULL),(2,'1','3',1,NULL,NULL,NULL,NULL),(3,'596fa958-90f1-46ee-8c6a-2cb099312795','2',0,'','','',7777),(4,'b6909712-b9dd-4447-b205-9cd73b1e6784','3',0,'','','',555),(5,'b1b64e3a-7304-4738-b5a9-1245969a3010','2',0,'','','',343434),(6,'09ae528e-fc48-4358-a31a-8b4d74c084ed','2',0,'','','',343434),(7,'0c07b7b2-6842-4353-83c8-9ec2b93ee4e1','2',0,'','','',343434),(8,'c3036972-5910-447f-89e6-5366d30ee4d3','2',0,'','','',343434),(9,'556777d6-cab9-4e9a-9761-3f3d9e7b4285','2',0,'','','',343434),(10,'3f7e2307-5df2-40ea-a422-bbfd1e3e1acc','3',0,'','','',555),(11,'790cf50b-2adc-4f57-9e4b-a7bfa7c33eb1','2',0,'','','',555),(12,'790cf50b-2adc-4f57-9e4b-a7bfa7c33eb1','3',0,'','','',555),(13,'827d44c9-b1a9-4345-bc44-9976b974a1d8','2',0,'','','',555),(14,'827d44c9-b1a9-4345-bc44-9976b974a1d8','3',0,'','','',555),(15,'','2',0,'','','',1),(16,'','3',0,'','','',1),(17,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2',1,'','','',1),(18,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(19,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2',1,'','','',1),(20,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(21,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2',1,'','','',1),(22,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(23,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(24,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(25,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2',1,'','','',1),(26,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(27,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(28,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(29,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(30,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',1,'','','',1),(31,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2',1,'','','',1),(32,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(33,'c1bc9ea6-be91-43b5-b7cc-93beead19281','3',0,'','','',1),(34,'efb97483-6d0e-4a1d-bf72-36cea382382d','3',0,'','','',1),(35,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(36,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(37,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(38,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(39,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(40,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(41,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(42,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(43,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',0),(44,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',0),(45,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',9),(46,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',0),(47,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',0),(48,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(49,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(50,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(51,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(52,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(53,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(54,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(55,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(56,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(57,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(58,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(59,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(60,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(61,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(62,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(63,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(64,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(65,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(66,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(67,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(68,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(69,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(70,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(71,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(72,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(73,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(74,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(75,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(76,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(77,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(78,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(79,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(80,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(81,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(82,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(83,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(84,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(85,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(86,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(87,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(88,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(89,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(90,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(91,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(92,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(93,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(94,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(95,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(96,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(97,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(98,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(99,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(100,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(101,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(102,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(103,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(104,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(105,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(106,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(107,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(108,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(109,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(110,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(111,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(112,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(113,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(114,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(115,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(116,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(117,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(118,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(119,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(120,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(121,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(122,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(123,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(124,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(125,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(126,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(127,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(128,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(129,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(130,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(131,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(132,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(133,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(134,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(135,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(136,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(137,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(138,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(139,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(140,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(141,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(142,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(143,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(144,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(145,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','2c43f5a6-7f4e-4d75-b668-da24fe1ce842',1,'','','',1),(146,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','e789c746-f3a5-4bf0-8ac1-937a40a2a316',1,'','','',1),(147,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',1,'','','',1),(148,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',1,'','','',1),(149,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','17cad1ec-66b4-44b5-951c-7300a49fd3c2',0,'','','',1),(150,'04af59c2-3c0b-4cb1-bd28-1b98926f5c47','3',0,'','','',1);
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
INSERT INTO `Type` VALUES ('1','a',1,'','',''),('17cad1ec-66b4-44b5-951c-7300a49fd3c2','b',0,'aaaa','aaaa','aaaa'),('2c43f5a6-7f4e-4d75-b668-da24fe1ce842','c',0,'57268177-376c-45ad-b4fe-3ae7472c8964','57268177-376c-45ad-b4fe-3ae7472c8964','57268177-376c-45ad-b4fe-3ae7472c8964'),('3','type name a',0,'aaaa','aaaa','aaaa'),('e789c746-f3a5-4bf0-8ac1-937a40a2a316','bbbbb',0,'57268177-376c-45ad-b4fe-3ae7472c8964','57268177-376c-45ad-b4fe-3ae7472c8964','57268177-376c-45ad-b4fe-3ae7472c8964');
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
INSERT INTO `TypeGroup` VALUES ('57268177-376c-45ad-b4fe-3ae7472c8964','group1',0,'','',''),('aaaa','group2',0,'','','');
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-08-16 19:02:29
