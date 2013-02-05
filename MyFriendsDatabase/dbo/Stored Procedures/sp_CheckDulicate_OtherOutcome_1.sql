CREATE  Procedure  [dbo].[sp_CheckDulicate_OtherOutcome_1](@ID nvarchar(50))
as	
		Select count(*) as C from [LS_OtherOutcome] where [s_IDKH]=@ID