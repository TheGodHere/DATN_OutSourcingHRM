USE [master]
GO
/****** Object:  Database [Oursourcing_HRM]    Script Date: 05/20/2015 20:59:49 ******/
CREATE DATABASE [Oursourcing_HRM] ON  PRIMARY 
( NAME = N'Oursourcing_HRM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.THEGODHERE\MSSQL\DATA\Oursourcing_HRM.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Oursourcing_HRM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.THEGODHERE\MSSQL\DATA\Oursourcing_HRM_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
USE [Oursourcing_HRM]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 05/20/2015 20:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[positionID] [int] IDENTITY(1,1) NOT NULL,
	[position] [nvarchar](50) NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[positionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Title]    Script Date: 05/20/2015 20:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Title](
	[titleID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](20) NULL,
 CONSTRAINT [PK_Title] PRIMARY KEY CLUSTERED 
(
	[titleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 05/20/2015 20:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill](
	[skillID] [int] NOT NULL,
	[skill] [nvarchar](50) NULL,
 CONSTRAINT [PK_Skill] PRIMARY KEY CLUSTERED 
(
	[skillID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 05/20/2015 20:59:51 ******/
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
/****** Object:  Table [dbo].[Criterion]    Script Date: 05/20/2015 20:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Criterion](
	[critID] [int] NULL,
	[critContent] [nvarchar](500) NULL,
	[maxPoint] [float] NULL,
	[type] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 05/20/2015 20:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](16) NOT NULL,
	[password] [nvarchar](16) NOT NULL,
	[roleID] [int] NOT NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_Account_1] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_Account] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Engineer]    Script Date: 05/20/2015 20:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Engineer](
	[engineerID] [int] NOT NULL,
	[engineerName] [nvarchar](50) NOT NULL,
	[birthDate] [date] NULL,
	[phone] [nvarchar](20) NULL,
	[email] [varbinary](50) NULL,
	[titleID] [int] NOT NULL,
	[avgPoint] [float] NOT NULL,
	[numOfEva] [int] NOT NULL,
	[department] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[engineerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 05/20/2015 20:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[empID] [int] NOT NULL,
	[empName] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[email] [varchar](50) NULL,
	[workAs] [varchar](20) NULL,
 CONSTRAINT [PK_Employee_1] PRIMARY KEY CLUSTERED 
(
	[empID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 05/20/2015 20:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[customerID] [int] NOT NULL,
	[customerName] [nvarchar](50) NULL,
	[company] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[birthDate] [date] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[customerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 05/20/2015 20:59:51 ******/
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
 CONSTRAINT [PK_Notification] PRIMARY KEY CLUSTERED 
(
	[notiID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Knowledge]    Script Date: 05/20/2015 20:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Knowledge](
	[knowID] [int] IDENTITY(1,1) NOT NULL,
	[topic] [nvarchar](50) NULL,
	[projectCode] [nchar](10) NULL,
	[engineerID] [int] NULL,
	[knowContent] [nvarchar](1000) NULL,
	[knowDate] [date] NULL,
	[lastPost] [int] NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_Knowledge] PRIMARY KEY CLUSTERED 
(
	[knowID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Interest]    Script Date: 05/20/2015 20:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interest](
	[interestID] [int] IDENTITY(1,1) NOT NULL,
	[engineerID] [int] NULL,
	[positionID] [int] NULL,
 CONSTRAINT [PK_Interest] PRIMARY KEY CLUSTERED 
(
	[interestID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evaluation]    Script Date: 05/20/2015 20:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evaluation](
	[EvaID] [int] IDENTITY(1,1) NOT NULL,
	[engineerID] [int] NOT NULL,
	[managerID] [int] NOT NULL,
	[evaContent] [nvarchar](200) NOT NULL,
	[evaDate] [date] NOT NULL,
	[point] [float] NULL,
 CONSTRAINT [PK_Evaluation] PRIMARY KEY CLUSTERED 
(
	[EvaID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EngineerSkill]    Script Date: 05/20/2015 20:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EngineerSkill](
	[engineerSkillID] [int] NOT NULL,
	[engineerID] [int] NULL,
	[skillID] [int] NULL,
 CONSTRAINT [PK_EmpSkill] PRIMARY KEY CLUSTERED 
(
	[engineerSkillID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 05/20/2015 20:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[projectID] [int] IDENTITY(1,1) NOT NULL,
	[projectCode] [nchar](10) NOT NULL,
	[projectName] [nvarchar](50) NOT NULL,
	[managerID] [nvarchar](15) NOT NULL,
	[startDate] [date] NOT NULL,
	[endDate] [date] NOT NULL,
	[customerID] [int] NOT NULL,
	[feedContent] [nvarchar](max) NULL,
	[feedDate] [date] NULL,
	[feedPoint] [int] NULL,
 CONSTRAINT [PK_Project_1] PRIMARY KEY CLUSTERED 
(
	[projectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 05/20/2015 20:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[commentID] [int] NOT NULL,
	[knowID] [int] NULL,
	[comContent] [nvarchar](1000) NULL,
	[engineerID] [int] NULL,
	[comDate] [date] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[commentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recruitment]    Script Date: 05/20/2015 20:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recruitment](
	[recruitID] [int] IDENTITY(1,1) NOT NULL,
	[managerID] [int] NOT NULL,
	[projectID] [int] NOT NULL,
	[recruitContent] [nvarchar](500) NOT NULL,
	[recruitDate] [date] NOT NULL,
 CONSTRAINT [PK_Recruitment_1] PRIMARY KEY CLUSTERED 
(
	[recruitID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectMember]    Script Date: 05/20/2015 20:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectMember](
	[proMemberID] [int] NOT NULL,
	[projectID] [int] NULL,
	[engineerID] [int] NULL,
	[positionID] [int] NULL,
	[assignDate] [date] NULL,
 CONSTRAINT [PK_Project Member] PRIMARY KEY CLUSTERED 
(
	[proMemberID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecruitmentReply]    Script Date: 05/20/2015 20:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecruitmentReply](
	[recruitRepID] [int] IDENTITY(1,1) NOT NULL,
	[recruitID] [int] NOT NULL,
	[hrID] [int] NOT NULL,
	[repContent] [nvarchar](500) NOT NULL,
	[repDate] [date] NOT NULL,
 CONSTRAINT [PK_RecruitmentReply] PRIMARY KEY CLUSTERED 
(
	[recruitRepID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Account_Role]    Script Date: 05/20/2015 20:59:51 ******/
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([roleID])
REFERENCES [dbo].[Role] ([roleID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
/****** Object:  ForeignKey [FK_Engineer_Account]    Script Date: 05/20/2015 20:59:51 ******/
ALTER TABLE [dbo].[Engineer]  WITH CHECK ADD  CONSTRAINT [FK_Engineer_Account] FOREIGN KEY([engineerID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Engineer] CHECK CONSTRAINT [FK_Engineer_Account]
GO
/****** Object:  ForeignKey [FK_Engineer_Title]    Script Date: 05/20/2015 20:59:51 ******/
ALTER TABLE [dbo].[Engineer]  WITH CHECK ADD  CONSTRAINT [FK_Engineer_Title] FOREIGN KEY([titleID])
REFERENCES [dbo].[Title] ([titleID])
GO
ALTER TABLE [dbo].[Engineer] CHECK CONSTRAINT [FK_Engineer_Title]
GO
/****** Object:  ForeignKey [FK_Employee_Account]    Script Date: 05/20/2015 20:59:51 ******/
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Account] FOREIGN KEY([empID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Account]
GO
/****** Object:  ForeignKey [FK_Customer_Account]    Script Date: 05/20/2015 20:59:51 ******/
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Account] FOREIGN KEY([customerID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Account]
GO
/****** Object:  ForeignKey [FK_Notification_Engineer]    Script Date: 05/20/2015 20:59:51 ******/
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_Engineer] FOREIGN KEY([receiverID])
REFERENCES [dbo].[Engineer] ([engineerID])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_Engineer]
GO
/****** Object:  ForeignKey [FK_Notification_Engineer1]    Script Date: 05/20/2015 20:59:51 ******/
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_Engineer1] FOREIGN KEY([senderID])
REFERENCES [dbo].[Engineer] ([engineerID])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_Engineer1]
GO
/****** Object:  ForeignKey [FK_Knowledge_Engineer]    Script Date: 05/20/2015 20:59:51 ******/
ALTER TABLE [dbo].[Knowledge]  WITH CHECK ADD  CONSTRAINT [FK_Knowledge_Engineer] FOREIGN KEY([engineerID])
REFERENCES [dbo].[Engineer] ([engineerID])
GO
ALTER TABLE [dbo].[Knowledge] CHECK CONSTRAINT [FK_Knowledge_Engineer]
GO
/****** Object:  ForeignKey [FK_Interest_Engineer]    Script Date: 05/20/2015 20:59:51 ******/
ALTER TABLE [dbo].[Interest]  WITH CHECK ADD  CONSTRAINT [FK_Interest_Engineer] FOREIGN KEY([engineerID])
REFERENCES [dbo].[Engineer] ([engineerID])
GO
ALTER TABLE [dbo].[Interest] CHECK CONSTRAINT [FK_Interest_Engineer]
GO
/****** Object:  ForeignKey [FK_Interest_Position]    Script Date: 05/20/2015 20:59:51 ******/
ALTER TABLE [dbo].[Interest]  WITH CHECK ADD  CONSTRAINT [FK_Interest_Position] FOREIGN KEY([positionID])
REFERENCES [dbo].[Position] ([positionID])
GO
ALTER TABLE [dbo].[Interest] CHECK CONSTRAINT [FK_Interest_Position]
GO
/****** Object:  ForeignKey [FK_Evaluation_Engineer]    Script Date: 05/20/2015 20:59:51 ******/
ALTER TABLE [dbo].[Evaluation]  WITH CHECK ADD  CONSTRAINT [FK_Evaluation_Engineer] FOREIGN KEY([engineerID])
REFERENCES [dbo].[Engineer] ([engineerID])
GO
ALTER TABLE [dbo].[Evaluation] CHECK CONSTRAINT [FK_Evaluation_Engineer]
GO
/****** Object:  ForeignKey [FK_Evaluation_Engineer1]    Script Date: 05/20/2015 20:59:51 ******/
ALTER TABLE [dbo].[Evaluation]  WITH CHECK ADD  CONSTRAINT [FK_Evaluation_Engineer1] FOREIGN KEY([managerID])
REFERENCES [dbo].[Engineer] ([engineerID])
GO
ALTER TABLE [dbo].[Evaluation] CHECK CONSTRAINT [FK_Evaluation_Engineer1]
GO
/****** Object:  ForeignKey [FK_EngineerSkill_Engineer]    Script Date: 05/20/2015 20:59:51 ******/
ALTER TABLE [dbo].[EngineerSkill]  WITH CHECK ADD  CONSTRAINT [FK_EngineerSkill_Engineer] FOREIGN KEY([engineerID])
REFERENCES [dbo].[Engineer] ([engineerID])
GO
ALTER TABLE [dbo].[EngineerSkill] CHECK CONSTRAINT [FK_EngineerSkill_Engineer]
GO
/****** Object:  ForeignKey [FK_EngineerSkill_Skill]    Script Date: 05/20/2015 20:59:51 ******/
ALTER TABLE [dbo].[EngineerSkill]  WITH CHECK ADD  CONSTRAINT [FK_EngineerSkill_Skill] FOREIGN KEY([skillID])
REFERENCES [dbo].[Skill] ([skillID])
GO
ALTER TABLE [dbo].[EngineerSkill] CHECK CONSTRAINT [FK_EngineerSkill_Skill]
GO
/****** Object:  ForeignKey [FK_Project_Customer]    Script Date: 05/20/2015 20:59:51 ******/
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_Customer] FOREIGN KEY([customerID])
REFERENCES [dbo].[Customer] ([customerID])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_Customer]
GO
/****** Object:  ForeignKey [FK_Comment_Engineer]    Script Date: 05/20/2015 20:59:51 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Engineer] FOREIGN KEY([engineerID])
REFERENCES [dbo].[Engineer] ([engineerID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Engineer]
GO
/****** Object:  ForeignKey [FK_Comment_Knowledge]    Script Date: 05/20/2015 20:59:51 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Knowledge] FOREIGN KEY([knowID])
REFERENCES [dbo].[Knowledge] ([knowID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Knowledge]
GO
/****** Object:  ForeignKey [FK_Recruitment_Engineer]    Script Date: 05/20/2015 20:59:51 ******/
ALTER TABLE [dbo].[Recruitment]  WITH CHECK ADD  CONSTRAINT [FK_Recruitment_Engineer] FOREIGN KEY([managerID])
REFERENCES [dbo].[Engineer] ([engineerID])
GO
ALTER TABLE [dbo].[Recruitment] CHECK CONSTRAINT [FK_Recruitment_Engineer]
GO
/****** Object:  ForeignKey [FK_Recruitment_Project]    Script Date: 05/20/2015 20:59:51 ******/
ALTER TABLE [dbo].[Recruitment]  WITH CHECK ADD  CONSTRAINT [FK_Recruitment_Project] FOREIGN KEY([projectID])
REFERENCES [dbo].[Project] ([projectID])
GO
ALTER TABLE [dbo].[Recruitment] CHECK CONSTRAINT [FK_Recruitment_Project]
GO
/****** Object:  ForeignKey [FK_ProjectMember_Engineer]    Script Date: 05/20/2015 20:59:51 ******/
ALTER TABLE [dbo].[ProjectMember]  WITH CHECK ADD  CONSTRAINT [FK_ProjectMember_Engineer] FOREIGN KEY([engineerID])
REFERENCES [dbo].[Engineer] ([engineerID])
GO
ALTER TABLE [dbo].[ProjectMember] CHECK CONSTRAINT [FK_ProjectMember_Engineer]
GO
/****** Object:  ForeignKey [FK_ProjectMember_Position]    Script Date: 05/20/2015 20:59:51 ******/
ALTER TABLE [dbo].[ProjectMember]  WITH CHECK ADD  CONSTRAINT [FK_ProjectMember_Position] FOREIGN KEY([positionID])
REFERENCES [dbo].[Position] ([positionID])
GO
ALTER TABLE [dbo].[ProjectMember] CHECK CONSTRAINT [FK_ProjectMember_Position]
GO
/****** Object:  ForeignKey [FK_ProjectMember_Project]    Script Date: 05/20/2015 20:59:51 ******/
ALTER TABLE [dbo].[ProjectMember]  WITH CHECK ADD  CONSTRAINT [FK_ProjectMember_Project] FOREIGN KEY([projectID])
REFERENCES [dbo].[Project] ([projectID])
GO
ALTER TABLE [dbo].[ProjectMember] CHECK CONSTRAINT [FK_ProjectMember_Project]
GO
/****** Object:  ForeignKey [FK_RecruitmentReply_Employee]    Script Date: 05/20/2015 20:59:51 ******/
ALTER TABLE [dbo].[RecruitmentReply]  WITH CHECK ADD  CONSTRAINT [FK_RecruitmentReply_Employee] FOREIGN KEY([hrID])
REFERENCES [dbo].[Employee] ([empID])
GO
ALTER TABLE [dbo].[RecruitmentReply] CHECK CONSTRAINT [FK_RecruitmentReply_Employee]
GO
/****** Object:  ForeignKey [FK_RecruitmentReply_Recruitment]    Script Date: 05/20/2015 20:59:51 ******/
ALTER TABLE [dbo].[RecruitmentReply]  WITH CHECK ADD  CONSTRAINT [FK_RecruitmentReply_Recruitment] FOREIGN KEY([recruitID])
REFERENCES [dbo].[Recruitment] ([recruitID])
GO
ALTER TABLE [dbo].[RecruitmentReply] CHECK CONSTRAINT [FK_RecruitmentReply_Recruitment]
GO
