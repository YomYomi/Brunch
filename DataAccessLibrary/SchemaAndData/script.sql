USE [Brunch]
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 01/02/2022 20:17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [nvarchar](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Menues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Menus] ON
INSERT [dbo].[Menus] ([Id], [MenuName], [CreateDate], [UpdateDate], [IsActive]) VALUES (1, N'תפריט כללי', CAST(0x0000AE0E0161F181 AS DateTime), CAST(0x0000AE0E0161F181 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Menus] OFF
/****** Object:  Table [dbo].[MenuEvent]    Script Date: 01/02/2022 20:17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuEvent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuId] [int] NOT NULL,
	[EventId] [int] NOT NULL,
 CONSTRAINT [PK_MenuEvent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MenuEvent] ON
INSERT [dbo].[MenuEvent] ([Id], [MenuId], [EventId]) VALUES (2, 1, 1)
SET IDENTITY_INSERT [dbo].[MenuEvent] OFF
/****** Object:  Table [dbo].[Members]    Script Date: 01/02/2022 20:17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](30) NOT NULL,
	[LastName] [nvarchar](30) NOT NULL,
	[CellularPref] [nvarchar](3) NULL,
	[CellularNo] [nvarchar](8) NULL,
	[EmailAddress] [nvarchar](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_Members] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Members] ON
INSERT [dbo].[Members] ([Id], [FirstName], [LastName], [CellularPref], [CellularNo], [EmailAddress], [CreateDate], [UpdateDate], [isActive]) VALUES (1, N'Arik', N'Margi', N'050', N'7270072', N'arikma@iaa.gov.il', CAST(0x0000AE0D011EB735 AS DateTime), CAST(0x0000AE0D011EB735 AS DateTime), 1)
INSERT [dbo].[Members] ([Id], [FirstName], [LastName], [CellularPref], [CellularNo], [EmailAddress], [CreateDate], [UpdateDate], [isActive]) VALUES (2, N'Hanan', N'Mizrahi', N'050', N'7455268', N'aaa@aa.com', CAST(0x0000AE0D011F754E AS DateTime), CAST(0x0000AE0D011F754E AS DateTime), 1)
INSERT [dbo].[Members] ([Id], [FirstName], [LastName], [CellularPref], [CellularNo], [EmailAddress], [CreateDate], [UpdateDate], [isActive]) VALUES (3, N'Test1', N'Test2', N'050', N'7270072', N'arik27@gmail.com', CAST(0x0000AE0D00000000 AS DateTime), CAST(0x0000AE0D00000000 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Members] OFF
/****** Object:  Table [dbo].[MemberDishEvent]    Script Date: 01/02/2022 20:17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberDishEvent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NOT NULL,
	[DishId] [int] NOT NULL,
	[EventId] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_MemberDishEvent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MemberDishEvent] ON
INSERT [dbo].[MemberDishEvent] ([Id], [MemberId], [DishId], [EventId], [CreateDate], [UpdateDate], [IsActive]) VALUES (1, 1, 2, 1, CAST(0x0000AE0F00277C1D AS DateTime), CAST(0x0000AE0F00277C1D AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[MemberDishEvent] OFF
/****** Object:  Table [dbo].[Events]    Script Date: 01/02/2022 20:17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EventTitle] [nvarchar](50) NOT NULL,
	[EventDescription] [nvarchar](500) NOT NULL,
	[EventDate] [date] NOT NULL,
	[EventTime] [time](0) NOT NULL,
	[EventDateTime] [datetime] NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Events] ON
INSERT [dbo].[Events] ([Id], [EventTitle], [EventDescription], [EventDate], [EventTime], [EventDateTime], [CreateDate], [UpdateDate], [IsActive]) VALUES (1, N'מסיבת פורים', N'כולם מוזמנים למסיבת פורים של התחום רצוי להגיע מחופשים!', CAST(0x69430B00 AS Date), CAST(0x00300B0100000000 AS Time), CAST(0x0000AE0600C15C00 AS DateTime), CAST(0x0000AE0E00F659F4 AS DateTime), CAST(0x0000AE0E00F659F4 AS DateTime), 1)
INSERT [dbo].[Events] ([Id], [EventTitle], [EventDescription], [EventDate], [EventTime], [EventDateTime], [CreateDate], [UpdateDate], [IsActive]) VALUES (5, N'בדיקה 123123', N'תיאור בשדגשדג 
דגכדגכ
דגכעדגכע43564564', CAST(0x69430B00 AS Date), CAST(0x0088DB0000000000 AS Time), CAST(0x0000AE0E00921E40 AS DateTime), CAST(0x0000AE0E0101581C AS DateTime), CAST(0x0000AE0E0101581C AS DateTime), 1)
INSERT [dbo].[Events] ([Id], [EventTitle], [EventDescription], [EventDate], [EventTime], [EventDateTime], [CreateDate], [UpdateDate], [IsActive]) VALUES (6, N'הוספת אירוע 32', N'תיאור האירוע 
דדגכדג
דגכדגכ 
כגעיכעכעיכ', CAST(0x69430B00 AS Date), CAST(0x00B7DF0000000000 AS Time), CAST(0x0000AE0E01057980 AS DateTime), CAST(0x0000AE0E0104F2FF AS DateTime), CAST(0x0000AE0E0104F2FF AS DateTime), 1)
INSERT [dbo].[Events] ([Id], [EventTitle], [EventDescription], [EventDate], [EventTime], [EventDateTime], [CreateDate], [UpdateDate], [IsActive]) VALUES (7, N'אירוע חדש !!', N'תיאור האירוע SDכדגכ
דגכדגכ גדכעגדכעד 
גכעגכעגכע', CAST(0x69430B00 AS Date), CAST(0x0000000000000000 AS Time), CAST(0x0000AE0E010A5CF6 AS DateTime), CAST(0x0000AE0E010A749C AS DateTime), CAST(0x0000AE0E010A749C AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Events] OFF
/****** Object:  Table [dbo].[DishAttributeList]    Script Date: 01/02/2022 20:17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DishAttributeList](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DishAttributeList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DishAttributeList] ON
INSERT [dbo].[DishAttributeList] ([Id], [Name]) VALUES (1, N'חלבי')
INSERT [dbo].[DishAttributeList] ([Id], [Name]) VALUES (2, N'בשרי')
INSERT [dbo].[DishAttributeList] ([Id], [Name]) VALUES (3, N'פרווה')
INSERT [dbo].[DishAttributeList] ([Id], [Name]) VALUES (4, N'צמחוני')
INSERT [dbo].[DishAttributeList] ([Id], [Name]) VALUES (5, N'ללא גלוטן')
INSERT [dbo].[DishAttributeList] ([Id], [Name]) VALUES (6, N'ללא סוכר')
SET IDENTITY_INSERT [dbo].[DishAttributeList] OFF
/****** Object:  Table [dbo].[Dishes]    Script Date: 01/02/2022 20:17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dishes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DishName] [nvarchar](30) NOT NULL,
	[DishDescription] [nvarchar](200) NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[MenuID] [int] NULL,
 CONSTRAINT [PK_Dishes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Dishes] ON
INSERT [dbo].[Dishes] ([Id], [DishName], [DishDescription], [CreateDate], [UpdateDate], [IsActive], [MenuID]) VALUES (1, N'תפוחי אדמה בתנור', N'תפוח אדמה אפויים', CAST(0x0000AE0E0161DAAD AS DateTime), CAST(0x0000AE0E0161DAAD AS DateTime), 1, 1)
INSERT [dbo].[Dishes] ([Id], [DishName], [DishDescription], [CreateDate], [UpdateDate], [IsActive], [MenuID]) VALUES (2, N'שתיה קלה', N'2 קולה 2 תפוזים', CAST(0x0000AE0E0162229A AS DateTime), CAST(0x0000AE0E0162229A AS DateTime), 1, 1)
INSERT [dbo].[Dishes] ([Id], [DishName], [DishDescription], [CreateDate], [UpdateDate], [IsActive], [MenuID]) VALUES (3, N'פיצוחים', N'שקדים אגוזים גרעיני אבטיח', CAST(0x0000AE0E01626929 AS DateTime), CAST(0x0000AE0E01626929 AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[Dishes] OFF
/****** Object:  Table [dbo].[DishAttributes]    Script Date: 01/02/2022 20:17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DishAttributes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DishAttributeId] [int] NOT NULL,
	[DishId] [int] NOT NULL,
 CONSTRAINT [PK_DishAttributes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventMemberAttendance]    Script Date: 01/02/2022 20:17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventMemberAttendance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[EventID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_EventMemberAttendance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EventMemberAttendance] ON
INSERT [dbo].[EventMemberAttendance] ([Id], [MemberID], [EventID], [IsActive]) VALUES (1, 1, 1, 1)
INSERT [dbo].[EventMemberAttendance] ([Id], [MemberID], [EventID], [IsActive]) VALUES (2, 2, 1, 1)
INSERT [dbo].[EventMemberAttendance] ([Id], [MemberID], [EventID], [IsActive]) VALUES (3, 3, 1, 1)
SET IDENTITY_INSERT [dbo].[EventMemberAttendance] OFF
/****** Object:  Default [DF_Dishes_CreateDate]    Script Date: 01/02/2022 20:17:37 ******/
ALTER TABLE [dbo].[Dishes] ADD  CONSTRAINT [DF_Dishes_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_Dishes_UpdateDate]    Script Date: 01/02/2022 20:17:37 ******/
ALTER TABLE [dbo].[Dishes] ADD  CONSTRAINT [DF_Dishes_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_Dishes_IsActive]    Script Date: 01/02/2022 20:17:37 ******/
ALTER TABLE [dbo].[Dishes] ADD  CONSTRAINT [DF_Dishes_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_EventMemberAttendance_IsActive]    Script Date: 01/02/2022 20:17:37 ******/
ALTER TABLE [dbo].[EventMemberAttendance] ADD  CONSTRAINT [DF_EventMemberAttendance_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_Events_CreateDate]    Script Date: 01/02/2022 20:17:37 ******/
ALTER TABLE [dbo].[Events] ADD  CONSTRAINT [DF_Events_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_Events_UpdateDate]    Script Date: 01/02/2022 20:17:37 ******/
ALTER TABLE [dbo].[Events] ADD  CONSTRAINT [DF_Events_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_Events_IsActive]    Script Date: 01/02/2022 20:17:37 ******/
ALTER TABLE [dbo].[Events] ADD  CONSTRAINT [DF_Events_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_MemberDishEvent_CreateDate]    Script Date: 01/02/2022 20:17:37 ******/
ALTER TABLE [dbo].[MemberDishEvent] ADD  CONSTRAINT [DF_MemberDishEvent_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_MemberDishEvent_UpdateDate]    Script Date: 01/02/2022 20:17:37 ******/
ALTER TABLE [dbo].[MemberDishEvent] ADD  CONSTRAINT [DF_MemberDishEvent_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_MemberDishEvent_IsActive]    Script Date: 01/02/2022 20:17:37 ******/
ALTER TABLE [dbo].[MemberDishEvent] ADD  CONSTRAINT [DF_MemberDishEvent_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_Members_CreateDate]    Script Date: 01/02/2022 20:17:37 ******/
ALTER TABLE [dbo].[Members] ADD  CONSTRAINT [DF_Members_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_Members_UpdateDate]    Script Date: 01/02/2022 20:17:37 ******/
ALTER TABLE [dbo].[Members] ADD  CONSTRAINT [DF_Members_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_Members_isActive]    Script Date: 01/02/2022 20:17:37 ******/
ALTER TABLE [dbo].[Members] ADD  CONSTRAINT [DF_Members_isActive]  DEFAULT ((1)) FOR [isActive]
GO
/****** Object:  Default [DF_Menues_CreateDate]    Script Date: 01/02/2022 20:17:37 ******/
ALTER TABLE [dbo].[Menus] ADD  CONSTRAINT [DF_Menues_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_Menues_UpdateDate]    Script Date: 01/02/2022 20:17:37 ******/
ALTER TABLE [dbo].[Menus] ADD  CONSTRAINT [DF_Menues_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_Menues_IsActive]    Script Date: 01/02/2022 20:17:37 ******/
ALTER TABLE [dbo].[Menus] ADD  CONSTRAINT [DF_Menues_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  ForeignKey [FK_DishAttributes_Dishes]    Script Date: 01/02/2022 20:17:37 ******/
ALTER TABLE [dbo].[DishAttributes]  WITH CHECK ADD  CONSTRAINT [FK_DishAttributes_Dishes] FOREIGN KEY([DishId])
REFERENCES [dbo].[Dishes] ([Id])
GO
ALTER TABLE [dbo].[DishAttributes] CHECK CONSTRAINT [FK_DishAttributes_Dishes]
GO
/****** Object:  ForeignKey [FK_EventMemberAttendance_Events]    Script Date: 01/02/2022 20:17:37 ******/
ALTER TABLE [dbo].[EventMemberAttendance]  WITH CHECK ADD  CONSTRAINT [FK_EventMemberAttendance_Events] FOREIGN KEY([EventID])
REFERENCES [dbo].[Events] ([Id])
GO
ALTER TABLE [dbo].[EventMemberAttendance] CHECK CONSTRAINT [FK_EventMemberAttendance_Events]
GO
/****** Object:  ForeignKey [FK_EventMemberAttendance_Members]    Script Date: 01/02/2022 20:17:37 ******/
ALTER TABLE [dbo].[EventMemberAttendance]  WITH CHECK ADD  CONSTRAINT [FK_EventMemberAttendance_Members] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Members] ([Id])
GO
ALTER TABLE [dbo].[EventMemberAttendance] CHECK CONSTRAINT [FK_EventMemberAttendance_Members]
GO
