Create Procedure [dbo].[sp_getInfo_DiscountDetail_Enclose](@s_DiscountDetail_ID nvarchar(50)) 
as	
	Select * from [V_DiscountDetail_Enclose] where [s_DiscountDetail_ID]=@s_DiscountDetail_ID Order by i_Ordinal asc

