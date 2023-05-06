USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_PaymentUpdate] (@PaymentId INT,
									@CommandsId INT,
									@BuyerId INT,
									@BuyerName VARCHAR(50),
									@FormOfPaymentId INT,
									@FormOfPaymentName VARCHAR(50),
									@TotalValue VARCHAR(50),
									@DateInsert DATETIME,
									@DateUpdate DATETIME,
									@StoreId INT,
									@StoreName VARCHAR(150),
									@UserId INT,
									@UserName VARCHAR(150))
	AS
		BEGIN
			UPDATE Payment
			SET CommandsId = @CommandsId,
				BuyerId = @BuyerId,
				BuyerName = @BuyerName,
				FormOfPaymentId = @FormOfPaymentId,
				FormOfPaymentName = @FormOfPaymentName,
				TotalValue = @TotalValue,
				DateInsert = @DateInsert,
				DateUpdate = @DateUpdate,
				StoreId = @StoreId,
				StoreName = @StoreName,
				UserId = @UserId,
				UserName = @UserName
					WHERE PaymentId = @PaymentId
			SET NOCOUNT ON;
		END
GO


