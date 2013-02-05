Create Procedure [dbo].[sp_Delete_Discount_ProductDetail_Level](@s_DiscountDetail_ID nvarchar(50)) 
as	
	Delete from [PR_Discount_ProductDetail_Level] where [s_DiscountDetail_ID]=@s_DiscountDetail_ID

