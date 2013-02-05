Create  Procedure [dbo].[sp_UpdateState_PurchaseOrder] (@s_ID nvarchar(50), @s_State nvarchar(50))
as
	UPDATE LS_PurchaseOrders SET s_State=@s_State WHERE s_ID=@s_ID