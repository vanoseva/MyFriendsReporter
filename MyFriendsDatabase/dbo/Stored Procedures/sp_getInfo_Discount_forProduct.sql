Create  Procedure  [dbo].[sp_getInfo_Discount_forProduct](@ID nvarchar(50))
as
	Select * from [LS_Discount_Product] where [s_ID]=@ID