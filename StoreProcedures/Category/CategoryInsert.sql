USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_CategoryInsert] (@CategoryName VARCHAR(150), @StoreId INT, @StoreName VARCHAR(150))

AS
BEGIN
	INSERT INTO Category
                        (CategoryName, StoreId, StoreName)
            VALUES     ( @CategoryName, @StoreId, @StoreName)
	SET NOCOUNT ON;
END
GO


