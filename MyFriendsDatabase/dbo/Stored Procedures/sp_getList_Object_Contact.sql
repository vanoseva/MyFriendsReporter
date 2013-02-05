Create Procedure [dbo].[sp_getList_Object_Contact](@isContact bit,@ID nvarchar(50)) 
as	
	if @isContact=1
		Select * from [V_Object_Contact] where [s_Contact_ID]=@ID Order by s_Object_Name asc
	else
		Select * from [V_Object_Contact] where [s_Object_ID]=@ID Order by s_Contact_Name asc

