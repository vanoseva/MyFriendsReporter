Create  Procedure  [dbo].[sp_CheckDulicate_ProductGroups](@s_ID nvarchar(50),@ProductGroup_ID nvarchar(50))
as
	if @s_ID<>''
		select * from [LS_ProductGroups] where [s_ProductGroup_ID]=@ProductGroup_ID and [s_ID]<>@s_ID
	else
		select * from [LS_ProductGroups] where [s_ProductGroup_ID]=@ProductGroup_ID