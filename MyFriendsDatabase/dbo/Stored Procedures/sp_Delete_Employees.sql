Create  Procedure  [dbo].[sp_Delete_Employees](@s_ID nvarchar(50))
as
	Delete from [LS_Employees] where [s_ID]=@s_ID