USE [NorthwindDM]
GO

/****** Object:  Table [dbo].[DimCustomer]    Script Date: 11/11/2021 22:12:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimCustomer](
	[customerDimKey] [int] IDENTITY(1,1) NOT NULL,
	[customerId] [nchar](10) NOT NULL,
	[customerName] [varchar](30) NOT NULL,
 CONSTRAINT [PK_DimCustomer] PRIMARY KEY CLUSTERED 
(
	[customerDimKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [NorthwindDM]
GO

/****** Object:  Table [dbo].[DimProduct]    Script Date: 11/11/2021 22:13:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimProduct](
	[productDimKey] [int] IDENTITY(1,1) NOT NULL,
	[productId] [int] NOT NULL,
	[productName] [varchar](50) NOT NULL,
	[category] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DimProducto] PRIMARY KEY CLUSTERED 
(
	[productDimKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [NorthwindDM]
GO

/****** Object:  Table [dbo].[DimTime]    Script Date: 11/11/2021 22:13:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimTime](
	[TimeDimKey] [int] IDENTITY(1,1) NOT NULL,
	[orderDate] [date] NOT NULL,
	[year] [int] NOT NULL,
	[month] [nchar](10) NOT NULL,
	[day] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TimeDimKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [NorthwindDM]
GO

/****** Object:  Table [dbo].[THOrder]    Script Date: 11/11/2021 22:13:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[THOrder](
	[productDimKey] [int] NOT NULL,
	[customerDimKey] [int] NOT NULL,
	[timeDimKey] [int] NOT NULL,
	[amount] [int] NOT NULL,
	[price] [float] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[THOrder]  WITH CHECK ADD  CONSTRAINT [FK_THOrder_DimCustomer] FOREIGN KEY([customerDimKey])
REFERENCES [dbo].[DimCustomer] ([customerDimKey])
GO

ALTER TABLE [dbo].[THOrder] CHECK CONSTRAINT [FK_THOrder_DimCustomer]
GO

ALTER TABLE [dbo].[THOrder]  WITH CHECK ADD  CONSTRAINT [FK_THOrder_DimProduct] FOREIGN KEY([productDimKey])
REFERENCES [dbo].[DimProduct] ([productDimKey])
GO

ALTER TABLE [dbo].[THOrder] CHECK CONSTRAINT [FK_THOrder_DimProduct]
GO

ALTER TABLE [dbo].[THOrder]  WITH CHECK ADD  CONSTRAINT [FK_THOrder_DimTime] FOREIGN KEY([timeDimKey])
REFERENCES [dbo].[DimTime] ([TimeDimKey])
GO

ALTER TABLE [dbo].[THOrder] CHECK CONSTRAINT [FK_THOrder_DimTime]
GO

