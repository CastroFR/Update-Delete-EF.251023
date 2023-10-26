USE [master]
GO
/****** Object:  Database [PROGRAM2]    Script Date: 25/10/2023 23:05:54 ******/
CREATE DATABASE [PROGRAM2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PROGRAM2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PROGRAM2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PROGRAM2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PROGRAM2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [PROGRAM2] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PROGRAM2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PROGRAM2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PROGRAM2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PROGRAM2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PROGRAM2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PROGRAM2] SET ARITHABORT OFF 
GO
ALTER DATABASE [PROGRAM2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PROGRAM2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PROGRAM2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PROGRAM2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PROGRAM2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PROGRAM2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PROGRAM2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PROGRAM2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PROGRAM2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PROGRAM2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PROGRAM2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PROGRAM2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PROGRAM2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PROGRAM2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PROGRAM2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PROGRAM2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PROGRAM2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PROGRAM2] SET RECOVERY FULL 
GO
ALTER DATABASE [PROGRAM2] SET  MULTI_USER 
GO
ALTER DATABASE [PROGRAM2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PROGRAM2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PROGRAM2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PROGRAM2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PROGRAM2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PROGRAM2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PROGRAM2', N'ON'
GO
ALTER DATABASE [PROGRAM2] SET QUERY_STORE = ON
GO
ALTER DATABASE [PROGRAM2] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [PROGRAM2]
GO
/****** Object:  Table [dbo].[ESTUDIANTE]    Script Date: 25/10/2023 23:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESTUDIANTE](
	[Id] [int] NOT NULL,
	[Nombres] [varchar](255) NOT NULL,
	[Apellidos] [varchar](255) NULL,
	[Edad] [int] NULL,
	[Sexo] [varchar](50) NULL,
 CONSTRAINT [PK_ESTUDIANTE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [PROGRAM2] SET  READ_WRITE 
GO
