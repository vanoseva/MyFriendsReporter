CREATE   proc [dbo].[sp_getInfo_ImportReturns](@s_ID nvarchar(50))      
as      
 Select i.*,o.s_Order_ID,o.dt_OrderDate from Ls_ImportReturns i left outer join   
 V_FullOrder o on i.OrderID=o.s_ID  
 where i.s_ID=@s_ID  