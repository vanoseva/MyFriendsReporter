Create  Procedure  [dbo].[sp_Delete_ProductGroups](@s_ID nvarchar(50))
as
	Delete from [LS_ProductGroups] where [s_ID]=@s_ID