Create Procedure [dbo].[sp_Delete_Employee_Discount](@s_ID nvarchar(50)) 
as	
	Delete from PR_Employee_Discount where [s_ID]=@s_ID
	Delete from PR_Employee_DiscountLevel where [s_Discount_ID]=@s_ID
	Delete from PR_Employee_DiscountDetail where [s_Discount_ID]=@s_ID

