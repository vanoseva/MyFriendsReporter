CREATE  Procedure [dbo].[sp_CheckNumber_PurchaseOrder] (@s_Order_ID nvarchar(50),@s_ID nvarchar(50))  
as  
 if @s_ID<>''  
  SELECT count(*) as c FROM LS_PurchaseOrders   
  WHERE s_Order_ID =@s_Order_ID and s_ID<>@s_ID  
 else  
  SELECT count(*) as c FROM LS_PurchaseOrders   
  WHERE s_Order_ID =@s_Order_ID