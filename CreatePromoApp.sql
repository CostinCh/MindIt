USE [master]
GO
/****** Object:  Database [PromotionApplication]    Script Date: 12/10/2016 5:45:41 PM ******/
CREATE DATABASE [PromotionApplication]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PromotionApplication', FILENAME = N'C:\DataMindIt\PromotionApplication.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PromotionApplication_log', FILENAME = N'C:\DataMindIt\PromotionApplication_log.ldf' , SIZE = 6272KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PromotionApplication] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PromotionApplication].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PromotionApplication] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PromotionApplication] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PromotionApplication] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PromotionApplication] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PromotionApplication] SET ARITHABORT OFF 
GO
ALTER DATABASE [PromotionApplication] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PromotionApplication] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PromotionApplication] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PromotionApplication] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PromotionApplication] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PromotionApplication] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PromotionApplication] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PromotionApplication] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PromotionApplication] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PromotionApplication] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PromotionApplication] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PromotionApplication] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PromotionApplication] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PromotionApplication] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PromotionApplication] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PromotionApplication] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PromotionApplication] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PromotionApplication] SET RECOVERY FULL 
GO
ALTER DATABASE [PromotionApplication] SET  MULTI_USER 
GO
ALTER DATABASE [PromotionApplication] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PromotionApplication] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PromotionApplication] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PromotionApplication] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [PromotionApplication] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PromotionApplication', N'ON'
GO
USE [PromotionApplication]
GO
/****** Object:  Table [dbo].[PA_ITEM]    Script Date: 12/10/2016 5:45:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PA_ITEM](
	[Item_ID] [int] NOT NULL,
	[Item_Name] [varchar](100) NOT NULL,
	[Item_Description] [varchar](1000) NOT NULL,
	[Brand_ID] [int] NOT NULL,
	[Brand_Name] [varchar](100) NOT NULL,
	[Category_ID] [int] NOT NULL,
	[Category_Name] [varchar](100) NOT NULL,
	[Price_Date] [date] NULL,
	[Price_Value] [float] NULL,
 CONSTRAINT [PK_PA_ITEM] PRIMARY KEY CLUSTERED 
(
	[Item_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PA_ITEM]    Script Date: 12/10/2016 5:45:41 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_PA_ITEM] ON [dbo].[PA_ITEM]
(
	[Item_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [PromotionApplication] SET  READ_WRITE 
GO
