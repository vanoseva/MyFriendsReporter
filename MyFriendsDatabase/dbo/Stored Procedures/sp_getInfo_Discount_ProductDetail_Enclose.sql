Create Procedure [dbo].[sp_getInfo_Discount_ProductDetail_Enclose](@s_DiscountDetail_ID nvarchar(50)) 
as	
	Select * from [V_Discount_ProductDetail_Enclose] where [s_DiscountDetail_ID]=@s_DiscountDetail_ID Order by i_Ordinal asc

