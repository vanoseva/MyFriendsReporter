Create Procedure  [dbo].[sp_GetInfoBranchProduct](@s_ID nvarchar(50))
as

	Select * from [LS_BranchProduct] where [s_ID]=@s_ID