USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_ProfileUserGetAll]    Script Date: 20/04/2023 07:13:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ProfileUserGetAll] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT ProfileId, ProfileName
		FROM ProfileUser
			ORDER BY ProfileName ASC;
END
GO


