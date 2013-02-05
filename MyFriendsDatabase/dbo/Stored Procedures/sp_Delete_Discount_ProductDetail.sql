Create Procedure [dbo].[sp_Delete_Discount_ProductDetail](@s_Discount_ID nvarchar(50)) 
as	
	Delete from [PR_Discount_ProductDetail] where [s_Discount_ID]=@s_Discount_ID
