USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_CategoryUpdate]    Script Date: 20/04/2023 07:04:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_CategoryUpdate] (@CategoryId INT,
											@CategoryName VARCHAR(150))

AS
BEGIN
	UPDATE Category
    SET CategoryName = @CategoryName
        WHERE CategoryId = @CategoryId
	SET NOCOUNT ON;
END
GO


