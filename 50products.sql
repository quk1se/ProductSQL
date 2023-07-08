USE [master]
GO
/****** Object:  Database [Product]    Script Date: 08.07.2023 11:23:27 ******/
CREATE DATABASE [Product]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Product', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Product.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Product_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Product_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Product] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Product].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Product] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Product] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Product] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Product] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Product] SET ARITHABORT OFF 
GO
ALTER DATABASE [Product] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Product] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Product] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Product] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Product] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Product] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Product] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Product] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Product] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Product] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Product] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Product] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Product] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Product] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Product] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Product] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Product] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Product] SET RECOVERY FULL 
GO
ALTER DATABASE [Product] SET  MULTI_USER 
GO
ALTER DATABASE [Product] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Product] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Product] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Product] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Product] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Product] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Product', N'ON'
GO
ALTER DATABASE [Product] SET QUERY_STORE = ON
GO
ALTER DATABASE [Product] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Product]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 08.07.2023 11:23:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[category] [nvarchar](50) NULL,
	[price] [float] NULL,
	[discount] [int] NULL,
	[quantity] [int] NULL,
	[measurement] [nvarchar](50) NULL,
	[producer] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
	[supplier] [nvarchar](50) NULL,
	[date_of_delivery] [date] NULL,
	[expire_date] [date] NULL,
	[test] [nchar](10) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (1, N'�������', N'��������', 45, 0, 40, N'��', N'Heinz', N'���', N'��� ��������', CAST(N'2023-07-06' AS Date), CAST(N'2023-08-06' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (2, N'������', N'��������', 13, 9, 120, N'�����', N'���� �����', N'�������', N'��� ���������', CAST(N'2023-07-06' AS Date), CAST(N'2024-07-06' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (3, N'�����', N'��������', 51, 0, 70, N'��', N'�������������', N'�������', N'��� ��������', CAST(N'2023-07-04' AS Date), CAST(N'2023-07-20' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (4, N'��������� ������', N'�������', 80, 10, 80, N'�����', N'Rula', N'��������', N'�� ������', CAST(N'2023-06-29' AS Date), CAST(N'2025-06-29' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (5, N'���. ����', N'�������', 49, 20, 210, N'��', N'������� ����', N'������', N'�� ������', CAST(N'2023-07-01' AS Date), CAST(N'2024-07-01' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (6, N'������', N'��������', 9, 0, 400, N'�����', N'���� �����', N'�������', N'��� ���������', CAST(N'2023-07-07' AS Date), CAST(N'2026-07-07' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (7, N'���� ����', N'��������', 9, 0, 236, N'��', N'������', N'�������', N'��� �������', CAST(N'2023-07-02' AS Date), CAST(N'2023-12-02' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (8, N'�����', N'��������', 21, 0, 30, N'��', N'�����', N'���', N'�� ������', CAST(N'2023-07-07' AS Date), CAST(N'2023-12-02' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (9, N'��������', N'��������', 130, 0, 13, N'��', N'������ ����', N'�������', N'����� ������', CAST(N'2023-07-01' AS Date), CAST(N'2023-07-20' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (10, N'��������', N'��������', 69, 0, 70, N'��', N'�������������� ���', N'����������', N'�� ������', CAST(N'2023-06-29' AS Date), CAST(N'2023-07-20' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (11, N'�����', N'��������', 48, 25, 9, N'��', N'����������� ����', N'�������', N'�� ������', CAST(N'2023-06-29' AS Date), CAST(N'2024-07-01' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (12, N'������', N'��������', 34, 0, 15, N'�����', N'�������', N'���', N'�� ������', CAST(N'2023-07-23' AS Date), CAST(N'2024-07-23' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (13, N'����', N'��������', 67, 0, 320, N'�����', N'���� �������', N'�������', N'��� ���������', CAST(N'2023-07-01' AS Date), CAST(N'2024-07-01' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (14, N'�����', N'��������', 42, 10, 400, N'�����', N'�������� �������', N'�������', N'�� ������', CAST(N'2023-07-02' AS Date), CAST(N'2025-07-02' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (15, N'���� �������', N'��������', 230, 5, 114, N'��', N'�������� ��������', N'������', N'�� ������', CAST(N'2023-07-02' AS Date), CAST(N'2027-07-02' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (16, N'���� �����', N'���������', 250, 0, 116, N'��', N'�������� ��������', N'������', N'�� ������', CAST(N'2023-07-01' AS Date), CAST(N'2027-07-01' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (17, N'���������� "����"', N'��������', 3000, 0, 33, N'��', N'������� ����� ���', N'�������', N'��� ��������', CAST(N'2027-07-07' AS Date), CAST(N'2027-07-07' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (18, N'���� ', N'��������', 320, 0, 78, N'�����', N'Gorona inc.', N'���', N'��� ��������', CAST(N'2023-06-24' AS Date), CAST(N'2025-07-01' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (19, N'������', N'��������', 79, 0, 200, N'��', N'���� �����', N'�������', N'��� ���������', CAST(N'2023-05-18' AS Date), CAST(N'2026-06-01' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (20, N'�����', N'������', 15, 0, 190, N'�����', N'���� �����', N'�������', N'������ ����', CAST(N'2023-03-04' AS Date), CAST(N'2026-03-04' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (21, N'������ ', N'��������', 49, 15, 56, N'��', N'�����', N'�������', N'��� ��������', CAST(N'2023-07-02' AS Date), CAST(N'2023-07-14' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (22, N'�������', N'��������', 78, 0, 48, N'��', N'���������', N' ������', N'�� ������', CAST(N'2023-07-02' AS Date), CAST(N'2023-09-02' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (23, N'���', N'��������', 45, 10, 62, N'��', N'�������', N'������', N'�� ������', CAST(N'2023-06-27' AS Date), CAST(N'2023-07-27' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (24, N'����', N'��������', 21, 3, 319, N'�����', N'���� �������', N'�������', N'������ ����', CAST(N'2023-07-07' AS Date), CAST(N'2023-07-14' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (25, N'������', N'��������', 45, 0, 218, N'��', N'Heinz', N'���', N'��� ��������', CAST(N'2023-07-06' AS Date), CAST(N'2023-08-06' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (26, N'���������', N'��������', 39, 0, 114, N'��', N'Monster', N'���', N'�� ������', CAST(N'2023-07-06' AS Date), CAST(N'2024-07-01' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (27, N'�����', N'��������', 26, 0, 119, N'�����', N'Lays', N'�������', N'��� ��������', CAST(N'2023-07-02' AS Date), CAST(N'2024-06-23' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (28, N'���', N'��������', 48, 4, 167, N'��', N'��� ���', N'�������', N'��� ���������', CAST(N'2023-07-03' AS Date), CAST(N'2024-07-23' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (29, N'����', N'��������', 34, 0, 155, N'��', N'BeerMix', N'�����', N'�� ������', CAST(N'2023-06-23' AS Date), CAST(N'2024-07-01' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (30, N'����������', N'��������', 21, 0, 113, N'��', N'��� �������', N'�������', N'��� ���������', CAST(N'2023-07-01' AS Date), CAST(N'2023-09-01' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (31, N'���������', N'��������', 79, 13, 82, N'�����', N'��� �������', N'�������', N'��� ��������', CAST(N'2023-06-03' AS Date), CAST(N'2024-06-03' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (32, N'��������', N'��������', 74, 0, 87, N'�����', N'��� �������', N'�������', N'��� ��������', CAST(N'2023-06-03' AS Date), CAST(N'2024-06-03' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (33, N'������', N'��������', 48, 0, 91, N'�����', N'���� �����', N'�������', N'������ ����', CAST(N'2023-07-04' AS Date), CAST(N'2023-07-18' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (34, N'���������', N'��������', 36, 0, 44, N'�����', N'���� �����', N'�������', N'������ ����', CAST(N'2023-07-03' AS Date), CAST(N'2023-08-03' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (35, N'���������', N'��������', 58, 0, 28, N'�����', N'���������', N'�������', N'��� ��������', CAST(N'2023-07-06' AS Date), CAST(N'2023-07-31' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (36, N'�����', N'��������', 14, 0, 32, N'��', N'Taste world', N'��������', N'�� ������', CAST(N'2023-07-04' AS Date), CAST(N'2023-07-18' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (37, N'������', N'��������', 24, 15, 21, N'��', N'��� �������', N'�������', N'��� ��������', CAST(N'2023-06-05' AS Date), CAST(N'2024-07-01' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (38, N'��������', N'��������', 33, 0, 66, N'��', N'�������', N'���', N'�� ������', CAST(N'2023-05-31' AS Date), CAST(N'2024-05-31' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (39, N'����', N'��������', 218, 0, 9, N'��', N'���� �������', N'�������', N'��� ��������', CAST(N'2023-07-01' AS Date), CAST(N'2023-07-28' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (40, N'�����', N'��������', 41, 0, 17, N'�����', N'���� �������', N'�������', N'��� ��������', CAST(N'2023-07-03' AS Date), CAST(N'2023-07-31' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (41, N'���������', N'��������', 24, 0, 221, N'��', N'�������', N'�������', N'��� ���������', CAST(N'2023-07-01' AS Date), CAST(N'2025-07-01' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (42, N'�����', N'��������', 76, 3, 66, N'�����', N'������ ���������', N'�������', N'��� ��������', CAST(N'2023-06-28' AS Date), CAST(N'2023-07-28' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (43, N'������', N'��������', 65, 0, 41, N'�����', N'��������� ����', N'�����', N'�� ������', CAST(N'2023-06-28' AS Date), CAST(N'2023-07-28' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (44, N'������', N'��������', 31, 0, 12, N'��', N'��� �������', N'�������', N'��� ���������', CAST(N'2023-06-28' AS Date), CAST(N'2023-07-09' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (45, N'������', N'��������', 46, 0, 57, N'��', N'�������������', N'�������', N'��� ��������', CAST(N'2023-07-03' AS Date), CAST(N'2023-07-18' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (46, N'������', N'��������', 56, 0, 44, N'�����', N'�������', N'������', N'�� ������', CAST(N'2023-07-01' AS Date), CAST(N'2024-07-01' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (47, N'�����', N'��������', 151, 9, 119, N'��', N'���� �������', N'�������', N'������ ����', CAST(N'2023-05-23' AS Date), CAST(N'2025-05-23' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (48, N'�����', N'��������', 229, 0, 112, N'��', N'Jack Daniels', N'���', N'�� ������', CAST(N'2023-05-31' AS Date), CAST(N'2025-06-01' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (49, N'������', N'��������', 312, 4, 31, N'��', N'����������', N'��������', N'�� ������', CAST(N'2023-06-29' AS Date), CAST(N'2024-08-24' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (50, N'���', N'��������', 34, 0, 56, N'��', N'FuzeTea', N'�������', N'�� ������', CAST(N'2023-07-04' AS Date), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
USE [master]
GO
ALTER DATABASE [Product] SET  READ_WRITE 
GO
