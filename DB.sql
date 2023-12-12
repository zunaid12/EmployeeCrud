USE [master]
GO
/****** Object:  Database [EmployeeDatabase]    Script Date: 29-08-2023 15:06:56 ******/
CREATE DATABASE [EmployeeDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EmployeeDatabase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.TIPL\MSSQL\DATA\EmployeeDatabase.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EmployeeDatabase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.TIPL\MSSQL\DATA\EmployeeDatabase_log.ldf' , SIZE = 560KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EmployeeDatabase] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EmployeeDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EmployeeDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EmployeeDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EmployeeDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EmployeeDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EmployeeDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [EmployeeDatabase] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [EmployeeDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EmployeeDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EmployeeDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EmployeeDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EmployeeDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EmployeeDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EmployeeDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EmployeeDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EmployeeDatabase] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EmployeeDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EmployeeDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EmployeeDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EmployeeDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EmployeeDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EmployeeDatabase] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [EmployeeDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EmployeeDatabase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EmployeeDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [EmployeeDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EmployeeDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EmployeeDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EmployeeDatabase] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [EmployeeDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
USE [EmployeeDatabase]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 29-08-2023 15:06:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employees]    Script Date: 29-08-2023 15:06:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Designation] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[RecordCreatedOn] [datetime2](7) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230829073508_initial', N'7.0.10')
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([Id], [Name], [Designation], [Address], [RecordCreatedOn]) VALUES (1, N'Zunaid', N'Software Engineer ', N'Jamia,Delhi ', CAST(N'2023-08-29 13:17:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Employees] OFF
USE [master]
GO
ALTER DATABASE [EmployeeDatabase] SET  READ_WRITE 
GO
