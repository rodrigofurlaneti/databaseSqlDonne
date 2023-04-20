USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_OrderInsert] (	@ClientId INT,
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
	INSERT INTO [dbo].[Order]	(ClientId, 
								ClientName, 
								ProductId, 
								ProductName, 
								Quantity,
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
					@Quantity,
					@DateInsert,
					@DateUpdate,
					@StoreId,
					@StoreName,
					@UserId,
					@UserName)
	SET NOCOUNT ON;
END
GO


