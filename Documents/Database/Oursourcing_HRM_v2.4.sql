USE [master]
GO
/****** Object:  Database [Oursourcing_HRM]    Script Date: 06/03/2015 12:29:28 ******/
CREATE DATABASE [Oursourcing_HRM] ON  PRIMARY 
( NAME = N'Oursourcing_HRM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Oursourcing_HRM.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Oursourcing_HRM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Oursourcing_HRM_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Oursourcing_HRM] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Oursourcing_HRM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Oursourcing_HRM] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Oursourcing_HRM] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Oursourcing_HRM] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Oursourcing_HRM] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Oursourcing_HRM] SET ARITHABORT OFF
GO
ALTER DATABASE [Oursourcing_HRM] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Oursourcing_HRM] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Oursourcing_HRM] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Oursourcing_HRM] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Oursourcing_HRM] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Oursourcing_HRM] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Oursourcing_HRM] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Oursourcing_HRM] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Oursourcing_HRM] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Oursourcing_HRM] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Oursourcing_HRM] SET  DISABLE_BROKER
GO
ALTER DATABASE [Oursourcing_HRM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Oursourcing_HRM] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Oursourcing_HRM] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Oursourcing_HRM] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Oursourcing_HRM] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Oursourcing_HRM] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Oursourcing_HRM] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Oursourcing_HRM] SET  READ_WRITE
GO
ALTER DATABASE [Oursourcing_HRM] SET RECOVERY FULL
GO
ALTER DATABASE [Oursourcing_HRM] SET  MULTI_USER
GO
ALTER DATABASE [Oursourcing_HRM] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Oursourcing_HRM] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'Oursourcing_HRM', N'ON'
GO
USE [Oursourcing_HRM]
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 06/03/2015 12:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill](
	[skillID] [int] IDENTITY(1,1) NOT NULL,
	[skillName] [nvarchar](50) NULL,
	[isProCode] [bit] NULL,
 CONSTRAINT [PK_Skill] PRIMARY KEY CLUSTERED 
(
	[skillID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Skill] ON
INSERT [dbo].[Skill] ([skillID], [skillName], [isProCode]) VALUES (1, N'java', 1)
INSERT [dbo].[Skill] ([skillID], [skillName], [isProCode]) VALUES (2, N'.net', 1)
INSERT [dbo].[Skill] ([skillID], [skillName], [isProCode]) VALUES (3, N'sql', 0)
INSERT [dbo].[Skill] ([skillID], [skillName], [isProCode]) VALUES (4, N'php', 1)
INSERT [dbo].[Skill] ([skillID], [skillName], [isProCode]) VALUES (5, N'photoshop', 0)
INSERT [dbo].[Skill] ([skillID], [skillName], [isProCode]) VALUES (6, N'visua basic', 1)
INSERT [dbo].[Skill] ([skillID], [skillName], [isProCode]) VALUES (7, N'c', 1)
INSERT [dbo].[Skill] ([skillID], [skillName], [isProCode]) VALUES (8, N'c++', 1)
INSERT [dbo].[Skill] ([skillID], [skillName], [isProCode]) VALUES (9, N'english', 0)
INSERT [dbo].[Skill] ([skillID], [skillName], [isProCode]) VALUES (10, N'japanese', 0)
SET IDENTITY_INSERT [dbo].[Skill] OFF
/****** Object:  Table [dbo].[Role]    Script Date: 06/03/2015 12:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[roleID] [int] IDENTITY(1,1) NOT NULL,
	[roleName] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Role] ON
INSERT [dbo].[Role] ([roleID], [roleName]) VALUES (1, N'admin')
INSERT [dbo].[Role] ([roleID], [roleName]) VALUES (2, N'director')
INSERT [dbo].[Role] ([roleID], [roleName]) VALUES (3, N'manager')
INSERT [dbo].[Role] ([roleID], [roleName]) VALUES (4, N'customer')
INSERT [dbo].[Role] ([roleID], [roleName]) VALUES (5, N'hr')
INSERT [dbo].[Role] ([roleID], [roleName]) VALUES (6, N'engineer')
SET IDENTITY_INSERT [dbo].[Role] OFF
/****** Object:  Table [dbo].[Position]    Script Date: 06/03/2015 12:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[positionID] [int] IDENTITY(1,1) NOT NULL,
	[positionName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[positionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Position] ON
INSERT [dbo].[Position] ([positionID], [positionName]) VALUES (1, N'developer')
INSERT [dbo].[Position] ([positionID], [positionName]) VALUES (2, N'tester')
INSERT [dbo].[Position] ([positionID], [positionName]) VALUES (3, N'ba')
INSERT [dbo].[Position] ([positionID], [positionName]) VALUES (4, N'sa')
INSERT [dbo].[Position] ([positionID], [positionName]) VALUES (5, N'manager')
INSERT [dbo].[Position] ([positionID], [positionName]) VALUES (6, N'supporter')
SET IDENTITY_INSERT [dbo].[Position] OFF
/****** Object:  Table [dbo].[PeriodEvaluation]    Script Date: 06/03/2015 12:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PeriodEvaluation](
	[evaID] [int] IDENTITY(1,1) NOT NULL,
	[evaName] [nvarchar](50) NULL,
	[startDate] [date] NULL,
	[endDate] [date] NULL,
	[submitDate] [date] NULL,
	[closeDate] [date] NULL,
 CONSTRAINT [PK_PeriodAppraisal] PRIMARY KEY CLUSTERED 
(
	[evaID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PeriodEvaluation] ON
INSERT [dbo].[PeriodEvaluation] ([evaID], [evaName], [startDate], [endDate], [submitDate], [closeDate]) VALUES (1, N'Engineer evaluation in first block of 2016', CAST(0x193B0B00 AS Date), CAST(0x453B0B00 AS Date), CAST(0x493B0B00 AS Date), CAST(0x4B3B0B00 AS Date))
SET IDENTITY_INSERT [dbo].[PeriodEvaluation] OFF
/****** Object:  Table [dbo].[AssessmentType]    Script Date: 06/03/2015 12:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssessmentType](
	[assessType] [int] IDENTITY(1,1) NOT NULL,
	[typeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_ResultType] PRIMARY KEY CLUSTERED 
(
	[assessType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AssessmentType] ON
INSERT [dbo].[AssessmentType] ([assessType], [typeName]) VALUES (1, N'feedback')
INSERT [dbo].[AssessmentType] ([assessType], [typeName]) VALUES (2, N'evaluatetion')
INSERT [dbo].[AssessmentType] ([assessType], [typeName]) VALUES (3, N'appraisal')
SET IDENTITY_INSERT [dbo].[AssessmentType] OFF
/****** Object:  Table [dbo].[Account]    Script Date: 06/03/2015 12:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[accountID] [int] IDENTITY(1,1) NOT NULL,
	[roleID] [int] NOT NULL,
	[username] [nvarchar](16) NOT NULL,
	[password] [nvarchar](16) NOT NULL,
	[isActive] [bit] NOT NULL,
	[fullName] [nvarchar](50) NULL,
	[sex] [bit] NULL,
	[birthday] [date] NULL,
	[phone] [nvarchar](15) NULL,
	[email] [nvarchar](50) NULL,
	[avgPoint] [float] NULL,
	[numOfEva] [int] NULL,
	[company] [nvarchar](50) NULL,
	[address] [nvarchar](250) NULL,
 CONSTRAINT [PK_Account_1] PRIMARY KEY CLUSTERED 
(
	[accountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_Account] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (1, 6, N'engineer04', N'1234', 1, N'Trần Văn A', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (2, 1, N'admin', N'1234', 1, N'Nguyễn Thị Admin', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (3, 2, N'director', N'1234', 1, N'Dương Thiên Director', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (4, 3, N'manager02', N'1234', 1, N'Bành Văn Manager', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (5, 4, N'customer04', N'1234', 1, N'Tôn Thị Customer', 0, NULL, NULL, NULL, NULL, NULL, N'ABC', NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (6, 5, N'hr', N'1234', 1, N'Kiều Thị Hr', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (7, 6, N'engineer21', N'1234', 1, N'Bùi Văn Cang', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (9, 3, N'manager01', N'1234', 1, N'Trần Văn Ớt', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (10, 3, N'manager03', N'1234', 1, N'Lê Thị Cà Chua', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (11, 3, N'manager04', N'1234', 1, N'Trần Quang Diệu', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (12, 4, N'customer01', N'1234', 1, N'Will Black', 1, NULL, NULL, NULL, NULL, NULL, N'Toshiba', NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (13, 4, N'customer02', N'1234', 1, N'Tina Nguyen', 0, NULL, NULL, NULL, NULL, NULL, N'Apple', NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (14, 4, N'customer03', N'1234', 1, N'Trang Tran', 0, NULL, NULL, NULL, NULL, NULL, N'A&T Media', NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (15, 6, N'engineer01', N'1234', 1, N'Lê Văn Tám', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (16, 6, N'engineer02', N'1234', 1, N'Võ Thị Sáu', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (17, 6, N'engineer03', N'1234', 1, N'Quang Trung', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (18, 6, N'engineer05', N'1234', 1, N'Thống Nhất', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (19, 6, N'engineer06', N'1234', 1, N'Hoàng Hoa Thám', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (20, 6, N'engineer07', N'1234', 1, N'Đinh Tiên Hoàng', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (21, 6, N'engineer08', N'1234', 1, N'Nguyễn Kiệm', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (22, 6, N'engineer09', N'1234', 1, N'Võ Văn Kiệt', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (23, 6, N'engineer10', N'1234', 1, N'Nguyễn Thị Xuân Mai', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (24, 6, N'engineer11', N'1234', 1, N'Lê Minh Hoàng', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (28, 6, N'engineer12', N'1234', 1, N'Thân Thị Trang', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (29, 6, N'engineer13', N'1234', 1, N'Đào Văn Kính', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (30, 6, N'engineer14', N'1234', 1, N'Nguyễn Thị Bích Thùy', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (31, 6, N'engineer15', N'1234', 1, N'Trần Cao Vân', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (32, 6, N'engineer16', N'1234', 1, N'Phạm Dương Hoa Tiên', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (33, 6, N'engineer17', N'1234', 1, N'Điêu Khắc Nguyên', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (34, 6, N'engineer18', N'1234', 1, N'Trần An Bình', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (35, 6, N'engineer19', N'1234', 1, N'Lê Hữu Minh Quang', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([accountID], [roleID], [username], [password], [isActive], [fullName], [sex], [birthday], [phone], [email], [avgPoint], [numOfEva], [company], [address]) VALUES (36, 6, N'engineer20', N'1234', 1, N'Đỗ Đức Đạt', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Account] OFF
/****** Object:  Table [dbo].[Criterion]    Script Date: 06/03/2015 12:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Criterion](
	[critID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](150) NULL,
	[description] [nvarchar](1000) NULL,
	[maxPoint] [float] NULL,
	[isActive] [bit] NULL,
	[createDate] [date] NULL,
	[type] [int] NULL,
 CONSTRAINT [PK_Criterion] PRIMARY KEY CLUSTERED 
(
	[critID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Criterion] ON
INSERT [dbo].[Criterion] ([critID], [title], [description], [maxPoint], [isActive], [createDate], [type]) VALUES (1, N'on time', N'select 1 to 5', 5, 1, NULL, 3)
INSERT [dbo].[Criterion] ([critID], [title], [description], [maxPoint], [isActive], [createDate], [type]) VALUES (2, N'performance', N'select 1 for bad, 2 for not bad, 3 for good', 3, 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[Criterion] OFF
/****** Object:  Table [dbo].[EvaluationResult]    Script Date: 06/03/2015 12:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EvaluationResult](
	[resultID] [int] IDENTITY(1,1) NOT NULL,
	[evaID] [int] NOT NULL,
	[evaluatorID] [int] NOT NULL,
	[receiverID] [int] NOT NULL,
	[avgPoint] [float] NULL,
	[EvaContent] [nvarchar](max) NULL,
	[reviewerID] [int] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_EvaluationResult] PRIMARY KEY CLUSTERED 
(
	[resultID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EvaluationResult] ON
INSERT [dbo].[EvaluationResult] ([resultID], [evaID], [evaluatorID], [receiverID], [avgPoint], [EvaContent], [reviewerID], [status]) VALUES (1, 1, 4, 1, 5, N'not bad', 3, NULL)
SET IDENTITY_INSERT [dbo].[EvaluationResult] OFF
/****** Object:  Table [dbo].[EngineerSkill]    Script Date: 06/03/2015 12:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EngineerSkill](
	[engineerID] [int] NOT NULL,
	[skillID] [int] NOT NULL,
	[isInterest] [bit] NULL,
 CONSTRAINT [PK_EngineerSkill] PRIMARY KEY CLUSTERED 
(
	[engineerID] ASC,
	[skillID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[EngineerSkill] ([engineerID], [skillID], [isInterest]) VALUES (1, 1, 1)
INSERT [dbo].[EngineerSkill] ([engineerID], [skillID], [isInterest]) VALUES (7, 2, 1)
INSERT [dbo].[EngineerSkill] ([engineerID], [skillID], [isInterest]) VALUES (15, 3, 1)
INSERT [dbo].[EngineerSkill] ([engineerID], [skillID], [isInterest]) VALUES (16, 4, 1)
INSERT [dbo].[EngineerSkill] ([engineerID], [skillID], [isInterest]) VALUES (17, 5, 1)
INSERT [dbo].[EngineerSkill] ([engineerID], [skillID], [isInterest]) VALUES (18, 6, 1)
INSERT [dbo].[EngineerSkill] ([engineerID], [skillID], [isInterest]) VALUES (19, 7, 1)
INSERT [dbo].[EngineerSkill] ([engineerID], [skillID], [isInterest]) VALUES (20, 8, 1)
INSERT [dbo].[EngineerSkill] ([engineerID], [skillID], [isInterest]) VALUES (21, 9, 1)
INSERT [dbo].[EngineerSkill] ([engineerID], [skillID], [isInterest]) VALUES (22, 10, 1)
INSERT [dbo].[EngineerSkill] ([engineerID], [skillID], [isInterest]) VALUES (23, 1, 1)
INSERT [dbo].[EngineerSkill] ([engineerID], [skillID], [isInterest]) VALUES (24, 2, 1)
INSERT [dbo].[EngineerSkill] ([engineerID], [skillID], [isInterest]) VALUES (28, 3, 1)
INSERT [dbo].[EngineerSkill] ([engineerID], [skillID], [isInterest]) VALUES (29, 4, 1)
INSERT [dbo].[EngineerSkill] ([engineerID], [skillID], [isInterest]) VALUES (30, 5, 1)
INSERT [dbo].[EngineerSkill] ([engineerID], [skillID], [isInterest]) VALUES (31, 6, 1)
INSERT [dbo].[EngineerSkill] ([engineerID], [skillID], [isInterest]) VALUES (32, 7, 1)
INSERT [dbo].[EngineerSkill] ([engineerID], [skillID], [isInterest]) VALUES (33, 8, 1)
INSERT [dbo].[EngineerSkill] ([engineerID], [skillID], [isInterest]) VALUES (34, 9, 1)
INSERT [dbo].[EngineerSkill] ([engineerID], [skillID], [isInterest]) VALUES (35, 10, 1)
INSERT [dbo].[EngineerSkill] ([engineerID], [skillID], [isInterest]) VALUES (36, 1, 1)
/****** Object:  Table [dbo].[Project]    Script Date: 06/03/2015 12:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[projectID] [int] IDENTITY(1,1) NOT NULL,
	[directorID] [int] NOT NULL,
	[customerID] [int] NOT NULL,
	[projectCode] [nchar](10) NOT NULL,
	[projectName] [nvarchar](50) NOT NULL,
	[startDate] [date] NOT NULL,
	[endDate] [date] NOT NULL,
	[avgPoint] [float] NULL,
	[scale] [int] NULL,
	[fbackContent] [nvarchar](max) NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[projectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Project] ON
INSERT [dbo].[Project] ([projectID], [directorID], [customerID], [projectCode], [projectName], [startDate], [endDate], [avgPoint], [scale], [fbackContent], [status]) VALUES (1, 3, 4, N'OHRM      ', N'Outsourcing Human Resource Management', CAST(0x72390B00 AS Date), CAST(0xEE390B00 AS Date), NULL, NULL, NULL, N'close')
INSERT [dbo].[Project] ([projectID], [directorID], [customerID], [projectCode], [projectName], [startDate], [endDate], [avgPoint], [scale], [fbackContent], [status]) VALUES (2, 3, 14, N'DOG       ', N'Dog Management', CAST(0xB7390B00 AS Date), CAST(0x0E3A0B00 AS Date), NULL, NULL, NULL, N'done')
INSERT [dbo].[Project] ([projectID], [directorID], [customerID], [projectCode], [projectName], [startDate], [endDate], [avgPoint], [scale], [fbackContent], [status]) VALUES (6, 3, 12, N'TMA       ', N'Time Management', CAST(0x5A3B0B00 AS Date), CAST(0x303C0B00 AS Date), NULL, NULL, NULL, N'working')
INSERT [dbo].[Project] ([projectID], [directorID], [customerID], [projectCode], [projectName], [startDate], [endDate], [avgPoint], [scale], [fbackContent], [status]) VALUES (9, 3, 13, N'CPS       ', N'Car Planing', CAST(0x1D3B0B00 AS Date), CAST(0x043F0B00 AS Date), NULL, NULL, NULL, N'new')
SET IDENTITY_INSERT [dbo].[Project] OFF
/****** Object:  Table [dbo].[Notification]    Script Date: 06/03/2015 12:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[notiID] [int] NOT NULL,
	[receiverID] [int] NULL,
	[notiContent] [nvarchar](200) NULL,
	[senderID] [int] NULL,
	[result] [nvarchar](20) NULL,
	[notiDate] [date] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Notification] PRIMARY KEY CLUSTERED 
(
	[notiID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recruitment]    Script Date: 06/03/2015 12:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recruitment](
	[recruitID] [int] IDENTITY(1,1) NOT NULL,
	[directorID] [int] NOT NULL,
	[recruitContent] [nvarchar](500) NOT NULL,
	[recruitDate] [date] NOT NULL,
	[isClose] [bit] NULL,
	[title] [nvarchar](100) NULL,
	[reply] [int] NULL,
	[lastEdit] [date] NULL,
 CONSTRAINT [PK_Recruitment_1] PRIMARY KEY CLUSTERED 
(
	[recruitID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Recruitment] ON
INSERT [dbo].[Recruitment] ([recruitID], [directorID], [recruitContent], [recruitDate], [isClose], [title], [reply], [lastEdit]) VALUES (1, 3, N'Need 10 java developers', CAST(0x5A3B0B00 AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recruitment] ([recruitID], [directorID], [recruitContent], [recruitDate], [isClose], [title], [reply], [lastEdit]) VALUES (2, 3, N'Need 5 sql SA', CAST(0x5A3B0B00 AS Date), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Recruitment] OFF
/****** Object:  Table [dbo].[RecruitmentReply]    Script Date: 06/03/2015 12:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecruitmentReply](
	[recruitRepID] [int] IDENTITY(1,1) NOT NULL,
	[recruitID] [int] NOT NULL,
	[posterID] [int] NOT NULL,
	[repContent] [nvarchar](500) NOT NULL,
	[repDate] [datetime] NOT NULL,
 CONSTRAINT [PK_RecruitmentReply] PRIMARY KEY CLUSTERED 
(
	[recruitRepID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RecruitmentReply] ON
INSERT [dbo].[RecruitmentReply] ([recruitRepID], [recruitID], [posterID], [repContent], [repDate]) VALUES (3, 1, 6, N'done', CAST(0x0000A63A00000000 AS DateTime))
INSERT [dbo].[RecruitmentReply] ([recruitRepID], [recruitID], [posterID], [repContent], [repDate]) VALUES (5, 2, 6, N'waiting', CAST(0x0000A61E00000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[RecruitmentReply] OFF
/****** Object:  Table [dbo].[ProjectSkill]    Script Date: 06/03/2015 12:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectSkill](
	[projectID] [int] NOT NULL,
	[skillID] [int] NOT NULL,
 CONSTRAINT [PK_ProjectSkill] PRIMARY KEY CLUSTERED 
(
	[projectID] ASC,
	[skillID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ProjectSkill] ([projectID], [skillID]) VALUES (1, 1)
INSERT [dbo].[ProjectSkill] ([projectID], [skillID]) VALUES (1, 3)
INSERT [dbo].[ProjectSkill] ([projectID], [skillID]) VALUES (1, 5)
INSERT [dbo].[ProjectSkill] ([projectID], [skillID]) VALUES (1, 10)
INSERT [dbo].[ProjectSkill] ([projectID], [skillID]) VALUES (2, 2)
INSERT [dbo].[ProjectSkill] ([projectID], [skillID]) VALUES (2, 3)
INSERT [dbo].[ProjectSkill] ([projectID], [skillID]) VALUES (2, 5)
INSERT [dbo].[ProjectSkill] ([projectID], [skillID]) VALUES (2, 9)
INSERT [dbo].[ProjectSkill] ([projectID], [skillID]) VALUES (6, 1)
INSERT [dbo].[ProjectSkill] ([projectID], [skillID]) VALUES (6, 3)
INSERT [dbo].[ProjectSkill] ([projectID], [skillID]) VALUES (6, 9)
INSERT [dbo].[ProjectSkill] ([projectID], [skillID]) VALUES (9, 3)
INSERT [dbo].[ProjectSkill] ([projectID], [skillID]) VALUES (9, 4)
/****** Object:  Table [dbo].[ProjectMember]    Script Date: 06/03/2015 12:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectMember](
	[proMemID] [int] IDENTITY(1,1) NOT NULL,
	[projectID] [int] NOT NULL,
	[employeeID] [int] NOT NULL,
	[evaluatorID] [int] NULL,
	[isPartTime] [bit] NULL,
	[isApprove] [bit] NULL,
	[avgPoint] [float] NULL,
	[isManager] [bit] NULL,
	[isActive] [bit] NULL,
	[apprContent] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProjectMember] PRIMARY KEY CLUSTERED 
(
	[proMemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ProjectMember] ON
INSERT [dbo].[ProjectMember] ([proMemID], [projectID], [employeeID], [evaluatorID], [isPartTime], [isApprove], [avgPoint], [isManager], [isActive], [apprContent]) VALUES (1, 1, 1, NULL, NULL, 1, NULL, NULL, 1, NULL)
INSERT [dbo].[ProjectMember] ([proMemID], [projectID], [employeeID], [evaluatorID], [isPartTime], [isApprove], [avgPoint], [isManager], [isActive], [apprContent]) VALUES (2, 1, 4, NULL, NULL, 1, NULL, 1, NULL, NULL)
INSERT [dbo].[ProjectMember] ([proMemID], [projectID], [employeeID], [evaluatorID], [isPartTime], [isApprove], [avgPoint], [isManager], [isActive], [apprContent]) VALUES (3, 1, 15, NULL, NULL, 1, NULL, NULL, 1, NULL)
INSERT [dbo].[ProjectMember] ([proMemID], [projectID], [employeeID], [evaluatorID], [isPartTime], [isApprove], [avgPoint], [isManager], [isActive], [apprContent]) VALUES (4, 1, 16, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProjectMember] ([proMemID], [projectID], [employeeID], [evaluatorID], [isPartTime], [isApprove], [avgPoint], [isManager], [isActive], [apprContent]) VALUES (5, 1, 17, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProjectMember] ([proMemID], [projectID], [employeeID], [evaluatorID], [isPartTime], [isApprove], [avgPoint], [isManager], [isActive], [apprContent]) VALUES (6, 2, 9, NULL, NULL, 1, NULL, 1, NULL, NULL)
INSERT [dbo].[ProjectMember] ([proMemID], [projectID], [employeeID], [evaluatorID], [isPartTime], [isApprove], [avgPoint], [isManager], [isActive], [apprContent]) VALUES (7, 2, 18, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProjectMember] ([proMemID], [projectID], [employeeID], [evaluatorID], [isPartTime], [isApprove], [avgPoint], [isManager], [isActive], [apprContent]) VALUES (8, 2, 19, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProjectMember] ([proMemID], [projectID], [employeeID], [evaluatorID], [isPartTime], [isApprove], [avgPoint], [isManager], [isActive], [apprContent]) VALUES (9, 2, 20, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProjectMember] ([proMemID], [projectID], [employeeID], [evaluatorID], [isPartTime], [isApprove], [avgPoint], [isManager], [isActive], [apprContent]) VALUES (10, 2, 21, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProjectMember] ([proMemID], [projectID], [employeeID], [evaluatorID], [isPartTime], [isApprove], [avgPoint], [isManager], [isActive], [apprContent]) VALUES (14, 6, 10, NULL, NULL, 1, NULL, 1, NULL, NULL)
INSERT [dbo].[ProjectMember] ([proMemID], [projectID], [employeeID], [evaluatorID], [isPartTime], [isApprove], [avgPoint], [isManager], [isActive], [apprContent]) VALUES (15, 6, 23, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProjectMember] ([proMemID], [projectID], [employeeID], [evaluatorID], [isPartTime], [isApprove], [avgPoint], [isManager], [isActive], [apprContent]) VALUES (16, 6, 24, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProjectMember] ([proMemID], [projectID], [employeeID], [evaluatorID], [isPartTime], [isApprove], [avgPoint], [isManager], [isActive], [apprContent]) VALUES (18, 6, 28, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProjectMember] ([proMemID], [projectID], [employeeID], [evaluatorID], [isPartTime], [isApprove], [avgPoint], [isManager], [isActive], [apprContent]) VALUES (19, 6, 29, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProjectMember] ([proMemID], [projectID], [employeeID], [evaluatorID], [isPartTime], [isApprove], [avgPoint], [isManager], [isActive], [apprContent]) VALUES (21, 9, 11, NULL, NULL, 1, NULL, 1, NULL, NULL)
INSERT [dbo].[ProjectMember] ([proMemID], [projectID], [employeeID], [evaluatorID], [isPartTime], [isApprove], [avgPoint], [isManager], [isActive], [apprContent]) VALUES (23, 9, 22, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProjectMember] ([proMemID], [projectID], [employeeID], [evaluatorID], [isPartTime], [isApprove], [avgPoint], [isManager], [isActive], [apprContent]) VALUES (24, 9, 30, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProjectMember] ([proMemID], [projectID], [employeeID], [evaluatorID], [isPartTime], [isApprove], [avgPoint], [isManager], [isActive], [apprContent]) VALUES (25, 9, 31, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProjectMember] ([proMemID], [projectID], [employeeID], [evaluatorID], [isPartTime], [isApprove], [avgPoint], [isManager], [isActive], [apprContent]) VALUES (26, 9, 32, NULL, NULL, 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ProjectMember] OFF
/****** Object:  Table [dbo].[Knowledge]    Script Date: 06/03/2015 12:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Knowledge](
	[knowID] [int] IDENTITY(1,1) NOT NULL,
	[topic] [nvarchar](50) NULL,
	[projectID] [int] NULL,
	[posterID] [int] NULL,
	[knowContent] [nvarchar](1000) NULL,
	[knowDate] [date] NULL,
	[lastPostComment] [nvarchar](105) NULL,
	[lastPostDate] [datetime] NULL,
	[replies] [int] NULL,
	[lastEdit] [datetime] NULL,
	[isClose] [bit] NULL,
 CONSTRAINT [PK_Knowledge] PRIMARY KEY CLUSTERED 
(
	[knowID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Knowledge] ON
INSERT [dbo].[Knowledge] ([knowID], [topic], [projectID], [posterID], [knowContent], [knowDate], [lastPostComment], [lastPostDate], [replies], [lastEdit], [isClose]) VALUES (1, N'fix bug on jsp', 1, 1, N'Tren trang jsp muon dung taglib phai import', CAST(0x72390B00 AS Date), NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Knowledge] OFF
/****** Object:  Table [dbo].[Timesheet]    Script Date: 06/03/2015 12:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Timesheet](
	[timeSheetID] [int] IDENTITY(1,1) NOT NULL,
	[projectID] [int] NOT NULL,
	[writerID] [int] NOT NULL,
	[reviewerID] [int] NULL,
	[writeDate] [date] NULL,
	[time] [float] NULL,
	[description] [nvarchar](500) NULL,
	[reviewDate] [datetime] NULL,
	[isApprove] [bit] NULL,
 CONSTRAINT [PK_Timesheet] PRIMARY KEY CLUSTERED 
(
	[timeSheetID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Timesheet] ON
INSERT [dbo].[Timesheet] ([timeSheetID], [projectID], [writerID], [reviewerID], [writeDate], [time], [description], [reviewDate], [isApprove]) VALUES (1, 2, 1, NULL, CAST(0x033A0B00 AS Date), 1, N'update time = 1', NULL, NULL)
INSERT [dbo].[Timesheet] ([timeSheetID], [projectID], [writerID], [reviewerID], [writeDate], [time], [description], [reviewDate], [isApprove]) VALUES (8, 2, 1, NULL, CAST(0x033A0B00 AS Date), 3, N'support Mai', NULL, 0)
INSERT [dbo].[Timesheet] ([timeSheetID], [projectID], [writerID], [reviewerID], [writeDate], [time], [description], [reviewDate], [isApprove]) VALUES (9, 1, 1, NULL, CAST(0x033A0B00 AS Date), 4, N'time shee 3', NULL, NULL)
INSERT [dbo].[Timesheet] ([timeSheetID], [projectID], [writerID], [reviewerID], [writeDate], [time], [description], [reviewDate], [isApprove]) VALUES (11, 1, 1, NULL, CAST(0x013A0B00 AS Date), 5, N'Aaaaaaaaaaaaaaa', NULL, NULL)
INSERT [dbo].[Timesheet] ([timeSheetID], [projectID], [writerID], [reviewerID], [writeDate], [time], [description], [reviewDate], [isApprove]) VALUES (14, 1, 1, NULL, CAST(0xF0390B00 AS Date), 6, N'over', NULL, NULL)
INSERT [dbo].[Timesheet] ([timeSheetID], [projectID], [writerID], [reviewerID], [writeDate], [time], [description], [reviewDate], [isApprove]) VALUES (16, 1, 1, NULL, CAST(0xF8390B00 AS Date), 7, N'sfasfasfasf', NULL, 1)
INSERT [dbo].[Timesheet] ([timeSheetID], [projectID], [writerID], [reviewerID], [writeDate], [time], [description], [reviewDate], [isApprove]) VALUES (19, 2, 1, NULL, CAST(0x053A0B00 AS Date), 8, N'1111111111', NULL, 1)
INSERT [dbo].[Timesheet] ([timeSheetID], [projectID], [writerID], [reviewerID], [writeDate], [time], [description], [reviewDate], [isApprove]) VALUES (24, 1, 7, NULL, CAST(0x053A0B00 AS Date), 9, N'22222222', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Timesheet] OFF
/****** Object:  Table [dbo].[WorkTracking]    Script Date: 06/03/2015 12:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkTracking](
	[workTrackingID] [int] IDENTITY(1,1) NOT NULL,
	[proMemID] [int] NULL,
	[positionID] [int] NOT NULL,
	[startDate] [datetime] NULL,
	[endDate] [datetime] NULL,
 CONSTRAINT [PK_WorkTracking] PRIMARY KEY CLUSTERED 
(
	[workTrackingID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[WorkTracking] ON
INSERT [dbo].[WorkTracking] ([workTrackingID], [proMemID], [positionID], [startDate], [endDate]) VALUES (1, 1, 1, CAST(0x0000A41700000000 AS DateTime), CAST(0x0000A49300000000 AS DateTime))
INSERT [dbo].[WorkTracking] ([workTrackingID], [proMemID], [positionID], [startDate], [endDate]) VALUES (2, 2, 5, CAST(0x0000A41700000000 AS DateTime), CAST(0x0000A49300000000 AS DateTime))
INSERT [dbo].[WorkTracking] ([workTrackingID], [proMemID], [positionID], [startDate], [endDate]) VALUES (3, 3, 1, CAST(0x0000A41700000000 AS DateTime), CAST(0x0000A49300000000 AS DateTime))
INSERT [dbo].[WorkTracking] ([workTrackingID], [proMemID], [positionID], [startDate], [endDate]) VALUES (4, 4, 2, CAST(0x0000A41700000000 AS DateTime), CAST(0x0000A49300000000 AS DateTime))
INSERT [dbo].[WorkTracking] ([workTrackingID], [proMemID], [positionID], [startDate], [endDate]) VALUES (5, 5, 1, CAST(0x0000A41700000000 AS DateTime), CAST(0x0000A49300000000 AS DateTime))
INSERT [dbo].[WorkTracking] ([workTrackingID], [proMemID], [positionID], [startDate], [endDate]) VALUES (6, 6, 5, CAST(0x0000A45C00000000 AS DateTime), CAST(0x0000A4B300000000 AS DateTime))
INSERT [dbo].[WorkTracking] ([workTrackingID], [proMemID], [positionID], [startDate], [endDate]) VALUES (8, 7, 1, CAST(0x0000A45C00000000 AS DateTime), CAST(0x0000A4B300000000 AS DateTime))
INSERT [dbo].[WorkTracking] ([workTrackingID], [proMemID], [positionID], [startDate], [endDate]) VALUES (9, 8, 3, CAST(0x0000A45C00000000 AS DateTime), CAST(0x0000A4B300000000 AS DateTime))
INSERT [dbo].[WorkTracking] ([workTrackingID], [proMemID], [positionID], [startDate], [endDate]) VALUES (10, 9, 2, CAST(0x0000A45C00000000 AS DateTime), CAST(0x0000A4B300000000 AS DateTime))
INSERT [dbo].[WorkTracking] ([workTrackingID], [proMemID], [positionID], [startDate], [endDate]) VALUES (11, 10, 1, CAST(0x0000A45C00000000 AS DateTime), CAST(0x0000A4B300000000 AS DateTime))
INSERT [dbo].[WorkTracking] ([workTrackingID], [proMemID], [positionID], [startDate], [endDate]) VALUES (12, 14, 5, CAST(0x0000A5FF00000000 AS DateTime), CAST(0x0000A6D500000000 AS DateTime))
INSERT [dbo].[WorkTracking] ([workTrackingID], [proMemID], [positionID], [startDate], [endDate]) VALUES (13, 15, 1, CAST(0x0000A5FF00000000 AS DateTime), CAST(0x0000A6D500000000 AS DateTime))
INSERT [dbo].[WorkTracking] ([workTrackingID], [proMemID], [positionID], [startDate], [endDate]) VALUES (14, 16, 3, CAST(0x0000A5FF00000000 AS DateTime), CAST(0x0000A6D500000000 AS DateTime))
INSERT [dbo].[WorkTracking] ([workTrackingID], [proMemID], [positionID], [startDate], [endDate]) VALUES (16, 18, 2, CAST(0x0000A5FF00000000 AS DateTime), CAST(0x0000A6D500000000 AS DateTime))
INSERT [dbo].[WorkTracking] ([workTrackingID], [proMemID], [positionID], [startDate], [endDate]) VALUES (17, 19, 1, CAST(0x0000A5FF00000000 AS DateTime), CAST(0x0000A6D500000000 AS DateTime))
INSERT [dbo].[WorkTracking] ([workTrackingID], [proMemID], [positionID], [startDate], [endDate]) VALUES (18, 21, 5, CAST(0x0000A5C200000000 AS DateTime), CAST(0x0000A9A900000000 AS DateTime))
INSERT [dbo].[WorkTracking] ([workTrackingID], [proMemID], [positionID], [startDate], [endDate]) VALUES (20, 23, 1, CAST(0x0000A5C200000000 AS DateTime), CAST(0x0000A9A900000000 AS DateTime))
INSERT [dbo].[WorkTracking] ([workTrackingID], [proMemID], [positionID], [startDate], [endDate]) VALUES (21, 24, 1, CAST(0x0000A5C200000000 AS DateTime), CAST(0x0000A9A900000000 AS DateTime))
INSERT [dbo].[WorkTracking] ([workTrackingID], [proMemID], [positionID], [startDate], [endDate]) VALUES (22, 25, 2, CAST(0x0000A5C200000000 AS DateTime), CAST(0x0000A9A900000000 AS DateTime))
INSERT [dbo].[WorkTracking] ([workTrackingID], [proMemID], [positionID], [startDate], [endDate]) VALUES (23, 26, 3, CAST(0x0000A5C200000000 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[WorkTracking] OFF
/****** Object:  Table [dbo].[Comment]    Script Date: 06/03/2015 12:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[commentID] [int] IDENTITY(1,1) NOT NULL,
	[knowID] [int] NULL,
	[posterID] [int] NULL,
	[comContent] [nvarchar](1000) NULL,
	[comDate] [datetime] NOT NULL,
	[lastEdit] [datetime] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[commentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Comment] ON
INSERT [dbo].[Comment] ([commentID], [knowID], [posterID], [comContent], [comDate], [lastEdit]) VALUES (1, 1, 7, N'Neu tag c không in đậm nghĩa là quên import taglib', CAST(0x0000A41700000000 AS DateTime), NULL)
INSERT [dbo].[Comment] ([commentID], [knowID], [posterID], [comContent], [comDate], [lastEdit]) VALUES (7, 1, 9, N'spam choiiiiiiiiiiiiiiiiiiiiiii', CAST(0x0000A41800000000 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Comment] OFF
/****** Object:  Table [dbo].[AssessmentResult]    Script Date: 06/03/2015 12:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssessmentResult](
	[assessID] [int] IDENTITY(1,1) NOT NULL,
	[criterionID] [int] NULL,
	[targetID] [int] NULL,
	[assessDate] [date] NULL,
	[point] [float] NULL,
	[type] [int] NULL,
 CONSTRAINT [PK_AssessmentResult] PRIMARY KEY CLUSTERED 
(
	[assessID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AssessmentResult] ON
INSERT [dbo].[AssessmentResult] ([assessID], [criterionID], [targetID], [assessDate], [point], [type]) VALUES (1, 1, 1, NULL, NULL, 3)
SET IDENTITY_INSERT [dbo].[AssessmentResult] OFF
/****** Object:  ForeignKey [FK_Account_Role]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([roleID])
REFERENCES [dbo].[Role] ([roleID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
/****** Object:  ForeignKey [FK_Criterion_ResultType]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[Criterion]  WITH CHECK ADD  CONSTRAINT [FK_Criterion_ResultType] FOREIGN KEY([type])
REFERENCES [dbo].[AssessmentType] ([assessType])
GO
ALTER TABLE [dbo].[Criterion] CHECK CONSTRAINT [FK_Criterion_ResultType]
GO
/****** Object:  ForeignKey [FK_EvaluationResult_Account]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[EvaluationResult]  WITH CHECK ADD  CONSTRAINT [FK_EvaluationResult_Account] FOREIGN KEY([evaluatorID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[EvaluationResult] CHECK CONSTRAINT [FK_EvaluationResult_Account]
GO
/****** Object:  ForeignKey [FK_EvaluationResult_Account1]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[EvaluationResult]  WITH CHECK ADD  CONSTRAINT [FK_EvaluationResult_Account1] FOREIGN KEY([receiverID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[EvaluationResult] CHECK CONSTRAINT [FK_EvaluationResult_Account1]
GO
/****** Object:  ForeignKey [FK_EvaluationResult_Account2]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[EvaluationResult]  WITH CHECK ADD  CONSTRAINT [FK_EvaluationResult_Account2] FOREIGN KEY([reviewerID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[EvaluationResult] CHECK CONSTRAINT [FK_EvaluationResult_Account2]
GO
/****** Object:  ForeignKey [FK_EvaluationResult_PeriodEvaluation]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[EvaluationResult]  WITH CHECK ADD  CONSTRAINT [FK_EvaluationResult_PeriodEvaluation] FOREIGN KEY([evaID])
REFERENCES [dbo].[PeriodEvaluation] ([evaID])
GO
ALTER TABLE [dbo].[EvaluationResult] CHECK CONSTRAINT [FK_EvaluationResult_PeriodEvaluation]
GO
/****** Object:  ForeignKey [FK_EngineerSkill_Engineer]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[EngineerSkill]  WITH CHECK ADD  CONSTRAINT [FK_EngineerSkill_Engineer] FOREIGN KEY([engineerID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[EngineerSkill] CHECK CONSTRAINT [FK_EngineerSkill_Engineer]
GO
/****** Object:  ForeignKey [FK_EngineerSkill_Skill]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[EngineerSkill]  WITH CHECK ADD  CONSTRAINT [FK_EngineerSkill_Skill] FOREIGN KEY([skillID])
REFERENCES [dbo].[Skill] ([skillID])
GO
ALTER TABLE [dbo].[EngineerSkill] CHECK CONSTRAINT [FK_EngineerSkill_Skill]
GO
/****** Object:  ForeignKey [FK_Project_Account]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_Account] FOREIGN KEY([customerID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_Account]
GO
/****** Object:  ForeignKey [FK_Project_Account1]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_Account1] FOREIGN KEY([directorID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_Account1]
GO
/****** Object:  ForeignKey [FK_Notification_Engineer]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_Engineer] FOREIGN KEY([receiverID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_Engineer]
GO
/****** Object:  ForeignKey [FK_Notification_Engineer1]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_Engineer1] FOREIGN KEY([senderID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_Engineer1]
GO
/****** Object:  ForeignKey [FK_Recruitment_Account]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[Recruitment]  WITH CHECK ADD  CONSTRAINT [FK_Recruitment_Account] FOREIGN KEY([directorID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Recruitment] CHECK CONSTRAINT [FK_Recruitment_Account]
GO
/****** Object:  ForeignKey [FK_RecruitmentReply_Account]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[RecruitmentReply]  WITH CHECK ADD  CONSTRAINT [FK_RecruitmentReply_Account] FOREIGN KEY([posterID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[RecruitmentReply] CHECK CONSTRAINT [FK_RecruitmentReply_Account]
GO
/****** Object:  ForeignKey [FK_RecruitmentReply_Recruitment]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[RecruitmentReply]  WITH CHECK ADD  CONSTRAINT [FK_RecruitmentReply_Recruitment] FOREIGN KEY([recruitID])
REFERENCES [dbo].[Recruitment] ([recruitID])
GO
ALTER TABLE [dbo].[RecruitmentReply] CHECK CONSTRAINT [FK_RecruitmentReply_Recruitment]
GO
/****** Object:  ForeignKey [FK_ProjectSkill_Project]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[ProjectSkill]  WITH CHECK ADD  CONSTRAINT [FK_ProjectSkill_Project] FOREIGN KEY([projectID])
REFERENCES [dbo].[Project] ([projectID])
GO
ALTER TABLE [dbo].[ProjectSkill] CHECK CONSTRAINT [FK_ProjectSkill_Project]
GO
/****** Object:  ForeignKey [FK_ProjectSkill_Skill]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[ProjectSkill]  WITH CHECK ADD  CONSTRAINT [FK_ProjectSkill_Skill] FOREIGN KEY([skillID])
REFERENCES [dbo].[Skill] ([skillID])
GO
ALTER TABLE [dbo].[ProjectSkill] CHECK CONSTRAINT [FK_ProjectSkill_Skill]
GO
/****** Object:  ForeignKey [FK_ProjectMember_Account]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[ProjectMember]  WITH CHECK ADD  CONSTRAINT [FK_ProjectMember_Account] FOREIGN KEY([employeeID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[ProjectMember] CHECK CONSTRAINT [FK_ProjectMember_Account]
GO
/****** Object:  ForeignKey [FK_ProjectMember_Account1]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[ProjectMember]  WITH CHECK ADD  CONSTRAINT [FK_ProjectMember_Account1] FOREIGN KEY([evaluatorID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[ProjectMember] CHECK CONSTRAINT [FK_ProjectMember_Account1]
GO
/****** Object:  ForeignKey [FK_ProjectMember_Project]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[ProjectMember]  WITH CHECK ADD  CONSTRAINT [FK_ProjectMember_Project] FOREIGN KEY([projectID])
REFERENCES [dbo].[Project] ([projectID])
GO
ALTER TABLE [dbo].[ProjectMember] CHECK CONSTRAINT [FK_ProjectMember_Project]
GO
/****** Object:  ForeignKey [FK_Knowledge_Account]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[Knowledge]  WITH CHECK ADD  CONSTRAINT [FK_Knowledge_Account] FOREIGN KEY([posterID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Knowledge] CHECK CONSTRAINT [FK_Knowledge_Account]
GO
/****** Object:  ForeignKey [FK_Knowledge_Project]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[Knowledge]  WITH CHECK ADD  CONSTRAINT [FK_Knowledge_Project] FOREIGN KEY([projectID])
REFERENCES [dbo].[Project] ([projectID])
GO
ALTER TABLE [dbo].[Knowledge] CHECK CONSTRAINT [FK_Knowledge_Project]
GO
/****** Object:  ForeignKey [FK_Timesheet_Account]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[Timesheet]  WITH CHECK ADD  CONSTRAINT [FK_Timesheet_Account] FOREIGN KEY([writerID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Timesheet] CHECK CONSTRAINT [FK_Timesheet_Account]
GO
/****** Object:  ForeignKey [FK_Timesheet_Account1]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[Timesheet]  WITH CHECK ADD  CONSTRAINT [FK_Timesheet_Account1] FOREIGN KEY([reviewerID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Timesheet] CHECK CONSTRAINT [FK_Timesheet_Account1]
GO
/****** Object:  ForeignKey [FK_Timesheet_Project]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[Timesheet]  WITH CHECK ADD  CONSTRAINT [FK_Timesheet_Project] FOREIGN KEY([projectID])
REFERENCES [dbo].[Project] ([projectID])
GO
ALTER TABLE [dbo].[Timesheet] CHECK CONSTRAINT [FK_Timesheet_Project]
GO
/****** Object:  ForeignKey [FK_WorkTracking_Position]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[WorkTracking]  WITH CHECK ADD  CONSTRAINT [FK_WorkTracking_Position] FOREIGN KEY([positionID])
REFERENCES [dbo].[Position] ([positionID])
GO
ALTER TABLE [dbo].[WorkTracking] CHECK CONSTRAINT [FK_WorkTracking_Position]
GO
/****** Object:  ForeignKey [FK_WorkTracking_ProjectMember]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[WorkTracking]  WITH CHECK ADD  CONSTRAINT [FK_WorkTracking_ProjectMember] FOREIGN KEY([proMemID])
REFERENCES [dbo].[ProjectMember] ([proMemID])
GO
ALTER TABLE [dbo].[WorkTracking] CHECK CONSTRAINT [FK_WorkTracking_ProjectMember]
GO
/****** Object:  ForeignKey [FK_Comment_Engineer]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Engineer] FOREIGN KEY([posterID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Engineer]
GO
/****** Object:  ForeignKey [FK_Comment_Knowledge]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Knowledge] FOREIGN KEY([knowID])
REFERENCES [dbo].[Knowledge] ([knowID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Knowledge]
GO
/****** Object:  ForeignKey [FK_AssessmentResult_Criterion]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[AssessmentResult]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentResult_Criterion] FOREIGN KEY([criterionID])
REFERENCES [dbo].[Criterion] ([critID])
GO
ALTER TABLE [dbo].[AssessmentResult] CHECK CONSTRAINT [FK_AssessmentResult_Criterion]
GO
/****** Object:  ForeignKey [FK_AssessmentResult_EvaluationResult]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[AssessmentResult]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentResult_EvaluationResult] FOREIGN KEY([targetID])
REFERENCES [dbo].[EvaluationResult] ([resultID])
GO
ALTER TABLE [dbo].[AssessmentResult] CHECK CONSTRAINT [FK_AssessmentResult_EvaluationResult]
GO
/****** Object:  ForeignKey [FK_AssessmentResult_Project]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[AssessmentResult]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentResult_Project] FOREIGN KEY([targetID])
REFERENCES [dbo].[Project] ([projectID])
GO
ALTER TABLE [dbo].[AssessmentResult] CHECK CONSTRAINT [FK_AssessmentResult_Project]
GO
/****** Object:  ForeignKey [FK_AssessmentResult_ProjectMember]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[AssessmentResult]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentResult_ProjectMember] FOREIGN KEY([targetID])
REFERENCES [dbo].[ProjectMember] ([proMemID])
GO
ALTER TABLE [dbo].[AssessmentResult] CHECK CONSTRAINT [FK_AssessmentResult_ProjectMember]
GO
/****** Object:  ForeignKey [FK_AssessmentResult_ResultType]    Script Date: 06/03/2015 12:29:29 ******/
ALTER TABLE [dbo].[AssessmentResult]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentResult_ResultType] FOREIGN KEY([type])
REFERENCES [dbo].[AssessmentType] ([assessType])
GO
ALTER TABLE [dbo].[AssessmentResult] CHECK CONSTRAINT [FK_AssessmentResult_ResultType]
GO
