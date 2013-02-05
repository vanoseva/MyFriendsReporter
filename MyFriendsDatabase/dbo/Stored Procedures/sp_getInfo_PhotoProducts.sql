Create Procedure [dbo].[sp_getInfo_PhotoProducts](@Product_ID nvarchar(50)) 
as	
	Select * from [PR_PhotoProducts] where [s_Product_ID]=@Product_ID

