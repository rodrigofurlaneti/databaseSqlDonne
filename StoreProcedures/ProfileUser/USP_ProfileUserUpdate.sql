USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_ProfileUserUpdate]    Script Date: 20/04/2023 07:14:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ProfileUserUpdate] (@ProfileId INT,
											@ProfileName VARCHAR(50))
AS
BEGIN
	UPDATE ProfileUser
    SET ProfileName = @ProfileName
        WHERE ProfileId = @ProfileId
	SET NOCOUNT ON;
END
GO


