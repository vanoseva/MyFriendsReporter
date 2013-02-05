CREATE Procedure [dbo].[sp_getInfo_OrderDetails_Other](@s_Order_ID nvarchar(50))   
as   
 SELECT * FROM V_OrderDetail_Other   
        WHERE  [s_OrderID]=@s_Order_ID Order by i_Ordinal asc  