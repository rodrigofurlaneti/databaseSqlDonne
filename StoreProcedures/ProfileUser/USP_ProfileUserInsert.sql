USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_ProfileUserInsert]    Script Date: 20/04/2023 07:14:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ProfileUserInsert] (@ProfileName VARCHAR(50))
AS
BEGIN
	INSERT INTO ProfileUser (ProfileName) VALUES (@ProfileName)
	SET NOCOUNT ON;
END
GO


