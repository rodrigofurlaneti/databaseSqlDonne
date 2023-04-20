USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_ClientGetById]    Script Date: 20/04/2023 07:06:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_ClientGetById] (@ClientId INT)
AS
BEGIN
	SELECT TOP 1 * FROM Client
		WHERE ClientId = @ClientId;
	SET NOCOUNT ON;
END
GO


