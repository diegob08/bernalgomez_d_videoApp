CREATE DATABASE  IF NOT EXISTS `cooperstuff` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cooperstuff`;
-- MySQL dump 10.16  Distrib 10.1.28-MariaDB, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: cooperstuff
-- ------------------------------------------------------
-- Server version	10.1.28-MariaDB

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
-- Table structure for table `mainmodel`
--

DROP TABLE IF EXISTS `mainmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mainmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(10) NOT NULL,
  `modelName` varchar(20) NOT NULL,
  `pricing` varchar(8) NOT NULL,
  `modelDetails` text NOT NULL,
  `imgPath` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `model` (`model`),
  UNIQUE KEY `modelDesc` (`modelName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainmodel`
--

LOCK TABLES `mainmodel` WRITE;
/*!40000 ALTER TABLE `mainmodel` DISABLE KEYS */;
INSERT INTO `mainmodel` VALUES (0,'F55','Mini Cooper F55','27,790','It’s the turbocharged motoring icon, with more handles to love. The MINI 5 door boasts the same iconic good looks as its 3 door brother, but features an extra pair of passenger doors for practical access to its spacious cabin. And despite its slightly longer frame, the MINI 5 door’s wide, athletic stance and wheels-pushed-out design deliver the corner-carving agility you’d expect from any MINI.','F55.jpg'),(1,'F56','Mini Cooper F56','22,190','A true style icon – reimagined for contemporary living. Paying tribute to the original 1959 Austin Seven, the MINI Seven Edition brings together our most distinctive elements into one model. Striking Melting Silver details, a unique bonnet stripe design, and exclusive interior elements put this special edition MINI into a class of its own.','F56.jpg'),(2,'R58','Mini Cooper R58','40,590','It’s almost time to re-discover the redesigned, re-engineered, and completely revamped MINI Convertible. From feistier more fuel-efficient engines, to smarter innovations that let you stay open at every point along the way, this all-new MINI Convertible brings an array of enhancements to get excited about. And although the next iteration of this sun-seeking MINI will look and feel more refined than its predecessor, the open-air exhilaration that awaits you behind the wheel remains the same. We can’t wait for you to experience it in person. Until then... stay open.','R57.jpg');
/*!40000 ALTER TABLE `mainmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) NOT NULL,
  `category` varchar(40) NOT NULL,
  `reviews` varchar(500) NOT NULL,
  `rating` int(11) NOT NULL,
  `type` varchar(45) NOT NULL,
  `video_url` varchar(512) NOT NULL,
  `thumbnail_url` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,'Breaking Bad','Adults','Breaking bad is an incredible show',5,'TV show','breakingbad_adults.mp4','breakingbad.jpg'),(2,'Logan','Adults','Name of video	Category	Rating	Rating	Type	video_url	thumbnail',4,'Movie','logan_adults.mp4','logan.jpg'),(3,'Dragon Ball ','Kids','Dragonball Franchise after all, It is a major household name in anime.',4,'TV show','dragonball_kids.mp4','dragonball.jpg'),(4,'Wreck it Ral','Kids','Wreck-It-Ralph enjoys a healthy ratio of accessible character drama and goofy gaming gags - resulting in an exceptionally entertaining, and heartfelt, animated adventure.',4,'Movie','ralph_kids.mp4','ralph.jpg');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-07 23:26:04
