-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: news
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `thich_bv`
--

DROP TABLE IF EXISTS `thich_bv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thich_bv` (
  `ID` varchar(10) NOT NULL,
  `ID_BV` varchar(10) NOT NULL,
  `ID_TT` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`,`ID_BV`,`ID_TT`),
  KEY `ID_BV` (`ID_BV`,`ID_TT`),
  CONSTRAINT `thich_bv_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `tai_khoan` (`ID`),
  CONSTRAINT `thich_bv_ibfk_2` FOREIGN KEY (`ID_BV`, `ID_TT`) REFERENCES `bai_viet` (`ID_BV`, `ID_TT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thich_bv`
--

LOCK TABLES `thich_bv` WRITE;
/*!40000 ALTER TABLE `thich_bv` DISABLE KEYS */;
INSERT INTO `thich_bv` VALUES ('11','bv001','cd006'),('9','bv001','cd006'),('11','bv002','cd006'),('3','bv002','cd006'),('11','bv003','cd006'),('5','bv004','cd007'),('8','bv007','cd008'),('9','bv008','cd008'),('11','bv011','cd009'),('1','bv012','cd009'),('9','bv012','cd009'),('11','bv013','cd010'),('9','bv013','cd010'),('8','bv016','cd011'),('8','bv017','cd011'),('1','bv018','cd011'),('5','bv019','cd012'),('11','bv021','cd012'),('5','bv021','cd012'),('5','bv023','cd013'),('8','bv023','cd013'),('9','bv023','cd013');
/*!40000 ALTER TABLE `thich_bv` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger increase_luotquantam before insert on thich_bv
for each row
begin
update bai_viet set Luot_quan_tam=Luot_quan_tam +1
where
	ID_TT=NEW.ID_TT
and
	ID_BV=NEW.ID_BV;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger decrease_luotquantam after delete on thich_bv
for each row
begin
update bai_viet set Luot_quan_tam=Luot_quan_tam -1
where
	ID_TT=old.ID_TT
and
	ID_BV=old.ID_BV;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-13 23:00:29
