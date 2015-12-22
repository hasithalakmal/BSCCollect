CREATE DATABASE  IF NOT EXISTS `bsccollect` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bsccollect`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: bsccollect
-- ------------------------------------------------------
-- Server version	5.5.45-log

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
-- Temporary view structure for view `anu1`
--

DROP TABLE IF EXISTS `anu1`;
/*!50001 DROP VIEW IF EXISTS `anu1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `anu1` AS SELECT 
 1 AS `kpi_name`,
 1 AS `metric_name`,
 1 AS `min_value`,
 1 AS `max_value`,
 1 AS `Period`,
 1 AS `province_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `bscconnect_view`
--

DROP TABLE IF EXISTS `bscconnect_view`;
/*!50001 DROP VIEW IF EXISTS `bscconnect_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `bscconnect_view` AS SELECT 
 1 AS `metric_name`,
 1 AS `data_date`,
 1 AS `value`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data` (
  `data_id` int(11) NOT NULL AUTO_INCREMENT,
  `metric_id` int(11) NOT NULL,
  `user_id` varchar(45) NOT NULL,
  `data_date` date NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `value` float NOT NULL,
  `state` varchar(45) NOT NULL,
  PRIMARY KEY (`data_id`),
  KEY `metric_id_idx` (`metric_id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `metric_id` FOREIGN KEY (`metric_id`) REFERENCES `metric` (`metric_id`)
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
INSERT INTO `data` VALUES (1,940,'corp','2015-01-01','2015-12-17 08:19:16',1177,'updated'),(2,940,'corp','2014-07-01','2015-12-17 08:19:16',618,'updated'),(3,941,'corp','2015-01-01','2015-12-17 08:19:16',5274,'updated'),(4,941,'corp','2014-07-01','2015-12-17 08:19:16',310,'updated'),(5,942,'corp','2015-01-01','2015-12-17 08:19:16',176.5,'updated'),(6,942,'corp','2014-07-01','2015-12-17 08:19:16',1291,'updated'),(7,943,'corp','2015-01-01','2015-12-17 08:19:16',5346,'updated'),(8,943,'corp','2014-07-01','2015-12-17 08:19:16',261,'updated'),(9,944,'corp','2015-01-01','2015-12-17 08:19:16',1784,'updated'),(10,944,'corp','2014-07-01','2015-12-17 08:19:16',4840,'updated'),(11,945,'corp','2015-01-01','2015-12-17 08:19:16',2786,'updated'),(12,945,'corp','2014-07-01','2015-12-17 08:19:16',5687,'updated'),(13,946,'corp','2015-01-01','2015-12-17 08:19:16',1016,'updated'),(14,946,'corp','2014-07-01','2015-12-17 08:19:17',2875,'updated'),(15,947,'corp','2015-01-01','2015-12-17 08:19:17',3988,'updated'),(16,947,'corp','2014-07-01','2015-12-17 08:19:17',3976,'updated'),(17,969,'corp','2015-06-30','2015-12-17 08:19:17',269920,'updated'),(18,969,'corp','2015-07-31','2015-12-17 08:19:17',244728,'updated'),(19,970,'corp','2015-06-30','2015-12-17 08:19:17',7712,'updated'),(20,970,'corp','2015-07-31','2015-12-17 08:19:17',7416,'updated'),(21,971,'corp','2015-06-30','2015-12-17 08:19:17',27682,'updated'),(22,971,'corp','2015-07-31','2015-12-17 08:19:17',231327,'updated'),(23,972,'corp','2015-06-30','2015-12-17 08:19:17',2373,'updated'),(24,972,'corp','2015-07-31','2015-12-17 08:19:57',6216,'updated'),(25,973,'corp','2015-06-30','2015-12-17 08:19:57',94221,'updated'),(26,973,'corp','2015-07-31','2015-12-17 08:19:57',3150,'updated'),(27,974,'corp','2015-06-30','2015-12-17 08:19:57',3150,'updated'),(28,974,'corp','2015-07-31','2015-12-17 08:19:57',94221,'updated'),(29,975,'corp','2015-06-30','2015-12-17 08:19:57',105731,'updated'),(30,975,'corp','2015-07-31','2015-12-17 08:19:57',105731,'updated'),(31,976,'corp','2015-06-30','2015-12-17 08:19:57',3364,'updated'),(32,976,'corp','2015-07-31','2015-12-17 08:19:57',3364,'updated'),(33,964,'corp','2015-08-31','2015-12-17 08:19:58',0.49,'updated'),(34,964,'corp','2015-07-31','2015-12-17 08:19:58',0.87,'updated'),(35,965,'corp','2015-08-31','2015-12-17 08:19:58',323.7,'updated'),(36,965,'corp','2015-07-31','2015-12-17 08:19:58',278.5,'updated'),(37,966,'corp','2015-08-31','2015-12-17 08:19:58',7.09,'updated'),(38,966,'corp','2015-07-31','2015-12-17 08:19:58',4.37,'updated'),(39,948,'corp','2015-04-01','2015-12-17 07:47:57',6435.98,'updated'),(40,948,'corp','2015-08-01','2015-12-17 08:19:58',4124,'updated'),(41,949,'corp','2015-04-01','2015-12-17 08:19:58',7113,'updated'),(42,949,'corp','2015-08-01','2015-12-17 08:19:58',6425,'updated'),(43,950,'corp','2015-04-01','2015-12-17 08:19:58',9484,'updated'),(44,950,'corp','2015-08-01','2015-12-17 08:19:58',6780,'updated'),(45,951,'corp','2015-04-01','2015-12-17 08:19:58',7074,'updated'),(46,951,'corp','2015-08-01','2015-12-17 08:19:58',6780.11,'updated'),(47,952,'corp','2015-04-01','2015-12-17 08:19:58',3497.9,'updated'),(48,952,'corp','2015-08-01','2015-12-17 08:19:58',5872.29,'updated'),(49,953,'corp','2015-04-01','2015-12-17 08:19:59',2352,'updated'),(50,953,'corp','2015-08-01','2015-12-17 08:19:59',2378.28,'updated'),(51,954,'corp','2015-04-01','2015-12-17 08:19:59',8639.9,'updated'),(52,954,'corp','2015-08-01','2015-12-17 08:19:59',3791,'updated'),(53,955,'corp','2015-04-01','2015-12-17 08:19:59',6656.99,'updated'),(54,955,'corp','2015-08-01','2015-12-17 08:19:59',2507.69,'updated'),(55,956,'corp','2015-04-01','2015-12-17 08:19:59',2159.18,'updated'),(56,956,'corp','2015-08-01','2015-12-17 08:19:59',2324,'updated'),(57,957,'corp','2015-04-01','2015-12-17 08:19:59',4037,'updated'),(58,957,'corp','2015-08-01','2015-12-17 08:19:59',3426,'updated'),(59,958,'corp','2015-04-01','2015-12-17 08:19:59',4019,'updated'),(60,958,'corp','2015-08-01','2015-12-17 08:19:59',9051,'updated'),(61,959,'corp','2015-04-01','2015-12-17 08:19:59',2811,'updated'),(62,959,'corp','2015-08-01','2015-12-17 08:19:59',8282.01,'updated'),(63,960,'corp','2015-04-01','2015-12-17 08:20:00',1707.84,'updated'),(64,960,'corp','2015-08-01','2015-12-17 08:20:00',1881.67,'updated'),(65,961,'corp','2015-04-01','2015-12-17 08:20:00',1588,'updated'),(66,961,'corp','2015-08-01','2015-12-17 08:20:00',3185.41,'updated'),(67,962,'corp','2015-04-01','2015-12-17 08:20:00',2868.36,'updated'),(68,962,'corp','2015-08-01','2015-12-17 08:20:00',4406,'updated'),(69,963,'corp','2015-04-01','2015-12-17 08:20:00',2518.9,'updated'),(70,963,'corp','2015-08-01','2015-12-17 08:20:00',2729.24,'updated'),(71,967,'corp','2015-01-01','2015-12-17 08:20:00',60.5,'updated'),(72,967,'corp','2015-02-01','2015-12-17 08:20:00',1.3,'updated'),(73,968,'corp','2015-01-01','2015-12-17 08:20:00',18.4,'updated'),(74,968,'corp','2015-02-01','2015-12-17 08:20:00',0,'updated'),(75,940,'corp','2014-01-01','2015-12-17 07:42:43',1177,'current'),(76,941,'corp','2014-01-01','2015-12-17 07:42:43',5274,'current'),(77,942,'corp','2014-01-01','2015-12-17 07:42:43',176.5,'current'),(78,943,'corp','2014-01-01','2015-12-17 07:42:43',5346,'current'),(79,944,'corp','2014-01-01','2015-12-17 07:42:43',1784,'current'),(80,945,'corp','2014-01-01','2015-12-17 07:42:43',2786,'current'),(81,946,'corp','2014-01-01','2015-12-17 07:42:43',1016,'current'),(82,947,'corp','2014-01-01','2015-12-17 07:42:43',3988,'current'),(83,969,'corp','2015-01-31','2015-12-17 07:42:43',269920,'current'),(84,969,'corp','2015-03-31','2015-12-17 07:47:55',269920,'current'),(85,969,'corp','2015-04-30','2015-12-17 07:47:56',244728,'current'),(86,970,'corp','2015-03-31','2015-12-17 07:47:56',7712,'current'),(87,970,'corp','2015-04-30','2015-12-17 07:47:56',7416,'current'),(88,971,'corp','2015-03-31','2015-12-17 07:47:56',27682,'current'),(89,971,'corp','2015-04-30','2015-12-17 07:47:56',231327,'current'),(90,972,'corp','2015-03-31','2015-12-17 07:47:56',2373,'current'),(91,972,'corp','2015-04-30','2015-12-17 07:47:56',6216,'current'),(92,973,'corp','2015-03-31','2015-12-17 07:47:56',94221,'current'),(93,973,'corp','2015-04-30','2015-12-17 07:47:56',3150,'current'),(94,974,'corp','2015-03-31','2015-12-17 07:47:56',3150,'current'),(95,974,'corp','2015-04-30','2015-12-17 07:47:56',94221,'current'),(96,975,'corp','2015-03-31','2015-12-17 07:47:56',105731,'current'),(97,975,'corp','2015-04-30','2015-12-17 07:47:56',105731,'current'),(98,976,'corp','2015-03-31','2015-12-17 07:47:56',3364,'current'),(99,976,'corp','2015-04-30','2015-12-17 07:47:56',3364,'current'),(100,964,'corp','2015-03-31','2015-12-17 07:47:56',0.49,'current'),(101,964,'corp','2015-04-30','2015-12-17 07:47:56',0.87,'current'),(102,965,'corp','2015-03-31','2015-12-17 07:47:56',323.7,'current'),(103,965,'corp','2015-04-30','2015-12-17 07:47:56',278.5,'current'),(104,966,'corp','2015-03-31','2015-12-17 07:47:56',7.09,'current'),(105,966,'corp','2015-04-30','2015-12-17 07:47:56',4.37,'current'),(106,948,'corp','2015-04-01','2015-12-17 07:48:11',0.98,'updated'),(107,967,'corp','2014-01-01','2015-12-17 07:47:57',60.5,'current'),(108,967,'corp','2014-02-01','2015-12-17 07:47:57',1.3,'current'),(109,968,'corp','2014-01-01','2015-12-17 07:47:57',18.4,'current'),(110,968,'corp','2014-02-01','2015-12-17 07:47:57',0,'current'),(111,948,'corp','2015-04-01','2015-12-17 07:50:24',120,'updated'),(112,948,'corp','2015-04-01','2015-12-17 07:50:34',0.98,'updated'),(113,948,'corp','2015-04-01','2015-12-17 07:52:28',200,'updated'),(114,948,'corp','2015-04-01','2015-12-17 07:52:35',0.98,'updated'),(115,948,'corp','2015-04-01','2015-12-17 07:53:25',50,'updated'),(116,948,'corp','2015-04-01','2015-12-17 07:53:30',0.98,'updated'),(117,948,'corp','2015-04-01','2015-12-17 08:19:58',60,'updated'),(118,940,'corp','2015-01-01','2015-12-17 08:19:16',1000,'current'),(119,940,'corp','2014-07-01','2015-12-17 09:00:42',1200,'updated'),(120,941,'corp','2015-01-01','2015-12-17 08:19:16',1000,'current'),(121,941,'corp','2014-07-01','2015-12-17 09:00:42',1200,'updated'),(122,942,'corp','2015-01-01','2015-12-17 08:19:16',1000,'current'),(123,942,'corp','2014-07-01','2015-12-17 09:00:42',1200,'updated'),(124,943,'corp','2015-01-01','2015-12-17 08:19:16',1000,'current'),(125,943,'corp','2014-07-01','2015-12-17 09:00:43',1200,'updated'),(126,944,'corp','2015-01-01','2015-12-17 08:19:16',1000,'current'),(127,944,'corp','2014-07-01','2015-12-17 09:00:43',1200,'updated'),(128,945,'corp','2015-01-01','2015-12-17 08:19:16',1000,'current'),(129,945,'corp','2014-07-01','2015-12-17 09:00:43',1200,'updated'),(130,946,'corp','2015-01-01','2015-12-17 08:19:16',1000,'current'),(131,946,'corp','2014-07-01','2015-12-17 09:00:43',1200,'updated'),(132,947,'corp','2015-01-01','2015-12-17 08:19:17',1000,'current'),(133,947,'corp','2014-07-01','2015-12-17 09:00:43',1200,'updated'),(134,969,'corp','2015-06-30','2015-12-17 08:19:17',200000,'current'),(135,969,'corp','2015-07-31','2015-12-17 08:19:17',25000,'current'),(136,970,'corp','2015-06-30','2015-12-17 08:19:17',200000,'current'),(137,970,'corp','2015-07-31','2015-12-17 08:19:17',25000,'current'),(138,971,'corp','2015-06-30','2015-12-17 08:19:17',200000,'current'),(139,971,'corp','2015-07-31','2015-12-17 08:19:17',25000,'current'),(140,972,'corp','2015-06-30','2015-12-17 08:19:17',200000,'current'),(141,972,'corp','2015-07-31','2015-12-17 08:19:57',25000,'current'),(142,973,'corp','2015-06-30','2015-12-17 08:19:57',200000,'current'),(143,973,'corp','2015-07-31','2015-12-17 08:19:57',25000,'current'),(144,974,'corp','2015-06-30','2015-12-17 08:19:57',200000,'current'),(145,974,'corp','2015-07-31','2015-12-17 08:19:57',25000,'current'),(146,975,'corp','2015-06-30','2015-12-17 08:19:57',200000,'current'),(147,975,'corp','2015-07-31','2015-12-17 08:19:57',25000,'current'),(148,976,'corp','2015-06-30','2015-12-17 08:19:57',200000,'current'),(149,976,'corp','2015-07-31','2015-12-17 08:19:57',25000,'current'),(150,964,'corp','2015-08-31','2015-12-17 09:34:50',50,'updated'),(151,964,'corp','2015-07-31','2015-12-17 09:34:50',60,'updated'),(152,965,'corp','2015-08-31','2015-12-17 09:34:50',50,'updated'),(153,965,'corp','2015-07-31','2015-12-17 09:34:50',60,'updated'),(154,966,'corp','2015-08-31','2015-12-17 09:34:50',50,'updated'),(155,966,'corp','2015-07-31','2015-12-17 09:34:50',60,'updated'),(156,948,'corp','2015-04-01','2015-12-17 09:00:43',5000,'updated'),(157,948,'corp','2015-08-01','2015-12-17 09:00:43',6000,'updated'),(158,949,'corp','2015-04-01','2015-12-17 09:00:43',5000,'updated'),(159,949,'corp','2015-08-01','2015-12-17 09:00:44',6000,'updated'),(160,950,'corp','2015-04-01','2015-12-17 09:00:44',5000,'updated'),(161,950,'corp','2015-08-01','2015-12-17 09:00:44',6000,'updated'),(162,951,'corp','2015-04-01','2015-12-17 09:00:44',5000,'updated'),(163,951,'corp','2015-08-01','2015-12-17 09:00:44',6000,'updated'),(164,952,'corp','2015-04-01','2015-12-17 09:00:44',5000,'updated'),(165,952,'corp','2015-08-01','2015-12-17 09:00:44',6000,'updated'),(166,953,'corp','2015-04-01','2015-12-17 09:00:44',5000,'updated'),(167,953,'corp','2015-08-01','2015-12-17 09:00:44',6000,'updated'),(168,954,'corp','2015-04-01','2015-12-17 09:00:44',5000,'updated'),(169,954,'corp','2015-08-01','2015-12-17 09:00:44',6000,'updated'),(170,955,'corp','2015-04-01','2015-12-17 09:00:44',5000,'updated'),(171,955,'corp','2015-08-01','2015-12-17 09:00:44',6000,'updated'),(172,956,'corp','2015-04-01','2015-12-17 09:00:44',5000,'updated'),(173,956,'corp','2015-08-01','2015-12-17 09:00:44',6000,'updated'),(174,957,'corp','2015-04-01','2015-12-17 09:00:44',5000,'updated'),(175,957,'corp','2015-08-01','2015-12-17 09:00:44',6000,'updated'),(176,958,'corp','2015-04-01','2015-12-17 09:00:44',5000,'updated'),(177,958,'corp','2015-08-01','2015-12-17 09:00:44',6000,'updated'),(178,959,'corp','2015-04-01','2015-12-17 09:00:44',5000,'updated'),(179,959,'corp','2015-08-01','2015-12-17 09:00:44',6000,'updated'),(180,960,'corp','2015-04-01','2015-12-17 09:00:45',5000,'updated'),(181,960,'corp','2015-08-01','2015-12-17 09:00:45',6000,'updated'),(182,961,'corp','2015-04-01','2015-12-17 09:00:45',5000,'updated'),(183,961,'corp','2015-08-01','2015-12-17 09:00:45',6000,'updated'),(184,962,'corp','2015-04-01','2015-12-17 09:00:45',5000,'updated'),(185,962,'corp','2015-08-01','2015-12-17 09:00:45',6000,'updated'),(186,963,'corp','2015-04-01','2015-12-17 09:00:45',5000,'updated'),(187,963,'corp','2015-08-01','2015-12-17 09:00:45',6000,'updated'),(188,967,'corp','2015-01-01','2015-12-17 08:20:00',60,'current'),(189,967,'corp','2015-02-01','2015-12-17 08:20:00',5,'current'),(190,968,'corp','2015-01-01','2015-12-17 08:20:00',60,'current'),(191,968,'corp','2015-02-01','2015-12-17 08:20:00',5,'current'),(192,940,'corp','2014-07-01','2015-12-17 09:02:21',618,'updated'),(193,941,'corp','2014-07-01','2015-12-17 09:02:21',310,'updated'),(194,942,'corp','2014-07-01','2015-12-17 09:02:21',1291,'updated'),(195,943,'corp','2014-07-01','2015-12-17 09:02:21',261,'updated'),(196,944,'corp','2014-07-01','2015-12-17 09:02:21',4840,'updated'),(197,945,'corp','2014-07-01','2015-12-17 09:02:21',5687,'updated'),(198,946,'corp','2014-07-01','2015-12-17 09:02:21',2875,'updated'),(199,947,'corp','2014-07-01','2015-12-17 09:02:21',3976,'updated'),(200,948,'corp','2015-04-01','2015-12-17 09:00:55',0.98,'updated'),(201,948,'corp','2015-08-01','2015-12-17 09:02:21',4124,'updated'),(202,949,'corp','2015-04-01','2015-12-17 09:02:21',7113,'updated'),(203,949,'corp','2015-08-01','2015-12-17 09:02:21',6425,'updated'),(204,950,'corp','2015-04-01','2015-12-17 09:02:22',9484,'updated'),(205,950,'corp','2015-08-01','2015-12-17 09:02:22',6780,'updated'),(206,951,'corp','2015-04-01','2015-12-17 09:02:22',7074,'updated'),(207,951,'corp','2015-08-01','2015-12-17 09:02:22',6780.11,'updated'),(208,952,'corp','2015-04-01','2015-12-17 09:02:22',3497.9,'updated'),(209,952,'corp','2015-08-01','2015-12-17 09:02:22',5872.29,'updated'),(210,953,'corp','2015-04-01','2015-12-17 09:02:22',2352,'updated'),(211,953,'corp','2015-08-01','2015-12-17 09:02:22',2378.28,'updated'),(212,954,'corp','2015-04-01','2015-12-17 09:02:22',8639.9,'updated'),(213,954,'corp','2015-08-01','2015-12-17 09:02:22',3791,'updated'),(214,955,'corp','2015-04-01','2015-12-17 09:02:22',6656.99,'updated'),(215,955,'corp','2015-08-01','2015-12-17 09:02:22',2507.69,'updated'),(216,956,'corp','2015-04-01','2015-12-17 09:02:22',2159.18,'updated'),(217,956,'corp','2015-08-01','2015-12-17 09:02:22',2324,'updated'),(218,957,'corp','2015-04-01','2015-12-17 09:02:22',4037,'updated'),(219,957,'corp','2015-08-01','2015-12-17 09:02:22',3426,'updated'),(220,958,'corp','2015-04-01','2015-12-17 09:02:22',4019,'updated'),(221,958,'corp','2015-08-01','2015-12-17 09:02:22',9051,'updated'),(222,959,'corp','2015-04-01','2015-12-17 09:02:22',2811,'updated'),(223,959,'corp','2015-08-01','2015-12-17 09:02:22',8282.01,'updated'),(224,960,'corp','2015-04-01','2015-12-17 09:02:23',1707.84,'updated'),(225,960,'corp','2015-08-01','2015-12-17 09:02:23',1881.67,'updated'),(226,961,'corp','2015-04-01','2015-12-17 09:02:23',1588,'updated'),(227,961,'corp','2015-08-01','2015-12-17 09:02:23',3185.41,'updated'),(228,962,'corp','2015-04-01','2015-12-17 09:02:23',2868.36,'updated'),(229,962,'corp','2015-08-01','2015-12-17 09:02:23',4406,'updated'),(230,963,'corp','2015-04-01','2015-12-17 09:02:23',2518.9,'updated'),(231,963,'corp','2015-08-01','2015-12-17 09:02:23',2729.24,'updated'),(232,948,'corp','2015-04-01','2015-12-17 09:02:21',23,'updated'),(233,940,'corp','2014-07-01','2015-12-17 09:02:21',1200,'current'),(234,941,'corp','2014-07-01','2015-12-17 09:02:21',1200,'current'),(235,942,'corp','2014-07-01','2015-12-17 09:02:21',1200,'current'),(236,943,'corp','2014-07-01','2015-12-17 09:02:21',1200,'current'),(237,944,'corp','2014-07-01','2015-12-17 09:02:21',1200,'current'),(238,945,'corp','2014-07-01','2015-12-17 09:02:21',1200,'current'),(239,946,'corp','2014-07-01','2015-12-17 09:02:21',1200,'current'),(240,947,'corp','2014-07-01','2015-12-17 09:02:21',1200,'current'),(241,948,'corp','2015-04-01','2015-12-17 09:02:21',5000,'current'),(242,948,'corp','2015-08-01','2015-12-17 09:02:21',6000,'current'),(243,949,'corp','2015-04-01','2015-12-17 09:02:21',5000,'current'),(244,949,'corp','2015-08-01','2015-12-17 09:02:21',6000,'current'),(245,950,'corp','2015-04-01','2015-12-17 09:02:22',5000,'current'),(246,950,'corp','2015-08-01','2015-12-17 09:02:22',6000,'current'),(247,951,'corp','2015-04-01','2015-12-17 09:02:22',5000,'current'),(248,951,'corp','2015-08-01','2015-12-17 09:02:22',6000,'current'),(249,952,'corp','2015-04-01','2015-12-17 09:02:22',5000,'current'),(250,952,'corp','2015-08-01','2015-12-17 09:02:22',6000,'current'),(251,953,'corp','2015-04-01','2015-12-17 09:02:22',5000,'current'),(252,953,'corp','2015-08-01','2015-12-17 09:02:22',6000,'current'),(253,954,'corp','2015-04-01','2015-12-17 09:02:22',5000,'current'),(254,954,'corp','2015-08-01','2015-12-17 09:02:22',6000,'current'),(255,955,'corp','2015-04-01','2015-12-17 09:02:22',5000,'current'),(256,955,'corp','2015-08-01','2015-12-17 09:02:22',6000,'current'),(257,956,'corp','2015-04-01','2015-12-17 09:02:22',5000,'current'),(258,956,'corp','2015-08-01','2015-12-17 09:02:22',6000,'current'),(259,957,'corp','2015-04-01','2015-12-17 09:02:22',5000,'current'),(260,957,'corp','2015-08-01','2015-12-17 09:02:22',6000,'current'),(261,958,'corp','2015-04-01','2015-12-17 09:02:22',5000,'current'),(262,958,'corp','2015-08-01','2015-12-17 09:02:22',6000,'current'),(263,959,'corp','2015-04-01','2015-12-17 09:02:22',5000,'current'),(264,959,'corp','2015-08-01','2015-12-17 09:02:22',6000,'current'),(265,960,'corp','2015-04-01','2015-12-17 09:02:23',5000,'current'),(266,960,'corp','2015-08-01','2015-12-17 09:02:23',6000,'current'),(267,961,'corp','2015-04-01','2015-12-17 09:02:23',5000,'current'),(268,961,'corp','2015-08-01','2015-12-17 09:02:23',6000,'current'),(269,962,'corp','2015-04-01','2015-12-17 09:02:23',5000,'current'),(270,962,'corp','2015-08-01','2015-12-17 09:02:23',6000,'current'),(271,963,'corp','2015-04-01','2015-12-17 09:02:23',5000,'current'),(272,963,'corp','2015-08-01','2015-12-17 09:02:23',6000,'current'),(273,964,'corp','2015-08-31','2015-12-17 10:40:02',1000,'updated'),(274,964,'corp','2015-07-31','2015-12-17 10:40:02',660,'updated'),(275,965,'corp','2015-08-31','2015-12-17 10:40:02',1000,'updated'),(276,965,'corp','2015-07-31','2015-12-17 10:40:02',660,'updated'),(277,966,'corp','2015-08-31','2015-12-17 10:40:02',1000,'updated'),(278,966,'corp','2015-07-31','2015-12-17 10:40:02',660,'updated'),(279,964,'corp','2015-08-31','2015-12-17 10:40:02',100,'current'),(280,964,'corp','2015-07-31','2015-12-17 10:40:02',66,'current'),(281,965,'corp','2015-08-31','2015-12-17 10:40:02',100,'current'),(282,965,'corp','2015-07-31','2015-12-17 10:40:02',66,'current'),(283,966,'corp','2015-08-31','2015-12-17 10:40:02',100,'current'),(284,966,'corp','2015-07-31','2015-12-17 10:40:02',66,'current');
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `data_view`
--

