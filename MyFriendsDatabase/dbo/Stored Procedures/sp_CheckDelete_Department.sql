Create  Procedure  [dbo].[sp_CheckDelete_Department](@ID numeric)
as
	Select count(*) as C from [Ls_Contacts] where [i_Department_ID]=@ID