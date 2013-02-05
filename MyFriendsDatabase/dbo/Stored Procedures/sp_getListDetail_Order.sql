




CREATE  Procedure [dbo].[sp_getListDetail_Order] (@s_ID nvarchar(50))
as
	select * from V_OrderDetail where s_OrderID=@s_ID order by i_ordinal







