Create  Procedure  [dbo].[sp_Delete_Position](@ID numeric)
as
	Delete from [LS_Position] where [i_ID]=@ID