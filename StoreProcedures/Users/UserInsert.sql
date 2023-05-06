USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_UserInsert] (@UserName VARCHAR(50),
										  @UserPassword VARCHAR(50),
										  @StoreId INT,
										  @StoreName VARCHAR(50),
										  @ProfileId INT,
										  @ProfileName VARCHAR(50),
										  @Status BIT)
AS
BEGIN
	INSERT INTO Users (UserName, UserPassword, StoreId, StoreName, ProfileId, ProfileName, Status)
            VALUES     (@UserName, @UserPassword, @StoreId, @StoreName, @ProfileId, @ProfileName, @Status)
	SET NOCOUNT ON;
END
GO


