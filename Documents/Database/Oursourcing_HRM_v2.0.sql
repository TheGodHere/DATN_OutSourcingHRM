USE [master]
GO
/****** Object:  Database [Oursourcing_HRM]    Script Date: 05/27/2015 17:09:05 ******/
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
/****** Object:  Table [dbo].[Skill]    Script Date: 05/27/2015 17:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill](
	[skillID] [int] NOT NULL,
	[skill] [nvarchar](50) NULL,
	[isProCode] [bit] NULL,
 CONSTRAINT [PK_Skill] PRIMARY KEY CLUSTERED 
(
	[skillID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 05/27/2015 17:09:06 ******/
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
/****** Object:  Table [dbo].[Position]    Script Date: 05/27/2015 17:09:06 ******/
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
/****** Object:  Table [dbo].[PeriodEvaluation]    Script Date: 05/27/2015 17:09:06 ******/
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
 CONSTRAINT [PK_PeriodAppraisal] PRIMARY KEY CLUSTERED 
(
	[evaID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Criterion]    Script Date: 05/27/2015 17:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Criterion](
	[critID] [int] NULL,
	[title] [nvarchar](150) NULL,
	[description] [nvarchar](1000) NULL,
	[maxPoint] [float] NULL,
	[type] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 05/27/2015 17:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[accountID] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](16) NOT NULL,
	[password] [nvarchar](16) NOT NULL,
	[roleID] [int] NOT NULL,
	[isActive] [bit] NOT NULL,
	[fullName] [nvarchar](50) NULL,
	[sex] [bit] NULL,
	[birthday] [date] NULL,
	[phone] [nvarchar](15) NULL,
	[email] [nvarchar](50) NULL,
	[avgPoint] [float] NULL,
	[numOfEva] [int] NULL,
	[department] [nvarchar](50) NULL,
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
/****** Object:  Table [dbo].[Project]    Script Date: 05/27/2015 17:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[projectID] [int] IDENTITY(1,1) NOT NULL,
	[projectCode] [nchar](10) NOT NULL,
	[projectName] [nvarchar](50) NOT NULL,
	[projectSkillID] [int] NULL,
	[startDate] [date] NOT NULL,
	[endDate] [date] NOT NULL,
	[customerID] [int] NOT NULL,
	[feedContent] [nvarchar](max) NULL,
	[feedDate] [date] NULL,
	[feedPoint] [float] NULL,
	[directorID] [int] NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[projectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recruitment]    Script Date: 05/27/2015 17:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recruitment](
	[recruitID] [int] IDENTITY(1,1) NOT NULL,
	[directorID] [int] NOT NULL,
	[recruitContent] [nvarchar](500) NOT NULL,
	[recruitDate] [date] NOT NULL,
	[isApprove] [bit] NULL,
	[isClose] [bit] NULL,
 CONSTRAINT [PK_Recruitment_1] PRIMARY KEY CLUSTERED 
(
	[recruitID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EvaluationResult]    Script Date: 05/27/2015 17:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EvaluationResult](
	[evaID] [int] NOT NULL,
	[evaluatorID] [int] NOT NULL,
	[receiverID] [int] NOT NULL,
	[evaContent] [nvarchar](200) NULL,
	[evaDate] [date] NULL,
	[point] [float] NULL,
 CONSTRAINT [PK_EvaluationResult] PRIMARY KEY CLUSTERED 
(
	[evaID] ASC,
	[evaluatorID] ASC,
	[receiverID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EngineerSkill]    Script Date: 05/27/2015 17:09:06 ******/
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
/****** Object:  Table [dbo].[Notification]    Script Date: 05/27/2015 17:09:06 ******/
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
/****** Object:  Table [dbo].[Knowledge]    Script Date: 05/27/2015 17:09:06 ******/
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
/****** Object:  Table [dbo].[ProjectSkill]    Script Date: 05/27/2015 17:09:06 ******/
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
/****** Object:  Table [dbo].[ProjectMember]    Script Date: 05/27/2015 17:09:06 ******/
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
	[apprContent] [nvarchar](200) NULL,
	[apprDate] [date] NULL,
	[point] [float] NULL,
	[isManager] [bit] NOT NULL,
 CONSTRAINT [PK_ProjectMember] PRIMARY KEY CLUSTERED 
