USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_UserGetByName]    Script Date: 20/04/2023 07:22:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_UserGetByName] (@UserName VARCHAR(50))
AS
BEGIN
	SELECT TOP 1 * FROM Users
		WHERE UserName = @UserName;
	SET NOCOUNT ON;
END
GO


