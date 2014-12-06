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
-- Table structure for table `threshold_data`
--

DROP TABLE IF EXISTS `threshold_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `threshold_data` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `rice_quantity` mediumint(9) DEFAULT NULL,
  `rice_threshold` mediumint(9) DEFAULT NULL,
  `oil_volume` mediumint(9) DEFAULT NULL,
  `oil_threshold` mediumint(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `threshold_data`
--

LOCK TABLES `threshold_data` WRITE;
/*!40000 ALTER TABLE `threshold_data` DISABLE KEYS */;
INSERT INTO `threshold_data` VALUES (1,'Regan',12,7,5,4),(2,'Leila',11,7,8,2),(3,'Kylie',14,9,9,4),(4,'Jamal',14,9,10,5),(5,'Keegan',15,5,9,3),(6,'Fallon',12,5,7,5),(7,'Genevieve',13,9,6,2),(8,'Uta',11,5,9,5),(9,'Orlando',15,6,10,5),(10,'Valentine',13,6,10,4),(11,'Joelle',13,6,8,3),(12,'Cruz',10,8,5,4),(13,'Halla',15,9,7,5),(14,'Cedric',11,5,6,2),(15,'Burton',12,6,8,2),(16,'Richard',11,9,7,5),(17,'Dacey',13,5,7,2),(18,'Aphrodite',13,5,8,3),(19,'Barclay',13,6,8,5),(20,'Sean',10,8,10,5),(21,'Brent',15,7,6,4),(22,'Kerry',15,8,7,3),(23,'Ian',10,6,6,3),(24,'Macy',11,7,8,2),(25,'Leroy',10,9,7,2),(26,'Burke',11,6,10,2),(27,'Wilma',15,7,10,2),(28,'Benjamin',15,9,5,3),(29,'Miriam',15,9,9,4),(30,'May',13,6,6,3),(31,'Bert',15,7,10,3),(32,'Robin',11,7,8,4),(33,'Ursa',14,5,7,5),(34,'Ima',13,9,6,5),(35,'Portia',12,6,7,5),(36,'Xaviera',13,7,9,5),(37,'Zoe',10,7,6,2),(38,'Jocelyn',12,6,8,2),(39,'Rhona',10,5,8,2),(40,'Daniel',10,7,10,2),(41,'Calista',12,5,6,5),(42,'Nerea',11,5,6,4),(43,'Ryder',14,7,7,2),(44,'Quinlan',13,7,10,2),(45,'Heather',11,8,7,5),(46,'Eliana',11,6,10,3),(47,'Nadine',11,6,10,4),(48,'Mariam',10,5,9,5),(49,'Seth',13,6,7,4),(50,'Sylvia',13,8,10,3),(51,'Keane',10,8,8,2),(52,'Hop',14,5,10,3),(53,'Duncan',10,6,7,4),(54,'Brenden',14,6,5,3),(55,'Josiah',10,9,8,5),(56,'Delilah',11,7,8,3),(57,'Brenna',10,6,8,5),(58,'Lyle',11,8,6,4),(59,'Dane',12,8,10,3),(60,'Randall',13,6,6,5),(61,'Cairo',14,9,6,2),(62,'Jaime',12,6,5,2),(63,'Timon',12,8,8,4),(64,'Alika',13,8,6,3),(65,'Craig',13,9,9,3),(66,'Lysandra',12,8,7,5),(67,'Armand',11,8,8,2),(68,'Hayley',10,7,9,4),(69,'Halee',11,6,8,2),(70,'Xaviera',13,9,5,2),(71,'Martena',10,6,10,3),(72,'Quon',14,9,6,5),(73,'Macey',14,6,10,4),(74,'Fatima',14,6,8,2),(75,'Maxine',12,5,6,4),(76,'Unity',10,7,8,4),(77,'Raya',10,8,7,3),(78,'Wing',10,6,10,3),(79,'Cole',13,7,5,3),(80,'Fleur',11,5,10,4),(81,'Hadassah',12,6,5,4),(82,'Wyoming',10,7,9,3),(83,'Nathan',13,9,10,2),(84,'Camilla',12,7,5,4),(85,'Ebony',12,9,10,4),(86,'Alan',11,5,5,3),(87,'Amelia',14,7,8,5),(88,'Wyatt',13,7,7,4),(89,'Erasmus',15,8,7,4),(90,'Rudyard',14,6,10,4),(91,'Leroy',11,9,8,4),(92,'Desirae',10,9,8,2),(93,'Sylvia',14,8,6,2),(94,'Gemma',10,8,9,4),(95,'Cairo',11,9,5,5),(96,'Quemby',11,9,8,4),(97,'Trevor',15,7,7,3),(98,'Danielle',13,8,9,5),(99,'Carla',13,6,5,3),(100,'Audrey',13,5,7,3);
/*!40000 ALTER TABLE `threshold_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-06  5:45:57
