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
-- Table structure for table `tham_do`
--

DROP TABLE IF EXISTS `tham_do`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tham_do` (
  `ID_TT` varchar(10) NOT NULL,
  `Content` varchar(1000) NOT NULL,
  PRIMARY KEY (`ID_TT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tham_do`
--

LOCK TABLES `tham_do` WRITE;
/*!40000 ALTER TABLE `tham_do` DISABLE KEYS */;
INSERT INTO `tham_do` VALUES ('td001','Ý kiến của bạn về mức lương thấp nhất khu vực công - khoảng 4.1 triệu đồng vào năm 2021?'),('td002','Sự hài lòng của khách hàng về chất lượng dịch vụ, hài lòng về ngân hàng, hài lòng của nhân viên?'),('td003','Quí vị thấy tình trạng sức khỏe của mình được cải thiện khi điều trị tại bệnh viện?'),('td004','Hành khách dễ dàng tìm kiếm thông tin về các tuyến trên mạng, điện thoại?'),('td005','Thu nhập của nhân viên công ty tốt hơn so với các công ty khác cùng ngành?'),('td006','Công ty có chính sách trả lương tương xứng với kết quả làm việc của mỗi cá nhân?'),('td007','Những thông tin tốt được cung câp trên nhãn sinh thái?'),('td008','Tính năng của sản phẩm xanh đáp ứng kỳ vọng của tôi?'),('td009','Tôi đã tạo được những mối quan hệ tốt, giúp hỗ trợ thực hiện công việc của tôi?'),('td010','Tôi cảm thấy những nỗ lực của bản thân được khen thưởng xứng đáng');
/*!40000 ALTER TABLE `tham_do` ENABLE KEYS */;
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
