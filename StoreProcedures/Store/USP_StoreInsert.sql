USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_StoreInsert]    Script Date: 20/04/2023 07:18:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_StoreInsert] (@StoreName VARCHAR(150),
										  @StoreCnpj VARCHAR(50),
										  @StoreAddress VARCHAR(150),
										  @Status BIT)

AS
BEGIN
	INSERT INTO Store (StoreName, StoreCnpj, StoreAddress, Status)
            VALUES     ( @StoreName, @StoreCnpj, @StoreAddress, @Status)
	SET NOCOUNT ON;
END
GO


