CREATE Procedure  [dbo].[sp_DeletePaymentTerm](@ID nvarchar(50))
as

	Delete from LS_PaymentTerm where [s_ID]=@ID