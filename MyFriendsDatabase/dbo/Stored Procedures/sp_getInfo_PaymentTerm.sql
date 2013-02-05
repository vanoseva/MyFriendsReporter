CREATE  Procedure  [dbo].[sp_getInfo_PaymentTerm](@ID nvarchar(50))
as
	Select * from LS_PaymentTerm where [s_ID]=@ID