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
-- Table structure for table `item_counter`
--

DROP TABLE IF EXISTS `item_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_counter` (
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `item_threshold` int(11) NOT NULL,
  `item_count` int(11) NOT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`item_id`),
  KEY `user_id_idx` (`user_id`),
  KEY `item_id_idx` (`item_id`),
  CONSTRAINT `item_id` FOREIGN KEY (`item_id`) REFERENCES `item_info` (`item_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_counter`
--

LOCK TABLES `item_counter` WRITE;
/*!40000 ALTER TABLE `item_counter` DISABLE KEYS */;
INSERT INTO `item_counter` VALUES (1,100,50,9,50,'Nikhil'),(2,101,6,7,22,'Pranav'),(3,102,7,9,42,'tanvi'),(4,101,12,4,32,'kaustubh'),(5,115,11,6,17,'tanvi'),(8,117,21,7,11,'sss'),(9,116,13,4,25,'ash'),(10,115,16,5,18,'dacli'),(21,100,10,6,43,'abhishek.rakshe@usc.com'),(21,101,10,6,43,'abhishek.rakshe@usc.com'),(21,102,10,6,43,'abhishek.rakshe@usc.com'),(21,103,10,6,43,'abhishek.rakshe@usc.com'),(21,110,10,6,43,'abhishek.rakshe@usc.com'),(21,115,10,6,43,'abhishek.rakshe@usc.com'),(22,102,6,3,6,'pranavdhapke@yahoo.com'),(22,103,10,4,10,'pranavdhapke@yahoo.com'),(23,100,2,8,10,'sarah.joy@gmail.com'),(23,101,2,2,10,'sarah.joy@gmail.com'),(23,103,2,6,10,'sarah.joy@gmail.com'),(23,106,2,5,10,'sarah.joy@gmail.com'),(23,109,3,1,10,'sarah.joy@gmail.com'),(23,119,2,9,10,'sarah.joy@gmail.com'),(24,100,4,2,10,'asd@gmail.com');
/*!40000 ALTER TABLE `item_counter` ENABLE KEYS */;
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
