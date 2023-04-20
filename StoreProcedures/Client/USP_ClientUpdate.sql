USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_ClientUpdate]    Script Date: 20/04/2023 07:08:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[USP_ClientUpdate] (@ClientId INT,@ClientName VARCHAR(50),@ClientPhone VARCHAR(50),@ClientAddress VARCHAR(100))

AS
BEGIN
	UPDATE Client
		SET ClientName = @ClientName,
			ClientPhone = @ClientPhone,
			ClientAddress = @ClientAddress
			WHERE ClientId = @ClientId
	SET NOCOUNT ON;
END
GO


