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
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
INSERT INTO `data` VALUES (96,562,'adm1','2015-06-30','2015-11-30 06:34:15',45,'current'),(97,563,'adm1','2015-06-30','2015-11-30 06:34:23',567,'updated'),(98,565,'adm1','2015-08-31','2015-11-30 06:34:15',67,'current'),(99,565,'adm1','2015-09-30','2015-11-30 06:34:16',56,'current'),(100,565,'adm1','2015-03-31','2015-11-30 06:34:16',56,'current'),(101,566,'adm1','2015-08-31','2015-11-30 06:34:16',89,'current'),(102,566,'adm1','2015-09-30','2015-11-30 06:34:16',34,'current'),(103,566,'adm1','2015-03-31','2015-11-30 06:34:16',34,'current'),(104,567,'adm1','2015-08-31','2015-11-30 06:34:16',56,'current'),(105,568,'adm1','2015-08-31','2015-11-30 06:34:30',6755,'updated'),(106,568,'adm1','2015-09-30','2015-11-30 06:53:22',30,'updated'),(107,569,'adm1','2015-08-31','2015-11-30 06:34:16',11,'current'),(108,569,'adm1','2015-09-30','2015-11-30 06:34:16',20,'current'),(109,570,'adm1','2015-08-31','2015-11-30 06:34:27',5534,'updated'),(110,570,'adm1','2015-09-30','2015-11-30 06:34:16',30,'current'),(111,571,'adm1','2015-08-31','2015-11-30 06:34:16',56,'current'),(112,571,'adm1','2015-09-30','2015-11-30 06:34:16',89,'current'),(113,563,'adm1','2015-11-30','2015-11-30 06:58:10',22,'updated'),(114,570,'adm1','2015-11-30','2015-11-30 06:49:41',22,'current'),(117,563,'adm1','2015-06-30','2015-11-30 06:52:49',567,'current'),(118,568,'adm1','2015-08-31','2015-11-30 06:52:49',6755,'current'),(119,568,'adm1','2015-09-30','2015-11-30 06:53:22',20,'current'),(120,562,'adm1','2015-01-23','2015-12-03 04:42:42',2,'current'),(121,562,'adm1','2015-02-23','2015-12-03 04:42:42',10,'current'),(122,562,'adm1','2015-03-23','2015-12-03 04:42:43',50,'updated'),(123,562,'adm1','2015-04-23','2015-12-03 04:42:43',100,'current'),(124,562,'adm1','2015-03-23','2015-12-03 04:44:19',500,'updated'),(125,562,'adm1','2015-11-23','2015-12-03 04:42:43',2,'current'),(126,562,'adm1','2015-12-23','2015-12-03 04:42:43',10,'current'),(127,562,'adm1','2016-05-23','2015-12-03 04:42:43',50,'updated'),(128,562,'adm1','2016-05-23','2015-12-03 04:42:43',100,'updated'),(129,562,'adm1','2016-05-23','2015-12-03 04:45:08',500,'updated'),(130,562,'adm1','2015-03-23','2015-12-03 04:44:19',50,'updated'),(131,562,'adm1','2015-03-23','2015-12-03 04:45:08',500,'updated'),(132,562,'adm1','2015-03-23','2015-12-03 04:45:08',50,'updated'),(133,562,'adm1','2015-03-23','2015-12-03 04:50:38',500,'updated'),(134,562,'adm1','2016-05-23','2015-12-03 04:45:09',50,'updated'),(135,562,'adm1','2016-05-23','2015-12-03 04:45:09',100,'updated'),(136,562,'adm1','2016-05-23','2015-12-03 04:50:38',500,'updated'),(137,562,'adm1','2015-03-23','2015-12-03 04:50:38',50,'updated'),(138,562,'adm1','2015-03-23','2015-12-03 09:09:09',500,'updated'),(139,562,'adm1','2016-05-23','2015-12-03 04:50:38',50,'updated'),(140,562,'adm1','2016-05-23','2015-12-03 04:50:38',100,'updated'),(141,562,'adm1','2016-05-23','2015-12-03 09:09:09',500,'updated'),(142,562,'adm1','2015-03-23','2015-12-03 09:09:09',50,'updated'),(143,562,'adm1','2015-03-23','2015-12-03 09:40:45',500,'updated'),(144,562,'adm1','2016-05-23','2015-12-03 09:09:09',50,'updated'),(145,562,'adm1','2016-05-23','2015-12-03 09:09:09',100,'updated'),(146,562,'adm1','2016-05-23','2015-12-03 09:40:45',500,'updated'),(147,562,'adm1','2015-03-23','2015-12-03 09:40:45',50,'updated'),(148,562,'adm1','2015-03-23','2015-12-03 09:40:45',500,'current'),(149,562,'adm1','2016-05-23','2015-12-03 09:40:45',50,'updated'),(150,562,'adm1','2016-05-23','2015-12-03 09:40:45',100,'updated'),(151,562,'adm1','2016-05-23','2015-12-03 09:40:45',500,'current');
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
INSERT INTO `has_kpi` VALUES (17,562),(25,562),(26,562),(17,563),(25,563),(26,563),(17,564),(18,564),(25,564),(26,564),(18,565),(25,565),(26,565),(18,566),(25,566),(26,566),(19,567),(20,567),(25,567),(26,567),(19,568),(20,568),(25,568),(26,568),(19,569),(20,569),(25,569),(26,569),(19,570),(20,570),(25,570),(26,570),(20,571),(25,571),(26,571),(21,572),(22,573),(20,574),(23,575),(23,576),(23,577),(23,578),(23,579),(24,579),(23,580),(23,581),(25,582),(25,583),(17,584),(17,585),(17,586),(17,587),(17,588),(17,589),(17,590),(17,591),(18,592),(18,593),(18,594),(18,595),(18,596),(18,597),(18,598),(18,599),(19,600),(19,601),(19,602),(19,603),(19,604),(19,605),(19,606),(19,607),(20,608),(20,609),(20,610),(20,611),(20,612),(20,613),(20,614),(20,615),(23,616),(23,617),(23,618),(23,619),(23,620),(23,621),(23,622),(23,623),(24,624),(24,625),(24,626),(24,627),(24,628),(24,629),(24,630),(24,631),(27,632),(27,633),(27,634),(27,635),(27,636),(27,637),(27,638),(27,639),(28,640),(28,641),(28,642),(28,643),(28,644),(28,645),(28,646),(28,647),(29,648),(29,649),(29,650),(29,651),(29,652),(29,653),(29,654),(29,655),(30,656),(30,657),(30,658),(30,659),(30,660),(30,661),(30,662),(30,663);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpi`
--

LOCK TABLES `kpi` WRITE;
/*!40000 ALTER TABLE `kpi` DISABLE KEYS */;
INSERT INTO `kpi` VALUES (17,'kpi1','Bi-annually'),(18,'kpi2','Bi-annually'),(19,'kpi3','Bi-annually'),(20,'kpi4','Bi-annually'),(21,'bbbb','xxxx'),(22,'cccc','null'),(23,'kpi5','Bi-annually'),(24,'kpi6','Bi-annually'),(25,'wwww','m'),(26,'w','a'),(27,'kpi7','Bi-annually'),(28,'kpi8','Bi-annually'),(29,'kpi9','Bi-annually'),(30,'kpi10','Bi-annually');
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
) ENGINE=InnoDB AUTO_INCREMENT=664 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metric`
--

