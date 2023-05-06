USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_CommandsDelete] (@CommandsId INT)
AS
BEGIN
	DELETE FROM Commands
		WHERE CommandsId = @CommandsId
	SET NOCOUNT ON;
END
GO

