USE [E-commerceASP.NETWebform]
GO
/****** Object:  Table [dbo].[adminRegistration]    Script Date: 11/12/2024 8:16:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adminRegistration](
	[admin_id] [int] NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Phone] [bigint] NOT NULL,
	[Email] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_adminRegistration] PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EC_Account]    Script Date: 11/12/2024 8:16:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EC_Account](
	[account_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[acc_type] [nvarchar](30) NOT NULL,
	[acc_no] [nvarchar](30) NOT NULL,
	[acc_balance] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_EC_Account] PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EC_Bill]    Script Date: 11/12/2024 8:16:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EC_Bill](
	[bill_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[grand_total] [bigint] NOT NULL,
	[date] [date] NOT NULL,
	[bill_status] [nvarchar](20) NOT NULL,
	[orderdrop_id] [int] NOT NULL,
 CONSTRAINT [PK_EC_Bill] PRIMARY KEY CLUSTERED 
(
	[bill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EC_Cart]    Script Date: 11/12/2024 8:16:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EC_Cart](
	[cart_id] [int] NOT NULL,
	[product_Id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[totalPrice] [int] NOT NULL,
 CONSTRAINT [PK_EC_Cart] PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EC_Category]    Script Date: 11/12/2024 8:16:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EC_Category](
	[Category_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Category_Image] [nvarchar](max) NOT NULL,
	[Status] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_EC_Category] PRIMARY KEY CLUSTERED 
(
	[Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EC_Feedback]    Script Date: 11/12/2024 8:16:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EC_Feedback](
	[feedback_Id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[feedback_message] [nvarchar](max) NOT NULL,
	[replay_message] [nvarchar](max) NULL,
	[feedback_status] [int] NOT NULL,
 CONSTRAINT [PK_EC_Feedback] PRIMARY KEY CLUSTERED 
(
	[feedback_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EC_Login]    Script Date: 11/12/2024 8:16:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EC_Login](
	[Login_id] [int] IDENTITY(1,1) NOT NULL,
	[Reg_id] [int] NOT NULL,
	[Username] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[Logtype] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_EC_Login] PRIMARY KEY CLUSTERED 
(
	[Login_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EC_Order]    Script Date: 11/12/2024 8:16:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EC_Order](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[product_Id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[totalPrice] [bigint] NOT NULL,
	[order_status] [nvarchar](10) NOT NULL,
	[Drop_Id] [int] NOT NULL,
 CONSTRAINT [PK_EC_Order] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EC_Product]    Script Date: 11/12/2024 8:16:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EC_Product](
	[Product_id] [int] IDENTITY(1,1) NOT NULL,
	[Catgory_id] [int] NOT NULL,
	[Product_Name] [nvarchar](100) NOT NULL,
	[Product_Description] [nvarchar](max) NOT NULL,
	[Product_Price] [int] NOT NULL,
	[Product_Image] [nvarchar](max) NOT NULL,
	[Product_Stock] [int] NOT NULL,
	[Product_Status] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_EC_Product] PRIMARY KEY CLUSTERED 
(
	[Product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EC_UserRegistration]    Script Date: 11/12/2024 8:16:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EC_UserRegistration](
	[user_id] [int] NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Phone] [bigint] NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Pincode] [bigint] NOT NULL,
	[User_status] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_EC_UserRegistration] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[adminRegistration] ([admin_id], [Name], [Address], [Phone], [Email]) VALUES (1, N'Damin', N'mcity, palakad', 9976786567, N'damin@gmail.com')
GO
INSERT [dbo].[adminRegistration] ([admin_id], [Name], [Address], [Phone], [Email]) VALUES (2, N'Anan', N'kcity', 9967567898, N'anan@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[EC_Account] ON 
GO
INSERT [dbo].[EC_Account] ([account_id], [user_id], [acc_type], [acc_no], [acc_balance]) VALUES (1, 3, N'savings', N'12345', N'977748267')
GO
INSERT [dbo].[EC_Account] ([account_id], [user_id], [acc_type], [acc_no], [acc_balance]) VALUES (1004, 3, N'savings', N'121', N'1000')
GO
SET IDENTITY_INSERT [dbo].[EC_Account] OFF
GO
SET IDENTITY_INSERT [dbo].[EC_Category] ON 
GO
INSERT [dbo].[EC_Category] ([Category_Id], [Name], [Description], [Category_Image], [Status]) VALUES (1, N'Laptop', N'New Model Laptop
', N'~/Category_Images/laptp1.jpg', N'avialable')
GO
INSERT [dbo].[EC_Category] ([Category_Id], [Name], [Description], [Category_Image], [Status]) VALUES (2, N'Mobile', N'New Model Mobile', N'~/Category_Images/m1.jpg', N'avialable')
GO
INSERT [dbo].[EC_Category] ([Category_Id], [Name], [Description], [Category_Image], [Status]) VALUES (4, N'Smart Watch', N'New Model smart watch', N'~/Category_Images/smartwatch.jpg', N'avialable')
GO
INSERT [dbo].[EC_Category] ([Category_Id], [Name], [Description], [Category_Image], [Status]) VALUES (5, N'Shirts Men', N'Men new model  shirts', N'~/Category_Images/shirts.jpg', N'avialable')
GO
INSERT [dbo].[EC_Category] ([Category_Id], [Name], [Description], [Category_Image], [Status]) VALUES (6, N'Speaker', N'New Model Speaker', N'~/Category_Images/speaker.jpg', N'avialable')
GO
INSERT [dbo].[EC_Category] ([Category_Id], [Name], [Description], [Category_Image], [Status]) VALUES (7, N'Sun cream', N'Vitamin c Suncream', N'~/Category_Images/sun.jpg', N'avialable')
GO
INSERT [dbo].[EC_Category] ([Category_Id], [Name], [Description], [Category_Image], [Status]) VALUES (8, N'Airpods', N'New Model Airpods', N'~/Category_Images/airpods.jpg', N'avialable')
GO
INSERT [dbo].[EC_Category] ([Category_Id], [Name], [Description], [Category_Image], [Status]) VALUES (9, N'Tops Girls', N'New Model Tops', N'~/Category_Images/topss.jpg', N'avialable')
GO
INSERT [dbo].[EC_Category] ([Category_Id], [Name], [Description], [Category_Image], [Status]) VALUES (10, N'shoe', N'New Model shoes', N'~/Category_Images/s1.jpg', N'avialable')
GO
INSERT [dbo].[EC_Category] ([Category_Id], [Name], [Description], [Category_Image], [Status]) VALUES (11, N'HeadPhone', N'New Model HeadPhone', N'~/Category_Images/h1.jpg', N'avialable')
GO
SET IDENTITY_INSERT [dbo].[EC_Category] OFF
GO
SET IDENTITY_INSERT [dbo].[EC_Feedback] ON 
GO
INSERT [dbo].[EC_Feedback] ([feedback_Id], [user_id], [feedback_message], [replay_message], [feedback_status]) VALUES (1, 3, N'hai,product not avilable', NULL, 1)
GO
INSERT [dbo].[EC_Feedback] ([feedback_Id], [user_id], [feedback_message], [replay_message], [feedback_status]) VALUES (2, 3, N'I wanted to express my satisfaction with my recent shopping experience.', N'Thank you so much for sharing your positive feedback We are thrilled to hear that you had a satisfying shopping experience with us. We look forward to serving you again soon', 0)
GO
SET IDENTITY_INSERT [dbo].[EC_Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[EC_Login] ON 
GO
INSERT [dbo].[EC_Login] ([Login_id], [Reg_id], [Username], [Password], [Logtype]) VALUES (1, 1, N'admin', N'admin', N'admin')
GO
INSERT [dbo].[EC_Login] ([Login_id], [Reg_id], [Username], [Password], [Logtype]) VALUES (2, 2, N'eva', N'eva', N'user')
GO
INSERT [dbo].[EC_Login] ([Login_id], [Reg_id], [Username], [Password], [Logtype]) VALUES (3, 3, N'user', N'user', N'user')
GO
SET IDENTITY_INSERT [dbo].[EC_Login] OFF
GO
SET IDENTITY_INSERT [dbo].[EC_Product] ON 
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (1, 2, N'Redmi Note 7', N'4GB/64GB Mobile Phone', 5689, N'~/ImageProduct/p1.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (2, 2, N'Oneplus Nord CE4', N'Celadon Marble, 8GB RAM', 26998, N'~/ImageProduct/onleplus.jpg', 99, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (3, 2, N'Motorola Edge ', N'Hot Pink,8 GB RAM,128GB Storage', 23731, N'~/ImageProduct/Motorola.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (4, 2, N'Samsung Galaxy S24 Ultra 5G', N'Titanium Gray, 12GB, 512GB Storage', 139998, N'~/ImageProduct/samsung.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (5, 2, N'OPPO F27 Pro+ 5G', N'Midnight Navy, 8GB RAM, 256GB Storage', 29999, N'~/ImageProduct/oppo.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (6, 1, N'HP 	', N'HP 250 G7 Commercial Laptop 15.6 inch	', 53500, N'~/ImageProduct/hp.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (7, 1, N'Dell 15 Laptop', N'13th Gen Intel Core i5-1335U Processor/ 8GB/ 512GB', 48990, N'~/ImageProduct/lap2.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (8, 1, N'Lenovo IdeaPad', N'Lenovo IdeaPad 8GB/512GB SDD/Windows 11', 25500, N'~/ImageProduct/lap3.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (9, 1, N'Apple MacBook Air Laptop', N'Apple M1 chip, 13.3-inch/33.74 cm', 59990, N'~/ImageProduct/lap4.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (10, 1, N'Acer Nitro V Gaming Laptop', N'7735HS with RTX 4050 6 GB', 74990, N'~/ImageProduct/lap5.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (11, 4, N'M1 Smart Watch', N' Bluetooth Smart Watches for Android iOS', 425, N'~/ImageProduct/watch1.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (12, 4, N'Smart Watch for Kids ', N'Music Player HD Touch Screen 23 Games Camera Alarm ', 5848, N'~/ImageProduct/watch2.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (13, 4, N'SSN Global S9 Ultra ', N'Gold Edition with Sports Mode Golden SmartWatch', 1849, N'~/ImageProduct/watch3.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (14, 4, N'Noise Pulse 2 Max', N'550 NITS Brightness, Smart DND, 100 Sports Modes', 1099, N'~/ImageProduct/watch4.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (15, 4, N'Samsung Galaxy Watch4', N'44mm, Black, Compatible with Android only', 13999, N'~/ImageProduct/watch5.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (16, 5, N'LookMark Mens ', N'Cotton Blend Stitched Half Sleeve', 399, N'~/ImageProduct/men1.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (17, 5, N'Casual Shirt', N'Cotton Stylish Full Sleeves Shirt for Men', 576, N'~/ImageProduct/men2.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (18, 5, N'TAGDO Men', N'Regular Fit Casual Shirt ', 379, N'~/ImageProduct/men3.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (19, 5, N'LookMark Men', N'Printed Regular Fit Shirt Elias', 367, N'~/ImageProduct/men4.jpg', 98, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (20, 5, N'AGDO Men', N'hest Pocket Short Sleeve Shirt for Summer Outdoor Activities ', 399, N'~/ImageProduct/men5.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (21, 6, N'BL Partybox 110', N'Wireless Bluetooth Party Speaker', 22998, N'~/ImageProduct/speaker1.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (22, 6, N'JBL Flip 5', N' Signature Sound with Powerful Bass Radiator', 5999, N'~/ImageProduct/speaker2.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (23, 6, N'boAt Stone 352', N'Bluetooth Speaker with 10W RMS Stereo Sound, IPX7 Water Resistance', 1499, N'~/ImageProduct/speaker3.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (24, 6, N'JBL Flip 6', N' Pro Sound, Upto 12 Hours Playtime', 8999, N'~/ImageProduct/speaker4.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (25, 6, N'Marshall Acton III', N'Wired Connectivity Stereo Home Speakers with Bluetooth', 24998, N'~/ImageProduct/speeker5.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (26, 7, N'LAKMÉ Sun Expert', N' Lightweight, Non Sticky,100Ml', 344, N'~/ImageProduct/sun1.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (27, 7, N'Dot & Key Vitamin C +', N'Water-Light, UVA/UVB & Blue Light Protection ', 667, N'~/ImageProduct/sun2.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (28, 7, N'Lotus Herbals Safe Sun Sunscreen Cream', N'Waterproof Non-Greasy 50g', 123, N'~/ImageProduct/sun3.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (29, 7, N'Mamaearth Vitamin C', N' Turmeric for Sun Protection & Glow - 50 g', 292, N'~/ImageProduct/sun4.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (30, 7, N'Minimalist Sunscreen ', N'Lightweight with Multi-Vitamins ', 379, N'~/ImageProduct/sun5.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (31, 8, N'OnePlus Buds 3 ', N'Smart Adaptive Noise Cancellation,Hi-Res Sound Quality', 4699, N'~/ImageProduct/air1.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (32, 8, N'realme Buds', N'Ear Earbuds with 46dB Hybrid ANC, 360° Spatial Audio', 2199, N'~/ImageProduct/air2.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (33, 8, N'Mivi DuoPods i7 Earbuds', N'The 3rd Dimension of Sound with 3D Soundstage', 999, N'~/ImageProduct/air3.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (34, 8, N'Mivi SuperPods Dueto', N'Dual Drivers, 13mm Woofer, 6mm Tweeter, 3D Soundstage, 60H', 1699, N'~/ImageProduct/air4.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (35, 8, N'boAt Airdopes', N'rogear Open-Ear Ear Buds for Outdoor Sports Air Conduction Tech', 1599, N'~/ImageProduct/air5.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (36, 9, N'Leriya Fashion', N'Western Tops for Women Stylish', 402, N'~/ImageProduct/tops1.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (37, 9, N'CAVDIA Womens Cotton', N'Summer Winter Spring Long Sleeve V-Neck ', 449, N'~/ImageProduct/top2.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (38, 9, N'TOPLOT Printed Crop ', N' Top for Women with Short Sleeve', 349, N'~/ImageProduct/top3.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (39, 9, N'Women T Shirt Round Neck', N'Summer Short Sleeve Solid Top Womens ', 1578, N'~/ImageProduct/top4.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (40, 9, N'Womens Loose Cotton Short ', N'Top Round Neck Fashion Print T Shirt Tank ', 1234, N'~/ImageProduct/top5.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (41, 10, N'Puma  Sneaker', N'Puma Unisex Duke Sneaker', 1869, N'~/ImageProduct/shoes1.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (42, 10, N'Polo Sneaker', N'U.S. Polo Assn. Mens Sneaker', 2199, N'~/ImageProduct/shoes2.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (43, 10, N'ASIAN Mens TARZAN-11 ', N'Synthetic Upper Lightweight', 699, N'~/ImageProduct/shoes3.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (44, 10, N'Mens Shoe', N'new balance Mens 880 Running Shoe ', 8616, N'~/ImageProduct/shoes4.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (45, 10, N'Campus North Plus Sports', N'Running Walking Gym Shoes for Men', 1049, N'~/ImageProduct/shoes5.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (46, 11, N'BL Tune 770NC ', N'Wireless Over Ear ANC Headphones with Mic, Upto 70 Hrs Playtime', 5499, N'~/ImageProduct/head1.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (47, 11, N'boAt Nirvana 751 ', N'Hybrid Active Noise Cancelling Bluetooth Wireless ', 3499, N'~/ImageProduct/head2.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (48, 11, N'iClever Girls Headphones', N'Kids Wireless Headphones with 74/85/94dB Volume', 2324, N'~/ImageProduct/head3.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (49, 11, N'boAt Nirvana 751', N'ybrid Active Noise Cancelling, Up to 65 Hours Playtime', 3299, N'~/ImageProduct/head4.jpg', 100, N'avialable')
GO
INSERT [dbo].[EC_Product] ([Product_id], [Catgory_id], [Product_Name], [Product_Description], [Product_Price], [Product_Image], [Product_Stock], [Product_Status]) VALUES (50, 11, N'Noise Over-Ear Headphones', N'70H Playtime, ENC, 40mm Driver', 2499, N'~/ImageProduct/head5.jpg', 100, N'avialable')
GO
SET IDENTITY_INSERT [dbo].[EC_Product] OFF
GO
INSERT [dbo].[EC_UserRegistration] ([user_id], [Name], [Email], [Phone], [Address], [Pincode], [User_status]) VALUES (2, N'Eva', N'eva@gmail.com', 9656765645, N'tycity, muvattupuzha', 678876, N'active')
GO
INSERT [dbo].[EC_UserRegistration] ([user_id], [Name], [Email], [Phone], [Address], [Pincode], [User_status]) VALUES (3, N'Veni', N'venicv202119@gmail.com', 9656765467, N'cloud venius, melbone', 656678, N'active')
GO
