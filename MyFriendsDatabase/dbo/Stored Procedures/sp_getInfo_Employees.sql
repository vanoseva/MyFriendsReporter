Create  Procedure  [dbo].[sp_getInfo_Employees](@s_ID nvarchar(50))
as
	Select * from [LS_Employees] where [s_ID]=@s_ID