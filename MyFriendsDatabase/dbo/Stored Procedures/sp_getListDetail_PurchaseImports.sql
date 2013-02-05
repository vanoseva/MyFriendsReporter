CREATE  Procedure [dbo].[sp_getListDetail_PurchaseImports] (@s_ID nvarchar(50))  
as  
 select * from [V_PurchaseImportDetails] where s_OrderID=@s_ID