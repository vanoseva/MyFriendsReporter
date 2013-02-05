Create  Procedure  [dbo].[sp_CheckDeleteBranchProduct](@ID nvarchar(50))
as

	select count(*) as c from [LS_ProductGroups] where s_BranchID=@ID
