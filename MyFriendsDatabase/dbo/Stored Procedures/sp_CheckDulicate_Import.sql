﻿Create   Procedure [dbo].[sp_CheckDulicate_Import](@s_ID nvarchar(50),@ImportID nvarchar(50))
as
	if @s_ID=''
		Select count(*) as c from ls_Imports where s_Import_ID=@ImportID
	else
		Select count(*)as c from ls_Imports where s_Import_ID=@ImportID and s_ID<>@s_ID