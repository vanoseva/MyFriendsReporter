Create  Procedure  [dbo].[sp_CheckDulicate_Store](@s_ID nvarchar(50),@ID nvarchar(50))
as
	if @s_ID<>''
		Select count(*) as C from LS_Stores where s_Store_ID=@ID and s_ID<>@s_ID
	else
		Select count(*) as C from LS_Stores where s_Store_ID=@ID