Create  Procedure  [dbo].[sp_getInfoEvent](@ID nvarchar(50))
as

	Select * from PR_EVents  where [s_ID]=@ID