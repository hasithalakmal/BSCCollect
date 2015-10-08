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
-- Temporary view structure for view `bscconnect_view`
--

DROP TABLE IF EXISTS `bscconnect_view`;
/*!50001 DROP VIEW IF EXISTS `bscconnect_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `bscconnect_view` AS SELECT 
 1 AS `metric_name`,
 1 AS `data_date`,
 1 AS `upload_date`,
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
INSERT INTO `data` VALUES (1,1,'adm1','2015-10-31','2015-10-02 06:36:47',15,'updated'),(2,1,'adm1','2015-10-31','2015-10-07 03:14:01',16,'updated'),(3,1,'adm1','2015-05-23','2015-10-07 03:14:01',500,'updated'),(4,1,'adm1','2015-05-23','2015-10-07 03:14:01',500,'updated'),(5,1,'adm1','2015-05-23','2015-10-07 03:14:01',500,'updated'),(6,1,'adm1','2015-05-23','2015-10-07 03:14:01',500,'updated'),(7,1,'adm1','2015-05-23','2015-10-07 03:14:01',500,'updated'),(8,1,'adm1','2015-05-23','2015-10-07 03:14:01',500,'updated'),(9,1,'adm1','2015-05-23','2015-10-07 03:14:01',500,'updated'),(10,1,'adm1','2015-05-23','2015-10-07 03:14:01',500,'updated'),(11,1,'adm1','2015-05-23','2015-10-07 03:14:01',500,'updated'),(12,1,'adm1','2015-04-23','2015-10-07 02:17:27',520,'updated'),(13,1,'adm1','2015-04-23','2015-10-07 02:26:26',20,'updated'),(14,1,'adm1','2015-05-23','2015-10-07 03:14:01',500,'updated'),(15,1,'adm1','2015-05-23','2015-10-07 03:14:01',500,'updated'),(16,1,'adm1','2015-05-23','2015-10-07 03:14:01',500,'updated'),(17,1,'adm1','2015-05-23','2015-10-07 03:14:01',500,'updated'),(18,1,'adm1','2015-05-23','2015-10-07 03:14:01',500,'updated'),(19,1,'adm1','2015-05-23','2015-10-07 03:14:01',500,'updated'),(20,1,'adm1','2015-04-23','2015-10-07 02:49:03',50,'updated'),(21,1,'adm1','2015-05-23','2015-10-07 03:14:01',500,'updated'),(22,1,'adm1','2015-05-23','2015-10-07 03:14:01',0,'updated'),(23,1,'adm1','2015-05-23','2015-10-07 03:14:01',500,'updated'),(24,1,'adm1','2015-04-23','2015-10-07 03:14:01',70,'updated'),(25,1,'adm1','2015-04-23','2015-10-07 03:14:01',0,'updated'),(26,1,'adm1','2015-04-23','2015-10-07 03:14:01',400,'updated'),(27,1,'adm1','2015-05-23','2015-10-07 03:14:01',0,'updated'),(28,1,'adm1','2015-05-23','2015-10-07 03:14:01',500,'updated'),(29,1,'adm1','2015-05-23','2015-10-07 03:14:01',10,'updated'),(30,1,'adm1','2015-05-23','2015-10-07 03:14:01',500,'updated'),(31,1,'adm1','2015-08-23','2015-10-07 03:03:05',30,'updated'),(32,1,'adm1','2015-08-23','2015-10-07 03:03:16',20,'updated'),(33,1,'adm1','2015-08-23','2015-10-07 03:05:27',50,'updated'),(34,1,'adm1','2015-08-23','2015-10-07 03:07:13',60,'updated'),(35,1,'adm1','2015-08-23','2015-10-07 03:14:01',20,'updated'),(36,1,'adm1','2015-05-23','2015-10-07 03:14:01',500,'updated'),(37,1,'adm1','2015-05-23','2015-10-07 03:14:01',500,'updated'),(38,1,'adm1','2015-05-23','2015-10-07 03:14:01',500,'updated'),(39,1,'adm1','2015-08-23','2015-10-07 03:14:01',10,'updated'),(40,1,'adm1','2015-05-23','2015-10-07 03:14:01',500,'updated'),(41,1,'adm1','2015-08-23','2015-10-07 03:14:10',80,'updated'),(42,1,'adm1','2015-05-23','2015-10-07 03:14:05',500,'current'),(43,1,'adm1','2015-08-23','2015-10-07 03:14:29',10,'updated'),(44,1,'adm1','2015-08-23','2015-10-07 03:14:29',70,'current');
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
  CONSTRAINT `metric` FOREIGN KEY (`metric_id`) REFERENCES `metric` (`metric_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_kpi`
--

LOCK TABLES `has_kpi` WRITE;
/*!40000 ALTER TABLE `has_kpi` DISABLE KEYS */;
INSERT INTO `has_kpi` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(1,36),(1,37),(1,38),(1,39),(1,40),(1,41),(1,42),(1,43),(1,44),(1,45),(1,46),(1,47),(1,48),(1,49),(1,50),(1,51),(1,52),(1,53),(1,54),(1,55),(1,56),(1,57),(1,58),(1,59),(1,60),(1,61),(1,62),(1,63),(1,64),(1,65),(1,66),(1,67),(1,68),(1,69),(1,70),(1,71),(1,72),(1,73),(1,74),(1,75),(1,76),(1,77),(1,78),(1,79),(1,80),(1,81),(1,82),(1,83),(1,84),(1,85),(1,86),(1,87),(1,88),(1,89),(1,90),(1,91),(1,92),(1,93),(1,94),(1,95),(1,96),(2,97),(2,98),(2,99),(2,100),(2,101),(2,102),(2,103),(2,104),(2,105),(2,106),(2,107),(2,108),(2,109),(2,110),(2,111),(2,112),(2,113),(2,114),(2,115),(2,116),(2,117),(2,118),(2,119),(2,120),(2,121),(2,122),(2,123),(2,124),(2,125),(2,126),(2,127),(2,128),(2,129),(2,130),(2,131),(2,132),(2,133),(2,134),(2,135),(2,136),(2,137),(2,138),(2,139),(2,140),(2,141),(2,142),(2,143),(2,144),(3,146),(3,147),(3,150),(3,151),(3,152),(3,153),(3,156),(3,157),(3,158),(3,159),(3,162),(3,168),(3,169),(3,170),(3,171),(3,174),(3,180),(3,186),(3,188),(3,189),(3,192),(3,198),(3,200),(3,201),(3,204),(3,206),(3,207),(3,210),(3,216),(4,217),(4,218),(4,219),(4,220),(4,221),(4,222),(4,223),(4,224),(4,225),(4,226),(4,227),(4,228),(4,229),(4,230),(4,233),(4,234),(4,235),(4,236),(4,237),(4,238),(4,239),(4,240),(4,241),(4,242),(5,243),(5,245),(5,247),(5,249),(5,251),(5,253),(5,255),(5,257),(5,260),(5,261),(5,263),(5,265),(6,268),(6,270),(6,272),(6,274),(6,276),(6,278),(6,280),(6,282),(6,284),(6,286),(6,288),(6,290),(7,296),(7,297),(7,298),(7,299),(7,302),(7,303),(7,304),(7,305),(7,308),(7,314),(7,315),(7,316),(7,317),(7,320),(7,326),(7,332),(7,334),(7,335),(7,338),(7,344),(7,350),(7,352),(7,353),(7,356),(7,362),(8,363),(8,365),(8,366),(8,367),(8,368),(8,369),(8,371),(8,372),(8,373),(8,375),(8,377),(8,378),(8,379),(8,381),(8,383),(8,384),(8,385),(9,388),(9,390),(9,392),(9,394),(9,396),(9,398),(9,400),(9,402),(9,404),(9,406),(9,408),(9,410),(10,411),(10,412),(10,413),(10,415),(10,418),(10,420),(10,421),(10,422),(11,424),(11,425),(11,427),(11,428),(11,436),(11,437),(11,438),(12,439),(12,440),(12,441),(12,442),(12,443),(12,444),(12,445),(12,446),(12,447),(12,448),(12,449),(12,450),(12,451),(12,452),(12,453),(12,454),(12,455),(12,456),(12,457),(12,458),(12,459),(12,460),(12,461),(12,462),(12,463),(12,464),(12,465),(12,466),(12,467),(12,468),(12,469),(12,470),(12,471),(12,472),(12,473),(12,474),(12,475),(12,476),(12,477),(12,478),(12,479),(12,480),(12,481),(12,482),(12,483),(12,484),(12,485),(12,486),(12,487),(12,488),(12,489),(12,490),(12,491),(12,492),(12,493),(12,494),(12,495),(12,496),(12,497),(12,498),(12,499),(13,501),(13,503),(13,505),(13,509),(13,515),(13,519),(13,521),(13,523),(14,524),(14,525),(14,526),(14,527),(14,528),(14,529),(14,530),(14,531),(14,532),(14,533),(14,534),(14,535),(15,536),(15,537),(15,538),(15,539),(15,540),(15,541),(15,542),(15,543),(15,544),(15,545),(15,546),(15,547),(15,548),(15,549),(15,550),(15,551),(15,552),(15,553),(15,554),(15,555),(15,556),(15,557),(15,558),(15,559);
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
  `kpi_name` varchar(45) NOT NULL,
  PRIMARY KEY (`kpi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpi`
--

LOCK TABLES `kpi` WRITE;
/*!40000 ALTER TABLE `kpi` DISABLE KEYS */;
INSERT INTO `kpi` VALUES (1,'Distribution_loss'),(2,'Debtors period_D'),(3,'SAIDI'),(4,'Planned Interruptions'),(5,'Offering Doorstep '),(6,'Customer visitsto'),(7,'SAIFI '),(8,'registered smscustomers'),(9,'RehabilitatedLV'),(10,'Enhance IT'),(11,'Standard Servicesinfo'),(12,'Satisfaction Survey'),(13,'Geographic feeding'),(14,'Customer Convenience'),(15,'Eliminate fatal');
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
 1 AS `metric_id`,
 1 AS `kpi_name`,
 1 AS `metric_name`*/;
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
) ENGINE=InnoDB AUTO_INCREMENT=560 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metric`
--

LOCK TABLES `metric` WRITE;
/*!40000 ALTER TABLE `metric` DISABLE KEYS */;
INSERT INTO `metric` VALUES (1,'Total Energy Delivered to Colombo City Via GSS during the six months.',20,100,1),(2,'Total of the Boundary Meter Readings of Colombo City during the six months.',0,100,1),(3,'Total Embedded Generation in Colombo City during the six months.',0,100,1),(4,'Billing ? Retail Sales of Colombo City during the six months.',0,100,1),(5,'Billing ? Bulk Sales of Colombo City during the six months.',0,100,1),(6,'Total Street Lighting energy in Colombo City during the six months.',0,100,1),(7,'Total energy of Temporary Connections in Colombo City during the six months.',0,100,1),(8,'Net Metering Generation in Colombo City during the six months.',0,100,1),(9,'Total Energy Delivered to NWP Via GSS during the six months.',0,100,1),(10,'Total of the Boundary Meter Readings of NWP during the six months.',0,100,1),(11,'Total Embedded Generation in NWP during the six months.',0,100,1),(12,'Billing ? Retail Sales of NWP during the six months.',0,100,1),(13,'Billing ? Bulk Sales of NWP during the six months.',0,100,1),(14,'Total Street Lighting energy in NWP during the six months.',0,100,1),(15,'Total energy of Temporary Connections in NWP during the six months.',0,100,1),(16,'Net Metering Generation in NWP during the six months.',0,100,1),(18,'Total of the Boundary Meter Readings of NCP during the six months.',0,100,1),(19,'Total Embedded Generation in NCP during the six months.',0,100,1),(20,'Billing ? Retail Sales of NCP during the six months.',0,100,1),(21,'Billing ? Bulk Sales of NCP during the six months.',0,100,1),(22,'Total Street Lighting energy in NCP during the six months.',0,100,1),(23,'Total energy of Temporary Connections in NCP during the six months.',0,100,1),(24,'Net Metering Generation in NCP during the six months.',0,100,1),(25,'Total Energy Delivered to North Province Via GSS during the six months.',0,100,1),(26,'Total of the Boundary Meter Readings of North Province during the six months.',0,100,1),(27,'Total Embedded Generation in North Province during the six months.',0,100,1),(28,'Billing ? Retail Sales of North Province during the six months.',0,100,1),(29,'Billing ? Bulk Sales of North Province during the six months.',0,100,1),(30,'Total Street Lighting energy in North Province during the six months.',0,100,1),(31,'Total energy of Temporary Connections in North Province during the six months.',0,100,1),(32,'Net Metering Generation in North Province during the six months.',0,100,1),(33,'Total Energy Delivered to WPN Via GSS during the six months.',0,100,1),(34,'Total of the Boundary Meter Readings of WPN during the six months.',0,100,1),(35,'Total Embedded Generation in WPN during the six months.',0,100,1),(36,'Billing ? Retail Sales of WPN during the six months.',0,100,1),(37,'Billing ? Bulk Sales of WPN during the six months.',0,100,1),(38,'Total Street Lighting energy in WPN during the six months.',0,100,1),(39,'Total energy of Temporary Connections in WPN during the six months.',0,100,1),(40,'Net Metering Generation in WPN during the six months.',0,100,1),(41,'Total Energy Delivered to Central Province Via GSS during the six months.',0,100,1),(42,'Total of the Boundary Meter Readings of Central Province during the six months.',0,100,1),(43,'Total Embedded Generation in Central Province during the six months.',0,100,1),(44,'Billing ? Retail Sales of Central Province during the six months.',0,100,1),(45,'Billing ? Bulk Sales of Central Province during the six months.',0,100,1),(46,'Total Street Lighting energy in Central Province during the six months.',0,100,1),(47,'Total energy of Temporary Connections in Central Province during the six months.',0,100,1),(48,'Net Metering Generation in Central Province during the six months.',0,100,1),(49,'Total Energy Delivered to Eastern Province Via GSS during the six months.',0,100,1),(50,'Total of the Boundary Meter Readings of Eastern Province during the six months.',0,100,1),(51,'Total Embedded Generation in Eastern Province during the six months.',0,100,1),(52,'Billing ? Retail Sales of Eastern Province during the six months.',0,100,1),(53,'Billing ? Bulk Sales of Eastern Province during the six months.',0,100,1),(54,'Total Street Lighting energy in Eastern Province during the six months.',0,100,1),(55,'Total energy of Temporary Connections in Eastern Province during the six months.',0,100,1),(56,'Net Metering Generation in Eastern Province during the six months.',0,100,1),(57,'Total Energy Delivered to WPS II Via GSS during the six months.',0,100,1),(58,'Total of the Boundary Meter Readings of WPS II during the six months.',0,100,1),(59,'Total Embedded Generation in WPS II during the six months.',0,100,1),(60,'Billing ? Retail Sales of WPS II during the six months.',0,100,1),(61,'Billing ? Bulk Sales of WPS II during the six months.',0,100,1),(62,'Total Street Lighting energy in WPS II during the six months.',0,100,1),(63,'Total energy of Temporary Connections in WPS II during the six months.',0,100,1),(64,'Net Metering Generation in WPS II during the six months.',0,100,1),(65,'Total Energy Delivered to Sabaragamuwa Via GSS during the six months.',0,100,1),(66,'Total of the Boundary Meter Readings of Sabaragamuwa during the six months.',0,100,1),(67,'Total Embedded Generation in Sabaragamuwa during the six months.',0,100,1),(68,'Billing ? Retail Sales of Sabaragamuwa during the six months.',0,100,1),(69,'Billing ? Bulk Sales of Sabaragamuwa during the six months.',0,100,1),(70,'Total Street Lighting energy in Sabaragamuwa during the six months.',0,100,1),(71,'Total energy of Temporary Connections in Sabaragamuwa during the six months.',0,100,1),(72,'Net Metering Generation in Sabaragamuwa during the six months.',0,100,1),(73,'Total Energy Delivered to Uva Province Via GSS during the six months.',0,100,1),(74,'Total of the Boundary Meter Readings of Uva Province during the six months.',0,100,1),(75,'Total Embedded Generation in Uva Province during the six months.',0,100,1),(76,'Billing ? Retail Sales of Uva Province during the six months.',0,100,1),(77,'Billing ? Bulk Sales of Uva Province during the six months.',0,100,1),(78,'Total Street Lighting energy in Uva Province during the six months.',0,100,1),(79,'Total energy of Temporary Connections in Uva Province during the six months.',0,100,1),(80,'Net Metering Generation in Uva Province during the six months.',0,100,1),(81,'Total Energy Delivered to WPS I Via GSS during the six months.',0,100,1),(82,'Total of the Boundary Meter Readings of WPS I during the six months.',0,100,1),(83,'Total Embedded Generation in WPS I during the six months.',0,100,1),(84,'Billing ? Retail Sales of WPS I during the six months.',0,100,1),(85,'Billing ? Bulk Sales of WPS I during the six months.',0,100,1),(86,'Total Street Lighting energy in WPS I during the six months.',0,100,1),(87,'Total energy of Temporary Connections in WPS I during the six months.',0,100,1),(88,'Net Metering Generation in WPS I during the six months.',0,100,1),(89,'Total Energy Delivered to Southern Province Via GSS during the six months.',0,100,1),(90,'Total of the Boundary Meter Readings of Southern Province during the six months.',0,100,1),(91,'Total Embedded Generation in  Southern Province during the six months.',0,100,1),(92,'Billing ? Retail Sales of Southern Province during the six months.',0,100,1),(93,'Billing ? Bulk Sales of Southern Province during the six months.',0,100,1),(94,'Total Street Lighting energy in Southern Province during the six months.',0,100,1),(95,'Total energy of Temporary Connections in Southern Province during the six months.',0,100,1),(96,'Net Metering Generation in Southern Province during the six months.',0,100,1),(97,'Ordinary supply Debt as at end of a particular month in Colombo City',0,100,1),(98,'Average monthly sales of three consecutive months of ordinary customers in Colombo City',0,100,1),(99,'Bulk supply Debt as at end of a particular month in Colombo City',0,100,1),(100,'Average monthly sales of three consecutive months of Bulk customers in Colombo City',0,100,1),(101,'Ordinary supply Debt as at end of a particular month in NWP',0,100,1),(102,'Average monthly sales of three consecutive months of ordinary customers in NWP',0,100,1),(103,'Bulk supply Debt as at end of a particular month in NWP',0,100,1),(104,'Average monthly sales of three consecutive months of Bulk customers in NWP',0,100,1),(105,'Ordinary supply Debt as at end of a particular month in NCP',0,100,1),(106,'Average monthly sales of three consecutive months of ordinary customers in NCP',0,100,1),(107,'Bulk supply Debt as at end of a particular month in NCP',0,100,1),(108,'Average monthly sales of three consecutive months of Bulk customers in NCP',0,100,1),(109,'Ordinary supply Debt as at end of a particular month in Northern Province',0,100,1),(110,'Average monthly sales of three consecutive months of ordinary customers in Northern Province',0,100,1),(111,'Bulk supply Debt as at end of a particular month in Northern Province',0,100,1),(112,'Average monthly sales of three consecutive months of Bulk customers in Northern Province',0,100,1),(113,'Ordinary supply Debt as at end of a particular month in WPN',0,100,1),(114,'Average monthly sales of three consecutive months of ordinary customers in WPN',0,100,1),(115,'Bulk supply Debt as at end of a particular month in WPN',0,100,1),(116,'Average monthly sales of three consecutive months of Bulk customers in WPN',0,100,1),(117,'Ordinary supply Debt as at end of a particular month in Central Province',0,100,1),(118,'Average monthly sales of three consecutive months of ordinary customers in Central Province',0,100,1),(119,'Bulk supply Debt as at end of a particular month in Central Province',0,100,1),(120,'Average monthly sales of three consecutive months of Bulk customers in Central Province',0,100,1),(121,'Ordinary supply Debt as at end of a particular month in Eastern Province',0,100,1),(122,'Average monthly sales of three consecutive months of ordinary customers in Eastern Province',0,100,1),(123,'Bulk supply Debt as at end of a particular month in Eastern Province',0,100,1),(124,'Average monthly sales of three consecutive months of Bulk customers in Eastern Province',0,100,1),(125,'Ordinary supply Debt as at end of a particular month in WPS II',0,100,1),(126,'Average monthly sales of three consecutive months of ordinary customers in WPS II',0,100,1),(127,'Bulk supply Debt as at end of a particular month in WPS II',0,100,1),(128,'Average monthly sales of three consecutive months of Bulk customers in WPS II',0,100,1),(129,'Ordinary supply Debt as at end of a particular month in Sabaragamuwa',0,100,1),(130,'Average monthly sales of three consecutive months of ordinary customers in Sabaragamuwa',0,100,1),(131,'Bulk supply Debt as at end of a particular month in Sabaragamuwa',0,100,1),(132,'Average monthly sales of three consecutive months of Bulk customers in Sabaragamuwa',0,100,1),(133,'Ordinary supply Debt as at end of a particular month in Uva Province',0,100,1),(134,'Average monthly sales of three consecutive months of ordinary customers in Uva Province',0,100,1),(135,'Bulk supply Debt as at end of a particular month in Uva Province',0,100,1),(136,'Average monthly sales of three consecutive months of Bulk customers in Uva Province',0,100,1),(137,'Ordinary supply Debt as at end of a particular month in WPS I',0,100,1),(138,'Average monthly sales of three consecutive months of ordinary customers in WPS I',0,100,1),(139,'Bulk supply Debt as at end of a particular month in WPS I',0,100,1),(140,'Average monthly sales of three consecutive months of Bulk customers in WPS I',0,100,1),(141,'Ordinary supply Debt as at end of a particular month in Southern Province',0,100,1),(142,'Average monthly sales of three consecutive months of ordinary customers in Southern Province',0,100,1),(143,'Bulk supply Debt as at end of a particular month in Southern Province',0,100,1),(144,'Average monthly sales of three consecutive months of Bulk customers in Southern Province',0,100,1),(146,'Total Sustained Consumer interruption duration due to HT Breakdowns during the month in Colombo City',0,100,1),(147,'Total Sustained Consumer interruption duration due to LT Breakdowns during the month in Colombo City',0,100,1),(150,'Total No. of consumers at the end of the month in Colombo City',0,100,1),(151,'Total Sustained Consumer interruption duration due to GSS Feeder Trippings during the month in NWP',0,100,1),(152,'Total Sustained Consumer interruption duration due to HT Breakdowns during the month in NWP',0,100,1),(153,'Total Sustained Consumer interruption duration due to LT Breakdowns during the month in NWP',0,100,1),(156,'Total No. of consumers at the end of the month in NWP',0,100,1),(157,'Total Sustained Consumer interruption duration due to GSS Feeder Trippings during the month in NCP',0,100,1),(158,'Total Sustained Consumer interruption duration due to HT Breakdowns during the month in NCP',0,100,1),(159,'Total Sustained Consumer interruption duration due to LT Breakdowns during the month in NCP',0,100,1),(162,'Total No. of consumers at the end of the month in NCP',0,100,1),(168,'Total No. of consumers at the end of the month in Northern Province',0,100,1),(169,'Total Sustained Consumer interruption duration due to GSS Feeder Trippings during the month in WPN',0,100,1),(170,'Total Sustained Consumer interruption duration due to HT Breakdowns during the month in Northern WPN',0,100,1),(171,'Total Sustained Consumer interruption duration due to LT Breakdowns during the month in Northern WPN',0,100,1),(174,'Total No. of consumers at the end of the month in WPN',0,100,1),(180,'Total No. of consumers at the end of the month in Central Province',0,100,1),(186,'Total No. of consumers at the end of the month in Eastern Province',0,100,1),(188,'Total Sustained Consumer interruption duration due to HT Breakdowns during the month in WPS II',0,100,1),(189,'Total Sustained Consumer interruption duration due to LT Breakdowns during the month in WPS II',0,100,1),(192,'Total No. of consumers at the end of the month in WPS II',0,100,1),(198,'Total No. of consumers at the end of the month in Sabaragamuwa Province',0,100,1),(200,'Total Sustained Consumer interruption duration due to HT Breakdowns during the month in Uva Province',0,100,1),(201,'Total Sustained Consumer interruption duration due to LT Breakdowns during the month in Uva Province',0,100,1),(204,'Total No. of consumers at the end of the month in Uva Province',0,100,1),(206,'Total Sustained Consumer interruption duration due to HT Breakdowns during the month in WPS I',0,100,1),(207,'Total Sustained Consumer interruption duration due to LT Breakdowns during the month in WPS I',0,100,1),(210,'Total No. of consumers at the end of the month in WPS I',0,100,1),(216,'Total No. of consumers at the end of the month in Southern Province',0,100,1),(217,'Number of planned Interruptions carried out during the month in Colombo City',0,100,1),(218,'Number of planned outages informed via SMS during the month in Colombo City',0,100,1),(219,'Number of planned Interruptions carried out during the month in NWP',0,100,1),(220,'Number of planned outages informed via SMS during the month in NWP',0,100,1),(221,'Number of planned Interruptions carried out during the month in NCP',0,100,1),(222,'Number of planned outages informed via SMS during the month in NCP',0,100,1),(223,'Number of planned Interruptions carried out during the month in Northern Province',0,100,1),(224,'Number of planned outages informed via SMS during the month in Northern Province',0,100,1),(225,'Number of planned Interruptions carried out during the month in WPN',0,100,1),(226,'Number of planned outages informed via SMS during the month in WPN',0,100,1),(227,'Number of planned Interruptions carried out during the month in Central Province',0,100,1),(228,'Number of planned outages informed via SMS during the month in Central Province',0,100,1),(229,'Number of planned Interruptions carried out during the month in Eastern Province',0,100,1),(230,'Number of planned outages informed via SMS during the month in Eastern Province',0,100,1),(233,'Number of planned Interruptions carried out during the month in WPS ll',0,100,1),(234,'Number of planned outages informed via SMS during the month in WPS ll',0,100,1),(235,'Number of planned Interruptions carried out during the month in Sabaragamuwa Province',0,100,1),(236,'Number of planned outages informed via SMS during the month in Sabaragamuwa Province',0,100,1),(237,'Number of planned Interruptions carried out during the month in Uva Province',0,100,1),(238,'Number of planned outages informed via SMS during the month in Uva Province',0,100,1),(239,'Number of planned Interruptions carried out during the month in WPS l',0,100,1),(240,'Number of planned outages informed via SMS during the month in WPS l',0,100,1),(241,'Number of planned Interruptions carried out during the month in Southern Province',0,100,1),(242,'Number of planned outages informed via SMS during the month in Southern Province',0,100,1),(243,'Total number of areas in Colombo City as at the end of the month.',0,100,1),(245,'Total number of areas in NWP as at the end of the month.',0,100,1),(247,'Total number of areas in NCP as at the end of the month.',0,100,1),(249,'Total number of areas in Northern Province as at the end of the month.',0,100,1),(251,'Total number of areas in WPN as at the end of the month.',0,100,1),(253,'Total number of areas in Central as at the end of the month.',0,100,1),(255,'Total number of areas in Eastern as at the end of the month.',0,100,1),(257,'Total number of areas in WPS II as at the end of the month.',0,100,1),(260,'Total number of areas in Sabaragamuwa as at the end of the month.',0,100,1),(261,'Total number of areas in Uva as at the end of the month.',0,100,1),(263,'Total number of areas in WPS I as at the end of the month.',0,100,1),(265,'Total number of areas in Southern Province as at the end of the month.',0,100,1),(268,'Number of consumers as at the end of the month in Consumer Service Centres in Colombo City',0,100,1),(270,'Number of consumers as at the end of the month in Consumer Service Centres in NWP',0,100,1),(272,'Number of consumers as at the end of the month in Consumer Service Centres in NCP',0,100,1),(274,'Number of consumers as at the end of the month in Consumer Service Centres in NP',0,100,1),(276,'Number of consumers as at the end of the month in Consumer Service Centres in WPN',0,100,1),(278,'Number of consumers as at the end of the month in Consumer Service Centres in CENTRAL PROVINCE',0,100,1),(280,'Number of consumers as at the end of the month in Consumer Service Centres in EASTERN PROVINCE',0,100,1),(282,'Number of consumers as at the end of the month in Consumer Service Centres in WPS II',0,100,1),(284,'Number of consumers as at the end of the month in Consumer Service Centres in Sabaragamuwa',0,100,1),(286,'Number of consumers as at the end of the month in Consumer Service Centres in Uva',0,100,1),(288,'Number of consumers as at the end of the month in Consumer Service Centres in WPS1',0,100,1),(290,'Number of consumers as at the end of the month in Consumer Service Centres in Southern Province',0,100,1),(296,'Total No. of consumers at the end of the monthin Colombo City',0,100,1),(297,'Total number of Sustained Consumer interruptions due to GSS Feeder Trippings during the month in NWP',0,100,1),(298,'Total number of Sustained Consumer interruptions due to HT Breakdowns during the month in NWP',0,100,1),(299,'Total number of Sustained Consumer interruptions due to LT Breakdowns during the month in NWP',0,100,1),(302,'Total No. of consumers at the end of the monthin NWP',0,100,1),(303,'Total number of Sustained Consumer interruptions due to GSS Feeder Trippings during the month in NCP',0,100,1),(304,'Total number of Sustained Consumer interruptions due to HT Breakdowns during the month in NCP',0,100,1),(305,'Total number of Sustained Consumer interruptions due to LT Breakdowns during the month in NCP',0,100,1),(308,'Total No. of consumers at the end of the monthin NCP',0,100,1),(314,'Total No. of consumers at the end of the monthin Northern',0,100,1),(315,'Total number of Sustained Consumer interruptions due to GSS Feeder Trippings during the month in WPN',0,100,1),(316,'Total number of Sustained Consumer interruptions due to HT Breakdowns during the month in WPN',0,100,1),(317,'Total number of Sustained Consumer interruptions due to LT Breakdowns during the month in WPN',0,100,1),(320,'Total No. of consumers at the end of the monthin WPN',0,100,1),(326,'Total No. of consumers at the end of the monthin Central',0,100,1),(332,'Total No. of consumers at the end of the monthin Eastern',0,100,1),(334,'Total number of Sustained Consumer interruptions due to HT Breakdowns during the month in WPS II',0,100,1),(335,'Total number of Sustained Consumer interruptions due to LT Breakdowns during the month in WPS II',0,100,1),(338,'Total No. of consumers at the end of the monthin WPS II',0,100,1),(344,'Total No. of consumers at the end of the monthin Sabaragamuwa Province',0,100,1),(350,'Total No. of consumers at the end of the monthin Uva Province',0,100,1),(352,'Total number of Sustained Consumer interruptions due to HT Breakdowns during the month in WPS I',0,100,1),(353,'Total number of Sustained Consumer interruptions due to LT Breakdowns during the month in WPS I',0,100,1),(356,'Total No. of consumers at the end of the monthin WPS I',0,100,1),(362,'Total No. of consumers at the end of the monthin Southern',0,100,1),(363,'Total number of customers as at the beginning of the month in Colombo City.',0,100,1),(365,'Total number of customers as at the beginning of the month in NWP.',0,100,1),(366,'Total number of registered customers for SMS Alert services in NWP as at the end of the month.',0,100,1),(367,'Total number of customers as at the beginning of the month in NCP.',0,100,1),(368,'Total number of registered customers for SMS Alert services in NCP as at the end of the month.',0,100,1),(369,'Total number of customers as at the beginning of the month in Northern Province.',0,100,1),(371,'Total number of customers as at the beginning of the month in WPN.',0,100,1),(372,'Total number of registered customers for SMS Alert services in WPN as at the end of the month.',0,100,1),(373,'Total number of customers as at the beginning of the month in Central Province.',0,100,1),(375,'Total number of customers as at the beginning of the month in Eastern Province.',0,100,1),(377,'Total number of customers as at the beginning of the month in WPS II.',0,100,1),(378,'Total number of registered customers for SMS Alert services in WPS II as at the end of the month.',0,100,1),(379,'Total number of customers as at the beginning of the month in Sabaragamuwa Province.',0,100,1),(381,'Total number of customers as at the beginning of the month in Uva Province.',0,100,1),(383,'Total number of customers as at the beginning of the month in WPS I.',0,100,1),(384,'Total number of registered customers for SMS Alert services in WPS I as at the end of the month.',0,100,1),(385,'Total number of customers as at the beginning of the month in Southern Province.',0,100,1),(388,'Total number of LV schemes in Area ?i? of Colombo City',0,100,1),(390,'Total number of LV schemes in Area ?i? in NWP.',0,100,1),(392,'Total number of LV schemes in Area ?i? of NCP.',0,100,1),(394,'Total number of LV scheme sin Area ?i? Northern Province.',0,100,1),(396,'Total number of LV schemes in Area ?i? in WPN.',0,100,1),(398,'Total number of LV schemes in Area ?i? in Central Province.',0,100,1),(400,'Total number of LV schemes in Area ?i? in Eastern Province.',0,100,1),(402,'Total number of LV schemes in Area ?i? in WPS II.',0,100,1),(404,'Total number of LV schemes in Area ?i? in Sabaragamuwa',0,100,1),(406,'Total number of LV schemes in Area ?i? in Uva Province.',0,100,1),(408,'Total number of LV schemes in Area ?i? in Province WPS I',0,100,1),(410,'Total number of LV schemes in Area ?i? in Southern Province.',0,100,1),(411,'Number of different SMS alert services ?offered? to any Retail customer in Area?i? in Colombo City',0,100,1),(412,'Number of different SMS alert services ?offered? to any Retail customer in Area?i? in NWP',0,100,1),(413,'Number of different SMS alert services ?offered? to any Retail customer in Area ?i? in NCP',0,100,1),(415,'Number of different SMS alert services ?offered? to any Retail customer in Area ?i? in WPN',0,100,1),(418,'Number of different SMS alert services ?offered? to any Retail customer in Area ?i? in WPS II',0,100,1),(420,'Number of different SMS alert services ?offered? to any Retail customer in Area ?i? in Uva Province.',0,100,1),(421,'Number of different SMS alert services ?offered? to any Retail customer in Area?i? in WPS I',0,100,1),(422,'Number of different SMS alert services ?offered? to any Retail customer in Area?i? in Southern',0,100,1),(424,'Number of standard services for which all information are available as a Document in Area ?i? in NWP',0,100,1),(425,'Number of standard services for which all information are available as a Document in Area ?i? in NCP',0,100,1),(427,'Number of Standard Services offered by CEB.',0,100,1),(428,'Number of standard services for which all information are available as a Document in Area ?i? in WPN',0,100,1),(436,'Customer perception index on Electricity Supply of Southern Province',0,100,1),(437,'Customer Perception Index on recent and expected future performance of Southern Province',0,100,1),(438,'Customer Perception Index on Friendliness of Southern Province',0,100,1),(439,'Customer Perception Index on Quality of work of Southern Province',0,100,1),(440,'Customer Perception Index on Customer Service of Southern Province',0,100,1),(441,'Customer Perception Index on recent and expected future performance of WPS I',0,100,1),(442,'Customer Perception Index on Friendliness of WPS I',0,100,1),(443,'Customer Perception Index on Quality of work of WPS I',0,100,1),(444,'Customer Perception Index on Customer Service of WPS I',0,100,1),(445,'Customer perception index on Electricity Supply of WPS I',0,100,1),(446,'Customer Perception Index on recent and expected future performance of Uva Province',0,100,1),(447,'Customer Perception Index on Customer Service of Uva',0,100,1),(448,'Customer Perception Index on Quality of work of Uva Province',0,100,1),(449,'Customer perception index on Electricity Supply of Uva',0,100,1),(450,'Customer Perception Index on Friendliness of Uva Province',0,100,1),(451,'Customer Perception Index on recent and expected future performance of Sabaragamuwa Province',0,100,1),(452,'Customer Perception Index on Friendliness of Sabaragamuwa',0,100,1),(453,'Customer Perception Index on Quality of work of Sabaragamuwa Province',0,100,1),(454,'Customer Perception Index on Customer Service of Sabaragamuwa Province',0,100,1),(455,'Customer perception index on Electricity Supply of Sabaragamuwa Province',0,100,1),(456,'Customer Perception Index on recent and expected future performance of WPS II',0,100,1),(457,'Customer Perception Index on Friendliness of WPS II',0,100,1),(458,'Customer Perception Index on Quality of work of WPS II',0,100,1),(459,'Customer Perception Index on Customer Service of WPS II',0,100,1),(460,'Customer perception index on Electricity Supply of WPS II',0,100,1),(461,'Customer Perception Index on recent and expected future performance of Eastern Province',0,100,1),(462,'Customer Perception Index on Friendliness of Eastern Province',0,100,1),(463,'Customer Perception Index on Quality of work of Eastern',0,100,1),(464,'Customer Perception Index on Customer Service of Eastern Province',0,100,1),(465,'Customer perception index on Electricity Supply of Eastern Province',0,100,1),(466,'Customer Perception Index on recent and expected future performance of Central Province',0,100,1),(467,'Customer Perception Index on Friendliness of Central Province',0,100,1),(468,'Customer Perception Index on Quality of work of Central Province',0,100,1),(469,'Customer perception index on Electricity Supply of Central',0,100,1),(470,'Customer Perception Index on recent and expected future performance of WPN',0,100,1),(471,'Customer Perception Index on Friendliness of WPN',0,100,1),(472,'Customer Perception Index on Quality of work of WPN',0,100,1),(473,'Customer Perception Index on Customer Service of WPN',0,100,1),(474,'Customer perception index on Electricity Supply of WPN',0,100,1),(475,'Customer Perception Index on recent and expected future performance of Northern Province',0,100,1),(476,'Customer Perception Index on Friendliness of Northern Province',0,100,1),(477,'Customer Perception Index on Quality of work of Northern Province',0,100,1),(478,'Customer Perception Index on Customer Service of Northern Province',0,100,1),(479,'Customer perception index on Electricity Supply of Northern Province',0,100,1),(480,'Customer Perception Index on recent and expected future performance of NCP',0,100,1),(481,'Customer Perception Index on Friendliness of NCP',0,100,1),(482,'Customer Perception Index on Quality of work of NCP',0,100,1),(483,'Customer Perception Index on Customer Service of NCP',0,100,1),(484,'Customer perception index on Electricity Supply of NCP',0,100,1),(485,'Customer Perception Index on recent and expected future performance of NWP',0,100,1),(486,'Customer Perception Index on Friendliness of NWP',0,100,1),(487,'Customer Perception Index on Quality of work of NWP',0,100,1),(488,'Customer Perception Index on Customer Service of NWP',0,100,1),(489,'Customer perception index on Electricity Supply of NWP',0,100,1),(490,'Customer Perception Index on recent and expected future performance of Colombo City',0,100,1),(491,'Customer Perception Index on Friendliness of Colombo City',0,100,1),(492,'Customer Perception Index on Quality of work of Colombo City',0,100,1),(493,'Customer Perception Index on Customer Service of Colombo City',0,100,1),(494,'Customer perception index on Electricity Supply of Colombo City',0,100,1),(495,'K1',0,100,1),(496,'K2',0,100,1),(497,'K3',0,100,1),(498,'K4',0,100,1),(499,'K5',0,100,1),(501,'Total number of distribution substations operating in the Colombo City at the end of the quarter.',0,100,1),(503,'Total number of distribution substations operating in the NWP at the end of the quarter.',0,100,1),(505,'Total number of distribution substations operating in the NCP at the end of the quarter.',0,100,1),(509,'Total number of distribution substations operating in the WPN at the end of the quarter.',0,100,1),(515,'Total number of distribution substations operating in the WPS II at the end of the quarter.',0,100,1),(519,'Total number of distribution substations operating in the Uva Province at the end of the quarter.',0,100,1),(521,'Total number of distribution substations operating in the WPS I at the end of the quarter.',0,100,1),(523,'Total number of distribution substations operating in the Southern at the end of the quarter.',0,100,1),(524,'Number of additional services offered at Call Centers in Colombo City',0,100,1),(525,'Number of additional services offered at Call Centers in NWP',0,100,1),(526,'Number of additional services offered at Call Centers in NCP',0,100,1),(527,'Number of additional services offered at Call Centers in Northern Province',0,100,1),(528,'Number of additional services offered at Call Centers in WPN',0,100,1),(529,'Number of additional services offered at Call Centers in Central',0,100,1),(530,'Number of additional services offered at Call Centers in Eastern',0,100,1),(531,'Number of additional services offered at Call Centers in WPS II',0,100,1),(532,'Number of additional services offered at Call Centers in Sabaragamuwa Province.',0,100,1),(533,'Number of additional services offered at Call Centers in Uva Province',0,100,1),(534,'Number of additional services offered at Call Centers in WPS I',0,100,1),(535,'Number of additional services offered at Call Centers in Southern Province.',0,100,1),(536,'Number of Major accidents occurred to staff in Division 01 during the 1stmonth of the quarter',0,100,1),(537,'Number of Major accidents occurred to staff in Division 01 during the 2ndmonth of the quarter',0,100,1),(538,'Number of Major accidents occurred to staff in Division 01 during the 3rdmonth of the quarter',0,100,1),(539,'Number of Fatal accidents occurred to staff in Division 01 during the 1stmonth of the quarter',0,100,1),(540,'Number of Fatal accidents occurred to staff in Division 01 during the 2ndmonth of the quarter',0,100,1),(541,'Number of Fatal accidents occurred to staff in Division 01 during the 3rdmonth of the quarter',0,100,1),(542,'Number of Major accidents occurred to staff in Division 02 during the 1stmonth of the quarter',0,100,1),(543,'Number of Major accidents occurred to staff in Division 02 during the 2ndmonth of the quarter',0,100,1),(544,'Number of Major accidents occurred to staff in Division 02 during the 3rdmonth of the quarter',0,100,1),(545,'Number of Fatal accidents occurred to staff in Division 02 during the 1stmonth of the quarter',0,100,1),(546,'Number of Fatal accidents occurred to staff in Division 02 during the 2ndmonth of the quarter',0,100,1),(547,'Number of Fatal accidents occurred to staff in Division 02 during the 3rdmonth of the quarter',0,100,1),(548,'Number of Major accidents occurred to staff in Division 03 during the 1stmonth of the quarter',0,100,1),(549,'Number of Major accidents occurred to staff in Division 03 during the 2ndmonth of the quarter',0,100,1),(550,'Number of Major accidents occurred to staff in Division 03 during the 3rdmonth of the quarter',0,100,1),(551,'Number of Fatal accidents occurred to staff in Division 03 during the 1stmonth of the quarter',0,100,1),(552,'Number of Fatal accidents occurred to staff in Division 03 during the 2ndmonth of the quarter',0,100,1),(553,'Number of Fatal accidents occurred to staff in Division 03 during the 3rdmonth of the quarter',0,100,1),(554,'Number of Major accidents occurred to staff in Division 04 during the 1stmonth of the quarter',0,100,1),(555,'Number of Major accidents occurred to staff in Division 04 during the 2ndmonth of the quarter',0,100,1),(556,'Number of Major accidents occurred to staff in Division 04 during the 3rdmonth of the quarter',0,100,1),(557,'Number of Fatal accidents occurred to staff in Division 04 during the 1stmonth of the quarter',0,100,1),(558,'Number of Fatal accidents occurred to staff in Division 04 during the 2ndmonth of the quarter',0,100,1),(559,'Number of Fatal accidents occurred to staff in Division 04 during the 3rdmonth of the quarter',0,100,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES (4,'Colombo City'),(13,'Colombo City - 111'),(14,'Colombo City - 2222'),(15,'Colombo City hgf'),(7,'CP'),(6,'EP'),(2,'NCP'),(3,'NP'),(1,'NWP'),(10,'SABARAGAMUWA'),(12,'SOUTHERN'),(9,'UVA'),(5,'WPN'),(11,'WPSI'),(8,'WPSII');
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` varchar(45) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `password` varchar(45) NOT NULL,
  `pwcounter` int(11) DEFAULT NULL,
  `user_type` varchar(45) NOT NULL,
  `province_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `provnceid_idx` (`province_id`),
  CONSTRAINT `provnceid` FOREIGN KEY (`province_id`) REFERENCES `province` (`province_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('adm1','hasitha','0756780065','ghasithalakmal@gmail.com','Software engineer','adm',0,'adm',1),('adm10','hasitha','0756780065','ghasithalakmal@gmail.com','Software engineer','adm',0,'adm',10),('adm11','hasitha','0756780065','ghasithalakmal@gmail.com','Software engineer','adm',0,'adm',11),('adm12','hasitha','0756780065','ghasithalakmal@gmail.com','Software engineer','adm',0,'adm',12),('adm2','hasitha','0756780065','ghasithalakmal@gmail.com','Software engineer','adm',0,'adm',2),('adm3','hasitha','0756780065','ghasithalakmal@gmail.com','Software engineer','adm',0,'adm',3),('adm4','hasitha','0756780065','ghasithalakmal@gmail.com','Software engineer','adm',0,'adm',4),('adm5','hasitha','0756780065','ghasithalakmal@gmail.com','Software engineer','adm',0,'adm',5),('adm6','hasitha','0756780065','ghasithalakmal@gmail.com','Software engineer','adm',0,'adm',6),('adm7','hasitha','0756780065','ghasithalakmal@gmail.com','Software engineer','adm',0,'adm',7),('adm8','hasitha','0756780065','ghasithalakmal@gmail.com','Software engineer','adm',0,'adm',8),('adm9','hasitha','0756780065','ghasithalakmal@gmail.com','Software engineer','adm',0,'adm',9);
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_all_province`()
BEGIN
select * from province;
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
			set reason ='Metric is not defined';
			set resultado =(SELECT ROW_COUNT());
		end if;
#if user is not exist
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
/*!50001 VIEW `bscconnect_view` AS select `data_view`.`metric_name` AS `metric_name`,`data_view`.`data_date` AS `data_date`,`data_view`.`upload_date` AS `upload_date`,`data_view`.`value` AS `value` from `data_view` where ((`data_view`.`state` = 'current') and (`data_view`.`upload_date` > (curdate() - interval 1 week))) */;
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
/*!50001 VIEW `kpi_metric` AS select `kpi`.`kpi_id` AS `kpi_id`,`has_kpi`.`metric_id` AS `metric_id`,`kpi`.`kpi_name` AS `kpi_name`,`metric`.`metric_name` AS `metric_name` from ((`kpi` left join `has_kpi` on((`kpi`.`kpi_id` = `has_kpi`.`kpi_id`))) left join `metric` on((`has_kpi`.`metric_id` = `metric`.`metric_id`))) */;
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

-- Dump completed on 2015-10-07  9:06:00
