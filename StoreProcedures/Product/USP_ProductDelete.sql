USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_ProductDelete]    Script Date: 20/04/2023 07:09:27 ******/
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


