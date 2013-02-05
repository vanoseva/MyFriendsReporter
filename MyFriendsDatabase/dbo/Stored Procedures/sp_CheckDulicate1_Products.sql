Create  Procedure  [dbo].[sp_CheckDulicate1_Products](@Product_ID nvarchar(50))
as
	Select * from LS_Products where s_Product_ID=@Product_ID