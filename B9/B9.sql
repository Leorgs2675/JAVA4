/*
 Navicat Premium Dump SQL

 Source Server         : SQLServer
 Source Server Type    : SQL Server
 Source Server Version : 15002000 (15.00.2000)
 Source Host           : localhost:1433
 Source Catalog        : BTVNBuoi8_P2
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002000 (15.00.2000)
 File Encoding         : 65001

 Date: 11/11/2024 08:12:25
*/
CREATE DATABASE BTVNBuoi8_P2
GO

-- ----------------------------
-- Table structure for co_so_lam_viec
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[co_so_lam_viec]') AND type IN ('U'))
	DROP TABLE [dbo].[co_so_lam_viec]
GO

CREATE TABLE [dbo].[co_so_lam_viec] (
  [id] bigint  NOT NULL,
  [ma] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [dia_chi] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[co_so_lam_viec] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of co_so_lam_viec
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'1', N'vHIPg0zUXk', N'H77r99Dz2I')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'2', N'bU1M2ITsPF', N'Kcv5sHro4j')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'3', N'dHm9BdtrUH', N'99Zz7a6dVT')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'4', N'uPz2EUVh3B', N'S71WiNtWoC')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'5', N'Jr3Jod4Opi', N'dubkrwvexF')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'6', N'zJOEmH9EFz', N'10EjSOFVQS')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'7', N'dgwRZ9Y9VB', N'1PO1Tx4RU9')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'8', N'5HgramenVN', N'Z3K1nGPBiI')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'9', N'NCNEPsGtA2', N'H9y55qvUuz')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'10', N'VjF9uhWF6q', N'Jo0XInAMn7')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'11', N'xOyPfZq8AT', N'fAdLZspxdT')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'12', N'GJCnZotEs6', N'YouedFPKfC')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'13', N'zpeEjEx4XW', N'5vZAad2jIn')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'14', N'FcaiKrr4ij', N'Gxz4UHxQXq')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'15', N'mcx70ZYdQY', N'q8FY8hciNV')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'16', N'VaXZ0PSX03', N'jupuCQMntM')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'17', N'Wi0DwqsNBy', N'G9otnaKR7N')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'18', N'gxYd7McuGa', N'hnDBa7Z2wW')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'19', N'Qn9BFzYS0R', N'TrGrU4Do8m')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'20', N'FDUUyi8z26', N'cxbNkrt9Xk')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'21', N'HPHikFqtHc', N'0hOG9K5ytL')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'22', N'glHyfCj1PN', N'xz6GSEq470')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'23', N'0FuzB6HbFe', N'Lrbq07VYon')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'24', N'3YnDF9ivm3', N'EoGMNj4XUc')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'25', N'v0z19pLslE', N'W7jN4VKGNe')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'26', N'm3gznb3r8Z', N'WdTfOBc4zP')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'27', N'ZwbkPeqglW', N'8smpJz5ntI')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'28', N'lXjDnpuMlX', N'Nfy9ztG1wo')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'29', N'FIyU6OHcAf', N'QrfmTMTsfN')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'30', N'TerV5LE4fH', N'pO7SSOzVZS')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'31', N'jd1gXPsiFl', N'P1S0Ymkitl')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'32', N'vvIygog1rd', N'QzIsdRflsS')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'33', N's42MIWOA2W', N'KNrSlwlgZh')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'34', N'9dTpPAlcoY', N'FREqD8213d')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'35', N'tvjGtAcVPY', N'mQNbAsLuG7')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'36', N'lCYD7ZsXNY', N'LEotFJlIxP')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'37', N'Wzd6uGru8o', N'8SejY7viSy')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'38', N'44YulXvSLQ', N'TDhWkGQexL')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'39', N'omB1jbE1yx', N'9sjX5gEkdi')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'40', N'Q92QIiC7sv', N'7DexP4vhaC')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'41', N'4LBb4114Z1', N'xcYr09Wf4R')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'42', N'quhkWKKpC2', N'mSGOwZZ7zf')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'43', N'XnFn506vvP', N'E80Y2EaRzT')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'44', N'HAnpghBN8v', N'1WlXCGWMMA')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'45', N'OvwlyfIe1w', N'cD9y5PKBYz')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'46', N'0KAsuMy74X', N'6uBg4mXRYg')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'47', N'f8GbRSVjr0', N'KBGHLmNLlK')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'48', N'ykXEZve3j5', N'GHssMPemvV')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'49', N'EYQBuIVlij', N'5XtV5pQe7f')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'50', N'e8W21S1GBr', N'qC4UyXdApC')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'51', N'bbaQwrVVIT', N'iaqqcLSfce')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'52', N'ThPv6cdxqf', N'qLFsiohmhd')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'53', N'3KHjj3Ng6j', N'av0fJ0xRKO')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'54', N'Twmg7UuGST', N'HNQyOy35CT')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'55', N'IycP3lMz5u', N'PF6y3iqYcw')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'56', N'JVQpIRZOYx', N'WI4HujM2DL')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'57', N'aIkKAvWo8c', N'3NfH7fbKO9')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'58', N'4KSxVlVVEK', N'pwSXwyweX0')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'59', N'I96DDWranK', N'nEwN3nx9X6')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'60', N'kEm3kxSd7v', N'G15HAEhuHx')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'61', N'DlxcJYoRJB', N'S1dXPQECeg')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'62', N'IIgxguwCqm', N'1srfWkM2fN')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'63', N'splRoqR12r', N'SoqHi6dWAM')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'64', N'hxVhcrvpyZ', N'54RPynoLpf')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'65', N'gMMcQ9fbq0', N'7UlFTP9ymt')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'66', N'mKzVDec3r2', N'OcM0Wk1Xcx')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'67', N'1n5F43NHBt', N'zZ0oPBf8Pw')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'68', N'ZPdrYNX9D1', N'ztzfs9Dfa3')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'69', N'YIeBPTE4i6', N'wbDF6GVqVA')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'70', N'p6A0V35Vsg', N'BNNMdpypjd')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'71', N'9El1PqMy4H', N'p77B480jKI')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'72', N'sRhgwznpPp', N'NY7WvfHWNv')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'73', N'mtmt0j80vw', N'lP2Wm0UJbD')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'74', N'a2dTXHxyrQ', N'f2jE6o4Ri9')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'75', N'nXwzsMQFsj', N'XXK6YrHU3C')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'76', N'oHWdcDv26S', N'KqEJ4yFbS1')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'77', N'tQihrnBZ4n', N'P9FhqCVuY4')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'78', N'Am5AHUSEQf', N'iWZuSB0TaH')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'79', N'tmgu93Pv0s', N'sUReAzRRHg')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'80', N'E91pagZ4Pg', N'HtiCGzHuLf')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'81', N'a6ad7v2hJn', N'2MeBlMFsO9')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'82', N'NXF2AjEjVE', N'1y73XOr7Cb')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'83', N'k6E7HMqqT2', N'5V8VVeHxD5')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'84', N'96BKVmTxf5', N'EWH1PVKqxw')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'85', N'nyX2Kzwx1v', N'dlSfKdtPtG')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'86', N'F8yJM89mNe', N'sgpJGpLrGV')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'87', N'6I4UZPE1Ls', N'j7lIsKQtRg')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'88', N'adrW1tWGSj', N'SvQzLeM8Bs')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'89', N'UDaPitPET8', N'BO45lE9hqO')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'90', N'zdENTI2gSg', N'3rdjRuoZR5')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'91', N'Rz5QRsIKEg', N'7ojR0L4yQy')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'92', N'2htKr6HEkl', N'Gbzkrn0BAQ')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'93', N'qIEHYVTNPP', N'tVF2y2ODyp')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'94', N'r61i14eoWb', N's63igGSagX')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'95', N'o1pAbRswC0', N'0veiOG8j29')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'96', N'4tnWzzaPvz', N'jNo5iKh8Op')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'97', N'smvkHk436r', N'wEywrOGD8o')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'98', N'wLwl9FDfaW', N'JqfU4lu1W7')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'99', N'EPojNtN3CZ', N'4a50dpX0X9')
GO

