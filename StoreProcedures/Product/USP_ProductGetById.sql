USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_ProductGetById]    Script Date: 20/04/2023 07:10:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ProductGetById] (@ProductId INT)
AS
BEGIN
	SELECT TOP 1 * FROM Product
		WHERE ProductId = @ProductId;
	SET NOCOUNT ON;
END
GO


