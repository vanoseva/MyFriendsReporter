CREATE  Procedure  [dbo].[sp_Delete_PaymentImport](@ID nvarchar(50))
as
	Delete from [Ls_PaymentImport] where [i_ID]=@ID