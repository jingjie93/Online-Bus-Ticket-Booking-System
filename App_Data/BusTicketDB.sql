/****** Object:  Table [dbo].[CusInfo]    Script Date: 04/27/2016 22:53:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CusInfo]') AND type in (N'U'))
DROP TABLE [dbo].[CusInfo]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 04/27/2016 22:53:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Staff]') AND type in (N'U'))
DROP TABLE [dbo].[Staff]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 04/27/2016 22:53:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Status]') AND type in (N'U'))
DROP TABLE [dbo].[Status]
GO
/****** Object:  Table [dbo].[Timelist]    Script Date: 04/27/2016 22:53:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Timelist]') AND type in (N'U'))
DROP TABLE [dbo].[Timelist]
GO
/****** Object:  Table [dbo].[Timelist]    Script Date: 04/27/2016 22:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Timelist]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Timelist](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Station] [nvarchar](50) COLLATE Latin1_General_CI_AI NOT NULL,
	[Price] [float] NOT NULL,
	[Time] [time](7) NOT NULL,
	[ReachTime] [time](7) NOT NULL,
	[BusNum] [nvarchar](10) COLLATE Latin1_General_CI_AI NOT NULL,
 CONSTRAINT [PK_Timelist] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Timelist] ON
INSERT [dbo].[Timelist] ([Id], [Station], [Price], [Time], [ReachTime], [BusNum]) VALUES (1, N'Johor', 20, CAST(0x070010ACD1530000 AS Time), CAST(0x0700B0BD58750000 AS Time), N'a1')
INSERT [dbo].[Timelist] ([Id], [Station], [Price], [Time], [ReachTime], [BusNum]) VALUES (2, N'Johor', 20, CAST(0x070050CFDF960000 AS Time), CAST(0x0700F0E066B80000 AS Time), N'a2')
INSERT [dbo].[Timelist] ([Id], [Station], [Price], [Time], [ReachTime], [BusNum]) VALUES (3, N'Kedah', 30, CAST(0x070010ACD1530000 AS Time), CAST(0x07001882BA7D0000 AS Time), N'b1')
INSERT [dbo].[Timelist] ([Id], [Station], [Price], [Time], [ReachTime], [BusNum]) VALUES (4, N'Perak', 35, CAST(0x070010ACD1530000 AS Time), CAST(0x070080461C860000 AS Time), N'c1')
INSERT [dbo].[Timelist] ([Id], [Station], [Price], [Time], [ReachTime], [BusNum]) VALUES (5, N'Terrengganu', 30, CAST(0x070010ACD1530000 AS Time), CAST(0x0700B0BD58750000 AS Time), N'd1')
SET IDENTITY_INSERT [dbo].[Timelist] OFF
/****** Object:  Table [dbo].[Status]    Script Date: 04/27/2016 22:53:58 ******/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Status]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[Time] [time](7) NOT NULL,
	[Departure] [nvarchar](50) COLLATE Latin1_General_CI_AI NOT NULL,
	[Arrived] [nvarchar](50) COLLATE Latin1_General_CI_AI NOT NULL,
	[s1] [int] NOT NULL,
	[s2] [int] NOT NULL,
	[s3] [int] NOT NULL,
	[s4] [int] NOT NULL,
	[s5] [int] NOT NULL,
	[s6] [int] NOT NULL,
	[s7] [int] NOT NULL,
	[s8] [int] NOT NULL,
	[s9] [int] NOT NULL,
	[s10] [int] NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 04/27/2016 22:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Staff]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Staff](
	[StaffId] [nvarchar](8) COLLATE Latin1_General_CI_AI NOT NULL,
	[StaffName] [nvarchar](100) COLLATE Latin1_General_CI_AI NOT NULL,
	[PhoneNum] [nvarchar](20) COLLATE Latin1_General_CI_AI NOT NULL,
	[Email] [nvarchar](50) COLLATE Latin1_General_CI_AI NOT NULL,
	[Password] [nvarchar](20) COLLATE Latin1_General_CI_AI NOT NULL,
	[Question] [nvarchar](50) COLLATE Latin1_General_CI_AI NOT NULL,
	[Answer] [nvarchar](50) COLLATE Latin1_General_CI_AI NOT NULL
)
END
GO
INSERT [dbo].[Staff] ([StaffId], [StaffName], [PhoneNum], [Email], [Password], [Question], [Answer]) VALUES (N'SS000001', N'Admin', N'012-123456789', N'admin@email.com', N'admin', N'Who I am?', N'Admin')
/****** Object:  Table [dbo].[CusInfo]    Script Date: 04/27/2016 22:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CusInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CusInfo](
	[CusId] [nvarchar](8) COLLATE Latin1_General_CI_AI NOT NULL,
	[CusName] [nvarchar](100) COLLATE Latin1_General_CI_AI NOT NULL,
	[CusHpNo] [nvarchar](14) COLLATE Latin1_General_CI_AI NOT NULL,
	[Depart] [nvarchar](20) COLLATE Latin1_General_CI_AI NOT NULL,
	[Arrived] [nvarchar](20) COLLATE Latin1_General_CI_AI NOT NULL,
	[TotalSeat] [int] NOT NULL,
	[SeatNum] [nvarchar](30) COLLATE Latin1_General_CI_AI NOT NULL,
	[Amount] [float] NOT NULL,
	[StaffName] [nvarchar](50) COLLATE Latin1_General_CI_AI NOT NULL,
	[Status] [nvarchar](30) COLLATE Latin1_General_CI_AI NOT NULL,
 CONSTRAINT [PK_CusInfo] PRIMARY KEY CLUSTERED 
(
	[CusId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
