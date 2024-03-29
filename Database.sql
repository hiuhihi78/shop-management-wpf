USE [master]
GO
/****** Object:  Database [ShopDB]    Script Date: 3/15/2023 4:52:59 PM ******/
CREATE DATABASE [ShopDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ShopDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShopDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ShopDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ShopDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ShopDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopDB] SET RECOVERY FULL 
GO
ALTER DATABASE [ShopDB] SET  MULTI_USER 
GO
ALTER DATABASE [ShopDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShopDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShopDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ShopDB', N'ON'
GO
ALTER DATABASE [ShopDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [ShopDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ShopDB]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/15/2023 4:52:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Import]    Script Date: 3/15/2023 4:52:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Import](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[import_Date] [date] NOT NULL,
	[staffID] [int] NOT NULL,
	[totalAmount] [float] NULL,
	[supplierId] [int] NOT NULL,
 CONSTRAINT [PK_Import] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImportDetails]    Script Date: 3/15/2023 4:52:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportDetails](
	[quantity] [int] NOT NULL,
	[price_import] [float] NOT NULL,
	[importID] [int] NOT NULL,
	[productID] [int] NOT NULL,
 CONSTRAINT [PK_ImportDetails] PRIMARY KEY CLUSTERED 
(
	[importID] ASC,
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 3/15/2023 4:52:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[orderID] [int] NOT NULL,
	[productID] [int] NOT NULL,
	[sellPrice] [float] NOT NULL,
	[quantity] [int] NOT NULL,
	[discount] [float] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC,
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/15/2023 4:52:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[orderDate] [datetime] NOT NULL,
	[customerName] [nvarchar](150) NULL,
	[customerAddress] [nvarchar](max) NULL,
	[customerPhone] [nvarchar](50) NULL,
	[totalAmount] [float] NOT NULL,
	[deliverDate] [datetime] NULL,
	[staffID] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/15/2023 4:52:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL,
	[discount] [int] NOT NULL,
	[country] [nvarchar](max) NOT NULL,
	[categoryID] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 3/15/2023 4:52:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 3/15/2023 4:52:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[fullname] [nvarchar](150) NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
	[address] [nvarchar](max) NOT NULL,
	[role] [int] NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 3/15/2023 4:52:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[phone] [nchar](10) NOT NULL,
	[address] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'Nuoc ngot')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'Bim bim')
INSERT [dbo].[Category] ([id], [name]) VALUES (3, N'Keo mut')
INSERT [dbo].[Category] ([id], [name]) VALUES (4, N'My Pham')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Import] ON 

