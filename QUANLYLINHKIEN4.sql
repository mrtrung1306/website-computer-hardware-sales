USE [master]
GO
/****** Object:  Database [QUANLYLINHKIEN4]    Script Date: 4/1/2023 10:34:20 AM ******/
CREATE DATABASE [QUANLYLINHKIEN4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QUANLYLINHKIEN4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QUANLYLINHKIEN4.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QUANLYLINHKIEN4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QUANLYLINHKIEN4_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QUANLYLINHKIEN4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET ARITHABORT OFF 
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET  MULTI_USER 
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET QUERY_STORE = OFF
GO
USE [QUANLYLINHKIEN4]
GO
/****** Object:  User [NT AUTHORITY\SYSTEM]    Script Date: 4/1/2023 10:34:21 AM ******/
CREATE USER [NT AUTHORITY\SYSTEM] FOR LOGIN [NT AUTHORITY\SYSTEM] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 4/1/2023 10:34:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/1/2023 10:34:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/1/2023 10:34:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/1/2023 10:34:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/1/2023 10:34:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/1/2023 10:34:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 4/1/2023 10:34:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[BrandId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Avartar] [nvarchar](50) NULL,
 CONSTRAINT [PK_Brand_1] PRIMARY KEY CLUSTERED 
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 4/1/2023 10:34:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Avatar] [nvarchar](100) NULL,
	[Slug] [varchar](50) NULL,
	[ShowOnHomePage] [bit] NULL,
	[DisplayOrder] [int] NULL,
	[CreateOnUtc] [datetime] NULL,
	[UpdateOnUtc] [datetime] NULL,
	[Deleted] [bit] NULL,
	[BrandId] [int] NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NCC]    Script Date: 4/1/2023 10:34:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCC](
	[NccId] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
 CONSTRAINT [PK_NCC] PRIMARY KEY CLUSTERED 
(
	[NccId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 4/1/2023 10:34:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [nvarchar](50) NULL,
	[OrderDate] [datetime] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 4/1/2023 10:34:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 4/1/2023 10:34:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Avartar] [nchar](50) NULL,
	[Avartar1] [nchar](50) NULL,
	[Avartar2] [nchar](50) NULL,
	[Avartar3] [nchar](50) NULL,
	[ShortDes] [nvarchar](500) NULL,
	[Price] [float] NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[BaoHanh] [nvarchar](50) NULL,
	[BrandId] [int] NULL,
	[NCCId] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202303201550566_InitialCreate', N'DoAnLapTrinhWed_2.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE3B6127E2F70FE83A0A7738AAC95386717DBC06E913A494FD0DCB0CEB6E72DA025DA1156A2B412952628FACBFAD09F74FEC2194AD48D175D6CC5768A05161639FC66381C92C3E130FFFBF3AFC90FCFBE673CE128760332358F4687A681891D382E594DCD842EDF7D347FF8FE1FDF4CCE1DFFD9F825A73B6674D092C453F391D2F0C4B262FB11FB281EF9AE1D0571B0A4233BF02DE404D6F8F0F03BEBE8C8C200610296614C3E2584BA3E4E3FE07316101B873441DE75E0602FE6E550334F518D1BE4E33844369E9A67C129B942E17DE492C75FB1F3301E656D4CE3D47311C833C7DED2341021014514A43DF91CE3398D02B29A875080BCFB971003DD127931E6BD3829C9BB76E870CC3A64950D73283B8969E0F7043C3AE61AB2C4E66BE9D92C34083A3C075DD317D6EB548F53F3D2C169D1A7C00305880C4F665EC488A7E675C1E2340E6F301DE50D4719E4450470BF05D1975115F1C0E8DCEEA0B0A8F1E890FD3B3066894793084F094E6884BC03E32E5978AEFD337EB90FBE60323D3E5A2C8F3FBEFF809CE30FFFC6C7EFAB3D85BE025DAD008AEEA220C411C8869745FF4DC3AAB7B3C48645B34A9B4C2B604B30394CE31A3D5F61B2A28F306DC61F4DE3C27DC64E5EC28DEB3371612E41231A25F07993781E5A78B8A8B71A79B2FF1BB88EDF7F1884EB0D7A7257E9D00BFC61E24430AF3E612FAD8D1FDD309B5EB5F17EE0641751E0B3EFBA7D65B50FF320896CD699404B728FA215A675E9265669BC9D4C9A410D6FD639EAFE9B369354366F2529EBD03A332167B1EDD990CBFBBA7C3B5BDC6918C2E0A5A6C534D26470BA2D6B24601C1802E5BB716946475DCD8840F7FECEABE2B98F5C6F8065B10317F04B966EE4E3A2973F06608488F496F90EC531AC0ACE7F50FCD8203AFC1C40F439B693088C754E911FBE3AB7BBC780E09BC45FB039B03D5E830DCDFD6FC105B269109D13D66A63BCABC0FE1224F49C386788E2CFD4CE01D9E7BDEB770718449C53DBC6717C01C68C9D59006E770E7849E8F1B8371C5BA676ED96CC3CE4FA6ABF4458501F72D2D237515348FE89864CE5A334897A15AC5CD24DD49C542F6A46D12A2A27EB2B2A03EB2629A7D40B9A12B4CA99510DE6F5A52334BCDB97C2EEBFDFB7D9E6AD5B0B2A6A9CC30A897FC20447B08C397788521C917204BAAC1BBB7016D2E1634C5F7D6F4A39FD82BC6468566BCD867411187E36A4B0FB3F1B5231A1F8C9759857D2E1309413037C277AF539AB7DCE09926D7B3AD4BAB96DE6DB590374D3E5348E03DB4D6781220CC6831875F9C18733DA231A596FC4A808740C0CDD655B1E9440DF4CD1A86EC919F630C5C6A99D85096728B69123AB113AE4F4102CDF51158295D191BA70DF4A3CC1D271C41A2176088A61A6BA84CAD3C225B61B22AF554B42CB8E5B18EB7BC143AC39C321268C61AB26BA305707439800051F6150DA3434B12A16D76C881AAF5537E66D2E6C39EE528C622B36D9E23B6BEC92FB6FAF6298CD1ADB827136ABA48B00DAC0DE2E0C949F55BA1A807870D93703154E4C1A03E52ED5560CB4AEB11D18685D256FCE40B3236AD7F117CEABFB669EF583F2F6B7F54675EDC0366BFAD833D3CC7C4F6843A1058E64F33C5BB04AFC4C15873390939FCF62EEEA8A26C2C0E798D64336A5BFABF443AD6610D1889A004B436B01E55782129034A17A0897C7F21AA5E35E440FD83CEED608CBD77E01B662033276F56AB442A8BF40158DB3D3E9A3E859610D9291773A2C54701406212E5EF58E77508A2E2E2B2BA68B2FDCC71BAE748C0F4683825A3C578D92F2CE0CAEA5DC34DBB5A472C8FAB8641B6949709F345ACA3B33B896B88DB62B49E114F4700B3652517D0B1F68B2E5918E62B729EA26569637C50B269626C16A728DC2D025AB4AC2152F31E659B6D5ECDDBC7F02929F615876ACC8432AA42D38D120422B2CD4026B90F4C28D627A86285A2016E79939BE44A6DC5B35CB7FCEB2BA7DCA8398EF033935FB9DB5D05EE4D7765CD925E14817D04F9FF93569305D6105EAE6064B83431E8A14F1FB59E0253ED1BB59FAD6D92D5EB57D5622234C2C417EC98D92742639BBF501E8343CF2D41874A80A5F66FDE1D243E8949E7BA255B5EBBC533D4A1EACAAA2E802583B1B3E9D53B3C690895E63FF116B45789D39C65355AA00BCA8274625DB4102ABD47547AD27A45431EB35DD1185AC932AA450D543CA6A6E494DC86AC55A781A8DAA29BA7390B349AAE8726D7764455E49155A51BD06B64266B1AE3BAA22F5A40AACA8EE8E5DE6A1884BE91EEF62DAB3CC86DB5876E8DD6C1FD360BCCEBA38CC3658B9DBAF02558A7B62F1DB7B098C97EFA54D694F7E1BDA5416F1D8CCA63418FA55A876375E5F841A2FF4F598B50BEFDA42DF74E1AFC7EB67B9AF6A1FD2F14F2429B817C740E1B837E147AFF64737D2592C23318D5C8DB0C9BFC414FB2346309A7FF5669E8BD9929E135C23E22E714CB3240F737C7834165EECECCFEB192B8E1D4F7174D53DA1A98FD916F2B5C8138AEC4714C9D9131BBC302941A5C0F42571F0F3D4FC3D6D7592C638D8AFB4F8C0B88C3F13F76B0215F751828D3FE46CD06132EE3BBCF12804FDE34D3C9EE8AEF2CBFF3E644D0F8CDB08A6D3897128287A9DE1AF3FA9E8254DD6740369D67E68F176675BEDE5821255982DEB3F5458B87490470AB994FFF4D1F3BFFA8AA67C88B011A2E2B1C1507883A850F798601D2CED4302073E69FA90A05F67D50F0BD6114DFBA8C025FDC1C42705DD97A1BCE50EF721C5B1691B4B52AAE7D694EC8DF23377BD374999DB1B4D74393BBB07DCA019D89BB9286F2CB379B0AD5391B83C18F62EEDFED5B395F72541B974DA779B97BCCD54E4862BA6BF5506F21EE4CC297280769F67BC6D5BD3C581F73C59B35F36F19E191BDFE6779F33BC6D63D30588F7DCD87A6506EF99ADED6AFFDCB1A575DE42779EE72BA72C69EE735451E4B63CDE2CE40EC7FF450046907994D9F34B75E25853D26B0BC39244CF549FB1263296268EC457A26866DBAFAF7CC36FEC2CA76966ABC9F36CE2CDD7FF46DE9CA699B7267B721719C8CAFC45555678CB3AD69450F596328E6B3D6949706FF3591B2FE7DF5282F1204AA9CD1ECDEDF2DBC9271E4425434E9D1EF9C3F24531EC9D95BFE108FB77ECAE4A08F6171D09B66BBB664173499641BE790B12E5244284E61A53E4C0967A1A5177896C0AD52C009DBE1F4F837AEC1A64819D4B729BD030A1D065EC2FBC5AC08B39014DFCD324E9BACC93DB907DC5437401C47459E0FE96FC98B89E53C87DA1880969209877C1C3BD6C2C290BFBAE5E0AA49B807404E2EA2B9CA27BEC871E80C5B7648E9EF03AB281F95DE115B25FCA08A00EA47D20EA6A9F9CB96815213FE618657BF8041B76FCE7EFFF0F182E75E7CA540000, N'6.4.4')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2 ', N'Member')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5255aee5-6d79-48bb-96e1-98b470c01acb', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'aa167db3-118b-4bf4-8a97-a552250c9b62', N'2 ')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'5255aee5-6d79-48bb-96e1-98b470c01acb', N'admin@gmail.com', 0, N'AJaoGFgjx11OoXdB71STx9MXx6ay5AFaD50jiWlIqL5gSXyDwmO/XVWenYh7mE0JLw==', N'0e566318-910d-416a-9de0-bf7ae96ca3e0', NULL, 0, 0, NULL, 1, 0, N'admin@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'aa167db3-118b-4bf4-8a97-a552250c9b62', N'member@gmai.com', 0, N'AI17edsXSiULjwNj7U1oE7z+vZlyKwezPq3jVGZYtxh7zSXj6guyV6DK1HseJYi4Lw==', N'7ae4b38e-561c-4681-9c91-23d97a4137b9', NULL, 0, 0, NULL, 1, 0, N'member@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([BrandId], [Name], [Avartar]) VALUES (1, N'VGA', N'banner2.jpg')
