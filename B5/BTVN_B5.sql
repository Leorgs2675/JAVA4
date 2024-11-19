CREATE DATABASE demo;

USE demo;

CREATE TABLE may_tinh(
	ma int PRIMARY KEY IDENTITY NOT NULL ,
	ten nvarchar(100),
	gia float,
	bo_nho nvarchar(100),
	mau_sac nvarchar(100),
	hang nvarchar(100),
	mieu_ta nvarchar(100)
)

SELECT * FROM may_tinh
SELECT mau_sac,hang FROM may_tinh
DECLARE @i INT = 1;

WHILE @i <= 100
BEGIN
    INSERT INTO may_tinh (ten, gia, bo_nho, mau_sac, hang, mieu_ta)
    VALUES (
        CONCAT('Nguyen Hoang Tien ', @i),               -- Random name with incrementing number
        ROUND(RAND() * 5000, 2),                        -- Random price between 0 and 5000
        CONCAT(CAST((FLOOR(RAND() * 16) + 4) AS NVARCHAR), 'GB'),  -- Random memory between 4GB and 20GB
        CASE WHEN RAND() < 0.5 THEN N'Đen' ELSE N'Bạc' END, -- Random color: either "Đen" or "Bạc"
        CASE WHEN RAND() < 0.5 THEN N'MSI' ELSE N'ASUS' END, -- Random brand: either "MSI" or "ASUS"
        'Sample description'                             -- Static description
    );

    SET @i = @i + 1;
END;
