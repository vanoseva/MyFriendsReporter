Create  Procedure  [dbo].[sp_DeleteDiscount_forProduct](@ID nvarchar(50))
as
		Delete from [LS_Discount_Product] where [s_ID]=@ID