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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
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
INSERT INTO `has_kpi` VALUES (85,1272),(85,1273),(85,1274),(85,1275),(85,1276),(85,1277),(85,1278),(85,1279),(85,1280),(85,1281),(85,1282),(85,1283),(85,1284),(85,1285),(85,1286),(85,1287),(85,1288),(85,1289),(85,1290),(85,1291),(85,1292),(85,1293),(85,1294),(85,1295),(85,1296),(85,1297),(85,1298),(85,1299),(85,1300),(85,1301),(86,1302),(86,1303),(86,1304),(86,1305),(86,1306),(86,1307),(86,1308),(86,1309),(86,1310),(86,1311),(86,1312),(86,1313),(86,1314),(86,1315),(86,1316),(86,1317),(86,1318),(86,1319),(87,1320),(87,1321),(87,1322),(87,1323),(87,1324),(87,1325),(87,1326),(87,1327),(87,1328),(87,1329),(87,1330),(87,1331),(87,1332),(87,1333),(87,1334),(87,1335),(87,1336),(87,1337),(87,1338),(87,1339),(87,1340),(87,1341),(87,1342),(87,1343),(88,1344),(88,1345),(88,1346),(88,1347),(88,1348),(88,1349),(88,1350),(88,1351),(88,1352),(88,1353),(88,1354),(88,1355),(88,1356),(88,1357),(88,1358),(88,1359),(88,1360),(88,1361),(88,1362),(88,1363),(88,1364),(88,1365),(88,1366),(88,1367),(89,1368),(89,1369),(89,1370),(89,1371),(89,1372),(89,1373),(89,1374),(89,1375),(89,1376),(89,1377),(89,1378),(89,1379),(89,1380),(89,1381),(89,1382),(89,1383),(89,1384),(89,1385),(89,1386),(89,1387),(89,1388),(89,1389),(89,1390),(89,1391),(90,1392),(90,1393),(90,1394),(90,1395),(90,1396),(90,1397),(90,1398),(90,1399),(90,1400),(90,1401),(90,1402),(90,1403),(90,1404),(90,1405),(90,1406),(90,1407),(90,1408),(90,1409),(90,1410),(90,1411),(90,1412),(90,1413),(90,1414),(90,1415),(91,1416),(91,1417),(91,1418),(91,1419),(91,1420),(91,1421),(91,1422),(91,1423),(91,1424),(91,1425),(91,1426),(91,1427),(91,1428),(91,1429),(91,1430),(91,1431),(91,1432),(91,1433),(91,1434),(91,1435),(91,1436),(91,1437),(91,1438),(91,1439),(92,1440),(92,1441),(92,1442),(92,1443),(92,1444),(92,1445),(92,1446),(92,1447),(92,1448),(92,1449),(92,1450),(92,1451),(92,1452),(92,1453),(92,1454),(92,1455),(92,1456),(92,1457),(92,1458),(92,1459),(92,1460),(92,1461),(92,1462),(92,1463);
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpi`
--

LOCK TABLES `kpi` WRITE;
/*!40000 ALTER TABLE `kpi` DISABLE KEYS */;
INSERT INTO `kpi` VALUES (85,'kpi1','a','unit1'),(86,'kpi2','a','unit1'),(87,'kpi3','b','unit1'),(88,'kpi4','q','unit1'),(89,'kpi5','a','unit1'),(90,'kpi6','m','unit1'),(91,'kpi7','b','unit1'),(92,'kpi8','q','unit1');
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
 1 AS `province_name`,
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
) ENGINE=InnoDB AUTO_INCREMENT=1464 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metric`
--

