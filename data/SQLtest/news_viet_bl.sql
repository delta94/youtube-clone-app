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
-- Table structure for table `viet_bl`
--

DROP TABLE IF EXISTS `viet_bl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viet_bl` (
  `ID` varchar(10) NOT NULL,
  `ID_BL` varchar(10) NOT NULL,
  `ID_TT` varchar(10) NOT NULL,
  `ID_BV` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`,`ID_BL`,`ID_TT`,`ID_BV`),
  KEY `ID_BL` (`ID_BL`,`ID_TT`,`ID_BV`),
  CONSTRAINT `viet_bl_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `tai_khoan` (`ID`),
  CONSTRAINT `viet_bl_ibfk_2` FOREIGN KEY (`ID_BL`, `ID_TT`, `ID_BV`) REFERENCES `binh_luan` (`ID_BL`, `ID_TT`, `ID_BV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viet_bl`
--

LOCK TABLES `viet_bl` WRITE;
/*!40000 ALTER TABLE `viet_bl` DISABLE KEYS */;
INSERT INTO `viet_bl` VALUES ('5','0','cd006','bv003'),('5','0','cd007','bv004'),('5','0','cd007','bv005'),('5','0','cd007','bv006'),('5','0','cd008','bv007'),('5','0','cd008','bv009'),('11','0','cd009','bv011'),('9','0','cd010','bv013'),('9','0','cd010','bv014'),('9','0','cd010','bv015'),('8','0','cd011','bv016'),('8','0','cd011','bv017'),('3','0','cd011','bv018'),('5','0','cd012','bv019'),('5','0','cd013','bv023'),('5','0','cd013','bv024'),('3','1','cd006','bv003'),('5','1','cd007','bv006'),('11','1','cd009','bv011'),('9','1','cd012','bv019'),('11','2','cd009','bv011'),('9','2','cd012','bv019'),('3','3','cd012','bv019'),('1','4','cd012','bv019');
/*!40000 ALTER TABLE `viet_bl` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger increase_soluongbinhluan after insert on viet_bl
for each row
begin
update tai_khoan set So_luot_binh_luan=So_luot_binh_luan+1 where ID=new.ID;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger decrease_soluongbinhluan after delete on viet_bl
for each row
begin
update tai_khoan set So_luot_binh_luan=So_luot_binh_luan-1 where ID=old.ID;
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

-- Dump completed on 2018-05-13 23:00:38
