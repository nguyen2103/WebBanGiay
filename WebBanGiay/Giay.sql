USE [master]
GO
/****** Object:  Database [WebBanGiay]    Script Date: 13/04/2024 3:38:38 SA ******/
CREATE DATABASE [WebBanGiay]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebBanGiay', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\WebBanGiay.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WebBanGiay_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\WebBanGiay_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [WebBanGiay] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebBanGiay].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebBanGiay] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebBanGiay] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebBanGiay] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebBanGiay] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebBanGiay] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebBanGiay] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebBanGiay] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebBanGiay] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebBanGiay] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebBanGiay] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebBanGiay] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebBanGiay] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebBanGiay] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebBanGiay] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebBanGiay] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WebBanGiay] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebBanGiay] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebBanGiay] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebBanGiay] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebBanGiay] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebBanGiay] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [WebBanGiay] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebBanGiay] SET RECOVERY FULL 
GO
ALTER DATABASE [WebBanGiay] SET  MULTI_USER 
GO
ALTER DATABASE [WebBanGiay] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebBanGiay] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebBanGiay] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebBanGiay] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebBanGiay] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebBanGiay] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'WebBanGiay', N'ON'
GO
ALTER DATABASE [WebBanGiay] SET QUERY_STORE = ON
GO
ALTER DATABASE [WebBanGiay] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [WebBanGiay]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 13/04/2024 3:38:38 SA ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 13/04/2024 3:38:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 13/04/2024 3:38:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 13/04/2024 3:38:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 13/04/2024 3:38:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 13/04/2024 3:38:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 13/04/2024 3:38:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 13/04/2024 3:38:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 13/04/2024 3:38:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 13/04/2024 3:38:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 13/04/2024 3:38:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[ShippingAddress] [nvarchar](max) NOT NULL,
	[Notes] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 13/04/2024 3:38:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 13/04/2024 3:38:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240408133455_add-migration DB', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240408135024_AddIdentity', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240408140007_ExtendIdentityUser', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240408142048_add-migration', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240408143424_1', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240408150909_db3', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240410100941_db', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240410134448_db11', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240410140023_db113', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240410141114_db1133', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240410141459_db1138', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240410142739_db132', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240410143247_db11', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240410143715_db114', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240410144819_db11421', N'8.0.3')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'09e7559b-c269-4cef-ab32-8eb39e672619', N'Admin', N'ADMIN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'360dad8f-d6af-4eb5-9423-7b22c77d1cda', N'Company', N'COMPANY', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'85e74cac-814d-4ac3-a8a0-604cefab76bf', N'Customer', N'CUSTOMER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'bc578a4c-b638-4d86-8a3c-4036f0d641c5', N'Employee', N'EMPLOYEE', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'979aa3ed-3617-45d1-b059-edfd864c5f24', N'09e7559b-c269-4cef-ab32-8eb39e672619')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bc499060-877b-4975-8a4c-6df8a601e945', N'09e7559b-c269-4cef-ab32-8eb39e672619')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'956104a9-1662-4ab7-8f7e-7e4cb30928b9', N'bc578a4c-b638-4d86-8a3c-4036f0d641c5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a9c8c70f-f0eb-4f98-be14-c3c600601534', N'bc578a4c-b638-4d86-8a3c-4036f0d641c5')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1d8390c6-c779-448a-9db7-27920d94e9ce', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAELzpguIoRGMBdQCNquf/h6DiLFuPJE39dbVairmTf/VQgf8JZi0QX0xq7eTbb5q0OA==', N'EGITRMVVYGVDAYTBQ637S4YGUQFKBQ4U', N'2c5258eb-5df7-4c7c-84b6-cf817315890a', N'0943013031', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8a8bf2cf-fd03-4771-9b87-9b56603f4080', N'userA@gmail.com', N'USERA@GMAIL.COM', N'userA@gmail.com', N'USERA@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEMWROJRo2m5i+8MHC5LRgPWGNhtxvaGMMbOkmSrBNzFwsQ6Hq/0OJmvKNqE5Lw3Iqg==', N'HLQJ7MXASXAMIBNMZVUWSFGM7YAKKVKM', N'10c8400d-8c3f-4e42-bdeb-cf1ac8d96460', N'0923432', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'956104a9-1662-4ab7-8f7e-7e4cb30928b9', N'employee2@gmail.com', N'EMPLOYEE2@GMAIL.COM', N'employee2@gmail.com', N'EMPLOYEE2@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEMTImTURyfsgikEI4W64M1ubcItvYSMh3lWwxjpGuzr//rGL8XQBsHZlUQ/IrLFZyA==', N'R3MVEKWF5HXWR6UO33J3GFHW5SYZL6KG', N'77ac459a-6f25-4a75-8b52-20dd69226572', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'979aa3ed-3617-45d1-b059-edfd864c5f24', N'admin123@gmail.com', N'ADMIN123@GMAIL.COM', N'admin123@gmail.com', N'ADMIN123@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEEZrkyXfiOLof1tBYT4+fw6jG2n0jivdVCI0e31n3DeyRCQJJbJcjkBUjBz8vMnaJQ==', N'NNO6BHSVUMHSYCPQK7A727N6HW4I62GZ', N'fe6ca80e-7546-435f-abc1-07c165c8fe3e', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a9c8c70f-f0eb-4f98-be14-c3c600601534', N'employeeC@gmail.com', N'EMPLOYEEC@GMAIL.COM', N'employeeC@gmail.com', N'EMPLOYEEC@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAED3XtpAo2eI2I3RgWk+jP/1LkHEa2C67/khBNoby+CV85sUu6CmzdjcrfCdoTu7OhA==', N'ADUM7HFCEEME6Q3LJMQ4IOVTO33KSF32', N'90cf29cd-33a6-4a96-8332-24cbbe9e540f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bc499060-877b-4975-8a4c-6df8a601e945', N'adminB@gmail.com', N'ADMINB@GMAIL.COM', N'adminB@gmail.com', N'ADMINB@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEOvrTSyEAhnSPYN6NhSpcHsQT95W1gWpwb3gYKVss0PcTFvLt/gCDKmWGAUJg6uoLQ==', N'RAXCPP67MQONADFPZDBMXSUBBHGUTK52', N'80cdc346-8324-4dc7-bb8f-24b110810b77', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd01af1e0-9fd1-4db7-8d73-19dd89904e2a', N'employee1@gmail.com', N'EMPLOYEE1@GMAIL.COM', N'employee1@gmail.com', N'EMPLOYEE1@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEHstxyE295WcASTqB0A+SronUK/WUJj0QLW/Gyz8u7Rwbh4LvHy1mA9U3AjrbG62nw==', N'CDJQGHX4DDBWYT5RYVFYH5YB3FLQY6RM', N'd8daf9ff-c5ff-458d-9997-e043547e0acd', N'143423', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd7f751ed-5f9f-4b17-8d9c-ddc64bcc5cb3', N'adminA@gmail.com', N'ADMINA@GMAIL.COM', N'adminA@gmail.com', N'ADMINA@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEJRO6tv+LGpbyFK0SGoMHSOK0psINpXFlUE0TVxCdU0DPfBVA2YlzPwKpyxrJkKe6g==', N'FDCL7KQFXKDMLT3UPSVCN6SHREQDWSDN', N'6c242a80-a79c-4ac9-8a39-438d8647f728', N'012345678', 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Nike')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Adidas')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Vans')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (13, N'Jordan')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (1, 1, 10, 1, CAST(2900.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (2, 1, 9, 1, CAST(2800.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (3, 2, 10, 1, CAST(2900000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (5, 4, 9, 1, CAST(2800000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (6, 5, 1, 1, CAST(2600000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (7, 7, 1, 1, CAST(2600000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (8, 10, 1, 1, CAST(2600000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (9, 11, 1, 1, CAST(2600000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [TotalPrice], [ShippingAddress], [Notes]) VALUES (1, N'8a8bf2cf-fd03-4771-9b87-9b56603f4080', CAST(N'2024-04-10T16:35:02.8384293' AS DateTime2), CAST(5700.00 AS Decimal(18, 2)), N'sạdgsakhdskhdhkgdgaksd', N'dasd')
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [TotalPrice], [ShippingAddress], [Notes]) VALUES (2, N'bc499060-877b-4975-8a4c-6df8a601e945', CAST(N'2024-04-11T23:25:58.9772736' AS DateTime2), CAST(2900000.00 AS Decimal(18, 2)), N'sad', N'đá')
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [TotalPrice], [ShippingAddress], [Notes]) VALUES (4, N'956104a9-1662-4ab7-8f7e-7e4cb30928b9', CAST(N'2024-04-12T09:29:51.1361398' AS DateTime2), CAST(2800000.00 AS Decimal(18, 2)), N'sạdgsakhdskhdhkgdgaksd', N'dsa')
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [TotalPrice], [ShippingAddress], [Notes]) VALUES (5, N'956104a9-1662-4ab7-8f7e-7e4cb30928b9', CAST(N'2024-04-12T09:33:08.0609608' AS DateTime2), CAST(2600000.00 AS Decimal(18, 2)), N'sạdgsakhdskhdhkgdgaksd', N'dsad')
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [TotalPrice], [ShippingAddress], [Notes]) VALUES (7, N'bc499060-877b-4975-8a4c-6df8a601e945', CAST(N'2024-04-12T10:03:26.1970460' AS DateTime2), CAST(2600000.00 AS Decimal(18, 2)), N'đâs', N'đasad')
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [TotalPrice], [ShippingAddress], [Notes]) VALUES (10, N'bc499060-877b-4975-8a4c-6df8a601e945', CAST(N'2024-04-12T11:38:27.5223980' AS DateTime2), CAST(2600000.00 AS Decimal(18, 2)), N'đasad', N'dsadsa')
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [TotalPrice], [ShippingAddress], [Notes]) VALUES (11, N'bc499060-877b-4975-8a4c-6df8a601e945', CAST(N'2024-04-12T11:41:59.0562325' AS DateTime2), CAST(2600000.00 AS Decimal(18, 2)), N'dsadsa', N'dsadsa')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (1, N'AIR FORCE 1 VOLT NEON', CAST(2600000.00 AS Decimal(18, 2)), N'Mã giày: AO4606-700

Phối màu: Volt/Black-Volt-Cone

Giá retail: $170

Nhà thiết kế: Bruce Kilgore

Ngày phát hành: 12/19/2018

Thương hiệu: Nike

Danh mục: Air Force 1', N'/images/AIR FORCE 1 VOLT NEON.jpeg', 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (9, N'ADIDAS CAMPUS 00S', CAST(2800000.00 AS Decimal(18, 2)), N'Mua Giày Adidas Campus 00s ‘Black Cloud White’ HQ8708 chính hãng 100% có sẵn tại Authentic Shoes. Giao hàng miễn phí trong 1 ngày.Cam kết đền tiền X5 nếu phát hiện Fake. Đổi trả miễn phí size. FREE vệ sinh giày trọn đời. MUA NGAY!', N'/images/ADIDAS CAMPUS 00S.jpeg', 2)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (10, N'ADIDAS FORUM 84 LOW', CAST(2900000.00 AS Decimal(18, 2)), N'Mua Giày Adidas Forum 84 Low ‘Orbit Grey’ FY4577 chính hãng 100% có sẵn tại Authentic Shoes. Giao hàng miễn phí trong 1 ngày. Cam kết đền tiền X5 nếu phát hiện Fake. Đổi trả miễn phí size. FREE vệ sinh giày trọn đời. MUA NGAY!', N'/images/ADIDAS FORUM 84 LOW.jpg', 2)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (11, N'ADIDAS FORUM LOW CL', CAST(3200000.00 AS Decimal(18, 2)), N'Mua Giày Adidas Forum Low Cl ‘White’ IE2121 chính hãng 100% có sẵn tại Authentic Shoes. Giao hàng miễn phí trong 1 ngày. Cam kết đền tiền X5 nếu phát hiện Fake. Đổi trả miễn phí size. FREE vệ sinh giày  trọn đời. MUA NGAY!', N'/images/ADIDAS FORUM LOW CL.jpg', 2)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (12, N'ADIDAS PROPHERE GREY', CAST(2900000.00 AS Decimal(18, 2)), N'Mã sản phẩm: CQ3023

Phối màu: Grey/Running White/Infrared

Ngày phát hành: Ngày 26 tháng 12 năm 2017

Thương hiệu: adidas

Nhà thiết kế: Nic Galway

Thiết kế: Prophere', N'/images/ADIDAS PROPHERE GREY.jpeg', 2)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (13, N'ADIDAS SAMBA OG', CAST(3600000.00 AS Decimal(18, 2)), N'Mua Giày Adidas Samba OG ‘Black Gum’ B75807 chính hãng 100% có sẵn tại Authentic Shoes. Giao hàng miễn phí trong 1 ngày. Cam kết đền tiền X5 nếu phát hiện Fake. Đổi trả miễn phí size. FREE vệ sinh giày trọn đời. MUA NGAY!', N'/images/ADIDAS SAMBA OG.jpg', 2)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (14, N'AIR FORCE 1 SHADOW', CAST(3900000.00 AS Decimal(18, 2)), N'Sẵn sàng bừng nổ cùng Nike AIR FORCE 1 SHADOW, đôi giày hứa hẹn mang lại sắc vàng rực rỡ cho mùa hè của bạn! Mặc dù ngày ra mắt chính thức vẫn chưa được tiết lộ, nhưng hãy lưu ý để không bỏ lỡ siêu phẩm này.', N'/images/AIR FORCE 1 SHADOW.jpeg', 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (15, N'AIR JORDAN 1 LOW ICE BLUE', CAST(3600000.00 AS Decimal(18, 2)), N'Giày Air Jordan 1 Low “Ice Blue” (W) DV1299-104 là một phiên bản giới hạn của dòng giày Air Jordan 1 Low. Đôi giày được thiết kế với tông màu xanh lam chủ đạo, kết hợp với các chi tiết màu trắng và đen. Lưỡi gà và gót giày được làm bằng da lộn, trong khi thân giày và đế giày được làm bằng da tổng hợp. Đôi giày được trang bị đế giữa Air Jordan cổ điển, mang lại sự thoải mái và hỗ trợ tối đa cho người mang.', N'/images/AIR JORDAN 1 LOW ICE BLUE.jpeg', 13)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (16, N'AIR JORDAN 1 LOW', CAST(4200000.00 AS Decimal(18, 2)), N'Giày Air Jordan 1 Low Ashen Slate 553558-414 là đôi giày sỡ hữu phối màu “Ashen Slate” thanh lịch với gam màu xanh, đen chủ đạo, logo Swoosh xanh navy và các chi tiết màu trắng tạo nên sự tinh tế, dễ dàng phối với nhiều phong cách.', N'/images/AIR JORDAN 1 LOW.jpeg', 13)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (17, N'AIR JORDAN COURTSIDE 23', CAST(3500000.00 AS Decimal(18, 2)), N'Mua Giày Nike Air Jordan Courtside 23 ‘White Black’ AR1000-100 chính hãng 100% có sẵn tại Authentic Shoes. Giao hàng miễn phí trong 1 ngày. Cam kết đền tiền X5 nếu phát hiện Fake. Đổi trả miễn phí size. FREE vệ sinh giày trọn đời. MUA NGAY !', N'/images/AIR JORDAN COURTSIDE 23.jpeg', 13)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (18, N'AIR JORDAN MAX AURA 5', CAST(3900000.00 AS Decimal(18, 2)), N'Mua Giày Nike Air Jordan Max Aura 5 ‘Black Cement’ DZ4353-061 chính hãng 100% có sẵn tại VKAT Sneaker. Giao hàng miễn phí trong 1 ngày. Cam kết đền tiền X5 nếu phát hiện Fake. Đổi trả miễn phí size. Dịch vụ vệ sinh trọn đời. MUA NGAY!', N'/images/AIR JORDAN MAX AURA 5.jpg', 13)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (19, N'JORDAN 1 LOW NU RETRO', CAST(3200000.00 AS Decimal(18, 2)), N'Huyền thoại Air Jordan khoác lên mình diện mạo mới Giày Nike Air Jordan Nu Retro 1 Low White Black DV5141-100. Thiết kế mang hơi thở cổ điển pha trộn nét thời thượng, hứa hẹn bùng nổ phong cách cho Giày Nike Air Jordan Nu Retro 1 Low White Black DV5141-100', N'/images/JORDAN 1 LOW NU RETRO.jpeg', 13)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (20, N'JORDAN 1 MID LIGHT SMOKE GREY', CAST(5800000.00 AS Decimal(18, 2)), N'Jordan 1 Mid Light Smoke Grey 554724-078 là một đôi giày thời trang và năng động. Đôi giày có thể được phối với nhiều trang phục khác nhau, từ quần jeans đến quần short. Jordan 1 Mid Light Smoke Grey 554724-078 là một đôi giày phù hợp cho cả nam và nữ.', N'/images/JORDAN 1 MID LIGHT SMOKE GREY.jpeg', 13)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (21, N'JORDAN 4 ''SAIL METALLIC GOLD''', CAST(8500000.00 AS Decimal(18, 2)), N'Mua Giày Nike Air Jordan 4 ‘Sail Metallic Gold’ AQ9129-170 chính hãng 100% có sẵn tại VKAT Sneaker. Giao hàng miễn phí trong 1 ngày. Cam kết đền tiền X5 nếu phát hiện Fake. Đổi trả miễn phí size. FREE vệ sinh giày trọn đời. MUA NGAY!', N'/images/JORDAN 4 ''SAIL METALLIC GOLD''.jpg', 13)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (22, N'JORDAN STADIUM 90', CAST(3900000.00 AS Decimal(18, 2)), N'Giày Jordan Stadium 90 White Grey DX4397-100 là đôi giày với thiết kế cổ điển những năm 90, với phối màu trắng xám và chất liệu da lộn cao cấp mềm mại. Giúp bạn nổi bật với mọi trang phục khi mang nó lên chân.', N'/images/JORDAN STADIUM 90.jpeg', 13)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (23, N'NIKE AIR FORCE 1 WHITE PINK', CAST(3600000.00 AS Decimal(18, 2)), N'Nike Air Force 1 là đôi giày bóng rổ đầu tiên của nhà Nike sử dụng công nghệ Nike Air. Giày được cung cấp với các kiểu giày cổ thấp, giày trung bình và giày cao cổ. Nike Air Force 1 có nhiều màu sắc và cách phối màu khác nhau, mang đến những hứng thú mới cho ” người chơi” Air Force 1.', N'/images/NIKE AIR FORCE 1 WHITE PINK.jpeg', 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (24, N'NIKE AIR MAX EXCEE', CAST(2900000.00 AS Decimal(18, 2)), N'Đôi giày Nike Air Max Excee là một tác phẩm nghệ thuật mang sứ mệnh hòa quyện giữa vẻ đẹp cổ điển và sự hiện đại. Chúng không chỉ là sự tái hiện của biểu tượng Air Max 90 mà còn là biểu tượng cá nhân của bạn. Sự kết hợp độc đáo giữa lớp da và lưới tạo nên lớp upper đa chiều, vừa thoáng khí, vừa bền bỉ. Với công nghệ Max Air tiên tiến, giày mang đến sự hỗ trợ và đàn hồi tối ưu. Cùng với thiết kế cổ giày thấp và đệm êm ái, bạn sẽ tự tin bước đi với phong cách riêng biệt và nổi bật.', N'/images/NIKE AIR MAX EXCEE.jpg', 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (25, N'NIKE E-SERIES AD', CAST(2900000.00 AS Decimal(18, 2)), N'Tăng cường sự đơn giản với Nike E-Series 1.0. Từ màu sắc dễ tạo kiểu cho đến chất liệu sang trọng, bao gồm cổ giày có đệm và đế giữa bằng xốp, đây là lời mời để bạn bắt đầu. Và để hoàn thiện, mẫu đế ngoài được lấy cảm hứng từ những khu vườn cát thiền. Đi trước để tìm nơi yên bình bên trong bạn.', N'/images/NIKE E-SERIES AD.jpeg', 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (26, N'NIKE INTERACT RUN ''BLACK''', CAST(2900000.00 AS Decimal(18, 2)), N'Khám phá trải nghiệm chạy bộ êm ái với đôi Giày Chạy Bộ Nam Nike Interact Run Se. Đôi giày là một người bạn đồng hành thông minh mang tới cho bạn trải nghiệm độc đáo với sự kết hợp hoàn hảo giữa công nghệ hiện đại và sự thoải mái vượt trội. Hãy chọn ngay để tận hưởng cảm giác chạy mới mẻ và đẳng cấp với Nike Interact Run Se.', N'/images/NIKE INTERACT RUN ''BLACK''.jpeg', 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (27, N'NIKE INTERACT RUN', CAST(2800000.00 AS Decimal(18, 2)), N'Hãy tưởng tượng bạn đang lướt trên những con đường, đôi chân nhẹ nhàng như bay, tương lai rộng mở ngay trước mắt. Đó chính là cảm giác khi bạn mang trên mình Giày Chạy Bộ Nữ Nike Interact Run. Đây không chỉ là một đôi giày, mà là một người bạn đồng hành đáng tin cậy trên hành trình chinh phục những mục tiêu thể thao của bạn.', N'/images/NIKE INTERACT RUN.jpeg', 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (28, N'NIKE MC TRAINER 2 PALE IVORY GUAVA ICE', CAST(2800000.00 AS Decimal(18, 2)), N'NIKE MC TRAINER 2 PALE IVORY GUAVA ICE', N'/images/NIKE MC TRAINER 2 PALE IVORY GUAVA ICE.jpeg', 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (29, N'NIKE REVOLUTION 7', CAST(2200000.00 AS Decimal(18, 2)), N'Giày Nike Revolution 7 là một mẫu giày thể thao đa dụng có thiết kế cực đẹp và mức giá vô cùng tốt. Với nhiều cải tiến mới so với phiên bản Revolution 6 thì đây chắc chắn sẽ trở thành mẫu giày thể thao quốc dân của Nike trong năm nay.', N'/images/NIKE REVOLUTION 7.jpeg', 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (30, N'NIKE STRUCTURE 25 PREMIUM', CAST(3600000.00 AS Decimal(18, 2)), N'Air Zoom Structure 25 là dòng giày chạy bộ thể thao được thiết kế đặc biệt để cung cấp sự ổn định, thoải mái và độ bám khi chạy trên mọi địa hình. Đây là phiên bản thứ 24 trong dòng giày chạy Air Zoom Structure của Nike, tiếp tục mang lại những cải tiến về công nghệ và thiết kế.', N'/images/NIKE STRUCTURE 25 PREMIUM.jpeg', 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (31, N'VANS KNU SKOOL', CAST(3200000.00 AS Decimal(18, 2)), N'Vans – một thương hiệu hàng đầu về thời trang/thể thao cũng như dẫn đầu trong lĩnh vực khám phá, sáng tạo. Lần này, đem phong cách trượt ván những năm 90 của thế kỷ trước trở lại làm tiền đề cho xu hướng thời trang giày “Puffy” mới với tên gọi The Knu Skool.', N'/images/VANS KNU SKOOL.jpg', 3)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 13/04/2024 3:38:38 SA ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 13/04/2024 3:38:38 SA ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 13/04/2024 3:38:38 SA ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 13/04/2024 3:38:38 SA ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 13/04/2024 3:38:38 SA ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 13/04/2024 3:38:38 SA ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 13/04/2024 3:38:38 SA ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_OrderId]    Script Date: 13/04/2024 3:38:38 SA ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_OrderId] ON [dbo].[OrderDetails]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_ProductId]    Script Date: 13/04/2024 3:38:38 SA ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_ProductId] ON [dbo].[OrderDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Orders_UserId]    Script Date: 13/04/2024 3:38:38 SA ******/
CREATE NONCLUSTERED INDEX [IX_Orders_UserId] ON [dbo].[Orders]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductImages_ProductId]    Script Date: 13/04/2024 3:38:38 SA ******/
CREATE NONCLUSTERED INDEX [IX_ProductImages_ProductId] ON [dbo].[ProductImages]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 13/04/2024 3:38:38 SA ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [WebBanGiay] SET  READ_WRITE 
GO
