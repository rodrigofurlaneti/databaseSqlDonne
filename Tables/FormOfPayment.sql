USE [Donne]
GO

/****** Object:  Table [dbo].[FormOfPayment]    Script Date: 06/05/2023 08:08:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FormOfPayment](
	[FormOfPaymentId] [int] IDENTITY(1,1) NOT NULL,
	[FormOfPaymentName] [varchar](50) NULL,
	[DateInsert] [datetime] NULL,
	[DateUpdate] [datetime] NULL,
	[StoreId] [int] NULL,
	[StoreName] [varchar](150) NULL,
	[UserId] [int] NULL,
	[UserName] [varchar](150) NULL,
 CONSTRAINT [PK_FormOfPayment] PRIMARY KEY CLUSTERED 
(
	[FormOfPaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


