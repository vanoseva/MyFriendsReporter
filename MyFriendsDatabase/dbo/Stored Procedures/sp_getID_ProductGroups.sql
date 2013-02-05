Create  Procedure  [dbo].[sp_getID_ProductGroups](@s_ProductGroup_ID nvarchar(50))
as	
		select * from [LS_ProductGroups] where [s_ProductGroup_ID]=@s_ProductGroup_ID