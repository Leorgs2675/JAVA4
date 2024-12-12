CREATE DATABASE Lab5_6
GO
USE [Lab5_6]
GO

CREATE TABLE [dbo].[chi_tiet_hoa_don](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hoa_don_id] [int] NULL,
	[phong_id] [int] NULL,
	[ma] [varchar](20) NULL,
	[ngay_gio_nhan_phong] [date] NULL,
	[ngay_gio_tra_phong] [date] NULL,
	[thoi_gian_thue] [int] NULL,
	[gia_phong] [decimal](20, 0) NULL,
	[qua_gio] [float] NULL,
	[ghi_chu] [nvarchar](50) NULL,
	[trang_thai] [int] NULL,
	[ngay_tao] [date] NULL,
	[ngay_chinh_sua] [date] NULL,
 CONSTRAINT [chi_tiet_hoa_don_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chuc_vu]    Script Date: 4/27/2023 11:58:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chuc_vu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[phong_ban_id] [int] NULL,
	[ma] [varchar](20) NULL,
	[ten] [nvarchar](30) NULL,
	[ngay_bat_dau] [date] NULL,
	[ngay_ap_dung] [date] NULL,
	[ghi_chu] [nvarchar](50) NULL,
	[trang_thai] [int] NULL,
	[ngay_tao] [date] NULL,
	[ngay_chinh_sua] [date] NULL,
 CONSTRAINT [chuc_vu_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[co_so]    Script Date: 4/27/2023 11:58:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[co_so](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tai_khoan_ngan_hang_id] [int] NULL,
	[ma] [varchar](20) NULL,
	[ten_co_so] [nvarchar](50) NULL,
	[ho_ten_nguoi_dai_dien] [nvarchar](50) NULL,
	[ma_so_thue] [varchar](20) NULL,
	[so_dien_thoai] [varchar](20) NULL,
	[email] [varchar](50) NULL,
	[ghi_chu] [nvarchar](100) NULL,
	[ten_tinh] [nvarchar](50) NULL,
	[ten_thanh_pho] [nvarchar](50) NULL,
	[ten_quan_huyen] [nvarchar](50) NULL,
	[trang_thai] [int] NULL,
	[ngay_tao] [date] NULL,
	[ngay_chinh_sua] [date] NULL,
 CONSTRAINT [co_so_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dat_phong]    Script Date: 4/27/2023 11:58:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dat_phong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[khach_hang_id] [int] NULL,
	[loai_phong_id] [int] NULL,
	[ma] [varchar](20) NULL,
	[ten] [varchar](50) NULL,
	[ngay_gio_dat] [date] NULL,
	[so_luong_khach] [int] NULL,
	[so_luong_phong_dat] [int] NULL,
	[ghi_chu] [nvarchar](50) NULL,
	[trang_thai] [int] NULL,
	[ngay_tao] [date] NULL,
	[ngay_chinh_sua] [date] NULL,
 CONSTRAINT [dat_phong_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dich_vu]    Script Date: 4/27/2023 11:58:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dich_vu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[loai_dich_vu_id] [int] NULL,
	[ma] [varchar](20) NULL,
	[ten] [nvarchar](30) NULL,
	[don_vi_tinh] [nvarchar](30) NULL,
	[don_gia] [decimal](20, 0) NULL,
	[mo_ta] [nvarchar](50) NULL,
	[trang_thai] [int] NULL,
	[ngay_tao] [date] NULL,
	[ngay_chinh_sua] [date] NULL,
 CONSTRAINT [dich_vu_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dich_vu_su_dung]    Script Date: 4/27/2023 11:58:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dich_vu_su_dung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dich_vu_id] [int] NULL,
	[chi_tiet_hoa_don_id] [int] NULL,
	[ma] [varchar](20) NULL,
	[ten] [varchar](50) NULL,
	[so_luong] [int] NULL,
	[ghi_chu] [nvarchar](50) NULL,
	[trang_thai] [int] NULL,
	[ngay_tao] [date] NULL,
	[ngay_chinh_sua] [date] NULL,
 CONSTRAINT [dich_vu_su_dung_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[giao_dich]    Script Date: 4/27/2023 11:58:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giao_dich](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma] [varchar](20) NULL,
	[hinh_thuc_thanh_toan] [int] NULL,
	[ngay_thanh_toan] [date] NULL,
	[trang_thai] [int] NULL,
	[ngay_tao] [date] NULL,
	[ngay_sua] [date] NULL,
 CONSTRAINT [giao_dich_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[giao_han]    Script Date: 4/27/2023 11:58:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giao_han](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tai_khoan_id] [int] NULL,
	[ma] [varchar](20) NULL,
	[ten] [varchar](50) NULL,
	[thoi_diem_bat_dau] [date] NULL,
	[thoi_diem_ket_thuc] [date] NULL,
	[so_tien_dau_ngay] [decimal](20, 0) NULL,
	[tong_tien_hoa_don] [decimal](20, 0) NULL,
	[tong_tien_tam_tinh] [decimal](20, 0) NULL,
	[tong_tien_thu_thue] [decimal](20, 0) NULL,
	[tong_tien_chenh_lech] [decimal](20, 0) NULL,
	[tong_tien_phat_sinh] [decimal](20, 0) NULL,
	[don_vi_tinh] [nvarchar](30) NULL,
	[trang_thai_thu_tien] [int] NULL,
	[ghi_chu] [nvarchar](50) NULL,
	[trang_thai] [int] NULL,
	[ngay_tao] [date] NULL,
	[ngay_chinh_sua] [date] NULL,
 CONSTRAINT [giao_han_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoa_don]    Script Date: 4/27/2023 11:58:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoa_don](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[khach_hang_id] [int] NULL,
	[tai_khoan_id] [int] NULL,
	[giao_dich_id] [int] NULL,
	[dat_phong_id] [int] NULL,
	[ma] [varchar](20) NULL,
	[tien_khach_dua] [decimal](20, 0) NULL,
	[tien_tra_lai] [decimal](20, 0) NULL,
	[tien_coc] [decimal](20, 0) NULL,
	[phu_thu] [decimal](20, 0) NULL,
	[thue] [decimal](20, 0) NULL,
	[giam_gia] [decimal](20, 0) NULL,
	[tong_tien] [decimal](20, 0) NULL,
	[ghi_chu] [nvarchar](50) NULL,
	[trang_thai] [int] NULL,
	[ngay_tao] [date] NULL,
	[ngay_chinh_sua] [date] NULL,
 CONSTRAINT [hoa_don_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khach_hang]    Script Date: 4/27/2023 11:58:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khach_hang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma] [varchar](20) NULL,
	[ho] [nvarchar](20) NULL,
	[ten_dem] [nvarchar](20) NULL,
	[ten] [nvarchar](20) NULL,
	[gioi_tinh] [bit] NULL,
	[ngay_sinh] [date] NULL,
	[email] [varchar](50) NULL,
	[sdt] [varchar](11) NULL,
	[dia_chi] [nvarchar](100) NULL,
	[quoc_tich] [nvarchar](100) NULL,
	[trang_thai] [int] NULL,
	[ngay_tao] [date] NULL,
	[ngay_chinh_sua] [date] NULL,
 CONSTRAINT [khach_hang_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lau]    Script Date: 4/27/2023 11:58:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lau](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[co_so_id] [int] NULL,
	[ma] [varchar](20) NULL,
	[ten] [varchar](50) NULL,
	[so_luong] [int] NULL,
	[ghi_chu] [nvarchar](50) NULL,
	[trang_thai] [int] NULL,
	[ngay_tao] [date] NULL,
	[ngay_chinh_sua] [date] NULL,
 CONSTRAINT [lau_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loai_dich_vu]    Script Date: 4/27/2023 11:58:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loai_dich_vu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma] [varchar](20) NULL,
	[ten] [nvarchar](30) NULL,
	[mo_ta] [nvarchar](50) NULL,
	[trang_thai] [int] NULL,
	[ngay_tao] [date] NULL,
	[ngay_sua] [date] NULL,
 CONSTRAINT [loai_dich_vu_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loai_phong]    Script Date: 4/27/2023 11:58:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loai_phong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma] [varchar](20) NULL,
	[ten] [varchar](50) NULL,
	[don_gia_theo_gio] [decimal](20, 0) NULL,
	[don_gia_qua_ngay] [decimal](20, 0) NULL,
	[don_gia_qua_dem] [decimal](20, 0) NULL,
	[so_nguoi] [int] NULL,
	[ghi_chu] [nvarchar](50) NULL,
	[tien_qua_gio] [decimal](20, 0) NULL,
	[trang_thai] [int] NULL,
	[ngay_tao] [date] NULL,
	[ngay_chinh_sua] [date] NULL,
 CONSTRAINT [loai_phong_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loai_phong_ban]    Script Date: 4/27/2023 11:58:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loai_phong_ban](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma] [varchar](20) NULL,
	[ten] [nvarchar](30) NULL,
	[so_luong] [int] NULL,
	[ghi_chu] [nvarchar](50) NULL,
	[trang_thai] [int] NULL,
	[ngay_tao] [date] NULL,
	[ngay_sua] [date] NULL,
 CONSTRAINT [loai_phong_ban_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phong]    Script Date: 4/27/2023 11:58:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[loai_phong_id] [int] NULL,
	[co_so_id] [int] NULL,
	[lau_id] [int] NULL,
	[ma] [varchar](20) NULL,
	[ten] [varchar](50) NULL,
	[so_luong] [int] NULL,
	[ghi_chu] [nvarchar](50) NULL,
	[trang_thai] [int] NULL,
	[ngay_tao] [date] NULL,
	[ngay_chinh_sua] [date] NULL,
 CONSTRAINT [phong_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phong_ban]    Script Date: 4/27/2023 11:58:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phong_ban](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[loai_phong_ban_id] [int] NULL,
	[ma] [varchar](20) NULL,
	[ten] [nvarchar](30) NULL,
	[so_luong_phong_ban] [int] NULL,
	[so_luong_nhan_vien] [int] NULL,
	[ghi_chu] [nvarchar](50) NULL,
	[trang_thai] [int] NULL,
	[ngay_tao] [date] NULL,
	[ngay_chinh_sua] [date] NULL,
 CONSTRAINT [phong_ban_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quyen_han]    Script Date: 4/27/2023 11:58:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quyen_han](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma] [varchar](20) NULL,
	[ten] [nvarchar](30) NULL,
	[mo_ta] [nvarchar](50) NULL,
	[trang_thai] [int] NULL,
	[ngay_tao] [date] NULL,
	[ngay_sua] [date] NULL,
 CONSTRAINT [quyen_han_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tai_khoan]    Script Date: 4/27/2023 11:58:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tai_khoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[co_so_id] [int] NULL,
	[phong_ban_id] [int] NULL,
	[chuc_vu_id] [int] NULL,
	[ma] [varchar](20) NULL,
	[ten_tai_khoan] [varchar](50) NULL,
	[mat_khau] [varchar](65) NULL,
	[ho] [nvarchar](20) NULL,
	[ten_dem] [nvarchar](20) NULL,
	[ten] [nvarchar](20) NULL,
	[gioi_tinh] [bit] NULL,
	[ngay_sinh] [date] NULL,
	[email] [varchar](50) NULL,
	[sdt] [varchar](11) NULL,
	[cmnd] [varchar](20) NULL,
	[trang_thai] [int] NULL,
	[ngay_tao] [date] NULL,
	[ngay_chinh_sua] [date] NULL,
 CONSTRAINT [tai_khoan_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tai_khoan_ngan_hang]    Script Date: 4/27/2023 11:58:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tai_khoan_ngan_hang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma] [varchar](20) NULL,
	[ho_ten_chu_tai_khoan] [varchar](50) NULL,
	[so_tai_khoan] [varchar](50) NULL,
	[ten_ngan_hang] [nvarchar](50) NULL,
	[ten_chi_nhanh] [nvarchar](50) NULL,
	[dia_chi] [nvarchar](50) NULL,
	[ghi_chu] [nvarchar](50) NULL,
	[trang_thai] [int] NULL,
	[ngay_tao] [date] NULL,
	[ngay_sua] [date] NULL,
 CONSTRAINT [tai_khoan_ngan_hang_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tai_khoan_quyen_han]    Script Date: 4/27/2023 11:58:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tai_khoan_quyen_han](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tai_khoan_id] [int] NULL,
	[quyen_han_id] [int] NULL,
	[ma] [varchar](20) NULL,
	[mo_ta] [nvarchar](50) NULL,
	[trang_thai] [int] NULL,
	[ngay_tao] [date] NULL,
	[ngay_chinh_sua] [date] NULL,
 CONSTRAINT [tai_khoan_quyen_han_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[chi_tiet_hoa_don] ([hoa_don_id], [phong_id], [ma], [ngay_gio_nhan_phong], [ngay_gio_tra_phong], [thoi_gian_thue], [gia_phong], [qua_gio], [ghi_chu], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (1, 1, N'CTHD998', CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date), 9, CAST(202 AS Decimal(20, 0)), 0, N'Khach hang du gio', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[chi_tiet_hoa_don] ([hoa_don_id], [phong_id], [ma], [ngay_gio_nhan_phong], [ngay_gio_tra_phong], [thoi_gian_thue], [gia_phong], [qua_gio], [ghi_chu], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (2, 2, N'CTHD999', CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date), 7, CAST(102 AS Decimal(20, 0)), 1, N'Khach hang qua gio 1 tieng', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[chi_tiet_hoa_don] ([hoa_don_id], [phong_id], [ma], [ngay_gio_nhan_phong], [ngay_gio_tra_phong], [thoi_gian_thue], [gia_phong], [qua_gio], [ghi_chu], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (3, 3, N'CTHD997', CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date), 10, CAST(302 AS Decimal(20, 0)), 3, N'Khach hang qua gio 3 tieng', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
GO
INSERT [dbo].[chuc_vu] ([phong_ban_id], [ma], [ten], [ngay_bat_dau], [ngay_ap_dung], [ghi_chu], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (1, N'PB2', N'Phong ban Kinh te', CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date), N'Truong phong ban Kinh te', 0, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[chuc_vu] ([phong_ban_id], [ma], [ten], [ngay_bat_dau], [ngay_ap_dung], [ghi_chu], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (2, N'PB3', N'Phong ban thiet ke do hoa', CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date), N'Truong phong ban thiet ke do hoa', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[chuc_vu] ([phong_ban_id], [ma], [ten], [ngay_bat_dau], [ngay_ap_dung], [ghi_chu], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES ( 3, N'PB1', N'Phong ban CNTT', CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date), N'Truong phong ban CNTT', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
GO
INSERT [dbo].[co_so] ([tai_khoan_ngan_hang_id], [ma], [ten_co_so], [ho_ten_nguoi_dai_dien], [ma_so_thue], [so_dien_thoai], [email], [ghi_chu], [ten_tinh], [ten_thanh_pho], [ten_quan_huyen], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (1, N'CS3', N'Ha Nam', N'Nguyen Van C', N'GD3', N'0339211409', N'nguyenvanc@gmail.com', N'Co so Ha Nam', N'Ha Nam', N'Thanh pho Ha Nam', N'Le Hong Phong', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[co_so] ([tai_khoan_ngan_hang_id], [ma], [ten_co_so], [ho_ten_nguoi_dai_dien], [ma_so_thue], [so_dien_thoai], [email], [ghi_chu], [ten_tinh], [ten_thanh_pho], [ten_quan_huyen], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (2, N'CS2', N'Thai Binh', N'Nguyen Van B', N'GD2', N'0968089275', N'nguyenvanb@gmail.com', N'Co so Thai Binh', N'Thai Binh', N'Thanh pho Thai Binh', N'Vu Thu', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[co_so] ([tai_khoan_ngan_hang_id], [ma], [ten_co_so], [ho_ten_nguoi_dai_dien], [ma_so_thue], [so_dien_thoai], [email], [ghi_chu], [ten_tinh], [ten_thanh_pho], [ten_quan_huyen], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (3, N'CS1', N'Ha Noi', N'Nguyen Van A', N'GD1', N'0339876543', N'nguyenvana@gmail.com', N'Co so Ha noi', N'Ha Noi', N'Thanh pho Ha Noi', N'Nam Tu Liem', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
GO
INSERT [dbo].[dat_phong] ([khach_hang_id], [loai_phong_id], [ma], [ten], [ngay_gio_dat], [so_luong_khach], [so_luong_phong_dat], [ghi_chu], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (1, 1, N'DP2', N'Dat phong 202', CAST(N'2023-04-27' AS Date), 10, 2, N'Phong da dat coc tien', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[dat_phong] ([khach_hang_id], [loai_phong_id], [ma], [ten], [ngay_gio_dat], [so_luong_khach], [so_luong_phong_dat], [ghi_chu], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (2, 2, N'DP1', N'Dat phong 102', CAST(N'2023-04-27' AS Date), 15, 1, N'Phong da co nguoi dat', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[dat_phong] ([khach_hang_id], [loai_phong_id], [ma], [ten], [ngay_gio_dat], [so_luong_khach], [so_luong_phong_dat], [ghi_chu], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (3, 3, N'DP3', N'Dat phong 302', CAST(N'2023-04-27' AS Date), 5, 1, N'Phong dat theo gio', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
GO
INSERT [dbo].[dich_vu] ([loai_dich_vu_id], [ma], [ten], [don_vi_tinh], [don_gia], [mo_ta], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (1, N'DV2', N'Dich vu thuong', N'FPT Tay Nguyen', CAST(8000000 AS Decimal(20, 0)), N'Dich vu thuong ', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[dich_vu] ([loai_dich_vu_id], [ma], [ten], [don_vi_tinh], [don_gia], [mo_ta], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (2, N'DV3', N'Dich vu cao cap', N'FPT Ha Nam', CAST(1000000 AS Decimal(20, 0)), N'Dich vu cao cap ', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[dich_vu] ([loai_dich_vu_id], [ma], [ten], [don_vi_tinh], [don_gia], [mo_ta], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (3, N'DV1', N'Dich vu vip', N'FPT Ha Noi', CAST(9000000 AS Decimal(20, 0)), N'Dich vu vip 1', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
GO
INSERT [dbo].[dich_vu_su_dung] ([dich_vu_id], [chi_tiet_hoa_don_id], [ma], [ten], [so_luong], [ghi_chu], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (1,1, N'DVSD1', N'Dich vu loai 1', 100, N'Dich vu hang thuong gia', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[dich_vu_su_dung] ([dich_vu_id], [chi_tiet_hoa_don_id], [ma], [ten], [so_luong], [ghi_chu], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (2,2, N'DVSD3', N'Dich vu loai 2', 200, N'Dich vu hang binh dan', 0, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[dich_vu_su_dung] ([dich_vu_id], [chi_tiet_hoa_don_id], [ma], [ten], [so_luong], [ghi_chu], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (3,3, N'DVSD2', N'Dich vu loai 2', 50, N'Dich vu hang trung binh', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
GO
INSERT [dbo].[giao_dich] ([ma], [hinh_thuc_thanh_toan], [ngay_thanh_toan], [trang_thai], [ngay_tao], [ngay_sua]) VALUES (N'GD3', 3, CAST(N'2023-04-27' AS Date), 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[giao_dich] ([ma], [hinh_thuc_thanh_toan], [ngay_thanh_toan], [trang_thai], [ngay_tao], [ngay_sua]) VALUES (N'GD2', 2, CAST(N'2023-04-27' AS Date), 0, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[giao_dich] ([ma], [hinh_thuc_thanh_toan], [ngay_thanh_toan], [trang_thai], [ngay_tao], [ngay_sua]) VALUES (N'GD1', 1, CAST(N'2023-04-27' AS Date), 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
GO
INSERT [dbo].[giao_han] ([tai_khoan_id], [ma], [ten], [thoi_diem_bat_dau], [thoi_diem_ket_thuc], [so_tien_dau_ngay], [tong_tien_hoa_don], [tong_tien_tam_tinh], [tong_tien_thu_thue], [tong_tien_chenh_lech], [tong_tien_phat_sinh], [don_vi_tinh], [trang_thai_thu_tien], [ghi_chu], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (1, N'GH1', N'Giao han 1', CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date), CAST(10000000 AS Decimal(20, 0)), CAST(3000000 AS Decimal(20, 0)), CAST(20000000 AS Decimal(20, 0)), CAST(100000 AS Decimal(20, 0)), CAST(200000 AS Decimal(20, 0)), CAST(2000000 AS Decimal(20, 0)), N'VND', 0, N'Gian han 1, chua tinh lai', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[giao_han] ([tai_khoan_id], [ma], [ten], [thoi_diem_bat_dau], [thoi_diem_ket_thuc], [so_tien_dau_ngay], [tong_tien_hoa_don], [tong_tien_tam_tinh], [tong_tien_thu_thue], [tong_tien_chenh_lech], [tong_tien_phat_sinh], [don_vi_tinh], [trang_thai_thu_tien], [ghi_chu], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (2, N'GH2', N'Giao han 2', CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date), CAST(20000000 AS Decimal(20, 0)), CAST(2000000 AS Decimal(20, 0)), CAST(10000000 AS Decimal(20, 0)), CAST(200000 AS Decimal(20, 0)), CAST(200000 AS Decimal(20, 0)), CAST(2000000 AS Decimal(20, 0)), N'VND', 1, N'Gian han 2, da tinh lai', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[giao_han] ([tai_khoan_id], [ma], [ten], [thoi_diem_bat_dau], [thoi_diem_ket_thuc], [so_tien_dau_ngay], [tong_tien_hoa_don], [tong_tien_tam_tinh], [tong_tien_thu_thue], [tong_tien_chenh_lech], [tong_tien_phat_sinh], [don_vi_tinh], [trang_thai_thu_tien], [ghi_chu], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (3, N'GH3', N'Giao han 2', CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date), CAST(30000000 AS Decimal(20, 0)), CAST(1000000 AS Decimal(20, 0)), CAST(30000000 AS Decimal(20, 0)), CAST(300000 AS Decimal(20, 0)), CAST(200000 AS Decimal(20, 0)), CAST(2000000 AS Decimal(20, 0)), N'VND', 0, N'Gian han 3, chua tinh lai', 0, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
GO
INSERT [dbo].[hoa_don] ([khach_hang_id], [tai_khoan_id], [giao_dich_id], [dat_phong_id], [ma], [tien_khach_dua], [tien_tra_lai], [tien_coc], [phu_thu], [thue], [giam_gia], [tong_tien], [ghi_chu], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES ( 1,1,1,1, N'HD999', CAST(3000000 AS Decimal(20, 0)), CAST(100000 AS Decimal(20, 0)), CAST(200000 AS Decimal(20, 0)), CAST(100000 AS Decimal(20, 0)), CAST(50000 AS Decimal(20, 0)), CAST(0 AS Decimal(20, 0)), CAST(3700000 AS Decimal(20, 0)), N'Da hoan thanh xong tien phong', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[hoa_don] ([khach_hang_id], [tai_khoan_id], [giao_dich_id], [dat_phong_id], [ma], [tien_khach_dua], [tien_tra_lai], [tien_coc], [phu_thu], [thue], [giam_gia], [tong_tien], [ghi_chu], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (1,1,1,1, N'HD998', CAST(4000000 AS Decimal(20, 0)), CAST(200000 AS Decimal(20, 0)), CAST(300000 AS Decimal(20, 0)), CAST(200000 AS Decimal(20, 0)), CAST(40000 AS Decimal(20, 0)), CAST(0 AS Decimal(20, 0)), CAST(4700000 AS Decimal(20, 0)), N'Da hoan thanh xong tien phong', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[hoa_don] ([khach_hang_id], [tai_khoan_id], [giao_dich_id], [dat_phong_id], [ma], [tien_khach_dua], [tien_tra_lai], [tien_coc], [phu_thu], [thue], [giam_gia], [tong_tien], [ghi_chu], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (1,1,1,1, N'HD997', CAST(5000000 AS Decimal(20, 0)), CAST(300000 AS Decimal(20, 0)), CAST(400000 AS Decimal(20, 0)), CAST(300000 AS Decimal(20, 0)), CAST(30000 AS Decimal(20, 0)), CAST(0 AS Decimal(20, 0)), CAST(5700000 AS Decimal(20, 0)), N'Da hoan thanh xong tien phong', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
GO
INSERT [dbo].[khach_hang] ([ma], [ho], [ten_dem], [ten], [gioi_tinh], [ngay_sinh], [email], [sdt], [dia_chi], [quoc_tich], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES ( N'KH1', N'Chu', N'Thi', N'Ngan', 1, CAST(N'1998-12-12' AS Date), N'nganct@gmail.com', N'096789123', N'Ha noi', N'Viet nam', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[khach_hang] ([ma], [ho], [ten_dem], [ten], [gioi_tinh], [ngay_sinh], [email], [sdt], [dia_chi], [quoc_tich], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (N'KH3', N'Dang', N'Quang', N'Minh', 0, CAST(N'1985-12-12' AS Date), N'minhdq8@gmail.com', N'035789123', N'Ha noi', N'Viet nam', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[khach_hang] ([ma], [ho], [ten_dem], [ten], [gioi_tinh], [ngay_sinh], [email], [sdt], [dia_chi], [quoc_tich], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES ( N'KH2', N'Nguyen', N'Khanh', N'Huyen', 1, CAST(N'1999-12-12' AS Date), N'huyenk@gmail.com', N'036789123', N'Ha noi', N'Viet nam', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
GO
INSERT [dbo].[lau] ([co_so_id], [ma], [ten], [so_luong], [ghi_chu], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (1, N'L2', N'Lau 1 - P', 13, N'Tai toa P', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[lau] ([co_so_id], [ma], [ten], [so_luong], [ghi_chu], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (2, N'L1', N'Lau 1 - F', 12, N'Tai toa F', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[lau] ([co_so_id], [ma], [ten], [so_luong], [ghi_chu], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (3, N'L3', N'Lau 1 - T', 13, N'Tai toa T', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
GO
INSERT [dbo].[loai_dich_vu] ([ma], [ten], [mo_ta], [trang_thai], [ngay_tao], [ngay_sua]) VALUES (N'LDV3', N'Loai dich vu 3', N'Loai 3', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[loai_dich_vu] ([ma], [ten], [mo_ta], [trang_thai], [ngay_tao], [ngay_sua]) VALUES (N'LDV2', N'Loai dich vu 2', N'Loai 2', 0, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[loai_dich_vu] ([ma], [ten], [mo_ta], [trang_thai], [ngay_tao], [ngay_sua]) VALUES (N'LDV1', N'Loai dich vu 1', N'Loai 1', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
GO
INSERT [dbo].[loai_phong] ([ma], [ten], [don_gia_theo_gio], [don_gia_qua_ngay], [don_gia_qua_dem], [so_nguoi], [ghi_chu], [tien_qua_gio], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES ( N'Type3', N'Phong loai 3', CAST(50000 AS Decimal(20, 0)), CAST(1000000 AS Decimal(20, 0)), CAST(150000 AS Decimal(20, 0)), 9, N'Khach thue du lich', CAST(350000 AS Decimal(20, 0)), 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[loai_phong] ([ma], [ten], [don_gia_theo_gio], [don_gia_qua_ngay], [don_gia_qua_dem], [so_nguoi], [ghi_chu], [tien_qua_gio], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (N'Type1', N'Phong loai 1', CAST(200000 AS Decimal(20, 0)), CAST(3000000 AS Decimal(20, 0)), CAST(250000 AS Decimal(20, 0)), 10, N'Khach thue du lich', CAST(250000 AS Decimal(20, 0)), 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[loai_phong] ([ma], [ten], [don_gia_theo_gio], [don_gia_qua_ngay], [don_gia_qua_dem], [so_nguoi], [ghi_chu], [tien_qua_gio], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (N'Type2', N'Phong loai 2', CAST(100000 AS Decimal(20, 0)), CAST(1000000 AS Decimal(20, 0)), CAST(150000 AS Decimal(20, 0)), 8, N'Khach thue ca nhan', CAST(300000 AS Decimal(20, 0)), 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
GO
INSERT [dbo].[loai_phong_ban] ([ma], [ten], [so_luong], [ghi_chu], [trang_thai], [ngay_tao], [ngay_sua]) VALUES (N'PB3', N'TKW', 1, N'Thiet ke web', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[loai_phong_ban] ([ma], [ten], [so_luong], [ghi_chu], [trang_thai], [ngay_tao], [ngay_sua]) VALUES (N'PB2', N'MKT', 10, N'Digital Marketing', 0, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[loai_phong_ban] ([ma], [ten], [so_luong], [ghi_chu], [trang_thai], [ngay_tao], [ngay_sua]) VALUES (N'PB1', N'CNTT', 1, N'Cong nghe thong tin', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
GO
INSERT [dbo].[phong] ([loai_phong_id], [co_so_id], [lau_id], [ma], [ten], [so_luong], [ghi_chu], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (1,1,1, N'P2', N'Phong 202', 1, N'Tanng 5', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[phong] ([loai_phong_id], [co_so_id], [lau_id], [ma], [ten], [so_luong], [ghi_chu], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (1,1,1, N'P3', N'Phong 302', 1, N'Tanng 4', 0, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[phong] ([loai_phong_id], [co_so_id], [lau_id], [ma], [ten], [so_luong], [ghi_chu], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (1,1,1, N'P1', N'Phong 102', 1, N'Tanng 3', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
GO
INSERT [dbo].[phong_ban] ([loai_phong_ban_id], [ma], [ten], [so_luong_phong_ban], [so_luong_nhan_vien], [ghi_chu], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (1, N'PBCN', N'Phong ban CNTT', 1, 15, N'Toa P - FPoly', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[phong_ban] ([loai_phong_ban_id], [ma], [ten], [so_luong_phong_ban], [so_luong_nhan_vien], [ghi_chu], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (2, N'PBKT', N'Phong ban Kinh te', 1, 20, N'Toa D - FPoly', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[phong_ban] ([loai_phong_ban_id], [ma], [ten], [so_luong_phong_ban], [so_luong_nhan_vien], [ghi_chu], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (3, N'PBTKDH', N'Phong ban thiet ke do hoa', 1, 25, N'Toa L - FPoly', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
GO
INSERT [dbo].[quyen_han] ([ma], [ten], [mo_ta], [trang_thai], [ngay_tao], [ngay_sua]) VALUES (N'QH2', N'Quyen han 2', N'Loai QH 2', 0, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[quyen_han] ([ma], [ten], [mo_ta], [trang_thai], [ngay_tao], [ngay_sua]) VALUES (N'QH3', N'Quyen han 3', N'Loai QH 3', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[quyen_han] ([ma], [ten], [mo_ta], [trang_thai], [ngay_tao], [ngay_sua]) VALUES (N'QH1', N'Quyen han 1', N'Loai QH 1', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
GO
INSERT [dbo].[tai_khoan] ([co_so_id], [phong_ban_id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho], [ten_dem], [ten], [gioi_tinh], [ngay_sinh], [email], [sdt], [cmnd], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (1,1,1, N'TK2', N'Vu Van Nguyen', N'123@123', N'Vu', N'Van', N'Nguyen', 0, CAST(N'1998-01-01' AS Date), N'nguyennv4@gmail.com', N'03463922211', N'98765432', 0, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[tai_khoan] ([co_so_id], [phong_ban_id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho], [ten_dem], [ten], [gioi_tinh], [ngay_sinh], [email], [sdt], [cmnd], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (1,1,1, N'TK1', N'Nguyen Thuy Hang', N'123@123', N'Nguyen', N'Thuy', N'Hang', 1, CAST(N'1999-01-01' AS Date), N'hangnt@gmail.com', N'0968089275', N'1234567890', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[tai_khoan] ([co_so_id], [phong_ban_id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho], [ten_dem], [ten], [gioi_tinh], [ngay_sinh], [email], [sdt], [cmnd], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (1,1,1, N'TK3', N'Nguyen Anh Dung', N'123@123', N'Nguyen', N'Anh', N'Dung', 0, CAST(N'1988-01-01' AS Date), N'dungna29@gmail.com', N'0345678901', N'876543219', 0, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
GO
INSERT [dbo].[tai_khoan_ngan_hang] ([ma], [ho_ten_chu_tai_khoan], [so_tai_khoan], [ten_ngan_hang], [ten_chi_nhanh], [dia_chi], [ghi_chu], [trang_thai], [ngay_tao], [ngay_sua]) VALUES (N'TKNH3', N'DungNA29', N'123456789', N'Techcombank', N'Chi nhanh  Ha Nam', N'Thanh Liem, Ha Nam', N'Ghi chu 3', 0, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[tai_khoan_ngan_hang] ([ma], [ho_ten_chu_tai_khoan], [so_tai_khoan], [ten_ngan_hang], [ten_chi_nhanh], [dia_chi], [ghi_chu], [trang_thai], [ngay_tao], [ngay_sua]) VALUES (N'TKNH2', N'NguyenNV4', N'0987654321', N'MB Bank', N'Chi nhanh Thai Binh', N'Kien Xuong, Thai Binh', N'Ghi chu 2', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[tai_khoan_ngan_hang] ([ma], [ho_ten_chu_tai_khoan], [so_tai_khoan], [ten_ngan_hang], [ten_chi_nhanh], [dia_chi], [ghi_chu], [trang_thai], [ngay_tao], [ngay_sua]) VALUES (N'TKNH1', N'HangNT69', N'012345678', N'TP Bank', N'Chi nhanh Ha Noi', N'Nam Tu Liem, Ha Noi', N'Ghi chu 1', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
GO
INSERT [dbo].[tai_khoan_quyen_han] ([tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (1,1, N'TKQH2', N'Tai khoan quyen han 2', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[tai_khoan_quyen_han] ([tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (1,1, N'TKQH1', N'Tai khoan quyen han 1', 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
INSERT [dbo].[tai_khoan_quyen_han] ([tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai], [ngay_tao], [ngay_chinh_sua]) VALUES (1,1, N'TKQH3', N'Tai khoan quyen han 3', 0, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-27' AS Date))
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [chi_tiet_hoa_don_UN]    Script Date: 4/27/2023 11:58:28 PM ******/
ALTER TABLE [dbo].[chi_tiet_hoa_don] ADD  CONSTRAINT [chi_tiet_hoa_don_UN] UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [chuc_vu_UN]    Script Date: 4/27/2023 11:58:28 PM ******/
ALTER TABLE [dbo].[chuc_vu] ADD  CONSTRAINT [chuc_vu_UN] UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [co_so_UN]    Script Date: 4/27/2023 11:58:28 PM ******/
ALTER TABLE [dbo].[co_so] ADD  CONSTRAINT [co_so_UN] UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [dat_phong_UN]    Script Date: 4/27/2023 11:58:28 PM ******/
ALTER TABLE [dbo].[dat_phong] ADD  CONSTRAINT [dat_phong_UN] UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [dich_vu_UN]    Script Date: 4/27/2023 11:58:28 PM ******/
ALTER TABLE [dbo].[dich_vu] ADD  CONSTRAINT [dich_vu_UN] UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [dich_vu_su_dung_UN]    Script Date: 4/27/2023 11:58:28 PM ******/
ALTER TABLE [dbo].[dich_vu_su_dung] ADD  CONSTRAINT [dich_vu_su_dung_UN] UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [giao_dich_UN]    Script Date: 4/27/2023 11:58:28 PM ******/
ALTER TABLE [dbo].[giao_dich] ADD  CONSTRAINT [giao_dich_UN] UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [giao_han_UN]    Script Date: 4/27/2023 11:58:28 PM ******/
ALTER TABLE [dbo].[giao_han] ADD  CONSTRAINT [giao_han_UN] UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [hoa_don_UN]    Script Date: 4/27/2023 11:58:28 PM ******/
ALTER TABLE [dbo].[hoa_don] ADD  CONSTRAINT [hoa_don_UN] UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [khach_hang_UN]    Script Date: 4/27/2023 11:58:28 PM ******/
ALTER TABLE [dbo].[khach_hang] ADD  CONSTRAINT [khach_hang_UN] UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [lau_UN]    Script Date: 4/27/2023 11:58:28 PM ******/
ALTER TABLE [dbo].[lau] ADD  CONSTRAINT [lau_UN] UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [loai_dich_vu_UN]    Script Date: 4/27/2023 11:58:28 PM ******/
ALTER TABLE [dbo].[loai_dich_vu] ADD  CONSTRAINT [loai_dich_vu_UN] UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [loai_phong_UN]    Script Date: 4/27/2023 11:58:28 PM ******/
ALTER TABLE [dbo].[loai_phong] ADD  CONSTRAINT [loai_phong_UN] UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [loai_phong_ban_UN]    Script Date: 4/27/2023 11:58:28 PM ******/
ALTER TABLE [dbo].[loai_phong_ban] ADD  CONSTRAINT [loai_phong_ban_UN] UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [phong_UN]    Script Date: 4/27/2023 11:58:28 PM ******/
ALTER TABLE [dbo].[phong] ADD  CONSTRAINT [phong_UN] UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [phong_ban_UN]    Script Date: 4/27/2023 11:58:28 PM ******/
ALTER TABLE [dbo].[phong_ban] ADD  CONSTRAINT [phong_ban_UN] UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [quyen_han_UN]    Script Date: 4/27/2023 11:58:28 PM ******/
ALTER TABLE [dbo].[quyen_han] ADD  CONSTRAINT [quyen_han_UN] UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [tai_khoan_UN]    Script Date: 4/27/2023 11:58:28 PM ******/
ALTER TABLE [dbo].[tai_khoan] ADD  CONSTRAINT [tai_khoan_UN] UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [tai_khoan_UN1]    Script Date: 4/27/2023 11:58:28 PM ******/
ALTER TABLE [dbo].[tai_khoan] ADD  CONSTRAINT [tai_khoan_UN1] UNIQUE NONCLUSTERED 
(
	[ten_tai_khoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [tai_khoan_ngan_hang_UN]    Script Date: 4/27/2023 11:58:28 PM ******/
ALTER TABLE [dbo].[tai_khoan_ngan_hang] ADD  CONSTRAINT [tai_khoan_ngan_hang_UN] UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [tai_khoan_quyen_han_UN]    Script Date: 4/27/2023 11:58:28 PM ******/
ALTER TABLE [dbo].[tai_khoan_quyen_han] ADD  CONSTRAINT [tai_khoan_quyen_han_UN] UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


UPDATE dat_phong SET ma= '162NDG',ten='HDGSBGD',ngay_tao='2024-11-26',trang_thai= 2 WHERE  ID = 3