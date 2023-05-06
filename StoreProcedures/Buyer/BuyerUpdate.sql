USE [Donne]
GO

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


