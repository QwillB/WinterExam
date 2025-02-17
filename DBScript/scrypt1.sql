USE [ExamWinter]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 20.12.2024 6:30:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[PickupPointId] [int] NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
	[Date] [datetime] NOT NULL,
	[DeliveryDate] [datetime] NOT NULL,
	[PickupCode] [int] NOT NULL,
 CONSTRAINT [PK__ExamOrde__C3905BAFC7CC9AED] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 20.12.2024 6:30:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Amount] [smallint] NOT NULL,
 CONSTRAINT [PK__ExamOrde__817A266255BBC081] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickupPoint]    Script Date: 20.12.2024 6:30:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickupPoint](
	[PickupPointId] [int] IDENTITY(1,1) NOT NULL,
	[Index] [int] NOT NULL,
	[City] [nvarchar](100) NOT NULL,
	[Street] [nvarchar](100) NOT NULL,
	[HomeNumber] [tinyint] NOT NULL,
 CONSTRAINT [PK_ExamPickupPoint] PRIMARY KEY CLUSTERED 
(
	[PickupPointId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 20.12.2024 6:30:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ArticleNumber] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](max) NOT NULL,
	[Photo] [nvarchar](max) NULL,
	[Manufacturer] [nvarchar](max) NOT NULL,
	[Cost] [decimal](19, 4) NOT NULL,
	[DiscountAmount] [tinyint] NULL,
	[QuantityInStock] [int] NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 20.12.2024 6:30:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__ExamRole__8AFACE3AA2D40FB8] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 20.12.2024 6:30:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[Surname] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Patronymic] [nvarchar](100) NOT NULL,
	[Login] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK__ExamUser__1788CCAC0829F7A9] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderId], [UserId], [PickupPointId], [Status], [Date], [DeliveryDate], [PickupCode]) VALUES (1, 1, 24, N'Новый ', CAST(N'2022-05-04T00:00:00.000' AS DateTime), CAST(N'2022-05-10T00:00:00.000' AS DateTime), 201)
