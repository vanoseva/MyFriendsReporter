Create  Procedure  [dbo].[sp_Delete_Products](@s_ID nvarchar(50))
as
	Delete from [LS_Products] where [s_ID]=@s_ID
	Delete from [PR_MakeProduct] where [s_Product_ID]=@s_ID
	Delete from [PR_MakeProduct] where [s_Product_ID_1]=@s_ID