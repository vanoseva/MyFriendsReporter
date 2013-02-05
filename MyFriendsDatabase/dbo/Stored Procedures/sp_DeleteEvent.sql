Create  Procedure  [dbo].[sp_DeleteEvent](@ID nvarchar(50))
as

	Delete from PR_EVents  where [s_ID]=@ID