INSERT [dbo].[Order] ([OrderId], [UserId], [PickupPointId], [Status], [Date], [DeliveryDate], [PickupCode]) VALUES (2, NULL, 25, N'Новый ', CAST(N'2022-05-05T00:00:00.000' AS DateTime), CAST(N'2022-05-11T00:00:00.000' AS DateTime), 202)
INSERT [dbo].[Order] ([OrderId], [UserId], [PickupPointId], [Status], [Date], [DeliveryDate], [PickupCode]) VALUES (3, 2, 26, N'Новый ', CAST(N'2022-05-06T00:00:00.000' AS DateTime), CAST(N'2022-05-12T00:00:00.000' AS DateTime), 203)
INSERT [dbo].[Order] ([OrderId], [UserId], [PickupPointId], [Status], [Date], [DeliveryDate], [PickupCode]) VALUES (4, NULL, 27, N'Новый ', CAST(N'2022-05-07T00:00:00.000' AS DateTime), CAST(N'2022-05-13T00:00:00.000' AS DateTime), 204)
INSERT [dbo].[Order] ([OrderId], [UserId], [PickupPointId], [Status], [Date], [DeliveryDate], [PickupCode]) VALUES (5, 3, 28, N'Новый ', CAST(N'2022-05-08T00:00:00.000' AS DateTime), CAST(N'2022-05-14T00:00:00.000' AS DateTime), 205)
INSERT [dbo].[Order] ([OrderId], [UserId], [PickupPointId], [Status], [Date], [DeliveryDate], [PickupCode]) VALUES (6, NULL, 29, N'Новый ', CAST(N'2022-05-09T00:00:00.000' AS DateTime), CAST(N'2022-05-15T00:00:00.000' AS DateTime), 206)
INSERT [dbo].[Order] ([OrderId], [UserId], [PickupPointId], [Status], [Date], [DeliveryDate], [PickupCode]) VALUES (7, NULL, 30, N'Новый ', CAST(N'2022-05-10T00:00:00.000' AS DateTime), CAST(N'2022-05-16T00:00:00.000' AS DateTime), 207)
INSERT [dbo].[Order] ([OrderId], [UserId], [PickupPointId], [Status], [Date], [DeliveryDate], [PickupCode]) VALUES (8, NULL, 31, N'Новый ', CAST(N'2022-05-11T00:00:00.000' AS DateTime), CAST(N'2022-05-17T00:00:00.000' AS DateTime), 208)
INSERT [dbo].[Order] ([OrderId], [UserId], [PickupPointId], [Status], [Date], [DeliveryDate], [PickupCode]) VALUES (9, 4, 32, N'Новый ', CAST(N'2022-05-12T00:00:00.000' AS DateTime), CAST(N'2022-05-18T00:00:00.000' AS DateTime), 209)
INSERT [dbo].[Order] ([OrderId], [UserId], [PickupPointId], [Status], [Date], [DeliveryDate], [PickupCode]) VALUES (10, NULL, 33, N'Завершен', CAST(N'2022-05-13T00:00:00.000' AS DateTime), CAST(N'2022-05-19T00:00:00.000' AS DateTime), 210)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderProduct] ([OrderId], [ProductId], [Amount]) VALUES (1, 11, 2)
INSERT [dbo].[OrderProduct] ([OrderId], [ProductId], [Amount]) VALUES (1, 20, 2)
INSERT [dbo].[OrderProduct] ([OrderId], [ProductId], [Amount]) VALUES (2, 7, 1)
INSERT [dbo].[OrderProduct] ([OrderId], [ProductId], [Amount]) VALUES (2, 10, 2)
INSERT [dbo].[OrderProduct] ([OrderId], [ProductId], [Amount]) VALUES (3, 2, 2)
INSERT [dbo].[OrderProduct] ([OrderId], [ProductId], [Amount]) VALUES (3, 14, 1)
INSERT [dbo].[OrderProduct] ([OrderId], [ProductId], [Amount]) VALUES (4, 3, 2)
INSERT [dbo].[OrderProduct] ([OrderId], [ProductId], [Amount]) VALUES (4, 5, 1)
INSERT [dbo].[OrderProduct] ([OrderId], [ProductId], [Amount]) VALUES (5, 13, 3)
INSERT [dbo].[OrderProduct] ([OrderId], [ProductId], [Amount]) VALUES (5, 17, 2)
INSERT [dbo].[OrderProduct] ([OrderId], [ProductId], [Amount]) VALUES (6, 8, 3)
INSERT [dbo].[OrderProduct] ([OrderId], [ProductId], [Amount]) VALUES (6, 15, 3)
INSERT [dbo].[OrderProduct] ([OrderId], [ProductId], [Amount]) VALUES (7, 9, 6)
INSERT [dbo].[OrderProduct] ([OrderId], [ProductId], [Amount]) VALUES (7, 12, 5)
INSERT [dbo].[OrderProduct] ([OrderId], [ProductId], [Amount]) VALUES (8, 4, 5)
INSERT [dbo].[OrderProduct] ([OrderId], [ProductId], [Amount]) VALUES (8, 18, 4)
INSERT [dbo].[OrderProduct] ([OrderId], [ProductId], [Amount]) VALUES (9, 1, 3)
INSERT [dbo].[OrderProduct] ([OrderId], [ProductId], [Amount]) VALUES (9, 19, 3)
INSERT [dbo].[OrderProduct] ([OrderId], [ProductId], [Amount]) VALUES (10, 6, 1)
INSERT [dbo].[OrderProduct] ([OrderId], [ProductId], [Amount]) VALUES (10, 16, 4)
GO
SET IDENTITY_INSERT [dbo].[PickupPoint] ON 

INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (1, 344288, N'Ангарск', N'Чехова', 1)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (2, 614164, N'Ангарск', N'Степная', 30)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (3, 394242, N'Ангарск', N'Коммунистическая', 43)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (4, 660540, N'Ангарск', N'Солнечная', 25)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (5, 125837, N'Ангарск', N'Шоссейная', 40)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (6, 125703, N'Ангарск', N'Партизанская', 49)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (7, 625283, N'Ангарск', N'Победы', 46)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (8, 614611, N'Ангарск', N'Молодежная', 50)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (9, 454311, N'Ангарск', N'Новая', 19)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (10, 660007, N'Ангарск', N'Октябрьская', 19)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (11, 603036, N'Ангарск', N'Садовая', 4)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (12, 450983, N'Ангарск', N'Комсомольская', 26)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (13, 394782, N'Ангарск', N'Чехова', 3)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (14, 603002, N'Ангарск', N'Дзержинского', 28)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (15, 450558, N'Ангарск', N'Набережная', 30)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (16, 394060, N'Ангарск', N'Фрунзе', 43)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (17, 410661, N'Ангарск', N'Школьная', 50)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (18, 625590, N'Ангарск', N'Коммунистическая', 20)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (19, 625683, N'Ангарск', N'8 Марта', 1)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (20, 400562, N'Ангарск', N'Зеленая', 32)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (21, 614510, N'Ангарск', N'Маяковского', 47)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (22, 410542, N'Ангарск', N'Светлая', 46)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (23, 620839, N'Ангарск', N'Цветочная', 8)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (24, 443890, N'Ангарск', N'Коммунистическая', 1)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (25, 603379, N'Ангарск', N'Спортивная', 46)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (26, 603721, N'Ангарск', N'Гоголя', 41)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (27, 410172, N'Ангарск', N'Северная', 13)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (28, 420151, N'Ангарск', N'Вишневая', 32)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (29, 125061, N'Ангарск', N'Подгорная', 8)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (30, 630370, N'Ангарск', N'Шоссейная', 24)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (31, 614753, N'Ангарск', N'Полевая', 35)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (32, 426030, N'Ангарск', N'Маяковского', 44)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (33, 450375, N'Ангарск', N'Клубная', 44)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (34, 625560, N'Ангарск', N'Некрасова', 12)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (35, 630201, N'Ангарск', N'Комсомольская', 17)
INSERT [dbo].[PickupPoint] ([PickupPointId], [Index], [City], [Street], [HomeNumber]) VALUES (36, 190949, N'Ангарск', N'Мичурина', 26)
SET IDENTITY_INSERT [dbo].[PickupPoint] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [ArticleNumber], [Name], [Description], [Category], [Photo], [Manufacturer], [Cost], [DiscountAmount], [QuantityInStock], [Status]) VALUES (1, N'А112Т4', N'Туалетная вода "Элеганс"', N'Легкий и изысканный аромат с нотами бергамота и жасмина.', N'Парфюмерия', N'1', N'Arôme de France', CAST(3500.0000 AS Decimal(19, 4)), 52, 20, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ArticleNumber], [Name], [Description], [Category], [Photo], [Manufacturer], [Cost], [DiscountAmount], [QuantityInStock], [Status]) VALUES (2, N'F893T5', N'Крем для лица "Увлажнение"', N'Увлажняющий крем с гиалуроновой кислотой и экстрактом алоэ вера.', N'Косметика', N'1', N'BioNatural', CAST(1200.0000 AS Decimal(19, 4)), 23, 50, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ArticleNumber], [Name], [Description], [Category], [Photo], [Manufacturer], [Cost], [DiscountAmount], [QuantityInStock], [Status]) VALUES (3, N'E530Y6', N'Парфюм "Ночная орхидея"', N'Интенсивный вечерний аромат с акцентами ванили и сандала.', N'Парфюмерия', N'1', N'Parfum Élégance', CAST(4800.0000 AS Decimal(19, 4)), 48, 15, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ArticleNumber], [Name], [Description], [Category], [Photo], [Manufacturer], [Cost], [DiscountAmount], [QuantityInStock], [Status]) VALUES (4, N'F346G5', N'Шампунь "Свежесть"', N'Освежающий шампунь с экстрактами мяты и лимона.', N'Косметика', N'1', N'Herbal Essence', CAST(700.0000 AS Decimal(19, 4)), 15, 100, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ArticleNumber], [Name], [Description], [Category], [Photo], [Manufacturer], [Cost], [DiscountAmount], [QuantityInStock], [Status]) VALUES (5, N'J4324E4', N'Помада "Рубиновый блеск"', N'Стойкая губная помада с насыщенным красным оттенком.', N'Косметика', N'1', N'BellaCosmetic', CAST(950.0000 AS Decimal(19, 4)), 88, 35, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ArticleNumber], [Name], [Description], [Category], [Photo], [Manufacturer], [Cost], [DiscountAmount], [QuantityInStock], [Status]) VALUES (6, N'D344Y7', N'Парфюм "Летний вечер"', N'Тонкий аромат лаванды и цитрусовых для летнего настроения.', N'Парфюмерия', N'1', N'AromaLux', CAST(4200.0000 AS Decimal(19, 4)), 0, 10, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ArticleNumber], [Name], [Description], [Category], [Photo], [Manufacturer], [Cost], [DiscountAmount], [QuantityInStock], [Status]) VALUES (7, N'E245R5', N'Тушь для ресниц "Объем"', N'Водостойкая тушь для создания эффекта густых ресниц.', N'Косметика', N'1', N'EyesPerfect', CAST(1100.0000 AS Decimal(19, 4)), 57, 0, N'Нет в наличии')
INSERT [dbo].[Product] ([ProductId], [ArticleNumber], [Name], [Description], [Category], [Photo], [Manufacturer], [Cost], [DiscountAmount], [QuantityInStock], [Status]) VALUES (8, N'D378D3', N'Крем для рук "Шелковая"', N'Нежный крем для рук с маслом ши и витамином Е.', N'Косметика', N'1', N'SkinSoft', CAST(500.0000 AS Decimal(19, 4)), 24, 80, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ArticleNumber], [Name], [Description], [Category], [Photo], [Manufacturer], [Cost], [DiscountAmount], [QuantityInStock], [Status]) VALUES (9, N'H732R5', N'Лосьон для тела "Морской"', N'Увлажняющий лосьон с ароматом морского бриза.', N'Косметика', N'1', N'AquaCare', CAST(800.0000 AS Decimal(19, 4)), 31, 40, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ArticleNumber], [Name], [Description], [Category], [Photo], [Manufacturer], [Cost], [DiscountAmount], [QuantityInStock], [Status]) VALUES (10, N'R464G6', N'Парфюм "Цветочный шепот"	', N'Легкий аромат с нотами розы и лилии.	', N'Парфюмерия', N'1', N'FleurD''or', CAST(3100.0000 AS Decimal(19, 4)), 17, 25, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ArticleNumber], [Name], [Description], [Category], [Photo], [Manufacturer], [Cost], [DiscountAmount], [QuantityInStock], [Status]) VALUES (11, N'K535G6', N'Тени для век "Закат"', N'Палитра теней для век с 5 оттенками, вдохновленных закатом.', N'Косметика', N'1', N'BeautyLook', CAST(1500.0000 AS Decimal(19, 4)), 9, 30, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ArticleNumber], [Name], [Description], [Category], [Photo], [Manufacturer], [Cost], [DiscountAmount], [QuantityInStock], [Status]) VALUES (12, N'E573G6', N'Духи "Магия ночи"', N'Глубокий вечерний аромат с нотами мускуса и пачули.', N'Парфюмерия', N'1', N'Parfum Élégance', CAST(5400.0000 AS Decimal(19, 4)), 32, 5, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ArticleNumber], [Name], [Description], [Category], [Photo], [Manufacturer], [Cost], [DiscountAmount], [QuantityInStock], [Status]) VALUES (13, N'G532R5', N'Лак для ногтей "Шик"', N'Быстросохнущий лак с блестящим покрытием, оттенок "Бордовый шик".', N'Косметика', N'1', N'NailStar', CAST(400.0000 AS Decimal(19, 4)), 14, 70, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ArticleNumber], [Name], [Description], [Category], [Photo], [Manufacturer], [Cost], [DiscountAmount], [QuantityInStock], [Status]) VALUES (14, N'F344S4', N'Кондиционер "Объем"', N'Кондиционер для придания объема тонким волосам.', N'Косметика', N'1', N'Herbal Essence', CAST(750.0000 AS Decimal(19, 4)), 32, 60, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ArticleNumber], [Name], [Description], [Category], [Photo], [Manufacturer], [Cost], [DiscountAmount], [QuantityInStock], [Status]) VALUES (15, N'D526R4', N'Бальзам для губ "Малина"', N'Увлажняющий бальзам с ароматом малины и SPF 15.', N'Косметика', N'1', N'LipSoft', CAST(300.0000 AS Decimal(19, 4)), 12, 100, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ArticleNumber], [Name], [Description], [Category], [Photo], [Manufacturer], [Cost], [DiscountAmount], [QuantityInStock], [Status]) VALUES (16, N'S753T5', N'Крем для лица "Антивозраст"', N'Питательный крем с ретинолом и коллагеном для восстановления кожи.', N'Косметика', N'1', N'TimeRestore', CAST(2500.0000 AS Decimal(19, 4)), 21, 20, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ArticleNumber], [Name], [Description], [Category], [Photo], [Manufacturer], [Cost], [DiscountAmount], [QuantityInStock], [Status]) VALUES (17, N'V472S3', N'Парфюм "Лесной бриз"', N'Аромат свежей зелени с легким древесным оттенком.', N'Парфюмерия', N'1', N'Arôme de France', CAST(3700.0000 AS Decimal(19, 4)), 43, 18, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ArticleNumber], [Name], [Description], [Category], [Photo], [Manufacturer], [Cost], [DiscountAmount], [QuantityInStock], [Status]) VALUES (18, N'A436H7', N'Лосьон после бритья "Тоник"	', N'Успокаивающий лосьон с экстрактом ромашки и ментола.', N'Косметика', N'1', N'SkinSoft', CAST(1200.0000 AS Decimal(19, 4)), 21, 25, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ArticleNumber], [Name], [Description], [Category], [Photo], [Manufacturer], [Cost], [DiscountAmount], [QuantityInStock], [Status]) VALUES (19, N'O875F6', N'Парфюм "Розовый рассвет"', N'Романтичный аромат с нотами розы и фруктов.', N'Парфюмерия', N'1', N'AromaLux', CAST(4100.0000 AS Decimal(19, 4)), 22, 10, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ArticleNumber], [Name], [Description], [Category], [Photo], [Manufacturer], [Cost], [DiscountAmount], [QuantityInStock], [Status]) VALUES (20, N'E479G6', N'Молочко для тела "Шелковое"', N'Увлажняющее молочко с маслом миндаля и протеинами шелка.', N'Косметика', N'1', N'BioNatural', CAST(850.0000 AS Decimal(19, 4)), 5, 35, N'В наличии')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (1, N'Менеджер
')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (2, N'Клиент')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (3, N'Администратор')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (1, 1, N'Константинова ', N'Вероника', N'Агафоновна', N'loginDEsgg2018', N'qhgYnW')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (2, 2, N'Меркушев ', N'Мартын', N'Федотович', N'loginDEdcd2018', N'LxR6YI')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (3, 1, N'Казаков ', N'Федот', N'Кондратович', N'loginDEisg2018', N'Cp8ddU')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (4, 3, N'Карпов ', N'Улеб', N' Леонидович', N'loginDEcph2018', N'7YpE0p')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (5, 2, N'Королёв ', N'Матвей', N'Вадимович', N'loginDEgco2018', N'nMr|ss')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (6, 2, N'Юдин ', N'Герман', N' Кондратович', N'loginDEwjg2018', N'9UfqWQ')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (7, 3, N'Беляева ', N'Анна', N' Вячеславовна', N'loginDEjbz2018', N'xIAWNI')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (8, 1, N'Беляев ', N'Валентин', N'Артёмович', N'loginDEmgu2018', N'0gC3bk')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (9, 1, N'Семёнов ', N'Герман', N'Дмитрьевич', N'loginDErdg2018', N'ni0ue0')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (10, 2, N'Шестаков ', N'Илья', N'Антонинович', N'loginDEjtv2018', N'f2ZaN6')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (11, 2, N'Власов ', N'Вадим', N' Васильевич', N'loginDEtfj2018', N'{{ksPn')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (12, 3, N'Савельев ', N'Арсений', N' Авксентьевич', N'loginDEpnb2018', N'{ADBdc')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (13, 3, N'Ефимов ', N'Руслан', N'Якунович', N'loginDEzer2018', N'5&R+zs')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (14, 2, N'Бурова ', N'Марфа', N' Федотовна', N'loginDEiin2018', N'y9l*b}')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (15, 2, N'Селезнёв ', N'Александр', N' Никитевич', N'loginDEqda2018', N'|h+r}I')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (16, 2, N'Кулакова ', N'Виктория', N' Георгьевна', N'loginDEbnj2018', N'12345')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (17, 2, N'Дорофеева ', N'Кира', N'Демьяновна', N'loginDEqte2018', N'dC8bDI')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (18, 2, N'Сафонова ', N'Нинель', N'Якововна', N'loginDEfeo2018', N'8cI7vq')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (19, 2, N'Ситникова ', N'София', N'Лукьевна', N'loginDEvni2018', N'e4pVIv')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (20, 1, N'Медведев ', N'Ириней', N' Геннадьевич', N'loginDEjis2018', N'A9K++2')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (21, 1, N'Суханова ', N'Евгения', N' Улебовна', N'loginDExvv2018', N'R1zh}|')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (22, 1, N'Игнатьев ', N'Владлен', N'Дамирович', N'loginDEadl2018', N'F&IWf4')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (23, 2, N'Ефремов ', N'Христофор', N' Владиславович', N'loginDEyzn2018', N'P1v24R')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (24, 2, N'Кошелев ', N'Ростислав', N'Куприянович', N'loginDEphn2018', N'F}jGsJ')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (25, 3, N'Галкина ', N'Тамара', N'Авксентьевна', N'loginDEdvk2018', N'NKNkup')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (26, 1, N'Журавлёва ', N'Вера', N'Арсеньевна', N'loginDEtld2018', N'c+CECK')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (27, 3, N'Савина ', N'Таисия', N'Глебовна', N'loginDEima2018', N'XK3sOA')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (28, 2, N'Иванов ', N'Яков', N'Мэлорович', N'loginDEyfe2018', N'4Bbzpa')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (29, 1, N'Лыткин ', N'Ким', N' Алексеевич', N'loginDEwqc2018', N'vRtAP*')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (30, 1, N'Логинов ', N'Федот', N'Святославович', N'loginDEgtt2018', N'7YD|BR')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (31, 1, N'Русакова ', N'Марина', N'Юлиановна', N'loginDEiwl2018', N'LhlmIl')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (32, 3, N'Константинов ', N'Пётр', N'Кондратович', N'loginDEyvi2018', N'22beR}')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (33, 2, N'Поляков ', N'Анатолий', N' Игоревич', N'loginDEtfz2018', N'uQY0ZQ')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (34, 3, N'Панфилова ', N'Василиса', N'Григорьевна', N'loginDEikb2018', N'*QkUxc')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (35, 2, N'Воробьёв ', N'Герман', N' Романович', N'loginDEdmi2018', N'HOGFbU')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (36, 3, N'Андреев ', N'Ростислав', N'Федосеевич', N'loginDEtlo2018', N'58Jxrg')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (37, 3, N'Бобров ', N'Агафон', N'Владимирович', N'loginDEsnd2018', N'lLHqZf')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (38, 3, N'Лапин ', N'Алексей', N'Витальевич', N'loginDEgno2018', N'4fqLiO')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (39, 2, N'Шестаков ', N'Авдей', N'Иванович', N'loginDEgnl2018', N'wdio{u')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (40, 2, N'Гаврилова ', N'Алина', N'Эдуардовна', N'loginDEzna2018', N'yz1iMB')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (41, 1, N'Жуков ', N'Юлиан', N'Валерьянович', N'loginDEsyh2018', N'&4jYGs')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (42, 2, N'Пономарёв ', N'Максим', N'Альвианович', N'loginDExex2018', N'rnh36{')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (43, 1, N'Зиновьева ', N'Мария', N'Лаврентьевна', N'loginDEdjm2018', N'KjI1JR')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (44, 2, N'Осипов ', N'Артём', N'Мэлорович', N'loginDEgup2018', N'36|KhF')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (45, 3, N'Лапин ', N'Вячеслав', N'Геласьевич', N'loginDEdat2018', N'ussd8Q')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (46, 2, N'Зуев ', N'Ириней', N'Вадимович', N'loginDEffj2018', N'cJP+HC')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (47, 1, N'Коновалова ', N'Агафья', N' Митрофановна', N'loginDEisp2018', N'dfz5Ii')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (48, 1, N'Исаев ', N'Дмитрий', N'Аристархович', N'loginDEfrp2018', N'6dcR|9')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (49, 2, N'Белозёрова ', N'Алевтина', N'Лаврентьевна', N'loginDEaee2018', N'5&qONH')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (50, 2, N'Самсонов ', N'Агафон', N'Максимович', N'loginDEthu2018', N'|0xWzV')
INSERT [dbo].[User] ([UserId], [RoleId], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (51, 2, N'Клюшанов', N'Кирилл', N'Станиславович', N'login123', N'123')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_ExamOrder_ExamPickupPoint] FOREIGN KEY([PickupPointId])
REFERENCES [dbo].[PickupPoint] ([PickupPointId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_ExamOrder_ExamPickupPoint]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_ExamOrder_ExamUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_ExamOrder_ExamUser]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK__ExamOrder__Order__403A8C7D] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([OrderId])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK__ExamOrder__Order__403A8C7D]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Product]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_ExamUser_ExamRole] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_ExamUser_ExamRole]
GO
