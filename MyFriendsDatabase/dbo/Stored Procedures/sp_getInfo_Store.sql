Create  Procedure  [dbo].[sp_getInfo_Store](@s_ID nvarchar(50))
as
	Select * from [LS_Stores] where [s_ID]=@s_ID