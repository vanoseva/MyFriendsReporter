﻿Create  Procedure  [dbo].[sp_CheckDulicate_ContactType](@i_ID numeric,@ID nvarchar(50))
as
	if @i_ID<>0
        Select count(*) as C from [LS_ContactType] where [s_Name]=@ID and [i_ID]<>@i_ID		
	else
		Select count(*) as C from [LS_ContactType] where [s_Name]=@ID