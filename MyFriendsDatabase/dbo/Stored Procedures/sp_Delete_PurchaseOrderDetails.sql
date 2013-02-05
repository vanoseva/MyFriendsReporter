Create Procedure [dbo].[sp_Delete_PurchaseOrderDetails](@s_Order_ID nvarchar(50)) 
as	
	Delete from [PR_PurchaseOrderDetails] where [s_OrderID]=@s_Order_ID

