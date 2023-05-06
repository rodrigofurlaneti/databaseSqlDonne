USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_FormOfPaymentInsert] (@FormOfPaymentName VARCHAR(50),
												@DateInsert DATETIME,
												@DateUpdate DATETIME,
												@StoreId INT,
												@StoreName VARCHAR(150),
												@UserId INT,
												@UserName VARCHAR(150))

AS
BEGIN
	INSERT INTO FormOfPayment (FormOfPaymentName,
						DateInsert,
						DateUpdate,
						StoreId,
						StoreName,
						UserId,
						UserName)

            VALUES (@FormOfPaymentName,
						@DateInsert,
						@DateUpdate,
						@StoreId,
						@StoreName,
						@UserId,
						@UserName)
	SET NOCOUNT ON;
END
GO


