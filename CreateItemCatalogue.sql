USE [master]
GO
/****** Object:  Database [ItemCatalogue]    Script Date: 12/10/2016 5:30:38 PM ******/
CREATE DATABASE [ItemCatalogue]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ItemCatalogue', FILENAME = N'C:\DataMindIt\ItemCatalogue.mdf' , SIZE = 35840KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ItemCatalogue_log', FILENAME = N'C:\DataMindIt\ItemCatalogue_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ItemCatalogue] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ItemCatalogue].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ItemCatalogue] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ItemCatalogue] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ItemCatalogue] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ItemCatalogue] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ItemCatalogue] SET ARITHABORT OFF 
GO
ALTER DATABASE [ItemCatalogue] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ItemCatalogue] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ItemCatalogue] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ItemCatalogue] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ItemCatalogue] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ItemCatalogue] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ItemCatalogue] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ItemCatalogue] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ItemCatalogue] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ItemCatalogue] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ItemCatalogue] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ItemCatalogue] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ItemCatalogue] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ItemCatalogue] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ItemCatalogue] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ItemCatalogue] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ItemCatalogue] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ItemCatalogue] SET RECOVERY FULL 
GO
ALTER DATABASE [ItemCatalogue] SET  MULTI_USER 
GO
ALTER DATABASE [ItemCatalogue] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ItemCatalogue] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ItemCatalogue] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ItemCatalogue] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ItemCatalogue] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ItemCatalogue', N'ON'
GO
USE [ItemCatalogue]
GO
/****** Object:  Table [dbo].[IC_BRAND]    Script Date: 12/10/2016 5:30:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IC_BRAND](
	[Brand_ID] [int] IDENTITY(1,1) NOT NULL,
	[Brand_Name] [varchar](100) NOT NULL,
	[Brand_Desc] [varchar](1000) NULL,
 CONSTRAINT [PK_IC_BRAND] PRIMARY KEY CLUSTERED 
(
	[Brand_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IC_CATEGORY]    Script Date: 12/10/2016 5:30:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IC_CATEGORY](
	[Category_ID] [int] IDENTITY(1,1) NOT NULL,
	[Category_Name] [varchar](100) NOT NULL,
	[Category_Desc] [varchar](1000) NULL,
 CONSTRAINT [PK_IC_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[Category_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IC_ITEM]    Script Date: 12/10/2016 5:30:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IC_ITEM](
	[Item_ID] [int] IDENTITY(1,1) NOT NULL,
	[Item_Name] [varchar](100) NOT NULL,
	[Item_Description] [varchar](1000) NOT NULL,
	[Brand_ID] [int] NOT NULL,
	[Category_ID] [int] NOT NULL,
 CONSTRAINT [PK_IC_ITEM] PRIMARY KEY CLUSTERED 
(
	[Item_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_IC_BRAND]    Script Date: 12/10/2016 5:30:39 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_IC_BRAND] ON [dbo].[IC_BRAND]
(
	[Brand_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_IC_CATEGORY]    Script Date: 12/10/2016 5:30:39 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_IC_CATEGORY] ON [dbo].[IC_CATEGORY]
(
	[Category_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_IC_ITEM]    Script Date: 12/10/2016 5:30:39 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_IC_ITEM] ON [dbo].[IC_ITEM]
(
	[Item_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IC_ITEM]  WITH NOCHECK ADD  CONSTRAINT [FK_IC_ITEM_IC_BRAND] FOREIGN KEY([Brand_ID])
REFERENCES [dbo].[IC_BRAND] ([Brand_ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[IC_ITEM] CHECK CONSTRAINT [FK_IC_ITEM_IC_BRAND]
GO
ALTER TABLE [dbo].[IC_ITEM]  WITH NOCHECK ADD  CONSTRAINT [FK_IC_ITEM_IC_CATEGORY] FOREIGN KEY([Category_ID])
REFERENCES [dbo].[IC_CATEGORY] ([Category_ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[IC_ITEM] CHECK CONSTRAINT [FK_IC_ITEM_IC_CATEGORY]
GO
USE [master]
GO
ALTER DATABASE [ItemCatalogue] SET  READ_WRITE 
GO
