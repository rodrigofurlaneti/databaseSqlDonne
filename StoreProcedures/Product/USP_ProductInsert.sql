USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_ProductInsert]    Script Date: 20/04/2023 07:10:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ProductInsert] (@ProductName VARCHAR(150),
									@CategoryId INT,
									@CategoryName VARCHAR(150),
									@CostPrice MONEY,
									@SalePrice MONEY,
									@QuantityStock INT,
									@MinimumStockQuantity INT,
									@TotalValueCostOfInventory MONEY,
									@TotalValueSaleStock MONEY,
									@ImagePath VARCHAR(150),
									@DateInsert DATETIME,
									@DateUpdate DATETIME,
									@NeedToPrint BIT,
									@StoreId INT,
									@StoreName VARCHAR(150),
									@UserId INT,
									@UserName VARCHAR(150),
									@Status BIT)

AS
BEGIN
	INSERT INTO Product
                        (ProductName,
                         CategoryId,
                         CategoryName,
                         CostPrice,
						 SalePrice,
						 QuantityStock,
						 MinimumStockQuantity,
						 TotalValueCostOfInventory,
						 TotalValueSaleStock,
						 ImagePath,
						 DateInsert,
						 DateUpdate,
						 NeedToPrint,
						 StoreId,
                         StoreName,
                         UserId,
                         UserName,
  					 Status)
            VALUES     ( @ProductName,
                         @CategoryId,
                         @CategoryName,
                         @CostPrice,
                         @SalePrice,
						 @QuantityStock,
						 @MinimumStockQuantity,
						 @TotalValueCostOfInventory,
						 @TotalValueSaleStock,
						 @ImagePath,
						 @DateInsert,
						 @DateUpdate,
						 @NeedToPrint,
						@StoreId,
						@StoreName,
						@UserId,
						@UserName,
						@Status)
	SET NOCOUNT ON;
END
GO


