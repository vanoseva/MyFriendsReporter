Create  Procedure  [dbo].[sp_Delete_ObjectGroups](@s_ID nvarchar(50))
as
	Delete from [LS_ObjectGroups] where [s_ID]=@s_ID
