USE [Oursourcing_HRM]
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 05/25/2015 17:41:42 ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 05/25/2015 17:41:42 ******/
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
/****** Object:  Table [dbo].[Criterion]    Script Date: 05/25/2015 17:41:42 ******/
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
/****** Object:  Table [dbo].[Position]    Script Date: 05/25/2015 17:41:42 ******/
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
/****** Object:  Table [dbo].[Account]    Script Date: 05/25/2015 17:41:42 ******/
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
/****** Object:  Table [dbo].[Project]    Script Date: 05/25/2015 17:41:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[projectID] [int] IDENTITY(1,1) NOT NULL,
	[projectCode] [nchar](10) NOT NULL,
	[projectName] [nvarchar](50) NOT NULL,
	[managerID] [nvarchar](15) NOT NULL,
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
/****** Object:  Table [dbo].[Notification]    Script Date: 05/25/2015 17:41:42 ******/
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
/****** Object:  Table [dbo].[Knowledge]    Script Date: 05/25/2015 17:41:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Knowledge](
	[knowID] [int] IDENTITY(1,1) NOT NULL,
	[topic] [nvarchar](50) NULL,
	[projectID] [int] NULL,
	[engineerID] [int] NULL,
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
/****** Object:  Table [dbo].[Evaluation]    Script Date: 05/25/2015 17:41:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evaluation](
	[evaID] [int] IDENTITY(1,1) NOT NULL,
	[engineerID] [int] NOT NULL,
	[managerID] [int] NOT NULL,
	[evaContent] [nvarchar](200) NOT NULL,
	[evaDate] [date] NOT NULL,
	[point] [float] NULL,
	[projectCode] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Evaluation] PRIMARY KEY CLUSTERED 
(
	[evaID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EngineerSkill]    Script Date: 05/25/2015 17:41:42 ******/
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
/****** Object:  Table [dbo].[Timesheet]    Script Date: 05/25/2015 17:41:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Timesheet](
	[timeSheetID] [int] IDENTITY(1,1) NOT NULL,
	[writeDate] [date] NULL,
	[engineerID] [int] NULL,
	[time] [float] NULL,
	[description] [nvarchar](500) NULL,
	[projectID] [int] NULL,
	[isApprove] [bit] NULL,
 CONSTRAINT [PK_Timesheet] PRIMARY KEY CLUSTERED 
(
	[timeSheetID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recruitment]    Script Date: 05/25/2015 17:41:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recruitment](
	[recruitID] [int] IDENTITY(1,1) NOT NULL,
	[projectID] [int] NOT NULL,
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
/****** Object:  Table [dbo].[ProjectMember]    Script Date: 05/25/2015 17:41:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectMember](
	[projectID] [int] NOT NULL,
	[engineerID] [int] NOT NULL,
	[positionID] [int] NOT NULL,
	[assignDate] [date] NULL,
	[isPartTime] [bit] NULL,
	[isApprove] [bit] NULL,
	[removeDate] [date] NULL,
	[evaContent] [nvarchar](200) NULL,
	[evaDate] [date] NULL,
	[point] [float] NULL,
 CONSTRAINT [PK_ProjectMember] PRIMARY KEY CLUSTERED 
(
	[projectID] ASC,
	[engineerID] ASC,
	[positionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 05/25/2015 17:41:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[commentID] [int] NOT NULL,
	[knowID] [int] NULL,
	[comContent] [nvarchar](1000) NULL,
	[engineerID] [int] NULL,
	[comDate] [datetime] NOT NULL,
	[lastEdit] [datetime] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[commentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecruitmentReply]    Script Date: 05/25/2015 17:41:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecruitmentReply](
	[recruitRepID] [int] IDENTITY(1,1) NOT NULL,
	[recruitID] [int] NOT NULL,
	[hrID] [int] NOT NULL,
	[repContent] [nvarchar](500) NOT NULL,
	[repDate] [datetime] NOT NULL,
 CONSTRAINT [PK_RecruitmentReply] PRIMARY KEY CLUSTERED 
(
	[recruitRepID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Account_Role]    Script Date: 05/25/2015 17:41:42 ******/
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([roleID])
REFERENCES [dbo].[Role] ([roleID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
/****** Object:  ForeignKey [FK_Comment_Engineer]    Script Date: 05/25/2015 17:41:42 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Engineer] FOREIGN KEY([engineerID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Engineer]
GO
/****** Object:  ForeignKey [FK_Comment_Knowledge]    Script Date: 05/25/2015 17:41:42 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Knowledge] FOREIGN KEY([knowID])
REFERENCES [dbo].[Knowledge] ([knowID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Knowledge]
GO
/****** Object:  ForeignKey [FK_EngineerSkill_Engineer]    Script Date: 05/25/2015 17:41:42 ******/
ALTER TABLE [dbo].[EngineerSkill]  WITH CHECK ADD  CONSTRAINT [FK_EngineerSkill_Engineer] FOREIGN KEY([engineerID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[EngineerSkill] CHECK CONSTRAINT [FK_EngineerSkill_Engineer]
GO
/****** Object:  ForeignKey [FK_EngineerSkill_Skill]    Script Date: 05/25/2015 17:41:42 ******/
ALTER TABLE [dbo].[EngineerSkill]  WITH CHECK ADD  CONSTRAINT [FK_EngineerSkill_Skill] FOREIGN KEY([skillID])
REFERENCES [dbo].[Skill] ([skillID])
GO
ALTER TABLE [dbo].[EngineerSkill] CHECK CONSTRAINT [FK_EngineerSkill_Skill]
GO
/****** Object:  ForeignKey [FK_Evaluation_Account]    Script Date: 05/25/2015 17:41:42 ******/
ALTER TABLE [dbo].[Evaluation]  WITH CHECK ADD  CONSTRAINT [FK_Evaluation_Account] FOREIGN KEY([engineerID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Evaluation] CHECK CONSTRAINT [FK_Evaluation_Account]
GO
/****** Object:  ForeignKey [FK_Evaluation_Account1]    Script Date: 05/25/2015 17:41:42 ******/
ALTER TABLE [dbo].[Evaluation]  WITH CHECK ADD  CONSTRAINT [FK_Evaluation_Account1] FOREIGN KEY([managerID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Evaluation] CHECK CONSTRAINT [FK_Evaluation_Account1]
GO
/****** Object:  ForeignKey [FK_Knowledge_Account]    Script Date: 05/25/2015 17:41:42 ******/
ALTER TABLE [dbo].[Knowledge]  WITH CHECK ADD  CONSTRAINT [FK_Knowledge_Account] FOREIGN KEY([engineerID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Knowledge] CHECK CONSTRAINT [FK_Knowledge_Account]
GO
/****** Object:  ForeignKey [FK_Notification_Engineer]    Script Date: 05/25/2015 17:41:42 ******/
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_Engineer] FOREIGN KEY([receiverID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_Engineer]
GO
/****** Object:  ForeignKey [FK_Notification_Engineer1]    Script Date: 05/25/2015 17:41:42 ******/
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_Engineer1] FOREIGN KEY([senderID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_Engineer1]
GO
/****** Object:  ForeignKey [FK_Project_Account]    Script Date: 05/25/2015 17:41:42 ******/
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_Account] FOREIGN KEY([customerID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_Account]
GO
/****** Object:  ForeignKey [FK_Project_Account1]    Script Date: 05/25/2015 17:41:42 ******/
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_Account1] FOREIGN KEY([directorID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_Account1]
GO
/****** Object:  ForeignKey [FK_Project_Account2]    Script Date: 05/25/2015 17:41:42 ******/
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_Account2] FOREIGN KEY([customerID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_Account2]
GO
/****** Object:  ForeignKey [FK_Project_Skill]    Script Date: 05/25/2015 17:41:42 ******/
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_Skill] FOREIGN KEY([projectSkillID])
REFERENCES [dbo].[Skill] ([skillID])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_Skill]
GO
/****** Object:  ForeignKey [FK_ProjectMember_Engineer]    Script Date: 05/25/2015 17:41:42 ******/
ALTER TABLE [dbo].[ProjectMember]  WITH CHECK ADD  CONSTRAINT [FK_ProjectMember_Engineer] FOREIGN KEY([engineerID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[ProjectMember] CHECK CONSTRAINT [FK_ProjectMember_Engineer]
GO
/****** Object:  ForeignKey [FK_ProjectMember_Position]    Script Date: 05/25/2015 17:41:42 ******/
ALTER TABLE [dbo].[ProjectMember]  WITH CHECK ADD  CONSTRAINT [FK_ProjectMember_Position] FOREIGN KEY([positionID])
REFERENCES [dbo].[Position] ([positionID])
GO
ALTER TABLE [dbo].[ProjectMember] CHECK CONSTRAINT [FK_ProjectMember_Position]
GO
/****** Object:  ForeignKey [FK_ProjectMember_Project]    Script Date: 05/25/2015 17:41:42 ******/
ALTER TABLE [dbo].[ProjectMember]  WITH CHECK ADD  CONSTRAINT [FK_ProjectMember_Project] FOREIGN KEY([projectID])
REFERENCES [dbo].[Project] ([projectID])
GO
ALTER TABLE [dbo].[ProjectMember] CHECK CONSTRAINT [FK_ProjectMember_Project]
GO
/****** Object:  ForeignKey [FK_Recruitment_Project]    Script Date: 05/25/2015 17:41:42 ******/
ALTER TABLE [dbo].[Recruitment]  WITH CHECK ADD  CONSTRAINT [FK_Recruitment_Project] FOREIGN KEY([projectID])
REFERENCES [dbo].[Project] ([projectID])
GO
ALTER TABLE [dbo].[Recruitment] CHECK CONSTRAINT [FK_Recruitment_Project]
GO
/****** Object:  ForeignKey [FK_RecruitmentReply_Account]    Script Date: 05/25/2015 17:41:42 ******/
ALTER TABLE [dbo].[RecruitmentReply]  WITH CHECK ADD  CONSTRAINT [FK_RecruitmentReply_Account] FOREIGN KEY([hrID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[RecruitmentReply] CHECK CONSTRAINT [FK_RecruitmentReply_Account]
GO
/****** Object:  ForeignKey [FK_RecruitmentReply_Recruitment]    Script Date: 05/25/2015 17:41:42 ******/
ALTER TABLE [dbo].[RecruitmentReply]  WITH CHECK ADD  CONSTRAINT [FK_RecruitmentReply_Recruitment] FOREIGN KEY([recruitID])
REFERENCES [dbo].[Recruitment] ([recruitID])
GO
ALTER TABLE [dbo].[RecruitmentReply] CHECK CONSTRAINT [FK_RecruitmentReply_Recruitment]
GO
/****** Object:  ForeignKey [FK_Timesheet_Account]    Script Date: 05/25/2015 17:41:42 ******/
ALTER TABLE [dbo].[Timesheet]  WITH CHECK ADD  CONSTRAINT [FK_Timesheet_Account] FOREIGN KEY([engineerID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Timesheet] CHECK CONSTRAINT [FK_Timesheet_Account]
GO
/****** Object:  ForeignKey [FK_Timesheet_Project]    Script Date: 05/25/2015 17:41:42 ******/
ALTER TABLE [dbo].[Timesheet]  WITH CHECK ADD  CONSTRAINT [FK_Timesheet_Project] FOREIGN KEY([projectID])
REFERENCES [dbo].[Project] ([projectID])
GO
ALTER TABLE [dbo].[Timesheet] CHECK CONSTRAINT [FK_Timesheet_Project]
GO
