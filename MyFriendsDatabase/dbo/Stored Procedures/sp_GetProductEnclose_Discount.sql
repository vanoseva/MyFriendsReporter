Create  Procedure  [dbo].[sp_GetProductEnclose_Discount](@s_ID nvarchar(50))
as
	Select * from V_DiscountDetail_Enclose where s_DiscountDetail_ID=@s_ID