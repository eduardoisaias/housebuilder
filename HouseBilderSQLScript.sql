USE [master]
GO
/****** Object:  Database [housebuilder]    Script Date: 14/11/2018 10:17:02 p. m. ******/
CREATE DATABASE [housebuilder]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'housebuilder', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\housebuilder.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'housebuilder_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\housebuilder_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [housebuilder] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [housebuilder].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [housebuilder] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [housebuilder] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [housebuilder] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [housebuilder] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [housebuilder] SET ARITHABORT OFF 
GO
ALTER DATABASE [housebuilder] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [housebuilder] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [housebuilder] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [housebuilder] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [housebuilder] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [housebuilder] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [housebuilder] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [housebuilder] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [housebuilder] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [housebuilder] SET  DISABLE_BROKER 
GO
ALTER DATABASE [housebuilder] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [housebuilder] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [housebuilder] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [housebuilder] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [housebuilder] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [housebuilder] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [housebuilder] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [housebuilder] SET RECOVERY FULL 
GO
ALTER DATABASE [housebuilder] SET  MULTI_USER 
GO
ALTER DATABASE [housebuilder] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [housebuilder] SET DB_CHAINING OFF 
GO
ALTER DATABASE [housebuilder] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [housebuilder] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [housebuilder] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'housebuilder', N'ON'
GO
ALTER DATABASE [housebuilder] SET QUERY_STORE = OFF
GO
USE [housebuilder]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [housebuilder]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 14/11/2018 10:17:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[SecondName] [varchar](50) NOT NULL,
	[JobTitle] [varchar](45) NOT NULL,
	[Age] [int] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [housebuilder] SET  READ_WRITE 
GO
