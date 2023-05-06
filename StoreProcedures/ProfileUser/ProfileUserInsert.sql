USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ProfileUserInsert] (@ProfileName VARCHAR(50), @StoreId INT, @StoreName VARCHAR(150))
AS
BEGIN
	INSERT INTO ProfileUser (ProfileName, StoreId, StoreName) VALUES (@ProfileName, @StoreId, @StoreName)
	SET NOCOUNT ON;
END
GO