DROP TABLE IF EXISTS `data_view`;
/*!50001 DROP VIEW IF EXISTS `data_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `data_view` AS SELECT 
 1 AS `data_id`,
 1 AS `kpi_id`,
 1 AS `kpi_name`,
 1 AS `metric_id`,
 1 AS `metric_name`,
 1 AS `user_id`,
 1 AS `data_date`,
 1 AS `upload_date`,
 1 AS `value`,
 1 AS `state`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `has_kpi`
--

DROP TABLE IF EXISTS `has_kpi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `has_kpi` (
  `kpi_id` int(11) NOT NULL,
  `metric_id` int(11) NOT NULL,
  PRIMARY KEY (`kpi_id`,`metric_id`),
  KEY `metric_idx` (`metric_id`),
  CONSTRAINT `kpi` FOREIGN KEY (`kpi_id`) REFERENCES `kpi` (`kpi_id`),
  CONSTRAINT `metric` FOREIGN KEY (`metric_id`) REFERENCES `metric` (`metric_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_kpi`
--

LOCK TABLES `has_kpi` WRITE;
/*!40000 ALTER TABLE `has_kpi` DISABLE KEYS */;
INSERT INTO `has_kpi` VALUES (58,940),(58,941),(58,942),(58,943),(58,944),(58,945),(58,946),(58,947),(59,948),(59,949),(59,950),(59,951),(59,952),(59,953),(59,954),(59,955),(59,956),(59,957),(59,958),(59,959),(59,960),(59,961),(59,962),(59,963),(60,964),(60,965),(60,966),(61,967),(61,968),(62,969),(62,970),(62,971),(62,972),(62,973),(62,974),(62,975),(62,976);
/*!40000 ALTER TABLE `has_kpi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpi`
--

DROP TABLE IF EXISTS `kpi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kpi` (
  `kpi_id` int(11) NOT NULL AUTO_INCREMENT,
  `kpi_name` varchar(100) NOT NULL,
  `Period` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`kpi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpi`
--

LOCK TABLES `kpi` WRITE;
/*!40000 ALTER TABLE `kpi` DISABLE KEYS */;
INSERT INTO `kpi` VALUES (58,'Rehabilitated LV schemes','b'),(59,'Debtors Period','q'),(60,'Interest Payment','m'),(61,'Unserved Energy','m'),(62,'Connection cycle time','m');
/*!40000 ALTER TABLE `kpi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `kpi_metric`
--

DROP TABLE IF EXISTS `kpi_metric`;
/*!50001 DROP VIEW IF EXISTS `kpi_metric`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `kpi_metric` AS SELECT 
 1 AS `kpi_id`,
 1 AS `kpi_name`,
 1 AS `Period`,
 1 AS `metric_id`,
 1 AS `metric_name`,
 1 AS `province_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `metric`
--

DROP TABLE IF EXISTS `metric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metric` (
  `metric_id` int(11) NOT NULL AUTO_INCREMENT,
  `metric_name` varchar(100) NOT NULL,
  `min_value` float DEFAULT NULL,
  `max_value` float DEFAULT NULL,
  `province_id` int(11) NOT NULL,
  PRIMARY KEY (`metric_id`),
  UNIQUE KEY `MetricName_UNIQUE` (`metric_name`),
  KEY `province_id_idx` (`province_id`),
  CONSTRAINT `province_id` FOREIGN KEY (`province_id`) REFERENCES `province` (`province_id`)
) ENGINE=InnoDB AUTO_INCREMENT=977 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metric`
--

LOCK TABLES `metric` WRITE;
/*!40000 ALTER TABLE `metric` DISABLE KEYS */;
INSERT INTO `metric` VALUES (940,'Number of rehabilitated schemes at the beginning of the month(DD1)',200,6000,13),(941,'Total number of Schemes at the end of the month(DD1)',200,6000,13),(942,'Number of rehabilitated schemes at the beginning of the month(DD2)',200,6000,13),(943,'Total number of Schemes at the end of the month(DD2)',200,6000,13),(944,'Number of rehabilitated schemes at the beginning of the month(DD3)',200,6000,13),(945,'Total number of Schemes at the end of the month(DD3)',200,6000,13),(946,'Number of rehabilitated schemes at the beginning of the month(DD4)',200,6000,13),(947,'Total number of Schemes at the end of the month(DD4)',200,6000,13),(948,'Ordinary supply Debtors as at end of a particular month for DD1',1500,8000,13),(949,'Average monthly sales of three consecutive months of  ordinary customers for DD1',1500,8000,13),(950,'Bulk supply Debtors as at end of a particular month for DD1',1500,8000,13),(951,'Average monthly sales of three consecutive months of bulk customers for DD1',1500,8000,13),(952,'Ordinary supply Debtors as at end of a particular month for DD2',1500,8000,13),(953,'Average monthly sales of three consecutive months of  ordinary customers for DD2',1500,8000,13),(954,'Bulk supply Debtors as at end of a particular month for DD2',1500,8000,13),(955,'Average monthly sales of three consecutive months of bulk customers for DD2',1500,8000,13),(956,'Ordinary supply Debtors as at end of a particular month for DD3',1500,8000,13),(957,'Average monthly sales of three consecutive months of  ordinary customers for DD3',1500,8000,13),(958,'Bulk supply Debtors as at end of a particular month for DD3',1500,8000,13),(959,'Average monthly sales of three consecutive months of bulk customers for DD3',1500,8000,13),(960,'Ordinary supply Debtors as at end of a particular month for DD4',1500,8000,13),(961,'Average monthly sales of three consecutive months of  ordinary customers for DD4',1500,8000,13),(962,'Bulk supply Debtors as at end of a particular month for DD4',1500,8000,13),(963,'Average monthly sales of three consecutive months of bulk customers for DD4',1500,8000,13),(964,'Interest charge on bank OD p.m',0,350,13),(965,'Total interest charge on short term loans p.m',0,350,13),(966,'IPP delay penal charges payable during the month',0,350,13),(967,'Estimated “Loss” due to Tx  Line outages',0,70,13),(968,'Estimated “loss” due to transformer outages',0,70,13),(969,'Summation of T1 and T2-DD1',2200,30000,13),(970,'No. of connections completed-DD1',2200,30000,13),(971,'Summation of T1 and T2-DD2',2200,30000,13),(972,'No. of connections completed-DD2',2200,30000,13),(973,'Summation of T1 and T2-DD3',2200,30000,13),(974,'No. of connections completed-DD3',2200,30000,13),(975,'Summation of T1 and T2-DD4',2200,30000,13),(976,'No. of connections completed-DD4',2200,30000,13);
/*!40000 ALTER TABLE `metric` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `province` (
  `province_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_name` varchar(45) NOT NULL,
  PRIMARY KEY (`province_id`),
  UNIQUE KEY `provincename_UNIQUE` (`province_name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES (14,'ADM'),(4,'Colombo City'),(13,'CORP'),(7,'CP'),(6,'EP'),(2,'NCP'),(3,'NP'),(1,'NWP'),(10,'SABARAGAMUWA'),(12,'SOUTHERN'),(9,'UVA'),(5,'WPN'),(11,'WPSI'),(8,'WPSII');
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `pwcounter` int(11) DEFAULT NULL,
  `user_type` varchar(45) NOT NULL,
  `province_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  KEY `provnceid_idx` (`province_id`),
  CONSTRAINT `provnceid` FOREIGN KEY (`province_id`) REFERENCES `province` (`province_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'corp','hasitha lakmal','0756780065','ghasithalakmal@gmail.com','Software engineer','7f925009f939957bc054f274416b1e6b',0,'com',13),(2,'admin','hasitha lakmal','0756780065','ghasithalakmal@gmail.com','Software engineer','60100dc6f2f27f9c58844b6e5b94356f',0,'adm',14);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `user_view`
--

DROP TABLE IF EXISTS `user_view`;
/*!50001 DROP VIEW IF EXISTS `user_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `user_view` AS SELECT 
 1 AS `user_id`,
 1 AS `user_name`,
 1 AS `vphone_number`,
 1 AS `vemail`,
 1 AS `vdesignation`,
 1 AS `vpassword`,
 1 AS `vpwcounter`,
 1 AS `vuser_type`,
 1 AS `province_id`,
 1 AS `vprovince_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'bsccollect'
--

--
-- Dumping routines for database 'bsccollect'
--
/*!50003 DROP PROCEDURE IF EXISTS `insert_data` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_data`(
metric_name1 varchar(100),
user_id1 varchar(45),
data_date1 date,
value1 float
)
BEGIN
declare uploaddate timestamp;
declare metricid int;
declare olddatavalue float;
declare dataidofold int;
declare resultado int;
declare reason varchar(100);
set uploaddate = now();
set metricid = (select metric_id from metric where metric_name = metric_name1);
if exists (select user_id from user where user_id=user_id1) then
	   if exists (select metric_id from metric where metric_name = metric_name1) then
			if exists (select data_id from data where metric_id=metricid and data_date = data_date1 and state = 'current') then
				set olddatavalue = (select value from data where metric_id=metricid and data_date = data_date1 and state = 'current');
                if(olddatavalue = value1) then
					set reason ='same data value - ignored';
                    set resultado =(SELECT ROW_COUNT());
				else
					
					set dataidofold = (select data_id from data where metric_id=metricid and data_date = data_date1 and state = 'current');
					update data set state='updated' where data_id = dataidofold;
					insert into data(metric_id,user_id,data_date,upload_date,value,state)
					values (metricid,user_id1,data_date1,uploaddate,value1,'current');
					set reason ='data is changed';
					set resultado =(SELECT ROW_COUNT());
				end if;
			else
				insert into data(metric_id,user_id,data_date,upload_date,value,state)
				values (metricid,user_id1,data_date1,uploaddate,value1,'current');
				set reason ='data is changed';
				set resultado =(SELECT ROW_COUNT());
			end if;
		else
			set reason ='Metric is not defined';
			set resultado =(SELECT ROW_COUNT());
		end if;
else
	set reason ='User is not defined';
	set resultado =(SELECT ROW_COUNT());
end if;

SELECT reason;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_kpi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_kpi`(
kpi_name1 varchar(45) 
)
BEGIN
declare resultado int;
DECLARE reason varchar(45);

if exists (select * from kpi where  kpi_name= kpi_name1) then
    set resultado = 0;
    set reason = 'duplicate kpi';
else 
	insert into kpi(kpi_name)
	values(kpi_name1);
    set resultado = (SELECT ROW_COUNT());
    set reason = 'success';
end if;

SELECT reason;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_metric` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_metric`(
kpi_name1 varchar(45),
metric_name1 varchar(100),
min_value1 float,
max_value1 float,
province_name1 varchar(45)
)
BEGIN
declare provinceid int;
declare kpiid int;
declare metricid int;
declare resultado int;
declare reason varchar(100);

set provinceid = (select province_id from province where province_name=province_name1);
set kpiid = (select kpi_id from kpi where kpi_name = kpi_name1);
if exists (select metric_id from metric where metric_name=metric_name1) then
    set resultado = 0;
    set reason = 'duplicate metric';
else 
	if not exists(select province_id from province where province_name=province_name1) then
		set resultado = 0;
        set reason = 'undefined province';
	else
		if not exists(select kpi_id from kpi where kpi_name=kpi_name1) then
			set resultado = 0;
            set reason = 'undefined kpi';
		else
			insert into metric(metric_name,min_value,max_value,province_id)
			values(metric_name1,min_value1,max_value1,provinceid);
			
            set metricid = (select metric_id from metric where metric_name = metric_name1);
            
            insert into has_kpi(kpi_id,metric_id) 
            values(kpiid,metricid);
            
			set resultado = (SELECT ROW_COUNT());
            set reason = 'success';
		end if;
	end if;
end if;

SELECT reason;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_province` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_province`(
province_name1 varchar(45) 
)
BEGIN
declare resultado int;
DECLARE reason varchar(45);

if exists (select * from province where  province_name= province_name1) then
    set resultado = 0;
    set reason = 'duplicate province';
else 
	insert into province(province_name)
	values(province_name1);
    set resultado = (SELECT ROW_COUNT());
    set reason = 'success';
end if;

SELECT reason;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_user`(
user_id1 varchar(45),
user_name1 varchar(45),
phone_number1 varchar(45),
email1 varchar(45),
designation1 varchar(45),
password1 varchar(45),
user_type1 varchar(45),
province_name1 varchar(45)
)
BEGIN
declare provinceid int;
declare resultado int;
DECLARE reason varchar(45);

set provinceid = (select province_id from province where province_name=province_name1);
if exists (select * from user where  user_id= user_id1) then
    set resultado = 0;
    set reason = 'duplicate user';
else 
	insert into user(user_id,user_name,phone_number,email,designation,password,pwcounter,user_type,province_id)
	values(user_id1,user_name1,phone_number1,email1,designation1,password1,0,user_type1,provinceid);
    set resultado = (SELECT ROW_COUNT());
    set reason = 'success';
end if;

SELECT reason;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `notifiedKPI_MetricList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `notifiedKPI_MetricList`(
 monthofnotidied int,
 privincename varchar(45)
 )
BEGIN
declare provinceid int;
declare resultset varchar(45);

set resultset = '';

#if province has exsist
if exists (select province_id from province where province_name=privincename) then
	set provinceid = (select province_id from province where province_name=privincename);
	
    if(monthofnotidied =1) then
		select * from kpi_metric where province_id = provinceid and (Period = 'm' or Period = 'a' or Period = 'q' or Period = 'b') ;
    elseif (monthofnotidied =4) then
		select * from kpi_metric where province_id = provinceid and (Period = 'm' or Period = 'q') ;
	elseif (monthofnotidied =7) then
		select * from kpi_metric where province_id = provinceid and (Period = 'm'  or Period = 'q' or Period = 'b') ;
	elseif (monthofnotidied =10) then
		select metric_name from kpi_metric where province_id = provinceid and (Period = 'm' or Period = 'q' ) ;
    else
		select metric_name from kpi_metric where province_id = provinceid and (Period = 'm'  ) ;
		#set resultset ='invalid Month index';
		#select resultset;
	end if;

#if province name is wrong
else
	set resultset ='province not exsist';
    select resultset;
end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `notifiedLateDataSet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `notifiedLateDataSet`(
 monthofnotidied int,
 privincename varchar(45)
)
BEGIN
declare provinceid int;
declare resultset varchar(45);

set resultset = '';

#if province has exsist
if exists (select province_id from province where province_name=privincename) then
	set provinceid = (select province_id from province where province_name=privincename);
    
    if(monthofnotidied =1) then
		select metric_name from metric where metric_id not IN  (select distinct data.metric_id from kpi_metric,data where  kpi_metric.province_id = provinceid and (Period = 'm' or Period = 'a' or Period = 'q' or Period = 'b') and EXTRACT(YEAR FROM data.data_date)=YEAR(CURDATE()-1) and EXTRACT(Month FROM data.data_date)=12) and province_id = provinceid;
		#select * from kpi_metric where province_id = provinceid and (Period = 'm' or Period = 'a' or Period = 'q' or Period = 'b') ;
    elseif (monthofnotidied =4) then
		select metric_name from metric where metric_id not IN  (select distinct data.metric_id from kpi_metric,data where  kpi_metric.province_id = provinceid and (Period = 'm'  or Period = 'q' ) and EXTRACT(YEAR FROM data.data_date)=YEAR(CURDATE()) and EXTRACT(Month FROM data.data_date)=MONTH(CURDATE()-1)) and province_id = provinceid;
		#select * from kpi_metric where province_id = provinceid and (Period = 'm' or Period = 'q') ;
	elseif (monthofnotidied =7) then
		select metric_name from metric where metric_id not IN  (select distinct data.metric_id from kpi_metric,data where  kpi_metric.province_id = provinceid and (Period = 'm'  or Period = 'q' or Period = 'b') and EXTRACT(YEAR FROM data.data_date)=YEAR(CURDATE()) and EXTRACT(Month FROM data.data_date)=MONTH(CURDATE()-1)) and province_id = provinceid;
       # select * from kpi_metric where province_id = provinceid and (Period = 'm'  or Period = 'q' or Period = 'b') ;
	elseif (monthofnotidied =10) then
		select metric_name from metric where metric_id not IN  (select distinct data.metric_id from kpi_metric,data where  kpi_metric.province_id = provinceid and (Period = 'm' or Period = 'q' ) and EXTRACT(YEAR FROM data.data_date)=YEAR(CURDATE()) and EXTRACT(Month FROM data.data_date)=MONTH(CURDATE()-1)) and province_id = provinceid;
        #select metric_name from kpi_metric where province_id = provinceid and (Period = 'm' or Period = 'q' ) ;
    else
		select metric_name from metric where metric_id not IN  (select distinct data.metric_id from kpi_metric,data where  kpi_metric.province_id = provinceid and (Period = 'm' or Period = 'a' or Period = 'q' or Period = 'b') and EXTRACT(YEAR FROM data.data_date)=YEAR(CURDATE()) and EXTRACT(Month FROM data.data_date)=MONTH(CURDATE()-1)) and province_id = provinceid;
		#select metric_name from kpi_metric where province_id = provinceid and (Period = 'm' ) ;
	end if;

#if province name is wrong
else
	set resultset ='province not exsist';
    select resultset;
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `selectConnectData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `selectConnectData`()
BEGIN
select * from bscconnect_view;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `select_all_data` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_all_data`()
BEGIN
select * from data;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `select_all_has_kpi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_all_has_kpi`()
BEGIN
select * from has_kpi;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `select_all_kpi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_all_kpi`()
BEGIN
select * from kpi;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `select_all_metric` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_all_metric`()
BEGIN
select * from metric;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `select_all_province` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_all_province`()
BEGIN
select province_name from province;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `select_all_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_all_user`()
BEGIN
select * from user;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `select_bscconnect_latestData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_bscconnect_latestData`()
BEGIN
SELECT 
        `data_view`.`metric_name` AS `metric_name`,
        `data_view`.`data_date` AS `data_date`,
        `data_view`.`value` AS `value`
    FROM
        `data_view`
    WHERE
        ((`data_view`.`state` = 'current')
            AND (`data_view`.`upload_date` > (CURDATE() - INTERVAL 1 WEEK)));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `select_one_data` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_one_data`(
metric_name1 varchar(45),
data_date1 varchar(45),
state1 varchar(45)
)
BEGIN
select * from data where metric_name =metric_name1 and data_date=data_date1 and state=state1 ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `select_one_has_kpi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_one_has_kpi`(
kpi_id1 int,
metric_id1 int
)
BEGIN
select * from kpi k  join has_kpi h on k.kpi_id = h.kpi_id  join metric m on h.metric_id= m.metric_id where h.kpi_id =kpi_id1 and h.metric_id=metric_id1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `select_one_kpi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_one_kpi`(
kpi_name1 varchar(45)
)
BEGIN
select * from kpi where kpi_name=kpi_name1 ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `select_one_metric` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_one_metric`(
metric_name1 varchar(45)
)
BEGIN
select * from metric where metric_name=metric_name1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `select_one_province` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_one_province`(
province_name1 varchar(45)
)
BEGIN
select * from province where province_name=province_name1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `select_one_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_one_user`(
selectbyid int
)
BEGIN
select * from user where user_id=selectbyid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `validate_data_insertion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `validate_data_insertion`(
metric_name1 varchar(100),
user_id1 varchar(45),
data_date1 date,
value1 float
)
BEGIN
declare uploaddate timestamp;
declare metricid int;
declare olddatavalue float;
declare minval float;
declare maxval float;
declare dataidofold int;
declare resultado int;
declare reason varchar(100);
declare flag boolean;
set uploaddate = now();
set flag = false;

set metricid = (select metric_id from metric where metric_name = metric_name1);

#if user is valid
if exists (select user_id from user where user_id=user_id1) then

#if metric is valid
	   if exists (select metric_id from metric where metric_name = metric_name1) then
       
			set minval = (select min_value from metric where metric_id=metricid);
            set maxval = (select max_value from metric where metric_id=metricid);
            #if value is too low 
			if(value1 < minval) then
                #if previous value has exists
					if exists (select data_id from data where metric_id=metricid and data_date = data_date1 and state = 'current') then
					
						set olddatavalue = (select value from data where metric_id=metricid and data_date = data_date1 and state = 'current');
						#if value is same to previous
                        if(olddatavalue = value1) then
							set reason ='value is too low - same data value ignored';
							#set resultado =(SELECT ROW_COUNT());
						#if value is changed than previous
                         #problem start.........
						else
							set dataidofold = (select data_id from data where metric_id=metricid and data_date = data_date1 and state = 'current');
							UPDATE data SET state = 'updated' WHERE data_id = dataidofold;
							insert into data(metric_id,user_id,data_date,upload_date,value,state) values (metricid,user_id1,data_date1,uploaddate,value1,'current');
							set reason ='value is too low - data is updated';
							set resultado =(SELECT ROW_COUNT());
						end if;
					#okkkkkkkkkkkkkkkkkkkkkkkkkkkkk
					#if previous value has not exists
					else
						insert into data(metric_id,user_id,data_date,upload_date,value,state) values (metricid,user_id1,data_date1,uploaddate,value1,'current');
						set reason ='value is too low - data is inserted';
						set resultado =(SELECT ROW_COUNT());
					end if;
                
			
            
			else
				#if value is heigh
				if(value1 > maxval) then
					 #if previous value has exists
					if exists (select data_id from data where metric_id=metricid and data_date = data_date1 and state = 'current') then
					
						set olddatavalue = (select value from data where metric_id=metricid and data_date = data_date1 and state = 'current');
						#if value is same to previous
                        if(olddatavalue = value1) then
							set reason ='value is too High - same data value ignored';
							#set resultado =(SELECT ROW_COUNT());
						#if value is changed than previous
                         #problem start.........
						else
							set dataidofold = (select data_id from data where metric_id=metricid and data_date = data_date1 and state = 'current');
							UPDATE data SET state = 'updated' WHERE data_id = dataidofold;
							insert into data(metric_id,user_id,data_date,upload_date,value,state) values (metricid,user_id1,data_date1,uploaddate,value1,'current');
							set reason ='value is too High - data is updated';
							set resultado =(SELECT ROW_COUNT());
						end if;
					#okkkkkkkkkkkkkkkkkkkkkkkkkkkkk
					#if previous value has not exists
					else
						insert into data(metric_id,user_id,data_date,upload_date,value,state) values (metricid,user_id1,data_date1,uploaddate,value1,'current');
						set reason ='value is too High - data is inserted';
						set resultado =(SELECT ROW_COUNT());
					end if;
                #if value is ok
                else
               
					#if previous value has exists
					if exists (select data_id from data where metric_id=metricid and data_date = data_date1 and state = 'current') then
					
						set olddatavalue = (select value from data where metric_id=metricid and data_date = data_date1 and state = 'current');
						#if value is same to previous
                        if(olddatavalue = value1) then
							set reason ='same data value ignored';
							#set resultado =(SELECT ROW_COUNT());
						#if value is changed than previous
                         #problem start.........
						else
							set dataidofold = (select data_id from data where metric_id=metricid and data_date = data_date1 and state = 'current');
							UPDATE data SET state = 'updated' WHERE data_id = dataidofold;
							insert into data(metric_id,user_id,data_date,upload_date,value,state) values (metricid,user_id1,data_date1,uploaddate,value1,'current');
							set reason ='data is updated';
							set resultado =(SELECT ROW_COUNT());
						end if;
					#okkkkkkkkkkkkkkkkkkkkkkkkkkkkk
					#if previous value has not exists
					else
						insert into data(metric_id,user_id,data_date,upload_date,value,state) values (metricid,user_id1,data_date1,uploaddate,value1,'current');
						set reason ='data is inserted';
						set resultado =(SELECT ROW_COUNT());
					end if;
                end if;
			
            end if;
		#if metric is not exist
		else
			set reason ='Metric is not defined. Pleace check the new excel template';
			set resultado =(SELECT ROW_COUNT());
		end if;
#if user is not exist
else
	set reason ='User is not defined. Pleace log in as collect user';
	set resultado =(SELECT ROW_COUNT());
end if;

SELECT reason;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `validate_template_insertion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `validate_template_insertion`(
Kpiname varchar(100),
metricname varchar(100),
minval float,
maxval float,
timeperiod varchar(45),
provincename varchar(45)
)
BEGIN
declare kpiid int;
declare metricid int;
declare proid int;
declare response varchar(45);
if exists(select province_id from province where province_name=provincename) then
	set proid = (select province_id from province where province_name=provincename);
	#if KPI is exist
	if exists (select kpi_id from kpi where kpi_name=Kpiname) then
		
		set kpiid=(select kpi_id from kpi where kpi_name=Kpiname);
		update kpi set Period = timeperiod where kpi_id=kpiid;
		#if metric is exist
		if exists (select metric_id from metric where metric_name=metricname) then
			set metricid=(select metric_id from metric where metric_name=metricname);
			update metric set min_value=minval,max_value= maxval,province_id=proid where metric_id=metricid;
			#if recode is exist in has_kpi
			if exists(select * from has_kpi where kpi_id=kpiid and metric_id= metricid) then
				set response ='has kpi.update metric.has mapping';
			 #if recode is not exist in has_kpi
			else
				insert into has_kpi(kpi_id,metric_id) values(kpiid,metricid);
				 set response ='has kpi.update has.add mapping';
			end if;
		
		 #if metric is not exist
		else
			insert into metric(metric_name,min_value,max_value,province_id) values(metricname,minval,maxval,proid);
			set metricid=(select metric_id from metric where metric_name=metricname);
			
			 #if recode is exist in has_kpi
			if exists(select * from has_kpi where kpi_id=kpiid and metric_id= metricid) then
				set response ='has kpi.add metric.has mapping';
			 #if recode is not exist in has_kpi
			else
				insert into has_kpi(kpi_id,metric_id) values(kpiid,metricid);
				 set response ='has kpi.add metric.add mapping';
			end if;
		end if;

	#if KPI is new    
	else
		insert into kpi(kpi_name,Period) values(Kpiname,timeperiod);
		set kpiid=(select kpi_id from kpi where kpi_name=Kpiname);
		#if metric is exist
		if exists (select metric_id from metric where metric_name=metricname) then
			set metricid=(select metric_id from metric where metric_name=metricname);
			#if recode is exist in has_kpi
			if exists(select * from has_kpi where kpi_id=kpiid and metric_id= metricid) then
				set response ='add kpi.has metric.has mapping';
			 #if recode is not exist in has_kpi
			else
				insert into has_kpi(kpi_id,metric_id) values(kpiid,metricid);
				 set response ='add kpi.has metric.add mapping';
			end if;
		
		 #if metric is not exist
		else
			insert into metric(metric_name,min_value,max_value,province_id) values(metricname,minval,maxval,proid);
			set metricid=(select metric_id from metric where metric_name=metricname);
			 #if recode is exist in has_kpi
			if exists(select * from has_kpi where kpi_id=kpiid and metric_id= metricid) then
				set response ='add kpi.add metric.has mapping';
			 #if recode is not exist in has_kpi
			else
				insert into has_kpi(kpi_id,metric_id) values(kpiid,metricid);
				set response ='add kpi.add metric.add mapping';
			end if;
		end if;
	end if;
#province not exsist
else
	set response ='invalid province';
end if;
select response;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `anu1`
--

/*!50001 DROP VIEW IF EXISTS `anu1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`test`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `anu1` AS select `kpi`.`kpi_name` AS `kpi_name`,`metric`.`metric_name` AS `metric_name`,`metric`.`min_value` AS `min_value`,`metric`.`max_value` AS `max_value`,`kpi`.`Period` AS `Period`,`metric`.`province_id` AS `province_id` from ((`kpi` left join `has_kpi` on((`kpi`.`kpi_id` = `has_kpi`.`kpi_id`))) left join `metric` on((`has_kpi`.`metric_id` = `metric`.`metric_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `bscconnect_view`
--

/*!50001 DROP VIEW IF EXISTS `bscconnect_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bscconnect_view` AS select `data_view`.`metric_name` AS `metric_name`,`data_view`.`data_date` AS `data_date`,`data_view`.`value` AS `value` from `data_view` where ((`data_view`.`state` = 'current') and (`data_view`.`upload_date` > (curdate() - interval 1 week))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `data_view`
--

/*!50001 DROP VIEW IF EXISTS `data_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `data_view` AS select `data`.`data_id` AS `data_id`,`has_kpi`.`kpi_id` AS `kpi_id`,`kpi`.`kpi_name` AS `kpi_name`,`data`.`metric_id` AS `metric_id`,`metric`.`metric_name` AS `metric_name`,`data`.`user_id` AS `user_id`,`data`.`data_date` AS `data_date`,`data`.`upload_date` AS `upload_date`,`data`.`value` AS `value`,`data`.`state` AS `state` from (((`data` left join `metric` on((`data`.`metric_id` = `metric`.`metric_id`))) left join `has_kpi` on((`metric`.`metric_id` = `has_kpi`.`metric_id`))) left join `kpi` on((`has_kpi`.`kpi_id` = `kpi`.`kpi_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `kpi_metric`
--

/*!50001 DROP VIEW IF EXISTS `kpi_metric`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `kpi_metric` AS select `kpi`.`kpi_id` AS `kpi_id`,`kpi`.`kpi_name` AS `kpi_name`,`kpi`.`Period` AS `Period`,`has_kpi`.`metric_id` AS `metric_id`,`metric`.`metric_name` AS `metric_name`,`metric`.`province_id` AS `province_id` from ((`kpi` left join `has_kpi` on((`kpi`.`kpi_id` = `has_kpi`.`kpi_id`))) left join `metric` on((`has_kpi`.`metric_id` = `metric`.`metric_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_view`
--

/*!50001 DROP VIEW IF EXISTS `user_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_view` AS select `user`.`user_id` AS `user_id`,`user`.`user_name` AS `user_name`,`user`.`phone_number` AS `vphone_number`,`user`.`email` AS `vemail`,`user`.`designation` AS `vdesignation`,`user`.`password` AS `vpassword`,`user`.`pwcounter` AS `vpwcounter`,`user`.`user_type` AS `vuser_type`,`user`.`province_id` AS `province_id`,`province`.`province_name` AS `vprovince_name` from (`user` left join `province` on((`user`.`province_id` = `province`.`province_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-18  8:31:13
