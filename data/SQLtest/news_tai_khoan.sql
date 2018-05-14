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
-- Table structure for table `tai_khoan`
--

DROP TABLE IF EXISTS `tai_khoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tai_khoan` (
  `ID` varchar(10) NOT NULL,
  `Trang_thai` int(11) NOT NULL,
  `Ten_dang_nhap` varchar(100) NOT NULL,
  `MK` varchar(100) NOT NULL,
  `Ngay_gia_nhap` date NOT NULL,
  `Link_avatar` varchar(100) DEFAULT NULL,
  `Phan_loai` int(11) NOT NULL,
  `So_luot_binh_luan` int(11) NOT NULL,
  `So_luot_bai_viet_luu` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tai_khoan`
--

LOCK TABLES `tai_khoan` WRITE;
/*!40000 ALTER TABLE `tai_khoan` DISABLE KEYS */;
INSERT INTO `tai_khoan` VALUES ('0',1,'admin','admin','2018-01-30','face',0,0,0),('1',1,'tindang','tindang','2018-02-02','khong co',2,1,4),('10',1,'ema','ema','2018-01-03','',1,0,0),('11',1,'thean','thean','2014-03-04','facebook.com',2,3,6),('12',1,'vothanh','vothanh','2017-06-08','facebook.com',1,0,0),('13',1,'maithanh','maithanh','2015-03-06','yahoo',1,0,0),('14',1,'vanan','vanan','2018-07-07','yahoo',1,0,0),('15',1,'dikhanh','dikhanh','2016-12-04','yahoo',1,0,0),('16',1,'nhatha','nhatha','2017-07-20','yahoo',1,0,0),('2',1,'pito','pito','2018-05-05','',2,0,0),('3',1,'ductai','ductai','2018-06-06','',2,3,1),('4',1,'ngoctin','ngoctin','2018-03-03','',2,0,0),('5',1,'vantien','vantien','2018-01-05','',2,10,4),('6',1,'ngocson','ngocson','2018-03-30','',2,0,0),('7',1,'vansam','vansam','2010-01-01','',1,0,0),('8',1,'tiendung','tiendung','2018-01-01','',2,2,4),('9',1,'peter','peter','2018-01-01','',2,5,5);
/*!40000 ALTER TABLE `tai_khoan` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger auto_create_accinfo after insert on tai_khoan
for each row
begin
    insert into accinfo value ('empty','unknown','0-0-0','0',new.id);
    insert into dia_chi value ('empty','unknown',new.id);
    insert into lien_he value ('unknown','unknown','unknown',new.id);
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
