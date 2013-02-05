Create Procedure [dbo].[sp_getInfo_PhotoObject](@s_Object_ID nvarchar(50)) 
as	
	Select * from [PR_PhotoObject] where [s_Object_ID]=@s_Object_ID

