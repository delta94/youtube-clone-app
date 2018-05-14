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
-- Table structure for table `cau_tra_loi`
--

DROP TABLE IF EXISTS `cau_tra_loi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cau_tra_loi` (
  `STT` int(11) NOT NULL,
  `Noi_dung` varchar(1000) NOT NULL,
  `So_phieu` int(11) NOT NULL,
  `Phan_tram_chon` int(11) NOT NULL,
  `ID_TT` varchar(10) NOT NULL,
  PRIMARY KEY (`STT`,`ID_TT`),
  KEY `ID_TT` (`ID_TT`),
  CONSTRAINT `cau_tra_loi_ibfk_1` FOREIGN KEY (`ID_TT`) REFERENCES `tham_do` (`ID_TT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cau_tra_loi`
--

LOCK TABLES `cau_tra_loi` WRITE;
/*!40000 ALTER TABLE `cau_tra_loi` DISABLE KEYS */;
INSERT INTO `cau_tra_loi` VALUES (1,'Thấp',1561,82,'td001'),(1,'Tạm được',1561,82,'td002'),(1,'Hài lòng',1561,82,'td003'),(1,'Khó',1561,82,'td004'),(1,'Đồng ý',1561,82,'td005'),(1,'Đồng ý',1561,82,'td006'),(1,'Đồng ý',1561,82,'td007'),(1,'Đồng ý',1561,82,'td008'),(1,'Đồng ý',1561,82,'td009'),(1,'Đồng ý',1561,82,'td010'),(2,'Cao',83,4,'td001'),(2,'Tốt',83,4,'td002'),(2,'Trung hòa',83,4,'td003'),(2,'Dễ',83,4,'td004'),(2,'Bình thường',83,4,'td005'),(2,'Bình thường',83,4,'td006'),(2,'Phân vân',83,4,'td007'),(2,'Phân vân',83,4,'td008'),(2,'Không ý kiến',83,4,'td009'),(2,'Không ý kiến',83,4,'td010'),(3,'Phù hợp',246,14,'td001'),(3,'Kém',246,14,'td002'),(3,'Không hài lòng',246,14,'td003'),(3,'Không ý kiến',246,14,'td004'),(3,'Không đồng ý',246,14,'td005'),(3,'Không đồng ý',246,14,'td006'),(3,'Không đồng ý',246,14,'td007'),(3,'Không đồng ý',246,14,'td008'),(3,'Không đồng ý',246,14,'td009'),(3,'Không đồng ý',246,14,'td010');
/*!40000 ALTER TABLE `cau_tra_loi` ENABLE KEYS */;
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
