Create Procedure [dbo].[sp_Delete_Object_Discount](@ID nvarchar(50)) 
as	
	Delete from [PR_Object_Discount] where [s_ID]=@ID

