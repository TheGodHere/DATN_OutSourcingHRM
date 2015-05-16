Create database Oursourcing_HRM
USE [Oursourcing_HRM]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 05/16/2015 11:36:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[projectCode] [nchar](10) NOT NULL,
	[projectName] [nvarchar](50) NOT NULL,
	[managerName] [nvarchar](50) NOT NULL,
	[startDate] [date] NOT NULL,
	[endDate] [date] NOT NULL,
	[size] [int] NOT NULL,
	[language] [nchar](20) NOT NULL,
	[customer] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[projectCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Project] ([projectCode], [projectName], [managerName], [startDate], [endDate], [size], [language], [customer]) VALUES (N'CPS       ', N'Capstone Project SOS', N'Alaska', CAST(0x46350B00 AS Date), CAST(0x47350B00 AS Date), 100, N'java                ', N'Toshiba')
/****** Object:  Table [dbo].[Account]    Script Date: 05/16/2015 11:36:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [nvarchar](15) NOT NULL,
	[password] [nvarchar](16) NOT NULL,
	[title] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [password], [title]) VALUES (N'alaska', N'1234', N'1')
INSERT [dbo].[Account] ([username], [password], [title]) VALUES (N'samoyed', N'1234', N'1')
