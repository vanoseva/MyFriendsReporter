Create Procedure [dbo].[sp_Delete_Discount_ProductDetail_Enclose](@s_DiscountDetail_ID nvarchar(50)) 
as	
	Delete from [PR_Discount_ProductDetail_Enclose] where [s_DiscountDetail_ID]=@s_DiscountDetail_ID

