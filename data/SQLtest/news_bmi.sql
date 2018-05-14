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
-- Table structure for table `bmi`
--

DROP TABLE IF EXISTS `bmi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bmi` (
  `Lan_do` int(11) NOT NULL,
  `Tgian_do` date NOT NULL,
  `Ghi_chu` varchar(100) NOT NULL,
  `Chi_so` int(11) NOT NULL,
  `ID` varchar(10) NOT NULL,
  `STT` int(11) NOT NULL,
  PRIMARY KEY (`Lan_do`,`ID`,`STT`),
  KEY `ID` (`ID`,`STT`),
  CONSTRAINT `bmi_ibfk_1` FOREIGN KEY (`ID`, `STT`) REFERENCES `thanh_vien_gia_dinh` (`ID`, `STT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bmi`
--

LOCK TABLES `bmi` WRITE;
/*!40000 ALTER TABLE `bmi` DISABLE KEYS */;
INSERT INTO `bmi` VALUES (0,'2014-05-27','Khoe manh nhung hoi gay',1,'10',1),(0,'2018-01-26','Khoe manh',5,'3',0),(0,'2015-10-04','Khoe manh',9,'3',3),(0,'2016-04-30','Khoe manh nhung dep trai',10,'4',1),(0,'2013-04-13','Khoe manh nhung dep trai',10,'4',4),(0,'2017-09-22','Khoe manh nhung dep trai',10,'4',7),(0,'2014-10-03','Khoe manh nhung dep trai',10,'4',10),(0,'2017-01-19','khoe manh cao lon',8,'6',2),(0,'2014-05-03','Khoe manh nhung dep trai',10,'8',1),(0,'2013-02-14','de thuong va dam dang',10,'9',0);
/*!40000 ALTER TABLE `bmi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-13 23:00:21