INSERT [dbo].[Brand] ([BrandId], [Name], [Avartar]) VALUES (2, N'RAM', N'banner1.jpg')
INSERT [dbo].[Brand] ([BrandId], [Name], [Avartar]) VALUES (3, N'SSD/HDD', N'banner3.jpg')
INSERT [dbo].[Brand] ([BrandId], [Name], [Avartar]) VALUES (4, N'CASE', N'banner4.jpg')
INSERT [dbo].[Brand] ([BrandId], [Name], [Avartar]) VALUES (5, N'MAIN', N'banner5.jpg')
INSERT [dbo].[Brand] ([BrandId], [Name], [Avartar]) VALUES (6, N'CPU', N'banner6.jpg')
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc], [Deleted], [BrandId]) VALUES (1, N'RAM 8GB-DDR4', N'VGA.jpg', N'VGA', 1, 1, NULL, NULL, 0, 2)
INSERT [dbo].[Category] ([CategoryId], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc], [Deleted], [BrandId]) VALUES (2, N'RAM 16GB-DDR4', N'RAM.jpg', N'RAM', 1, 2, NULL, NULL, 0, 2)
INSERT [dbo].[Category] ([CategoryId], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc], [Deleted], [BrandId]) VALUES (3, N'Ram DRR5', N'SSD/HDD/jpg', N'SSD/HDD', 1, 3, NULL, NULL, 0, 2)
INSERT [dbo].[Category] ([CategoryId], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc], [Deleted], [BrandId]) VALUES (4, N'GTX 1650', N'CASE.jpg', N'CASE', 1, 4, NULL, NULL, 0, 1)
INSERT [dbo].[Category] ([CategoryId], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc], [Deleted], [BrandId]) VALUES (5, N'AMD Radeon RX', N'MAIN.jpg', N'MAIN', 1, 5, NULL, NULL, 0, 1)
INSERT [dbo].[Category] ([CategoryId], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc], [Deleted], [BrandId]) VALUES (6, N'SSD', N'CPU.hpg', N'CPU', 1, 6, NULL, NULL, 0, 3)
INSERT [dbo].[Category] ([CategoryId], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc], [Deleted], [BrandId]) VALUES (7, N'HDD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[Category] ([CategoryId], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc], [Deleted], [BrandId]) VALUES (8, N'Case NZXT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[Category] ([CategoryId], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc], [Deleted], [BrandId]) VALUES (9, N'Case Corsair', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[Category] ([CategoryId], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc], [Deleted], [BrandId]) VALUES (10, N'Intel H510', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[Category] ([CategoryId], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc], [Deleted], [BrandId]) VALUES (11, N'AMD TRX40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[Category] ([CategoryId], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc], [Deleted], [BrandId]) VALUES (12, N'Intel Core I9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[Category] ([CategoryId], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc], [Deleted], [BrandId]) VALUES (13, N'AMD Ryzen 9', N' ', NULL, NULL, NULL, NULL, NULL, NULL, 6)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[NCC] ON 

