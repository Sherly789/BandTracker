USE [band_tracker]
GO
/****** Object:  Table [dbo].[bands]    Script Date: 8/7/2016 11:07:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bands](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[venues]    Script Date: 8/7/2016 11:07:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[venues](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[venues_bands]    Script Date: 8/7/2016 11:07:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venues_bands](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[venue_id] [int] NULL,
	[band_id] [int] NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[bands] ON 

INSERT [dbo].[bands] ([id], [name]) VALUES (3, N'jazz')
SET IDENTITY_INSERT [dbo].[bands] OFF
SET IDENTITY_INSERT [dbo].[venues] ON 

INSERT [dbo].[venues] ([id], [name]) VALUES (3, N'stage2')
INSERT [dbo].[venues] ([id], [name]) VALUES (4, N'stage3')
SET IDENTITY_INSERT [dbo].[venues] OFF
SET IDENTITY_INSERT [dbo].[venues_bands] ON 

INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (11, 3, 3)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (2, 2, 2)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (3, 2, 1)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (12, 4, 3)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (9, 2, 1)
SET IDENTITY_INSERT [dbo].[venues_bands] OFF
