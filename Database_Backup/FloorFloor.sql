USE [master]
GO
/****** Object:  Database [FloorFloor]    Script Date: 5/26/2021 1:45:36 PM ******/
CREATE DATABASE [FloorFloor]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FloorFloor', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\FloorFloor.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FloorFloor_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\FloorFloor_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [FloorFloor] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FloorFloor].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FloorFloor] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FloorFloor] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FloorFloor] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FloorFloor] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FloorFloor] SET ARITHABORT OFF 
GO
ALTER DATABASE [FloorFloor] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [FloorFloor] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FloorFloor] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FloorFloor] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FloorFloor] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FloorFloor] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FloorFloor] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FloorFloor] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FloorFloor] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FloorFloor] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FloorFloor] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FloorFloor] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FloorFloor] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FloorFloor] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FloorFloor] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FloorFloor] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [FloorFloor] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FloorFloor] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FloorFloor] SET  MULTI_USER 
GO
ALTER DATABASE [FloorFloor] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FloorFloor] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FloorFloor] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FloorFloor] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FloorFloor] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FloorFloor] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [FloorFloor] SET QUERY_STORE = OFF
GO
USE [FloorFloor]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/26/2021 1:45:37 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 5/26/2021 1:45:37 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/26/2021 1:45:37 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/26/2021 1:45:37 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/26/2021 1:45:37 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/26/2021 1:45:37 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/26/2021 1:45:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[FullName] [nvarchar](max) NULL,
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 5/26/2021 1:45:37 PM ******/
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
/****** Object:  Table [dbo].[Booking]    Script Date: 5/26/2021 1:45:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PropertyId] [int] NOT NULL,
	[ProOwnerName] [nvarchar](max) NULL,
	[IntrestedPersonName] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProAvailability]    Script Date: 5/26/2021 1:45:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProAvailability](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ProAvailability] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProCategory]    Script Date: 5/26/2021 1:45:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ProCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProFurnished]    Script Date: 5/26/2021 1:45:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProFurnished](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ProFurnished] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProParking]    Script Date: 5/26/2021 1:45:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProParking](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ProParking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProRentalWO]    Script Date: 5/26/2021 1:45:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProRentalWO](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ProRentalWO] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RentalPro]    Script Date: 5/26/2021 1:45:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentalPro](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PropertyHolderName] [nvarchar](max) NOT NULL,
	[ProCategoryId] [int] NOT NULL,
	[SquareFt] [int] NOT NULL,
	[BedRoom] [int] NOT NULL,
	[ProFurnishedId] [int] NOT NULL,
	[ProParkingId] [int] NOT NULL,
	[ProAvailabilityId] [int] NOT NULL,
	[HouseAmenities] [int] NOT NULL,
	[SocietyAmenities] [int] NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Rent] [int] NOT NULL,
	[SecurityDeposit] [int] NOT NULL,
	[ProRentalWOId] [int] NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[State] [nvarchar](max) NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[UpdateDt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_RentalPro] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210514062937_addProAvailabilityToDatabase', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210514063033_addProCategoryToDatabase', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210514073951_scaffoldIdentityRazorClassLib', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210514074803_AddFullNameToUsersTable', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210514075107_AddFullNameToUsersTable1', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210514075155_AddFullNameToUsersTable_Rename', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210518145548_addBookingToDb', N'5.0.6')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'767e1f68-bd06-4c5a-be90-7513180bf491', N'User', N'USER', N'99f26d50-906f-4497-98dc-645219cd2e94')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'e7d04253-8d42-4b8b-936d-275395235419', N'Admin', N'ADMIN', N'77eed755-10ee-436c-a858-bb5a763e0206')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4d5bfe12-7e96-441f-b99b-b4f0ebc66e24', N'767e1f68-bd06-4c5a-be90-7513180bf491')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5c418da7-1191-4c8d-9d62-ef136c0368e9', N'767e1f68-bd06-4c5a-be90-7513180bf491')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ba6ccc4d-10de-48e5-8a29-be6b4b3de590', N'767e1f68-bd06-4c5a-be90-7513180bf491')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f26df544-8d84-4a59-b62a-3c61a21cc682', N'767e1f68-bd06-4c5a-be90-7513180bf491')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7018842d-eccc-4b95-82b0-d5f898db40aa', N'e7d04253-8d42-4b8b-936d-275395235419')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4d5bfe12-7e96-441f-b99b-b4f0ebc66e24', N'ApplicationUser', N'Babu', N'babu@gmail.com', N'BABU@GMAIL.COM', N'babu@gmail.com', N'BABU@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJWg6tmrkRlLqedHhrjDAMmK4LykHCKg7MN5fLQ1FPW/eQKvctgwzOrkdIHFikDxsA==', N'5DM7KZHQXOMHZUB6OT3VQXIM47FZXV3U', N'b7a2a99e-fedb-406b-9242-b8dcae1efb97', N'9876556789', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5c418da7-1191-4c8d-9d62-ef136c0368e9', N'ApplicationUser', N'Prasanth', N'2k17cse064@kiot.ac.in', N'2K17CSE064@KIOT.AC.IN', N'2k17cse064@kiot.ac.in', N'2K17CSE064@KIOT.AC.IN', 0, N'AQAAAAEAACcQAAAAEC6+RICjfua5EfG/2R9waKJp1cKJx7oTZ7vFzRv9LfHXAiOO0BEHGsSiHz9sCdSbgQ==', N'3UEAYNP74JD3WWLMA6YLS2WIC6VJC7GX', N'63bc4e72-a4e4-4ede-92b6-975492a4bcf2', N'9876556789', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7018842d-eccc-4b95-82b0-d5f898db40aa', N'ApplicationUser', N'Admin', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGAi3GyhfPfdLfe/hNPkPUrARybGJcIZ6N9q5ygRb0mIFcYk9p5MbwhGrpyeHCURww==', N'FB2TU6G42UCBTSKF45I5F5EI7CMWYDLN', N'4da86fe5-42a6-4d58-a276-2d9b566eef7c', N'1234554321', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ba6ccc4d-10de-48e5-8a29-be6b4b3de590', N'ApplicationUser', N'sridhar', N'sridhar17@gmail.com', N'SRIDHAR17@GMAIL.COM', N'sridhar17@gmail.com', N'SRIDHAR17@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPwH5SGQB8gzgjPUZMZNmyV6d7PK8h5Lt6qpWx4oIyOFvXGzZ5EWPN0dMOgCSgoL/g==', N'5JRLCPRO6ETVVDO7JJRNQ5FX2CFK5VT6', N'a6ae93aa-0c11-48ab-bffe-7aa7110ac6ac', N'9988776655', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f26df544-8d84-4a59-b62a-3c61a21cc682', N'ApplicationUser', N'Prasanth', N'prasanth@gmail.com', N'PRASANTH@GMAIL.COM', N'prasanth@gmail.com', N'PRASANTH@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEOG5RDr4GKxcWIgI6cZz77uRapc5OqM4DRyRsdEt29o5WEiUzb13Sk/iefpK83kIMw==', N'IAA6NOV7VXH2ENBGB4CZ26REWTV6QMKM', N'86f3c898-9731-4178-aefd-88e230dc5938', N'1122334455', 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Booking] ON 

INSERT [dbo].[Booking] ([Id], [PropertyId], [ProOwnerName], [IntrestedPersonName], [Status]) VALUES (6, 9, N'babu@gmail.com', N'2k17cse064@kiot.ac.in', N'Rejected')
INSERT [dbo].[Booking] ([Id], [PropertyId], [ProOwnerName], [IntrestedPersonName], [Status]) VALUES (9, 11, N'2k17cse064@kiot.ac.in', N'babu@gmail.com', N'Accepted')
INSERT [dbo].[Booking] ([Id], [PropertyId], [ProOwnerName], [IntrestedPersonName], [Status]) VALUES (10, 9, N'babu@gmail.com', N'sridhar17@gmail.com', N'Accepted')
INSERT [dbo].[Booking] ([Id], [PropertyId], [ProOwnerName], [IntrestedPersonName], [Status]) VALUES (13, 13, N'prasanth@gmail.com', N'sridhar17@gmail.com', N'Rejected')
INSERT [dbo].[Booking] ([Id], [PropertyId], [ProOwnerName], [IntrestedPersonName], [Status]) VALUES (14, 10, N'babu@gmail.com', N'prasanth@gmail.com', N'Pending')
INSERT [dbo].[Booking] ([Id], [PropertyId], [ProOwnerName], [IntrestedPersonName], [Status]) VALUES (15, 11, N'2k17cse064@kiot.ac.in', N'sridhar17@gmail.com', N'Pending')
SET IDENTITY_INSERT [dbo].[Booking] OFF
GO
SET IDENTITY_INSERT [dbo].[ProAvailability] ON 

INSERT [dbo].[ProAvailability] ([Id], [Name]) VALUES (1, N'Immediate')
INSERT [dbo].[ProAvailability] ([Id], [Name]) VALUES (2, N'Within a week')
INSERT [dbo].[ProAvailability] ([Id], [Name]) VALUES (3, N'Within a month')
SET IDENTITY_INSERT [dbo].[ProAvailability] OFF
GO
SET IDENTITY_INSERT [dbo].[ProCategory] ON 

INSERT [dbo].[ProCategory] ([Id], [Name]) VALUES (1, N'House')
INSERT [dbo].[ProCategory] ([Id], [Name]) VALUES (2, N'Apartment')
INSERT [dbo].[ProCategory] ([Id], [Name]) VALUES (3, N'Garage')
INSERT [dbo].[ProCategory] ([Id], [Name]) VALUES (4, N'Villa')
SET IDENTITY_INSERT [dbo].[ProCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[ProFurnished] ON 

INSERT [dbo].[ProFurnished] ([Id], [Name]) VALUES (1, N'Fully Furnished')
INSERT [dbo].[ProFurnished] ([Id], [Name]) VALUES (2, N'Semi Furnished')
INSERT [dbo].[ProFurnished] ([Id], [Name]) VALUES (3, N'None')
SET IDENTITY_INSERT [dbo].[ProFurnished] OFF
GO
SET IDENTITY_INSERT [dbo].[ProParking] ON 

INSERT [dbo].[ProParking] ([Id], [Name]) VALUES (1, N'Bike parking only')
INSERT [dbo].[ProParking] ([Id], [Name]) VALUES (2, N'Bike/car parking')
SET IDENTITY_INSERT [dbo].[ProParking] OFF
GO
SET IDENTITY_INSERT [dbo].[ProRentalWO] ON 

INSERT [dbo].[ProRentalWO] ([Id], [Name]) VALUES (1, N'Without food and current bill charges')
INSERT [dbo].[ProRentalWO] ([Id], [Name]) VALUES (2, N'without current bill charges')
SET IDENTITY_INSERT [dbo].[ProRentalWO] OFF
GO
SET IDENTITY_INSERT [dbo].[RentalPro] ON 

INSERT [dbo].[RentalPro] ([Id], [PropertyHolderName], [ProCategoryId], [SquareFt], [BedRoom], [ProFurnishedId], [ProParkingId], [ProAvailabilityId], [HouseAmenities], [SocietyAmenities], [Image], [Description], [Rent], [SecurityDeposit], [ProRentalWOId], [Address], [City], [State], [CreateDt], [UpdateDt]) VALUES (9, N'babu@gmail.com', 1, 1500, 3, 1, 1, 2, 6, 3, N'9b30d042-cb5b-40f8-9dcb-4a7655688849.jpg', N'This is for testing This is for testing This is for testing This is for testing This is for testing', 5500, 30000, 1, N'08 Chinarvaikadu street', N'Salem', N'Tamil Nadu', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[RentalPro] ([Id], [PropertyHolderName], [ProCategoryId], [SquareFt], [BedRoom], [ProFurnishedId], [ProParkingId], [ProAvailabilityId], [HouseAmenities], [SocietyAmenities], [Image], [Description], [Rent], [SecurityDeposit], [ProRentalWOId], [Address], [City], [State], [CreateDt], [UpdateDt]) VALUES (10, N'babu@gmail.com', 1, 1450, 3, 1, 1, 2, 6, 3, N'32f5d3d6-0e7a-443e-b272-61c5916a64d5.jpg', N'This is for testing This is for testing This is for testing This is for testing This is for testing', 4500, 30000, 2, N'08 Chinarvaikadu street', N'Salem', N'Tamil Nadu', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[RentalPro] ([Id], [PropertyHolderName], [ProCategoryId], [SquareFt], [BedRoom], [ProFurnishedId], [ProParkingId], [ProAvailabilityId], [HouseAmenities], [SocietyAmenities], [Image], [Description], [Rent], [SecurityDeposit], [ProRentalWOId], [Address], [City], [State], [CreateDt], [UpdateDt]) VALUES (11, N'2k17cse064@kiot.ac.in', 4, 3200, 5, 1, 2, 1, 8, 4, N'a0ccf63c-ccec-41bc-b198-5d007eebc2a3.jpg', N'This is for testing This is for testing This is for testing This is for testing This is for testing This is for testing', 15000, 100000, 1, N'IT highway', N'Chennai', N'Tamil Nadu', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[RentalPro] ([Id], [PropertyHolderName], [ProCategoryId], [SquareFt], [BedRoom], [ProFurnishedId], [ProParkingId], [ProAvailabilityId], [HouseAmenities], [SocietyAmenities], [Image], [Description], [Rent], [SecurityDeposit], [ProRentalWOId], [Address], [City], [State], [CreateDt], [UpdateDt]) VALUES (13, N'prasanth@gmail.com', 4, 3940, 5, 1, 2, 3, 9, 4, N'd1979cef-2c24-4f90-84e4-43e82fa0f7dc.jpg', N'This is for testing this is for testing this is for testing this is for testing this is for testing', 50000, 130000, 1, N'Salem-chennai highway', N'Salem', N'Tamil Nadu', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[RentalPro] ([Id], [PropertyHolderName], [ProCategoryId], [SquareFt], [BedRoom], [ProFurnishedId], [ProParkingId], [ProAvailabilityId], [HouseAmenities], [SocietyAmenities], [Image], [Description], [Rent], [SecurityDeposit], [ProRentalWOId], [Address], [City], [State], [CreateDt], [UpdateDt]) VALUES (14, N'sridhar17@gmail.com', 1, 1800, 3, 2, 1, 1, 5, 3, N'3f727647-7330-41d1-9e9b-311b72bf7244.jpg', N'This is for testing this is for testing this is for testing this is for testing this is for testing', 12000, 30000, 1, N'08 Chinarvaikadu street', N'Chennai', N'Tamil Nadu', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[RentalPro] ([Id], [PropertyHolderName], [ProCategoryId], [SquareFt], [BedRoom], [ProFurnishedId], [ProParkingId], [ProAvailabilityId], [HouseAmenities], [SocietyAmenities], [Image], [Description], [Rent], [SecurityDeposit], [ProRentalWOId], [Address], [City], [State], [CreateDt], [UpdateDt]) VALUES (15, N'prasanth@gmail.com', 2, 1200, 2, 2, 1, 2, 6, 2, N'1c4954e7-5bee-43aa-ba5e-93eb132cf6ff.jpg', N'This is for testing this is for testing this is for testing this is for testing this is for testing', 7300, 30000, 1, N'IT highway', N'Chennai', N'Tamil Nadu', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[RentalPro] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 5/26/2021 1:45:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 5/26/2021 1:45:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 5/26/2021 1:45:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 5/26/2021 1:45:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 5/26/2021 1:45:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 5/26/2021 1:45:37 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 5/26/2021 1:45:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_RentalPro_ProAvailabilityId]    Script Date: 5/26/2021 1:45:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_RentalPro_ProAvailabilityId] ON [dbo].[RentalPro]
(
	[ProAvailabilityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_RentalPro_ProCategoryId]    Script Date: 5/26/2021 1:45:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_RentalPro_ProCategoryId] ON [dbo].[RentalPro]
(
	[ProCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_RentalPro_ProFurnishedId]    Script Date: 5/26/2021 1:45:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_RentalPro_ProFurnishedId] ON [dbo].[RentalPro]
(
	[ProFurnishedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_RentalPro_ProParkingId]    Script Date: 5/26/2021 1:45:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_RentalPro_ProParkingId] ON [dbo].[RentalPro]
(
	[ProParkingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_RentalPro_ProRentalWOId]    Script Date: 5/26/2021 1:45:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_RentalPro_ProRentalWOId] ON [dbo].[RentalPro]
(
	[ProRentalWOId] ASC
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
ALTER TABLE [dbo].[RentalPro]  WITH CHECK ADD  CONSTRAINT [FK_RentalPro_ProAvailability_ProAvailabilityId] FOREIGN KEY([ProAvailabilityId])
REFERENCES [dbo].[ProAvailability] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RentalPro] CHECK CONSTRAINT [FK_RentalPro_ProAvailability_ProAvailabilityId]
GO
ALTER TABLE [dbo].[RentalPro]  WITH CHECK ADD  CONSTRAINT [FK_RentalPro_ProCategory_ProCategoryId] FOREIGN KEY([ProCategoryId])
REFERENCES [dbo].[ProCategory] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RentalPro] CHECK CONSTRAINT [FK_RentalPro_ProCategory_ProCategoryId]
GO
ALTER TABLE [dbo].[RentalPro]  WITH CHECK ADD  CONSTRAINT [FK_RentalPro_ProFurnished_ProFurnishedId] FOREIGN KEY([ProFurnishedId])
REFERENCES [dbo].[ProFurnished] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RentalPro] CHECK CONSTRAINT [FK_RentalPro_ProFurnished_ProFurnishedId]
GO
ALTER TABLE [dbo].[RentalPro]  WITH CHECK ADD  CONSTRAINT [FK_RentalPro_ProParking_ProParkingId] FOREIGN KEY([ProParkingId])
REFERENCES [dbo].[ProParking] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RentalPro] CHECK CONSTRAINT [FK_RentalPro_ProParking_ProParkingId]
GO
ALTER TABLE [dbo].[RentalPro]  WITH CHECK ADD  CONSTRAINT [FK_RentalPro_ProRentalWO_ProRentalWOId] FOREIGN KEY([ProRentalWOId])
REFERENCES [dbo].[ProRentalWO] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RentalPro] CHECK CONSTRAINT [FK_RentalPro_ProRentalWO_ProRentalWOId]
GO
USE [master]
GO
ALTER DATABASE [FloorFloor] SET  READ_WRITE 
GO
