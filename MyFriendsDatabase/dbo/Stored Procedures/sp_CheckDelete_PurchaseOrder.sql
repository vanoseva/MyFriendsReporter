

create  Procedure [dbo].[sp_CheckDelete_PurchaseOrder](@s_ID nvarchar(50))
as
	select count(*) as c from [V_PurchaseOrders] 
	where s_ID=@s_ID
			and s_ID in (select s_PurchaseID from V_FullOrder)
			
	
	
