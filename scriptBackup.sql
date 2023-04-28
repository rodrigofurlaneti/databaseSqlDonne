USE [Donne]
GO
/****** Object:  User [adm]    Script Date: 28-Apr-23 7:37:57 AM ******/
CREATE USER [adm] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [IIS APPPOOL\DefaultAppPool]    Script Date: 28-Apr-23 7:37:57 AM ******/
CREATE USER [IIS APPPOOL\DefaultAppPool] FOR LOGIN [IIS APPPOOL\DefaultAppPool] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Buyer]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buyer](
	[BuyerId] [int] IDENTITY(1,1) NOT NULL,
	[BuyerName] [varchar](50) NULL,
	[BuyerPhone] [varchar](50) NULL,
	[BuyerAddress] [varchar](100) NULL,
	[StoreId] [int] NULL,
	[StoreName] [varchar](50) NULL,
 CONSTRAINT [PK_Buyer] PRIMARY KEY CLUSTERED 
(
	[BuyerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](150) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Commands]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Commands](
	[CommandsId] [int] IDENTITY(1,1) NOT NULL,
	[BuyerId] [int] NULL,
	[BuyerName] [varchar](50) NULL,
	[DateInsert] [datetime] NULL,
	[DateUpdate] [datetime] NULL,
	[StoreId] [int] NULL,
	[StoreName] [varchar](150) NULL,
	[UserId] [int] NULL,
	[UserName] [varchar](150) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Commands] PRIMARY KEY CLUSTERED 
