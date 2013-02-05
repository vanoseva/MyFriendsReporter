Create Procedure [dbo].[sp_Delete_Employee_DiscountDetail](@Discount_ID nvarchar(50)) 
as	
	DELETE FROM PR_Employee_DiscountDetail WHERE s_Discount_ID=@Discount_ID

