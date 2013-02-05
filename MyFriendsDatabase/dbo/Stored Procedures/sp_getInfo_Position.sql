Create  Procedure  [dbo].[sp_getInfo_Position](@ID numeric)
as
	Select * from [LS_Position] where [i_ID]=@ID