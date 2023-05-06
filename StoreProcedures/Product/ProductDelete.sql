USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ProductDelete] (@ProductId INT)
AS
BEGIN
	DELETE FROM Product
		WHERE ProductId = @ProductId
	SET NOCOUNT ON;
END
GO


