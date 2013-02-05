Create  Procedure [dbo].[sp_getInfo_Employee_DiscountLevel](@s_ID nvarchar(50)) 
as	
	 SELECT * FROM PR_Employee_DiscountLevel WHERE s_ID=@s_ID
