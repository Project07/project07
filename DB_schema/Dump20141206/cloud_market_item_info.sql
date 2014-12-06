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
-- Table structure for table `item_info`
--

DROP TABLE IF EXISTS `item_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_info` (
  `item_name` varchar(45) NOT NULL,
  `item_description` varchar(45) DEFAULT NULL,
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_price` float NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 COMMENT='				';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_info`
--

LOCK TABLES `item_info` WRITE;
/*!40000 ALTER TABLE `item_info` DISABLE KEYS */;
INSERT INTO `item_info` VALUES ('Apples','California Apples',100,1),('Rice','Basmati rice',101,10),('Eggs','Chicken Eggs',102,4),('Tomatoes ','Small size',103,1.4),('Patato','Sweet patato',104,2),('Bananas','Cali bananas',105,1.2),('Large size Tomatoes ','Large size',106,2.8),('White Onion','White onions',107,1),('Brown Rice','Brown Rice',108,7),('Onion','Indian Large size',109,1.5),('Grapes','California grapes',110,3),('Rice cake','Rice cake',111,1.49),('Whole Milk','Whole Milk',112,3.49),('Bread','Wheat bread',113,1),('Mangoes','Indian Mangoes',114,4),('Grain Bread','Grain bread',115,1),('Milk','0.2% Milk',116,3.49),('canned  Vegetable','canned vegetable',117,1.39),('Vegetable','Vehetable Steamers',118,1.45),('Peas','Frozen green peas',119,1.28);
/*!40000 ALTER TABLE `item_info` ENABLE KEYS */;
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
