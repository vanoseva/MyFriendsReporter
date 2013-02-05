CREATE Procedure [dbo].[sp_getListPrice_Product_UnitPrices](@s_Product_ID nvarchar(50)) 
as	
	Select * from V_Price_Product where Product_ID=@s_Product_ID Order by sort asc
