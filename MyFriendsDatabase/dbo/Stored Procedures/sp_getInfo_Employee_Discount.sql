Create Procedure [dbo].[sp_getInfo_Employee_Discount](@s_ID nvarchar(50)) 
as	
	SELECT * FROM PR_Employee_Discount WHERE s_ID=@s_ID Order by i_Ordinal asc