(
	[proMemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecruitmentReply]    Script Date: 05/27/2015 17:09:06 ******/
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
/****** Object:  Table [dbo].[Timesheet]    Script Date: 05/27/2015 17:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Timesheet](
	[timeSheetID] [int] IDENTITY(1,1) NOT NULL,
	[writeDate] [date] NULL,
	[writerID] [int] NOT NULL,
	[reviewerID] [int] NULL,
	[projectID] [int] NOT NULL,
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
/****** Object:  Table [dbo].[WorkTracking]    Script Date: 05/27/2015 17:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkTracking](
	[workTrackingID] [int] NOT NULL,
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
/****** Object:  Table [dbo].[Comment]    Script Date: 05/27/2015 17:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[commentID] [int] NOT NULL,
	[knowID] [int] NULL,
	[comContent] [nvarchar](1000) NULL,
	[posterID] [int] NULL,
	[comDate] [datetime] NOT NULL,
	[lastEdit] [datetime] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[commentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Account_Role]    Script Date: 05/27/2015 17:09:06 ******/
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([roleID])
REFERENCES [dbo].[Role] ([roleID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
/****** Object:  ForeignKey [FK_Project_Account]    Script Date: 05/27/2015 17:09:06 ******/
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_Account] FOREIGN KEY([customerID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_Account]
GO
/****** Object:  ForeignKey [FK_Project_Account1]    Script Date: 05/27/2015 17:09:06 ******/
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_Account1] FOREIGN KEY([directorID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_Account1]
GO
/****** Object:  ForeignKey [FK_Recruitment_Account]    Script Date: 05/27/2015 17:09:06 ******/
ALTER TABLE [dbo].[Recruitment]  WITH CHECK ADD  CONSTRAINT [FK_Recruitment_Account] FOREIGN KEY([directorID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Recruitment] CHECK CONSTRAINT [FK_Recruitment_Account]
GO
/****** Object:  ForeignKey [FK_EvaluationResult_Account]    Script Date: 05/27/2015 17:09:06 ******/
ALTER TABLE [dbo].[EvaluationResult]  WITH CHECK ADD  CONSTRAINT [FK_EvaluationResult_Account] FOREIGN KEY([evaluatorID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[EvaluationResult] CHECK CONSTRAINT [FK_EvaluationResult_Account]
GO
/****** Object:  ForeignKey [FK_EvaluationResult_Account1]    Script Date: 05/27/2015 17:09:06 ******/
ALTER TABLE [dbo].[EvaluationResult]  WITH CHECK ADD  CONSTRAINT [FK_EvaluationResult_Account1] FOREIGN KEY([receiverID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[EvaluationResult] CHECK CONSTRAINT [FK_EvaluationResult_Account1]
GO
/****** Object:  ForeignKey [FK_EvaluationResult_PeriodEvaluation]    Script Date: 05/27/2015 17:09:06 ******/
ALTER TABLE [dbo].[EvaluationResult]  WITH CHECK ADD  CONSTRAINT [FK_EvaluationResult_PeriodEvaluation] FOREIGN KEY([evaID])
REFERENCES [dbo].[PeriodEvaluation] ([evaID])
GO
ALTER TABLE [dbo].[EvaluationResult] CHECK CONSTRAINT [FK_EvaluationResult_PeriodEvaluation]
GO
/****** Object:  ForeignKey [FK_EngineerSkill_Engineer]    Script Date: 05/27/2015 17:09:06 ******/
ALTER TABLE [dbo].[EngineerSkill]  WITH CHECK ADD  CONSTRAINT [FK_EngineerSkill_Engineer] FOREIGN KEY([engineerID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[EngineerSkill] CHECK CONSTRAINT [FK_EngineerSkill_Engineer]
GO
/****** Object:  ForeignKey [FK_EngineerSkill_Skill]    Script Date: 05/27/2015 17:09:06 ******/
ALTER TABLE [dbo].[EngineerSkill]  WITH CHECK ADD  CONSTRAINT [FK_EngineerSkill_Skill] FOREIGN KEY([skillID])
REFERENCES [dbo].[Skill] ([skillID])
GO
ALTER TABLE [dbo].[EngineerSkill] CHECK CONSTRAINT [FK_EngineerSkill_Skill]
GO
/****** Object:  ForeignKey [FK_Notification_Engineer]    Script Date: 05/27/2015 17:09:06 ******/
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_Engineer] FOREIGN KEY([receiverID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_Engineer]
GO
/****** Object:  ForeignKey [FK_Notification_Engineer1]    Script Date: 05/27/2015 17:09:06 ******/
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_Engineer1] FOREIGN KEY([senderID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_Engineer1]
GO
/****** Object:  ForeignKey [FK_Knowledge_Account]    Script Date: 05/27/2015 17:09:06 ******/
ALTER TABLE [dbo].[Knowledge]  WITH CHECK ADD  CONSTRAINT [FK_Knowledge_Account] FOREIGN KEY([posterID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Knowledge] CHECK CONSTRAINT [FK_Knowledge_Account]
GO
/****** Object:  ForeignKey [FK_Knowledge_Project]    Script Date: 05/27/2015 17:09:06 ******/
ALTER TABLE [dbo].[Knowledge]  WITH CHECK ADD  CONSTRAINT [FK_Knowledge_Project] FOREIGN KEY([projectID])
REFERENCES [dbo].[Project] ([projectID])
GO
ALTER TABLE [dbo].[Knowledge] CHECK CONSTRAINT [FK_Knowledge_Project]
GO
/****** Object:  ForeignKey [FK_ProjectSkill_Project]    Script Date: 05/27/2015 17:09:06 ******/
ALTER TABLE [dbo].[ProjectSkill]  WITH CHECK ADD  CONSTRAINT [FK_ProjectSkill_Project] FOREIGN KEY([projectID])
REFERENCES [dbo].[Project] ([projectID])
GO
ALTER TABLE [dbo].[ProjectSkill] CHECK CONSTRAINT [FK_ProjectSkill_Project]
GO
/****** Object:  ForeignKey [FK_ProjectSkill_Skill]    Script Date: 05/27/2015 17:09:06 ******/
ALTER TABLE [dbo].[ProjectSkill]  WITH CHECK ADD  CONSTRAINT [FK_ProjectSkill_Skill] FOREIGN KEY([skillID])
REFERENCES [dbo].[Skill] ([skillID])
GO
ALTER TABLE [dbo].[ProjectSkill] CHECK CONSTRAINT [FK_ProjectSkill_Skill]
GO
/****** Object:  ForeignKey [FK_ProjectMember_Account]    Script Date: 05/27/2015 17:09:06 ******/
ALTER TABLE [dbo].[ProjectMember]  WITH CHECK ADD  CONSTRAINT [FK_ProjectMember_Account] FOREIGN KEY([employeeID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[ProjectMember] CHECK CONSTRAINT [FK_ProjectMember_Account]
GO
/****** Object:  ForeignKey [FK_ProjectMember_Account1]    Script Date: 05/27/2015 17:09:06 ******/
ALTER TABLE [dbo].[ProjectMember]  WITH CHECK ADD  CONSTRAINT [FK_ProjectMember_Account1] FOREIGN KEY([evaluatorID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[ProjectMember] CHECK CONSTRAINT [FK_ProjectMember_Account1]
GO
/****** Object:  ForeignKey [FK_ProjectMember_Project]    Script Date: 05/27/2015 17:09:06 ******/
ALTER TABLE [dbo].[ProjectMember]  WITH CHECK ADD  CONSTRAINT [FK_ProjectMember_Project] FOREIGN KEY([projectID])
REFERENCES [dbo].[Project] ([projectID])
GO
ALTER TABLE [dbo].[ProjectMember] CHECK CONSTRAINT [FK_ProjectMember_Project]
GO
/****** Object:  ForeignKey [FK_RecruitmentReply_Account]    Script Date: 05/27/2015 17:09:06 ******/
ALTER TABLE [dbo].[RecruitmentReply]  WITH CHECK ADD  CONSTRAINT [FK_RecruitmentReply_Account] FOREIGN KEY([posterID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[RecruitmentReply] CHECK CONSTRAINT [FK_RecruitmentReply_Account]
GO
/****** Object:  ForeignKey [FK_RecruitmentReply_Recruitment]    Script Date: 05/27/2015 17:09:06 ******/
ALTER TABLE [dbo].[RecruitmentReply]  WITH CHECK ADD  CONSTRAINT [FK_RecruitmentReply_Recruitment] FOREIGN KEY([recruitID])
REFERENCES [dbo].[Recruitment] ([recruitID])
GO
ALTER TABLE [dbo].[RecruitmentReply] CHECK CONSTRAINT [FK_RecruitmentReply_Recruitment]
GO
/****** Object:  ForeignKey [FK_Timesheet_Account]    Script Date: 05/27/2015 17:09:06 ******/
ALTER TABLE [dbo].[Timesheet]  WITH CHECK ADD  CONSTRAINT [FK_Timesheet_Account] FOREIGN KEY([writerID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Timesheet] CHECK CONSTRAINT [FK_Timesheet_Account]
GO
/****** Object:  ForeignKey [FK_Timesheet_Account1]    Script Date: 05/27/2015 17:09:06 ******/
ALTER TABLE [dbo].[Timesheet]  WITH CHECK ADD  CONSTRAINT [FK_Timesheet_Account1] FOREIGN KEY([reviewerID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Timesheet] CHECK CONSTRAINT [FK_Timesheet_Account1]
GO
/****** Object:  ForeignKey [FK_Timesheet_Project]    Script Date: 05/27/2015 17:09:06 ******/
ALTER TABLE [dbo].[Timesheet]  WITH CHECK ADD  CONSTRAINT [FK_Timesheet_Project] FOREIGN KEY([projectID])
REFERENCES [dbo].[Project] ([projectID])
GO
ALTER TABLE [dbo].[Timesheet] CHECK CONSTRAINT [FK_Timesheet_Project]
GO
/****** Object:  ForeignKey [FK_WorkTracking_Position]    Script Date: 05/27/2015 17:09:06 ******/
ALTER TABLE [dbo].[WorkTracking]  WITH CHECK ADD  CONSTRAINT [FK_WorkTracking_Position] FOREIGN KEY([positionID])
REFERENCES [dbo].[Position] ([positionID])
GO
ALTER TABLE [dbo].[WorkTracking] CHECK CONSTRAINT [FK_WorkTracking_Position]
GO
/****** Object:  ForeignKey [FK_WorkTracking_ProjectMember]    Script Date: 05/27/2015 17:09:06 ******/
ALTER TABLE [dbo].[WorkTracking]  WITH CHECK ADD  CONSTRAINT [FK_WorkTracking_ProjectMember] FOREIGN KEY([proMemID])
REFERENCES [dbo].[ProjectMember] ([proMemID])
GO
ALTER TABLE [dbo].[WorkTracking] CHECK CONSTRAINT [FK_WorkTracking_ProjectMember]
GO
/****** Object:  ForeignKey [FK_Comment_Engineer]    Script Date: 05/27/2015 17:09:06 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Engineer] FOREIGN KEY([posterID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Engineer]
GO
/****** Object:  ForeignKey [FK_Comment_Knowledge]    Script Date: 05/27/2015 17:09:06 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Knowledge] FOREIGN KEY([knowID])
REFERENCES [dbo].[Knowledge] ([knowID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Knowledge]
GO
