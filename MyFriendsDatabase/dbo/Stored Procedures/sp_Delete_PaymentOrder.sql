
CREATE  Procedure  [dbo].[sp_Delete_PaymentOrder](@ID nvarchar(50))
as
	Delete from [Ls_PaymentOrder] where [i_ID]=@ID