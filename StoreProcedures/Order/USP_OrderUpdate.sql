USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_OrderUpdate] (@OrderId INT,
										 @ClientId INT,
										 @ClientName VARCHAR(150),
										 @ProductId INT,
										 @ProductName VARCHAR(150),
										 @Quantity INT,
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
		Quantity = @Quantity,
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


