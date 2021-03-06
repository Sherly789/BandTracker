USE [band_tracker_test]
GO
/****** Object:  Table [dbo].[bands]    Script Date: 8/7/2016 11:08:26 PM ******/
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
/****** Object:  Table [dbo].[venues]    Script Date: 8/7/2016 11:08:26 PM ******/
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
/****** Object:  Table [dbo].[venues_bands]    Script Date: 8/7/2016 11:08:26 PM ******/
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
SET IDENTITY_INSERT [dbo].[venues_bands] ON 

INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (1, 74, 13)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (2, 74, 14)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (3, 80, 21)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (4, 80, 22)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (5, 86, 26)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (6, 86, 27)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (7, 97, 34)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (8, 97, 35)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (9, 103, 39)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (10, 103, 40)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (11, 109, 41)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (12, 109, 42)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (13, 112, 46)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (14, 112, 47)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (15, 118, 51)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (16, 118, 52)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (17, 124, 56)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (18, 124, 57)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (19, 130, 64)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (20, 130, 65)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (21, 136, 69)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (22, 136, 70)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (23, 142, 71)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (24, 142, 72)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (25, 148, 79)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (26, 148, 80)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (27, 154, 84)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (28, 154, 85)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (29, 160, 89)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (30, 160, 90)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (31, 166, 91)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (32, 166, 92)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (33, 172, 96)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (34, 172, 97)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (35, 178, 104)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (36, 178, 105)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (37, 184, 109)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (38, 184, 110)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (39, 190, 111)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (40, 190, 112)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (41, 196, 116)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (42, 196, 117)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (43, 202, 124)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (44, 202, 125)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (45, 208, 129)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (46, 208, 130)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (47, 214, 131)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (48, 214, 132)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (49, 220, 139)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (50, 220, 140)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (51, 226, 141)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (52, 226, 142)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (53, 227, 143)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (54, 233, 150)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (55, 234, 152)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (56, 234, 153)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (57, 235, 154)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (58, 241, 156)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (59, 241, 157)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (60, 242, 158)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (61, 248, 160)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (62, 250, 163)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (63, 251, 165)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (64, 253, 168)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (66, 255, 171)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (67, 255, 172)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (68, 256, 173)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (69, 262, 175)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (70, 264, 178)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (72, 266, 181)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (73, 266, 182)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (74, 267, 183)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (76, 274, 186)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (77, 274, 187)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (78, 275, 188)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (79, 281, 190)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (80, 283, 193)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (81, 284, 195)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (82, 286, 198)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (84, 288, 201)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (85, 288, 202)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (86, 289, 203)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (87, 295, 207)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (88, 296, 208)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (91, 300, 212)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (92, 300, 213)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (93, 301, 214)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (94, 307, 218)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (95, 308, 219)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (116, 344, 250)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (117, 344, 251)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (118, 345, 252)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (119, 352, 256)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (120, 353, 257)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (122, 356, 262)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (123, 357, 263)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (126, 361, 267)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (127, 361, 268)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (128, 362, 269)
GO
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (98, 312, 223)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (99, 312, 224)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (100, 313, 225)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (101, 319, 229)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (102, 320, 230)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (105, 324, 234)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (106, 324, 235)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (107, 325, 236)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (108, 331, 240)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (109, 332, 241)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (112, 336, 245)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (113, 336, 246)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (114, 337, 247)
SET IDENTITY_INSERT [dbo].[venues_bands] OFF
