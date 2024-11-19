CREATE
DATABASE BTVNBuoi7;

DROP
DATABASE IF EXISTS BTVNBuoi7;
USE
BTVNBuoi7;

CREATE TABLE giang_vien
(
    id        BIGINT IDENTITY NOT NULL,
    mssv      varchar(100) NULL,
    ten       varchar(100) NULL,
    tuoi      BIGINT NULL,
    gioi_tinh BIT NULL,
    que_quan  varchar(100) NULL,
    CONSTRAINT giang_vien_PK PRIMARY KEY (id)
)
INSERT INTO giang_vien (mssv, ten, tuoi, gioi_tinh, que_quan) VALUES
('GV001', 'Nguyen Van A', 35, 1, 'Ha Noi'),
('GV002', 'Tran Thi B', 40, 0, 'Hai Phong'),
('GV003', 'Le Van C', 28, 1, 'Da Nang'),
('GV004', 'Pham Thi D', 32, 0, 'Ho Chi Minh'),
('GV005', 'Hoang Van E', 45, 1, 'Can Tho'),
('GV006', 'Nguyen Thi F', 29, 0, 'Hue'),
('GV007', 'Tran Van G', 50, 1, 'Nha Trang'),
('GV008', 'Pham Thi H', 33, 0, 'Binh Dinh'),
('GV009', 'Le Thi I', 41, 0, 'Ha Noi'),
('GV010', 'Nguyen Van J', 27, 1, 'Hai Phong'),
('GV011', 'Tran Van K', 39, 1, 'Quang Ninh'),
('GV012', 'Pham Thi L', 30, 0, 'Ha Tinh'),
('GV013', 'Nguyen Van M', 34, 1, 'Bac Ninh'),
('GV014', 'Tran Thi N', 26, 0, 'Nam Dinh'),
('GV015', 'Le Thi O', 38, 0, 'Vinh'),
('GV016', 'Pham Van P', 37, 1, 'Thai Binh'),
('GV017', 'Nguyen Thi Q', 31, 0, 'Quang Ngai'),
('GV018', 'Tran Van R', 29, 1, 'Da Lat'),
('GV019', 'Pham Thi S', 36, 0, 'Lang Son'),
('GV020', 'Le Van T', 42, 1, 'Dong Nai');

SELECT * FROM giang_vien
DELETE from giang_vien where id = 24;
update giang_vien set gioi_tinh= 1 where id = 29;