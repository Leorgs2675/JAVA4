CREATE DATABASE BTVNBuoi9;

USE BTVNBuoi9;

CREATE TABLE giang_vien (
	id BIGINT IDENTITY NOT NULL,
	ma varchar(100) NULL,
	ten varchar(100) NULL,
	tuoi BIGINT NULL,
	gioi_tinh BIT NULL,
	dia_chi varchar(100) NULL,
	CONSTRAINT giang_vien_PK PRIMARY KEY (id)
)

CREATE TABLE tai_khoan (
	username varchar(100) NOT NULL,
	password varchar(100) NULL,
	CONSTRAINT tai_khoan_PK PRIMARY KEY (username)
)


-- Insert 50 rows into giang_vien table
INSERT INTO giang_vien (ma, ten, tuoi, gioi_tinh, dia_chi)
VALUES 
('GV001', 'Nguyen Van A', 30, 1, 'Hanoi'),
('GV002', 'Tran Thi B', 40, 0, 'Ho Chi Minh City'),
('GV003', 'Le Van C', 35, 1, 'Da Nang'),
('GV004', 'Pham Thi D', 28, 0, 'Can Tho'),
('GV005', 'Hoang Van E', 50, 1, 'Hue'),
('GV006', 'Bui Thi F', 29, 0, 'Nha Trang'),
('GV007', 'Nguyen Van G', 45, 1, 'Hanoi'),
('GV008', 'Tran Thi H', 32, 0, 'Ho Chi Minh City'),
('GV009', 'Le Van I', 41, 1, 'Da Nang'),
('GV010', 'Pham Thi K', 27, 0, 'Can Tho'),
('GV011', 'Hoang Van L', 38, 1, 'Hue'),
('GV012', 'Bui Thi M', 33, 0, 'Nha Trang'),
('GV013', 'Nguyen Van N', 49, 1, 'Hanoi'),
('GV014', 'Tran Thi O', 36, 0, 'Ho Chi Minh City'),
('GV015', 'Le Van P', 42, 1, 'Da Nang'),
('GV016', 'Pham Thi Q', 26, 0, 'Can Tho'),
('GV017', 'Hoang Van R', 51, 1, 'Hue'),
('GV018', 'Bui Thi S', 31, 0, 'Nha Trang'),
('GV019', 'Nguyen Van T', 37, 1, 'Hanoi'),
('GV020', 'Tran Thi U', 29, 0, 'Ho Chi Minh City'),
('GV021', 'Le Van V', 34, 1, 'Da Nang'),
('GV022', 'Pham Thi W', 30, 0, 'Can Tho'),
('GV023', 'Hoang Van X', 46, 1, 'Hue'),
('GV024', 'Bui Thi Y', 28, 0, 'Nha Trang'),
('GV025', 'Nguyen Van Z', 43, 1, 'Hanoi'),
('GV026', 'Tran Thi A1', 39, 0, 'Ho Chi Minh City'),
('GV027', 'Le Van B1', 47, 1, 'Da Nang'),
('GV028', 'Pham Thi C1', 25, 0, 'Can Tho'),
('GV029', 'Hoang Van D1', 50, 1, 'Hue'),
('GV030', 'Bui Thi E1', 33, 0, 'Nha Trang'),
('GV031', 'Nguyen Van F1', 35, 1, 'Hanoi'),
('GV032', 'Tran Thi G1', 32, 0, 'Ho Chi Minh City'),
('GV033', 'Le Van H1', 41, 1, 'Da Nang'),
('GV034', 'Pham Thi I1', 27, 0, 'Can Tho'),
('GV035', 'Hoang Van J1', 38, 1, 'Hue'),
('GV036', 'Bui Thi K1', 34, 0, 'Nha Trang'),
('GV037', 'Nguyen Van L1', 48, 1, 'Hanoi'),
('GV038', 'Tran Thi M1', 36, 0, 'Ho Chi Minh City'),
('GV039', 'Le Van N1', 40, 1, 'Da Nang'),
('GV040', 'Pham Thi O1', 26, 0, 'Can Tho'),
('GV041', 'Hoang Van P1', 51, 1, 'Hue'),
('GV042', 'Bui Thi Q1', 30, 0, 'Nha Trang'),
('GV043', 'Nguyen Van R1', 37, 1, 'Hanoi'),
('GV044', 'Tran Thi S1', 29, 0, 'Ho Chi Minh City'),
('GV045', 'Le Van T1', 44, 1, 'Da Nang'),
('GV046', 'Pham Thi U1', 31, 0, 'Can Tho'),
('GV047', 'Hoang Van V1', 46, 1, 'Hue'),
('GV048', 'Bui Thi W1', 28, 0, 'Nha Trang'),
('GV049', 'Nguyen Van X1', 42, 1, 'Hanoi'),
('GV050', 'Tran Thi Y1', 35, 0, 'Ho Chi Minh City');


INSERT INTO tai_khoan (username, password)
VALUES
('user1', 'password123'),
('user2', 'securepass456'),
('user3', 'mypassword789');


SELECT * FROM giang_vien
SELECT * FROM giang_vien where gioi_tinh = 0