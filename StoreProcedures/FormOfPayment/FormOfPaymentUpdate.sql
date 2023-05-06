USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_FormOfPaymentUpdate] (@FormOfPaymentId INT,
									@FormOfPaymentName VARCHAR(50),
									@DateInsert DATETIME,
									@DateUpdate DATETIME,
									@StoreId INT,
									@StoreName VARCHAR(150),
									@UserId INT,
									@UserName VARCHAR(150))
	AS
		BEGIN
			UPDATE FormOfPayment
			SET FormOfPaymentName = @FormOfPaymentName,
				DateInsert = @DateInsert,
				DateUpdate = @DateUpdate,
				StoreId = @StoreId,
				StoreName = @StoreName,
				UserId = @UserId,
				UserName = @UserName
					WHERE FormOfPaymentId = @FormOfPaymentId
			SET NOCOUNT ON;
		END
GO


