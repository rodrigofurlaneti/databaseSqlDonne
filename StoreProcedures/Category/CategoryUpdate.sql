USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_CategoryUpdate] (@CategoryId INT,
											@CategoryName VARCHAR(150),
											@StoreId INT,
											@StoreName VARCHAR(150))

AS
BEGIN
	UPDATE Category
    SET CategoryName = @CategoryName,
		StoreId = @StoreId,
		StoreName = @StoreName
        WHERE CategoryId = @CategoryId
	SET NOCOUNT ON;
END
GO


