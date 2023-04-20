USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_ProfileUserDelete]    Script Date: 20/04/2023 07:12:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ProfileUserDelete] (@ProfileId INT)
AS
BEGIN
	DELETE FROM ProfileUser
		WHERE ProfileId = @ProfileId
	SET NOCOUNT ON;
END
GO


