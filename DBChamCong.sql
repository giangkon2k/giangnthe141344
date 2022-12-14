USE [TestChamCong]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 19/08/2022 12:00:10 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[eid] [int] IDENTITY(1,1) NOT NULL,
	[rid] [int] NOT NULL,
	[ename] [nvarchar](150) NOT NULL,
	[phone] [varchar](150) NULL,
	[bday] [date] NULL,
	[email] [varchar](150) NULL,
	[adress] [varchar](150) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[eid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 19/08/2022 12:00:10 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[rid] [int] IDENTITY(1,1) NOT NULL,
	[sid] [int] NOT NULL,
	[rname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salary]    Script Date: 19/08/2022 12:00:10 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salary](
	[sid] [int] IDENTITY(1,1) NOT NULL,
	[kind] [varchar](150) NOT NULL,
	[wage] [money] NOT NULL,
 CONSTRAINT [PK_Salary] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shift]    Script Date: 19/08/2022 12:00:10 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shift](
	[shid] [int] IDENTITY(1,1) NOT NULL,
	[in] [time](7) NOT NULL,
	[out] [time](7) NOT NULL,
	[name] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Shift] PRIMARY KEY CLUSTERED 
(
	[shid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSheet]    Script Date: 19/08/2022 12:00:10 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSheet](
	[tid] [int] IDENTITY(1,1) NOT NULL,
	[day] [date] NOT NULL,
	[tdid] [int] NULL,
	[shid] [int] NOT NULL,
 CONSTRAINT [PK_TimeSheet] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSheet_Employee]    Script Date: 19/08/2022 12:00:10 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSheet_Employee](
	[eid] [int] NOT NULL,
	[tid] [int] NOT NULL,
 CONSTRAINT [PK_TimeSheet_Employee] PRIMARY KEY CLUSTERED 
(
	[eid] ASC,
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfDay]    Script Date: 19/08/2022 12:00:10 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfDay](
	[tdid] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](150) NOT NULL,
 CONSTRAINT [PK_TypeOfDay] PRIMARY KEY CLUSTERED 
(
	[tdid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Roles] FOREIGN KEY([rid])
REFERENCES [dbo].[Roles] ([rid])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Roles]
GO
ALTER TABLE [dbo].[Roles]  WITH CHECK ADD  CONSTRAINT [FK_Roles_Salary] FOREIGN KEY([sid])
REFERENCES [dbo].[Salary] ([sid])
GO
ALTER TABLE [dbo].[Roles] CHECK CONSTRAINT [FK_Roles_Salary]
GO
ALTER TABLE [dbo].[TimeSheet]  WITH CHECK ADD  CONSTRAINT [FK_TimeSheet_Shift] FOREIGN KEY([shid])
REFERENCES [dbo].[Shift] ([shid])
GO
ALTER TABLE [dbo].[TimeSheet] CHECK CONSTRAINT [FK_TimeSheet_Shift]
GO
ALTER TABLE [dbo].[TimeSheet]  WITH CHECK ADD  CONSTRAINT [FK_TimeSheet_TypeOfDay] FOREIGN KEY([tdid])
REFERENCES [dbo].[TypeOfDay] ([tdid])
GO
ALTER TABLE [dbo].[TimeSheet] CHECK CONSTRAINT [FK_TimeSheet_TypeOfDay]
GO
ALTER TABLE [dbo].[TimeSheet_Employee]  WITH CHECK ADD  CONSTRAINT [FK_TimeSheet_Employee_Employee] FOREIGN KEY([eid])
REFERENCES [dbo].[Employee] ([eid])
GO
ALTER TABLE [dbo].[TimeSheet_Employee] CHECK CONSTRAINT [FK_TimeSheet_Employee_Employee]
GO
ALTER TABLE [dbo].[TimeSheet_Employee]  WITH CHECK ADD  CONSTRAINT [FK_TimeSheet_Employee_TimeSheet] FOREIGN KEY([tid])
REFERENCES [dbo].[TimeSheet] ([tid])
GO
ALTER TABLE [dbo].[TimeSheet_Employee] CHECK CONSTRAINT [FK_TimeSheet_Employee_TimeSheet]
GO
