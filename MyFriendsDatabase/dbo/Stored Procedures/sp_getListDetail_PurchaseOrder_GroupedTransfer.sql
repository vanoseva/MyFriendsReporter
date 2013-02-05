CREATE  Procedure [dbo].[sp_getListDetail_PurchaseOrder_GroupedTransfer] (@s_ID nvarchar(50))
as

select s_Product_ID, sum((f_Quantity-f_QuantitySend)*f_Convert) as f_QuantityOrder
from [V_PurchaseOrderDetail] 
where f_Quantity-f_QuantitySend>0 and s_OrderID=@s_ID
group by s_Product_ID
	