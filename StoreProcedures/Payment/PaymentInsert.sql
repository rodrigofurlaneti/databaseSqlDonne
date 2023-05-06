USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_PaymentInsert] (@CommandsId INT,
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
	INSERT INTO Payment (CommandsId,
						BuyerId,
						BuyerName,
						FormOfPaymentId,
						FormOfPaymentName,
						TotalValue,
						DateInsert,
						DateUpdate,
						StoreId,
						StoreName,
						UserId,
						UserName)


            VALUES (@CommandsId,
					@BuyerId,
						@BuyerName,
						@FormOfPaymentId,
						@FormOfPaymentName,
						@TotalValue,
						@DateInsert,
						@DateUpdate,
						@StoreId,
						@StoreName,
						@UserId,
						@UserName)
	SET NOCOUNT ON;
END
GO


