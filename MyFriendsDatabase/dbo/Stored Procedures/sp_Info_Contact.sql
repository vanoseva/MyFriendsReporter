Create  Procedure  [dbo].[sp_Info_Contact](@s_ID nvarchar(50))
as
	
	Select * from [LS_Contacts] where [s_ID]=@s_ID