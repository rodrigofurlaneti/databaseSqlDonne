USE [Donne]
GO

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

