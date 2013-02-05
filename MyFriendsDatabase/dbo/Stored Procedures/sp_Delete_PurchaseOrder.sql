Create  Procedure [dbo].[sp_Delete_PurchaseOrder] (@s_ID nvarchar(50))
as
	Delete from [LS_PurchaseOrders] where [s_ID]=@s_ID