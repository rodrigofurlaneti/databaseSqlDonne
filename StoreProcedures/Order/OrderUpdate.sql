USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_OrderUpdate] (@OrderId INT,
										 @CommandsId INT,
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
    SET CommandsId = @CommandsId,
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


