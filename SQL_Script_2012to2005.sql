USE [master]
GO
/****** Object:  Database [compshopping]    Script Date: 1/15/2018 11:47:16 AM ******/
CREATE DATABASE [compshopping]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Database', FILENAME = N'D:\Online Computer Shopping\App_Data\Database.mdf' , SIZE = 2688KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Database_log', FILENAME = N'D:\Online Computer Shopping\App_Data\compshopping_log.ldf' , SIZE = 504KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
GO
ALTER DATABASE [compshopping] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [compshopping].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [compshopping] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [compshopping] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [compshopping] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [compshopping] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [compshopping] SET ARITHABORT OFF 
GO
ALTER DATABASE [compshopping] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [compshopping] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [compshopping] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [compshopping] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [compshopping] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [compshopping] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [compshopping] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [compshopping] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [compshopping] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [compshopping] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [compshopping] SET  DISABLE_BROKER 
GO
ALTER DATABASE [compshopping] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [compshopping] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [compshopping] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [compshopping] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [compshopping] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [compshopping] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [compshopping] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [compshopping] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [compshopping] SET  MULTI_USER 
GO
ALTER DATABASE [compshopping] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [compshopping] SET DB_CHAINING OFF 
GO
ALTER DATABASE [compshopping] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [compshopping] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'compshopping', N'ON'
GO
USE [compshopping]
GO
/****** Object:  StoredProcedure [dbo].[InsertTempIntoAddcart]    Script Date: 1/15/2018 11:47:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertTempIntoAddcart]
	@unm varchar(20)
AS
	insert into addtocart select * from temp
	delete from temp where uid=@unm
	
	RETURN

GO
/****** Object:  Table [dbo].[accessories]    Script Date: 1/15/2018 11:47:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[accessories](
	[prdid] [int] NULL,
	[prdname] [varchar](50) NULL,
	[price] [varchar](50) NULL,
	[stock] [bit] NULL,
	[des] [varchar](50) NULL,
	[image] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[addtocart]    Script Date: 1/15/2018 11:47:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[addtocart](
	[uid] [varchar](50) NULL,
	[proid] [int] NULL,
	[proname] [varchar](50) NULL,
	[image] [varchar](max) NULL,
	[price] [varchar](50) NULL,
	[qty] [int] NULL,
	[total] [int] NULL,
	[date] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[admin]    Script Date: 1/15/2018 11:47:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin](
	[UserName] [varchar](50) NULL,
	[password] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[company]    Script Date: 1/15/2018 11:47:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[company](
	[id] [int] NOT NULL,
	[companyname] [varchar](50) NOT NULL,
	[image] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 1/15/2018 11:47:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback](
	[Name] [nvarchar](50) NOT NULL,
	[Feedback] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[product]    Script Date: 1/15/2018 11:47:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[product](
	[companyid] [int] NULL,
	[companyname] [varchar](20) NULL,
	[proid] [int] NULL,
	[proname] [varchar](30) NULL,
	[price] [numeric](15, 0) NULL,
	[stock] [bit] NULL,
	[des] [varchar](50) NULL,
	[image] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[productdescription]    Script Date: 1/15/2018 11:47:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[productdescription](
	[proid] [int] NULL,
	[proname] [varchar](30) NULL,
	[height] [varchar](20) NULL,
	[width] [varchar](10) NULL,
	[color] [varchar](25) NULL,
	[bluetooth] [varchar](20) NULL,
	[datacable] [varchar](20) NULL,
	[camera] [varchar](30) NULL,
	[gprs] [varchar](20) NULL,
	[charger] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Register]    Script Date: 1/15/2018 11:47:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Register](
	[id] [int] NULL,
	[fname] [varchar](50) NULL,
	[lnam] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[dob] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[country] [varchar](50) NULL,
	[mobileno] [varchar](50) NULL,
	[emailid] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[cardno] [varchar](50) NULL,
	[bankname] [varchar](50) NULL,
	[ques] [varchar](50) NULL,
	[answer] [varchar](50) NOT NULL,
	[username] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[temp]    Script Date: 1/15/2018 11:47:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[temp](
	[uid] [varchar](50) NULL,
	[proid] [int] NULL,
	[proname] [varchar](50) NULL,
	[image] [varchar](max) NULL,
	[price] [varchar](50) NULL,
	[qty] [int] NULL,
	[total] [int] NULL,
	[date] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[accessories] ([prdid], [prdname], [price], [stock], [des], [image]) VALUES (1, N'acer', N'10000', 1, N'CPU', N'~/accessories/acer (2).png')
GO
INSERT [dbo].[accessories] ([prdid], [prdname], [price], [stock], [des], [image]) VALUES (2, N'Lenova', N'8000', 1, N'Lenova', N'~/accessories/Lenova.png')

INSERT [dbo].[accessories] ([prdid], [prdname], [price], [stock], [des], [image]) VALUES (3, N'Iball', N'600', 1, N'Keybord', N'~/accessories/keybord1.png')

INSERT [dbo].[accessories] ([prdid], [prdname], [price], [stock], [des], [image]) VALUES (4, N'Logitech', N'800', 1, N'Keybord', N'~/accessories/Iball.png')

INSERT [dbo].[accessories] ([prdid], [prdname], [price], [stock], [des], [image]) VALUES (5, N'Iball', N'200', 1, N'Mause', N'~/accessories/dell1.png')
 
INSERT [dbo].[accessories] ([prdid], [prdname], [price], [stock], [des], [image]) VALUES (6, N'Logitech', N'300', 1, N'Mause', N'~/accessories/Dell2.png')
 
INSERT [dbo].[accessories] ([prdid], [prdname], [price], [stock], [des], [image]) VALUES (7, N'Acer', N'250', 1, N'Mause', N'~/accessories/monrch.png')
 
INSERT [dbo].[accessories] ([prdid], [prdname], [price], [stock], [des], [image]) VALUES (8, N'Canon', N'9000', 1, N'Printer', N'~/accessories/printer.png')
 
INSERT [dbo].[accessories] ([prdid], [prdname], [price], [stock], [des], [image]) VALUES (9, N'Samsung', N'7500', 1, N'Printer', N'~/accessories/printer2.png')
 
INSERT [dbo].[accessories] ([prdid], [prdname], [price], [stock], [des], [image]) VALUES (10, N'Canon', N'6000', 1, N'Printer', N'~/accessories/printer2.png')
 
INSERT [dbo].[accessories] ([prdid], [prdname], [price], [stock], [des], [image]) VALUES (11, N'HP', N'5000', 1, N'Scaner', N'~/accessories/scan2.png')
 
INSERT [dbo].[accessories] ([prdid], [prdname], [price], [stock], [des], [image]) VALUES (12, N'Lenova', N'6500', 1, N'Scaner', N'~/accessories/Scanar.png')
 
INSERT [dbo].[accessories] ([prdid], [prdname], [price], [stock], [des], [image]) VALUES (13, N'Acer', N'8500', 1, N'Scaner', N'~/accessories/scaner3.png')
 
INSERT [dbo].[accessories] ([prdid], [prdname], [price], [stock], [des], [image]) VALUES (14, N'Dell', N'9500', 1, N'Scaner', N'~/accessories/scaner3.png')
 
INSERT [dbo].[accessories] ([prdid], [prdname], [price], [stock], [des], [image]) VALUES (15, N'Dell', N'700', 1, N'Spikar', N'~/accessories/Spikar.png')
 
INSERT [dbo].[accessories] ([prdid], [prdname], [price], [stock], [des], [image]) VALUES (16, N'Lenova', N'800', 1, N'Spikar', N'~/accessories/spikar2.png')
 
INSERT [dbo].[accessories] ([prdid], [prdname], [price], [stock], [des], [image]) VALUES (17, N'Asus', N'1250', 1, N'Spikar', N'~/accessories/spikar4.png')
 
INSERT [dbo].[accessories] ([prdid], [prdname], [price], [stock], [des], [image]) VALUES (18, N'Asus', N'1520', 1, N'Spikar', N'~/accessories/Spikar.png')
 
INSERT [dbo].[accessories] ([prdid], [prdname], [price], [stock], [des], [image]) VALUES (19, N'Logitech', N'1500', 1, N'Keybord', N'~/accessories/Iball.png')
 
INSERT [dbo].[accessories] ([prdid], [prdname], [price], [stock], [des], [image]) VALUES (20, N'Asus', N'1400', 1, N'keybord', N'~/accessories/keybord1.png')
 
INSERT [dbo].[addtocart] ([uid], [proid], [proname], [image], [price], [qty], [total], [date]) VALUES (N'krishna', 1, N'Nokia DataCable', N'~/accessories/dke2.jpg', N'200', 1, 200, N'11/6/2011')
 
INSERT [dbo].[admin] ([UserName], [password]) VALUES (N'admin', N'admin')
 
INSERT [dbo].[company] ([id], [companyname], [image]) VALUES (1, N'Dell', N'~/img/dell.png')
 
INSERT [dbo].[company] ([id], [companyname], [image]) VALUES (2, N'Asus', N'~/img/asus.png')
 
INSERT [dbo].[company] ([id], [companyname], [image]) VALUES (3, N'Lenovo', N'~/img/ibm.png')
 
INSERT [dbo].[company] ([id], [companyname], [image]) VALUES (4, N'Acer', N'~/img/acer.png')
 
INSERT [dbo].[company] ([id], [companyname], [image]) VALUES (5, N'lenova', N'~/img/Chrysanthemum.jpg')
 
INSERT [dbo].[company] ([id], [companyname], [image]) VALUES (6, N'acer', N'~/img/acer5.jpg')
 
INSERT [dbo].[feedback] ([Name], [Feedback]) VALUES (N'pooja', N'Hi............')
 
INSERT [dbo].[feedback] ([Name], [Feedback]) VALUES (N'manali', N'nice')
 
INSERT [dbo].[feedback] ([Name], [Feedback]) VALUES (N'Mansi', N'Oh.... very nice')
 
INSERT [dbo].[feedback] ([Name], [Feedback]) VALUES (N'Pooja Krishnani', N'Perfect....')
 
INSERT [dbo].[feedback] ([Name], [Feedback]) VALUES (N'Manali Baldha', N'Mind Blowing')
 
INSERT [dbo].[feedback] ([Name], [Feedback]) VALUES (N'praful', N'no')
 
INSERT [dbo].[feedback] ([Name], [Feedback]) VALUES (N'Praful', N'solanki')
 
INSERT [dbo].[feedback] ([Name], [Feedback]) VALUES (N'Praful', N'solanki')
 
INSERT [dbo].[feedback] ([Name], [Feedback]) VALUES (N'pratik', N'ambaliya')
 
INSERT [dbo].[feedback] ([Name], [Feedback]) VALUES (N'solanki', N'123')
 
INSERT [dbo].[feedback] ([Name], [Feedback]) VALUES (N'ravi', N'sharma')
 
INSERT [dbo].[feedback] ([Name], [Feedback]) VALUES (N'abc', N'very  od')
 
INSERT [dbo].[feedback] ([Name], [Feedback]) VALUES (N'abc', N'welcome')
 
INSERT [dbo].[product] ([companyid], [companyname], [proid], [proname], [price], [stock], [des], [image]) VALUES (1, N'Dell', 1, N'Dell3521', CAST(32600 AS Numeric(15, 0)), 1, N'Dell', N'~/product/abc.png')
 
INSERT [dbo].[product] ([companyid], [companyname], [proid], [proname], [price], [stock], [des], [image]) VALUES (1, N'Dell', 2, N'Dell3522', CAST(33900 AS Numeric(15, 0)), 1, N'Dell', N'~/product/dell1.jpg')
 
INSERT [dbo].[product] ([companyid], [companyname], [proid], [proname], [price], [stock], [des], [image]) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
 
INSERT [dbo].[product] ([companyid], [companyname], [proid], [proname], [price], [stock], [des], [image]) VALUES (1, N'Dell', 3, N'Dell3555', CAST(34200 AS Numeric(15, 0)), 1, N'Dell', N'~/product/dell2.jpg')
 
INSERT [dbo].[product] ([companyid], [companyname], [proid], [proname], [price], [stock], [des], [image]) VALUES (1, N'Dell', 4, N'Dell-inspiron-2231', CAST(31900 AS Numeric(15, 0)), 1, N'Dell', N'~/product/dell3.jpg')
 
INSERT [dbo].[product] ([companyid], [companyname], [proid], [proname], [price], [stock], [des], [image]) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
 
INSERT [dbo].[product] ([companyid], [companyname], [proid], [proname], [price], [stock], [des], [image]) VALUES (1, N'Dell', 21, N'Dell-Vostro', CAST(21600 AS Numeric(15, 0)), 1, N'Dell', N'~/product/dell4.jpg')
 
INSERT [dbo].[product] ([companyid], [companyname], [proid], [proname], [price], [stock], [des], [image]) VALUES (1, N'Dell', 22, N'Dell-Super', CAST(19800 AS Numeric(15, 0)), 1, N'Dell', N'~/product/dell5.jpg')
 
INSERT [dbo].[product] ([companyid], [companyname], [proid], [proname], [price], [stock], [des], [image]) VALUES (2, N'Asus', 5, N'Asus-E-4532', CAST(30500 AS Numeric(15, 0)), 1, N'Asus', N'~/product/asus1.jpg')
 
INSERT [dbo].[product] ([companyid], [companyname], [proid], [proname], [price], [stock], [des], [image]) VALUES (2, N'Asus', 6, N'Asus-aqua', CAST(39800 AS Numeric(15, 0)), 1, N'Asus', N'~/product/asus2.jpg')
 
INSERT [dbo].[product] ([companyid], [companyname], [proid], [proname], [price], [stock], [des], [image]) VALUES (2, N'Asus', 7, N'Asus-mosam-2121', CAST(37600 AS Numeric(15, 0)), 1, N'Asus', N'~/product/asus3.jpg')
 
INSERT [dbo].[product] ([companyid], [companyname], [proid], [proname], [price], [stock], [des], [image]) VALUES (2, N'Asus', 8, N'Asus-52301', CAST(30600 AS Numeric(15, 0)), 1, N'Asus', N'~/product/asus4.jpg')
 
INSERT [dbo].[product] ([companyid], [companyname], [proid], [proname], [price], [stock], [des], [image]) VALUES (2, N'Asus', 9, N'Asus-nero', CAST(35200 AS Numeric(15, 0)), 1, N'Asus', N'~/product/asus5.jpg')
 
INSERT [dbo].[product] ([companyid], [companyname], [proid], [proname], [price], [stock], [des], [image]) VALUES (3, N'Lenovo', 10, N'Lenovo-31', CAST(40200 AS Numeric(15, 0)), 1, N'Lenovo', N'~/product/lenovo1.jpg')
 
INSERT [dbo].[product] ([companyid], [companyname], [proid], [proname], [price], [stock], [des], [image]) VALUES (3, N'Lenovo', 11, N'Lenovo-gurad-2152', CAST(43500 AS Numeric(15, 0)), 1, N'Lenovo', N'~/product/lenovo2.jpg')
 
INSERT [dbo].[product] ([companyid], [companyname], [proid], [proname], [price], [stock], [des], [image]) VALUES (3, N'Lenovo', 12, N'Lenovo-vostro', CAST(41900 AS Numeric(15, 0)), 1, N'Lenovo', N'~/product/lenovo3.jpg')
 
INSERT [dbo].[product] ([companyid], [companyname], [proid], [proname], [price], [stock], [des], [image]) VALUES (3, N'Lenovo', 13, N'Lenovo-vostro-2', CAST(45300 AS Numeric(15, 0)), 1, N'Lenovo', N'~/product/lenovo4.jpg')
 
INSERT [dbo].[product] ([companyid], [companyname], [proid], [proname], [price], [stock], [des], [image]) VALUES (3, N'Lenovo', 14, N'Lenovo-magic', CAST(38600 AS Numeric(15, 0)), 1, N'Lenovo', N'~/product/lenovo5.jpg')
 
INSERT [dbo].[product] ([companyid], [companyname], [proid], [proname], [price], [stock], [des], [image]) VALUES (3, N'Lenovo', 15, N'Lenovo-magic-2', CAST(46900 AS Numeric(15, 0)), 0, N'Lenovo', N'~/product/lenovo6.jpg')
 
INSERT [dbo].[product] ([companyid], [companyname], [proid], [proname], [price], [stock], [des], [image]) VALUES (4, N'Acer', 16, N'Acer-p1', CAST(48500 AS Numeric(15, 0)), 1, N'Acer', N'~/product/acer1.jpg')
 
INSERT [dbo].[product] ([companyid], [companyname], [proid], [proname], [price], [stock], [des], [image]) VALUES (4, N'Acer', 17, N'Acer-2130', CAST(38000 AS Numeric(15, 0)), 1, N'Acer', N'~/product/acer2.jpg')
 
INSERT [dbo].[product] ([companyid], [companyname], [proid], [proname], [price], [stock], [des], [image]) VALUES (4, N'Acer', 18, N'Acer-4522', CAST(28000 AS Numeric(15, 0)), 1, N'Acer', N'~/product/acer3.jpg')
 
INSERT [dbo].[product] ([companyid], [companyname], [proid], [proname], [price], [stock], [des], [image]) VALUES (4, N'Acer', 19, N'Acer-slim', CAST(50000 AS Numeric(15, 0)), 1, N'Acer', N'~/product/acer4.jpg')
 
INSERT [dbo].[product] ([companyid], [companyname], [proid], [proname], [price], [stock], [des], [image]) VALUES (4, N'Acer', 20, N'Acer-guru', CAST(54530 AS Numeric(15, 0)), 1, N'Acer', N'~/product/acer5.jpg')
 
INSERT [dbo].[productdescription] ([proid], [proname], [height], [width], [color], [bluetooth], [datacable], [camera], [gprs], [charger]) VALUES (1, N'Dell-3521', N'1326', N'768', N'red', N'Yes', N'Yes', N'Yes', N'yes', N'yes')
 
INSERT [dbo].[productdescription] ([proid], [proname], [height], [width], [color], [bluetooth], [datacable], [camera], [gprs], [charger]) VALUES (2, N'Dell-3522', N'1150', N'900', N'white', N'Yes', N'Yes', N'Yes', N'yes', N'yes')
 
INSERT [dbo].[productdescription] ([proid], [proname], [height], [width], [color], [bluetooth], [datacable], [camera], [gprs], [charger]) VALUES (3, N'Dell3555', N'1050', N'800', N'white', N'Yes', N'Yes', N'Yes', N'yes', N'yes')
 
INSERT [dbo].[productdescription] ([proid], [proname], [height], [width], [color], [bluetooth], [datacable], [camera], [gprs], [charger]) VALUES (4, N'Dell-inspiron-2231', N'1326', N'1256', N'black', N'Yes', N'Yes', N'Yes', N'yes', N'yes')
 
INSERT [dbo].[productdescription] ([proid], [proname], [height], [width], [color], [bluetooth], [datacable], [camera], [gprs], [charger]) VALUES (5, N'Asus-E-4532', N'1000', N'900', N'white', N'Yes', N'No', N'Yes', N'yes', N'yes')
 
INSERT [dbo].[productdescription] ([proid], [proname], [height], [width], [color], [bluetooth], [datacable], [camera], [gprs], [charger]) VALUES (6, N'Asus-aqua', N'1100', N'750', N'red', N'Yes', N'No', N'Yes', N'yes', N'yes')
 
INSERT [dbo].[productdescription] ([proid], [proname], [height], [width], [color], [bluetooth], [datacable], [camera], [gprs], [charger]) VALUES (7, N'Asus-mosam-2121', N'1150', N'750', N'white', N'Yes', N'No', N'Yes', N'yes', N'yes')
 
INSERT [dbo].[productdescription] ([proid], [proname], [height], [width], [color], [bluetooth], [datacable], [camera], [gprs], [charger]) VALUES (8, N'Asus-52301', N'1050', N'800', N'red', N'Yes', N'No', N'Yes', N'yes', N'yes')
 
INSERT [dbo].[productdescription] ([proid], [proname], [height], [width], [color], [bluetooth], [datacable], [camera], [gprs], [charger]) VALUES (9, N'Asus-nero', N'1200', N'900', N'black', N'Yes', N'No', N'Yes', N'yes', N'yes')
 
INSERT [dbo].[productdescription] ([proid], [proname], [height], [width], [color], [bluetooth], [datacable], [camera], [gprs], [charger]) VALUES (10, N'Lenovo-31', N'1250', N'800', N'black', N'Yes', N'Yes', N'Yes', N'yes', N'yes')
 
INSERT [dbo].[productdescription] ([proid], [proname], [height], [width], [color], [bluetooth], [datacable], [camera], [gprs], [charger]) VALUES (11, N'Lenovo-gurad-2152', N'1520', N'900', N'black', N'Yes', N'No', N'Yes', N'yes', N'yes')
 
INSERT [dbo].[productdescription] ([proid], [proname], [height], [width], [color], [bluetooth], [datacable], [camera], [gprs], [charger]) VALUES (12, N'Lenovo-vostro', N'1300', N'820', N'red', N'Yes', N'Yes', N'Yes', N'yes', N'yes')
 
INSERT [dbo].[productdescription] ([proid], [proname], [height], [width], [color], [bluetooth], [datacable], [camera], [gprs], [charger]) VALUES (13, N'Lenovo-vostro-2', N'1220', N'840', N'black', N'Yes', N'No', N'Yes', N'yes', N'yes')
 
INSERT [dbo].[productdescription] ([proid], [proname], [height], [width], [color], [bluetooth], [datacable], [camera], [gprs], [charger]) VALUES (14, N'Lenovo-magic', N'1240', N'670', N'white', N'Yes', N'No', N'Yes', N'yes', N'yes')
 
INSERT [dbo].[productdescription] ([proid], [proname], [height], [width], [color], [bluetooth], [datacable], [camera], [gprs], [charger]) VALUES (15, N'Lenovo-magic-2', N'1230', N'650', N'red', N'Yes', N'Yes', N'Yes', N'yes', N'yes')
 
INSERT [dbo].[productdescription] ([proid], [proname], [height], [width], [color], [bluetooth], [datacable], [camera], [gprs], [charger]) VALUES (16, N'Acer-p1', N'1150', N'750', N'black', N'Yes', N'Yes', N'Yes', N'yes', N'yes')
 
INSERT [dbo].[productdescription] ([proid], [proname], [height], [width], [color], [bluetooth], [datacable], [camera], [gprs], [charger]) VALUES (17, N'Acer-2130', N'1320', N'700', N'black', N'Yes', N'Yes', N'Yes', N'yes', N'yes')
 
INSERT [dbo].[productdescription] ([proid], [proname], [height], [width], [color], [bluetooth], [datacable], [camera], [gprs], [charger]) VALUES (18, N'Acer-4522', N'1420', N'620', N'pink', N'Yes', N'No', N'Yes', N'yes', N'yes')
 
INSERT [dbo].[productdescription] ([proid], [proname], [height], [width], [color], [bluetooth], [datacable], [camera], [gprs], [charger]) VALUES (19, N'Acer-slim', N'1326', N'768', N'red', N'Yes', N'Yes', N'Yes', N'yes', N'yes')
 
INSERT [dbo].[productdescription] ([proid], [proname], [height], [width], [color], [bluetooth], [datacable], [camera], [gprs], [charger]) VALUES (20, N'Acer-guru', N'1256', N'758', N'black', N'Yes', N'Yes', N'Yes', N'yes', N'yes')
 
INSERT [dbo].[productdescription] ([proid], [proname], [height], [width], [color], [bluetooth], [datacable], [camera], [gprs], [charger]) VALUES (21, N'Dell-vostro', N'1356', N'860', N'Pink', N'Yes', N'Yes', N'Yes', N'Yes', N'Yes')
 
INSERT [dbo].[productdescription] ([proid], [proname], [height], [width], [color], [bluetooth], [datacable], [camera], [gprs], [charger]) VALUES (22, N'Dell-super', N'1256', N'1150', N'black', N'Yes', N'Yes', N'Yes', N'Yes', N'Yes')
 
INSERT [dbo].[productdescription] ([proid], [proname], [height], [width], [color], [bluetooth], [datacable], [camera], [gprs], [charger]) VALUES (1, N'lenova', N'20', N'30', N'red', N'Yes', N'Yes', N'Yes', N'yes', N'yes')
 
INSERT [dbo].[productdescription] ([proid], [proname], [height], [width], [color], [bluetooth], [datacable], [camera], [gprs], [charger]) VALUES (1, N'lenova', N'45', N'25', N'pink', N'Yes', N'Yes', N'Yes', N'yes', N'yes')
 
INSERT [dbo].[productdescription] ([proid], [proname], [height], [width], [color], [bluetooth], [datacable], [camera], [gprs], [charger]) VALUES (60, N'lg-chocolate-3', N'1326', N'1156', N'white', N'Yes', N'Yes', N'Yes', N'yes', N'yes')
 
INSERT [dbo].[productdescription] ([proid], [proname], [height], [width], [color], [bluetooth], [datacable], [camera], [gprs], [charger]) VALUES (67, N'lg-gb220', N'545', N'345', N'white', N'Yes', N'No', N'Yes', N'yes', N'yes')
 
INSERT [dbo].[productdescription] ([proid], [proname], [height], [width], [color], [bluetooth], [datacable], [camera], [gprs], [charger]) VALUES (67, N'lg-gb220', N'545', N'345', N'white', N'Yes', N'No', N'Yes', N'yes', N'yes')
 
INSERT [dbo].[Register] ([id], [fname], [lnam], [gender], [dob], [address], [city], [state], [country], [mobileno], [emailid], [password], [cardno], [bankname], [ques], [answer], [username]) VALUES (1, N'krishna', N'ajakiya', N'Female', N'11-1-1988', N'javahar road', N'junagadh', N'gujarat', N'India', N'9978912345', N'krish@yahoo.com', N'krish', N'123123123', N'bob', N'your favourite book?', N'php', N'krishna')
 
INSERT [dbo].[Register] ([id], [fname], [lnam], [gender], [dob], [address], [city], [state], [country], [mobileno], [emailid], [password], [cardno], [bankname], [ques], [answer], [username]) VALUES (2, N'pooja', N'krishnani', N'Female', N'2/15/2012', N'2-shantinagar
Junagadh Road', N'Jetpur', N'Guj', N'India', N'9428700523', N'pooja14krishnani@gmail.com', N'manali', N'123', N'icici', N'your favourite book?', N'maths', N'pooja')
 
INSERT [dbo].[Register] ([id], [fname], [lnam], [gender], [dob], [address], [city], [state], [country], [mobileno], [emailid], [password], [cardno], [bankname], [ques], [answer], [username]) VALUES (3, N'Andani', N'Paras', N'Male', N'1/9/2015', N'To:Bhingrad
Ta:Lathi
Dis:Amreli', N'Amreli', N'Gujarat', N'India', N'9537217822', N'parasandani922@gmail.com', N'ambition', N'912', N'SBI', N'your favourite book?', N'Ellia', N'paras')
 
INSERT [dbo].[Register] ([id], [fname], [lnam], [gender], [dob], [address], [city], [state], [country], [mobileno], [emailid], [password], [cardno], [bankname], [ques], [answer], [username]) VALUES (4, N'Solanki', N'Praful', N'Male', N'12/27/2012', N'AT Bhingrad
TA Lathi', N'Bhingrad', N'Gujarat', N'India', N'9909825773', N'solankipraful.sp3@gmail.com', N'27praful-', N'160', N'SBI', N' your favourite teacher?', N'Riddhi', N'PRAFUL')
 
INSERT [dbo].[Register] ([id], [fname], [lnam], [gender], [dob], [address], [city], [state], [country], [mobileno], [emailid], [password], [cardno], [bankname], [ques], [answer], [username]) VALUES (5, N'juli', N'vamja', N'Female', N'1/2/2018', N'amreli lathi road', N'amreli', N'india', N'India', N'9965478521', N'vamjajuli@gmail.com', N'12345', N'22554', N'sbi', N' your hobby?', N'read', N'juli')
 
INSERT [dbo].[Register] ([id], [fname], [lnam], [gender], [dob], [address], [city], [state], [country], [mobileno], [emailid], [password], [cardno], [bankname], [ques], [answer], [username]) VALUES (6, N'abc', N'asdf', N'Male', N'1/12/2018', N'adsfggvbgtfg', N'sffghyhn', N'dfghgy', N'India', N'9954786321', N'mdashshd@gmail.com', N'12345', N'3656', N'sbi', N' your hobby?', N'write', N'juli')
 
INSERT [dbo].[Register] ([id], [fname], [lnam], [gender], [dob], [address], [city], [state], [country], [mobileno], [emailid], [password], [cardno], [bankname], [ques], [answer], [username]) VALUES (7, N'reshma', N'dabhi', N'Female', N'1/3/2018', N'amreli', N'amreli', N'india', N'India', N'9965478521', N'reshma@gmail.com', N'12345', N'5544', N'SBI', N' your hobby?', N'read', N'juli')
 
INSERT [dbo].[Register] ([id], [fname], [lnam], [gender], [dob], [address], [city], [state], [country], [mobileno], [emailid], [password], [cardno], [bankname], [ques], [answer], [username]) VALUES (8, N'abc', N'acvb', N'Female', N'1/10/2018', N'lathi,amreli...', N'lathi', N'gujrat', N'India', N'3698521236', N'abc@gmail.com', N'1230', N'12', N'boi', N'your favourite book?', N'rs agraval', N'abc')
 
INSERT [dbo].[temp] ([uid], [proid], [proname], [image], [price], [qty], [total], [date]) VALUES (N'pooja', 9, N'Samsung Dongal', N'~/accessories/KK-Dongle.gif', N'300', 1, 300, N'2/16/2012')
 
INSERT [dbo].[temp] ([uid], [proid], [proname], [image], [price], [qty], [total], [date]) VALUES (N'PRAFUL', 10, N'Lenovo-31', N'~/product/lenovo1.jpg', N'40200', 4, 160800, N'3/30/2015')
 
INSERT [dbo].[temp] ([uid], [proid], [proname], [image], [price], [qty], [total], [date]) VALUES (N'paras', 16, N'Acer-p1', N'~/product/acer1.jpg', N'48500', 1, 48500, N'3/22/2015')
 
INSERT [dbo].[temp] ([uid], [proid], [proname], [image], [price], [qty], [total], [date]) VALUES (N'PRAFUL', 16, N'Acer-p1', N'~/product/acer1.jpg', N'48500', 4, 194000, N'3/30/2015')
 
USE [master]
GO
ALTER DATABASE [compshopping] SET  READ_WRITE 
GO
