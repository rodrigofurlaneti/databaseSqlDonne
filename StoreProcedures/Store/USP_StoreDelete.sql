USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_StoreDelete]    Script Date: 20/04/2023 07:15:48 ******/
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


