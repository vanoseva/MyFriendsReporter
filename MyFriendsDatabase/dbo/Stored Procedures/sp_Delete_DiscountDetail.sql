Create Procedure [dbo].[sp_Delete_DiscountDetail](@s_Discount_ID nvarchar(50)) 
as	
	Delete from [PR_DiscountDetail] where [s_Discount_ID]=@s_Discount_ID

