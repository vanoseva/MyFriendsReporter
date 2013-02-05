Create  Procedure  [dbo].[sp_CheckDelete_Employees](@s_ID nvarchar(50))
as
	Select count(*) as C from [LS_Objects] where [s_Employee_ID]=@s_ID