INSERT [dbo].[NCC] ([NccId], [TenNCC]) VALUES (1, N'Kingston')
INSERT [dbo].[NCC] ([NccId], [TenNCC]) VALUES (2, N'Corsair')
INSERT [dbo].[NCC] ([NccId], [TenNCC]) VALUES (3, N'GIGABYTE')
INSERT [dbo].[NCC] ([NccId], [TenNCC]) VALUES (4, N'ASUS')
INSERT [dbo].[NCC] ([NccId], [TenNCC]) VALUES (5, N'NZXT')
INSERT [dbo].[NCC] ([NccId], [TenNCC]) VALUES (6, N'Seagate')
INSERT [dbo].[NCC] ([NccId], [TenNCC]) VALUES (7, N'Intel')
INSERT [dbo].[NCC] ([NccId], [TenNCC]) VALUES (8, N'AMD')
SET IDENTITY_INSERT [dbo].[NCC] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [CustomerId], [OrderDate], [status]) VALUES (29, N'aa167db3-118b-4bf4-8a97-a552250c9b62', CAST(N'2023-03-29T23:25:57.577' AS DateTime), 1)
INSERT [dbo].[Order] ([Id], [CustomerId], [OrderDate], [status]) VALUES (30, N'aa167db3-118b-4bf4-8a97-a552250c9b62', CAST(N'2023-03-30T13:59:06.390' AS DateTime), 1)
INSERT [dbo].[Order] ([Id], [CustomerId], [OrderDate], [status]) VALUES (31, N'aa167db3-118b-4bf4-8a97-a552250c9b62', CAST(N'2023-03-30T14:49:00.900' AS DateTime), 1)
INSERT [dbo].[Order] ([Id], [CustomerId], [OrderDate], [status]) VALUES (32, N'5255aee5-6d79-48bb-96e1-98b470c01acb', CAST(N'2023-03-31T12:05:12.570' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (38, 29, 22, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (39, 30, 22, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (40, 31, 22, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (41, 32, 2, 16)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (1, N'RAM Kingston Fury Beast 1x8GB 3600 DDR4 RGB', N'18.jpg                                            ', N'18(1).jpg                                         ', N'18(2).jpg                                         ', N'18(3).jpg                                         ', N'Kingston Fury Beast RGB DDR4 giúp nâng cao hiệu năng và cải tiến phong cách với tốc độ lên đến 3600MHz, phong cách mạnh mẽ và ánh sáng RGB chạy suốt chiều dài mô-đun nhằm đem lại hiệu ứng mượt mà và ấn tượng. Bản nâng cấp ấn tượng và tiết kiệm chi phí này có tốc độ từ 2400MHz-3600MHz, độ trễ từ CL16–18. Sản phẩm có khả năng ép xung tự động Cắm và Chạy ở tốc độ 2400MHz và đều tương thích với cả Intel XMP và AMD Ryzen. FURY Beast RGB DDR4  luôn mát nhờ bộ tản nhiệt đơn giản và phong cách.', 1490000, N'Mới', N'36 Tháng', 2, 1)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (2, N'Ram Corsair Vengeance RS RGB 1x8GB 3200', N'19.jpg                                            ', N'19(1).jpg                                         ', N'19(2).jpg                                         ', N'19(3).jpg                                         ', N'RAM Corsair Vengeance RS RGB 1x8GB 3600 là dòng sản phẩm bộ nhớ DDR4 mới nhất thuộc Series Vengeance của Corsair. Với đa dạng tùy chọn tốc độ bus và độ trễ khác nhau, Corsair Vengeance RS RGB 3600 chắc chắn là một lựa chọn cân bằng giữa hiệu năng và số tiền mà người dùng phải bỏ ra để sở hữu.', 1490000, N'Mới', N'36 Tháng', 2, 2)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (3, N'AORUS RGB Memory RAM 16GB DDR4 2x8G 3333', N'20.jpg                                            ', N'20(1).jpg                                         ', N'20(2).jpg                                         ', N'20(3).jpg                                         ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 3390000, N'Mới', N'36 Tháng', 2, 3)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (4, N'Ram Corsair Vengeance RS RGB 32gb (2x16GB) bus 3600', N'21.jpg                                            ', N'21(1).jpg                                         ', N'21(2).jpg                                         ', N'21.jpg                                            ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 4490000, N'Mới', N'36 Tháng', 2, 2)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (5, N'RAM Kingston Fury Beast RGB 16GB (2x8GB) bus 5200 DDR5', N'22.jpg                                            ', N'22(1).jpg                                         ', N'22(2).jpg                                         ', N'22.jpg                                            ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 3990000, N'Mới', N'36 Tháng', 2, 1)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (6, N'RAM Corsair Dominator 32GB (2x16GB) RGB 5200 DDR5', N'23.jpg                                            ', N'23(1).jpg                                         ', N'23(2).jpg                                         ', N'23.jpg                                            ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 7590000, N'Mới', N'36 Tháng', 2, 1)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (7, N'GIGABYTE GeForce GTX 1650 OC 4G', N'24.jpg                                            ', N'24(1).jpg                                         ', N'24(2).jpg                                         ', N'24(3).jpg                                         ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 4290000, N'Mới', N'36 Tháng', 1, 3)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (8, N'ASUS TUF Gaming GeForce GTX 1650 OC Edition 4GB GDDR6', N'25.jpg                                            ', N'25(1).jpg                                         ', N'25(2).jpg                                         ', N'25(3).jpg                                         ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 4450000, N'Mới', N'36 Tháng', 1, 4)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (9, N'ASUS TUF Gaming GeForce GTX 1650 4GB GDDR6
', N'26.jpg                                            ', N'26(1).jpg                                         ', N'26(2).jpg                                         ', N'26(3).jpg                                         ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 7790000, N'Mới', N'36 Tháng', 1, 4)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (10, N'ASUS TUF Gaming Radeon RX 6700 XT OC Edition 12GB GDDR6', N'27.jpg                                            ', N'27(1).jpg                                         ', N'27(2).jpg                                         ', N'27(3).jpg                                         ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 26990000, N'Mới', N'36 Tháng', 1, 4)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (11, N'GIGABYTE AORUS Radeon RX 6900 XT MASTER 16G', N'28.jpg                                            ', N'28(1).jpg                                         ', N'28(2).jpg                                         ', N'28(3).jpg                                         ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 59990000, N'Mới', N'36 Tháng', 1, 3)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (12, N'GIGABYTE Radeon RX 7900 XT GAMING OC 20G', N'29.jpg                                            ', N'29(1).jpg                                         ', N'29(2).jpg                                         ', N'29(3).jpg                                         ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 29990000, N'Mới', N'36 Tháng', 1, 3)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (13, N'SSD GIGABYTE AORUS 1TB M.2 PCIe NVMe gen 4', N'30.jpg                                            ', N'30(1).jpg                                         ', N'30(2).jpg                                         ', N'30.jpg                                            ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 4890000, N'Mới', N'36 Tháng', 3, 3)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (14, N'SSD Kingston KC3000 1TB M.2 PCIe gen 4 NVMe', N'31.jpg                                            ', N'31(1).jpg                                         ', N'31(2).jpg                                         ', N'31(1).jpg                                         ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 3990000, N'Mới', N'36 Tháng', 3, 4)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (15, N'SSD GIGABYTE AORUS Gen5 10000 2TB', N'32.jpg                                            ', N'32(1).jpg                                         ', N'32(2).jpg                                         ', N'32(3).jpg                                         ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 11990000, N'Mới', N'36 Tháng', 3, 3)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (16, N'HDD Seagate Ironwolf PRO 14TB 7200rpm', N'33.jpg                                            ', N'33(1).jpg                                         ', N'33(2).jpg                                         ', N'33.jpg                                            ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 15990000, N'Mới', N'36 Tháng', 3, 6)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (17, N'HDD Seagate Ironwolf PRO 6TB 7200rpm', N'34.jpg                                            ', N'34(1).jpg                                         ', N'34(2).jpg                                         ', N'34.jpg                                            ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 6990000, N'Mới', N'36 Tháng', 3, 6)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (18, N'HDD Seagate Ironwolf PRO 4TB 7200rpm', N'35.jpg                                            ', N'35(1).jpg                                         ', N'35(2).jpg                                         ', N'35.jpg                                            ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 4690000, N'Mới', N'36 Tháng', 3, 6)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (19, N'Case NZXT H5 Flow White', N'36.jpg                                            ', N'36(1).jpg                                         ', N'36(2).jpg                                         ', N'36(3).jpg                                         ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 2190000, N'Mới', N'24 Tháng', 4, 5)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (20, N'Case NZXT H710i CRFT Cyberpunk Limited Edition', N'37.jpg                                            ', N'37(1).jpg                                         ', N'37(2).jpg                                         ', N'37(3).jpg                                         ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 9990000, N'Mới', N'24 Tháng', 4, 5)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (21, N'Case NZXT H9 Flow Black', N'38.jpg                                            ', N'38(1).jpg                                         ', N'38(2).jpg                                         ', N'38(3).jpg                                         ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 3890000, N'Mới', N'24 Tháng', 4, 5)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (22, N'Case CORSAIR iCUE 465X RGB Tempered Glass', N'39.jpg                                            ', N'39(1).jpg                                         ', N'39(2).jpg                                         ', N'39(3).jpg                                         ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 3400000, N'Mới', N'24 Tháng', 4, 2)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (23, N'Case Corsair 5000X RGB Tempered Glass White', N'40.jpg                                            ', N'40(1).jpg                                         ', N'40(2).jpg                                         ', N'40(3).jpg                                         ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 6800000, N'Mới', N'24 Tháng', 4, 2)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (24, N'Case Corsair Crystal Series 680X RGB White', N'41.jpg                                            ', N'41(1).jpg                                         ', N'41(2).jpg                                         ', N'41(3).jpg                                         ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 5990000, N'Mới', N'24 Tháng', 4, 2)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (25, N'ASUS PRIME H510M-F', N'42.jpg                                            ', N'42(1).jpg                                         ', N'42(2).jpg                                         ', N'42(3).jpg                                         ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 1790000, N'Mới', N'36 Tháng', 5, 4)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (26, N'GIGABYTE H510M H', N'43.jpg                                            ', N'43(1).jpg                                         ', N'43(2).jpg                                         ', N'43(3).jpg                                         ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 1790000, N'Mới', N'36 Tháng', 5, 3)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (27, N'GIGABYTE TRX40 AORUS PRO WIFI', N'44.jpg                                            ', N'44(1).jpg                                         ', N'44(2).jpg                                         ', N'44(3).jpg                                         ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 11990000, N'Mới', N'36 Tháng', 5, 3)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (28, N'ASUS ROG Zenith II Extreme', N'45.jpg                                            ', N'45(1).jpg                                         ', N'45(2).jpg                                         ', N'45(3).jpg                                         ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 19370000, N'Mới', N'36 Tháng', 5, 4)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (29, N'GIGABYTE TRX40 AORUS XTREME', N'46.jpg                                            ', N'46(1).jpg                                         ', N'46(2).jpg                                         ', N'46(3).jpg                                         ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 25990000, N'Mới', N'36 Tháng', 5, 3)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (30, N'Intel Core i9 13900KS / 3.2GHz Turbo 6.0GHz / 24 Nhân 32 Luồng / 36MB / LGA 1700', N'47.jpg                                            ', N'47(1).jpg                                         ', N'47(2).jpg                                         ', N'47(3).jpg                                         ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 19990000, N'Mới', N'36 Tháng', 6, 7)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (31, N'Intel Core i9 13900KF / 3.0GHz Turbo 5.8GHz / 24 Nhân 32 Luồng / 36MB / LGA 1700', N'48.jpg                                            ', N'48(1).jpg                                         ', N'48(2).jpg                                         ', N'48.jpg                                            ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 15490000, N'Mới', N'36 Tháng', 6, 7)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (32, N'AMD Ryzen 9 7950X3D / 4.2GHz Boost 5.7GHz / 16 nhân 32 luồng / 144MB / AM5', N'49.jpg                                            ', N'49(1).jpg                                         ', N'49(2).jpg                                         ', N'49(3).jpg                                         ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 18590000, N'Mới', N'36 Tháng', 6, 8)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (33, N'AMD Ryzen 9 7950X / 4.5GHz Boost 5.7GHz / 16 nhân 32 luồng / 81MB / AM5', N'50.jpg                                            ', N'50(1).jpg                                         ', N'50(2).jpg                                         ', N'50(3).jpg                                         ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 19590000, N'Mới', N'36 Tháng', 6, 8)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (34, N'AMD Ryzen 9 5950X / 3.4GHz Boost 4.9GHz / 16 nhân 32 luồng / 64MB / AM4', N'51.jpg                                            ', N'51(1).jpg                                         ', N'51(2).jpg                                         ', N'51(3).jpg                                         ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 22990000, N'Mới', N'36 Thang', 6, 8)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (35, N'Ram Corsair Dominator 32GB RGB 3200 White', N'52.jpg                                            ', N'52(1).jpg                                         ', N'52(2).jpg                                         ', N'52(3).jpg                                         ', N'Ram PC Corsair Vengeance RGB RS DDR4 với hệ thống chiếu sáng máy tính của bạn với ánh sáng RGB cực kỳ hầm hố, đồng thời mang lại hiệu suất cao nhất của DDR4. Phần mềm CORSAIR iCUE mạnh mẽ giúp hệ thống của bạn trở nên sống động với khả năng tinh chỉnh RGB năng động, phần mềm này cũng có thể đồng bộ trên tất cả các sản phẩm tương thích iCUE bao gồm bộ nhớ, quạt, dải đèn LED RGB, bàn phím, chuột và nhiều hơn nữa.', 7190000, N'Mới', N'36 Tháng', 2, 2)
INSERT [dbo].[Products] ([Id], [Name], [Avartar], [Avartar1], [Avartar2], [Avartar3], [ShortDes], [Price], [TinhTrang], [BaoHanh], [BrandId], [NCCId]) VALUES (76, N'Case Corsair iCUE 7000X RGB TG Black', N'53.jpg                                            ', N'53(1).jpg                                         ', N'53(2).jpg                                         ', N'53(3).jpg                                         ', N'Sở hữu cho mình chuẩn RAM DDR5 mới nhất, Kingston Fury Beast RGB đem đến sức mạnh vượt trội so với những chuẩn DDR4 tiền nhiệm. Khi được lắp đặt vào, Kingston Fury Beast RGB sẽ luôn đạt tốc độ cao nhất với bus RAM cao nhất là 5600 MT/s nếu hệ thống BIOS hỗ trợ. Mang lại khả năng xử lý, tương tác mượt mà với dữ liệu trong quá trình sử dụng của người dùng.', 699000, N'Mới', N'24 Tháng', 4, 2)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 4/1/2023 10:34:21 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 4/1/2023 10:34:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 4/1/2023 10:34:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 4/1/2023 10:34:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 4/1/2023 10:34:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 4/1/2023 10:34:21 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brand] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brand] ([BrandId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brand]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_NCC] FOREIGN KEY([NCCId])
REFERENCES [dbo].[NCC] ([NccId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_NCC]
GO
USE [master]
GO
ALTER DATABASE [QUANLYLINHKIEN4] SET  READ_WRITE 
GO
