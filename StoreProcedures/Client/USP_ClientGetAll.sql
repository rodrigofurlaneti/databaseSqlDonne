USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_ClientGetAll]    Script Date: 20/04/2023 07:05:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ClientGetAll] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT ClientId,ClientName,ClientPhone,ClientAddress 
		FROM Client
			ORDER BY ClientName ASC;
END
GO


