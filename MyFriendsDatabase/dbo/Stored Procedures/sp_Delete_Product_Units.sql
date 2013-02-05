Create Procedure [dbo].[sp_Delete_Product_Units](@Product_ID nvarchar(50)) 
as	
	Delete from [PR_Product_Units] where [s_Product_ID]=@Product_ID

