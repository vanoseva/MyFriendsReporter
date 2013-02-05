Create Procedure [dbo].[sp_Delete_Package](@Product_ID nvarchar(50)) 
as	
	Delete from [PR_Package] where [s_Product_ID]=@Product_ID

