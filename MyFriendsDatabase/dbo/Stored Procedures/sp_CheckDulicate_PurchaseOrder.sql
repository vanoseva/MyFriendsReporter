
CREATE  Procedure [dbo].[sp_CheckDulicate_PurchaseOrder] (@s_Order_ID nvarchar(50),@s_ID nvarchar(50))
as
	if @s_ID<>''  
  Select count(*) as c from LS_PurchaseOrders where s_Order_ID=@s_Order_ID and s_ID<>@s_ID  
 else  
  Select count(*) as c from LS_PurchaseOrders where s_Order_ID=@s_Order_ID 

	