INSERT INTO [dbo].[co_so_lam_viec] ([id], [ma], [dia_chi]) VALUES (N'100', N'ERVUKaL3Av', N'YNOjtAPnuT')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for nhan_vien
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[nhan_vien]') AND type IN ('U'))
	DROP TABLE [dbo].[nhan_vien]
GO

CREATE TABLE [dbo].[nhan_vien] (
  [id] bigint  NOT NULL,
  [ten] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [tuoi] int  NULL,
  [gioi_tinh] bit  NULL,
  [dia_chi] nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [co_so_lam_viec_id] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[nhan_vien] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of nhan_vien
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'1', N'zFF2eqv1Ox', N'216', N'0', N'K', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'2', N'MaDNuIGOwH', N'513', N'0', N'u', N'2')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'3', N'tbtts8evz0', N'671', N'1', N'G', N'3')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'4', N'EHYFHpDEIq', N'638', N'0', N'q', N'4')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'5', N'SdqWZ0U1hm', N'683', N'1', N'7', N'5')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'6', N'JYTHJtc2cY', N'331', N'1', N'b', N'6')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'7', N'XyccJlhjlJ', N'263', N'0', N'3', N'7')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'8', N'siL224I4OP', N'506', N'0', N'U', N'8')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'9', N'7FOrc1Lp0l', N'909', N'1', N'o', N'9')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'10', N'SaJW4XeuGR', N'111', N'1', N'n', N'10')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'11', N't9mclVmUOb', N'663', N'1', N'9', N'11')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'12', N'rFxLiCHvGi', N'25', N'1', N's', N'12')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'13', N'wBGtWoOczq', N'87', N'0', N'0', N'13')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'14', N'mMjkzIBtnG', N'90', N'0', N'2', N'14')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'15', N'Pu8M6cOu4o', N'288', N'0', N'f', N'15')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'16', N'1IIASjWuWa', N'986', N'1', N'v', N'16')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'17', N'5IZhd4p0nu', N'194', N'0', N'r', N'17')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'18', N'Kidmp5wwxm', N'112', N'1', N'q', N'18')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'19', N'fLN0DVy0Zk', N'154', N'1', N'Q', N'19')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'20', N'osTbeBtoy7', N'368', N'0', N'3', N'20')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'21', N'UJkmPeFn0r', N'973', N'1', N'1', N'21')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'22', N'kBSwx1luI0', N'672', N'1', N'z', N'22')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'23', N'1n28asKEIz', N'892', N'1', N'B', N'23')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'24', N'PRfBIx2zsI', N'828', N'0', N'z', N'24')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'25', N'HI5PX2yBmW', N'98', N'0', N'Q', N'25')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'26', N'ZVU2Q1Ee3j', N'190', N'1', N'3', N'26')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'27', N'BKhuCsCdZK', N'346', N'1', N't', N'27')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'28', N'45fXowK4or', N'282', N'0', N'y', N'28')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'29', N'BW9an6Bj57', N'208', N'0', N'a', N'29')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'30', N'vpOlS70WwY', N'393', N'1', N'X', N'30')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'31', N'Uvg7FCzb3e', N'439', N'1', N'Y', N'31')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'32', N'srwhgeDujA', N'930', N'0', N'C', N'32')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'33', N'bigIrFcNkp', N'415', N'0', N'Q', N'33')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'34', N'2EODWvVexD', N'310', N'0', N'S', N'34')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'35', N'6VI3pZwnVw', N'828', N'1', N'W', N'35')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'36', N'iV0E9RaCOF', N'947', N'0', N'W', N'36')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'37', N'k8xkLnWvNz', N'103', N'1', N'K', N'37')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'38', N'p3CLGku82r', N'407', N'1', N'O', N'38')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'39', N'STCgRkrmdf', N'229', N'0', N'A', N'39')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'40', N'yzbNzi4YdH', N'385', N'1', N'C', N'40')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'41', N'r6IoA3vxCS', N'310', N'0', N'C', N'41')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'42', N'wigf9DFJJi', N'789', N'1', N'4', N'42')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'43', N'ViAdfwDOXQ', N'655', N'0', N'N', N'43')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'44', N'uu4B068A8f', N'289', N'1', N'J', N'44')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'45', N'05RIsTgRAo', N'787', N'0', N'M', N'45')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'46', N'GfNnTEFKaU', N'169', N'0', N'M', N'46')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'47', N'W8zKq9bbZY', N'778', N'1', N'N', N'47')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'48', N'gNirXV7HgN', N'878', N'1', N'8', N'48')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'49', N'Ha4WR3IkBr', N'80', N'0', N'i', N'49')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'50', N'd6ubesfT3K', N'50', N'0', N'l', N'50')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'51', N'dVBvKhrHvA', N'775', N'0', N'r', N'51')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'52', N'zf9S42WnrB', N'833', N'1', N'5', N'52')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'53', N'WQvPzfc31k', N'418', N'1', N't', N'53')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'54', N'5jCRe05dEo', N'921', N'1', N'g', N'54')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'55', N'FilUx9akxu', N'212', N'0', N'e', N'55')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'56', N'rKlWHAM96w', N'706', N'0', N'K', N'56')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'57', N'eEvcnPry6e', N'286', N'0', N'b', N'57')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'58', N'SlwdF1TKeh', N'16', N'1', N'd', N'58')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'59', N'BtZOF7Nf5I', N'28', N'0', N'p', N'59')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'60', N'UUsdi3hoIk', N'679', N'1', N'1', N'60')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'61', N'2HTmGDfXur', N'215', N'0', N'0', N'61')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'62', N'SqFtCkovAS', N'38', N'0', N'E', N'62')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'63', N'hfJYLeAvud', N'352', N'0', N'i', N'63')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'64', N'3qsH7NCroC', N'500', N'0', N'E', N'64')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'65', N'euF3h5Q23B', N'435', N'1', N'O', N'65')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'66', N'IpSlrOD8Oi', N'897', N'0', N'f', N'66')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'67', N'hNTlnOFppB', N'575', N'1', N'T', N'67')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'68', N'im7wJ7dmu8', N'6', N'1', N'7', N'68')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'69', N'8ZWtREwPbh', N'395', N'0', N'U', N'69')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'70', N'Iih1DaLSCA', N'150', N'1', N'0', N'70')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'71', N'FZbnA8WGWw', N'755', N'1', N'i', N'71')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'72', N'7Mgyk4rLiN', N'231', N'0', N'k', N'72')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'73', N'28gmwtYjPP', N'860', N'1', N'M', N'73')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'74', N'3N1HTX8j7a', N'175', N'1', N'T', N'74')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'75', N'ft3XyU5uJj', N'966', N'1', N'w', N'75')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'76', N'eUztfEkRhf', N'410', N'0', N'e', N'76')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'77', N'iubFcsT0ea', N'956', N'1', N'u', N'77')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'78', N'T1Wsn1Om76', N'51', N'1', N'6', N'78')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'79', N'm8zG8Rc3GX', N'454', N'0', N'o', N'79')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'80', N'zwtGtMANaj', N'957', N'0', N'3', N'80')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'81', N'VQyajvu6Sa', N'877', N'1', N'8', N'81')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'82', N'D8gnUcddvt', N'296', N'1', N'G', N'82')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'83', N'WoopeSRmuj', N'246', N'0', N'N', N'83')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'84', N'ZxYNp1ShVQ', N'986', N'0', N'u', N'84')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'85', N'bYEMRjcO9d', N'839', N'1', N'D', N'85')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'86', N'dzaiuPNuIQ', N'514', N'0', N'7', N'86')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'87', N'q2O8QWnHpw', N'293', N'1', N'M', N'87')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'88', N'kgsM5YXkik', N'570', N'1', N'1', N'88')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'89', N'IgOGodQskN', N'50', N'1', N'5', N'89')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'90', N'YJmWpMd612', N'764', N'0', N'X', N'90')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'91', N'l37SQQWIkz', N'598', N'1', N'y', N'91')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'92', N'2iu5xMtarW', N'169', N'0', N'O', N'92')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'93', N'ZbaX5nUksV', N'174', N'1', N'q', N'93')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'94', N'3Uy20AJV14', N'864', N'0', N'2', N'94')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'95', N'cTrxmRJbA9', N'330', N'0', N'w', N'95')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'96', N'h1FrhMoFKA', N'403', N'1', N'C', N'96')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'97', N'KMCwHNKnC3', N'275', N'1', N'y', N'97')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'98', N'nc19wHHUMT', N'662', N'0', N'c', N'98')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'99', N'bcojx9HWvj', N'316', N'1', N'8', N'99')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ten], [tuoi], [gioi_tinh], [dia_chi], [co_so_lam_viec_id]) VALUES (N'100', N'i5TAMeqLys', N'70', N'0', N'e', N'100')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[user]') AND type IN ('U'))
	DROP TABLE [dbo].[user]
