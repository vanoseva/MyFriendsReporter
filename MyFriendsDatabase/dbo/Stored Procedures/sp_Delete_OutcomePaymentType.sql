create Procedure [dbo].[sp_Delete_OutcomePaymentType](@s_Outcome_ID nvarchar(50)) 
as	
	
	Delete from PR_OutcomePaymentType where s_Outcome_ID=@s_Outcome_ID