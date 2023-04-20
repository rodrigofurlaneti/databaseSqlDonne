USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_StoreUpdate]    Script Date: 20/04/2023 07:18:55 ******/
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


