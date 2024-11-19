CREATE DATABASE Buoi12;
GO
USE Buoi12;
GO
use master
DROP DATABASE IF EXISTS Buoi12

alter table sinh_vien 
CREATE TABLE sinh_vien (
	id int IDENTITY PRIMARY KEY NOT NULL,
	ma VARCHAR(100),
	ten VARCHAR(100) NULL,
	tuoi BIGINT NULL,
	dia_chi VARCHAR(100) NULL,
	gioi_tinh BIT NULL,
	lop_id int NULL references lop(id) 
)
GO

DECLARE @i INT = 1;

WHILE @i <= 100
BEGIN
    INSERT INTO sinh_vien (ma, ten, tuoi, dia_chi, gioi_tinh, lop_id)
    VALUES (
        CONCAT('SV', @i),                -- ma (ID as string)
        CONCAT('Student', @i),            -- ten (Name)
        ABS(CHECKSUM(NEWID()) % 30) + 18, -- tuoi (Random age between 18 and 47)
        CONCAT('Address', @i),            -- dia_chi (Random address)
        @i % 2,                           -- gioi_tinh (Gender as 0 or 1)
        (ABS(CHECKSUM(NEWID()) % 3) + 1)  -- lop_id (Random class ID between 1 and 3)
    );

    SET @i = @i + 1;
END;
GO


CREATE TABLE lop (
	id int IDENTITY PRIMARY KEY NOT NULL,
	ma VARCHAR(100),
	ten VARCHAR(100) NULL,
)

GO 
ALTER TABLE sinh_vien
ADD CONSTRAINT FK_sinh_vien_lop
FOREIGN KEY (lop_id) REFERENCES lop(id);
GO
insert into sinh_vien
values	('PH001','Vu Le Nam',20,'Ha Noi',1,001),
		('PH002','Hang',23,'Ha Noi',1,001),
		('PH003','Thao',25,'Ha Noi',1,001)

go
insert into lop
values	('SD001','SD19206'),
		('SD002','SD19216'),
		('SD003','SD19306')

SELECT * FROM lop
SELECT * FROM sinh_vien

SELECT s.id,s.ma,s.ten,s.tuoi,s.dia_chi,s.gioi_tinh,l.id,l.ma,l.ten FROM sinh_vien s JOIN lop l on s.lop_id = l.id

SELECT * FROM sinh_vien WHERE tuoi = 31 and lop_id = 2

SELECT TOP 3 *
FROM sinh_vien
ORDER BY tuoi ASC;
