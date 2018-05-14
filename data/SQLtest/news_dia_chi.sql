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
-- Table structure for table `dia_chi`
--

DROP TABLE IF EXISTS `dia_chi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dia_chi` (
  `So_nha` varchar(100) NOT NULL,
  `Quoc_gia` varchar(100) NOT NULL,
  `ID` varchar(10) NOT NULL,
  PRIMARY KEY (`So_nha`,`ID`),
  KEY `ID` (`ID`),
  CONSTRAINT `dia_chi_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `tai_khoan` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dia_chi`
--

LOCK TABLES `dia_chi` WRITE;
/*!40000 ALTER TABLE `dia_chi` DISABLE KEYS */;
INSERT INTO `dia_chi` VALUES ('8 Le Thi Tam','Vietnam','11'),('8 tong van tran','Viet nam','0'),('Ha Noi','Viet nam','7'),('Ho Chi Minh','Viet Nam','12'),('Ho Chi Minh','Viet Nam','13'),('Ho Chi Minh','Viet Nam','14'),('Ho Chi Minh','Viet Nam','15'),('Ho Chi Minh','Viet Nam','16'),('ktx BK','Viet nam','3'),('ktx BK','Viet nam','4'),('ktx BK','Viet nam','5'),('ktx khu A','Viet nam','1'),('ktx khu B','Viet nam','2'),('Lang Son','Viet nam','8'),('NA','Ameria','9'),('quan 8','Viet nam','6'),('UK','England','10');
/*!40000 ALTER TABLE `dia_chi` ENABLE KEYS */;
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
