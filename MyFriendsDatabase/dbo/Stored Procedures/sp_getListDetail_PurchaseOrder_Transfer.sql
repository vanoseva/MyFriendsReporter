CREATE  Procedure [dbo].[sp_getListDetail_PurchaseOrder_Transfer] (@s_ID nvarchar(50),@isCopy bit)  
as  
	if @isCopy=0
		 select f_Quantity-f_QuantitySend as f_QuantityOrder, * from [V_PurchaseOrderDetail]   
		 where f_Quantity-f_QuantitySend>0 and s_OrderID=@s_ID  
	else
		 select f_Quantity as f_QuantityOrder, * from [V_PurchaseOrderDetail]   
		 where  s_OrderID=@s_ID  