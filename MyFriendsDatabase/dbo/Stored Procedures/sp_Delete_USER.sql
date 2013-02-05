Create Procedure [dbo].[sp_Delete_USER](@UID nvarchar(50)) 
as	
	Delete from PR_FunRight where UID=@UID
	Delete from LS_USER where s_UID=@UID
