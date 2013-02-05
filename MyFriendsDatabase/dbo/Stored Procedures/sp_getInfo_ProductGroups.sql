Create  Procedure  [dbo].[sp_getInfo_ProductGroups](@s_ID nvarchar(50))
as
	Select * from [LS_ProductGroups] where [s_ID]=@s_ID