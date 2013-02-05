
CREATE  Procedure [dbo].[sp_getInfo_PurchaseOrder] (@s_ID nvarchar(50))
as
	Select * from V_PurchaseOrders where [s_ID]=@s_ID


