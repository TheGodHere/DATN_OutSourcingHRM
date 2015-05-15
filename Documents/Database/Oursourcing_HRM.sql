USE [Oursourcing_HRM]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 05/15/2015 14:22:47 ******/
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
