Create Procedure  [dbo].[sp_DeleteBranchProduct](@s_ID nvarchar(50))
as

	Delete from [LS_BranchProduct] where [s_ID]=@s_ID