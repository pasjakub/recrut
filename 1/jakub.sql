-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: jakub
-- ------------------------------------------------------
-- Server version	5.7.25

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
-- Table structure for table `dane`
--

DROP TABLE IF EXISTS `dane`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dane` (
  `dane_id` int(11) NOT NULL AUTO_INCREMENT,
  `osoba_id` int(11) DEFAULT NULL,
  `plec` varchar(20) DEFAULT NULL,
  `wiek` int(11) DEFAULT NULL,
  PRIMARY KEY (`dane_id`),
  KEY `osoba_id` (`osoba_id`),
  CONSTRAINT `dane_ibfk_1` FOREIGN KEY (`osoba_id`) REFERENCES `osoba` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dane`
--

LOCK TABLES `dane` WRITE;
/*!40000 ALTER TABLE `dane` DISABLE KEYS */;
INSERT INTO `dane` VALUES (1,1,'M',23),(2,2,'M',43),(3,3,'M',76);
/*!40000 ALTER TABLE `dane` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `osoba`
--

DROP TABLE IF EXISTS `osoba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `osoba` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(15) DEFAULT NULL,
  `nazwisko` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `osoba`
--

LOCK TABLES `osoba` WRITE;
/*!40000 ALTER TABLE `osoba` DISABLE KEYS */;
INSERT INTO `osoba` VALUES (1,'Jakub','Pas'),(2,'Adam','Nowak'),(3,'Jan','Kowalski');
/*!40000 ALTER TABLE `osoba` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-25 14:11:43
