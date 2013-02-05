

CREATE Procedure [dbo].[sp_getInfo_OrderDetails](@s_Order_ID nvarchar(50)) 
as	
	SELECT * FROM V_OrderDetail 
        WHERE b_isPromotion=0 and [s_OrderID]=@s_Order_ID Order by i_Ordinal asc



