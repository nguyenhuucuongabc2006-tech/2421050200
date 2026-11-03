create database netflix;

--phim
--the_loai
--quoc_gia
--dien_vien
--dao_dien
--tap_phim
--nguoi_dung

--Table Người dùng
id
ten_dang_nhap varchar(30)
mat_khau varchar(30)
email varchar(30)
ho_ten varchar(30)
ngay_sinh date
so_dien_thoai varchar(10)
gioi_tinh boolean --true:nam / false: nữ

CREATE TABLE if not EXISTS nguoi_dung (
id int AUTO_INCREMENT PRIMARY KEY,
ten_dang_nhap varchar(30) NOT NULL,
mat_khau varchar(30) NOT NULL,
email varchar(30) NOT NULL,
ho_ten varchar(30) NOT NULL,
ngay_sinh date NOT NULL,
so_dien_thoai varchar(10) NOT NULL,
gioi_tinh boolean NOT NULL
)
--the_loai
id key AUTO_INCREMENT int,
ten_the_loai varchar(255) NOT NULL,

--dien_vien
id key AUTO_INCREMENT int,
ho_ten varchar(100) NOT NULL,
ngay_sinh date NOT NULL,

--dao_dien
id key AUTO_INCREMENT int,
ho_ten varchar(100) NOT NULL,
ngay_sinh date NOT NULL,

--phim
id key AUTO_INCREMENT int,
ten_phim varchar(255) NOT NULL,
quoc_gia varchar(100) NOT NULL,
dao_dien_id int NOT NULL,
nam datetime NOT NULL,
do_tuoi int NOT NULL,
mo_ta varchar(255) NOT NULL

--phim_the_loai
id key AUTO_INCREMENT int,
phim_id int NOT NULL,
the_loai_id int NOT NULL,

--phim_dien_vien
id key AUTO_INCREMENT int,
phim_id int NOT NULL,
dien_vien_id int NOT NULL

