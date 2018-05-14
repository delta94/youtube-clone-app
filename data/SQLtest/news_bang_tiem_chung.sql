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
-- Table structure for table `bang_tiem_chung`
--

DROP TABLE IF EXISTS `bang_tiem_chung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bang_tiem_chung` (
  `Loai_vacxin` varchar(100) NOT NULL,
  `Tgian_tiem` date NOT NULL,
  `Giai_đoan` varchar(100) NOT NULL,
  `Ghi_chu` varchar(100) NOT NULL,
  `ID` varchar(10) NOT NULL,
  `STT` int(11) NOT NULL,
  PRIMARY KEY (`Loai_vacxin`,`ID`,`STT`),
  KEY `ID` (`ID`,`STT`),
  CONSTRAINT `bang_tiem_chung_ibfk_1` FOREIGN KEY (`ID`, `STT`) REFERENCES `thanh_vien_gia_dinh` (`ID`, `STT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bang_tiem_chung`
--

LOCK TABLES `bang_tiem_chung` WRITE;
/*!40000 ALTER TABLE `bang_tiem_chung` DISABLE KEYS */;
INSERT INTO `bang_tiem_chung` VALUES ('Benh bach cau, ho ga, uon van, bai liet','2017-03-01','1 tuoi','Mui 2','10',2),('Benh bach cau, ho ga, uon van, bai liet','2018-04-19','1 tuoi','Mui 2','3',1),('Benh bach cau, ho ga, uon van, bai liet','2014-01-07','1 tuoi','Mui 2','4',2),('Benh bach cau, ho ga, uon van, bai liet','2017-12-14','1 tuoi','Mui 2','4',5),('Benh bach cau, ho ga, uon van, bai liet','2016-09-23','1 tuoi','Mui 2','4',8),('Benh bach cau, ho ga, uon van, bai liet','2017-11-06','1 tuoi','Mui 2','4',11),('Benh bach cau, ho ga, uon van, bai liet','2018-12-22','1 tuoi','Mui 2','6',1),('Benh bach cau, ho ga, uon van, bai liet','2017-07-18','1 tuoi','Mui 2','8',2),('Benh bach cau, ho ga, uon van, bai liet','2013-10-20','1 tuoi','Mui 2','9',2),('Benh soi, quai bi, Rubella','2017-02-16','15 thang tuoi','Mui duy nhat','10',2),('Benh soi, quai bi, Rubella','2018-05-27','15 thang tuoi','Mui duy nhat','3',1),('Benh soi, quai bi, Rubella','2013-11-09','15 thang tuoi','Mui duy nhat','4',2),('Benh soi, quai bi, Rubella','2018-07-12','15 thang tuoi','Mui duy nhat','4',5),('Benh soi, quai bi, Rubella','2015-08-24','15 thang tuoi','Mui duy nhat','4',8),('Benh soi, quai bi, Rubella','2014-10-22','15 thang tuoi','Mui duy nhat','4',11),('Benh soi, quai bi, Rubella','2016-10-17','15 thang tuoi','Mui duy nhat','6',1),('Benh soi, quai bi, Rubella','2017-12-14','15 thang tuoi','Mui duy nhat','8',2),('Benh soi, quai bi, Rubella','2013-11-17','15 thang tuoi','Mui duy nhat','9',2),('Benh viem gan B','2015-01-19','1 thang tuoi','Mui 2','10',2),('Benh viem gan B','2015-05-08','1 thang tuoi','Mui 2','3',1),('Benh viem gan B','2018-12-23','1 thang tuoi','Mui 2','4',2),('Benh viem gan B','2018-11-02','1 thang tuoi','Mui 2','4',5),('Benh viem gan B','2017-03-19','1 thang tuoi','Mui 2','4',8),('Benh viem gan B','2016-04-11','1 thang tuoi','Mui 2','4',11),('Benh viem gan B','2014-03-03','1 thang tuoi','Mui 2','6',1),('Benh viem gan B','2015-01-20','1 thang tuoi','Mui 2','8',2),('Benh viem gan B','2016-09-26','1 thang tuoi','Mui 2','9',2);
/*!40000 ALTER TABLE `bang_tiem_chung` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-13 23:00:22
