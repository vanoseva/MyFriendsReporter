Create Procedure [dbo].[sp_Delete_Product_UnitPrices](@Product_ID nvarchar(50)) 
as	
	Delete from [PR_Product_UnitPrices] where [s_Product_ID]=@Product_ID

