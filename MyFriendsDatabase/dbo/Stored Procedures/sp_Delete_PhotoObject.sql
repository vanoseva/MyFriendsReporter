Create Procedure [dbo].[sp_Delete_PhotoObject](@s_Object_ID nvarchar(50)) 
as	
	Delete from [PR_PhotoObject] where [s_Object_ID]=@s_Object_ID

