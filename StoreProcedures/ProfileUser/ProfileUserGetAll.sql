USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ProfileUserGetAll] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT *
		FROM ProfileUser
			ORDER BY ProfileName ASC;
END
GO


