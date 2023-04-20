USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_ProductGetAll]    Script Date: 20/04/2023 07:10:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ProductGetAll] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM Product;
END
GO


