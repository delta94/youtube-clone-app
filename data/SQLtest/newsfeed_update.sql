drop database if exists newsfeed_update;
create database if not exists newsfeed_update;
use newsfeed_update;

select 'loading news_accinfo.sql ...' as 'info';
source news_accinfo.sql;
select 'loading news_bai_viet.sql ...' as 'info';
source news_bai_viet.sql;
select 'loading news_bang_tiem_chung.sql ...' as 'info';
source news_bang_tiem_chung.sql;
select 'loading news_binh_luan.sql ...' as 'info';
source news_binh_luan.sql;
select 'loading news_bmi.sql ...' as 'info';
source news_bmi.sql;
select 'loading news_cau_tra_loi.sql ...' as 'info';
source news_cau_tra_loi.sql;
select 'loading news_chu_de.sql ...' as 'info';
source news_chu_de.sql;
select 'loading news_dia_chi.sql ...' as 'info';
source news_dia_chi.sql;
select 'loading news_gom_anh.sql ...' as 'info';
source news_gom_anh.sql;
select 'loading news_gom_video.sql ...' as 'info';
source news_gom_video.sql;
select 'loading news_image.sql ...' as 'info';
source news_image.sql;
select 'loading news_lien_he.sql ...' as 'info';
source news_lien_he.sql;
select 'loading news_luu_bv.sql ...' as 'info';
source news_luu_bv.sql;
select 'loading news_routines.sql ...' as 'info';
source news_routines.sql;
select 'loading news_tai_khoan.sql ...' as 'info';
source news_tai_khoan.sql;
select 'loading news_tham_do.sql ...' as 'info';
source news_tham_do.sql;
select 'loading news_thanh_vien_gia_dinh.sql ...' as 'info';
source news_thanh_vien_gia_dinh.sql;
select 'loading news_thich_bl.sql ...' as 'info';
source news_thich_bl.sql;
select 'loading news_thich_bv.sql ...' as 'info';
source news_thich_bv.sql;
select 'loading news_video.sql ...' as 'info';
source news_video.sql;
select 'loading news_viet_bl.sql ...' as 'info';
source news_viet_bl.sql;
