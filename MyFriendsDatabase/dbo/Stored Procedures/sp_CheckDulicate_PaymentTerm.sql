CREATE  Procedure  [dbo].[sp_CheckDulicate_PaymentTerm](@IDKH_s nvarchar(50),@s_ID nvarchar(50))
as
	if @s_ID is not NULL
		Select count(*) as C from LS_PaymentTerm where [IDKH_s]=@IDKH_s and [s_ID]<>@s_ID
	else
		Select count(*) as C from LS_PaymentTerm where [IDKH_s]=@IDKH_s
