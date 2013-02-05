
CREATE Procedure [dbo].[sp_getList_ForTransform_PurchaseOrder](@dt_OrderDate smalldatetime)        
as        
  select* from [V_PurchaseOrders]    
  where s_State<>N'Đã hủy' and s_ID in (Select Distinct s_OrderID from Pr_PurchaseOrderDetails where f_Quantity>f_QuantitySend)  
  
  and DATEDIFF(d,dt_OrderDate,@dt_OrderDate)>=0     
  Order by dt_OrderDate desc  