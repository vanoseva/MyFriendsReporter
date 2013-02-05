
create Procedure [dbo].[sp_Delete_IncomePaymentType](@s_Income_ID nvarchar(50)) 
as	
	
	Delete from PR_IncomePaymentType where s_Income_ID=@s_Income_ID










