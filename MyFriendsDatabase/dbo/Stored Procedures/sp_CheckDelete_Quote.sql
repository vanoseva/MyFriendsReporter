CREATE  Procedure [dbo].[sp_CheckDelete_Quote](@s_ID nvarchar(50))
as
BEGIN
	select count(*) as c from [LS_PurchaseOrders]
	where s_Quote_ID=@s_ID
UNION ALL 
	select count(*) as c from [V_Orders] 
	where s_Quote_ID=@s_ID
END