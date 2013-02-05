Create  Procedure  [dbo].[sp_CheckDulicate_Objects](@s_ID nvarchar(50),@s_Object_ID nvarchar(50))
as
	if @s_ID<>''
		Select count(*) as C from [LS_Objects] where [s_Object_ID]=@s_Object_ID and [s_ID]<>@s_ID
	else
		Select count(*) as C from [LS_Objects] where [s_Object_ID]=@s_Object_ID