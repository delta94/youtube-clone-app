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
-- Table structure for table `binh_luan`
--

DROP TABLE IF EXISTS `binh_luan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `binh_luan` (
  `ID_BL` varchar(10) NOT NULL,
  `Thoi_gian` date NOT NULL,
  `Noi_dung` varchar(1000) NOT NULL,
  `So_luot_thich` int(11) NOT NULL,
  `Trang_thai` int(11) NOT NULL,
  `ID_TT` varchar(10) NOT NULL,
  `ID_BV` varchar(10) NOT NULL,
  `ID_TT_Cha` varchar(10) DEFAULT NULL,
  `ID_BV_Cha` varchar(10) DEFAULT NULL,
  `ID_BL_Cha` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID_BL`,`ID_TT`,`ID_BV`),
  KEY `ID_TT` (`ID_TT`,`ID_BV`),
  KEY `ID_TT_Cha` (`ID_TT_Cha`,`ID_BV_Cha`,`ID_BL_Cha`),
  KEY `hot_comment` (`So_luot_thich`) USING BTREE,
  CONSTRAINT `binh_luan_ibfk_1` FOREIGN KEY (`ID_TT`, `ID_BV`) REFERENCES `bai_viet` (`ID_TT`, `ID_BV`),
  CONSTRAINT `binh_luan_ibfk_2` FOREIGN KEY (`ID_TT_Cha`, `ID_BV_Cha`, `ID_BL_Cha`) REFERENCES `binh_luan` (`ID_TT`, `ID_BV`, `ID_BL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `binh_luan`
--

LOCK TABLES `binh_luan` WRITE;
/*!40000 ALTER TABLE `binh_luan` DISABLE KEYS */;
INSERT INTO `binh_luan` VALUES ('0','2018-05-13','Do chi la loi khai cua lai xe, chua co ket luan cua co quan dieu tra.',1,1,'cd006','bv003',NULL,NULL,NULL),('0','2018-05-13','Do deo cho lam dung phanh se lam phanh nong va khong hoat dong. nen di so thap de giam quan tinh.',0,1,'cd007','bv004',NULL,NULL,NULL),('0','2018-05-13','Toi khong noi truong hop nay, nhung da phan cac tai xe do deo dung vi tiet kiem vai lit dau ma de dan den tai nan thuong tam.',0,1,'cd007','bv005',NULL,NULL,NULL),('0','2018-05-13','Chia buon cung nhung nan nhan.mong nhung nguoi con lai mau khoe.',0,1,'cd007','bv006',NULL,NULL,NULL),('0','2018-05-13','Khong phai vay dau a. Khong co tinh huong gi nguy hiem thi cu di thang ve so nho dan toi so 1 thi dau co gi a. ',0,1,'cd008','bv007',NULL,NULL,NULL),('0','2018-05-13','Chuan, xe do deo phai ket hop so kg phai phu thuoc thang, len so nao xuong so do, thay day. Thoi chu toi kg dam lai xe do deo',0,1,'cd008','bv009',NULL,NULL,NULL),('0','2018-05-13','Xe do deo gai so may!',1,1,'cd009','bv011',NULL,NULL,NULL),('0','2018-05-13','\"...dap thang nhung phanh khong hoat dong\". Muon phanh hoat dong thi phai dap phanh chu.',0,1,'cd010','bv013',NULL,NULL,NULL),('0','2018-05-13','Con lai cu, thang la phanh cho gi nua.',0,1,'cd010','bv014',NULL,NULL,NULL),('0','2018-05-13','Chi so anh tai cat khoa cho xe tu dong troi de tiet kiem nhien lieu nhung sau khi bat lai thi xe khong hoat dong nen phanh xe bi mat he thong va hau qua cuoi cung la danh lai vao vach nui. phan doan mo cua toi.',0,1,'cd010','bv015',NULL,NULL,NULL),('0','2018-05-13','Hen la con nhanh tri khong la rot het xuong vuc.',0,1,'cd011','bv016',NULL,NULL,NULL),('0','2018-05-13','Nguyen tac xuong deo doc la phai xuong bang so , han che toi da thang,theo toi cung dan trong nghe ,khi do xe a nay xuong deo bang thang , dap thang lien tuc se gay chay bo xe se mat thang ,xe nay Samco isuzu loai nay thang ... ',0,1,'cd011','bv017',NULL,NULL,NULL),('0','2018-05-13','sao canh sat khong dung day cap de keo xe lat lai ma dung may muc nhu the thi xe cang hong them...?',2,1,'cd011','bv018',NULL,NULL,NULL),('0','2018-05-13','nhanh tri',3,1,'cd012','bv019',NULL,NULL,NULL),('0','2018-05-13','Nhung loi khai van con nam trong vung nghi van, may man luc do khong co xe o chieu nguoc lai neu khong thi hau qua se nhu the nao. Mong sao loi khai do la su that.',0,1,'cd013','bv023',NULL,NULL,NULL),('0','2018-05-13','Sau moi tai nan, toi tu hoi bai hoc cua chung ta la gi. Neu do phanh xe thi phai lam sao, lam sao de tranh duoc su co do lan sau.',0,1,'cd013','bv024',NULL,NULL,NULL),('1','2018-05-13','Hello moi nguoi',0,1,'cd006','bv003','cd006','bv003','0'),('1','2018-05-13','Xu ly the duoc nhung Sao khong noi moi nguoi tren xe truoc khi dam de moi nguoi chu dong khi va cham',0,1,'cd007','bv006',NULL,NULL,NULL),('1','2018-05-13','Dong y voi ban',0,1,'cd009','bv011','cd009','bv011','0'),('1','2018-05-13','Dan noi dung Tieng Viet can xoa vao day roi click nut Xoa dau Tieng Viet ben duoi. Xoa dau Tieng Viet, bo dau tieng viet, go dau Tieng Viet, loai dau Tieng Viet, tach dau Tieng Viet',2,1,'cd012','bv019','cd012','bv019','0'),('2','2018-05-13','Len so nao thi do so do',0,1,'cd009','bv011','cd009','bv011','0'),('2','2018-05-13','Dung phan mo nhe! Tai len dau nay thi phai hon chuc nam. Tiet kiem gi may dong xang dau nay. ',3,1,'cd012','bv019',NULL,NULL,NULL),('3','2018-05-13','Khung gam xe nay la xe tai ISUZU => mang di cai tao thanh xe khach cho nguoi hen chi thang khong an la phai.',1,1,'cd012','bv019','cd012','bv019','0'),('4','2018-05-13','Ban noi qua dung',0,1,'cd012','bv019','cd012','bv019','3');
/*!40000 ALTER TABLE `binh_luan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-13 23:00:25
