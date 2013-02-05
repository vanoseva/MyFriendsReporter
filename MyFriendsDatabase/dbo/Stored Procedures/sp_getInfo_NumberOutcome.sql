
create  Procedure [dbo].[sp_getInfo_NumberOutcome](@s_NumberID nvarchar(50)) 
as	
	SELECT * FROM [PR_NumberOutcome] 
        WHERE s_NumberID=@s_NumberID Order by i_IDSort asc