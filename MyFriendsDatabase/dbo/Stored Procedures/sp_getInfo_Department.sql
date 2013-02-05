Create  Procedure  [dbo].[sp_getInfo_Department](@ID numeric)
as
	Select * from [LS_Department] where [i_ID]=@ID