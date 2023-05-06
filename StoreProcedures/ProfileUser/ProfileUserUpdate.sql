USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ProfileUserUpdate] (@ProfileId INT,
											@ProfileName VARCHAR(50),
											@StoreId INT,
											@StoreName VARCHAR(150))
AS
BEGIN
	UPDATE ProfileUser
    SET ProfileName = @ProfileName,
		StoreId = @StoreId,
		StoreName = @StoreName
        WHERE ProfileId = @ProfileId
	SET NOCOUNT ON;
END
GO


