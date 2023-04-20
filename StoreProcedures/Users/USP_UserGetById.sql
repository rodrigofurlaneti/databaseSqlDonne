USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_UserGetById]    Script Date: 20/04/2023 07:21:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_UserGetById] (@UserId INT)
AS
BEGIN
	SELECT TOP 1 * FROM Users
		WHERE UserId = @UserId;
	SET NOCOUNT ON;
END
GO


