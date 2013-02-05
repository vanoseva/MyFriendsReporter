
CREATE Procedure  [dbo].[sp_CheckDelBank](@ID nvarchar(50))
as

	select count(*) as C from [LS_Income] where s_Bank_ID=@ID
	union all 
	select count(*) as C from [LS_IncomeReturn] where s_Bank_ID=@ID
     union all 
     select count(*) as C from [LS_Outcome] where s_Bank_ID=@ID
     union all 
     select count(*) as C from [LS_OutcomeReturn] where s_Bank_ID=@ID
