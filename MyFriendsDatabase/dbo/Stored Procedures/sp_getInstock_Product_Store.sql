Create  Procedure [dbo].[sp_getInstock_Product_Store](@Store_ID nvarchar(50),@Product_ID nvarchar(50))
as
	Select isnull(QInstock,0) as Q from v_CurInstock
	where Product_ID=@Product_ID and Store_ID=@Store_ID