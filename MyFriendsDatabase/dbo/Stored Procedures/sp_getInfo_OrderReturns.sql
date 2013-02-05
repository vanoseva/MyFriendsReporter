CREATE   proc [dbo].[sp_getInfo_OrderReturns](@s_ID nvarchar(50))    
as    
 Select o.*,i.s_Import_ID,i.dt_ImportDate from Ls_OrderReturns o left outer join   
  Ls_Imports i on o.ImportID=i.s_ID  
 where o.s_ID=@s_ID