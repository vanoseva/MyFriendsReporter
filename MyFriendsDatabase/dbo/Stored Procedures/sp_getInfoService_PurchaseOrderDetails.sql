Create Procedure [dbo].[sp_getInfoService_PurchaseOrderDetails](@s_Order_ID nvarchar(50)) 
as	
	SELECT * FROM V_PurchaseOrderDetail 
        WHERE b_isEnclose=1 and [s_OrderID]=@s_Order_ID Order by i_Ordinal asc

