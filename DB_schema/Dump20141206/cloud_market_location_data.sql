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
-- Table structure for table `location_data`
--

DROP TABLE IF EXISTS `location_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location_data` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `Latitude` varchar(30) DEFAULT NULL,
  `Longitude` varchar(30) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `stock_status` varchar(255) DEFAULT NULL,
  `delivery_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_data`
--

LOCK TABLES `location_data` WRITE;
/*!40000 ALTER TABLE `location_data` DISABLE KEYS */;
INSERT INTO `location_data` VALUES (1,'37.4232','-122.0853','Driscoll','Rice','false','true'),(2,'37.4289','-122.1697','Shaine','Beans','false','false'),(3,'37.6153','-122.3900','Coby','Salt','true','false'),(4,'37.6135','-122.3990','Katelyn','Beans','true','false'),(5,'37.7153','-122.4900','MacKensie','Beans','true','true'),(6,'37.8153','-122.0855','Baker','Beans','true','false'),(7,'37.3153','-122.1900','Dieter','Sugar','false','false'),(8,'25.46287','-82.31538','Amela','Beans','False','False'),(9,'65.85759','-165.26192','Shea','Salt','False','False'),(10,'7.28916','-78.58691','Grant','Rice','True','True'),(11,'-0.96281','169.22249','Ria','Sugar','True','False'),(12,'44.49768','-37.52873','Scarlet','Rice','True','True'),(13,'15.6865','11.56425','Craig','Sugar','False','False'),(14,'-1.87691','10.48791','Wanda','Beans','False','True'),(15,'27.38083','12.31675','Kareem','Beans','True','True'),(16,'72.08895','178.00179','Akeem','Salt','False','False'),(17,'28.43541','109.60976','Yoshi','Salt','False','True'),(18,'-86.80951','-16.80496','Lillith','Salt','True','True'),(19,'-47.78452','-175.44109','Naida','Beans','True','True'),(20,'4.77453','-176.11549','Buffy','Sugar','True','False'),(21,'-67.1778','-145.84836','Dorian','Sugar','True','False'),(22,'42.15029','41.62473','Yuri','Sugar','False','False'),(23,'53.70366','48.20421','Axel','Sugar','False','True'),(24,'-34.49894','7.11565','Iona','Beans','True','True'),(25,'-86.121','-14.38803','Hamish','Sugar','True','True'),(26,'16.81623','97.90924','Lynn','Rice','False','True'),(27,'41.05794','32.13502','Uta','Beans','True','False'),(28,'-83.48157','28.51415','Elijah','Salt','False','True'),(29,'64.62711','-46.52777','Lilah','Salt','True','True'),(30,'-23.74203','91.70154','Keegan','Beans','False','False'),(31,'69.45602','168.08806','Leonard','Sugar','False','False'),(32,'7.55627','104.91304','Scott','Rice','False','True'),(33,'67.93146','53.47439','Addison','Beans','False','True'),(34,'-72.38337','30.6199','Benedict','Sugar','False','True'),(35,'-2.76508','4.21838','Gay','Rice','True','False'),(36,'64.79984','-160.14662','Sebastian','Salt','True','True'),(37,'28.43524','159.76433','Dorian','Salt','False','False'),(38,'9.86127','-77.09226','Sheila','Rice','False','False'),(39,'51.64981','141.29813','Hilary','Beans','False','False'),(40,'58.78278','-34.66248','Akeem','Salt','False','True'),(41,'42.47194','54.30566','Nyssa','Sugar','True','False'),(42,'-7.57846','20.90839','Noah','Salt','True','True'),(43,'-13.81022','-153.70277','Davis','Beans','True','True'),(44,'53.11607','8.88532','Lance','Beans','True','False'),(45,'39.38061','30.63839','Cecilia','Salt','False','True'),(46,'39.1212','-49.11974','Laith','Sugar','False','True'),(47,'-47.74743','-67.619','Shay','Rice','False','False'),(48,'-26.72798','-79.86367','Desiree','Salt','True','True'),(49,'2.35662','-144.76171','Jaquelyn','Sugar','False','True'),(50,'19.78545','-25.52657','Dieter','Sugar','True','True'),(51,'60.68276','102.79543','Maia','Rice','False','True'),(52,'9.924','53.96469','Iola','Salt','True','False'),(53,'63.53156','-129.76394','Ryan','Rice','True','True'),(54,'-44.38498','111.23773','Irma','Sugar','False','True'),(55,'-26.66305','-134.36009','Irma','Beans','False','True'),(56,'36.15129','-95.28044','Urielle','Salt','True','True'),(57,'32.4968','-38.86211','Kellie','Sugar','True','True'),(58,'-54.59364','-72.78477','Dakota','Beans','True','True'),(59,'-71.86089','170.03641','Kuame','Beans','False','False'),(60,'-34.93792','127.6359','Renee','Sugar','True','True'),(61,'2.12374','-89.03919','Kennedy','Beans','False','False'),(62,'-88.6005','-23.36234','Briar','Rice','True','False'),(63,'-16.93145','-58.12133','Kirby','Beans','True','True'),(64,'-11.3851','-18.0704','Griffin','Sugar','True','True'),(65,'38.54016','93.63991','Eve','Beans','True','False'),(66,'50.86107','62.33163','Tatum','Sugar','True','True'),(67,'-79.85111','-149.4743','Sydney','Salt','True','True'),(68,'79.03126','24.87598','Elton','Sugar','True','True'),(69,'-10.78933','-129.51232','Brock','Salt','False','True'),(70,'-18.16372','126.159','Sigourney','Sugar','False','False'),(71,'36.74599','-58.04927','Wanda','Sugar','True','False'),(72,'26.42525','132.94141','Odysseus','Sugar','True','False'),(73,'32.13689','-157.79094','Kitra','Beans','True','True'),(74,'7.37352','-117.52297','Ferris','Beans','False','True'),(75,'38.19935','-79.58443','Zelda','Rice','False','False'),(76,'29.99369','-93.60456','Callum','Sugar','True','False'),(77,'-57.37305','43.78002','Bell','Beans','True','False'),(78,'14.85735','117.32905','Jenna','Rice','True','False'),(79,'16.64709','-104.68462','Lacey','Salt','False','True'),(80,'-71.30767','-25.90881','Courtney','Beans','True','True'),(81,'50.83565','-146.38757','Charles','Salt','True','True'),(82,'-87.81878','-32.5852','Mufutau','Rice','True','False'),(83,'51.16728','128.42511','Walker','Sugar','False','False'),(84,'-85.5558','-91.59168','Lionel','Sugar','False','False'),(85,'-49.02111','-96.08371','Yvonne','Beans','False','False'),(86,'-38.89365','-2.02751','Skyler','Beans','True','True'),(87,'-32.88317','-5.61985','Carly','Beans','True','False'),(88,'-57.77102','153.4275','Abdul','Sugar','True','False'),(89,'-82.16115','-176.43072','Alea','Beans','True','False'),(90,'-81.61202','-100.45605','Rudyard','Sugar','True','True'),(91,'-20.37923','-96.98632','Sopoline','Rice','False','False'),(92,'15.34533','118.65158','Lars','Beans','True','False'),(93,'-71.76925','-143.74341','Melissa','Beans','True','True'),(94,'-5.95901','-154.2323','Chase','Sugar','False','True'),(95,'-39.15105','39.85227','Christen','Beans','True','False'),(96,'55.34107','113.77285','Sloane','Salt','False','False'),(97,'-10.71061','165.26961','Robert','Beans','True','False'),(98,'-33.3468','144.17977','Rhonda','Salt','True','True'),(99,'22.97393','-176.94232','Kelly','Salt','True','False'),(100,'-64.27499','-174.12869','Angela','Sugar','False','False');
/*!40000 ALTER TABLE `location_data` ENABLE KEYS */;
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
