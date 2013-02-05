Create Procedure [dbo].[sp_Delete_MakeProduct](@Product_ID nvarchar(50)) 
as	
	Delete from [PR_MakeProduct] where [s_Product_ID]=@Product_ID

