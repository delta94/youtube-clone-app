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
-- Table structure for table `accinfo`
--

DROP TABLE IF EXISTS `accinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accinfo` (
  `Ten` varchar(50) NOT NULL,
  `GT` varchar(10) NOT NULL,
  `Ngay_sinh` date NOT NULL,
  `CMND` varchar(20) NOT NULL,
  `ID` varchar(10) NOT NULL,
  PRIMARY KEY (`Ten`,`ID`),
  KEY `ID` (`ID`),
  KEY `search_by_CMND` (`CMND`) USING BTREE,
  CONSTRAINT `accinfo_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `tai_khoan` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accinfo`
--

LOCK TABLES `accinfo` WRITE;
/*!40000 ALTER TABLE `accinfo` DISABLE KEYS */;
INSERT INTO `accinfo` VALUES ('Bui Tien Dung','Nam','1967-04-30','303438111','8'),('Dang Phu Trung Tin','Nam','1998-01-30','352446781','0'),('Dang Phu Trung Tin','Nam','1998-01-08','352446781','1'),('Di Khanh','Nam','2017-11-27','343450055','15'),('Ema KaWa','Nu','1977-03-11','UK-01233323','10'),('Lai Van Sam','Nam','1975-04-30','303438001','7'),('Mai Thanh','Nu','2016-09-30','123456789','13'),('Nguyen Van Tien','Nam','1998-02-15','152438011','5'),('Nhat Ha','Nu','2014-07-23','343455623','16'),('Peter Kimer','Nam','1947-04-11','NA-01233323','9'),('Than Duc Tai','Nam','1998-02-20','152438499','3'),('Tran Ngoc Son','Nam','1990-02-03','357347834','6'),('Tran Ngoc Tin','Nam','1998-02-11','152438000','4'),('Tran Pi To','Nam','1998-08-03','352438491','2'),('Trinh The An','Nam','2016-09-16','351446782','11'),('Van An','Nu','2017-01-15','123450089','14'),('Vo Thanh','Nam','2015-04-13','287347834','12');
/*!40000 ALTER TABLE `accinfo` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger change_name_author after update on accinfo
for each row
begin
    declare is_author int;
    select Phan_loai into is_author from tai_khoan where tai_khoan.ID=OLD.ID; 
    if is_author=1 then
    update bai_viet set Ten_tac_gia = new.Ten where Ten_tac_gia = OLD.Ten;
    end if;
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

-- Dump completed on 2018-05-13 23:00:25
