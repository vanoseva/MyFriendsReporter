create Procedure [dbo].[sp_Delete_NumberOutcome](@s_OutcomeID nvarchar(50)) 
as	
	
	Delete from [PR_NumberOutcome] where s_OutcomeID=@s_OutcomeID