Create  Procedure  [dbo].[sp_CheckDelete_Position](@ID numeric)
as
	Select count(*) as C from [Ls_Contacts] where [i_Position_ID]=@ID