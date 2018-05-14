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
-- Table structure for table `lien_he`
--

DROP TABLE IF EXISTS `lien_he`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lien_he` (
  `DThoai` varchar(20) NOT NULL,
  `Web` varchar(100) NOT NULL,
  `Gioi_thieu` varchar(100) NOT NULL,
  `ID` varchar(10) NOT NULL,
  PRIMARY KEY (`DThoai`,`ID`),
  KEY `ID` (`ID`),
  CONSTRAINT `lien_he_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `tai_khoan` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lien_he`
--

LOCK TABLES `lien_he` WRITE;
/*!40000 ALTER TABLE `lien_he` DISABLE KEYS */;
INSERT INTO `lien_he` VALUES ('01278878743','Web.com','la tac gia chuyen nghiep','12'),('0200400500','facebook','nha bao Lai Van Sam','7'),('0200400511','facebook','thu mon kiem nguoi mau','8'),('02114000230','facebook','Hello,i am forgeiner ,i like travel','10'),('0211400511','facebook','Hello,i am forgeiner','9'),('0223400535','facebook','ganh team khong noi nhieu','5'),('0223438535','facebook','sinh vien viet web nhu dien','4'),('0264438530','facebook','sinh vien nguoi nuoc ngoai','2'),('0264438530','facebook','sinh  vien cham chi nhat nhi truong','3'),('0917600043','facebook.com','La tac gia','16'),('0917602342','facebook.com','La tac gia','14'),('0917602343','facebook.com','La tac gia','15'),('0923857127','yahoo','nha lam ruong','6'),('0947602274','facebook.com','Thanh vien uu tu','11'),('0947602346','facebook.com','La tac gia','13'),('0947603374','facebook','sinh vien nam tot','0'),('0964438530','facebook','sinh vien cham chi','1');
/*!40000 ALTER TABLE `lien_he` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-13 23:00:23
