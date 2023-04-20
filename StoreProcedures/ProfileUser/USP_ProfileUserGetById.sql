USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_ProfileUserGetById]    Script Date: 20/04/2023 07:13:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ProfileUserGetById] (@ProfileId INT)
AS
BEGIN
	SELECT TOP 1 * FROM ProfileUser
		WHERE ProfileId = @ProfileId;
	SET NOCOUNT ON;
END
GO


