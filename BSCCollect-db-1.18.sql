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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
INSERT INTO `data` VALUES (1,1077,'corp','2015-03-23','2015-12-21 08:03:19',2,'current'),(2,1078,'corp','2015-03-23','2015-12-21 08:03:19',10,'current'),(3,1079,'corp','2015-03-23','2015-12-21 08:03:19',30,'current'),(4,1080,'corp','2015-03-23','2015-12-21 08:03:19',50,'current'),(5,1081,'corp','2015-03-23','2015-12-21 08:03:19',500,'current'),(6,1087,'corp','2015-04-23','2015-12-21 08:03:19',2,'current'),(7,1088,'corp','2015-04-23','2015-12-21 08:03:19',10,'current'),(8,1089,'corp','2015-04-23','2015-12-21 08:03:19',30,'current'),(9,1090,'corp','2015-04-23','2015-12-21 08:03:19',50,'current'),(10,1091,'corp','2015-04-23','2015-12-21 08:03:20',500,'current'),(11,1097,'corp','2015-05-23','2015-12-21 08:03:20',2,'current'),(12,1098,'corp','2015-05-23','2015-12-21 08:03:20',10,'current'),(13,1099,'corp','2015-05-23','2015-12-21 08:03:20',30,'current'),(14,1100,'corp','2015-05-23','2015-12-21 08:03:20',50,'current'),(15,1101,'corp','2015-05-23','2015-12-21 08:03:20',500,'current'),(16,1107,'corp','2015-06-23','2015-12-21 08:03:20',2,'current'),(17,1108,'corp','2015-06-23','2015-12-21 08:03:20',10,'current'),(18,1109,'corp','2015-06-23','2015-12-21 08:03:20',30,'current'),(19,1110,'corp','2015-06-23','2015-12-21 08:03:20',50,'current'),(20,1111,'corp','2015-06-23','2015-12-21 08:03:20',500,'current'),(21,1117,'corp','2015-07-23','2015-12-21 08:03:20',2,'current'),(22,1118,'corp','2015-07-23','2015-12-21 08:03:20',10,'current'),(23,1119,'corp','2015-07-23','2015-12-21 08:03:20',30,'current'),(24,1120,'corp','2015-07-23','2015-12-21 08:03:20',50,'current'),(25,1121,'corp','2015-07-23','2015-12-21 08:03:20',500,'current'),(26,1127,'corp','2015-08-23','2015-12-21 08:03:20',2,'current'),(27,1128,'corp','2015-08-23','2015-12-21 08:03:20',10,'current'),(28,1129,'corp','2015-08-23','2015-12-21 08:03:20',30,'current'),(29,1130,'corp','2015-08-23','2015-12-21 08:03:21',50,'current'),(30,1131,'corp','2015-08-23','2015-12-21 08:03:21',500,'current'),(31,1137,'corp','2015-09-23','2015-12-21 08:03:21',2,'current'),(32,1138,'corp','2015-09-23','2015-12-21 08:03:21',10,'current'),(33,1139,'corp','2015-09-23','2015-12-21 08:03:21',30,'current'),(34,1140,'corp','2015-09-23','2015-12-21 08:03:21',50,'current'),(35,1141,'corp','2015-09-23','2015-12-21 08:03:21',500,'current'),(36,1147,'corp','2015-02-23','2015-12-21 08:03:21',2,'current'),(37,1148,'corp','2015-02-23','2015-12-21 08:03:21',10,'current'),(38,1149,'corp','2015-02-23','2015-12-21 08:03:21',30,'current'),(39,1150,'corp','2015-02-23','2015-12-21 08:03:21',50,'current'),(40,1151,'corp','2015-02-23','2015-12-21 08:03:21',500,'current'),(41,1157,'corp','2015-01-23','2015-12-21 08:03:21',2,'current'),(42,1158,'corp','2015-01-23','2015-12-21 08:03:21',10,'current'),(43,1159,'corp','2015-01-23','2015-12-21 08:03:21',30,'current'),(44,1160,'corp','2015-01-23','2015-12-21 08:03:21',50,'current'),(45,1161,'corp','2015-01-23','2015-12-21 08:03:21',500,'current'),(46,1167,'corp','2015-03-23','2015-12-21 08:03:21',2,'current'),(47,1168,'corp','2015-03-23','2015-12-21 08:03:21',10,'current'),(48,1169,'corp','2015-03-23','2015-12-21 08:03:21',30,'current'),(49,1170,'corp','2015-03-23','2015-12-21 08:03:22',50,'current'),(50,1171,'corp','2015-03-23','2015-12-21 08:03:22',500,'current');
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
INSERT INTO `has_kpi` VALUES (73,1077),(73,1078),(73,1079),(73,1080),(73,1081),(73,1082),(73,1083),(73,1084),(73,1085),(73,1086),(74,1087),(74,1088),(74,1089),(74,1090),(74,1091),(74,1092),(74,1093),(74,1094),(74,1095),(74,1096),(75,1097),(75,1098),(75,1099),(75,1100),(75,1101),(75,1102),(75,1103),(75,1104),(75,1105),(75,1106),(76,1107),(76,1108),(76,1109),(76,1110),(76,1111),(76,1112),(76,1113),(76,1114),(76,1115),(76,1116),(77,1117),(77,1118),(77,1119),(77,1120),(77,1121),(77,1122),(77,1123),(77,1124),(77,1125),(77,1126),(78,1127),(78,1128),(78,1129),(78,1130),(78,1131),(78,1132),(78,1133),(78,1134),(78,1135),(78,1136),(79,1137),(79,1138),(79,1139),(79,1140),(79,1141),(79,1142),(79,1143),(79,1144),(79,1145),(79,1146),(80,1147),(80,1148),(80,1149),(80,1150),(80,1151),(80,1152),(80,1153),(80,1154),(80,1155),(80,1156),(81,1157),(81,1158),(81,1159),(81,1160),(81,1161),(81,1162),(81,1163),(81,1164),(81,1165),(81,1166),(82,1167),(82,1168),(82,1169),(82,1170),(82,1171),(82,1172),(82,1173),(82,1174),(82,1175),(82,1176),(83,1177),(83,1178),(84,1179);
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
  `kpiunit` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`kpi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpi`
