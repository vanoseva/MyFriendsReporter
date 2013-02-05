Create Procedure  [dbo].[sp_CheckSaveBranchProduct](@s_ID nvarchar(50),@BP_ID nvarchar(50))
as
	if @s_ID<>''
		select * from [LS_BranchProduct] where s_BranchProduct_ID=@BP_ID and [s_ID]<>@s_ID

	else
		select * from [LS_BranchProduct] where s_BranchProduct_ID=@BP_ID