Create  Procedure  [dbo].[sp_getList_PaymentOrder]
as
	Select * from [Ls_PaymentOrder] Order by s_Name asc