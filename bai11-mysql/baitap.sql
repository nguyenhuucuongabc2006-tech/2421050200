create database netflix;

--phim
--the_loai
--quoc_gia
--dien_vien
--dao_dien
--tap_phim
--nguoi_dung

-- 1. Bảng người dùng
CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ten_dang_nhap VARCHAR(30) NOT NULL,
    mat_khau VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    ho_ten VARCHAR(50),
    ngay_sinh DATE,
    so_dien_thoai VARCHAR(10),
    gioi_tinh BOOLEAN -- true: nam / false: nữ
);

-- 2. Bảng thể loại phim
CREATE TABLE the_loai (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ten_the_loai VARCHAR(255) NOT NULL
);

-- 3. Bảng diễn viên
CREATE TABLE dien_vien (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ho_ten VARCHAR(100) NOT NULL,
    ngay_sinh DATE
);

-- 4. Bảng phim
CREATE TABLE phim (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ten_phim VARCHAR(255) NOT NULL,
    quoc_gia VARCHAR(100),
    dao_dien_id INT, 
    nam INT,
    do_tuoi INT,
    mo_ta TEXT
);

-- 5. Bảng trung gian
CREATE TABLE phim_the_loai (
    id INT AUTO_INCREMENT PRIMARY KEY,
    phim_id INT NOT NULL,
    the_loai_id INT NOT NULL,
    FOREIGN KEY (phim_id) REFERENCES phim(id) ON DELETE CASCADE,
    FOREIGN KEY (the_loai_id) REFERENCES the_loai(id) ON DELETE CASCADE
);

-- 6. Bảng trung gian: Phim - Diễn viên
CREATE TABLE phim_dien_vien (
    id INT AUTO_INCREMENT PRIMARY KEY,
    phim_id INT NOT NULL,
    dien_vien_id INT NOT NULL,
    FOREIGN KEY (phim_id) REFERENCES phim(id) ON DELETE CASCADE,
    FOREIGN KEY (dien_vien_id) REFERENCES dien_vien(id) ON DELETE CASCADE
);
-- btvn
-- sửa và hoàn thiện tất cả bảng trên vscode và đẩy lên git
-- làm cách nào để chạy 1 câu lệnh nhiều lần k lỗi ( vd như tạo bảng r thì chạy thêm lần nữa vẫn k lỗivà  - dùng if not EXISIT)
-- dl: trc tối cn tuần này

-- cách chạy lệnh nhiều lần k lỗi --- dùng IF NOT EXISTS
-- vd
-- CREATE TABLE IF NOT EXISTS user (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     ten_dang_nhap VARCHAR(30) NOT NULL
-- );
--dao dien
INSERT INTO 'dao_dien'('ho_ten','ngay_sinh') VALUES ('Nguyễn Hữu Cường','2006-05-21');
--phim
INSERT INTO 'phim'('ten_phim','quoc_gia','nam','do_tuoi','mo_ta','dao_dien_id') VALUES ('Conan','Nhật Bản','2003-1-1','14','hoạt hình',1);
--phim the loai
INSERT INTO 'phim_the_loai'('phim_id','the_loai_id') VALUES (1,1)
INSERT INTO 'phim_the_loai'('phim_id','the_loai_id') VALUES (1,2)
--phim dien vien
INSERT INTO 'phim_dien_vien'('phim_id','dien_vien_id') VALUES (1,1)
--nguoi dung
INSERT INTO 'nguoi_dung'(' ten_dang_nhap','mat_khau','email','ho_ten','ngay_sinh','so_dien_thoai','gioi_tinh') VALUES (nguyenhuucuong,'123456','nguyenhuucuong@123.com','Nguyễn Hữu Cường','2006-05-21','0123456789',1)