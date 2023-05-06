USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_BuyerGetById]    Script Date: 06/05/2023 08:12:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_BuyerGetById] (@BuyerId INT)
AS
BEGIN
	SELECT TOP 1 * 
		FROM Buyer
			WHERE BuyerId = @BuyerId;
	SET NOCOUNT ON;
END
GO


