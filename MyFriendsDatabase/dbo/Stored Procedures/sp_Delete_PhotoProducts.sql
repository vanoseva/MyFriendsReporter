Create Procedure [dbo].[sp_Delete_PhotoProducts](@Product_ID nvarchar(50)) 
as	
	Delete from [PR_PhotoProducts] where [s_Product_ID]=@Product_ID