INSERT [dbo].[Import] ([id], [import_Date], [staffID], [totalAmount], [supplierId]) VALUES (1, CAST(N'2023-03-06' AS Date), 2, 30000, 3)
INSERT [dbo].[Import] ([id], [import_Date], [staffID], [totalAmount], [supplierId]) VALUES (2, CAST(N'2023-03-07' AS Date), 2, 10000, 3)
INSERT [dbo].[Import] ([id], [import_Date], [staffID], [totalAmount], [supplierId]) VALUES (3, CAST(N'2023-03-09' AS Date), 2, 42030, 1)
INSERT [dbo].[Import] ([id], [import_Date], [staffID], [totalAmount], [supplierId]) VALUES (4, CAST(N'2023-03-10' AS Date), 2, 10000, 1)
INSERT [dbo].[Import] ([id], [import_Date], [staffID], [totalAmount], [supplierId]) VALUES (5, CAST(N'2023-03-11' AS Date), 2, 110000, 4)
INSERT [dbo].[Import] ([id], [import_Date], [staffID], [totalAmount], [supplierId]) VALUES (6, CAST(N'2023-03-15' AS Date), 2, 10000, 4)
SET IDENTITY_INSERT [dbo].[Import] OFF
GO
INSERT [dbo].[ImportDetails] ([quantity], [price_import], [importID], [productID]) VALUES (2, 10000, 1, 1)
INSERT [dbo].[ImportDetails] ([quantity], [price_import], [importID], [productID]) VALUES (2, 5000, 1, 2)
INSERT [dbo].[ImportDetails] ([quantity], [price_import], [importID], [productID]) VALUES (10, 1000, 2, 4)
INSERT [dbo].[ImportDetails] ([quantity], [price_import], [importID], [productID]) VALUES (2, 10000, 3, 1)
INSERT [dbo].[ImportDetails] ([quantity], [price_import], [importID], [productID]) VALUES (4, 5000, 3, 2)
INSERT [dbo].[ImportDetails] ([quantity], [price_import], [importID], [productID]) VALUES (3, 10, 3, 3)
INSERT [dbo].[ImportDetails] ([quantity], [price_import], [importID], [productID]) VALUES (2, 1000, 3, 4)
INSERT [dbo].[ImportDetails] ([quantity], [price_import], [importID], [productID]) VALUES (10, 1000, 4, 1)
INSERT [dbo].[ImportDetails] ([quantity], [price_import], [importID], [productID]) VALUES (10, 10000, 5, 5)
INSERT [dbo].[ImportDetails] ([quantity], [price_import], [importID], [productID]) VALUES (10, 1000, 5, 6)
INSERT [dbo].[ImportDetails] ([quantity], [price_import], [importID], [productID]) VALUES (10, 1000, 6, 6)
GO
INSERT [dbo].[OrderDetails] ([orderID], [productID], [sellPrice], [quantity], [discount]) VALUES (4, 1, 10000, 2, 10)
INSERT [dbo].[OrderDetails] ([orderID], [productID], [sellPrice], [quantity], [discount]) VALUES (4, 2, 5000, 2, 0)
INSERT [dbo].[OrderDetails] ([orderID], [productID], [sellPrice], [quantity], [discount]) VALUES (5, 1, 10000, 2, 10)
INSERT [dbo].[OrderDetails] ([orderID], [productID], [sellPrice], [quantity], [discount]) VALUES (5, 2, 5000, 1, 0)
INSERT [dbo].[OrderDetails] ([orderID], [productID], [sellPrice], [quantity], [discount]) VALUES (6, 1, 10000, 1, 10)
INSERT [dbo].[OrderDetails] ([orderID], [productID], [sellPrice], [quantity], [discount]) VALUES (6, 2, 5000, 1, 0)
INSERT [dbo].[OrderDetails] ([orderID], [productID], [sellPrice], [quantity], [discount]) VALUES (6, 3, 10, 1, 10)
INSERT [dbo].[OrderDetails] ([orderID], [productID], [sellPrice], [quantity], [discount]) VALUES (6, 4, 1000, 1, 0)
INSERT [dbo].[OrderDetails] ([orderID], [productID], [sellPrice], [quantity], [discount]) VALUES (7, 1, 10000, 1, 10)
INSERT [dbo].[OrderDetails] ([orderID], [productID], [sellPrice], [quantity], [discount]) VALUES (7, 2, 5000, 1, 0)
INSERT [dbo].[OrderDetails] ([orderID], [productID], [sellPrice], [quantity], [discount]) VALUES (8, 1, 10000, 1, 10)
INSERT [dbo].[OrderDetails] ([orderID], [productID], [sellPrice], [quantity], [discount]) VALUES (8, 2, 5000, 1, 0)
INSERT [dbo].[OrderDetails] ([orderID], [productID], [sellPrice], [quantity], [discount]) VALUES (8, 3, 10, 1, 10)
INSERT [dbo].[OrderDetails] ([orderID], [productID], [sellPrice], [quantity], [discount]) VALUES (8, 4, 1000, 1, 0)
INSERT [dbo].[OrderDetails] ([orderID], [productID], [sellPrice], [quantity], [discount]) VALUES (8, 5, 100, 1, 0)
INSERT [dbo].[OrderDetails] ([orderID], [productID], [sellPrice], [quantity], [discount]) VALUES (8, 6, 1000, 10, 0)
INSERT [dbo].[OrderDetails] ([orderID], [productID], [sellPrice], [quantity], [discount]) VALUES (9, 1, 10000, 1, 10)
INSERT [dbo].[OrderDetails] ([orderID], [productID], [sellPrice], [quantity], [discount]) VALUES (10, 1, 10000, 1, 10)
INSERT [dbo].[OrderDetails] ([orderID], [productID], [sellPrice], [quantity], [discount]) VALUES (11, 1, 10000, 1, 10)
INSERT [dbo].[OrderDetails] ([orderID], [productID], [sellPrice], [quantity], [discount]) VALUES (11, 2, 5000, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [orderDate], [customerName], [customerAddress], [customerPhone], [totalAmount], [deliverDate], [staffID]) VALUES (4, CAST(N'2023-03-06T01:23:58.547' AS DateTime), N'', N'Ha Noi', N'01211121', 28000, NULL, 2)
INSERT [dbo].[Orders] ([id], [orderDate], [customerName], [customerAddress], [customerPhone], [totalAmount], [deliverDate], [staffID]) VALUES (5, CAST(N'2023-03-06T01:26:25.157' AS DateTime), N'', N'', N'', 23000, NULL, 2)
INSERT [dbo].[Orders] ([id], [orderDate], [customerName], [customerAddress], [customerPhone], [totalAmount], [deliverDate], [staffID]) VALUES (6, CAST(N'2023-03-08T17:12:44.357' AS DateTime), N'', N'Ha Tay', N'0336687454', 15009, NULL, 2)
INSERT [dbo].[Orders] ([id], [orderDate], [customerName], [customerAddress], [customerPhone], [totalAmount], [deliverDate], [staffID]) VALUES (7, CAST(N'2023-03-09T09:37:39.710' AS DateTime), N'', N'Ha Tay', N'0111111111', 14000, NULL, 5)
INSERT [dbo].[Orders] ([id], [orderDate], [customerName], [customerAddress], [customerPhone], [totalAmount], [deliverDate], [staffID]) VALUES (8, CAST(N'2023-03-11T10:00:52.043' AS DateTime), N'', N'Ha Tay', N'0121515279', 25109, NULL, 2)
INSERT [dbo].[Orders] ([id], [orderDate], [customerName], [customerAddress], [customerPhone], [totalAmount], [deliverDate], [staffID]) VALUES (9, CAST(N'2023-03-11T10:09:07.340' AS DateTime), N'', N'', N'', 9000, NULL, 4)
INSERT [dbo].[Orders] ([id], [orderDate], [customerName], [customerAddress], [customerPhone], [totalAmount], [deliverDate], [staffID]) VALUES (10, CAST(N'2023-03-15T16:38:09.057' AS DateTime), N'', N'', N'', 9000, NULL, 2)
INSERT [dbo].[Orders] ([id], [orderDate], [customerName], [customerAddress], [customerPhone], [totalAmount], [deliverDate], [staffID]) VALUES (11, CAST(N'2023-03-15T16:51:35.950' AS DateTime), N'', N'', N'', 14000, NULL, 2)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [description], [quantity], [price], [discount], [country], [categoryID]) VALUES (1, N'Cocacola', N'Ngon', 102, 10000, 10, N'VietNam', 1)
INSERT [dbo].[Product] ([id], [name], [description], [quantity], [price], [discount], [country], [categoryID]) VALUES (2, N'Bim bim', N'Bo re', 99, 5000, 0, N'Viet Nam', 2)
INSERT [dbo].[Product] ([id], [name], [description], [quantity], [price], [discount], [country], [categoryID]) VALUES (3, N'Nuoc cam', N'', 101, 10, 10, N'Viet nam', 1)
INSERT [dbo].[Product] ([id], [name], [description], [quantity], [price], [discount], [country], [categoryID]) VALUES (4, N'Chuppachup', N'', 10, 1000, 0, N'Viet Nam', 3)
INSERT [dbo].[Product] ([id], [name], [description], [quantity], [price], [discount], [country], [categoryID]) VALUES (5, N'Sting red', N'', 9, 100, 0, N'Viet Nam', 1)
INSERT [dbo].[Product] ([id], [name], [description], [quantity], [price], [discount], [country], [categoryID]) VALUES (6, N'Keo Keo', N'', 10, 1000, 0, N'Viet Nam', 3)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([id], [name]) VALUES (1, N'admin')
INSERT [dbo].[Role] ([id], [name]) VALUES (2, N'staff')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([id], [username], [password], [fullname], [phone], [address], [role], [status]) VALUES (2, N'admin', N'123', N'admin', N'9999999999', N'anonymous', 1, 1)
INSERT [dbo].[Staff] ([id], [username], [password], [fullname], [phone], [address], [role], [status]) VALUES (4, N'staff', N'123', N'staff', N'9999999999', N'anonymus', 2, 0)
INSERT [dbo].[Staff] ([id], [username], [password], [fullname], [phone], [address], [role], [status]) VALUES (5, N'HieuLD6', N'123', N'hieu', N'1234567890', N'Ha Tay', 2, 0)
SET IDENTITY_INSERT [dbo].[Staff] OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([id], [name], [phone], [address]) VALUES (1, N'Le Duc Hieu', N'0336687454', N'Ha Tay')
INSERT [dbo].[Supplier] ([id], [name], [phone], [address]) VALUES (3, N'Phi Minh Tien', N'0121515279', N'Quoc Oai')
INSERT [dbo].[Supplier] ([id], [name], [phone], [address]) VALUES (4, N'Le Hong Phuc', N'0123456678', N'Quang Tri')
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
ALTER TABLE [dbo].[Import]  WITH CHECK ADD  CONSTRAINT [FK_Import_Staff] FOREIGN KEY([staffID])
REFERENCES [dbo].[Staff] ([id])
GO
ALTER TABLE [dbo].[Import] CHECK CONSTRAINT [FK_Import_Staff]
GO
ALTER TABLE [dbo].[Import]  WITH CHECK ADD  CONSTRAINT [FK_Import_Supplier] FOREIGN KEY([supplierId])
REFERENCES [dbo].[Supplier] ([id])
GO
ALTER TABLE [dbo].[Import] CHECK CONSTRAINT [FK_Import_Supplier]
GO
ALTER TABLE [dbo].[ImportDetails]  WITH CHECK ADD  CONSTRAINT [FK_ImportDetails_Import] FOREIGN KEY([importID])
REFERENCES [dbo].[Import] ([id])
GO
ALTER TABLE [dbo].[ImportDetails] CHECK CONSTRAINT [FK_ImportDetails_Import]
GO
ALTER TABLE [dbo].[ImportDetails]  WITH CHECK ADD  CONSTRAINT [FK_ImportDetails_Product] FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[ImportDetails] CHECK CONSTRAINT [FK_ImportDetails_Product]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([orderID])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Product] FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Product]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Staff] FOREIGN KEY([staffID])
REFERENCES [dbo].[Staff] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Staff]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([categoryID])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Role] FOREIGN KEY([role])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Role]
GO
USE [master]
GO
ALTER DATABASE [ShopDB] SET  READ_WRITE 
GO
