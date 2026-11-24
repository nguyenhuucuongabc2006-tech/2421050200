
-- ============================================
-- BAI TAP LON: DATABASE NETFLIX
-- ============================================

-- 1. TAO DATABASE
CREATE DATABASE IF NOT EXISTS netflix
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE netflix;


-- ============================================
-- 2. BANG NGUOI DUNG
-- ============================================

CREATE TABLE IF NOT EXISTS `user` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ten_dang_nhap VARCHAR(30) NOT NULL,
    mat_khau VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    ho_ten VARCHAR(50),
    ngay_sinh DATE,
    so_dien_thoai VARCHAR(10),
    gioi_tinh BOOLEAN
) ENGINE=InnoDB;


-- ============================================
-- 3. BANG THE LOAI
-- ============================================

CREATE TABLE IF NOT EXISTS the_loai (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ten_the_loai VARCHAR(255) NOT NULL
) ENGINE=InnoDB;


-- ============================================
-- 4. BANG DIEN VIEN
-- ============================================

CREATE TABLE IF NOT EXISTS dien_vien (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ho_ten VARCHAR(100) NOT NULL,
    ngay_sinh DATE
) ENGINE=InnoDB;


-- ============================================
-- 5. BANG DAO DIEN
-- ============================================

CREATE TABLE IF NOT EXISTS dao_dien (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ho_ten VARCHAR(100) NOT NULL,
    ngay_sinh DATE,
    quoc_gia VARCHAR(100),
    mo_ta TEXT
) ENGINE=InnoDB;


-- ============================================
-- 6. BANG PHIM
-- ============================================

CREATE TABLE IF NOT EXISTS phim (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ten_phim VARCHAR(255) NOT NULL,
    quoc_gia VARCHAR(100),
    dao_dien_id INT,
    nam INT,
    do_tuoi INT,
    mo_ta TEXT,

    CONSTRAINT fk_phim_dao_dien
    FOREIGN KEY (dao_dien_id)
    REFERENCES dao_dien(id)
) ENGINE=InnoDB;


-- ============================================
-- 7. BANG PHIM_THE_LOAI
-- ============================================

CREATE TABLE IF NOT EXISTS phim_the_loai (
    id INT AUTO_INCREMENT PRIMARY KEY,
    phim_id INT NOT NULL,
    the_loai_id INT NOT NULL,

    CONSTRAINT fk_ptl_phim
    FOREIGN KEY (phim_id)
    REFERENCES phim(id)
    ON DELETE CASCADE,

    CONSTRAINT fk_ptl_the_loai
    FOREIGN KEY (the_loai_id)
    REFERENCES the_loai(id)
    ON DELETE CASCADE
) ENGINE=InnoDB;


-- ============================================
-- 8. BANG PHIM_DIEN_VIEN
-- ============================================

CREATE TABLE IF NOT EXISTS phim_dien_vien (
    id INT AUTO_INCREMENT PRIMARY KEY,
    phim_id INT NOT NULL,
    dien_vien_id INT NOT NULL,

    CONSTRAINT fk_pdv_phim
    FOREIGN KEY (phim_id)
    REFERENCES phim(id)
    ON DELETE CASCADE,

    CONSTRAINT fk_pdv_dien_vien
    FOREIGN KEY (dien_vien_id)
    REFERENCES dien_vien(id)
    ON DELETE CASCADE
) ENGINE=InnoDB;


-- ============================================
-- 9. DU LIEU MAU: DIEN VIEN
-- ============================================

INSERT INTO dien_vien (ho_ten, ngay_sinh)
SELECT 'Lương Quang Anh', '2006-02-15'
WHERE NOT EXISTS (
    SELECT 1 FROM dien_vien
    WHERE ho_ten = 'Lương Quang Anh'
    AND ngay_sinh = '2006-02-15'
);

INSERT INTO dien_vien (ho_ten, ngay_sinh)
SELECT 'Nguyễn An Bình', '2006-01-19'
WHERE NOT EXISTS (
    SELECT 1 FROM dien_vien
    WHERE ho_ten = 'Nguyễn An Bình'
    AND ngay_sinh = '2006-01-19'
);

INSERT INTO dien_vien (ho_ten, ngay_sinh)
SELECT 'Nguyễn Huy Châu', '2006-02-15'
WHERE NOT EXISTS (
    SELECT 1 FROM dien_vien
    WHERE ho_ten = 'Nguyễn Huy Châu'
    AND ngay_sinh = '2006-02-15'
);

INSERT INTO dien_vien (ho_ten, ngay_sinh)
SELECT 'Nguyễn Thành Công', '2006-02-15'
WHERE NOT EXISTS (
    SELECT 1 FROM dien_vien
    WHERE ho_ten = 'Nguyễn Thành Công'
    AND ngay_sinh = '2006-02-15'
);

INSERT INTO dien_vien (ho_ten, ngay_sinh)
SELECT 'Trịnh Trần Phương Tuấn', '2006-02-15'
WHERE NOT EXISTS (
    SELECT 1 FROM dien_vien
    WHERE ho_ten = 'Trịnh Trần Phương Tuấn'
    AND ngay_sinh = '2006-02-15'
);


-- ============================================
-- 10. DU LIEU MAU: DAO DIEN
-- ============================================

INSERT INTO dao_dien (ho_ten, ngay_sinh)
SELECT 'Nguyễn Hữu Cường', '2006-05-21'
WHERE NOT EXISTS (
    SELECT 1 FROM dao_dien
    WHERE ho_ten = 'Nguyễn Hữu Cường'
    AND ngay_sinh = '2006-05-21'
);


-- ============================================
-- KET THUC FILE SQL
-- ============================================
