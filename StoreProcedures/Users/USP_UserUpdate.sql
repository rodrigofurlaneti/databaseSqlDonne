USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_UserUpdate]    Script Date: 20/04/2023 07:23:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[USP_UserUpdate]   (@UserId INT,
											@UserName VARCHAR(50),
											@UserPassword VARCHAR(50),
											@StoreId INT,
											@StoreName VARCHAR(50),
											@ProfileId INT,
											@ProfileName VARCHAR(50),
											@Status BIT)

AS
BEGIN
	UPDATE Users
    SET UserName = @UserName,
		UserPassword = @UserPassword,
		StoreId = @StoreId,
		StoreName = @StoreName,
		ProfileId = @ProfileId,
		ProfileName = @ProfileName,
		Status = @Status
        WHERE UserId = @UserId
	SET NOCOUNT ON;
END
GO


