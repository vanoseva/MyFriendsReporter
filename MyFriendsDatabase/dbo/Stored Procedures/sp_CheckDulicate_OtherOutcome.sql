CREATE  Procedure  [dbo].[sp_CheckDulicate_OtherOutcome](@s_IDKH nvarchar(50),@s_ID nvarchar(50))
as
	if  @s_IDKH is  not NULL
		Select count(*) as C from [LS_OtherOutcome] where [s_IDKH]=@s_IDKH and [s_ID]<>@s_ID		
	else	
		Select count(*) as C from [LS_OtherOutcome] where [s_IDKH]=@s_IDKH