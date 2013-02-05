Create  Procedure  [dbo].[sp_getInfoCheckStore](@ID nvarchar(50))
as
	Select * from LS_CheckStore where s_ID=@ID 