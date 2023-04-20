USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_ClientInsert]    Script Date: 20/04/2023 07:08:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_ClientInsert] (@ClientName VARCHAR(50),@ClientPhone VARCHAR(50),@ClientAddress VARCHAR(100))

AS
BEGIN
	INSERT INTO Client
                        (ClientName, ClientPhone, ClientAddress)
            VALUES     ( @ClientName, @ClientPhone, @ClientAddress)
	SET NOCOUNT ON;
END
GO


