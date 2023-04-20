USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_UserDelete]    Script Date: 20/04/2023 07:19:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_UserDelete] (@UserId INT)
AS
BEGIN
	DELETE FROM Users
		WHERE UserId = @UserId
	SET NOCOUNT ON;
END
GO


