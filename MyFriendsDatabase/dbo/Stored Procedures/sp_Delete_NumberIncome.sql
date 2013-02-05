





CREATE Procedure [dbo].[sp_Delete_NumberIncome](@s_IncomeID nvarchar(50)) 
as	
	
	Delete from [PR_NumberIncome] where s_IncomeID=@s_IncomeID









