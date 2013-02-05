


create Procedure [dbo].[sp_getInfo_NumberIncome](@s_NumberID nvarchar(50)) 
as	
	SELECT * FROM [PR_NumberIncome] 
        WHERE s_NumberID=@s_NumberID Order by i_IDSort asc




