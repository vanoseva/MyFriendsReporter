




CREATE Procedure [dbo].[sp_getInfo_IncomePaymentType](@s_Income_ID nvarchar(50)) 
as	
	SELECT ls.s_Name as curName, pr.* FROM PR_IncomePaymentType pr, LS_Currency ls 
        WHERE pr.i_Currency=ls.i_ID and pr.s_Income_ID=@s_Income_ID Order by pr.i_IDSort asc



SELECT ls.s_Name as curName, pr.* FROM PR_IncomePaymentType pr, LS_Currency ls 
        WHERE pr.i_Currency=ls.i_ID and pr.s_Income_ID='1E8262A8-2E2F-4A93-ACD6-EC1918AE6B2D' 
Order by pr.i_IDSort asc

select * from ls_bank






