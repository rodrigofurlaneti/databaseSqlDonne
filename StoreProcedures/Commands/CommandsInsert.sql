USE [Donne]
GO

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


