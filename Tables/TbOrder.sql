USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NULL,
	[ClientName] [varchar](150) NULL,
	[ProductId] [int] NULL,
	[ProductName] [varchar](150) NULL,
	[Quantity] [int] NULL,
	[DateInsert] [datetime] NULL,
	[DateUpdate] [datetime] NULL,
	[StoreId] [int] NULL,
	[StoreName] [varchar](150) NULL,
	[UserId] [int] NULL,
	[UserName] [varchar](150) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


