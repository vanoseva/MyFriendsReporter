
Create Procedure  [dbo].[sp_CheckDulicateDistrict](@s_ID nvarchar(50),@ID nvarchar(50))
as

	if @s_ID<>''
		Select count(*) as C from [LS_Districts] where [s_District_ID]=@ID and [s_ID]<>@s_ID
	else
		Select count(*) as C from [LS_Districts] where [s_District_ID]=@ID