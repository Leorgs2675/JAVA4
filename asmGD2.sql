CREATE DATABASE FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041;
GO
USE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041]
GO
/****** Object:  Table [dbo].[ChiTietSP]    Script Date: 29/03/2023 12:34:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSP](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdSP] [int] NULL,
	[IdNsx] [int] NULL,
	[IdMauSac] [int] NULL,
	[IdDongSP] [int] NULL,
	[NamBH] [int] NULL,
	[MoTa] [nvarchar](50) NULL,
	[SoLuongTon] [int] NULL,
	[GiaNhap] [decimal](20, 0) NULL,
	[GiaBan] [decimal](20, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 29/03/2023 12:34:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuaHang]    Script Date: 29/03/2023 12:34:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuaHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[ThanhPho] [nvarchar](50) NULL,
	[QuocGia] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DongSP]    Script Date: 29/03/2023 12:34:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DongSP](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 29/03/2023 12:34:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdKH] [int] NULL,
	[IdNV] [int] NULL,
	[Ma] [varchar](20) NULL,
	[NgayTao] [date] NULL,
	[NgayThanhToan] [date] NULL,
	[TenNguoiNhan] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Sdt] [varchar](30) NULL,
	[TinhTrang] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHangChiTiet]    Script Date: 29/03/2023 12:34:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHangChiTiet](
	[IdGioHang] [int] IDENTITY(1,1) NOT NULL,
	[IdChiTietSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](20, 0) NULL,
	[DonGiaKhiGiam] [decimal](20, 0) NULL,
 CONSTRAINT [PK_GioHangCT] PRIMARY KEY CLUSTERED 
(
	[IdGioHang] ASC,
	[IdChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 29/03/2023 12:34:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdKH] [int] NULL,
	[IdNV] [int] NULL,
	[Ma] [varchar](20) NULL,
	[NgayTao] [date] NULL,
	[NgayThanhToan] [date] NULL,
	[NgayShip] [date] NULL,
	[NgayNhan] [date] NULL,
	[TinhTrang] [int] NULL,
	[TenNguoiNhan] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Sdt] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 29/03/2023 12:34:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet](
	[IdHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[IdChiTietSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](20, 0) NULL,
 CONSTRAINT [PK_HoaDonCT] PRIMARY KEY CLUSTERED 
(
	[IdHoaDon] ASC,
	[IdChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 29/03/2023 12:34:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
	[TenDem] [nvarchar](30) NULL,
	[Ho] [nvarchar](30) NULL,
	[NgaySinh] [date] NULL,
	[Sdt] [varchar](30) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[ThanhPho] [nvarchar](50) NULL,
	[QuocGia] [nvarchar](50) NULL,
	[MatKhau] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MauSac]    Script Date: 29/03/2023 12:34:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MauSac](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 29/03/2023 12:34:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
	[TenDem] [nvarchar](30) NULL,
	[Ho] [nvarchar](30) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Sdt] [varchar](30) NULL,
	[MatKhau] [varchar](max) NULL,
	[IdCH] [int] NULL,
	[IdCV] [int] NULL,
	[IdGuiBC] [int] NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSX]    Script Date: 29/03/2023 12:34:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSX](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 29/03/2023 12:34:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietSP] ON 

INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan]) VALUES (1, 1, 1, 1, 1, 1, N'chống điện tốt', 100, CAST(12000 AS Decimal(20, 0)), CAST(19000 AS Decimal(20, 0)))
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan]) VALUES (2, NULL, NULL, NULL, NULL, 1991, N'chống điện tốt', 100, CAST(12000 AS Decimal(20, 0)), NULL)
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan]) VALUES (3, 1, 1, 1, 1, 2, N'xin hãy nhẹ tay', 24, CAST(30000 AS Decimal(20, 0)), CAST(40000 AS Decimal(20, 0)))
SET IDENTITY_INSERT [dbo].[ChiTietSP] OFF
SET IDENTITY_INSERT [dbo].[ChucVu] ON 

INSERT [dbo].[ChucVu] ([Id], [Ma], [Ten]) VALUES (1, N'CV03', N'Phó giám Đốc')
INSERT [dbo].[ChucVu] ([Id], [Ma], [Ten]) VALUES (2, N'CV01', N'Trưởng Phòng Vip')
SET IDENTITY_INSERT [dbo].[ChucVu] OFF
SET IDENTITY_INSERT [dbo].[CuaHang] ON 

INSERT [dbo].[CuaHang] ([Id], [Ma], [Ten], [DiaChi], [ThanhPho], [QuocGia]) VALUES (1, N'CH02', N'hung quanga', N'BacNinh', N'Bac Ninh City', N'VietNam')
SET IDENTITY_INSERT [dbo].[CuaHang] OFF
SET IDENTITY_INSERT [dbo].[DongSP] ON 

INSERT [dbo].[DongSP] ([Id], [Ma], [Ten]) VALUES (1, N'DongSP04', N'Đồ Ăn')
INSERT [dbo].[DongSP] ([Id], [Ma], [Ten]) VALUES (2, N'DongSP05', N'Gỗ')
SET IDENTITY_INSERT [dbo].[DongSP] OFF
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (1, NULL, NULL, N'HD697', CAST(N'2022-10-18' AS Date), NULL, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (2, NULL, NULL, N'HD552', CAST(N'2022-10-18' AS Date), NULL, NULL, NULL, 1, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
SET IDENTITY_INSERT [dbo].[HoaDonChiTiet] ON 

INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (1, 1, 1, CAST(40000 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (2, 1, 2, CAST(19000 AS Decimal(20, 0)))
SET IDENTITY_INSERT [dbo].[HoaDonChiTiet] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([Id], [Ma], [Ten], [TenDem], [Ho], [NgaySinh], [Sdt], [DiaChi], [ThanhPho], [QuocGia], [MatKhau]) VALUES (1, N'KH06', N'Phúc', N'H?ng', N'Ð?', CAST(N'2003-08-03' AS Date), N'0962823303', N'Nam Ð?nh', NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([Id], [Ma], [Ten], [TenDem], [Ho], [NgaySinh], [Sdt], [DiaChi], [ThanhPho], [QuocGia], [MatKhau]) VALUES (2, N'KH05', N'Phúc', N'H?ng', N'Ð?', CAST(N'2003-08-03' AS Date), N'0962823303', N'Nam Ð?nh', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[MauSac] ON 

INSERT [dbo].[MauSac] ([Id], [Ma], [Ten]) VALUES (1, N'MS01', N'Vàng Cứt')
INSERT [dbo].[MauSac] ([Id], [Ma], [Ten]) VALUES (2, N'MS03', N'Tím Mộng Mơ')
SET IDENTITY_INSERT [dbo].[MauSac] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([Id], [Ma], [Ten], [TenDem], [Ho], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [MatKhau], [IdCH], [IdCV], [IdGuiBC], [TrangThai]) VALUES (1, N'NV01', N'Hung', N'Quang', N'Le', N'Nam', CAST(N'2003-08-10' AS Date), N'Bac Ninh', N'0962823303', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[NhanVien] ([Id], [Ma], [Ten], [TenDem], [Ho], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [MatKhau], [IdCH], [IdCV], [IdGuiBC], [TrangThai]) VALUES (2, N'NV02', N'Khai', N'Văn', N'Tran', N'Nữ', CAST(N'2002-09-02' AS Date), N'Lai Chau 98', N'0962823303', NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[NSX] ON 

INSERT [dbo].[NSX] ([Id], [Ma], [Ten]) VALUES (1, N'NSX03', N'Nhà Sản Xuất 2')
INSERT [dbo].[NSX] ([Id], [Ma], [Ten]) VALUES (2, N'NSX02', N'Nhà Sản Xuất 1')
SET IDENTITY_INSERT [dbo].[NSX] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (1, N'SP09', N'Quan Hung Yen')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (2, N'SP05', N'IphoneX')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (3, N'SP07', N'IphoneX')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (4, N'SP06', N'ao coc11111')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (5, N'SP04', N'Trà Sữa')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (6, N'SP02', N'Áo Thun')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
--------------------------------------------------------------------------------------------------
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__ChucVu__3214CC9E888E42E2]    Script Date: 29/03/2023 12:34:48 CH ******/
ALTER TABLE [dbo].[ChucVu] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__CuaHang__3214CC9E65AC44DB]    Script Date: 29/03/2023 12:34:48 CH ******/
ALTER TABLE [dbo].[CuaHang] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__DongSP__3214CC9EA0AA1E38]    Script Date: 29/03/2023 12:34:48 CH ******/
ALTER TABLE [dbo].[DongSP] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__GioHang__3214CC9E260893A5]    Script Date: 29/03/2023 12:34:48 CH ******/
ALTER TABLE [dbo].[GioHang] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__HoaDon__3214CC9EEBF3B431]    Script Date: 29/03/2023 12:34:48 CH ******/
ALTER TABLE [dbo].[HoaDon] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KhachHan__3214CC9E3F5CBF63]    Script Date: 29/03/2023 12:34:48 CH ******/
ALTER TABLE [dbo].[KhachHang] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__MauSac__3214CC9E1EC4D4AA]    Script Date: 29/03/2023 12:34:48 CH ******/
ALTER TABLE [dbo].[MauSac] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NhanVien__3214CC9EAA3D3EF8]    Script Date: 29/03/2023 12:34:48 CH ******/
ALTER TABLE [dbo].[NhanVien] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NSX__3214CC9ED1F5A9F9]    Script Date: 29/03/2023 12:34:48 CH ******/
ALTER TABLE [dbo].[NSX] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__SanPham__3214CC9EA7A18306]    Script Date: 29/03/2023 12:34:48 CH ******/
ALTER TABLE [dbo].[SanPham] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietSP] ADD  DEFAULT (NULL) FOR [NamBH]
GO
ALTER TABLE [dbo].[ChiTietSP] ADD  DEFAULT (NULL) FOR [MoTa]
GO
ALTER TABLE [dbo].[ChiTietSP] ADD  DEFAULT ((0)) FOR [GiaNhap]
GO
ALTER TABLE [dbo].[ChiTietSP] ADD  DEFAULT ((0)) FOR [GiaBan]
GO
ALTER TABLE [dbo].[ChucVu] ADD  DEFAULT (NULL) FOR [Ten]
GO
ALTER TABLE [dbo].[CuaHang] ADD  DEFAULT (NULL) FOR [Ten]
GO
ALTER TABLE [dbo].[CuaHang] ADD  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[CuaHang] ADD  DEFAULT (NULL) FOR [ThanhPho]
GO
ALTER TABLE [dbo].[CuaHang] ADD  DEFAULT (NULL) FOR [QuocGia]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT (NULL) FOR [NgayTao]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT (NULL) FOR [NgayThanhToan]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT (NULL) FOR [TenNguoiNhan]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT (NULL) FOR [Sdt]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[GioHangChiTiet] ADD  DEFAULT ((0)) FOR [DonGia]
GO
ALTER TABLE [dbo].[GioHangChiTiet] ADD  DEFAULT ((0)) FOR [DonGiaKhiGiam]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [NgayTao]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [NgayThanhToan]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [NgayShip]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [NgayNhan]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [TenNguoiNhan]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [Sdt]
GO
ALTER TABLE [dbo].[HoaDonChiTiet] ADD  DEFAULT ((0)) FOR [DonGia]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [TenDem]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [Ho]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [NgaySinh]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [Sdt]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [ThanhPho]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [QuocGia]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [MatKhau]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [Ten]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [TenDem]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [Ho]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [GioiTinh]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [NgaySinh]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [Sdt]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [MatKhau]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD FOREIGN KEY([IdDongSP])
REFERENCES [dbo].[DongSP] ([Id])
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD FOREIGN KEY([IdMauSac])
REFERENCES [dbo].[MauSac] ([Id])
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD FOREIGN KEY([IdNsx])
REFERENCES [dbo].[NSX] ([Id])
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD FOREIGN KEY([IdSP])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD FOREIGN KEY([IdKH])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[GioHangChiTiet]  WITH CHECK ADD  CONSTRAINT [FK1_IdGioHang] FOREIGN KEY([IdGioHang])
REFERENCES [dbo].[GioHang] ([Id])
GO
ALTER TABLE [dbo].[GioHangChiTiet] CHECK CONSTRAINT [FK1_IdGioHang]
GO
ALTER TABLE [dbo].[GioHangChiTiet]  WITH CHECK ADD  CONSTRAINT [FK2_IdChiTietSP] FOREIGN KEY([IdChiTietSP])
REFERENCES [dbo].[ChiTietSP] ([Id])
GO
ALTER TABLE [dbo].[GioHangChiTiet] CHECK CONSTRAINT [FK2_IdChiTietSP]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([IdKH])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([IdNV])
REFERENCES [dbo].[NhanVien] ([Id])
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK1] FOREIGN KEY([IdHoaDon])
REFERENCES [dbo].[HoaDon] ([Id])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK1]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK2] FOREIGN KEY([IdChiTietSP])
REFERENCES [dbo].[ChiTietSP] ([Id])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK2]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([IdCH])
REFERENCES [dbo].[CuaHang] ([Id])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([IdCV])
REFERENCES [dbo].[ChucVu] ([Id])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([IdGuiBC])
REFERENCES [dbo].[NhanVien] ([Id])
GO
