Create Procedure [dbo].[sp_getInfo_Discount_ProductDetail](@s_Discount_ID nvarchar(50)) 
as	
	Select * from [V_Discount_ProductDetail] where [s_Discount_ID]=@s_Discount_ID Order by i_Ordinal asc

