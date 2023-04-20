USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_CategoryDelete]    Script Date: 20/04/2023 07:02:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_CategoryDelete] (@CategoryId INT)
AS
BEGIN
	DELETE FROM Category
		WHERE CategoryId = @CategoryId
	SET NOCOUNT ON;
END
GO


