USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_ClientDelete]    Script Date: 20/04/2023 07:05:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_ClientDelete] (@ClientId INT)
AS
BEGIN
	DELETE FROM Client
		WHERE ClientId = @ClientId
	SET NOCOUNT ON;
END
GO


