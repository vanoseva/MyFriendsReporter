CREATE Procedure [dbo].[sp_getInfo_OutcomePaymentType](@s_Outcome_ID nvarchar(50))   
as   
 SELECT ls.s_Name as curName, pr.* FROM PR_OutcomePaymentType pr, LS_Currency ls   
        WHERE pr.i_Currency=ls.i_ID and pr.s_Outcome_ID=@s_Outcome_ID Order by pr.i_IDSort asc  
