Create Procedure [dbo].[sp_Delete_Object_DiscountDetail](@ID nvarchar(50)) 
as	
	Delete from [PR_Object_DiscountDetail] where [s_Discount_ID]=@ID

