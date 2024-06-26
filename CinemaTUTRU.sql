USE [master]
GO
/****** Object:  Database [CINEMA]    Script Date: 6/10/2024 12:16:58 AM ******/
CREATE DATABASE [CINEMA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CINEMA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SERVER00\MSSQL\DATA\CINEMA.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CINEMA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SERVER00\MSSQL\DATA\CINEMA_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CINEMA] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CINEMA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CINEMA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CINEMA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CINEMA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CINEMA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CINEMA] SET ARITHABORT OFF 
GO
ALTER DATABASE [CINEMA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CINEMA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CINEMA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CINEMA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CINEMA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CINEMA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CINEMA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CINEMA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CINEMA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CINEMA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CINEMA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CINEMA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CINEMA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CINEMA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CINEMA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CINEMA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CINEMA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CINEMA] SET RECOVERY FULL 
GO
ALTER DATABASE [CINEMA] SET  MULTI_USER 
GO
ALTER DATABASE [CINEMA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CINEMA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CINEMA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CINEMA] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [CINEMA] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CINEMA', N'ON'
GO
USE [CINEMA]
GO
/****** Object:  Table [dbo].[KHACH_HANG]    Script Date: 6/10/2024 12:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACH_HANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[SDT] [varchar](10) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_KHACH_HANG] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LICH_CHIEU]    Script Date: 6/10/2024 12:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LICH_CHIEU](
	[NgayChieu] [date] NOT NULL,
	[MaPhong] [varchar](10) NOT NULL,
	[MaPhim] [int] NOT NULL,
	[MaSuatChieu] [int] IDENTITY(1,1) NOT NULL,
	[GioChieu] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSuatChieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAIVE]    Script Date: 6/10/2024 12:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOAIVE](
	[MaLV] [varchar](10) NOT NULL,
	[TenLV] [nvarchar](50) NOT NULL,
	[Gia] [money] NOT NULL,
 CONSTRAINT [PK_LOAIVE] PRIMARY KEY CLUSTERED 
(
	[MaLV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHAN_VIEN]    Script Date: 6/10/2024 12:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHAN_VIEN](
	[TenNV] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[CMND] [varchar](12) NOT NULL,
	[SDT] [varchar](10) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[TrangThai] [bit] NOT NULL,
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHIM]    Script Date: 6/10/2024 12:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHIM](
	[MaPhim] [int] IDENTITY(1,1) NOT NULL,
	[TenPhim] [nvarchar](100) NOT NULL,
	[MoTa] [nvarchar](1000) NULL,
	[NuocSX] [nvarchar](10) NULL,
	[NgayKhoiChieu] [date] NOT NULL,
	[NamSX] [int] NOT NULL,
	[DaoDien] [nvarchar](50) NULL,
	[DienVien] [nvarchar](1000) NULL,
	[ThoiLuong] [int] NULL,
	[DiemIMDb] [float] NULL,
	[LinkAnh] [varchar](8000) NULL,
	[LinkIMDb] [varchar](8000) NULL,
	[LinkTrailer] [varchar](8000) NULL,
	[MaTT] [int] NULL,
 CONSTRAINT [PK__PHIM__4AC03DE3734F300D] PRIMARY KEY CLUSTERED 
(
	[MaPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHONG]    Script Date: 6/10/2024 12:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHONG](
	[MaPhong] [varchar](10) NOT NULL,
	[TrangThai] [bit] NOT NULL,
	[TongSoGhe] [int] NOT NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QUYEN]    Script Date: 6/10/2024 12:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QUYEN](
	[MaQuyen] [varchar](10) NOT NULL,
	[TenQuyen] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CHUC_VU] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SUKIEN]    Script Date: 6/10/2024 12:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SUKIEN](
	[MaSK] [int] IDENTITY(1,1) NOT NULL,
	[TenSK] [nvarchar](100) NULL,
	[MoTaSK] [ntext] NULL,
	[ChiTietSK] [ntext] NULL,
	[PosterSK] [varchar](8000) NULL,
 CONSTRAINT [PK_SUKIEN] PRIMARY KEY CLUSTERED 
(
	[MaSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 6/10/2024 12:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[Email] [varchar](50) NOT NULL,
	[MaQuyen] [varchar](10) NOT NULL,
	[Password] [char](50) NOT NULL,
 CONSTRAINT [PK__TAIKHOAN__A9D1053551FB21C0] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[THE_LOAI]    Script Date: 6/10/2024 12:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[THE_LOAI](
	[MaTL] [varchar](10) NOT NULL,
	[TenTL] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CHI_TIET_THE_LOAI] PRIMARY KEY CLUSTERED 
(
	[MaTL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[THE_LOAI_PHIM]    Script Date: 6/10/2024 12:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[THE_LOAI_PHIM](
	[MaTL] [varchar](10) NOT NULL,
	[MaPhim] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTL] ASC,
	[MaPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VE]    Script Date: 6/10/2024 12:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VE](
	[MaSuatChieu] [int] NOT NULL,
	[MaKH] [int] NULL,
	[SoGhe] [int] NOT NULL,
	[NgayBan] [date] NOT NULL,
	[MaLV] [varchar](10) NOT NULL,
	[MaNV] [int] NULL,
	[MaVe] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[KHACH_HANG] ON 

INSERT [dbo].[KHACH_HANG] ([MaKH], [TenKH], [NgaySinh], [SDT], [DiaChi], [GioiTinh], [Email]) VALUES (32, N'Võ Mạnh Duy', CAST(N'2002-10-17' AS Date), N'0344668675', N'Hồ Chí Minh', 0, N'khach@gmail.com')
INSERT [dbo].[KHACH_HANG] ([MaKH], [TenKH], [NgaySinh], [SDT], [DiaChi], [GioiTinh], [Email]) VALUES (35, N'Lê Trần Thanh Nguyên', CAST(N'2002-11-17' AS Date), N'0987654321', N'Hồ Chí Minh', 0, N'khach2@gmail.com')
SET IDENTITY_INSERT [dbo].[KHACH_HANG] OFF
SET IDENTITY_INSERT [dbo].[LICH_CHIEU] ON 

INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P01', 1, 43, 9)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P02', 1, 44, 11)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P01', 1, 45, 15)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P02', 1, 47, 19)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P03', 2, 49, 10)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P04', 2, 50, 12)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P03', 2, 51, 13)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P04', 2, 52, 15)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P03', 2, 53, 17)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P04', 2, 54, 18)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P03', 2, 55, 20)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P04', 2, 56, 22)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P05', 3, 58, 11)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P05', 3, 59, 18)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P01', 4, 60, 12)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P02', 4, 61, 14)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P05', 4, 62, 21)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P06', 7, 64, 9)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P06', 7, 65, 12)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P06', 7, 66, 15)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P06', 7, 67, 18)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P06', 7, 68, 21)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P07', 5, 69, 10)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P07', 5, 70, 19)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P08', 6, 71, 9)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P07', 6, 72, 14)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P08', 6, 73, 19)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P08', 6, 74, 13)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-10' AS Date), N'P08', 6, 75, 22)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-11' AS Date), N'P02', 1, 76, 11)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-11' AS Date), N'P02', 1, 80, 19)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-11' AS Date), N'P03', 2, 81, 10)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-11' AS Date), N'P04', 2, 82, 12)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-11' AS Date), N'P03', 2, 83, 17)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-11' AS Date), N'P04', 2, 84, 18)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-11' AS Date), N'P05', 3, 85, 11)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-11' AS Date), N'P02', 4, 86, 14)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-11' AS Date), N'P05', 4, 87, 21)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-11' AS Date), N'P07', 5, 88, 19)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-11' AS Date), N'P07', 6, 89, 14)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-11' AS Date), N'P08', 6, 90, 19)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-11' AS Date), N'P06', 7, 91, 12)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-11' AS Date), N'P06', 7, 92, 21)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-11' AS Date), N'P06', 7, 96, 18)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-12' AS Date), N'P02', 1, 97, 15)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-12' AS Date), N'P02', 1, 98, 19)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-12' AS Date), N'P04', 2, 99, 12)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-12' AS Date), N'P03', 2, 101, 13)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-12' AS Date), N'P04', 2, 102, 15)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-12' AS Date), N'P03', 2, 103, 20)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-12' AS Date), N'P04', 2, 104, 22)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-12' AS Date), N'P05', 3, 105, 17)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-12' AS Date), N'P01', 4, 106, 12)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-12' AS Date), N'P05', 4, 107, 21)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-12' AS Date), N'P07', 5, 108, 19)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-12' AS Date), N'P08', 6, 109, 9)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-12' AS Date), N'P08', 6, 110, 19)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-12' AS Date), N'P08', 6, 111, 22)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-12' AS Date), N'P06', 7, 112, 12)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-12' AS Date), N'P06', 7, 113, 18)
INSERT [dbo].[LICH_CHIEU] ([NgayChieu], [MaPhong], [MaPhim], [MaSuatChieu], [GioChieu]) VALUES (CAST(N'2024-06-12' AS Date), N'P06', 7, 114, 21)
SET IDENTITY_INSERT [dbo].[LICH_CHIEU] OFF
INSERT [dbo].[LOAIVE] ([MaLV], [TenLV], [Gia]) VALUES (N'LV01', N'Ghế thường', 80000.0000)
SET IDENTITY_INSERT [dbo].[NHAN_VIEN] ON 

INSERT [dbo].[NHAN_VIEN] ([TenNV], [NgaySinh], [CMND], [SDT], [DiaChi], [GioiTinh], [Email], [TrangThai], [MaNV]) VALUES (N'Nguyễn Thành Trung', CAST(N'2001-07-09' AS Date), N'21160037', N'0814201800', N'Hồ Chí Minh', 1, N'quanly@gmail.com', 1, 5)
SET IDENTITY_INSERT [dbo].[NHAN_VIEN] OFF
SET IDENTITY_INSERT [dbo].[PHIM] ON 

INSERT [dbo].[PHIM] ([MaPhim], [TenPhim], [MoTa], [NuocSX], [NgayKhoiChieu], [NamSX], [DaoDien], [DienVien], [ThoiLuong], [DiemIMDb], [LinkAnh], [LinkIMDb], [LinkTrailer], [MaTT]) VALUES (1, N'Chị Chị Em Em 2', N'Chị Chị Em Em 2 lấy cảm hứng từ giai thoại nhân vật Ba Trà (Trần Ngọc Trà) và Tư Nhị (Marianne Nhị) Trong cuốn Sài Gòn tả pí lù, học giả Vương Hổng Sển, người sinh sống cùng thời người đẹp Ba Trà, cho biết từng tiếp chuyện với nhân vật. "Cô Ba Trà, đệ nhất Huê khôi ở Nam kỳ, một người đẹp sắc nước hương trời từng làm say mê biết bao công tử miền Nam', N'Việt Nam', CAST(N'2024-06-10' AS Date), 2023, N'Vũ Ngọc Đãng', N'Minh Hằng, Ngọc Trinh', 104, 5, N'http://localhost:8080/DoAnWebCinema/images/posterchichiemem.jpg', N'https://www.imdb.com/title/tt26427329/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_Ch%25E1%25BB%258B%2520ch%25E1%25BB%258B%2520em%2520em%25202', N'https://www.youtube.com/watch?v=j3r7kq0UZMw', 1)
INSERT [dbo].[PHIM] ([MaPhim], [TenPhim], [MoTa], [NuocSX], [NgayKhoiChieu], [NamSX], [DaoDien], [DienVien], [ThoiLuong], [DiemIMDb], [LinkAnh], [LinkIMDb], [LinkTrailer], [MaTT]) VALUES (2, N'Quỷ ăn tạng', N'Sau khi Yak (Nadech Kugimiya) xuất ngũ và trở về nhà, em gái anh, Yam (Mim Rattanawadee Wongthong), bị ốm nặng với những biểu hiện kỳ lạ, được tin là do "ma cà rồng" nhập. Những bí ẩn xoay quanh tình trạng của Yam dẫn đến một câu chuyện ám ảnh kéo dài hơn 50 năm', N'Thái Lan', CAST(N'2024-06-09' AS Date), 2023, N'Taweewat Wantha', N'Nadech Kugimiya, Denise Jelilcha Kapaun, Mim Rattawadee Wongthong', 126, 9.2, N'http://localhost:8080/DoAnWebCinema/images/posterquyantang.jpg', N'https://www.cgv.vn/default/tee-yod.html', N'https://www.youtube.com/watch?v=LyXDbLWEPwo', 1)
INSERT [dbo].[PHIM] ([MaPhim], [TenPhim], [MoTa], [NuocSX], [NgayKhoiChieu], [NamSX], [DaoDien], [DienVien], [ThoiLuong], [DiemIMDb], [LinkAnh], [LinkIMDb], [LinkTrailer], [MaTT]) VALUES (3, N'Conan: Nàng dâu Halloween', N'Tại Shibuya vào mùa Halloween, trong một hôn lễ, thanh tra Satou bị tấn công và trung sĩ Takagi bị thương khi bảo vệ cô. Satou nhớ lại vụ thanh tra Matsuda hy sinh trong một vụ đánh bom 3 năm trước, và kẻ gây án đã vượt ngục', N'Nhật Bản', CAST(N'2024-06-09' AS Date), 2023, N'Mitsunaka Susumu', N'Takayama Minami, Yamazaki Wakana, Koyama Rikiya', 114, 6.8, N'http://localhost:8080/DoAnWebCinema/images/posterconan.jpg', N'https://www.imdb.com/title/tt19770970/?ref_=fn_al_tt_1', N'https://www.youtube.com/watch?v=Pt38ZgehKlI', 1)
INSERT [dbo].[PHIM] ([MaPhim], [TenPhim], [MoTa], [NuocSX], [NgayKhoiChieu], [NamSX], [DaoDien], [DienVien], [ThoiLuong], [DiemIMDb], [LinkAnh], [LinkIMDb], [LinkTrailer], [MaTT]) VALUES (4, N'Annabelle: Tạo vật quỷ dữ', N'Sau khi cô nhi viện trong vùng bị hư hại, một nữ tu sĩ cùng vài bé gái mồ côi đến tạm trú trong nhà một cặp vợ chồng làm nghề chế tạo búp bê. Những vị khách sớm trở thành mục tiêu tấn công của Annabelle – con búp bê ma ám do chính vị chủ nhà tạo nên', N' Âu Mỹ', CAST(N'2024-06-10' AS Date), 2023, N'David F. Sandberg', N'Anthony LaPaglia, Samara Lee, Miranda Otto', 124, 6.5, N'http://localhost:8080/DoAnWebCinema/images/posterannabelle.png', N'https://www.imdb.com/title/tt5140878/?ref_=fn_al_tt_1', N'https://www.youtube.com/watch?v=EjZkJa6Z-SY', 1)
INSERT [dbo].[PHIM] ([MaPhim], [TenPhim], [MoTa], [NuocSX], [NgayKhoiChieu], [NamSX], [DaoDien], [DienVien], [ThoiLuong], [DiemIMDb], [LinkAnh], [LinkIMDb], [LinkTrailer], [MaTT]) VALUES (5, N'Dân chơi không sợ con rơi', N'Quân là cao thủ tán gái thượng thừa. Anh chàng có thói quen thay bồ như thay áo và thường không có thói quen đối xử thật lòng với cô nàng nào cả. Đang trên con đường rong chơi tuổi trẻ, bỗng nhiên Linh - người yêu cũ của Quân xuất hiện và giao con của 2 người cho anh nuôi. Từ trai độc thân phải trở thành gà trống nuôi con, Quân đành phải tu chí làm ăn, cố gắng kiếm tiền để nuôi con gái.  Thời gian trôi qua, Quân và bé Thỏ đang chung sống vui vẻ thì Linh quay về muốn nhận lại con. Số phận của hai cha con sẽ thế nào?', N'Việt Nam', CAST(N'2024-06-09' AS Date), 2023, N'Huỳnh Đông', N'Tiến Luật, Vân Trang, Bảo Thi', 117, 6.3, N'http://localhost:8080/DoAnWebCinema/images/posterdanchoikhongsoconroi.jpg', N'https://www.imdb.com/title/tt21372970/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_D%25C3%25A2n%2520ch%25C6%25A1i%2520kh%25C3%25B4ng%2520s%25E1%25BB%25A3', N'https://www.youtube.com/watch?v=YjOdbS4oMuc', 1)
INSERT [dbo].[PHIM] ([MaPhim], [TenPhim], [MoTa], [NuocSX], [NgayKhoiChieu], [NamSX], [DaoDien], [DienVien], [ThoiLuong], [DiemIMDb], [LinkAnh], [LinkIMDb], [LinkTrailer], [MaTT]) VALUES (6, N'Avatar 2: Dòng chảy của nước', N'Jake Sully sống cùng gia đình mới được thành lập trên mặt trăng ngoài hệ mặt trời Pandora. Khi mối đe dọa quen thuộc quay trở lại để kết thúc những gì đã bắt đầu trước đó, Jake phải hợp tác với Neytiri và quân đội của chủng tộc Na''vi để bảo vệ quê hương của họ', N'Âu Mỹ', CAST(N'2024-06-10' AS Date), 2023, N'James Cameron

', N'Sam Worthington, Zoe Saldana, Kate Winslet', 180, 7.5, N'http://localhost:8080/DoAnWebCinema/images/posteravatar.jpg', N'https://www.imdb.com/title/tt1630029/?ref_=fn_al_tt_1', N'https://www.youtube.com/watch?v=-dT4h5oHahQ', 1)
INSERT [dbo].[PHIM] ([MaPhim], [TenPhim], [MoTa], [NuocSX], [NgayKhoiChieu], [NamSX], [DaoDien], [DienVien], [ThoiLuong], [DiemIMDb], [LinkAnh], [LinkIMDb], [LinkTrailer], [MaTT]) VALUES (7, N'Lật mặt 7: Một điều ước', N'Qua những lát cắt đan xen, ẩn chứa nhiều nụ cười và cả nước mắt, "Lật Mặt 7: Một Điều Ước" là câu chuyện cảm động về đại gia đình bà Hai 73 tuổi - người mẹ đơn thân tự mình nuôi 5 người con khôn lớn. Khi trưởng thành, mỗi người đều có cuộc sống và gia đình riêng. Bất chợt, biến cố ập đến, những góc khuất dần được hé lộ, những nỗi niềm, lo lắng, trĩu nặng ẩn sâu trong trái tim người mẹ. Trách nhiệm thuộc về ai?', N'Việt Nam', CAST(N'2024-06-09' AS Date), 2023, N'Lý Hải', N'Thanh Hiền, Trương Minh Cường, Đinh Y Nhung', 105, 6.9, N'http://localhost:8080/DoAnWebCinema/images/postermotdieuuoc.jpg', N'https://www.imdb.com/title/tt32229497/?ref_=nv_sr_srsg_0_tt_7_nm_1_q_L%25E1%25BA%25ADt%2520m%25E1%25BA%25B7t%25207', N'https://www.youtube.com/watch?v=d1ZHdosjNX8', 1)
INSERT [dbo].[PHIM] ([MaPhim], [TenPhim], [MoTa], [NuocSX], [NgayKhoiChieu], [NamSX], [DaoDien], [DienVien], [ThoiLuong], [DiemIMDb], [LinkAnh], [LinkIMDb], [LinkTrailer], [MaTT]) VALUES (8, N'Quật mộ trùng ma', N'Quá trình khai quật một ngôi mộ đáng ngại sẽ gây ra những hậu quả khủng khiếp chôn giấu bên dưới.', N'Hàn Quốc', CAST(N'2024-06-30' AS Date), 2023, N'Jang Jae-hyun', N'Kim Go-eun, Choi Min-sik, Lee Do-hyun', 124, 7, N'http://localhost:8080/DoAnWebCinema/images/posterquatmotrungma.jpg', N'https://www.imdb.com/title/tt27802490/?ref_=fn_al_tt_1', N'https://www.youtube.com/watch?v=5-oRO4rYNQ4', 1)
INSERT [dbo].[PHIM] ([MaPhim], [TenPhim], [MoTa], [NuocSX], [NgayKhoiChieu], [NamSX], [DaoDien], [DienVien], [ThoiLuong], [DiemIMDb], [LinkAnh], [LinkIMDb], [LinkTrailer], [MaTT]) VALUES (12, N'Doraemon: Nobita và bản giao hưởng Địa Cầu', N'TÁC PHẨM KỶ NIỆM 90 NĂM FUJIKO F FUJIO Chuẩn bị cho buổi hòa nhạc ở trường, Nobita đang tập thổi sáo - nhạc cụ mà cậu dở tệ. Thích thú trước nốt "No" lạc quẻ của Nobita, Micca - cô bé bí ẩn đã mời Doraemon, Nobita cùng nhóm bạn đến "Farre" - Cung điện âm nhạc tọa lạc trên một hành tinh nơi âm nhạc sẽ hóa thành năng lượng. Nhằm cứu cung điện này, Micca đang tìm kiếm "virtuoso" - bậc thầy âm nhạc sẽ cùng mình biểu diễn! Với bảo bối thần kì "chứng chỉ chuyên viên âm nhạc", Doraemon và các bạn đã chọn nhạc cụ, cùng Micca hòa tấu, từng bước khôi phục cung điện. Tuy nhiên, một vật thể sống đáng sợ sẽ xóa số âm nhạc khỏi thế giới đang đến gần, Trái Đất đang rơi vào nguy hiểm... ! Liệu những người bạn nhỏ có thể cứu được "tương lai âm nhạc" và cả địa cầu này?', N'Nhật Bản', CAST(N'2024-07-01' AS Date), 2022, N'FUJIKO F FUJIO', N'Wasabi Mizuta, Megumi Ôhara, Yumi Kakazu', 180, 7.2, N'http://localhost:8080/DoAnWebCinema/images/posterdoraemon.jpg', N'https://www.imdb.com/title/tt29402528/?ref_=nv_sr_srsg_2_tt_8_nm_0_q_doraemon', N'https://www.youtube.com/watch?v=Yug8gbDd5EQ', 1)
INSERT [dbo].[PHIM] ([MaPhim], [TenPhim], [MoTa], [NuocSX], [NgayKhoiChieu], [NamSX], [DaoDien], [DienVien], [ThoiLuong], [DiemIMDb], [LinkAnh], [LinkIMDb], [LinkTrailer], [MaTT]) VALUES (13, N'Mai', N'Mai, không ngừng bị ám ảnh bởi quá khứ, được chào đón bởi một bình minh mới khi cô ôm mối quan hệ bạn bè một cách không quen thuộc với chàng đào hoa hàng xóm. Nhưng khi quá khứ của cô bắt đầu đuổi theo hiện tại, điều gì sẽ trở thành của ngày mai của cô?', N'Việt Nam', CAST(N'2024-06-20' AS Date), 2024, N'Trấn Thành', N'Phương Anh Đào, Tuấn Trần, Hồng Đào, Huỳnh Uyển Ân', 120, 6.8, N'http://localhost:8080/DoAnWebCinema/images/posterphimMai.jpg', N'https://www.imdb.com/title/tt31174028/?ref_=fn_al_tt_3', N'https://www.youtube.com/watch?v=EX6clvId19s&t=3s', 1)
INSERT [dbo].[PHIM] ([MaPhim], [TenPhim], [MoTa], [NuocSX], [NgayKhoiChieu], [NamSX], [DaoDien], [DienVien], [ThoiLuong], [DiemIMDb], [LinkAnh], [LinkIMDb], [LinkTrailer], [MaTT]) VALUES (14, N'Đêm tối rực rỡ', N'Trong đêm cuối cùng của đám tang ông nội, một gia đình bị đẩy vào hỗn loạn khi họ phát hiện ra rằng cha họ đã lãng phí tài sản gia đình khi cá cược, và mafia đến để thu nợ. Họ sẽ phải trả tiền trước khi bình minh, dù là bằng vàng hay bằng máu', N'Việt Nam', CAST(N'2024-06-29' AS Date), 2023, N'Aarol Toronto', N'Lý Nguyễn Nhã Uyên, Kim An, Diễm Phương', 110, 7.8, N'http://localhost:8080/DoAnWebCinema/images/posterdemtoirucro.jpg', N'https://www.imdb.com/title/tt18264554/?ref_=fn_al_tt_1', N'https://www.youtube.com/watch?v=_50ay0lxkM0', 1)
SET IDENTITY_INSERT [dbo].[PHIM] OFF
INSERT [dbo].[PHONG] ([MaPhong], [TrangThai], [TongSoGhe]) VALUES (N'P01', 0, 48)
INSERT [dbo].[PHONG] ([MaPhong], [TrangThai], [TongSoGhe]) VALUES (N'P02', 1, 48)
INSERT [dbo].[PHONG] ([MaPhong], [TrangThai], [TongSoGhe]) VALUES (N'P03', 0, 48)
INSERT [dbo].[PHONG] ([MaPhong], [TrangThai], [TongSoGhe]) VALUES (N'P04', 1, 48)
INSERT [dbo].[PHONG] ([MaPhong], [TrangThai], [TongSoGhe]) VALUES (N'P05', 0, 48)
INSERT [dbo].[PHONG] ([MaPhong], [TrangThai], [TongSoGhe]) VALUES (N'P06', 0, 48)
INSERT [dbo].[PHONG] ([MaPhong], [TrangThai], [TongSoGhe]) VALUES (N'P07', 0, 48)
INSERT [dbo].[PHONG] ([MaPhong], [TrangThai], [TongSoGhe]) VALUES (N'P08', 1, 48)
INSERT [dbo].[QUYEN] ([MaQuyen], [TenQuyen]) VALUES (N'KH', N'Khách Hàng')
INSERT [dbo].[QUYEN] ([MaQuyen], [TenQuyen]) VALUES (N'QL', N'Quản Lý')
SET IDENTITY_INSERT [dbo].[SUKIEN] ON 

INSERT [dbo].[SUKIEN] ([MaSK], [TenSK], [MoTaSK], [ChiTietSK], [PosterSK]) VALUES (1, N'Thứ 4 vui vẻ - Thứ 4 siêu rẻ', N'Thứ 4 hàng tuần Tứ Trụ Cinema khuyến mãi 20% cho toàn bộ hóa đơn', N'<div class="row">
	<div class="col-md-6 mx-auto">
  		<img src="images/posterngangthutu.png" class="w-100" alt="">
	</div>
</div>
<hr>
<br>
<p>Bạn có biết gì không? Mỗi thứ 4 hàng tuần, Tứ Trụ Cinema mang đến cho bạn một trải nghiệm điện ảnh không thể bỏ lỡ với chương trình khuyến mãi <strong>Thứ 4 Vui Vẻ - Thứ 4 Siêu Rẻ!</strong></p>
<div class="text-center">
<img src="images/icon-bap.gif" class="icon-bap">
<p class="col_red"><b>Chi Tiết Khuyến Mãi</b></p>
<ul>
   <li><strong>Giảm ngay 20%</strong> cho toàn bộ hóa đơn</li>
   <li>Áp dụng cho tất cả các bộ phim và mọi suất chiếu</li>
   <li>Không giới hạn số lượng vé mua</li>
</ul>
<div class="row">
	<div class="col-md-6 mx-auto">
  		<img src="images/eventsale20%25.png" class="w-75" alt="">
	</div>
</div>
<br>
<img src="images/icon-traitim.gif" class="icon-traitim">
<p class="col_red"><b>Tại Sao Bạn Nên Đến Tứ Trụ Cinema vào Thứ 4?</b></p>
<ul>
    <li><strong>Phòng chiếu hiện đại</strong>: Chất lượng âm thanh và hình ảnh đỉnh cao</li>
    <li><strong>Không gian thoải mái</strong>: Ghế ngồi êm ái, thoáng đãng</li>
    <li><strong>Dịch vụ chu đáo</strong>: Nhân viên nhiệt tình, thân thiện</li>
    <li><strong>Ưu đãi hấp dẫn</strong>: Tiết kiệm chi phí, tận hưởng trọn vẹn</li>
</ul>
<div class="row">
	<div class="col-md-6 mx-auto">
  		<img src="images/phongchieuphim.png" class="w-75" alt="">
	</div>
</div>
<br>
<img src="images/icon-moigoi.gif" class="icon-moigoi">
<p class="col_red"><b>Hãy Đến Ngay và Trải Nghiệm</b></p>
</div>
<p>Còn chần chừ gì nữa? Hãy lên lịch ngay từ bây giờ để tận hưởng một ngày thứ 4 thật vui vẻ và tiết kiệm tại Tứ Trụ Cinema. Cùng gia đình, bạn bè thưởng thức những bộ phim bom tấn và nhận ngay ưu đãi tuyệt vời này!</p>
<p class="text-center"><strong>Tứ Trụ Cinema - Điểm đến lý tưởng cho những tín đồ điện ảnh!</strong></p>
<p class="text-center"><strong>Tứ Trụ Cinema - Nơi hội tụ cảm xúc!</strong></p>
<hr>
<br>', N'http://localhost:8080/DoAnWebCinema/images/eventsale20%25.png')
INSERT [dbo].[SUKIEN] ([MaSK], [TenSK], [MoTaSK], [ChiTietSK], [PosterSK]) VALUES (2, N'Tứ Trụ lên vùng cao', N'Mang phim lên vùng cao là một hoạt động ý nghĩa và đầy nhân văn, nhằm mang đến niềm vui cho các trẻ em ở những khu vực khó khăn', N'<div class="row">
	<div class="col-md-6 mx-auto">
  		<img src="images/posterngangtutrulenvungcao.jpg" class="w-100" alt="">
	</div>
</div>
<hr>
<br>
<p class="col_red"><b>Tứ Trụ Lên Vùng Cao: Sứ Mệnh Văn Hóa Và Nhân Văn</b></p>
<p>Bạn đã từng tưởng tượng rằng mỗi bước chân của bạn trong thế giới điện ảnh có thể mang lại niềm vui và tri thức cho những đứa trẻ ở những vùng cao khó khăn chưa? Hãy cùng Tứ Trụ Cinema biến ước mơ đó thành hiện thực với sự kiện đặc biệt <span class="highlight">"Tứ Trụ Lên Vùng Cao"!</span></p>

<p class="col_red"><b>Sứ Mệnh Văn Hóa</b></p>
<p>Tứ Trụ Cinema không chỉ là nơi giải trí mà còn là trái tim văn hóa, nơi tôn vinh giá trị nhân văn và truyền cảm hứng cho tương lai. Chúng tôi tin rằng mỗi đứa trẻ, bất kể ở đâu, đều có quyền được tiếp cận với niềm vui và tri thức qua nghệ thuật điện ảnh.</p>

<p class="col_red"><b>Mục Tiêu</b></p>
<p>Chúng tôi đặt mục tiêu là mang những bộ phim chất lượng và ý nghĩa lên những vùng cao, nơi mà việc tiếp cận với văn hóa và giáo dục thường xuyên bị hạn chế. Chúng tôi muốn tạo ra một trải nghiệm điện ảnh đáng nhớ và ý nghĩa cho những em nhỏ, giúp họ mơ ước và khám phá thế giới xung quanh mình.</p>

<p class="col_red"><b>Lịch Trình Sự Kiện</b></p>
<ul>
    <li><strong>Thời gian:</strong> Ngày 20 tháng 7</li>
    <li><strong>Địa điểm:</strong> Các vùng cao tại miền Bắc, miền Trung và miền Nam</li>
    <li><strong>Chương Trình:</strong> Chiếu miễn phí các bộ phim phù hợp với độ tuổi và nhu cầu giáo dục của trẻ em, cùng với các hoạt động văn hóa, trò chơi và quà tặng bất ngờ.</li>
</ul>

<p>Hãy Tham Gia Và Đóng Góp để cùng Tứ Trụ Cinema lan tỏa tình yêu và sự quan tâm đến cộng đồng bằng cách tham gia và đóng góp cho sự kiện <span class="highlight">"Tứ Trụ Lên Vùng Cao"</span>. Bạn có thể ủng hộ bằng cách đóng góp quà tặng, thời gian hoặc tài chính để chúng tôi có thể đưa niềm vui và tri thức đến với những trẻ em ở những vùng xa xôi nhất.</p>
<div class="text-center">
	<div class="row">
	<div class="col-md-6 mx-auto">
  		<img src="images/eventmangphimlenvungcao.png" class="w-75" alt="">
	</div>
	</div>
	<br>
	<p class="highlight"><b>Hãy Cùng Nhau Tạo Nên Một Tương Lai Tươi Sáng Cho Các Thế Hệ Trẻ!</b></p>
	<p><strong>Tứ Trụ Cinema - Nơi Kết Nối Yêu Thương Và Tri Thức!</strong></p>
	<p class="highlight"><b>Tứ Trụ Cinema - Nơi hội tụ cảm xúc!</b></p>
</div>', N'http://localhost:8080/DoAnWebCinema/images/eventmangphimlenvungcao.png')
INSERT [dbo].[SUKIEN] ([MaSK], [TenSK], [MoTaSK], [ChiTietSK], [PosterSK]) VALUES (3, N'Tứ Trụ chiêu dụ', N'Ở Rạp Phim Tứ Trụ Có Gì Mà Bạn Bị Chiêu Dụ?', N'<div class="row">
	<div class="col-md-6 mx-auto">
  		<img src="images/posterngangchieudu.png" class="w-100" alt="">
	</div>
</div>
<hr>
<br>
<p class="col_red"><b> Không Gian Sang Trọng, Hiện Đại</b></p>
<p>Ngay từ khi bước vào Rạp Phim Tứ Trụ, bạn sẽ cảm nhận được không gian sang trọng và hiện đại. Thiết kế nội thất tinh tế, ánh sáng dịu nhẹ cùng với các tiện nghi cao cấp sẽ khiến bạn cảm thấy như đang bước vào một thế giới hoàn toàn khác, nơi mà mọi thứ đều được chăm chút tỉ mỉ để mang đến trải nghiệm tốt nhất cho khán giả.</p>
<p class="col_red"><b>Âm Thanh và Hình Ảnh Đỉnh Cao</b></p>
<p>Tứ Trụ Cinema không chỉ là nơi giải trí mà còn là trái tim văn hóa, nơi tôn vinh giá trị nhân văn và truyền cảm hứng cho tương lai. Chúng tôi tin rằng mỗi đứa trẻ, bất kể ở đâu, đều có quyền được tiếp cận với niềm vui và tri thức qua nghệ thuật điện ảnh.</p>
<p class="col_red"><b>Mục Tiêu</b></p>
<p>Rạp Phim Tứ Trụ tự hào sở hữu hệ thống âm thanh vòm và màn hình 4K chất lượng cao, đem lại những trải nghiệm hình ảnh sống động và âm thanh chân thực nhất. Bạn sẽ được đắm chìm trong từng khung hình, cảm nhận rõ ràng từng âm thanh, từ tiếng gió thổi nhẹ nhàng đến những pha hành động kịch tính.</p>
<p class="col_red"><b>Đa Dạng Phim Ảnh</b></p>
<p>Rạp Phim Tứ Trụ luôn cập nhật các bộ phim mới nhất, từ phim bom tấn Hollywood đến các bộ phim nghệ thuật đặc sắc, từ phim hành động gay cấn đến phim tình cảm lãng mạn. Bạn sẽ luôn có nhiều lựa chọn phong phú để thỏa mãn đam mê điện ảnh của mình.</p>
<p class="col_red"><b>Ghế Ngồi Thoải Mái</b></p>
<p>Một trong những điểm nhấn của Rạp Phim Tứ Trụ chính là hệ thống ghế ngồi cực kỳ thoải mái. Ghế được thiết kế với chất liệu cao cấp, có thể điều chỉnh để phù hợp với mọi tư thế ngồi, giúp bạn có thể thư giãn hoàn toàn trong suốt thời gian xem phim.</p>
<p class="col_red"><b>Dịch Vụ Khách Hàng Tận Tâm</b></p>
<p>Đội ngũ nhân viên tại Rạp Phim Tứ Trụ luôn sẵn sàng hỗ trợ và phục vụ bạn một cách tận tình nhất. Từ việc hướng dẫn chỗ ngồi, hỗ trợ đặt vé, đến việc giải đáp mọi thắc mắc, tất cả đều được thực hiện với thái độ chuyên nghiệp và thân thiện, mang đến cho bạn cảm giác thoải mái và hài lòng.</p>
<p class="col_red"><b>Ưu Đãi Hấp Dẫn</b></p>
<p>Ngoài chất lượng dịch vụ và cơ sở vật chất, Rạp Phim Tứ Trụ còn thường xuyên có các chương trình ưu đãi hấp dẫn dành cho khán giả như giảm giá vé, tặng kèm bắp rang bơ và nước ngọt, hay các sự kiện giao lưu với diễn viên, đạo diễn nổi tiếng. Đây là cơ hội tuyệt vời để bạn vừa tiết kiệm chi phí, vừa có những trải nghiệm thú vị. Không chỉ dừng lại ở việc xem phim, Rạp Phim Tứ Trụ còn tích hợp các khu vực ăn uống và giải trí hiện đại. Bạn có thể thưởng thức những món ăn ngon, uống những ly cà phê thơm lừng, hay tham gia các trò chơi giải trí thú vị cùng bạn bè và gia đình.</p>
<div class="text-center">
	<br>
	<p class="highlight"><b>Tứ Trụ Cinema - Nơi hội tụ cảm xúc!</b></p>
</div>', N'http://localhost:8080/DoAnWebCinema/images/posterdocchieudu.png')
SET IDENTITY_INSERT [dbo].[SUKIEN] OFF
INSERT [dbo].[TAIKHOAN] ([Email], [MaQuyen], [Password]) VALUES (N'khach@gmail.com', N'KH', N'827ccb0eea8a706c4c34a16891f84e7b                  ')
INSERT [dbo].[TAIKHOAN] ([Email], [MaQuyen], [Password]) VALUES (N'khach2@gmail.com', N'KH', N'827ccb0eea8a706c4c34a16891f84e7b                  ')
INSERT [dbo].[TAIKHOAN] ([Email], [MaQuyen], [Password]) VALUES (N'quanly@gmail.com', N'QL', N'202cb962ac59075b964b07152d234b70                  ')
INSERT [dbo].[THE_LOAI] ([MaTL], [TenTL]) VALUES (N'H', N'Hài ')
INSERT [dbo].[THE_LOAI] ([MaTL], [TenTL]) VALUES (N'HD', N'Hành động ')
INSERT [dbo].[THE_LOAI] ([MaTL], [TenTL]) VALUES (N'HDG', N'Học Đường')
INSERT [dbo].[THE_LOAI] ([MaTL], [TenTL]) VALUES (N'HH', N'Hoạt Hình')
INSERT [dbo].[THE_LOAI] ([MaTL], [TenTL]) VALUES (N'KD', N'Kinh Dị')
INSERT [dbo].[THE_LOAI] ([MaTL], [TenTL]) VALUES (N'KHVT', N'Khoa học viễn tưởng')
INSERT [dbo].[THE_LOAI] ([MaTL], [TenTL]) VALUES (N'LM', N'Lãng Mạn')
INSERT [dbo].[THE_LOAI] ([MaTL], [TenTL]) VALUES (N'PL', N'Phiêu Lưu')
INSERT [dbo].[THE_LOAI] ([MaTL], [TenTL]) VALUES (N'PTL', N'Phim Tài Liệu')
INSERT [dbo].[THE_LOAI] ([MaTL], [TenTL]) VALUES (N'TC', N'Tình Cảm')
INSERT [dbo].[THE_LOAI] ([MaTL], [TenTL]) VALUES (N'TL', N'Tâm Lý')
INSERT [dbo].[THE_LOAI] ([MaTL], [TenTL]) VALUES (N'TLTC', N'Tâm lý tình cảm')
INSERT [dbo].[THE_LOAI] ([MaTL], [TenTL]) VALUES (N'TT', N'Thần Thoại')
SET IDENTITY_INSERT [dbo].[VE] ON 

INSERT [dbo].[VE] ([MaSuatChieu], [MaKH], [SoGhe], [NgayBan], [MaLV], [MaNV], [MaVe]) VALUES (76, 35, 13, CAST(N'2024-06-10' AS Date), N'LV01', NULL, 1)
INSERT [dbo].[VE] ([MaSuatChieu], [MaKH], [SoGhe], [NgayBan], [MaLV], [MaNV], [MaVe]) VALUES (114, 35, 21, CAST(N'2024-06-10' AS Date), N'LV01', NULL, 2)
INSERT [dbo].[VE] ([MaSuatChieu], [MaKH], [SoGhe], [NgayBan], [MaLV], [MaNV], [MaVe]) VALUES (43, 35, 21, CAST(N'2024-06-10' AS Date), N'LV01', NULL, 3)
INSERT [dbo].[VE] ([MaSuatChieu], [MaKH], [SoGhe], [NgayBan], [MaLV], [MaNV], [MaVe]) VALUES (53, 35, 20, CAST(N'2024-06-10' AS Date), N'LV01', NULL, 4)
SET IDENTITY_INSERT [dbo].[VE] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Khach_Hang]    Script Date: 6/10/2024 12:16:58 AM ******/
ALTER TABLE [dbo].[KHACH_HANG] ADD  CONSTRAINT [IX_Khach_Hang] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [uc_n_p_g]    Script Date: 6/10/2024 12:16:58 AM ******/
ALTER TABLE [dbo].[LICH_CHIEU] ADD  CONSTRAINT [uc_n_p_g] UNIQUE NONCLUSTERED 
(
	[NgayChieu] ASC,
	[MaPhong] ASC,
	[GioChieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_NHAN_VIEN]    Script Date: 6/10/2024 12:16:58 AM ******/
ALTER TABLE [dbo].[NHAN_VIEN] ADD  CONSTRAINT [IX_NHAN_VIEN] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_NHAN_VIEN_cmnd]    Script Date: 6/10/2024 12:16:58 AM ******/
ALTER TABLE [dbo].[NHAN_VIEN] ADD  CONSTRAINT [IX_NHAN_VIEN_cmnd] UNIQUE NONCLUSTERED 
(
	[CMND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[KHACH_HANG]  WITH CHECK ADD  CONSTRAINT [FK_KHACH_HANG_TAIKHOAN] FOREIGN KEY([Email])
REFERENCES [dbo].[TAIKHOAN] ([Email])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[KHACH_HANG] CHECK CONSTRAINT [FK_KHACH_HANG_TAIKHOAN]
GO
ALTER TABLE [dbo].[LICH_CHIEU]  WITH CHECK ADD  CONSTRAINT [FK_LICH_CHIEU_PHIM] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[PHIM] ([MaPhim])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[LICH_CHIEU] CHECK CONSTRAINT [FK_LICH_CHIEU_PHIM]
GO
ALTER TABLE [dbo].[LICH_CHIEU]  WITH CHECK ADD  CONSTRAINT [FK_LICH_CHIEU_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PHONG] ([MaPhong])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[LICH_CHIEU] CHECK CONSTRAINT [FK_LICH_CHIEU_Phong]
GO
ALTER TABLE [dbo].[NHAN_VIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHAN_VIEN_TAIKHOAN] FOREIGN KEY([Email])
REFERENCES [dbo].[TAIKHOAN] ([Email])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[NHAN_VIEN] CHECK CONSTRAINT [FK_NHAN_VIEN_TAIKHOAN]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [FK_TAIKHOAN_Quyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[QUYEN] ([MaQuyen])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [FK_TAIKHOAN_Quyen]
GO
ALTER TABLE [dbo].[THE_LOAI_PHIM]  WITH CHECK ADD  CONSTRAINT [FK__THE_LOAI_P__MaTL__1AD3FDA4] FOREIGN KEY([MaTL])
REFERENCES [dbo].[THE_LOAI] ([MaTL])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[THE_LOAI_PHIM] CHECK CONSTRAINT [FK__THE_LOAI_P__MaTL__1AD3FDA4]
GO
ALTER TABLE [dbo].[THE_LOAI_PHIM]  WITH CHECK ADD  CONSTRAINT [FK_THE_LOAI_PHIM_PHIM] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[PHIM] ([MaPhim])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[THE_LOAI_PHIM] CHECK CONSTRAINT [FK_THE_LOAI_PHIM_PHIM]
GO
ALTER TABLE [dbo].[VE]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACH_HANG] ([MaKH])
GO
ALTER TABLE [dbo].[VE]  WITH CHECK ADD  CONSTRAINT [FK__VE__MaNV__0E6E26BF] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHAN_VIEN] ([MaNV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[VE] CHECK CONSTRAINT [FK__VE__MaNV__0E6E26BF]
GO
ALTER TABLE [dbo].[VE]  WITH CHECK ADD  CONSTRAINT [FK__VE__MaSuatChieu__0F624AF8] FOREIGN KEY([MaSuatChieu])
REFERENCES [dbo].[LICH_CHIEU] ([MaSuatChieu])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[VE] CHECK CONSTRAINT [FK__VE__MaSuatChieu__0F624AF8]
GO
ALTER TABLE [dbo].[VE]  WITH CHECK ADD  CONSTRAINT [FK_VE_LOAIVE] FOREIGN KEY([MaLV])
REFERENCES [dbo].[LOAIVE] ([MaLV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[VE] CHECK CONSTRAINT [FK_VE_LOAIVE]
GO
USE [master]
GO
ALTER DATABASE [CINEMA] SET  READ_WRITE 
GO
