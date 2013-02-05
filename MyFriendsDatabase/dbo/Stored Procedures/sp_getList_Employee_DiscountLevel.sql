Create Procedure [dbo].[sp_getList_Employee_DiscountLevel](@Discount_ID nvarchar(50)) 
as	
	SELECT * FROM PR_Employee_DiscountLevel WHERE s_Discount_ID=@Discount_ID Order by i_IDSort

