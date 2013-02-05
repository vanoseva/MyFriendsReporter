Create Procedure [dbo].[sp_Delete_DiscountDetail_Enclose](@s_DiscountDetail_ID nvarchar(50)) 
as	
	Delete from [PR_DiscountDetail_Enclose] where [s_DiscountDetail_ID]=@s_DiscountDetail_ID