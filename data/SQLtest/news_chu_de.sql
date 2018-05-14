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
-- Table structure for table `chu_de`
--

DROP TABLE IF EXISTS `chu_de`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chu_de` (
  `ID_TT` varchar(10) NOT NULL,
  `Ten_CD` varchar(100) NOT NULL,
  `Ngon_ngu` varchar(100) NOT NULL,
  `ID_TT_cha` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID_TT`),
  KEY `ID_TT_cha` (`ID_TT_cha`),
  CONSTRAINT `chu_de_ibfk_1` FOREIGN KEY (`ID_TT_cha`) REFERENCES `chu_de` (`ID_TT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chu_de`
--

LOCK TABLES `chu_de` WRITE;
/*!40000 ALTER TABLE `chu_de` DISABLE KEYS */;
INSERT INTO `chu_de` VALUES ('cd001','Thoi su','Vietnamese',NULL),('cd002','Kinh doanh','Vietnamese',NULL),('cd003','Giai tri','Vietnamese',NULL),('cd004','The thao','Vietnamese',NULL),('cd005','Phap luat','Vietnamese',NULL),('cd006','Giao thong','Vietnamese','cd001'),('cd007','Nong nghiep sach','Vietnamese','cd001'),('cd008','Doanh nghiep','Vietnamese','cd002'),('cd009','Bat dong san','Vietnamese','cd002'),('cd010','Chung khoan','Vietnamese','cd002'),('cd011','Phim','Vietnamese','cd003'),('cd012','Thoi trang','Vietnamese','cd003'),('cd013','Nhac','Vietnamese','cd003'),('cd014','Bong da','Vietnamese','cd004'),('cd015','Hau truong','Vietnamese','cd004'),('cd016','Tennis','Vietnamese','cd004'),('cd017','Ho so pha an','Vietnamese','cd005');
/*!40000 ALTER TABLE `chu_de` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-13 23:00:24