--

LOCK TABLES `kpi` WRITE;
/*!40000 ALTER TABLE `kpi` DISABLE KEYS */;
INSERT INTO `kpi` VALUES (73,'kpi1','m','u'),(74,'kpi2','m','u'),(75,'kpi3','m','u'),(76,'kpi4','m','u'),(77,'kpi5','m','u'),(78,'kpi6','m','u'),(79,'kpi7','m','u'),(80,'kpi8','m','u'),(81,'kpi9','m','u'),(82,'kpi10','m','u'),(83,'massa1','m','unit1'),(84,'massa2','m','unit1');
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
 1 AS `kpi_name`,
 1 AS `Period`,
 1 AS `kpiunit`,
 1 AS `metric_name`,
 1 AS `province_id`,
 1 AS `metricunit`,
 1 AS `duedate`*/;
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
  `metricunit` varchar(45) DEFAULT NULL,
  `duedate` int(11) DEFAULT NULL,
  PRIMARY KEY (`metric_id`),
  UNIQUE KEY `MetricName_UNIQUE` (`metric_name`),
  KEY `province_id_idx` (`province_id`),
  CONSTRAINT `province_id` FOREIGN KEY (`province_id`) REFERENCES `province` (`province_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1180 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metric`
--

LOCK TABLES `metric` WRITE;
/*!40000 ALTER TABLE `metric` DISABLE KEYS */;
INSERT INTO `metric` VALUES (1077,'metric1',10,50,1,'u',11),(1078,'metric2',10,50,1,'u',1),(1079,'metric3',10,50,1,'u',1),(1080,'metric4',10,50,1,'u',1),(1081,'metric5',10,50,1,'u',1),(1082,'metric6',10,50,1,'u',1),(1083,'metric7',10,50,1,'u',1),(1084,'metric8',10,50,1,'u',1),(1085,'metric9',10,50,1,'u',1),(1086,'metric10',10,50,1,'u',1),(1087,'metric11',10,50,1,'uu',1),(1088,'metric12',10,50,1,'u',1),(1089,'metric13',10,50,1,'u',1),(1090,'metric14',10,50,1,'uu',1),(1091,'metric15',10,50,1,'u',1),(1092,'metric16',10,50,1,'uu',1),(1093,'metric17',10,50,1,'u',1),(1094,'metric18',10,50,1,'u',1),(1095,'metric19',10,50,1,'u',1),(1096,'metric20',10,50,1,'u',1),(1097,'metric21',10,50,1,'u',1),(1098,'metric22',10,50,1,'u',1),(1099,'metric23',10,50,1,'u',1),(1100,'metric24',10,50,1,'u',1),(1101,'metric25',10,50,1,'u',1),(1102,'metric26',10,50,1,'u',1),(1103,'metric27',10,50,1,'u',1),(1104,'metric28',10,50,1,'u',1),(1105,'metric29',10,50,1,'u',1),(1106,'metric30',10,50,1,'u',1),(1107,'metric31',10,50,1,'u',1),(1108,'metric32',10,50,1,'u',1),(1109,'metric33',10,50,2,'u',1),(1110,'metric34',10,50,1,'u',1),(1111,'metric35',10,50,1,'u',1),(1112,'metric36',10,50,1,'u',1),(1113,'metric37',10,50,11,'u',1),(1114,'metric38',10,50,6,'u',1),(1115,'metric39',10,50,1,'u',1),(1116,'metric40',10,50,11,'u',1),(1117,'metric41',10,50,1,'u',1),(1118,'metric42',10,50,1,'u',1),(1119,'metric43',10,50,1,'u',1),(1120,'metric44',10,50,2,'u',1),(1121,'metric45',10,50,1,'u',1),(1122,'metric46',10,50,1,'u',1),(1123,'metric47',10,50,1,'u',1),(1124,'metric48',10,50,6,'u',1),(1125,'metric49',10,50,1,'u',1),(1126,'metric50',10,50,11,'u',1),(1127,'metric51',10,50,1,'u',1),(1128,'metric52',10,50,1,'u',1),(1129,'metric53',10,50,2,'u',1),(1130,'metric54',10,50,2,'u',1),(1131,'metric55',10,50,5,'u',1),(1132,'metric56',10,50,5,'u',1),(1133,'metric57',10,50,6,'u',1),(1134,'metric58',10,50,6,'u',1),(1135,'metric59',10,50,11,'u',1),(1136,'metric60',10,50,11,'u',1),(1137,'metric61',10,50,1,'u',1),(1138,'metric62',10,50,1,'u',1),(1139,'metric63',10,50,2,'u',1),(1140,'metric64',10,50,2,'u',1),(1141,'metric65',10,50,5,'u',1),(1142,'metric66',10,50,5,'u',1),(1143,'metric67',10,50,6,'u',1),(1144,'metric68',10,50,6,'u',1),(1145,'metric69',10,50,11,'u',1),(1146,'metric70',10,50,11,'u',1),(1147,'metric71',10,50,1,'u',1),(1148,'metric72',10,50,1,'u',1),(1149,'metric73',10,50,2,'u',1),(1150,'metric74',10,50,2,'u',1),(1151,'metric75',10,50,5,'u',1),(1152,'metric76',10,50,5,'u',1),(1153,'metric77',10,50,6,'u',1),(1154,'metric78',10,50,6,'u',1),(1155,'metric79',10,50,11,'u',1),(1156,'metric80',10,50,11,'u',1),(1157,'metric81',10,50,1,'u',1),(1158,'metric82',10,50,1,'u',1),(1159,'metric83',10,50,2,'u',1),(1160,'metric84',10,50,2,'u',1),(1161,'metric85',10,50,5,'u',1),(1162,'metric86',10,50,5,'u',1),(1163,'metric87',10,50,6,'u',1),(1164,'metric88',10,50,6,'u',1),(1165,'metric89',10,50,11,'u',1),(1166,'metric90',10,50,11,'u',1),(1167,'metric91',10,50,1,'u',1),(1168,'metric92',10,50,1,'u',1),(1169,'metric93',10,50,2,'u',1),(1170,'metric94',10,50,2,'u',1),(1171,'metric95',10,50,5,'u',1),(1172,'metric96',10,50,5,'u',1),(1173,'metric97',10,50,6,'u',1),(1174,'metric98',10,50,6,'u',1),(1175,'metric99',10,50,11,'u',1),(1176,'metric100',10,50,11,'u',1),(1177,'massi1',10,80,7,'u',2),(1178,'massi2',10,80,13,'unit2',2),(1179,'massi3',10,80,6,'unit2',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'corp','hasitha lakmal','0756780065','ghasithalakmal@gmail.com','Software engineer','7f925009f939957bc054f274416b1e6b',0,'com',13),(2,'admin','hasitha lakmal','0756780065','ghasithalakmal@gmail.com','Software engineer','60100dc6f2f27f9c58844b6e5b94356f',0,'adm',14),(3,'nizar','Mohamed Nizar','0756473411','nizarucsc@gmail.com','Software Engineer','e11cb48408d67a743d7f68a9be9de06f',0,'adm',8);
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
/*!50003 DROP PROCEDURE IF EXISTS `notifiedKPI_MetricList_New` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `notifiedKPI_MetricList_New`(
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
		select * from kpi_metric where province_id = provinceid and (Period = 'm'  ) ;
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
kpi_name1 varchar(100),
metric_name1 varchar(100),
user_id1 varchar(45),
data_date1 date,
value1 float
)
BEGIN
declare uploaddate timestamp;
declare metricid int;
declare kpiid int;
declare olddatavalue float;
declare minval float;
declare maxval float;
declare dataidofold int;
declare resultado int;
declare reason varchar(100);
declare flag boolean;
set uploaddate = now();
set flag = false;

set kpiid =(select kpi_id from kpi where kpi_name = kpi_name1);

set metricid = (select metric_id from metric where metric_name = metric_name1);

if exists (select metric_id from has_kpi where kpi_id=kpiid and metric_id=metricid) then 

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
else 
	set reason = 'kpi metric mapping is incorrect';
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
provincename varchar(45),
kpiunit1 varchar(45),
metricunit1 varchar(45),
metricduedate1 int
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
		update kpi set Period = timeperiod, kpiunit = kpiunit1 where kpi_id=kpiid;
		#if metric is exist
		if exists (select metric_id from metric where metric_name=metricname) then
			set metricid=(select metric_id from metric where metric_name=metricname);
			update metric set min_value=minval,max_value= maxval,province_id=proid,metricunit=metricunit1,duedate=metricduedate1 where metric_id=metricid;
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
			insert into metric(metric_name,min_value,max_value,province_id,metricunit,duedate) values(metricname,minval,maxval,proid,metricunit1,metricduedate1);
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
		insert into kpi(kpi_name,Period,kpiunit) values(Kpiname,timeperiod,kpiunit1);
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
			insert into metric(metric_name,min_value,max_value,province_id,metricunit,duedate) values(metricname,minval,maxval,proid,metricunit1,metricduedate1);
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
/*!50001 VIEW `kpi_metric` AS select `kpi`.`kpi_name` AS `kpi_name`,`kpi`.`Period` AS `Period`,`kpi`.`kpiunit` AS `kpiunit`,`metric`.`metric_name` AS `metric_name`,`metric`.`province_id` AS `province_id`,`metric`.`metricunit` AS `metricunit`,`metric`.`duedate` AS `duedate` from ((`kpi` left join `has_kpi` on((`kpi`.`kpi_id` = `has_kpi`.`kpi_id`))) left join `metric` on((`has_kpi`.`metric_id` = `metric`.`metric_id`))) */;
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

-- Dump completed on 2015-12-21 16:11:39
