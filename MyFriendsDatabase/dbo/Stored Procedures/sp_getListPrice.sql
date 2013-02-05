CREATE Procedure [dbo].[sp_getListPrice]
as	
	Select * from V_Price_Product Order by Product_ID asc,sort asc
