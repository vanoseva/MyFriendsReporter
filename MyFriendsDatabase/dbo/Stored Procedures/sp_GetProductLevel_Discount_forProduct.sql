Create  Procedure  [dbo].[sp_GetProductLevel_Discount_forProduct](@s_ID nvarchar(50))
as
	Select * from PR_Discount_ProductDetail_Level where s_DiscountDetail_ID=@s_ID