(
	[CommandsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommandsOrder]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommandsOrder](
	[CommandsOrderId] [int] IDENTITY(1,1) NOT NULL,
	[CommandsId] [int] NULL,
	[OrderId] [int] NULL,
	[DateInsert] [datetime] NULL,
	[DateUpdate] [datetime] NULL,
	[StoreId] [int] NULL,
	[StoreName] [varchar](150) NULL,
	[UserId] [int] NULL,
	[UserName] [varchar](150) NULL,
 CONSTRAINT [PK_CommandsProduct] PRIMARY KEY CLUSTERED 
(
	[CommandsOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormOfPayment]    Script Date: 28-Apr-23 7:37:57 AM ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 28-Apr-23 7:37:57 AM ******/
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
	[Amount] [int] NULL,
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
/****** Object:  Table [dbo].[Payment]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentId] [int] IDENTITY(1,1) NOT NULL,
	[CommandsId] [int] NULL,
	[BuyerId] [int] NULL,
	[BuyerName] [varchar](50) NULL,
	[FormOfPaymentId] [int] NULL,
	[FormOfPaymentName] [varchar](50) NULL,
	[TotalValue] [varchar](50) NULL,
	[DateInsert] [datetime] NULL,
	[DateUpdate] [datetime] NULL,
	[StoreId] [int] NULL,
	[StoreName] [varchar](150) NULL,
	[UserId] [int] NULL,
	[UserName] [varchar](150) NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 28-Apr-23 7:37:57 AM ******/
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
/****** Object:  Table [dbo].[ProfileUser]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfileUser](
	[ProfileId] [int] IDENTITY(1,1) NOT NULL,
	[ProfileName] [varchar](50) NULL,
 CONSTRAINT [PK_ProfileUser] PRIMARY KEY CLUSTERED 
(
	[ProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[StoreId] [int] IDENTITY(1,1) NOT NULL,
	[StoreName] [varchar](150) NULL,
	[StoreCnpj] [varchar](50) NULL,
	[StoreAddress] [varchar](150) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
	[StoreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[UserPassword] [varchar](50) NULL,
	[StoreId] [int] NULL,
	[StoreName] [varchar](50) NULL,
	[ProfileId] [int] NULL,
	[ProfileName] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[USP_BuyerDelete]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_BuyerDelete] (@BuyerId INT)
AS
BEGIN
	DELETE FROM Buyer
		WHERE BuyerId = @BuyerId
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_BuyerGetAll]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_BuyerGetAll] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * 
		FROM Buyer
			ORDER BY BuyerName ASC;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_BuyerGetById]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_BuyerGetById] (@BuyerId INT)
AS
BEGIN
	SELECT TOP 1 * 
		FROM Buyer
			WHERE BuyerId = @BuyerId;
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_BuyerInsert]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_BuyerInsert] (	@BuyerName VARCHAR(50),
											@BuyerPhone VARCHAR(50),
											@BuyerAddress VARCHAR(100),
											@StoreId INT,
											@StoreName VARCHAR(50))

AS
BEGIN
	INSERT INTO Buyer	(BuyerName, 
						BuyerPhone, 
						BuyerAddress,
						StoreId,
						StoreName)
            VALUES	(@BuyerName, 
					@BuyerPhone, 
					@BuyerAddress,
					@StoreId,
					@StoreName)
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_BuyerUpdate]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_BuyerUpdate]	(@BuyerId INT,
											@BuyerName VARCHAR(50),
											@BuyerPhone VARCHAR(50),
											@BuyerAddress VARCHAR(100),
											@StoreId INT,
											@StoreName VARCHAR(50))

AS
BEGIN
	UPDATE Buyer
		SET BuyerName = @BuyerName,
			BuyerPhone = @BuyerPhone,
			BuyerAddress = @BuyerAddress,
			StoreId = @StoreId,
			@StoreName = @StoreName
				WHERE BuyerId = @BuyerId
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_CategoryDelete]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_CategoryDelete] (@CategoryId INT)
AS
BEGIN
	DELETE FROM Category
		WHERE CategoryId = @CategoryId
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_CategoryGetAll]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_CategoryGetAll] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT CategoryId,CategoryName 
		FROM Category
			ORDER BY CategoryName ASC;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_CategoryGetById]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_CategoryGetById] (@CategoryId INT)
AS
BEGIN
	SELECT TOP 1 * FROM Category
		WHERE CategoryId = @CategoryId;
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_CategoryInsert]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_CategoryInsert] (@CategoryName VARCHAR(150))

AS
BEGIN
	INSERT INTO Category
                        (CategoryName)
            VALUES     ( @CategoryName)
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_CategoryUpdate]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_CategoryUpdate] (@CategoryId INT,
											@CategoryName VARCHAR(150))

AS
BEGIN
	UPDATE Category
    SET CategoryName = @CategoryName
        WHERE CategoryId = @CategoryId
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_CommandsDelete]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_CommandsDelete] (@CommandsId INT)
AS
BEGIN
	DELETE FROM Commands
		WHERE CommandsId = @CommandsId
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_CommandsGetAll]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_CommandsGetAll] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * 
		FROM Commands
			ORDER BY CommandsId ASC;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_CommandsGetById]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_CommandsGetById] (@CommandsId INT)
AS
BEGIN
	SELECT TOP 1 * 
		FROM Commands
			WHERE CommandsId = @CommandsId;
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_CommandsInsert]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_CommandsInsert] (@BuyerId INT,
											@BuyerName VARCHAR(50),
											@DateInsert DATETIME,
											@DateUpdate DATETIME,
											@StoreId INT,
											@StoreName VARCHAR(150),
											@UserId INT,
											@UserName VARCHAR(150),
											@Status BIT)

AS
BEGIN
	INSERT INTO Commands (BuyerId,
						 BuyerName,
						 DateInsert,
						 DateUpdate,
						 StoreId,
						 StoreName,
						 UserId,
						 UserName,
						 Status)
            VALUES (@BuyerId,
					@BuyerName,
					@DateInsert,
					@DateUpdate,
					@StoreId,
					@StoreName,
					@UserId,
					@UserName,
					@Status)
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_CommandsInsertReturnId]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_CommandsInsertReturnId] (@BuyerId INT,
											@BuyerName VARCHAR(50),
											@DateInsert DATETIME,
											@DateUpdate DATETIME,
											@StoreId INT,
											@StoreName VARCHAR(150),
											@UserId INT,
											@UserName VARCHAR(150),
											@Status BIT,
											@Identity INT OUTPUT)

AS
BEGIN
	INSERT INTO Commands (BuyerId,
						 BuyerName,
						 DateInsert,
						 DateUpdate,
						 StoreId,
						 StoreName,
						 UserId,
						 UserName,
						 Status)
            VALUES (@BuyerId,
					@BuyerName,
					@DateInsert,
					@DateUpdate,
					@StoreId,
					@StoreName,
					@UserId,
					@UserName,
					@Status)
	SET NOCOUNT ON;
	SELECT @Identity = SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[USP_CommandsOrderDelete]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_CommandsOrderDelete] (@CommandsOrderId INT)
AS
BEGIN
	DELETE FROM CommandsOrder
		WHERE CommandsOrderId = @CommandsOrderId
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_CommandsOrderGetAll]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_CommandsOrderGetAll] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * 
		FROM CommandsOrder
			ORDER BY CommandsOrderId ASC;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_CommandsOrderGetById]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_CommandsOrderGetById] (@CommandsOrderId INT)
AS
BEGIN
	SELECT TOP 1 * 
		FROM CommandsOrder
			WHERE CommandsOrderId = @CommandsOrderId;
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_CommandsOrderInsert]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_CommandsOrderInsert] (@CommandsId INT,
												@OrderId INT,
												@DateInsert DATETIME,
												@DateUpdate DATETIME,
												@StoreId INT,
												@StoreName VARCHAR(150),
												@UserId INT,
												@UserName VARCHAR(150))

AS
BEGIN
	INSERT INTO CommandsOrder (CommandsId,
								OrderId,
							 DateInsert,
							 DateUpdate,
							 StoreId,
							 StoreName,
							 UserId,
							 UserName)
            VALUES (@CommandsId,
					@OrderId,
					@DateInsert,
					@DateUpdate,
					@StoreId,
					@StoreName,
					@UserId,
					@UserName)
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_CommandsOrderUpdate]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_CommandsOrderUpdate] (@CommandsOrderId INT,
									@CommandsId INT,
									@OrderId INT,
									@DateInsert DATETIME,
									@DateUpdate DATETIME,
									@StoreId INT,
									@StoreName VARCHAR(150),
									@UserId INT,
									@UserName VARCHAR(150))
	AS
		BEGIN
			UPDATE CommandsOrder
			SET CommandsId = @CommandsId,
				OrderId = @OrderId,
				DateInsert = @DateInsert,
				DateUpdate = @DateUpdate,
				StoreId = @StoreId,
				StoreName = @StoreName,
				UserId = @UserId,
				UserName = @UserName
					WHERE CommandsOrderId = @CommandsOrderId
			SET NOCOUNT ON;
		END
GO
/****** Object:  StoredProcedure [dbo].[USP_CommandsUpdate]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_CommandsUpdate] (@CommandsId INT,
									@BuyerId INT,
									@BuyerName VARCHAR(150),
									@DateInsert DATETIME,
									@DateUpdate DATETIME,
									@StoreId INT,
									@StoreName VARCHAR(150),
									@UserId INT,
									@UserName VARCHAR(150),
									@Status BIT)
	AS
		BEGIN
			UPDATE Commands
			SET BuyerId = @BuyerId,
				BuyerName = @BuyerName,
				DateInsert = @DateInsert,
				DateUpdate = @DateUpdate,
				StoreId = @StoreId,
				StoreName = @StoreName,
				UserId = @UserId,
				UserName = @UserName,
				Status = @Status
					WHERE CommandsId = @CommandsId
			SET NOCOUNT ON;
		END
GO
/****** Object:  StoredProcedure [dbo].[USP_FormOfPaymentDelete]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_FormOfPaymentDelete] (@FormOfPaymentId INT)
AS
BEGIN
	DELETE FROM FormOfPayment
		WHERE FormOfPaymentId = @FormOfPaymentId
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_FormOfPaymentGetAll]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_FormOfPaymentGetAll] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * 
		FROM FormOfPayment
			ORDER BY FormOfPaymentId ASC;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_FormOfPaymentGetById]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_FormOfPaymentGetById] (@FormOfPaymentId INT)
AS
BEGIN
	SELECT TOP 1 * 
		FROM FormOfPayment
			WHERE FormOfPaymentId = @FormOfPaymentId;
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_FormOfPaymentInsert]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_FormOfPaymentInsert] (@FormOfPaymentName VARCHAR(50),
												@TotalValue VARCHAR(50),
												@DateInsert DATETIME,
												@DateUpdate DATETIME,
												@StoreId INT,
												@StoreName VARCHAR(150),
												@UserId INT,
												@UserName VARCHAR(150))

AS
BEGIN
	INSERT INTO FormOfPayment (FormOfPaymentName,
						DateInsert,
						DateUpdate,
						StoreId,
						StoreName,
						UserId,
						UserName)

            VALUES (@FormOfPaymentName,
						@DateInsert,
						@DateUpdate,
						@StoreId,
						@StoreName,
						@UserId,
						@UserName)
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_FormOfPaymentUpdate]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_FormOfPaymentUpdate] (@FormOfPaymentId INT,
									@FormOfPaymentName VARCHAR(50),
									@DateInsert DATETIME,
									@DateUpdate DATETIME,
									@StoreId INT,
									@StoreName VARCHAR(150),
									@UserId INT,
									@UserName VARCHAR(150))
	AS
		BEGIN
			UPDATE FormOfPayment
			SET FormOfPaymentName = @FormOfPaymentName,
				DateInsert = @DateInsert,
				DateUpdate = @DateUpdate,
				StoreId = @StoreId,
				StoreName = @StoreName,
				UserId = @UserId,
				UserName = @UserName
					WHERE FormOfPaymentId = @FormOfPaymentId
			SET NOCOUNT ON;
		END
GO
/****** Object:  StoredProcedure [dbo].[USP_OrderDelete]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_OrderDelete] (@OrderId INT)
AS
BEGIN
	DELETE FROM [dbo].[Order]
		WHERE OrderId = @OrderId
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_OrderGetAll]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_OrderGetAll] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * 
		FROM [dbo].[Order]
			ORDER BY OrderId ASC;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_OrderGetById]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_OrderGetById] (@OrderId INT)
AS
BEGIN
	SELECT TOP 1 * FROM [dbo].[Order]
		WHERE OrderId = @OrderId;
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_OrderInsert]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[USP_OrderInsert] (	@ClientId INT,
											@ClientName VARCHAR(150), 
											@ProductId INT, 
											@ProductName VARCHAR(150), 
											@Amount INT,
											@DateInsert DATETIME,
											@DateUpdate DATETIME,
											@StoreId INT,
											@StoreName VARCHAR(150),
											@UserId INT,
											@UserName VARCHAR(150))

AS
BEGIN
	INSERT INTO [dbo].[Order]	(ClientId, 
								ClientName, 
								ProductId, 
								ProductName, 
								Amount,
								DateInsert,
								DateUpdate,
								StoreId,
								StoreName,
								UserId,
								UserName)								
            VALUES	(@ClientId, 
					@ClientName, 
					@ProductId, 
					@ProductName, 
					@Amount,
					@DateInsert,
					@DateUpdate,
					@StoreId,
					@StoreName,
					@UserId,
					@UserName)
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_OrderUpdate]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_OrderUpdate] (@OrderId INT,
										 @ClientId INT,
										 @ClientName VARCHAR(150),
										 @ProductId INT,
										 @ProductName VARCHAR(150),
										 @Amount INT,
										 @DateInsert DATETIME,
										 @DateUpdate DATETIME,
										 @StoreId INT,
										 @StoreName VARCHAR(150),
										 @UserId INT,
										 @UserName VARCHAR(150))

AS
BEGIN
	UPDATE [dbo].[Order]
    SET ClientId = @ClientId,
        ClientName = @ClientName,
        ProductId = @ProductId,
        ProductName = @ProductName,
		Amount = @Amount,
		DateInsert = @DateInsert,
		DateUpdate = @DateUpdate,
		StoreId = @StoreId,
		StoreName = @StoreName,
		UserId = @UserId,
		UserName = @UserName
			WHERE OrderId = @OrderId
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_PaymentDelete]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_PaymentDelete] (@PaymentId INT)
AS
BEGIN
	DELETE FROM Payment
		WHERE PaymentId = @PaymentId
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_PaymentGetAll]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_PaymentGetAll] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * 
		FROM Payment
			ORDER BY PaymentId ASC;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_PaymentGetById]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_PaymentGetById] (@PaymentId INT)
AS
BEGIN
	SELECT TOP 1 * 
		FROM Payment
			WHERE PaymentId = @PaymentId;
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_PaymentInsert]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_PaymentInsert] (@CommandsId INT,
												@BuyerId INT,
												@BuyerName VARCHAR(50),
												@FormOfPaymentId INT,
												@FormOfPaymentName VARCHAR(50),
												@TotalValue VARCHAR(50),
												@DateInsert DATETIME,
												@DateUpdate DATETIME,
												@StoreId INT,
												@StoreName VARCHAR(150),
												@UserId INT,
												@UserName VARCHAR(150))

AS
BEGIN
	INSERT INTO Payment (CommandsId,
						BuyerId,
						BuyerName,
						FormOfPaymentId,
						FormOfPaymentName,
						TotalValue,
						DateInsert,
						DateUpdate,
						StoreId,
						StoreName,
						UserId,
						UserName)


            VALUES (@CommandsId,
					@BuyerId,
						@BuyerName,
						@FormOfPaymentId,
						@FormOfPaymentName,
						@TotalValue,
						@DateInsert,
						@DateUpdate,
						@StoreId,
						@StoreName,
						@UserId,
						@UserName)
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_PaymentUpdate]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_PaymentUpdate] (@PaymentId INT,
									@CommandsId INT,
									@BuyerId INT,
									@BuyerName VARCHAR(50),
									@FormOfPaymentId INT,
									@FormOfPaymentName VARCHAR(50),
									@TotalValue VARCHAR(50),
									@DateInsert DATETIME,
									@DateUpdate DATETIME,
									@StoreId INT,
									@StoreName VARCHAR(150),
									@UserId INT,
									@UserName VARCHAR(150))
	AS
		BEGIN
			UPDATE Payment
			SET CommandsId = @CommandsId,
				BuyerId = @BuyerId,
				BuyerName = @BuyerName,
				FormOfPaymentId = @FormOfPaymentId,
				FormOfPaymentName = @FormOfPaymentName,
				TotalValue = @TotalValue,
				DateInsert = @DateInsert,
				DateUpdate = @DateUpdate,
				StoreId = @StoreId,
				StoreName = @StoreName,
				UserId = @UserId,
				UserName = @UserName
					WHERE PaymentId = @PaymentId
			SET NOCOUNT ON;
		END
GO
/****** Object:  StoredProcedure [dbo].[USP_ProductDelete]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ProductDelete] (@ProductId INT)
AS
BEGIN
	DELETE FROM Product
		WHERE ProductId = @ProductId
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_ProductGetAll]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ProductGetAll] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM Product;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_ProductGetById]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ProductGetById] (@ProductId INT)
AS
BEGIN
	SELECT TOP 1 * FROM Product
		WHERE ProductId = @ProductId;
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_ProductInsert]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_ProductInsert] (@ProductName VARCHAR(150),
									@CategoryId INT,
									@CategoryName VARCHAR(150),
									@CostPrice VARCHAR(50),
									@SalePrice VARCHAR(50),
									@QuantityStock INT,
									@MinimumStockQuantity INT,
									@TotalValueCostOfInventory VARCHAR(50),
									@TotalValueSaleStock VARCHAR(50),
									@ImagePath VARCHAR(150),
									@DateInsert DATETIME,
									@DateUpdate DATETIME,
									@NeedToPrint BIT,
									@StoreId INT,
									@StoreName VARCHAR(150),
									@UserId INT,
									@UserName VARCHAR(150),
									@Status BIT)

AS
BEGIN
	INSERT INTO Product
                        (ProductName,
                         CategoryId,
                         CategoryName,
                         CostPrice,
						 SalePrice,
						 QuantityStock,
						 MinimumStockQuantity,
						 TotalValueCostOfInventory,
						 TotalValueSaleStock,
						 ImagePath,
						 DateInsert,
						 DateUpdate,
						 NeedToPrint,
						 StoreId,
                         StoreName,
                         UserId,
                         UserName,
  					 Status)
            VALUES     ( @ProductName,
                         @CategoryId,
                         @CategoryName,
                         @CostPrice,
                         @SalePrice,
						 @QuantityStock,
						 @MinimumStockQuantity,
						 @TotalValueCostOfInventory,
						 @TotalValueSaleStock,
						 @ImagePath,
						 @DateInsert,
						 @DateUpdate,
						 @NeedToPrint,
						@StoreId,
						@StoreName,
						@UserId,
						@UserName,
						@Status)
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_ProductUpdate]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_ProductUpdate] (@ProductId INT,
									@ProductName VARCHAR(150),
									@CategoryId INT,
									@CategoryName VARCHAR(150),
									@CostPrice VARCHAR(50),
									@SalePrice VARCHAR(50),
									@QuantityStock INT,
									@MinimumStockQuantity INT,
									@TotalValueCostOfInventory VARCHAR(50),
									@TotalValueSaleStock VARCHAR(50),
									@ImagePath VARCHAR(150),
									@DateInsert DATETIME,
									@DateUpdate DATETIME,
									@NeedToPrint BIT,
									@StoreId INT,
									@StoreName VARCHAR(150),
									@UserId INT,
									@UserName VARCHAR(150),
									@Status BIT)

AS
BEGIN
	UPDATE Product
    SET ProductName = @ProductName,
		CategoryId = @CategoryId,
        CategoryName = @CategoryName,
        CostPrice = @CostPrice,
		SalePrice = @SalePrice,
		QuantityStock = @QuantityStock,
		MinimumStockQuantity = @MinimumStockQuantity,
		TotalValueCostOfInventory = @TotalValueCostOfInventory,
		TotalValueSaleStock = @TotalValueSaleStock,
		ImagePath = @ImagePath,
		DateInsert = @DateInsert,
		DateUpdate = @DateUpdate,
		NeedToPrint = @NeedToPrint,
		StoreId = @StoreId,
		StoreName = @StoreName,
		UserId = @UserId,
		UserName = @UserName,
		Status = @Status
			WHERE ProductId = @ProductId
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_ProfileUserDelete]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ProfileUserDelete] (@ProfileId INT)
AS
BEGIN
	DELETE FROM ProfileUser
		WHERE ProfileId = @ProfileId
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_ProfileUserGetAll]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ProfileUserGetAll] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT ProfileId, ProfileName
		FROM ProfileUser
			ORDER BY ProfileName ASC;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_ProfileUserGetById]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ProfileUserGetById] (@ProfileId INT)
AS
BEGIN
	SELECT TOP 1 * FROM ProfileUser
		WHERE ProfileId = @ProfileId;
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_ProfileUserInsert]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ProfileUserInsert] (@ProfileName VARCHAR(50))
AS
BEGIN
	INSERT INTO ProfileUser (ProfileName) VALUES (@ProfileName)
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_ProfileUserUpdate]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ProfileUserUpdate] (@ProfileId INT,
											@ProfileName VARCHAR(50))
AS
BEGIN
	UPDATE ProfileUser
    SET ProfileName = @ProfileName
        WHERE ProfileId = @ProfileId
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_StoreDelete]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_StoreDelete] (@StoreId INT)
AS
BEGIN
	DELETE FROM Store
		WHERE StoreId = @StoreId
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_StoreGetAll]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_StoreGetAll] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM Store;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_StoreGetById]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_StoreGetById] (@StoreId INT)
AS
BEGIN
	SELECT TOP 1 * FROM Store
		WHERE StoreId = @StoreId;
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_StoreInsert]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_StoreInsert] (@StoreName VARCHAR(150),
										  @StoreCnpj VARCHAR(50),
										  @StoreAddress VARCHAR(150),
										  @Status BIT)

AS
BEGIN
	INSERT INTO Store (StoreName, StoreCnpj, StoreAddress, Status)
            VALUES     ( @StoreName, @StoreCnpj, @StoreAddress, @Status)
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_StoreUpdate]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_StoreUpdate]   (@StoreId INT,
											@StoreName VARCHAR(150),
											@StoreCnpj VARCHAR(50),
											@StoreAddress VARCHAR(150),
											@Status BIT)

AS
BEGIN
	UPDATE Store
    SET StoreName = @StoreName,
		StoreCnpj = @StoreCnpj,
		StoreAddress = @StoreAddress,
		Status = @Status
        WHERE StoreId = @StoreId
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_UserGetAll]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_UserGetAll] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM Users;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_UserGetById]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_UserGetById] (@UserId INT)
AS
BEGIN
	SELECT TOP 1 * FROM Users
		WHERE UserId = @UserId;
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_UserGetByName]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_UserGetByName] (@UserName VARCHAR(50))
AS
BEGIN
	SELECT TOP 1 * FROM Users
		WHERE UserName = @UserName;
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_UserInsert]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_UserInsert] (@UserName VARCHAR(50),
										  @UserPassword VARCHAR(50),
										  @StoreId INT,
										  @StoreName VARCHAR(50),
										  @ProfileId INT,
										  @ProfileName VARCHAR(50),
										  @Status BIT)
AS
BEGIN
	INSERT INTO Users (UserName, UserPassword, StoreId, StoreName, ProfileId, ProfileName, Status)
            VALUES     (@UserName, @UserPassword, @StoreId, @StoreName, @ProfileId, @ProfileName, @Status)
	SET NOCOUNT ON;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_UserUpdate]    Script Date: 28-Apr-23 7:37:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[USP_UserUpdate]   (@UserId INT,
											@UserName VARCHAR(50),
											@UserPassword VARCHAR(50),
											@StoreId INT,
											@StoreName VARCHAR(50),
											@ProfileId INT,
											@ProfileName VARCHAR(50),
											@Status BIT)

AS
BEGIN
	UPDATE Users
    SET UserName = @UserName,
		UserPassword = @UserPassword,
		StoreId = @StoreId,
		StoreName = @StoreName,
		ProfileId = @ProfileId,
		ProfileName = @ProfileName,
		Status = @Status
        WHERE UserId = @UserId
	SET NOCOUNT ON;
END
GO
