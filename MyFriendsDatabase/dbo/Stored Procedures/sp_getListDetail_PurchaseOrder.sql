
CREATE  Procedure [dbo].[sp_getListDetail_PurchaseOrder] (@s_ID nvarchar(50))
as
	select * from [V_PurchaseOrderDetail] where s_OrderID=@s_ID
