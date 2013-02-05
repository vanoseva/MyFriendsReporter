CREATE  Procedure  [dbo].[sp_getInfo_PaymentOrder](@ID nvarchar(50))
as
	Select * from [Ls_PaymentOrder] where [i_ID]=@ID