LOCK TABLES `metric` WRITE;
/*!40000 ALTER TABLE `metric` DISABLE KEYS */;
INSERT INTO `metric` VALUES (1272,'metric1',10,50,7,'unit2',2),(1273,'metric2',10,50,7,'unit2',2),(1274,'metric3',10,50,1,'unit2',2),(1275,'metric4',10,50,1,'unit2',2),(1276,'metric5',10,50,6,'unit2',2),(1277,'metric6',10,50,6,'unit2',2),(1278,'metric7',10,50,11,'unit2',2),(1279,'metric8',10,50,11,'unit2',2),(1280,'metric9',10,50,2,'unit2',2),(1281,'metric10',10,50,2,'unit2',2),(1282,'metric11',10,50,3,'unit2',2),(1283,'metric12',10,50,3,'unit2',2),(1284,'metric13',10,50,9,'unit2',2),(1285,'metric14',10,50,9,'unit2',2),(1286,'metric15',10,50,10,'unit2',2),(1287,'metric16',10,50,10,'unit2',2),(1288,'metric17',10,50,8,'unit2',2),(1289,'metric18',10,50,8,'unit2',2),(1290,'metric19',10,50,5,'unit2',2),(1291,'metric20',10,50,5,'unit2',2),(1292,'metric21',10,50,12,'unit2',2),(1293,'metric22',10,50,12,'unit2',2),(1294,'metric23',10,50,4,'unit2',2),(1295,'metric24',10,50,4,'unit2',2),(1296,'metric25',10,50,7,'unit2',2),(1297,'metric26',10,50,7,'unit2',2),(1298,'metric27',10,50,1,'unit2',2),(1299,'metric28',10,50,1,'unit2',2),(1300,'metric29',10,50,6,'unit2',2),(1301,'metric30',10,50,6,'unit2',2),(1302,'metric31',10,50,11,'unit2',2),(1303,'metric32',10,50,11,'unit2',2),(1304,'metric33',10,50,2,'unit2',2),(1305,'metric34',10,50,2,'unit2',2),(1306,'metric35',10,50,3,'unit2',2),(1307,'metric36',10,50,3,'unit2',2),(1308,'metric37',10,50,9,'unit2',2),(1309,'metric38',10,50,9,'unit2',2),(1310,'metric39',10,50,10,'unit2',2),(1311,'metric40',10,50,10,'unit2',2),(1312,'metric41',10,50,8,'unit2',2),(1313,'metric42',10,50,8,'unit2',2),(1314,'metric43',10,50,5,'unit2',2),(1315,'metric44',10,50,5,'unit2',2),(1316,'metric45',10,50,12,'unit2',2),(1317,'metric46',10,50,12,'unit2',2),(1318,'metric47',10,50,4,'unit2',2),(1319,'metric48',10,50,4,'unit2',2),(1320,'metric49',10,50,7,'unit2',2),(1321,'metric50',10,50,7,'unit2',2),(1322,'metric51',10,50,1,'unit2',2),(1323,'metric52',10,50,1,'unit2',2),(1324,'metric53',10,50,6,'unit2',2),(1325,'metric54',10,50,6,'unit2',2),(1326,'metric55',10,50,11,'unit2',2),(1327,'metric56',10,50,11,'unit2',2),(1328,'metric57',10,50,2,'unit2',2),(1329,'metric58',10,50,2,'unit2',2),(1330,'metric59',10,50,3,'unit2',2),(1331,'metric60',10,50,3,'unit2',2),(1332,'metric61',10,50,9,'unit2',2),(1333,'metric62',10,50,9,'unit2',2),(1334,'metric63',10,50,10,'unit2',2),(1335,'metric64',10,50,10,'unit2',2),(1336,'metric65',10,50,8,'unit2',2),(1337,'metric66',10,50,8,'unit2',2),(1338,'metric67',10,50,5,'unit2',2),(1339,'metric68',10,50,5,'unit2',2),(1340,'metric69',10,50,12,'unit2',2),(1341,'metric70',10,50,12,'unit2',2),(1342,'metric71',10,50,4,'unit2',2),(1343,'metric72',10,50,4,'unit2',2),(1344,'metric73',10,50,7,'unit2',2),(1345,'metric74',10,50,7,'unit2',2),(1346,'metric75',10,50,1,'unit2',2),(1347,'metric76',10,50,1,'unit2',2),(1348,'metric77',10,50,6,'unit2',2),(1349,'metric78',10,50,6,'unit2',2),(1350,'metric79',10,50,11,'unit2',2),(1351,'metric80',10,50,11,'unit2',2),(1352,'metric81',10,50,2,'unit2',2),(1353,'metric82',10,50,2,'unit2',2),(1354,'metric83',10,50,3,'unit2',2),(1355,'metric84',10,50,3,'unit2',2),(1356,'metric85',10,50,9,'unit2',2),(1357,'metric86',10,50,9,'unit2',2),(1358,'metric87',10,50,10,'unit2',2),(1359,'metric88',10,50,10,'unit2',2),(1360,'metric89',10,50,8,'unit2',2),(1361,'metric90',10,50,8,'unit2',2),(1362,'metric91',10,50,5,'unit2',2),(1363,'metric92',10,50,5,'unit2',2),(1364,'metric93',10,50,12,'unit2',2),(1365,'metric94',10,50,12,'unit2',2),(1366,'metric95',10,50,4,'unit2',2),(1367,'metric96',10,50,4,'unit2',2),(1368,'metric97',10,50,7,'unit2',2),(1369,'metric98',10,50,7,'unit2',2),(1370,'metric99',10,50,1,'unit2',2),(1371,'metric100',10,50,1,'unit2',2),(1372,'metric101',10,50,6,'unit2',2),(1373,'metric102',10,50,6,'unit2',2),(1374,'metric103',10,50,11,'unit2',2),(1375,'metric104',10,50,11,'unit2',2),(1376,'metric105',10,50,2,'unit2',2),(1377,'metric106',10,50,2,'unit2',2),(1378,'metric107',10,50,3,'unit2',2),(1379,'metric108',10,50,3,'unit2',2),(1380,'metric109',10,50,9,'unit2',2),(1381,'metric110',10,50,9,'unit2',2),(1382,'metric111',10,50,10,'unit2',2),(1383,'metric112',10,50,10,'unit2',2),(1384,'metric113',10,50,8,'unit2',2),(1385,'metric114',10,50,8,'unit2',2),(1386,'metric115',10,50,5,'unit2',2),(1387,'metric116',10,50,5,'unit2',2),(1388,'metric117',10,50,12,'unit2',2),(1389,'metric118',10,50,12,'unit2',2),(1390,'metric119',10,50,4,'unit2',2),(1391,'metric120',10,50,4,'unit2',2),(1392,'metric121',10,50,7,'unit2',2),(1393,'metric122',10,50,7,'unit2',2),(1394,'metric123',10,50,1,'unit2',2),(1395,'metric124',10,50,1,'unit2',2),(1396,'metric125',10,50,6,'unit2',2),(1397,'metric126',10,50,6,'unit2',2),(1398,'metric127',10,50,11,'unit2',2),(1399,'metric128',10,50,11,'unit2',2),(1400,'metric129',10,50,2,'unit2',2),(1401,'metric130',10,50,2,'unit2',2),(1402,'metric131',10,50,3,'unit2',2),(1403,'metric132',10,50,3,'unit2',2),(1404,'metric133',10,50,9,'unit2',2),(1405,'metric134',10,50,9,'unit2',2),(1406,'metric135',10,50,10,'unit2',2),(1407,'metric136',10,50,10,'unit2',2),(1408,'metric137',10,50,8,'unit2',2),(1409,'metric138',10,50,8,'unit2',2),(1410,'metric139',10,50,5,'unit2',2),(1411,'metric140',10,50,5,'unit2',2),(1412,'metric141',10,50,12,'unit2',2),(1413,'metric142',10,50,12,'unit2',2),(1414,'metric143',10,50,4,'unit2',2),(1415,'metric144',10,50,4,'unit2',2),(1416,'metric145',10,50,7,'unit2',2),(1417,'metric146',10,50,7,'unit2',2),(1418,'metric147',10,50,1,'unit2',2),(1419,'metric148',10,50,1,'unit2',2),(1420,'metric149',10,50,6,'unit2',2),(1421,'metric150',10,50,6,'unit2',2),(1422,'metric151',10,50,11,'unit2',2),(1423,'metric152',10,50,11,'unit2',2),(1424,'metric153',10,50,2,'unit2',2),(1425,'metric154',10,50,2,'unit2',2),(1426,'metric155',10,50,3,'unit2',2),(1427,'metric156',10,50,3,'unit2',2),(1428,'metric157',10,50,9,'unit2',2),(1429,'metric158',10,50,9,'unit2',2),(1430,'metric159',10,50,10,'unit2',2),(1431,'metric160',10,50,10,'unit2',2),(1432,'metric161',10,50,8,'unit2',2),(1433,'metric162',10,50,8,'unit2',2),(1434,'metric163',10,50,5,'unit2',2),(1435,'metric164',10,50,5,'unit2',2),(1436,'metric165',10,50,12,'unit2',2),(1437,'metric166',10,50,12,'unit2',2),(1438,'metric167',10,50,4,'unit2',2),(1439,'metric168',10,50,4,'unit2',2),(1440,'metric169',10,50,7,'unit2',2),(1441,'metric170',10,50,7,'unit2',2),(1442,'metric171',10,50,1,'unit2',2),(1443,'metric172',10,50,1,'unit2',2),(1444,'metric173',10,50,6,'unit2',2),(1445,'metric174',10,50,6,'unit2',2),(1446,'metric175',10,50,11,'unit2',2),(1447,'metric176',10,50,11,'unit2',2),(1448,'metric177',10,50,2,'unit2',2),(1449,'metric178',10,50,2,'unit2',2),(1450,'metric179',10,50,3,'unit2',2),(1451,'metric180',10,50,3,'unit2',2),(1452,'metric181',10,50,9,'unit2',2),(1453,'metric182',10,50,9,'unit2',2),(1454,'metric183',10,50,10,'unit2',2),(1455,'metric184',10,50,10,'unit2',2),(1456,'metric185',10,50,8,'unit2',2),(1457,'metric186',10,50,8,'unit2',2),(1458,'metric187',10,50,5,'unit2',2),(1459,'metric188',10,50,5,'unit2',2),(1460,'metric189',10,50,12,'unit2',2),(1461,'metric190',10,50,12,'unit2',2),(1462,'metric191',10,50,4,'unit2',2),(1463,'metric192',10,50,4,'unit2',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'corp','hasitha lakmal','0756780065','ghasithalakmal@gmail.com','Software engineer','7f925009f939957bc054f274416b1e6b',0,'com',13),(2,'admin','hasitha lakmal','0756780065','ghasithalakmal@gmail.com','Software engineer','60100dc6f2f27f9c58844b6e5b94356f',0,'adm',14),(16,'hasitha1','hasithlakmal','0756780065','alokahg@gmail.com','Software engineer','4784fc8ed58f8176f67e05943c93965e',0,'adm',14),(17,'aloka1','alokagnanasekara','079123435','alokahg@gmail.com','Software engineer','a5cb76295b15e513517a11dd4465edd6',0,'com',1),(18,'aloka2','alokagnanasekara','072222222','alokahg@gmail.com','BA','ec185f6ca00e3379302c134cf8543a66',0,'com',2),(19,'aloka3','alokagnanasekara','071111111','alokahg@yahoo.com','Software engineer','f3ff1a93d2131ef6f39b20cd3293855a',0,'com',3),(20,'aloka4','alokagnanasekara','071111111','alokahg@yahoo.com','QA','dbce3d132dbbc96e5331a21373787006',0,'com',4),(21,'aloka5','anuradhani','071111111','alokahg@gmail.com','business analysis','3a238a8b0e221692301c2e2afebc9c53',0,'com',5),(22,'aloka6','priyanka','071111111','alokahg@gmail.com','Quality Assuarance','4a233199801c6bb7cd475187fe27cef3',0,'com',6),(23,'aloka7','priyankakumari','071111111','alokahg@gmail.com','Software engineer','bc28d4666d50d320571cfa1c6f0df422',0,'adm',7),(24,'aloka8','nilakshi','071111111','alokahg@gmail.com','Software engineer','e4f3d0afe972f6e739e4cd31689da4e9',0,'adm',8),(25,'aloka9','alokagnanasekara','071111111','alokahg@gmail.com','BA','a9cdc25e483a3a44adc9131b3c132fb1',0,'com',10),(26,'aloka10','alokagnanasekara','071111111','alokahg@gmail.com','Software engineer','85acb3ce215119c414169791bb7f1923',1,'com',9),(27,'aloka11','alokagnanasekara','071111111','alokahg@gmail.com','QA','b51568fcb2f1892a8a5b77fa6ce05ef2',0,'com',11),(28,'aloka12','alokagnanasekara','071111111','alokahg@gmail.com','Software engineer','939a7312504c3b0d4edbbb862b4c905b',0,'com',12);
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
/*!50003 DROP PROCEDURE IF EXISTS `getuserByProvince` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getuserByProvince`(
provincename varchar(45)
)
BEGIN
	declare proid int;
	if exists (select * from province where province_name= provincename) then 
		set proid = (select province_id from province where province_name= provincename);
		select * from user where  province_id= proid;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
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
		select * from kpi_metric where province_id = provinceid and (Period = 'm' or Period = 'q' ) ;
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
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
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
/*!50001 VIEW `kpi_metric` AS select `kpi`.`kpi_name` AS `kpi_name`,`kpi`.`Period` AS `Period`,`kpi`.`kpiunit` AS `kpiunit`,`metric`.`metric_name` AS `metric_name`,`province`.`province_id` AS `province_id`,`province`.`province_name` AS `province_name`,`metric`.`metricunit` AS `metricunit`,`metric`.`duedate` AS `duedate` from (((`kpi` left join `has_kpi` on((`kpi`.`kpi_id` = `has_kpi`.`kpi_id`))) left join `metric` on((`has_kpi`.`metric_id` = `metric`.`metric_id`))) left join `province` on((`metric`.`province_id` = `province`.`province_id`))) */;
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

-- Dump completed on 2016-01-04 10:38:11
