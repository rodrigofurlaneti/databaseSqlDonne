USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_UserGetAll]    Script Date: 20/04/2023 07:20:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_UserGetAll] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM Users;
END
GO


