Create  Procedure  [dbo].[sp_CheckDelete_ObjectGroups](@s_ID nvarchar(50))
as
	Select count(*) as C from [LS_Objects] where [s_ObjectGroup_ID]=@s_ID