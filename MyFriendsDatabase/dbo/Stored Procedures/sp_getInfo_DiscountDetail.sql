Create Procedure [dbo].[sp_getInfo_DiscountDetail](@s_Discount_ID nvarchar(50)) 
as	
	Select * from PR_DiscountDetail where [s_Discount_ID]=@s_Discount_ID Order by i_Ordinal asc

