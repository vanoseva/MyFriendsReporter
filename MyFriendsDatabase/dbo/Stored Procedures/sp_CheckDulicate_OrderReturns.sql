CREATE  Procedure [dbo].[sp_CheckDulicate_OrderReturns] (@s_Order_ID nvarchar(50), @s_ID nvarchar(50))    
as    
 if @s_ID<>''    
  Select count(*) as c from LS_OrderReturns where s_Order_ID=@s_Order_ID and s_ID<>@s_ID    
 else    
  Select count(*) as c from LS_OrderReturns where s_Order_ID=@s_Order_ID 