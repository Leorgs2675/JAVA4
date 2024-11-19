-- Tạo cơ sở dữ liệu
CREATE DATABASE BTVNBuoi7;
GO

USE BTVNBuoi7;
GO

-- Tạo bảng TacGia
CREATE TABLE TacGia (
	ID INT IDENTITY (1, 1) PRIMARY KEY,
	MaTacGia VARCHAR(20) UNIQUE NOT NULL,
	TenTacGia VARCHAR(100) NOT NULL,
	QuocTich VARCHAR(50),
	NgaySinh DATE,
	GhiChu VARCHAR(50)
);

-- Tạo bảng Sach
CREATE TABLE Sach (
	ID INT IDENTITY (1, 1) PRIMARY KEY,
	MaSach VARCHAR(20) UNIQUE NOT NULL,
	TenSach VARCHAR(100) NOT NULL,
	NamXuatBan INT,
	TheLoai VARCHAR(50),
	TacGiaID INT,
	FOREIGN KEY (TacGiaID) REFERENCES TacGia(ID)
);

-- Bật IDENTITY_INSERT cho bảng TacGia
SET IDENTITY_INSERT TacGia ON;

-- Thêm dữ liệu mẫu vào bảng TacGia
INSERT INTO TacGia (ID, MaTacGia, TenTacGia, QuocTich, NgaySinh, GhiChu)
VALUES
	(1, 'TG001', 'Nguyen Nhat Anh', 'Vietnam', '1955-05-07', 'Tác giả nổi tiếng với các tác phẩm thiếu nhi'),
	(2, 'TG002', 'J.K. Rowling', 'United Kingdom', '1965-07-31', 'Tác giả của loạt truyện Harry Potter'),
	(3, 'TG003', 'George Orwell', 'United Kingdom', '1903-06-25', 'Tác giả của các tác phẩm phản địa đàng'),
	(4, 'TG004', 'Haruki Murakami', 'Japan', '1949-01-12', 'Tác giả nổi tiếng của Nhật Bản');

-- Tắt IDENTITY_INSERT cho bảng TacGia
SET IDENTITY_INSERT TacGia OFF;

-- Bật IDENTITY_INSERT cho bảng Sach
SET IDENTITY_INSERT Sach ON;

-- Thêm dữ liệu mẫu vào bảng Sach
INSERT INTO Sach ( MaSach, TenSach, NamXuatBan, TheLoai, TacGiaID)
VALUES
	( 'S001', 'Cho Toi Mot Ve Di Tuoi Tho', 2008, 'Tiểu thuyết', 1),
	( 'S002', 'Harry Potter and the Philosopher''s Stone', 1997, 'Fantasy', 2),
	( 'S003', 'Harry Potter and the Chamber of Secrets', 1998, 'Fantasy', 2),
	( 'S004', '1984', 1949, 'Dystopian', 3),
	( 'S005', 'Animal Farm', 1945, 'Political Satire', 3),
	( 'S006', 'Norwegian Wood', 1987, 'Romance', 4),
	( 'S007', 'Kafka on the Shore', 2002, 'Fantasy', 4);

-- Tắt IDENTITY_INSERT cho bảng Sach
SET IDENTITY_INSERT Sach OFF;



SELECT * FROM TacGia
SELECT * FROM SACH WHERE MaSach = 'S001' AND TacGiaID = 1