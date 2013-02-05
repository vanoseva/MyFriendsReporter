Create Procedure [dbo].[sp_Delete_Employee_DiscountLevel](@Discount_ID nvarchar(50)) 
as	
	DELETE FROM PR_Employee_DiscountLevel WHERE s_Discount_ID=@Discount_ID

