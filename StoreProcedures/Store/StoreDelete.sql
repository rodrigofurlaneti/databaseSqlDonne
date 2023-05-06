USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_StoreDelete] (@StoreId INT)
AS
BEGIN
	DELETE FROM Store
		WHERE StoreId = @StoreId
	SET NOCOUNT ON;
END
GO

