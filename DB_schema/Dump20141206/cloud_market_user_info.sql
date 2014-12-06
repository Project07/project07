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
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_info` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `contact_no` varchar(12) NOT NULL,
  `password` varchar(45) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (1,'Nikhil','Washington square','4084201000','aaa',NULL),(2,'Pranav','Avalon','6692268013','',NULL),(3,'tanvi','san fernando','4088886660','',NULL),(4,'kaustubh','avalon','4088222224','',NULL),(5,'tanvi','fernando','2222222222','tanvi',NULL),(6,'admin','Safeway','2222222222','admin',NULL),(7,'asd','asd','111','asd','undefined'),(8,'sss','sss','1111111111','sss','sss'),(9,'ash','first street','3214563211','zzz','Aloween'),(10,'dacli','second street','4084757382','trr','fully'),(11,'winner','fourth steet','4254085621','opp','tully'),(12,'royals','seventh street','4085431139','wik','upti'),(13,'aces','fifth street','4254080481','vil','nik'),(14,'slammer','third street','4732119065','pol','kev'),(15,'maverik','sixth street','6543218890','man','tika'),(16,'avicii','taylor steet','5097432467','che','seal'),(17,'dagutta','Cahil park','3216894573','wes','gill'),(18,'green','santa clara','5435673211','tip','felip'),(19,'redon','futhil park','2357658765','gap','gene'),(20,'neon','silicon valley','9674821294','jit','ana'),(21,'abhishek.rakshe@usc.com','Santa clara','6692219848','1234','Abhishek'),(22,'pranavdhapke@yahoo.com','1314 The Almeda','6692268013','Satyanaam8','Pranav'),(23,'sarah.joy@gmail.com','WA','5903214529','sarah','Sarah'),(24,'asd@gmail.com','asd','88888','asd','asd');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-06  5:45:59
