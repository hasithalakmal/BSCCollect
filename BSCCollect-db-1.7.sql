CREATE DATABASE  IF NOT EXISTS `bsccollect` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bsccollect`;


DROP TABLE IF EXISTS `bscconnect_view`;

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;



LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
INSERT INTO `data` VALUES (5,568,'adm1','2015-11-30','2015-10-12 09:14:27',67,'current'),(6,568,'adm1','2015-12-31','2015-10-12 09:14:27',32,'current'),(7,569,'adm1','2015-11-30','2015-10-12 09:14:27',98,'current'),(8,569,'adm1','2015-12-31','2015-10-12 09:14:27',67,'current'),(9,570,'adm1','2015-11-30','2015-10-12 09:14:27',34,'current'),(10,570,'adm1','2015-12-31','2015-10-12 09:14:27',78,'current'),(11,571,'adm1','2015-11-30','2015-10-12 09:14:27',56,'current'),(12,571,'adm1','2015-12-31','2015-10-12 09:14:28',89,'current');
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
INSERT INTO `has_kpi` VALUES (17,562),(17,563),(17,564),(18,565),(18,566),(19,567),(20,567),(20,568),(20,569),(20,570),(20,571);
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
  PRIMARY KEY (`kpi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpi`
--

LOCK TABLES `kpi` WRITE;
/*!40000 ALTER TABLE `kpi` DISABLE KEYS */;
INSERT INTO `kpi` VALUES (17,'kpi1'),(18,'kpi2'),(19,'kpi3'),(20,'kpi4');
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
) ENGINE=InnoDB AUTO_INCREMENT=572 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metric`
--

LOCK TABLES `metric` WRITE;
/*!40000 ALTER TABLE `metric` DISABLE KEYS */;
INSERT INTO `metric` VALUES (562,'data1',0,100,1),(563,'data2',0,100,1),(564,'data3',0,100,1),(565,'data4',0,100,1),(566,'data5',0,100,1),(567,'data10',0,100,1),(568,'data6',0,100,1),(569,'data7',0,100,1),(570,'data8',0,100,1),(571,'data9',0,100,1);
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
maxval float
)
BEGIN
declare kpiid int;
declare metricid int;
declare response varchar(45);
#if KPI is exist
if exists (select kpi_id from kpi where kpi_name=Kpiname) then
	set kpiid=(select kpi_id from kpi where kpi_name=Kpiname);
    #if metric is exist
	if exists (select metric_id from metric where metric_name=metricname) then
		set metricid=(select metric_id from metric where metric_name=metricname);
        update metric set min_value=minval,max_value= maxval where metric_id=metricid;
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
		insert into metric(metric_name,min_value,max_value,province_id) values(metricname,minval,maxval,1);
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
	insert into kpi(kpi_name) values(Kpiname);
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
		insert into metric(metric_name,min_value,max_value,province_id) values(metricname,minval,maxval,1);
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

-- Dump completed on 2015-10-12 15:38:10
