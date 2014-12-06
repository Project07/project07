CREATE DATABASE  IF NOT EXISTS `cloud_market` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cloud_market`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cloud_market
-- ------------------------------------------------------
-- Server version	5.6.21-log

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
-- Table structure for table `cereals_analysis`
--

DROP TABLE IF EXISTS `cereals_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cereals_analysis` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `Cereals` mediumint(9) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cereals_analysis`
--

LOCK TABLES `cereals_analysis` WRITE;
/*!40000 ALTER TABLE `cereals_analysis` DISABLE KEYS */;
INSERT INTO `cereals_analysis` VALUES (1,30,'San Jose'),(2,64,'Santa Clara'),(3,81,'Sunnyvale'),(4,58,'Fermont'),(5,65,'Santa Cruz'),(6,50,'Newbury'),(7,5,'Santa Clara'),(8,86,'Bojano'),(9,37,'L�beck'),(10,24,'Hallein'),(11,41,'Coalhurst'),(12,50,'Moose Jaw'),(13,13,'SunnyVale'),(14,35,'Fort Good Hope'),(15,44,'Heusweiler'),(16,98,'Aosta'),(17,72,'Workington'),(18,57,'San Valentino in Abruzzo Citeriore'),(19,90,'Jacksonville'),(20,91,'Dover'),(21,29,'Neyveli'),(22,24,'Hisar'),(23,44,'Roma'),(24,94,'Brive-la-Gaillarde'),(25,2,'Le Mans'),(26,63,'Ashoknagar-Kalyangarh'),(27,87,'Montese'),(28,56,'Valladolid'),(29,51,'Verzegnis'),(30,95,'St. Austell'),(31,95,'Opoeteren'),(32,44,'Bridgeport'),(33,35,'Douai'),(34,56,'Deurne'),(35,49,'Montereale'),(36,62,'Halen'),(37,78,'Port Hope'),(38,19,'Termoli'),(39,80,'Stony Plain'),(40,4,'Wedel'),(41,92,'Rock Springs'),(42,66,'Logroño'),(43,83,'Wilmont'),(44,15,'Waiblingen'),(45,36,'Villata'),(46,89,'Sepino'),(47,6,'Knittelfeld'),(48,29,'Silverton'),(49,2,'Heusden'),(50,35,'Fort Collins'),(51,33,'Tirunelveli'),(52,23,'Bergerac'),(53,53,'Louisville'),(54,50,'Gambolò'),(55,72,'Paupisi'),(56,84,'Wellingborough'),(57,48,'Columbus'),(58,32,'Turrialba'),(59,94,'Dessau'),(60,52,'Springfield'),(61,14,'Gjoa Haven'),(62,58,'Barrow-in-Furness'),(63,21,'Castello di Godego'),(64,40,'Nodebais'),(65,52,'Castiglione Messer Raimondo'),(66,96,'Loughborough'),(67,99,'Provost'),(68,72,'Crotta d\'Adda'),(69,97,'Montemignaio'),(70,20,'Frankenthal'),(71,67,'Moorsel'),(72,62,'Maracalagonis'),(73,11,'Falciano del Massico'),(74,89,'Bad Ischl'),(75,59,'Castelmezzano'),(76,75,'Palermo'),(77,80,'Missoula'),(78,90,'Ijebu Ode'),(79,31,'Santa Vittoria in Matenano'),(80,8,'Kitchener'),(81,13,'Tramonti di Sopra'),(82,10,'San Vito al Tagliamento'),(83,89,'Chiusanico'),(84,86,'Plancenoit'),(85,17,'Sint-Joost-ten-Node'),(86,63,'Mal�ves-Sainte-Marie-Wastines'),(87,95,'New Orleans'),(88,44,'Labuissi�re'),(89,17,'Modena'),(90,4,'Saintes'),(91,97,'Warangal'),(92,13,'Frederick'),(93,79,'Castelvecchio Calvisio'),(94,28,'Malartic'),(95,98,'Castle Douglas'),(96,50,'Pemberton'),(97,69,'V�lklingen'),(98,78,'Genappe'),(99,100,'Aurora'),(100,68,'Okara');
/*!40000 ALTER TABLE `cereals_analysis` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-06  5:45:58
