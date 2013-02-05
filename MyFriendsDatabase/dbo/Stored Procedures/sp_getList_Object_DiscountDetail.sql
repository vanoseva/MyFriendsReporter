Create Procedure [dbo].[sp_getList_Object_DiscountDetail](@ID nvarchar(50)) 
as	
	Select * from [PR_Object_DiscountDetail] where [s_Discount_ID]=@ID Order by i_Ordinal asc

