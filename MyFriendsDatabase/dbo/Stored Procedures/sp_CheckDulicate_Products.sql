Create  Procedure  [dbo].[sp_CheckDulicate_Products](@s_ID nvarchar(50),@Product_ID nvarchar(50))
as
	if @s_ID<>''
		Select * from LS_Products where s_Product_ID=@Product_ID and s_ID<>@s_ID
	else
		Select * from LS_Products where s_Product_ID=@Product_ID