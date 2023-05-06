USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_OrderInsert] (	@CommandsId INT,
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
	INSERT INTO [dbo].[Order]	(CommandsId,
								ProductId, 
								ProductName, 
								Amount,
								DateInsert,
								DateUpdate,
								StoreId,
								StoreName,
								UserId,
								UserName)								
            VALUES	(@CommandsId,
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


