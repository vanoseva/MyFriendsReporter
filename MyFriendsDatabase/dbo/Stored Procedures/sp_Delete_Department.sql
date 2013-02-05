Create  Procedure  [dbo].[sp_Delete_Department](@ID numeric)
as
	Delete from [LS_Department] where [i_ID]=@ID
