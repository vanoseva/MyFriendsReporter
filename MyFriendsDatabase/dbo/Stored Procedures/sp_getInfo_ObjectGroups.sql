Create  Procedure  [dbo].[sp_getInfo_ObjectGroups](@s_ID nvarchar(50))
as
	Select * from [LS_ObjectGroups] where [s_ID]=@s_ID