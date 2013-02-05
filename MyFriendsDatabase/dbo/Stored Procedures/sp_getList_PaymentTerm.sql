
create  Procedure  [dbo].[sp_getList_PaymentTerm]
as
	Select * from LS_PaymentTerm Order by s_Name asc

