Create  Procedure [dbo].[sp_getList_PurchaseOrder]
as
	Select* from V_PurchaseOrders order by dt_OrderDate  desc