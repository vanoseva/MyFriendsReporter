Create  Procedure [dbo].[sp_getLatest_PurchaseOrder] (@s_Product_ID nvarchar(50),@dt_OrderDate smalldatetime)
as
	   SELECT ls.s_Order_ID, ls.dt_OrderDate, ISNULL(pru.s_Unit, pr.s_Unit) as s_Unit1, pr.* 
         FROM PR_PurchaseOrderDetails pr INNER JOIN LS_PurchaseOrders ls ON pr.s_OrderID=ls.s_ID
            LEFT OUTER JOIN PR_Product_Units pru ON pr.s_Unit=pru.s_ID
         WHERE pr.s_Product_ID=@s_Product_ID
            and DATEDIFF(minute,ls.dt_OrderDate,@dt_OrderDate)>=0
            and ls.dt_OrderDate=(SELECT MAX(ls.dt_OrderDate) 
                                FROM pr_PurchaseOrderDetails pr, LS_PurchaseOrders ls 
                                WHERE pr.s_OrderID=ls.s_ID and pr.s_Product_ID=@s_Product_ID
                                    and DATEDIFF(minute,ls.dt_OrderDate,@dt_OrderDate)>0)
         ORDER BY pr.i_Ordinal DESC