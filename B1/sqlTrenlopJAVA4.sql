CREATE DATABASE hibernate_demo;
GO
-----------
USE MASTER 
DROP DATABASE IF EXISTS hibernate_demo
-----------
USE hibernate_demo;
GO
CREATE TABLE category (
	id BIGINT IDENTITY NOT NULL,
	category_code varchar(100) NULL,
	category_name varchar(100) NULL,
	CONSTRAINT category_PK PRIMARY KEY (id)
)
GO
CREATE TABLE product (
	id BIGINT IDENTITY NOT NULL,
	category_id BIGINT NULL,
	product_code varchar(100) NULL,
	product_name nvarchar(100) NULL,
	price FLOAT NULL,
	description varchar(100) NULL,
	CONSTRAINT product_PK PRIMARY KEY (id),
	CONSTRAINT product_FK FOREIGN KEY (category_id) REFERENCES category(id)
)
GO
INSERT INTO category
(category_code, category_name)
VALUES('C01', 'Cate1');
INSERT INTO category
(category_code, category_name)
VALUES('C02', 'Cate2');
INSERT INTO category
(category_code, category_name)
VALUES('C03', 'Cate3');
GO

DECLARE @counter INT = 1;

WHILE @counter <= 100
BEGIN
    INSERT INTO category (category_code, category_name)
    VALUES ('Code' + CAST(@counter AS VARCHAR), 'Category Name ' + CAST(@counter AS VARCHAR));

    SET @counter = @counter + 1;
END;

INSERT INTO product
(category_id, product_code, product_name, price, description)
VALUES(1, 'P01', 'product 1', 10.0, 'aaaa');
INSERT INTO product
(category_id, product_code, product_name, price, description)
VALUES(1, 'P02', 'product 2', 11.0, 'ggg');
INSERT INTO product
(category_id, product_code, product_name, price, description)
VALUES(2, 'P03', 'product 3', 111.0, 'hfhf');
INSERT INTO product
(category_id, product_code, product_name, price, description)
VALUES(1, 'P04', 'product 4', 243.0, 'jsnd');

select * from category
delete category where id = 4



select * from product