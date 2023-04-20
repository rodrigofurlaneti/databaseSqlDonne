USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_StoreGetById]    Script Date: 20/04/2023 07:17:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_StoreGetById] (@StoreId INT)
AS
BEGIN
	SELECT TOP 1 * FROM Store
		WHERE StoreId = @StoreId;
	SET NOCOUNT ON;
END
GO


