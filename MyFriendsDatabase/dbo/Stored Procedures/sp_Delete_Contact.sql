Create  Procedure  [dbo].[sp_Delete_Contact](@s_ID nvarchar(50))
as
	
	Delete from [LS_Contacts] where [s_ID]=@s_ID