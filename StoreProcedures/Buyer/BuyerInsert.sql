USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_BuyerInsert]    Script Date: 06/05/2023 08:13:13 ******/
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


