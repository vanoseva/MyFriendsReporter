Create Procedure [dbo].[sp_DeleteFuncRight](@UID nvarchar(50))
as
	
	Delete  from PR_FunRight where uid=@UID