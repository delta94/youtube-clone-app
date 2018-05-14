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
-- Table structure for table `thanh_vien_gia_dinh`
--

DROP TABLE IF EXISTS `thanh_vien_gia_dinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thanh_vien_gia_dinh` (
  `STT` int(11) NOT NULL,
  `Ngay_sinh` date NOT NULL,
  `Ten` varchar(100) NOT NULL,
  `Moi_qhe` varchar(100) NOT NULL,
  `Gioi_tinh` varchar(10) NOT NULL,
  `ID` varchar(10) NOT NULL,
  PRIMARY KEY (`STT`,`ID`),
  KEY `ID` (`ID`),
  CONSTRAINT `thanh_vien_gia_dinh_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `tai_khoan` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thanh_vien_gia_dinh`
--

LOCK TABLES `thanh_vien_gia_dinh` WRITE;
/*!40000 ALTER TABLE `thanh_vien_gia_dinh` DISABLE KEYS */;
INSERT INTO `thanh_vien_gia_dinh` VALUES (0,'2017-05-14','JackieJack','Con','Nam','10'),(0,'2014-07-03','Trung Kien','Con','Nam','3'),(0,'2013-10-30','Ly Be','Em','Nam','4'),(0,'2016-06-05','Cu Bin','con','Nam','6'),(0,'2014-03-25','tiendungem','Em','Nam','8'),(0,'2013-10-30','Ha My','Em','Nu','9'),(1,'2014-05-29','JackieJack','Con','Nam','10'),(1,'2014-03-24','Trung Kien','Con','Nam','3'),(1,'2017-03-24','Ly Be','Em','Nam','4'),(1,'2015-02-02','Van Ta','con','Nam','6'),(1,'2016-02-01','tiendungem','Em','Nam','8'),(1,'2013-11-12','Ha My','Em','Nu','9'),(2,'2016-08-18','JackieJack','Con','Nam','10'),(2,'2017-09-15','My Duyen','Con','Nu','3'),(2,'2016-07-01','Ly Be','Em','Nam','4'),(2,'2013-02-08','Van Ta','con','Nam','6'),(2,'2015-12-30','tiendungem','Em','Nam','8'),(2,'2014-11-11','Ha My','Em','Nu','9'),(3,'2013-01-11','My Hanh','Me','Nu','3'),(3,'2014-11-23','Ly Be Sau','Em','Nam','4'),(4,'2013-11-19','Ly Be Sau','Em','Nam','4'),(5,'2014-06-20','Ly Be Sau','Em','Nam','4'),(6,'2017-06-20','Ly Be Sau Tren','Em','Nam','4'),(7,'2013-06-11','Ly Be Sau Tren','Em','Nam','4'),(8,'2016-01-31','Ly Be Sau Tren','Em','Nam','4'),(9,'2013-04-22','Ly Duc','Em','Nam','4'),(10,'2016-04-20','Ly Duc','Em','Nam','4'),(11,'2013-04-20','Ly Duc','Em','Nam','4');
/*!40000 ALTER TABLE `thanh_vien_gia_dinh` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-13 23:00:26
