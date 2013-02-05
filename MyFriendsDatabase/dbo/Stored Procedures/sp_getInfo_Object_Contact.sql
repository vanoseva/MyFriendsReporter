Create Procedure [dbo].[sp_getInfo_Object_Contact](@ID nvarchar(50)) 
as	
	Select ls.* from [V_FullContacts] ls, PR_Object_Contact pr where ls.[s_ID]=pr.[s_Contact_ID] and pr.[s_Object_ID]=@ID Order by ls.s_Name asc

