USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_CategoryGetAll]    Script Date: 20/04/2023 07:03:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_CategoryGetAll] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT CategoryId,CategoryName 
		FROM Category
			ORDER BY CategoryName ASC;
END
GO


