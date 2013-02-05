Create Procedure [dbo].[sp_getInfo_Discount_ProductDetail_Level](@s_DiscountDetail_ID nvarchar(50)) 
as	
	Select * from [PR_Discount_ProductDetail_Level] where [s_DiscountDetail_ID]=@s_DiscountDetail_ID Order by i_Ordinal asc

