CREATE  Procedure [dbo].[sp_getList_ForTransform_PurchaseImport](@dt_OrderDate smalldatetime)            
as            
     
  select * from [LS_PurchaseImports] v_all   
 where s_Status <>N'Đã hủy'and s_ID in (Select Distinct s_OrderID from PR_PurchaseImportDetails where f_Quantity>f_QuantityReceive)  
     And DATEDIFF(d,v_All.dt_OrderDate,@dt_OrderDate)>=0            
  order by v_All.dt_OrderDate desc