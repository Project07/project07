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
-- Table structure for table `rice_analysis`
--

DROP TABLE IF EXISTS `rice_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rice_analysis` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `Rice` mediumint(9) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rice_analysis`
--

LOCK TABLES `rice_analysis` WRITE;
/*!40000 ALTER TABLE `rice_analysis` DISABLE KEYS */;
INSERT INTO `rice_analysis` VALUES (1,63,'Falkensee'),(2,71,'Gomz�-Andoumont'),(3,75,'Guadalajara'),(4,11,'Termeno sulla strada del vino/Tramin an der Weinstrasse'),(5,74,'Birkenhead'),(6,50,'Zuccarello'),(7,98,'Rawalpindi'),(8,20,'Maisi�res'),(9,12,'Juneau'),(10,76,'Tourinnes-Saint-Lambert'),(11,19,'Asbestos'),(12,98,'Thurso'),(13,59,'St. Andrews'),(14,21,'Jette'),(15,86,'Langenburg'),(16,98,'Söke'),(17,64,'Wolfville'),(18,39,'Palmerston'),(19,41,'Westmount'),(20,39,'Silvan'),(21,93,'Hagen'),(22,47,'Seattle'),(23,7,'Omaha'),(24,86,'Madison'),(25,83,'Baili�vre'),(26,59,'Fort St. John'),(27,78,'Cargovil'),(28,43,'Redlands'),(29,73,'Lavoir'),(30,98,'Hawick'),(31,43,'Bellevue'),(32,55,'Zwevegem'),(33,26,'Saint Paul'),(34,61,'La Matap?dia'),(35,83,'Bhimavaram'),(36,17,'Siegendorf'),(37,70,'Bracknell'),(38,27,'Ottawa'),(39,41,'Anderlecht'),(40,55,'St. Thomas'),(41,39,'Valleyview'),(42,51,'Okigwe'),(43,89,'Shillong'),(44,89,'Anzi'),(45,63,'Inverbervie'),(46,69,'Sindelfingen'),(47,6,'Wedel'),(48,27,'Lampernisse'),(49,58,'Neunkirchen'),(50,29,'Sellia Marina'),(51,1,'Keith'),(52,7,'Genzano di Lucania'),(53,59,'Arrah'),(54,50,'Ripabottoni'),(55,70,'Moircy'),(56,56,'Mazzano Romano'),(57,87,'Lac-Serent'),(58,99,'Grado'),(59,24,'Toulouse'),(60,15,'Lanester'),(61,74,'Darıca'),(62,79,'Chieti'),(63,9,'Bonneville'),(64,25,'Kilmarnock'),(65,9,'Ranst'),(66,5,'Cinisi'),(67,5,'Guadalajara'),(68,56,'Almelo'),(69,33,'Cabras'),(70,60,'Vitória da Conquista'),(71,76,'Laramie'),(72,39,'Casoli'),(73,37,'Tuscaloosa'),(74,5,'Tamworth'),(75,26,'Duffel'),(76,14,'Morinville'),(77,44,'Santo Stefano del Sole'),(78,20,'Etobicoke'),(79,46,'Montgomery'),(80,71,'Montreal'),(81,6,'Buken'),(82,90,'Momignies'),(83,36,'Millport'),(84,74,'Fort Providence'),(85,66,'Markkleeberg'),(86,13,'Weiz'),(87,77,'Dollard-des-Ormeaux'),(88,80,'Augusta'),(89,14,'Corroy-le-Ch�teau'),(90,19,'Thalassery'),(91,6,'Richmond Hill'),(92,84,'Baltimore'),(93,50,'Clydebank'),(94,74,'Kearny'),(95,23,'Borgo Valsugana'),(96,83,'Cuenca'),(97,77,'Guarapuava'),(98,65,'Cuceglio'),(99,78,'Aieta'),(100,46,'Virton');
/*!40000 ALTER TABLE `rice_analysis` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-06  5:45:56
