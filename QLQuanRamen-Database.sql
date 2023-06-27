USE [master]
GO
CREATE DATABASE [QLQuanRamen]
GO
USE [QLQuanRamen]
GO
/****** Object:  Table [dbo].[TBL_ACCOUNT]    Script Date: 5/8/2023 2:03:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_ACCOUNT](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](100) NOT NULL,
	[password] [varchar](1000) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_BILL]    Script Date: 5/8/2023 2:03:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_BILL](
	[BILL_ID] [int] IDENTITY(1,1) NOT NULL,
	[TABLE_ID] [int] NOT NULL,
	[STATUS] [int] NOT NULL,
	[total] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_BILLINFO]    Script Date: 5/8/2023 2:03:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_BILLINFO](
	[BILLINFO_ID] [int] IDENTITY(1,1) NOT NULL,
	[FOOD_ID] [int] NOT NULL,
	[BILL_ID] [int] NOT NULL,
	[COUNT] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_CATEGORY]    Script Date: 5/8/2023 2:03:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_CATEGORY](
	[CATEGORY_ID] [int] IDENTITY(1,1) NOT NULL,
	[CATEGORY_NAME] [varchar](150) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_FOOD]    Script Date: 5/8/2023 2:03:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_FOOD](
	[FOOD_ID] [int] IDENTITY(1,1) NOT NULL,
	[FOOD_NAME] [varchar](150) NOT NULL,
	[CATEGORY_ID] [int] NOT NULL,
	[PRICE] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_TABLE]    Script Date: 5/8/2023 2:03:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_TABLE](
	[TABLE_ID] [int] IDENTITY(1,1) NOT NULL,
	[TABLE_NAME] [varchar](150) NOT NULL,
	[STATUS] [varchar](150) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TBL_ACCOUNT] ON 

INSERT [dbo].[TBL_ACCOUNT] ([id], [username], [password]) VALUES (1, N'admin', N'admin123')
INSERT [dbo].[TBL_ACCOUNT] ([id], [username], [password]) VALUES (2, N'staff', N'staff123')
SET IDENTITY_INSERT [dbo].[TBL_ACCOUNT] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_BILL] ON 

INSERT [dbo].[TBL_BILL] ([BILL_ID], [TABLE_ID], [STATUS], [total]) VALUES (37, 1, 1, 338000)
INSERT [dbo].[TBL_BILL] ([BILL_ID], [TABLE_ID], [STATUS], [total]) VALUES (38, 2, 1, 53000)
INSERT [dbo].[TBL_BILL] ([BILL_ID], [TABLE_ID], [STATUS], [total]) VALUES (39, 4, 1, 281000)
INSERT [dbo].[TBL_BILL] ([BILL_ID], [TABLE_ID], [STATUS], [total]) VALUES (40, 1, 1, 58000)
INSERT [dbo].[TBL_BILL] ([BILL_ID], [TABLE_ID], [STATUS], [total]) VALUES (41, 1, 1, 45000)
INSERT [dbo].[TBL_BILL] ([BILL_ID], [TABLE_ID], [STATUS], [total]) VALUES (42, 1, 1, 130000)
INSERT [dbo].[TBL_BILL] ([BILL_ID], [TABLE_ID], [STATUS], [total]) VALUES (43, 1, 1, 30000)
INSERT [dbo].[TBL_BILL] ([BILL_ID], [TABLE_ID], [STATUS], [total]) VALUES (44, 1, 1, 153000)
INSERT [dbo].[TBL_BILL] ([BILL_ID], [TABLE_ID], [STATUS], [total]) VALUES (45, 3, 1, 80000)
INSERT [dbo].[TBL_BILL] ([BILL_ID], [TABLE_ID], [STATUS], [total]) VALUES (46, 1, 0, NULL)
INSERT [dbo].[TBL_BILL] ([BILL_ID], [TABLE_ID], [STATUS], [total]) VALUES (47, 3, 0, NULL)
SET IDENTITY_INSERT [dbo].[TBL_BILL] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_BILLINFO] ON 

INSERT [dbo].[TBL_BILLINFO] ([BILLINFO_ID], [FOOD_ID], [BILL_ID], [COUNT]) VALUES (71, 1, 37, 1)
INSERT [dbo].[TBL_BILLINFO] ([BILLINFO_ID], [FOOD_ID], [BILL_ID], [COUNT]) VALUES (72, 7, 37, 3)
INSERT [dbo].[TBL_BILLINFO] ([BILLINFO_ID], [FOOD_ID], [BILL_ID], [COUNT]) VALUES (73, 8, 37, 2)
INSERT [dbo].[TBL_BILLINFO] ([BILLINFO_ID], [FOOD_ID], [BILL_ID], [COUNT]) VALUES (74, 14, 37, 4)
INSERT [dbo].[TBL_BILLINFO] ([BILLINFO_ID], [FOOD_ID], [BILL_ID], [COUNT]) VALUES (75, 5, 38, 1)
INSERT [dbo].[TBL_BILLINFO] ([BILLINFO_ID], [FOOD_ID], [BILL_ID], [COUNT]) VALUES (76, 13, 38, 1)
INSERT [dbo].[TBL_BILLINFO] ([BILLINFO_ID], [FOOD_ID], [BILL_ID], [COUNT]) VALUES (77, 7, 39, 3)
INSERT [dbo].[TBL_BILLINFO] ([BILLINFO_ID], [FOOD_ID], [BILL_ID], [COUNT]) VALUES (78, 8, 39, 3)
INSERT [dbo].[TBL_BILLINFO] ([BILLINFO_ID], [FOOD_ID], [BILL_ID], [COUNT]) VALUES (79, 9, 39, 3)
INSERT [dbo].[TBL_BILLINFO] ([BILLINFO_ID], [FOOD_ID], [BILL_ID], [COUNT]) VALUES (80, 13, 39, 2)
INSERT [dbo].[TBL_BILLINFO] ([BILLINFO_ID], [FOOD_ID], [BILL_ID], [COUNT]) VALUES (81, 15, 39, 1)
INSERT [dbo].[TBL_BILLINFO] ([BILLINFO_ID], [FOOD_ID], [BILL_ID], [COUNT]) VALUES (82, 4, 40, 1)
INSERT [dbo].[TBL_BILLINFO] ([BILLINFO_ID], [FOOD_ID], [BILL_ID], [COUNT]) VALUES (83, 17, 40, 1)
INSERT [dbo].[TBL_BILLINFO] ([BILLINFO_ID], [FOOD_ID], [BILL_ID], [COUNT]) VALUES (84, 5, 41, 1)
INSERT [dbo].[TBL_BILLINFO] ([BILLINFO_ID], [FOOD_ID], [BILL_ID], [COUNT]) VALUES (85, 1, 42, 1)
INSERT [dbo].[TBL_BILLINFO] ([BILLINFO_ID], [FOOD_ID], [BILL_ID], [COUNT]) VALUES (86, 15, 43, 3)
INSERT [dbo].[TBL_BILLINFO] ([BILLINFO_ID], [FOOD_ID], [BILL_ID], [COUNT]) VALUES (87, 1, 44, 1)
INSERT [dbo].[TBL_BILLINFO] ([BILLINFO_ID], [FOOD_ID], [BILL_ID], [COUNT]) VALUES (88, 9, 45, 4)
INSERT [dbo].[TBL_BILLINFO] ([BILLINFO_ID], [FOOD_ID], [BILL_ID], [COUNT]) VALUES (89, 7, 44, 1)
INSERT [dbo].[TBL_BILLINFO] ([BILLINFO_ID], [FOOD_ID], [BILL_ID], [COUNT]) VALUES (90, 8, 44, 1)
INSERT [dbo].[TBL_BILLINFO] ([BILLINFO_ID], [FOOD_ID], [BILL_ID], [COUNT]) VALUES (91, 13, 44, 1)
INSERT [dbo].[TBL_BILLINFO] ([BILLINFO_ID], [FOOD_ID], [BILL_ID], [COUNT]) VALUES (92, 11, 44, 1)
INSERT [dbo].[TBL_BILLINFO] ([BILLINFO_ID], [FOOD_ID], [BILL_ID], [COUNT]) VALUES (93, 4, 46, 2)
INSERT [dbo].[TBL_BILLINFO] ([BILLINFO_ID], [FOOD_ID], [BILL_ID], [COUNT]) VALUES (94, 8, 46, 3)
INSERT [dbo].[TBL_BILLINFO] ([BILLINFO_ID], [FOOD_ID], [BILL_ID], [COUNT]) VALUES (95, 10, 47, 2)
INSERT [dbo].[TBL_BILLINFO] ([BILLINFO_ID], [FOOD_ID], [BILL_ID], [COUNT]) VALUES (96, 13, 47, 2)
SET IDENTITY_INSERT [dbo].[TBL_BILLINFO] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_CATEGORY] ON 

INSERT [dbo].[TBL_CATEGORY] ([CATEGORY_ID], [CATEGORY_NAME]) VALUES (1, N'Ramen')
INSERT [dbo].[TBL_CATEGORY] ([CATEGORY_ID], [CATEGORY_NAME]) VALUES (2, N'Rice')
INSERT [dbo].[TBL_CATEGORY] ([CATEGORY_ID], [CATEGORY_NAME]) VALUES (3, N'Sushi')
INSERT [dbo].[TBL_CATEGORY] ([CATEGORY_ID], [CATEGORY_NAME]) VALUES (4, N'Dessert')
INSERT [dbo].[TBL_CATEGORY] ([CATEGORY_ID], [CATEGORY_NAME]) VALUES (5, N'Drinks')
SET IDENTITY_INSERT [dbo].[TBL_CATEGORY] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_FOOD] ON 

INSERT [dbo].[TBL_FOOD] ([FOOD_ID], [FOOD_NAME], [CATEGORY_ID], [PRICE]) VALUES (1, N'Original Ramen', 1, 65000)
INSERT [dbo].[TBL_FOOD] ([FOOD_ID], [FOOD_NAME], [CATEGORY_ID], [PRICE]) VALUES (2, N'Shoyu Ramen', 1, 70000)
INSERT [dbo].[TBL_FOOD] ([FOOD_ID], [FOOD_NAME], [CATEGORY_ID], [PRICE]) VALUES (3, N'Miso Ramen', 1, 70000)
INSERT [dbo].[TBL_FOOD] ([FOOD_ID], [FOOD_NAME], [CATEGORY_ID], [PRICE]) VALUES (4, N'Katsu Don', 2, 50000)
INSERT [dbo].[TBL_FOOD] ([FOOD_ID], [FOOD_NAME], [CATEGORY_ID], [PRICE]) VALUES (5, N'Oyako Don', 2, 45000)
INSERT [dbo].[TBL_FOOD] ([FOOD_ID], [FOOD_NAME], [CATEGORY_ID], [PRICE]) VALUES (6, N'Unagi Don', 2, 60000)
INSERT [dbo].[TBL_FOOD] ([FOOD_ID], [FOOD_NAME], [CATEGORY_ID], [PRICE]) VALUES (7, N'Salmon Sushi', 3, 30000)
INSERT [dbo].[TBL_FOOD] ([FOOD_ID], [FOOD_NAME], [CATEGORY_ID], [PRICE]) VALUES (8, N'Tuna Sushi', 3, 35000)
INSERT [dbo].[TBL_FOOD] ([FOOD_ID], [FOOD_NAME], [CATEGORY_ID], [PRICE]) VALUES (9, N'Tamago Sushi', 3, 20000)
INSERT [dbo].[TBL_FOOD] ([FOOD_ID], [FOOD_NAME], [CATEGORY_ID], [PRICE]) VALUES (10, N'Pudding', 4, 12000)
INSERT [dbo].[TBL_FOOD] ([FOOD_ID], [FOOD_NAME], [CATEGORY_ID], [PRICE]) VALUES (11, N'Mochi', 4, 15000)
INSERT [dbo].[TBL_FOOD] ([FOOD_ID], [FOOD_NAME], [CATEGORY_ID], [PRICE]) VALUES (12, N'Dango', 4, 20000)
INSERT [dbo].[TBL_FOOD] ([FOOD_ID], [FOOD_NAME], [CATEGORY_ID], [PRICE]) VALUES (13, N'Green Tea', 5, 8000)
INSERT [dbo].[TBL_FOOD] ([FOOD_ID], [FOOD_NAME], [CATEGORY_ID], [PRICE]) VALUES (14, N'Matcha Tea', 5, 12000)
INSERT [dbo].[TBL_FOOD] ([FOOD_ID], [FOOD_NAME], [CATEGORY_ID], [PRICE]) VALUES (15, N'Oolong Tea', 5, 10000)
INSERT [dbo].[TBL_FOOD] ([FOOD_ID], [FOOD_NAME], [CATEGORY_ID], [PRICE]) VALUES (16, N'Cola', 5, 9000)
INSERT [dbo].[TBL_FOOD] ([FOOD_ID], [FOOD_NAME], [CATEGORY_ID], [PRICE]) VALUES (17, N'7up', 5, 8000)
SET IDENTITY_INSERT [dbo].[TBL_FOOD] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_TABLE] ON 

INSERT [dbo].[TBL_TABLE] ([TABLE_ID], [TABLE_NAME], [STATUS]) VALUES (1, N'Table 1', N'Occupied')
INSERT [dbo].[TBL_TABLE] ([TABLE_ID], [TABLE_NAME], [STATUS]) VALUES (2, N'Table 2', N'Empty')
INSERT [dbo].[TBL_TABLE] ([TABLE_ID], [TABLE_NAME], [STATUS]) VALUES (3, N'Table 3', N'Occupied')
INSERT [dbo].[TBL_TABLE] ([TABLE_ID], [TABLE_NAME], [STATUS]) VALUES (4, N'Table 4', N'Empty')
INSERT [dbo].[TBL_TABLE] ([TABLE_ID], [TABLE_NAME], [STATUS]) VALUES (5, N'Table 5', N'Empty')
INSERT [dbo].[TBL_TABLE] ([TABLE_ID], [TABLE_NAME], [STATUS]) VALUES (6, N'Table 6', N'Empty')
INSERT [dbo].[TBL_TABLE] ([TABLE_ID], [TABLE_NAME], [STATUS]) VALUES (7, N'Table 7', N'Empty')
INSERT [dbo].[TBL_TABLE] ([TABLE_ID], [TABLE_NAME], [STATUS]) VALUES (8, N'Table 8', N'Empty')
INSERT [dbo].[TBL_TABLE] ([TABLE_ID], [TABLE_NAME], [STATUS]) VALUES (9, N'Table 9', N'Empty')
INSERT [dbo].[TBL_TABLE] ([TABLE_ID], [TABLE_NAME], [STATUS]) VALUES (10, N'Table 10', N'Empty')
SET IDENTITY_INSERT [dbo].[TBL_TABLE] OFF
GO
/****** Object:  Index [PK_TBL_BILL]    Script Date: 5/8/2023 2:03:33 PM ******/
ALTER TABLE [dbo].[TBL_BILL] ADD  CONSTRAINT [PK_TBL_BILL] PRIMARY KEY NONCLUSTERED 
(
	[BILL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [TABLE_INFOR_FK]    Script Date: 5/8/2023 2:03:33 PM ******/
CREATE NONCLUSTERED INDEX [TABLE_INFOR_FK] ON [dbo].[TBL_BILL]
(
	[TABLE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_TBL_BILLINFO]    Script Date: 5/8/2023 2:03:33 PM ******/
ALTER TABLE [dbo].[TBL_BILLINFO] ADD  CONSTRAINT [PK_TBL_BILLINFO] PRIMARY KEY NONCLUSTERED 
(
	[BILLINFO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [FOOD_INFOR_FK]    Script Date: 5/8/2023 2:03:33 PM ******/
CREATE NONCLUSTERED INDEX [FOOD_INFOR_FK] ON [dbo].[TBL_BILLINFO]
(
	[FOOD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_TBL_CATEGORY]    Script Date: 5/8/2023 2:03:33 PM ******/
ALTER TABLE [dbo].[TBL_CATEGORY] ADD  CONSTRAINT [PK_TBL_CATEGORY] PRIMARY KEY NONCLUSTERED 
(
	[CATEGORY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_TBL_FOOD]    Script Date: 5/8/2023 2:03:33 PM ******/
ALTER TABLE [dbo].[TBL_FOOD] ADD  CONSTRAINT [PK_TBL_FOOD] PRIMARY KEY NONCLUSTERED 
(
	[FOOD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [CATEGORY_INFO_FK]    Script Date: 5/8/2023 2:03:33 PM ******/
CREATE NONCLUSTERED INDEX [CATEGORY_INFO_FK] ON [dbo].[TBL_FOOD]
(
	[CATEGORY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_TBL_TABLE]    Script Date: 5/8/2023 2:03:33 PM ******/
ALTER TABLE [dbo].[TBL_TABLE] ADD  CONSTRAINT [PK_TBL_TABLE] PRIMARY KEY NONCLUSTERED 
(
	[TABLE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TBL_BILLINFO] ADD  CONSTRAINT [DF__TBL_BILLI__COUNT__1BC821DD]  DEFAULT ((0)) FOR [COUNT]
GO
ALTER TABLE [dbo].[TBL_CATEGORY] ADD  CONSTRAINT [DF__TBL_CATEG__CATEG__1EA48E88]  DEFAULT (N'Empty name') FOR [CATEGORY_NAME]
GO
ALTER TABLE [dbo].[TBL_FOOD] ADD  CONSTRAINT [DF__TBL_FOOD__FOOD_N__2180FB33]  DEFAULT (N'Empty name') FOR [FOOD_NAME]
GO
ALTER TABLE [dbo].[TBL_FOOD] ADD  CONSTRAINT [DF__TBL_FOOD__PRICE__22751F6C]  DEFAULT ((0)) FOR [PRICE]
GO
ALTER TABLE [dbo].[TBL_TABLE] ADD  CONSTRAINT [DF__TBL_TABLE__TABLE__25518C17]  DEFAULT (N'Empty name') FOR [TABLE_NAME]
GO
ALTER TABLE [dbo].[TBL_TABLE] ADD  CONSTRAINT [DF__TBL_TABLE__STATU__2645B050]  DEFAULT (N'Empty') FOR [STATUS]
GO
ALTER TABLE [dbo].[TBL_BILL]  WITH CHECK ADD  CONSTRAINT [FK_TBL_BILL_TABLE_INF_TBL_TABL] FOREIGN KEY([TABLE_ID])
REFERENCES [dbo].[TBL_TABLE] ([TABLE_ID])
GO
ALTER TABLE [dbo].[TBL_BILL] CHECK CONSTRAINT [FK_TBL_BILL_TABLE_INF_TBL_TABL]
GO
ALTER TABLE [dbo].[TBL_BILLINFO]  WITH CHECK ADD  CONSTRAINT [FK_TBL_BILL_BILL_INFO_TBL_BILL] FOREIGN KEY([BILL_ID])
REFERENCES [dbo].[TBL_BILL] ([BILL_ID])
GO
ALTER TABLE [dbo].[TBL_BILLINFO] CHECK CONSTRAINT [FK_TBL_BILL_BILL_INFO_TBL_BILL]
GO
ALTER TABLE [dbo].[TBL_BILLINFO]  WITH CHECK ADD  CONSTRAINT [FK_TBL_BILL_FOOD_INFO_TBL_FOOD] FOREIGN KEY([FOOD_ID])
REFERENCES [dbo].[TBL_FOOD] ([FOOD_ID])
GO
ALTER TABLE [dbo].[TBL_BILLINFO] CHECK CONSTRAINT [FK_TBL_BILL_FOOD_INFO_TBL_FOOD]
GO
ALTER TABLE [dbo].[TBL_FOOD]  WITH CHECK ADD  CONSTRAINT [FK_TBL_FOOD_CATEGORY__TBL_CATE] FOREIGN KEY([CATEGORY_ID])
REFERENCES [dbo].[TBL_CATEGORY] ([CATEGORY_ID])
GO
ALTER TABLE [dbo].[TBL_FOOD] CHECK CONSTRAINT [FK_TBL_FOOD_CATEGORY__TBL_CATE]
GO
/****** Object:  StoredProcedure [dbo].[USP_GetListBillReport]    Script Date: 5/8/2023 2:03:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_GetListBillReport]
AS
BEGIN
	SELECT tbl.TABLE_NAME, FOOD_NAME, food.PRICE, billinfo.COUNT,  billinfo.COUNT * food.PRICE AS FOOD_TOTAL
	FROM TBL_BILL AS bill, TBL_TABLE as tbl, TBL_BILLINFO AS billinfo, TBL_FOOD as Food
	WHERE bill.STATUS = 1 and tbl.TABLE_ID = bill.TABLE_ID AND billinfo.BILL_ID = bill.BILL_ID AND billinfo.FOOD_ID = food.FOOD_ID
END
GO
/****** Object:  StoredProcedure [dbo].[USP_GetTableList]    Script Date: 5/8/2023 2:03:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_GetTableList]
AS SELECT * FROM TBL_TABLE
GO
/****** Object:  StoredProcedure [dbo].[USP_InsertBill]    Script Date: 5/8/2023 2:03:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_InsertBill]
@idTable INT
AS
BEGIN
	INSERT INTO TBL_BILL(TABLE_ID, STATUS)
	VALUES (@idTable, 0)
END
GO
/****** Object:  StoredProcedure [dbo].[USP_InsertBillInfo]    Script Date: 5/8/2023 2:03:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_InsertBillInfo]
@idBill INT,
@idFood INT,
@count INT
AS
BEGIN
	DECLARE @isExistsBillInfo INT
	DECLARE @foodCount INT = 1
	SELECT @isExistsBillInfo = BILLINFO_ID, @foodCount = b.COUNT
	FROM TBL_BILLINFO AS b
	WHERE BILL_ID = @idBill AND FOOD_ID = @idFood

	IF (@isExistsBillInfo > 0)
	BEGIN
		DECLARE @newCount INT = @foodCount + @count
		IF (@newCount > 0)
			UPDATE TBL_BILLINFO SET COUNT = @foodCount + @count WHERE FOOD_ID = @idFood
		ELSE
		DELETE TBL_BILLINFO WHERE BILL_ID = @idBill AND FOOD_ID = @idFood
	END
	ELSE
	BEGIN
		INSERT INTO TBL_BILLINFO(BILL_ID, FOOD_ID, COUNT)
		VALUES (@idBill, @idFood, @count)
	END
END
GO
/****** Object:  StoredProcedure [dbo].[USP_Login]    Script Date: 5/8/2023 2:03:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_Login]
@userName varchar(100), @passWord varchar(1000)
AS
BEGIN
	SELECT * FROM dbo.TBL_ACCOUNT WHERE username = @userName and password = @passWord
END
GO
/****** Object:  Trigger [dbo].[UTG_UpdateBill]    Script Date: 5/8/2023 2:03:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[UTG_UpdateBill]
ON [dbo].[TBL_BILL] FOR UPDATE
AS
BEGIN
	DECLARE @idBill INT
	SELECT @idBill = BILL_ID FROM Inserted

	DECLARE @idTable INT
	SELECT @idTable = TABLE_ID FROM TBL_BILL WHERE BILL_ID = @idBill

	DECLARE @count INT = 0
	SELECT @count = COUNT(*) FROM TBL_BILL WHERE TABLE_ID = @idTable AND STATUS = 0

	IF (@count = 0)
		UPDATE TBL_TABLE SET STATUS = 'Empty' WHERE TABLE_ID = @idTable
END
GO
ALTER TABLE [dbo].[TBL_BILL] ENABLE TRIGGER [UTG_UpdateBill]
GO
/****** Object:  Trigger [dbo].[UTG_DeleteBillInfo]    Script Date: 5/8/2023 2:03:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[UTG_DeleteBillInfo]
ON [dbo].[TBL_BILLINFO] FOR DELETE
AS
BEGIN
	DECLARE @idBillInfo INT
	DECLARE @idBill INT
	SELECT @idBillInfo = BILLINFO_ID, @idBill = deleted.BILL_ID FROM deleted

	DECLARE @idTable INT
	SELECT @idTable = TABLE_ID FROM TBL_BILL WHERE BILL_ID = @idBill

	DECLARE @count INT = 0
	SELECT @count = COUNT(*) FROM TBL_BILLINFO AS billinfo, TBL_BILL AS bill WHERE bill.BILL_ID = billinfo.BILL_ID AND bill.BILL_ID = @idBill AND bill.STATUS = 0

	IF (@count = 0)
		UPDATE TBL_TABLE SET STATUS = 'Empty' WHERE TABLE_ID = @idTable
END
GO
ALTER TABLE [dbo].[TBL_BILLINFO] ENABLE TRIGGER [UTG_DeleteBillInfo]
GO
/****** Object:  Trigger [dbo].[UTG_UpdateBillInfo]    Script Date: 5/8/2023 2:03:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[UTG_UpdateBillInfo]
ON [dbo].[TBL_BILLINFO] FOR INSERT, UPDATE
AS
BEGIN
	DECLARE @idBill INT

	SELECT @idBill = BILL_ID FROM Inserted

	DECLARE @idTable INT

	SELECT @idTable = TABLE_ID FROM TBL_BILL WHERE BILL_ID = @idBill AND STATUS = 0

	UPDATE TBL_TABLE SET STATUS = 'Occupied' WHERE TABLE_ID = @idTable
END
GO
ALTER TABLE [dbo].[TBL_BILLINFO] ENABLE TRIGGER [UTG_UpdateBillInfo]
GO
USE [master]
GO
ALTER DATABASE [QLQuanRamen] SET  READ_WRITE 
GO
