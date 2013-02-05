Create Procedure [dbo].[sp_Delete_Object_Contact](@isContact bit,@ID nvarchar(50)) 
as	
	if @isContact=1
		Delete from [PR_Object_Contact] where [s_Contact_ID]=@ID
	else
		Delete from [PR_Object_Contact] where [s_Object_ID]=@ID

