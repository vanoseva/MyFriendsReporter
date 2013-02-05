CREATE  Procedure  [dbo].[sp_CheckDelete_Currency](@ID nvarchar(50))  
as  
 Select count(*) as C from [LS_Banks] where [i_Currency]=@ID  
 Union all Select count(*) as C from [PR_IncomePaymentType] where [i_Currency]=@ID
 Union all Select count(*) as C from [PR_OutcomePaymentType] where [i_Currency]=@ID