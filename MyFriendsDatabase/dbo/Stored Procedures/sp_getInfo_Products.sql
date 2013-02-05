Create  Procedure  [dbo].[sp_getInfo_Products](@s_ID nvarchar(50))
as
	Select * from [LS_Products] where [s_ID]=@s_ID