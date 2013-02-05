Create  Procedure  [dbo].[sp_Delete_Objects](@ID nvarchar(50))
as
	Delete from ls_contacts where s_ID in (select s_Contact_ID from PR_Object_Contact where s_Object_ID=@ID)
	Delete from [LS_Objects] where [s_ID]=@ID