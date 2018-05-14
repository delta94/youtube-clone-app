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
-- Table structure for table `bai_viet`
--

DROP TABLE IF EXISTS `bai_viet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bai_viet` (
  `ID_BV` varchar(10) NOT NULL,
  `Luot_quan_tam` int(11) NOT NULL,
  `So_luong_luu` int(11) NOT NULL,
  `Trang_thai` int(11) NOT NULL,
  `ID_TT` varchar(10) NOT NULL,
  `Noi_dung` varchar(1000) NOT NULL,
  `Ten_tac_gia` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_BV`,`ID_TT`),
  KEY `ID_TT` (`ID_TT`),
  KEY `hot_post` (`Luot_quan_tam`) USING BTREE,
  CONSTRAINT `bai_viet_ibfk_1` FOREIGN KEY (`ID_TT`) REFERENCES `chu_de` (`ID_TT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bai_viet`
--

LOCK TABLES `bai_viet` WRITE;
/*!40000 ALTER TABLE `bai_viet` DISABLE KEYS */;
insert into bai_viet values
('bv001', 9, 4, 1, 'cd003', 'giaitri/bao-tang-phap-phat-hien-82-buc-tranh-gia.json', 'Huyen'), 
('bv002', 3, 5, 1, 'cd003', 'giaitri/bao-tri-ke-ve-tuoi-tho-bat-hanh.json', 'Yen Nhi'), 
('bv003', 5, 5, 1, 'cd003', 'giaitri/ca-khuc-ve-be-hai-an-hien-giac-mac-gay-xuc-dong.json', 'Lan Anh'), 
('bv004', 7, 1, 1, 'cd013', 'giaitri/nhac/ba-nhom-nhac-mien-trung-vao-chung-ket-the-band-toan-quoc.json', 'Linh'), 
('bv005', 9, 2, 1, 'cd013', 'giaitri/nhac/hoa-minzy-moi-hot-boy-cao-1-86-m-dong-mv.json', 'Lai Van Sam'), 
('bv006', 5, 2, 1, 'cd013', 'giaitri/nhac/luong-nguyet-anh-di-khap-vung-trung-du-tim-canh-quay-mv.json', 'Di Khanh'), 
('bv007', 5, 5, 1, 'cd011', 'giaitri/phim/love-simon-phim-gay-sot-ve-chuyen-dong-tinh-o-hoc-duong.json', 'Nhat Ha'), 
('bv008', 2, 3, 1, 'cd011', 'giaitri/phim/nguoi-do-dau-cho-clint-eastwood-martin-scorsese-mat-o-tuoi-81.json', 'Lan Anh'), 
('bv009', 0, 5, 1, 'cd011', 'giaitri/phim/nhung-khoanh-khac-xuc-dong-trong-vu-tru-dien-anh-marvel.json', 'Quynh'), 
('bv010', 9, 4, 1, 'cd003', 'giaitri/sinh-ra-de-chay-sach-ve-niem-han-hoan-chay-bo.json', 'Mai Thanh'), 
('bv011', 7, 5, 1, 'cd012', 'giaitri/thoitrang/lich-lam-nam-tinh-voi-thuong-hieu-4u-fashion-phong-cach-italy.json', 'Quynh'), 
('bv012', 5, 1, 1, 'cd012', 'giaitri/thoitrang/quan-jeans-ho-het-vong-ba-chay-hang-o-my.json', 'Mai Thanh'), 
('bv013', 1, 3, 1, 'cd012', 'giaitri/thoitrang/vo-tuong-lai-cua-hoang-tu-anh-mac-vay-cuoi-100-000-bang.json', 'Anh Thu'), 
('bv014', 1, 3, 1, 'cd003', 'giaitri/timothee-chalamet-dicaprio-the-he-moi-cua-hollywood.json', 'Yen Nhi'), 
('bv015', 5, 0, 1, 'cd009', 'kinhdoanh/batdongsan/du-an-nha-o-xa-hoi-day-du-tien-ich-tai-phia-tay-ha-noi.json', 'Linh'), 
('bv016', 0, 4, 1, 'cd009', 'kinhdoanh/batdongsan/gia-dat-dong-nai-long-an-noi-song-theo-con-sot-dat-sai-gon.json', 'Vo Thanh'), 
('bv017', 7, 4, 1, 'cd009', 'kinhdoanh/batdongsan/khong-gian-song-xanh-tai-khu-do-thi-lavila-dong-sai-gon.json', 'Nhat Ha'), 
('bv018', 4, 0, 1, 'cd010', 'kinhdoanh/chungkhoan/chung-khoan-pho-wall-bi-phat-200-trieu-do-khai-sinh-dich-vu-moi.json', 'Vo Thanh'), 
('bv019', 2, 5, 1, 'cd010', 'kinhdoanh/chungkhoan/chung-khoan-viet-nam-giam-manh-nhat-the-gioi-trong-mot-thang.json', 'Nhat Ha'), 
('bv020', 4, 0, 1, 'cd010', 'kinhdoanh/chungkhoan/sac-xanh-tro-lai-vn-index-tang-hon-35-diem.json', 'Quynh'), 
('bv021', 5, 0, 1, 'cd002', 'kinhdoanh/de-xuat-tang-phi-rut-tien-voi-to-chuc-tin-dung-khong-chiu-dau-tu-atm.json', 'Quynh'), 
('bv022', 1, 4, 1, 'cd008', 'kinhdoanh/doanhnghiep/ha-i-pho-ng-dua-ca-ng-nuo-c-sau-6-000-ty-dong-va-o-khai-tha-c.json', 'Quynh'), 
('bv023', 8, 1, 1, 'cd008', 'kinhdoanh/doanhnghiep/lao-dong-biet-tieng-phap-duoc-san-don.json', 'Lai Van Sam'), 
('bv024', 6, 0, 1, 'cd008', 'kinhdoanh/doanhnghiep/ong-luon-chong-chay-ac-co-mat-o-nhieu-cong-trinh-hang-sang.json', 'Di Khanh'), 
('bv025', 2, 5, 1, 'cd002', 'kinhdoanh/gia-tieu-thap-nhat-sau-nam.json', 'Vo Thanh'), 
('bv026', 1, 2, 1, 'cd002', 'kinhdoanh/loc-dau-dung-quat-hoat-dong-ra-sao-duoi-thoi-chu-tich-vua-bi-bat.json', 'Lan Anh'), 
('bv027', 5, 1, 1, 'cd002', 'kinhdoanh/thit-lon-rung-texas-song-tu-nhien-nhap-khau-vao-thi-truong-viet.json', 'Huyen'), 
('bv028', 4, 5, 1, 'cd002', 'kinhdoanh/ty-phu-thai-dua-them-4-nguoi-vao-ban-lanh-dao-sabeco.json', 'Yen Nhi'), 
('bv029', 2, 0, 1, 'cd005', 'phapluat/an-chung-than-cho-ke-sat-hai-nguoi-yeu-giau-xac-vao-bui-cay.json', 'Mai Thanh'), 
('bv030', 7, 1, 1, 'cd005', 'phapluat/bo-cong-an-vay-bat-bang-rut-ruot-container-hang-dat-tien.json', 'Yen Nhi'), 
('bv031', 3, 5, 1, 'cd017', 'phapluat/hosophaan/cach-mat-bao-dang-bi-cuop-khong-che-cua-con-gai-tuong-cong-an.json', 'Huyen'), 
('bv032', 6, 4, 1, 'cd017', 'phapluat/hosophaan/don-ly-hon-tren-thi-the-dong-bang-cua-co-gai-trung-quoc.json', 'Anh Thu'), 
('bv033', 8, 2, 1, 'cd017', 'phapluat/hosophaan/dung-kho-nhuc-ke-de-co-khuon-mat-giong-chong-cua-nguoi-tinh.json', 'Yen Nhi'), 
('bv034', 7, 3, 1, 'cd017', 'phapluat/hosophaan/giai-ma-vet-mau-trong-dieu-tra-an-mang.json.json', 'Yen Nhi'), 
('bv035', 3, 3, 1, 'cd017', 'phapluat/hosophaan/tham-tu-giai-ma-duong-di-cua-vien-dan-de-minh-oan-cho-canh-sat-my.json', 'Mai Thanh'), 
('bv036', 8, 1, 1, 'cd005', 'phapluat/nghi-can-gay-tham-an-chem-bon-nguoi-bi-khoi-to.json', 'Vo Thanh'), 
('bv037', 2, 3, 1, 'cd005', 'phapluat/nguoi-phu-nu-o-tp-hcm-mat-hu-vang-vi-cho-ban-chong-ngu-nho.json', 'Quynh'), 
('bv038', 3, 1, 1, 'cd005', 'phapluat/vks-de-nghi-ap-dung-tinh-tiet-giam-nhe-cho-ong-dinh-la-thang.json', 'Anh Thu'), 
('bv039', 7, 3, 1, 'cd014', 'thethao/bongda/casemiro-la-liga-khong-the-bang-champions-league.json', 'Huyen'), 
('bv040', 2, 5, 1, 'cd014', 'thethao/bongda/klopp-yeu-cau-salah-cham-dut-tro-an-va.json', 'Lan Anh'), 
('bv041', 2, 2, 1, 'cd014', 'thethao/bongda/ronaldo-nguy-co-lo-chung-ket-champions-league.json', 'Vo Thanh'), 
('bv042', 1, 3, 1, 'cd004', 'thethao/cac-tan-binh-the-players-tich-cuc-tap-o-ho-so.json', 'Di Khanh'), 
('bv043', 2, 1, 1, 'cd015', 'thethao/hautruong/ban-gai-ronaldo-khoe-nhan-tri-gia-gan-mot-trieu-dola.json', 'Quynh'), 
('bv044', 8, 0, 1, 'cd015', 'thethao/hautruong/lebron-james-phat-tai-nho-liverpool-vao-chung-ket-champions-league.json', 'Quynh'), 
('bv045', 5, 5, 1, 'cd015', 'thethao/hautruong/the-gioi-bong-da-huong-ve-alex-ferguson.json', 'Van Anh'), 
('bv046', 8, 3, 1, 'cd004', 'thethao/hlv-cua-hagl-thanh-luong-nhan-the-do-la-dung.json', 'Anh Thu'), 
('bv047', 4, 0, 1, 'cd004', 'thethao/kubica-lan-dau-cam-lai-tai-f1-sau-8-nam.json', 'Linh'), 
('bv048', 1, 3, 1, 'cd004', 'thethao/le-tuan-minh-doat-cu-dup-vo-dich-co-nhanh-co-chop-toan-quoc.json', 'Linh'), 
('bv049', 4, 3, 1, 'cd004', 'thethao/salah-di-chuyen-co-nhan-ba-giai-thuong-trong-mot-toi.json', 'Quynh'), 
('bv050', 7, 4, 1, 'cd016', 'thethao/tennis/dominic-thiem-canh-bao-su-tro-lai-cua-djokovic.json', 'Linh'), 
('bv051', 6, 5, 1, 'cd016', 'thethao/tennis/ly-hoang-nam-vao-tu-ket-don-nam-viet-nam-f1-futures.json', 'Mai Thanh'), 
('bv052', 8, 1, 1, 'cd016', 'thethao/tennis/nadal-vo-dich-barcelona-mo-rong-lap-ky-luc-lang-banh-ni.json', 'Yen Nhi'), 
('bv053', 5, 2, 1, 'cd001', 'thoisu/ba-quyet-tam-con-lam-dai-bieu-toi-se-giai-quyet-bang-duoc-vu-thu-thiem.json', 'Yen Nhi'), 
('bv054', 6, 0, 1, 'cd001', 'thoisu/bo-truong-lao-dong-day-la-thoi-co-vang-dieu-chinh-tuoi-huu.json', 'Huyen'), 
('bv055', 1, 3, 1, 'cd001', 'thoisu/dong-nai-yeu-cau-nguoi-dot-dong-ben-cao-toc-phai-bao-truoc.json', 'Yen Nhi'), 
('bv056', 0, 0, 1, 'cd006', 'thoisu/giaothong/oto-khach-tong-xe-container-2-nguoi-chet-14-nguoi-bi-thuong.json', 'Lai Van Sam'), 
('bv057', 5, 4, 1, 'cd006', 'thoisu/giaothong/tai-xe-oto-bi-nhieu-nguoi-vay-danh-sau-khi-gay-tai-nan-lien-hoan.json', 'Mai Thanh'), 
('bv058', 7, 4, 1, 'cd006', 'thoisu/giaothong/xe-khach-dam-tu-vong-hai-nguoi-di-xe-may-roi-boc-chay.json', 'Mai Thanh'), 
('bv059', 3, 4, 1, 'cd001', 'thoisu/ha-noi-lam-rao-sat-cang-day-thep-gai-bao-ve-cay-sua-do.json', 'Anh Thu'), 
('bv060', 5, 2, 1, 'cd001', 'thoisu/hang-loat-tinh-thanh-nong-37-do.json', 'Huyen'), 
('bv061', 0, 0, 1, 'cd001', 'thoisu/lang-thu-thiem-giua-long-ha-noi.json', 'Mai Thanh'), 
('bv062', 9, 0, 1, 'cd001', 'thoisu/nguyen-chu-tich-tp-hcm-khong-co-ban-do-quy-hoach-tong-the-thu-thiem.json', 'Yen Nhi'), 
('bv063', 1, 1, 1, 'cd007', 'thoisu/nongnghiepsach/nong-dan-may-mo-trong-3-000-m2-tao-tren-doi-nui-tan-son.json', 'Yen Nhi'), 
('bv064', 6, 1, 1, 'cd007', 'thoisu/nongnghiepsach/nong-dan-ninh-thuan-doi-doi-nho-trong-mang-tay.json', 'Linh'), 
('bv065', 5, 0, 1, 'cd007', 'thoisu/nongnghiepsach/quang-binh-bao-ton-giong-toi-tia-dac-san-ba-don.json', 'Lai Van Sam'), 
('bv066', 2, 5, 1, 'cd001', 'thoisu/tri-thuc-sai-gon-kien-nghi-bao-ton-toa-nha-130-tuoi.json', 'Yen Nhi');
/*!40000 ALTER TABLE `bai_viet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-13 23:00:37
