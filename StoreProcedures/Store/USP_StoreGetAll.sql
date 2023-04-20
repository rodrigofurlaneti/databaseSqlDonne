USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_StoreGetAll]    Script Date: 20/04/2023 07:16:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_StoreGetAll] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM Store;
END
GO


