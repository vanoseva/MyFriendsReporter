Create Procedure [dbo].[sp_getFuncRightUser](@UID nvarchar(50),@FuncID numeric)
as
	Select * from PR_FunRight where uid=@UID and FuncID=@FuncID