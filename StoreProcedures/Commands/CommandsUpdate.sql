USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_CommandsUpdate] (@CommandsId INT,
									@BuyerId INT,
									@BuyerName VARCHAR(150),
									@DateInsert DATETIME,
									@DateUpdate DATETIME,
									@StoreId INT,
									@StoreName VARCHAR(150),
									@UserId INT,
									@UserName VARCHAR(150),
									@Status BIT)
	AS
		BEGIN
			UPDATE Commands
			SET BuyerId = @BuyerId,
				BuyerName = @BuyerName,
				DateInsert = @DateInsert,
				DateUpdate = @DateUpdate,
				StoreId = @StoreId,
				StoreName = @StoreName,
				UserId = @UserId,
				UserName = @UserName,
				Status = @Status
					WHERE CommandsId = @CommandsId
			SET NOCOUNT ON;
		END
GO


