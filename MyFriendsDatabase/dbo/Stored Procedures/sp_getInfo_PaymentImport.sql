CREATE  Procedure  [dbo].[sp_getInfo_PaymentImport](@ID nvarchar(50))
as
	Select * from [Ls_PaymentImport] where [i_ID]=@ID