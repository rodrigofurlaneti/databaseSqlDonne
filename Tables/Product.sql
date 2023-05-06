USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](150) NULL,
	[CategoryId] [int] NULL,
	[CategoryName] [varchar](150) NULL,
	[CostPrice] [varchar](50) NULL,
	[SalePrice] [varchar](50) NULL,
	[QuantityStock] [int] NULL,
	[MinimumStockQuantity] [int] NULL,
	[TotalValueCostOfInventory] [varchar](50) NULL,
	[TotalValueSaleStock] [varchar](50) NULL,
	[DateInsert] [datetime] NULL,
	[DateUpdate] [datetime] NULL,
	[NeedToPrint] [bit] NULL,
	[Status] [bit] NULL,
	[StoreId] [int] NULL,
	[StoreName] [varchar](150) NULL,
	[UserId] [int] NULL,
	[UserName] [varchar](150) NULL,
	[ImagePath] [varchar](150) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