LOCK TABLES `metric` WRITE;
/*!40000 ALTER TABLE `metric` DISABLE KEYS */;
INSERT INTO `metric` VALUES (562,'data1',10,100,1),(563,'data2',10,100,1),(564,'data3',10,100,1),(565,'data4',10,100,1),(566,'data5',10,100,1),(567,'data10',10,100,1),(568,'data6',10,100,1),(569,'data7',10,100,1),(570,'data8',10,100,1),(571,'data9',10,100,1),(572,'bbbbbbbb',10,70,7),(573,'ccccccccccccc',10,80,1),(574,'data11',10,100,1),(575,'data12',10,100,1),(576,'data13',10,100,1),(577,'data14',10,100,1),(578,'data15',10,100,1),(579,'data16',10,100,1),(580,'data17',10,100,1),(581,'data18',10,100,1),(582,'data788',0,0,1),(583,'data999',0,0,1),(584,'m1',10,50,11),(585,'m2',10,50,11),(586,'m5',10,50,7),(587,'m6',10,50,7),(588,'m7',10,50,3),(589,'m8',10,50,3),(590,'m9',10,50,8),(591,'m10',10,50,8),(592,'m11',10,50,11),(593,'m12',10,50,11),(594,'m15',10,50,7),(595,'m16',10,50,7),(596,'m17',10,50,3),(597,'m18',10,50,3),(598,'m19',10,50,8),(599,'m20',10,50,8),(600,'m21',10,50,11),(601,'m22',10,50,11),(602,'m25',10,50,7),(603,'m26',10,50,7),(604,'m27',10,50,3),(605,'m28',10,50,3),(606,'m29',10,50,8),(607,'m30',10,50,8),(608,'m31',10,50,11),(609,'m32',10,50,11),(610,'m35',10,50,7),(611,'m36',10,50,7),(612,'m37',10,50,3),(613,'m38',10,50,3),(614,'m39',10,50,8),(615,'m40',10,50,8),(616,'m41',10,50,11),(617,'m42',10,50,11),(618,'m45',10,50,7),(619,'m46',10,50,7),(620,'m47',10,50,3),(621,'m48',10,50,3),(622,'m49',10,50,8),(623,'m50',10,50,8),(624,'m51',10,50,11),(625,'m52',10,50,11),(626,'m55',10,50,7),(627,'m56',10,50,7),(628,'m57',10,50,3),(629,'m58',10,50,3),(630,'m59',10,50,8),(631,'m60',10,50,8),(632,'m61',10,50,11),(633,'m62',10,50,11),(634,'m65',10,50,7),(635,'m66',10,50,7),(636,'m67',10,50,3),(637,'m68',10,50,3),(638,'m69',10,50,8),(639,'m70',10,50,8),(640,'m71',10,50,11),(641,'m72',10,50,11),(642,'m75',10,50,7),(643,'m76',10,50,7),(644,'m77',10,50,3),(645,'m78',10,50,3),(646,'m79',10,50,8),(647,'m80',10,50,8),(648,'m81',10,50,11),(649,'m82',10,50,11),(650,'m85',10,50,7),(651,'m86',10,50,7),(652,'m87',10,50,3),(653,'m88',10,50,3),(654,'m89',10,50,8),(655,'m90',10,50,8),(656,'m91',10,50,11),(657,'m92',10,50,11),(658,'m95',10,50,7),(659,'m96',10,50,7),(660,'m97',10,50,3),(661,'m98',10,50,3),(662,'m99',10,50,8),(663,'m100',10,50,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'adm1','hasitha','0756780065','ghasithalakmal@gmail.com','Software engineer','adm',0,'adm',1);
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

-- Dump completed on 2015-12-04 13:41:31
