
CREATE  Procedure [dbo].[sp_getListDetail_OldOrder] (@s_ID nvarchar(50))
as
	select s_Product_ID, sum(f_Quantity*f_Convert) as f_SumQuantity
	from V_FullOrderDetails 
	where s_OrderID=@s_ID
	group by s_product_ID 
