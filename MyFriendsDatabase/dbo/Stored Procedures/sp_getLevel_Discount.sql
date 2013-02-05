Create  Procedure  [dbo].[sp_getLevel_Discount](@s_ID nvarchar(50))
as
	Select * from PR_DiscountDetail where s_Discount_ID=@s_ID