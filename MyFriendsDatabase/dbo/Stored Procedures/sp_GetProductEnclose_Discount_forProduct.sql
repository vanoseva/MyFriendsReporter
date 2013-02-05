Create  Procedure  [dbo].[sp_GetProductEnclose_Discount_forProduct](@s_ID nvarchar(50),@s_Product_ID nvarchar(50))
as
	Select * from V_Discount_ProductDetail_Enclose where s_DiscountDetail_ID=@s_ID and s_Product_ID=@s_Product_ID