GO

CREATE TABLE [dbo].[user] (
  [id] bigint  NOT NULL,
  [username] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [password] varchar(70) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [deleted] bit  NULL
)
GO

ALTER TABLE [dbo].[user] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'1', N'Jeffery Mason', N'lXdsONvh9M', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'2', N'Sakurai Yamato', N'6RN2FjLBih', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'3', N'Tiffany Anderson', N'qflWjc5s0N', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'4', N'Diane Myers', N'074JgAJYii', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'5', N'Yan Rui', N'uXKz0Wg5zT', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'6', N'Ying Tin Wing', N'zrnafRnvKF', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'7', N'Dorothy Scott', N'IMSzFdufP3', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'8', N'Ishii Hikari', N'o4BOpgTYn5', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'9', N'Siu Lai Yan', N'XZ3ld6XHfj', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'10', N'Uchida Mitsuki', N'eeAabMQV3m', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'11', N'Roy Martinez', N'cyJm0Fqqr4', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'12', N'Miyazaki Sakura', N'aFfp0RAT00', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'13', N'Chin Hiu Tung', N'qoHMYhs3OS', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'14', N'Bradley Mcdonald', N'0uJt0hc7We', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'15', N'Siu Sau Man', N'qqoAxuH3f4', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'16', N'Yam Sum Wing', N'JHWEOdTeBh', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'17', N'Lee Wing Fat', N'k7ctSmPuL8', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'18', N'Lam Hui Mei', N'yNOjPc2Fjx', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'19', N'Deng Yunxi', N'B3k8QGVY5B', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'20', N'Yamamoto Hikari', N'P7cQBAwhOG', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'21', N'Hirano Riku', N'a4LOEqRYDz', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'22', N'Lok Cho Yee', N'382bbyxd1o', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'23', N'Yuen Chun Yu', N'rjeZmBbWno', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'24', N'Chiba Mio', N'NqjtjZhB8k', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'25', N'Li Zhiyuan', N'RRBj2TNIEZ', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'26', N'Nakagawa Kenta', N'ZVu0tITEWz', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'27', N'Fan Xiuying', N'Z9piOrbR1w', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'28', N'Cheng Xiuying', N'fFiY8sXBsg', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'29', N'Zhao Zitao', N'mVu8DTTL8V', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'30', N'Siu Ting Fung', N'4GAdlickZ4', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'31', N'Rosa Patterson', N'7qiXln2X1r', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'32', N'Shimada Daisuke', N'y3nMdQYFTr', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'33', N'Troy Mitchell', N'KmgYM8gWge', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'34', N'Tang Hui Mei', N'T1bsCeykfU', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'35', N'Sheila Mcdonald', N'cVVcMWGB8T', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'36', N'Yokoyama Yuito', N'e28KVzM1Fu', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'37', N'Yeung Ting Fung', N'4NTw1Wukzc', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'38', N'Cheng Lan', N'SfPwaRGgB3', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'39', N'Jessica Hicks', N'721jtHqJ9x', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'40', N'Diana Mills', N'BfyRO6pf7B', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'41', N'Yamaguchi Aoi', N'iAnjBat9vu', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'42', N'Tsui Yu Ling', N'Fj6s4km0lS', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'43', N'Siu Wing Sze', N'e3liPlvuof', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'44', N'Wu Wing Suen', N'uvFGMjX4AI', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'45', N'Lu Anqi', N'jhCv1JyomC', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'46', N'Debbie Grant', N'KtRErtTjop', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'47', N'Lu Zitao', N'cnWqBTdlyX', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'48', N'Mori Eita', N'Tg4ktNORYr', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'49', N'Matsumoto Mio', N'w3GP4PHIuZ', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'50', N'Otsuka Momoe', N'mJpFevATSb', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'51', N'Qiu Yuning', N'MRgFx7GhYF', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'52', N'Tse Wing Fat', N'aIEXHMVhkZ', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'53', N'Tan Zhiyuan', N'R1X475mcV2', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'54', N'Yamazaki Ayato', N'1iPi6l2lwg', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'55', N'Janet Ortiz', N'pSDciCcocK', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'56', N'Nakamori Minato', N'xuNPYedDFj', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'57', N'Anita James', N'vvQlqMJaJt', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'58', N'Zhou Xiaoming', N'Q3Tq0gXEp6', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'59', N'Sakamoto Momoe', N'r5yL57sArb', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'60', N'Hung Wai Han', N'HcgnqrgBJG', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'61', N'Justin Diaz', N'W68wIf4Ufu', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'62', N'Yamamoto Tsubasa', N'dnDN9tYzXU', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'63', N'Carmen Butler', N'eOARtBoNtx', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'64', N'Li Xiuying', N'Xi7SiTCda3', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'65', N'Otsuka Hazuki', N'bv1nm1toIc', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'66', N'Kao Ming Sze', N'KvsfvmIZTx', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'67', N'Samuel Dixon', N'wZpUOZ7ZZP', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'68', N'Tian Shihan', N'OWk5uXxIo5', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'69', N'Suzuki Momoe', N'5Vp4YUOLfa', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'70', N'Luo Lu', N'aWaJfs8ZRx', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'71', N'Tony Hicks', N'R1NGCB9Hzb', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'72', N'Maruyama Yota', N'EMGfs0Tzki', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'73', N'Kato Mitsuki', N'efhKh43N4s', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'74', N'Ishida Ayato', N'GH5PT1BekK', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'75', N'Arai Mio', N'Q5Qt1xbNiK', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'76', N'Tsang Ming Sze', N'SN3OLzbQgE', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'77', N'Yamada Itsuki', N'gDnJttyKe2', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'78', N'Micheal Howard', N'Bbxq56hqRz', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'79', N'Ren Zitao', N'kCTOYojZiR', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'80', N'Jerry Patterson', N'bRbYF71r5O', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'81', N'Li Shihan', N'hg7ny7BSTW', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'82', N'Peggy Cook', N'V7XsUysfQt', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'83', N'Saito Sara', N'JiiIcMv8Cn', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'84', N'Miyamoto Hana', N'OFCIEKLE6I', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'85', N'Choi Ka Ling', N'Uc0O4dU9U2', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'86', N'Hasegawa Seiko', N'JU9acmuNWU', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'87', N'He Rui', N'sujRS7kcsV', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'88', N'Choi Wai Yee', N'JfYtwd1Wtx', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'89', N'Huang Lu', N'KYlzpw9H7d', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'90', N'Tsang Chieh Lun', N'L3cTmJ7Ei6', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'91', N'Fang Zhiyuan', N'hthiycMlC5', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'92', N'Xiong Rui', N'NjACquUUI1', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'93', N'Ye Yunxi', N'edc6C1RVXX', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'94', N'Carol Walker', N'Zq7B6s24rE', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'95', N'Hayashi Yuito', N'EChwcWQ4lQ', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'96', N'Wu Hui Mei', N'GsEUyHgHIe', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'97', N'Gu Zhiyuan', N'ddXyKUupPM', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'98', N'Harada Ren', N'JesLrkqxbX', N'0')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'99', N'Zhou Zhennan', N'JJMGUJWY9q', N'1')
GO

INSERT INTO [dbo].[user] ([id], [username], [password], [deleted]) VALUES (N'100', N'Nishimura Shino', N'nAsaqLszXP', N'1')
GO

COMMIT
GO


-- ----------------------------
-- Primary Key structure for table co_so_lam_viec
-- ----------------------------
ALTER TABLE [dbo].[co_so_lam_viec] ADD CONSTRAINT [PK__co_so_la__3213E83FA905CD2A] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table nhan_vien
-- ----------------------------
ALTER TABLE [dbo].[nhan_vien] ADD CONSTRAINT [PK__nhan_vie__E72312AA5D88F1E6] PRIMARY KEY CLUSTERED ([id], [co_so_lam_viec_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table user
-- ----------------------------
ALTER TABLE [dbo].[user] ADD CONSTRAINT [PK__user__3213E83F8AD99399] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table nhan_vien
-- ----------------------------
ALTER TABLE [dbo].[nhan_vien] ADD CONSTRAINT [co_so_lam_viec_fk] FOREIGN KEY ([co_so_lam_viec_id]) REFERENCES [dbo].[co_so_lam_viec] ([id]) ON DELETE CASCADE ON UPDATE NO ACTION


SELECT * FROM nhan_vien